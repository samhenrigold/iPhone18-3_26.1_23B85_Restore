uint64_t sub_22788ECCC()
{
  v2 = *v1;
  *(*v1 + 696) = v0;

  v3 = *(v2 + 192);
  if (v0)
  {
    v4 = sub_22788EF24;
  }

  else
  {
    v4 = sub_2278A65BC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22788EDF8()
{
  v2 = *v1;
  *(*v1 + 712) = v0;

  v3 = *(v2 + 192);
  if (v0)
  {
    v4 = sub_227890640;
  }

  else
  {
    v4 = sub_22788F184;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22788EF24()
{
  v1 = *(v0 + 336);
  (*(v0 + 672))(*(v0 + 280), *(v0 + 224));
  sub_227802FC4(v1, &qword_27D7D60A8, qword_2278C9730);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22788F184()
{
  v231 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 224);
  if ((*(v0 + 608))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 560);
    v4 = *(v0 + 376);
    v5 = *(v0 + 344);
    v6 = *(v0 + 176);
    sub_227802FC4(v1, &qword_27D7D60A8, qword_2278C9730);
    sub_2278C7370();
    v3(v4, v6, v5);
    v7 = sub_2278C7590();
    v198 = sub_2278C7950();
    v8 = os_log_type_enabled(v7, v198);
    v9 = *(v0 + 672);
    v10 = *(v0 + 584);
    v11 = *(v0 + 576);
    v214 = *(v0 + 464);
    v220 = *(v0 + 488);
    v12 = *(v0 + 376);
    v13 = *(v0 + 344);
    v14 = *(v0 + 336);
    v212 = *(v0 + 280);
    v210 = *(v0 + 224);
    if (!v8)
    {

      v10(v12, v13);
      v11(v220, v214);
      v9(v212, v210);
      v21 = v14;
      goto LABEL_14;
    }

    v194 = *(v0 + 576);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v230[0] = v16;
    *v15 = 136315138;
    v181 = v9;
    v186 = v14;
    v17 = sub_2278C6D50();
    v19 = v18;
    v10(v12, v13);
    v20 = sub_2278021B4(v17, v19, v230);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_2277F7000, v7, v198, "[%s] Unable to determine scheduled date for notification, skipping for now...", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AA9E860](v16, -1, -1);
    MEMORY[0x22AA9E860](v15, -1, -1);

    v194(v220, v214);
    v181(v212, v210);
LABEL_4:
    v21 = v186;
LABEL_14:
    sub_227802FC4(v21, &qword_27D7D60A8, qword_2278C9730);

    v51 = *(v0 + 8);

    return v51();
  }

  v215 = *(v0 + 672);
  v22 = *(v0 + 664);
  v23 = *(v0 + 648);
  v24 = *(v0 + 296);
  v25 = *(v0 + 192);
  (*(v0 + 632))(*(v0 + 272), v1, v2);
  sub_2278C7C50();

  v230[0] = 0xD000000000000035;
  v230[1] = 0x80000002278D2DC0;
  v26 = sub_2278C6D50();
  MEMORY[0x22AA9D6B0](v26);

  MEMORY[0x22AA9D6B0](0x63696669746F6E5FLL, 0xED00006E6F697461);
  *(v0 + 720) = 0xD000000000000035;
  *(v0 + 728) = 0x80000002278D2DC0;
  sub_2278C67E0();
  v28 = v27;
  *(v0 + 736) = v27;
  __swift_project_boxed_opaque_existential_1((v25 + 200), *(v25 + 224));
  v23(v22, &off_283AE99D8);
  sub_2278C67E0();
  v30 = v29;
  *(v0 + 744) = v29;
  v215(v24, v2);
  if (v28 - v30 < 0.0)
  {
    v31 = 0.0;
  }

  else
  {
    v31 = v28 - v30;
  }

  v32 = MKBGetDeviceLockState();
  if (v32 != 3 && v32)
  {
    v85 = *(v0 + 560);
    v86 = *(v0 + 392);
    v87 = *(v0 + 344);
    v88 = *(v0 + 176);
    sub_2278C7370();
    v85(v86, v88, v87);
    v89 = sub_2278C7590();
    v90 = sub_2278C7970();
    v91 = os_log_type_enabled(v89, v90);
    v224 = *(v0 + 584);
    v92 = *(v0 + 576);
    v93 = *(v0 + 504);
    v94 = *(v0 + 464);
    v95 = *(v0 + 392);
    v96 = *(v0 + 344);
    if (v91)
    {
      v218 = *(v0 + 576);
      v97 = swift_slowAlloc();
      v208 = v94;
      v98 = swift_slowAlloc();
      v230[0] = v98;
      *v97 = 136315138;
      v202 = v93;
      v99 = sub_2278C6D50();
      v101 = v100;
      v224(v95, v96);
      v102 = sub_2278021B4(v99, v101, v230);

      *(v97 + 4) = v102;
      _os_log_impl(&dword_2277F7000, v89, v90, "[%s] Currently locked, rescheduling XPC Tasks...", v97, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v98);
      MEMORY[0x22AA9E860](v98, -1, -1);
      MEMORY[0x22AA9E860](v97, -1, -1);

      v218(v202, v208);
    }

    else
    {

      v224(v95, v96);
      v92(v93, v94);
    }

    v151 = *(v0 + 560);
    v152 = *(v0 + 384);
    v153 = *(v0 + 344);
    v228 = *(v0 + 272);
    v155 = *(v0 + 232);
    v154 = *(v0 + 240);
    v156 = *(v0 + 224);
    v157 = *(v0 + 176);
    v158 = *__swift_project_boxed_opaque_existential_1(*(v0 + 184), *(*(v0 + 184) + 24));
    *(v0 + 40) = type metadata accessor for FitnessPlusPlanService();
    *(v0 + 48) = &off_283AEC318;
    *(v0 + 16) = v158;

    sub_2278C7370();
    v151(v152, v157, v153);
    (*(v155 + 16))(v154, v228, v156);
    v159 = sub_2278C7590();
    v197 = sub_2278C7970();
    v160 = os_log_type_enabled(v159, v197);
    v205 = *(v0 + 672);
    v161 = *(v0 + 584);
    v162 = *(v0 + 576);
    v163 = *(v0 + 496);
    v229 = *(v0 + 464);
    v164 = *(v0 + 384);
    v165 = *(v0 + 344);
    v166 = *(v0 + 240);
    v167 = *(v0 + 224);
    if (v160)
    {
      v193 = *(v0 + 496);
      v168 = swift_slowAlloc();
      v185 = swift_slowAlloc();
      v230[0] = v185;
      *v168 = 136315394;
      v189 = v162;
      v169 = sub_2278C6D50();
      logb = v159;
      v171 = v170;
      v161(v164, v165);
      v172 = sub_2278021B4(v169, v171, v230);

      *(v168 + 4) = v172;
      *(v168 + 12) = 2080;
      v173 = sub_2278C6790();
      v175 = v174;
      v205(v166, v167);
      v176 = sub_2278021B4(v173, v175, v230);

      *(v168 + 14) = v176;
      _os_log_impl(&dword_2277F7000, logb, v197, "[%s] Schedule XPC Activity for notifcation to trigger on %s", v168, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9E860](v185, -1, -1);
      MEMORY[0x22AA9E860](v168, -1, -1);

      v189(v193, v229);
    }

    else
    {

      v205(v166, v167);
      v161(v164, v165);
      v162(v163, v229);
    }

    __swift_project_boxed_opaque_existential_1((*(v0 + 192) + 568), *(*(v0 + 192) + 592));
    v149 = swift_task_alloc();
    *(v0 + 800) = v149;
    *v149 = v0;
    v150 = sub_227891438;
  }

  else if (v31 <= 0.0)
  {
    v217 = *(v0 + 672);
    v53 = *(v0 + 664);
    v54 = *(v0 + 648);
    v55 = *(v0 + 296);
    v56 = *(v0 + 216);
    v200 = *(v0 + 224);
    v57 = *(v0 + 208);
    v207 = *(v0 + 200);
    v58 = *(v0 + 192);
    __swift_project_boxed_opaque_existential_1((v58 + 200), *(v58 + 224));
    sub_227804920();
    __swift_project_boxed_opaque_existential_1((v58 + 200), *(v58 + 224));
    v54(v53, &off_283AE99D8);
    v59 = sub_2278C68F0();
    v217(v55, v200);
    (*(v57 + 8))(v56, v207);
    v60 = *(v0 + 560);
    v61 = *(v0 + 344);
    v222 = *(v0 + 272);
    v62 = *(v0 + 224);
    v63 = *(v0 + 232);
    v64 = *(v0 + 176);
    if ((v59 & 1) == 0)
    {
      v129 = *(v0 + 400);
      v130 = *(v0 + 248);

      sub_2278C7370();
      v60(v129, v64, v61);
      (*(v63 + 16))(v130, v222, v62);
      v131 = sub_2278C7590();
      v192 = sub_2278C7950();
      v213 = v131;
      v132 = os_log_type_enabled(v131, v192);
      v133 = *(v0 + 672);
      v134 = *(v0 + 584);
      v219 = *(v0 + 576);
      v211 = *(v0 + 512);
      v209 = *(v0 + 464);
      v135 = *(v0 + 400);
      v136 = *(v0 + 344);
      v137 = *(v0 + 336);
      v227 = *(v0 + 280);
      v204 = *(v0 + 272);
      v138 = *(v0 + 248);
      v139 = *(v0 + 224);
      if (!v132)
      {

        v133(v138, v139);
        v134(v135, v136);
        v219(v211, v209);
        v133(v204, v139);
        v133(v227, v139);
        v21 = v137;
        goto LABEL_14;
      }

      v140 = swift_slowAlloc();
      v184 = swift_slowAlloc();
      v230[0] = v184;
      *v140 = 136315394;
      v177 = v133;
      v141 = sub_2278C6D50();
      v186 = v137;
      v143 = v142;
      v134(v135, v136);
      v144 = sub_2278021B4(v141, v143, v230);

      *(v140 + 4) = v144;
      *(v140 + 12) = 2080;
      v145 = sub_2278C6790();
      v147 = v146;
      v177(v138, v139);
      v148 = sub_2278021B4(v145, v147, v230);

      *(v140 + 14) = v148;
      _os_log_impl(&dword_2277F7000, v213, v192, "[%s] Scheduled date (%s) is in the past, but not today, not firing", v140, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9E860](v184, -1, -1);
      MEMORY[0x22AA9E860](v140, -1, -1);

      v219(v211, v209);
      v177(v204, v139);
      v177(v227, v139);
      goto LABEL_4;
    }

    v65 = *(v0 + 408);
    v66 = *(v0 + 256);
    sub_2278C7370();
    v60(v65, v64, v61);
    (*(v63 + 16))(v66, v222, v62);
    v67 = sub_2278C7590();
    v195 = sub_2278C7970();
    v68 = os_log_type_enabled(v67, v195);
    v201 = *(v0 + 672);
    v69 = *(v0 + 584);
    v70 = *(v0 + 576);
    v71 = *(v0 + 520);
    v223 = *(v0 + 464);
    v72 = *(v0 + 408);
    v73 = *(v0 + 344);
    v74 = *(v0 + 256);
    v75 = *(v0 + 224);
    if (v68)
    {
      v190 = *(v0 + 520);
      v76 = swift_slowAlloc();
      v182 = swift_slowAlloc();
      v230[0] = v182;
      *v76 = 136315394;
      v187 = v70;
      v77 = sub_2278C6D50();
      log = v67;
      v79 = v78;
      v69(v72, v73);
      v80 = sub_2278021B4(v77, v79, v230);

      *(v76 + 4) = v80;
      *(v76 + 12) = 2080;
      v81 = sub_2278C6790();
      v83 = v82;
      v201(v74, v75);
      v84 = sub_2278021B4(v81, v83, v230);

      *(v76 + 14) = v84;
      _os_log_impl(&dword_2277F7000, log, v195, "[%s] Scheduled date (%s) is today and in the past, firing now...", v76, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9E860](v182, -1, -1);
      MEMORY[0x22AA9E860](v76, -1, -1);

      v187(v190, v223);
    }

    else
    {

      v201(v74, v75);
      v69(v72, v73);
      v70(v71, v223);
    }

    __swift_project_boxed_opaque_existential_1((*(v0 + 192) + 568), *(*(v0 + 192) + 592));
    v149 = swift_task_alloc();
    *(v0 + 776) = v149;
    *v149 = v0;
    v150 = sub_227890F00;
  }

  else
  {
    v33 = *(v0 + 560);
    v34 = *(v0 + 432);
    v35 = *(v0 + 344);
    v36 = *(v0 + 176);
    sub_2278C7370();
    v33(v34, v36, v35);
    v37 = sub_2278C7590();
    v221 = sub_2278C7970();
    v38 = os_log_type_enabled(v37, v221);
    v39 = *(v0 + 584);
    v40 = *(v0 + 576);
    v41 = *(v0 + 536);
    v42 = *(v0 + 464);
    v43 = *(v0 + 432);
    v44 = *(v0 + 344);
    if (v38)
    {
      v216 = *(v0 + 576);
      v45 = swift_slowAlloc();
      v206 = v42;
      v46 = swift_slowAlloc();
      v230[0] = v46;
      *v45 = 136315394;
      v199 = v41;
      v47 = sub_2278C6D50();
      v49 = v48;
      v39(v43, v44);
      v50 = sub_2278021B4(v47, v49, v230);

      *(v45 + 4) = v50;
      *(v45 + 12) = 2048;
      *(v45 + 14) = v31;
      _os_log_impl(&dword_2277F7000, v37, v221, "[%s] Schedule XPC activity to trigger in %fs", v45, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x22AA9E860](v46, -1, -1);
      MEMORY[0x22AA9E860](v45, -1, -1);

      v216(v199, v206);
    }

    else
    {

      v39(v43, v44);
      v40(v41, v42);
    }

    v103 = *(v0 + 560);
    v104 = *(v0 + 424);
    v105 = *(v0 + 344);
    v106 = *(v0 + 264);
    v225 = *(v0 + 272);
    v107 = *(v0 + 224);
    v108 = *(v0 + 232);
    v109 = *(v0 + 176);
    v110 = *__swift_project_boxed_opaque_existential_1(*(v0 + 184), *(*(v0 + 184) + 24));
    *(v0 + 120) = type metadata accessor for FitnessPlusPlanService();
    *(v0 + 128) = &off_283AEC318;
    *(v0 + 96) = v110;

    sub_2278C7370();
    v103(v104, v109, v105);
    (*(v108 + 16))(v106, v225, v107);
    v111 = sub_2278C7590();
    v196 = sub_2278C7970();
    v112 = os_log_type_enabled(v111, v196);
    v203 = *(v0 + 672);
    v113 = *(v0 + 584);
    v114 = *(v0 + 576);
    v115 = *(v0 + 528);
    v226 = *(v0 + 464);
    v116 = *(v0 + 424);
    v117 = *(v0 + 344);
    v118 = *(v0 + 264);
    v119 = *(v0 + 224);
    if (v112)
    {
      v191 = *(v0 + 528);
      v120 = swift_slowAlloc();
      v183 = swift_slowAlloc();
      v230[0] = v183;
      *v120 = 136315394;
      v188 = v114;
      v121 = sub_2278C6D50();
      loga = v111;
      v123 = v122;
      v113(v116, v117);
      v124 = sub_2278021B4(v121, v123, v230);

      *(v120 + 4) = v124;
      *(v120 + 12) = 2080;
      v125 = sub_2278C6790();
      v127 = v126;
      v203(v118, v119);
      v128 = sub_2278021B4(v125, v127, v230);

      *(v120 + 14) = v128;
      _os_log_impl(&dword_2277F7000, loga, v196, "[%s] Schedule XPC Activity for notifcation to trigger on %s", v120, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9E860](v183, -1, -1);
      MEMORY[0x22AA9E860](v120, -1, -1);

      v188(v191, v226);
    }

    else
    {

      v203(v118, v119);
      v113(v116, v117);
      v114(v115, v226);
    }

    __swift_project_boxed_opaque_existential_1((*(v0 + 192) + 568), *(*(v0 + 192) + 592));
    v149 = swift_task_alloc();
    *(v0 + 752) = v149;
    *v149 = v0;
    v150 = sub_2278908A0;
  }

  v149[1] = v150;

  return sub_227863B34(0xD000000000000035, 0x80000002278D2DC0);
}

uint64_t sub_227890640()
{
  v1 = *(v0 + 336);
  (*(v0 + 672))(*(v0 + 280), *(v0 + 224));
  sub_227802FC4(v1, &qword_27D7D60A8, qword_2278C9730);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2278908A0()
{
  v1 = *(*v0 + 192);

  return MEMORY[0x2822009F8](sub_2278909B0, v1, 0);
}

uint64_t sub_2278909B0()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 736);
  v3 = *(v0 + 560);
  v4 = *(v0 + 416);
  v6 = *(v0 + 352);
  v5 = *(v0 + 360);
  v7 = *(v0 + 344);
  v8 = *(v0 + 192);
  v9 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1((v8 + 568), *(v8 + 592));
  v3(v4, v9, v7);
  sub_2278040AC(v0 + 96, v0 + 136);
  v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v0 + 760) = v11;
  *(v11 + 16) = v8;
  (*(v6 + 32))(v11 + v10, v4, v7);
  sub_2277F9D0C((v0 + 136), v11 + ((v5 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  v12 = swift_task_alloc();
  *(v0 + 768) = v12;
  *v12 = v0;
  v12[1] = sub_227890B58;
  v13 = v2 - v1;
  if (v2 - v1 < 0.0)
  {
    v13 = 0.0;
  }

  v14 = *(v0 + 728);
  v15 = *(v0 + 720);

  return sub_2278643BC(v15, v14, sub_2278A65B8, v11, v13);
}

uint64_t sub_227890B58()
{
  v1 = *(*v0 + 192);

  return MEMORY[0x2822009F8](sub_227890C84, v1, 0);
}

uint64_t sub_227890C84()
{
  v1 = v0[84];
  v2 = v0[42];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[28];
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  v1(v4, v5);
  v1(v3, v5);
  sub_227802FC4(v2, &qword_27D7D60A8, qword_2278C9730);

  v6 = v0[1];

  return v6();
}

uint64_t sub_227890F00()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[98] = v3;
  *v3 = v2;
  v3[1] = sub_2278910A8;
  v4 = v1[34];
  v5 = v1[23];
  v6 = v1[22];

  return sub_227895ED8(v6, v4, v5, 2);
}

uint64_t sub_2278910A8()
{
  v2 = *v1;
  *(*v1 + 792) = v0;

  v3 = *(v2 + 192);
  if (v0)
  {
    v4 = sub_227891A98;
  }

  else
  {
    v4 = sub_2278911D4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2278911D4()
{
  v1 = v0[84];
  v2 = v0[42];
  v3 = v0[35];
  v4 = v0[28];
  v1(v0[34], v4);
  v1(v3, v4);
  sub_227802FC4(v2, &qword_27D7D60A8, qword_2278C9730);

  v5 = v0[1];

  return v5();
}

uint64_t sub_227891438()
{
  v1 = *(*v0 + 192);

  return MEMORY[0x2822009F8](sub_227891548, v1, 0);
}

uint64_t sub_227891548()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 736);
  v3 = *(v0 + 560);
  v4 = *(v0 + 416);
  v6 = *(v0 + 352);
  v5 = *(v0 + 360);
  v7 = *(v0 + 344);
  v8 = *(v0 + 192);
  v9 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1((v8 + 568), *(v8 + 592));
  v3(v4, v9, v7);
  sub_2278040AC(v0 + 16, v0 + 56);
  v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v0 + 808) = v11;
  *(v11 + 16) = v8;
  (*(v6 + 32))(v11 + v10, v4, v7);
  sub_2277F9D0C((v0 + 56), v11 + ((v5 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  v12 = swift_task_alloc();
  *(v0 + 816) = v12;
  *v12 = v0;
  v12[1] = sub_2278916F0;
  v13 = v2 - v1;
  if (v2 - v1 < 0.0)
  {
    v13 = 0.0;
  }

  v14 = *(v0 + 728);
  v15 = *(v0 + 720);

  return sub_2278643BC(v15, v14, sub_2278A5FC0, v11, v13);
}

uint64_t sub_2278916F0()
{
  v1 = *(*v0 + 192);

  return MEMORY[0x2822009F8](sub_22789181C, v1, 0);
}

uint64_t sub_22789181C()
{
  v1 = v0[84];
  v2 = v0[42];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[28];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1(v4, v5);
  v1(v3, v5);
  sub_227802FC4(v2, &qword_27D7D60A8, qword_2278C9730);

  v6 = v0[1];

  return v6();
}

uint64_t sub_227891A98()
{
  v1 = v0[84];
  v2 = v0[42];
  v3 = v0[35];
  v4 = v0[28];
  v1(v0[34], v4);
  v1(v3, v4);
  sub_227802FC4(v2, &qword_27D7D60A8, qword_2278C9730);

  v5 = v0[1];

  return v5();
}

uint64_t sub_227891D08(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2278C6920();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  v2[7] = swift_task_alloc();
  v4 = sub_2278C6820();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v5 = sub_2278C6D60();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v6 = sub_2278C75A0();
  v2[18] = v6;
  v2[19] = *(v6 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227891F5C, v1, 0);
}

uint64_t sub_227891F5C(uint64_t a1)
{
  v32 = v1;
  sub_2278C7370();
  v2 = sub_2278C7590();
  v3 = sub_2278C7970();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 176);
  v6 = *(v1 + 144);
  v7 = *(v1 + 152);
  if (v4)
  {
    v27 = v3;
    v8 = *(v1 + 136);
    v9 = *(v1 + 104);
    v10 = *(v1 + 112);
    v11 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31 = v28;
    *v11 = 136315138;
    v12 = *MEMORY[0x277D09868];
    (*(v10 + 104))(v8, v12, v9);
    v29 = v6;
    v30 = v5;
    v13 = sub_2278C6D50();
    v15 = v14;
    (*(v10 + 8))(v8, v9);
    v16 = sub_2278021B4(v13, v15, &v31);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_2277F7000, v2, v27, "[%s] Checking schedued date for notification", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x22AA9E860](v28, -1, -1);
    MEMORY[0x22AA9E860](v11, -1, -1);

    v17 = *(v7 + 8);
    v17(v30, v29);
  }

  else
  {

    v17 = *(v7 + 8);
    v17(v5, v6);
    v12 = *MEMORY[0x277D09868];
  }

  *(v1 + 256) = v12;
  *(v1 + 184) = v17;
  v18 = *(v1 + 128);
  v19 = *(v1 + 104);
  v20 = *(v1 + 112);
  v21 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1((v21 + 240), *(v21 + 264));
  v22 = *(v20 + 104);
  *(v1 + 192) = v22;
  *(v1 + 200) = (v20 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v22(v18, v12, v19);
  v23 = swift_task_alloc();
  *(v1 + 208) = v23;
  *v23 = v1;
  v23[1] = sub_2278921E4;
  v24 = *(v1 + 128);
  v25 = *(v1 + 56);

  return sub_227884D34(v25, v24, v21 + 200);
}

uint64_t sub_2278921E4()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 104);
  v2[27] = v0;

  v6 = *(v4 + 8);
  v2[28] = v6;
  v2[29] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  v7 = v2[3];
  if (v0)
  {
    v8 = sub_2278929C0;
  }

  else
  {
    v8 = sub_227892380;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_227892380()
{
  v67 = v0;
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_227802FC4(v3, &qword_27D7D60A8, qword_2278C9730);
LABEL_7:
    sub_2278C7370();
    v23 = sub_2278C7590();
    v24 = sub_2278C7970();
    if (os_log_type_enabled(v23, v24))
    {
      v56 = *(v0 + 224);
      v25 = *(v0 + 192);
      v26 = *(v0 + 256);
      v61 = *(v0 + 160);
      v65 = *(v0 + 184);
      v27 = *(v0 + 136);
      v59 = *(v0 + 144);
      v28 = *(v0 + 104);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v66 = v30;
      *v29 = 136315138;
      v25(v27, v26, v28);
      v31 = sub_2278C6D50();
      v33 = v32;
      v56(v27, v28);
      v34 = sub_2278021B4(v31, v33, &v66);

      *(v29 + 4) = v34;
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AA9E860](v30, -1, -1);
      MEMORY[0x22AA9E860](v29, -1, -1);

      v65(v61, v59);
    }

    else
    {
      v35 = *(v0 + 184);
      v36 = *(v0 + 160);
      v37 = *(v0 + 144);

      v35(v36, v37);
    }

    v62 = *(v0 + 192);
    v38 = *(v0 + 256);
    v39 = *(v0 + 120);
    v40 = *(v0 + 104);
    v41 = *(v0 + 80);
    v42 = *(v0 + 24);
    __swift_project_boxed_opaque_existential_1(v42 + 25, v42[28]);
    v43 = off_283AE99E0;
    type metadata accessor for DateProvider(0);
    v43(v41);
    __swift_project_boxed_opaque_existential_1(v42 + 30, v42[33]);
    v62(v39, v38, v40);
    v44 = swift_task_alloc();
    *(v0 + 240) = v44;
    *v44 = v0;
    v44[1] = sub_227892AB4;
    v45 = *(v0 + 120);
    v46 = *(v0 + 80);

    return sub_227884840(v46, v45);
  }

  v4 = *(v0 + 88);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = *(v0 + 24);
  v63 = *(v0 + 32);
  v58 = *(v1 + 32);
  v58();
  __swift_project_boxed_opaque_existential_1((v7 + 200), *(v7 + 224));
  sub_227804920();
  __swift_project_boxed_opaque_existential_1((v7 + 200), *(v7 + 224));
  v8 = off_283AE99E0;
  type metadata accessor for DateProvider(0);
  v8(v4);
  v9 = sub_2278C68F0();
  v10 = *(v1 + 8);
  v10(v4, v2);
  (*(v6 + 8))(v5, v63);
  if ((v9 & 1) == 0)
  {
    v10(*(v0 + 96), *(v0 + 64));
    goto LABEL_7;
  }

  sub_2278C7370();
  v11 = sub_2278C7590();
  v12 = sub_2278C7970();
  if (os_log_type_enabled(v11, v12))
  {
    v55 = *(v0 + 224);
    v13 = *(v0 + 192);
    v14 = *(v0 + 256);
    v60 = *(v0 + 168);
    v64 = *(v0 + 184);
    v57 = *(v0 + 144);
    v15 = *(v0 + 136);
    v16 = *(v0 + 104);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v66 = v18;
    *v17 = 136315138;
    v13(v15, v14, v16);
    v19 = sub_2278C6D50();
    v21 = v20;
    v55(v15, v16);
    v22 = sub_2278021B4(v19, v21, &v66);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_2277F7000, v11, v12, "[%s] Using stored schedued date for notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x22AA9E860](v18, -1, -1);
    MEMORY[0x22AA9E860](v17, -1, -1);

    v64(v60, v57);
  }

  else
  {
    v48 = *(v0 + 184);
    v49 = *(v0 + 168);
    v50 = *(v0 + 144);

    v48(v49, v50);
  }

  v51 = *(v0 + 72);
  v52 = *(v0 + 64);
  v53 = *(v0 + 16);
  (v58)(v53, *(v0 + 96), v52);
  (*(v51 + 56))(v53, 0, 1, v52);

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_2278929C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227892AB4()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 104);
  *(*v1 + 248) = v0;

  v3(v4, v5);
  v6 = *(v2 + 24);
  if (v0)
  {
    v7 = sub_227892D94;
  }

  else
  {
    v7 = sub_227892C4C;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_227892C4C()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[2];
  (*(v2 + 32))(v3, v0[10], v1);
  (*(v2 + 56))(v3, 0, 1, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_227892D94()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_227892EA0(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 72) = a2;
  *(v4 + 80) = v3;
  *(v4 + 64) = a3;
  *(v4 + 56) = a1;
  v5 = sub_2278C6920();
  *(v4 + 88) = v5;
  *(v4 + 96) = *(v5 - 8);
  *(v4 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  v6 = sub_2278C6820();
  *(v4 + 144) = v6;
  *(v4 + 152) = *(v6 - 8);
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();
  v7 = sub_2278C6D60();
  *(v4 + 208) = v7;
  *(v4 + 216) = *(v7 - 8);
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  v8 = sub_2278C75A0();
  *(v4 + 248) = v8;
  *(v4 + 256) = *(v8 - 8);
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = swift_task_alloc();
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227893168, v3, 0);
}

uint64_t sub_227893168(uint64_t a1)
{
  v32 = v1;
  sub_2278C7370();
  v2 = sub_2278C7590();
  v3 = sub_2278C7970();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 304);
  v6 = *(v1 + 248);
  v7 = *(v1 + 256);
  if (v4)
  {
    v27 = v3;
    v8 = *(v1 + 240);
    v9 = *(v1 + 208);
    v10 = *(v1 + 216);
    v11 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31 = v28;
    *v11 = 136315138;
    v12 = *MEMORY[0x277D09860];
    (*(v10 + 104))(v8, v12, v9);
    v29 = v6;
    v30 = v5;
    v13 = sub_2278C6D50();
    v15 = v14;
    (*(v10 + 8))(v8, v9);
    v16 = sub_2278021B4(v13, v15, &v31);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_2277F7000, v2, v27, "[%s] Checking schedued date for notification", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x22AA9E860](v28, -1, -1);
    MEMORY[0x22AA9E860](v11, -1, -1);

    v17 = *(v7 + 8);
    v17(v30, v29);
  }

  else
  {

    v17 = *(v7 + 8);
    v17(v5, v6);
    v12 = *MEMORY[0x277D09860];
  }

  *(v1 + 464) = v12;
  *(v1 + 312) = v17;
  v18 = *(v1 + 232);
  v19 = *(v1 + 208);
  v20 = *(v1 + 216);
  v21 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v21 + 240), *(v21 + 264));
  v22 = *(v20 + 104);
  *(v1 + 320) = v22;
  *(v1 + 328) = (v20 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v22(v18, v12, v19);
  v23 = swift_task_alloc();
  *(v1 + 336) = v23;
  *v23 = v1;
  v23[1] = sub_2278933F0;
  v24 = *(v1 + 232);
  v25 = *(v1 + 136);

  return sub_227884D34(v25, v24, v21 + 200);
}

uint64_t sub_2278933F0()
{
  v2 = *v1;
  v2[43] = v0;

  v3 = v2[29];
  v4 = v2[27];
  v5 = v2[26];
  v6 = v2[10];
  v9 = *(v4 + 8);
  v7 = v4 + 8;
  v8 = v9;
  if (v0)
  {
    v8(v3, v5);
    v10 = sub_227893BD8;
  }

  else
  {
    v2[44] = v8;
    v2[45] = v7 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v3, v5);
    v10 = sub_227893584;
  }

  return MEMORY[0x2822009F8](v10, v6, 0);
}

uint64_t sub_227893584()
{
  v59 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = v2[6];
  *(v0 + 368) = v4;
  *(v0 + 376) = (v2 + 6) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    sub_227802FC4(v3, &qword_27D7D60A8, qword_2278C9730);
LABEL_7:
    sub_2278C7370();
    v24 = sub_2278C7590();
    v25 = sub_2278C7970();
    if (os_log_type_enabled(v24, v25))
    {
      v49 = *(v0 + 352);
      v26 = *(v0 + 320);
      v27 = *(v0 + 464);
      v54 = *(v0 + 288);
      v57 = *(v0 + 312);
      v53 = *(v0 + 248);
      v28 = *(v0 + 240);
      v29 = *(v0 + 208);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v58 = v31;
      *v30 = 136315138;
      v26(v28, v27, v29);
      v32 = sub_2278C6D50();
      v34 = v33;
      v49(v28, v29);
      v35 = sub_2278021B4(v32, v34, &v58);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_2277F7000, v24, v25, "[%s] Generating schedued date for notification", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x22AA9E860](v31, -1, -1);
      MEMORY[0x22AA9E860](v30, -1, -1);

      v57(v54, v53);
    }

    else
    {
      v36 = *(v0 + 312);
      v37 = *(v0 + 288);
      v38 = *(v0 + 248);

      v36(v37, v38);
    }

    __swift_project_boxed_opaque_existential_1(*(v0 + 72), *(*(v0 + 72) + 24));
    sub_2278682F4((v0 + 16));
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v39 = swift_task_alloc();
    *(v0 + 384) = v39;
    *v39 = v0;
    v39[1] = sub_227893D38;

    return sub_2278A7844();
  }

  v5 = *(v0 + 192);
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v8 = *(v0 + 80);
  v55 = *(v0 + 88);
  v52 = v2[4];
  v52(*(v0 + 200), v3, v1);
  __swift_project_boxed_opaque_existential_1((v8 + 200), *(v8 + 224));
  sub_227804920();
  __swift_project_boxed_opaque_existential_1((v8 + 200), *(v8 + 224));
  v9 = off_283AE99E0;
  type metadata accessor for DateProvider(0);
  v9(v5);
  v10 = sub_2278C68F0();
  v11 = v2[1];
  v11(v5, v1);
  (*(v7 + 8))(v6, v55);
  if ((v10 & 1) == 0)
  {
    v11(*(v0 + 200), *(v0 + 144));
    goto LABEL_7;
  }

  sub_2278C7370();
  v12 = sub_2278C7590();
  v13 = sub_2278C7970();
  if (os_log_type_enabled(v12, v13))
  {
    v48 = *(v0 + 352);
    v14 = *(v0 + 320);
    v15 = *(v0 + 464);
    v56 = *(v0 + 312);
    v50 = *(v0 + 248);
    v51 = *(v0 + 296);
    v16 = *(v0 + 240);
    v17 = *(v0 + 208);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v58 = v19;
    *v18 = 136315138;
    v14(v16, v15, v17);
    v20 = sub_2278C6D50();
    v22 = v21;
    v48(v16, v17);
    v23 = sub_2278021B4(v20, v22, &v58);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_2277F7000, v12, v13, "[%s] Using stored schedued date for last notification", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x22AA9E860](v19, -1, -1);
    MEMORY[0x22AA9E860](v18, -1, -1);

    v56(v51, v50);
  }

  else
  {
    v41 = *(v0 + 312);
    v42 = *(v0 + 296);
    v43 = *(v0 + 248);

    v41(v42, v43);
  }

  v44 = *(v0 + 144);
  v45 = *(v0 + 152);
  v46 = *(v0 + 56);
  v52(v46, *(v0 + 200), v44);
  (*(v45 + 56))(v46, 0, 1, v44);

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_227893BD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227893D38()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_227894758;
  }

  else
  {
    v4 = sub_227893E64;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_227893E64()
{
  v30 = v0;
  v1 = *(*__swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC23FitnessCoachingServices18TypicalDayProvider_state);
  *(v0 + 400) = v1;
  if (v1)
  {
    v2 = *(v0 + 80);
    v3 = v1;
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    __swift_project_boxed_opaque_existential_1((v2 + 488), *(v2 + 512));
    v4 = swift_task_alloc();
    *(v0 + 408) = v4;
    *v4 = v0;
    v4[1] = sub_227894254;
    v5 = *(v0 + 128);

    return sub_227853C98(v5);
  }

  else
  {
    sub_22785D108();
    v7 = swift_allocError();
    *v8 = 1;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    sub_2278C7370();
    v9 = sub_2278C7590();
    v10 = sub_2278C7950();
    if (os_log_type_enabled(v9, v10))
    {
      v25 = *(v0 + 352);
      v11 = *(v0 + 320);
      v12 = *(v0 + 464);
      v27 = *(v0 + 264);
      v28 = *(v0 + 312);
      v13 = *(v0 + 240);
      v26 = *(v0 + 248);
      v14 = *(v0 + 208);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v29 = v16;
      *v15 = 136315138;
      v11(v13, v12, v14);
      v17 = sub_2278C6D50();
      v19 = v18;
      v25(v13, v14);
      v20 = sub_2278021B4(v17, v19, &v29);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_2277F7000, v9, v10, "[%s] Failed to generate a Typical Day Model, cannot schedule 75%% F+ Plan notification", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x22AA9E860](v16, -1, -1);
      MEMORY[0x22AA9E860](v15, -1, -1);

      v28(v27, v26);
    }

    else
    {
      v21 = *(v0 + 312);
      v22 = *(v0 + 264);
      v23 = *(v0 + 248);

      v21(v22, v23);
    }

    (*(*(v0 + 152) + 56))(*(v0 + 56), 1, 1, *(v0 + 144));

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_227894254()
{
  v1 = *(*v0 + 80);

  return MEMORY[0x2822009F8](sub_227894364, v1, 0);
}

uint64_t sub_227894364()
{
  v34 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  if ((*(v0 + 368))(v2, 1, v1) == 1)
  {
    sub_227802FC4(v2, &qword_27D7D60A8, qword_2278C9730);
    sub_2278C7370();
    v3 = sub_2278C7590();
    v4 = sub_2278C7950();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 400);
    if (v5)
    {
      v28 = *(v0 + 352);
      v7 = *(v0 + 320);
      v8 = *(v0 + 464);
      v31 = *(v0 + 272);
      v32 = *(v0 + 312);
      v30 = *(v0 + 248);
      v9 = *(v0 + 240);
      v10 = *(v0 + 208);
      v29 = *(v0 + 400);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v33 = v12;
      *v11 = 136315138;
      v7(v9, v8, v10);
      v13 = sub_2278C6D50();
      v15 = v14;
      v28(v9, v10);
      v16 = sub_2278021B4(v13, v15, &v33);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_2277F7000, v3, v4, "[%s] UserDayProvider didn't provide start of user day: cannot schedule 75%% F+ Plan notification", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x22AA9E860](v12, -1, -1);
      MEMORY[0x22AA9E860](v11, -1, -1);

      v32(v31, v30);
    }

    else
    {
      v24 = *(v0 + 312);
      v25 = *(v0 + 272);
      v26 = *(v0 + 248);

      v24(v25, v26);
    }

    (*(*(v0 + 152) + 56))(*(v0 + 56), 1, 1, *(v0 + 144));

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    v17 = *(v0 + 184);
    v18 = *(v0 + 152);
    v19 = *(v0 + 80);
    v20 = *(v18 + 32);
    *(v0 + 416) = v20;
    *(v0 + 424) = (v18 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v20(v17, v2, v1);
    __swift_project_boxed_opaque_existential_1((v19 + 488), *(v19 + 512));
    v21 = swift_task_alloc();
    *(v0 + 432) = v21;
    *v21 = v0;
    v21[1] = sub_227894A58;
    v22 = *(v0 + 120);

    return sub_227854128(v22);
  }
}

uint64_t sub_227894758()
{
  v25 = v0;
  v1 = *(v0 + 392);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_2278C7370();
  v2 = sub_2278C7590();
  v3 = sub_2278C7950();
  if (os_log_type_enabled(v2, v3))
  {
    v19 = *(v0 + 352);
    v4 = *(v0 + 320);
    v5 = *(v0 + 464);
    v22 = *(v0 + 264);
    v23 = *(v0 + 312);
    v6 = *(v0 + 240);
    v21 = *(v0 + 248);
    v7 = *(v0 + 208);
    v20 = v1;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315138;
    v4(v6, v5, v7);
    v10 = sub_2278C6D50();
    v12 = v11;
    v19(v6, v7);
    v13 = sub_2278021B4(v10, v12, &v24);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_2277F7000, v2, v3, "[%s] Failed to generate a Typical Day Model, cannot schedule 75%% F+ Plan notification", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9E860](v9, -1, -1);
    MEMORY[0x22AA9E860](v8, -1, -1);

    v23(v22, v21);
  }

  else
  {
    v14 = *(v0 + 312);
    v15 = *(v0 + 264);
    v16 = *(v0 + 248);

    v14(v15, v16);
  }

  (*(*(v0 + 152) + 56))(*(v0 + 56), 1, 1, *(v0 + 144));

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_227894A58()
{
  v1 = *(*v0 + 80);

  return MEMORY[0x2822009F8](sub_227894B68, v1, 0);
}

uint64_t sub_227894B68()
{
  v65 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  if ((*(v0 + 368))(v2, 1, v1) == 1)
  {
    v3 = [*(v0 + 400) userEndOfDay];
    if (v3)
    {
      v4 = *(v0 + 416);
      v5 = *(v0 + 192);
      v6 = *(v0 + 176);
      v7 = *(v0 + 144);
      v8 = *(v0 + 152);
      v9 = *(v0 + 112);
      v10 = v3;
      sub_2278C6800();

      v4(v9, v5, v7);
      (*(v8 + 56))(v9, 0, 1, v7);
      v4(v6, v9, v7);
    }

    else
    {
      v61 = *(v0 + 368);
      v11 = *(v0 + 192);
      v12 = *(v0 + 144);
      v13 = *(v0 + 152);
      v15 = *(v0 + 104);
      v14 = *(v0 + 112);
      v16 = *(v0 + 88);
      v17 = *(v0 + 96);
      v18 = *(v0 + 80);
      (*(v13 + 56))(v14, 1, 1, v12);
      sub_2278C6810();
      __swift_project_boxed_opaque_existential_1((v18 + 200), *(v18 + 224));
      sub_227804920();
      sub_2278C6760();
      (*(v17 + 8))(v15, v16);
      (*(v13 + 8))(v11, v12);
      if (v61(v14, 1, v12) != 1)
      {
        sub_227802FC4(*(v0 + 112), &qword_27D7D60A8, qword_2278C9730);
      }
    }

    v19 = *(v0 + 120);
    if ((*(v0 + 368))(v19, 1, *(v0 + 144)) != 1)
    {
      sub_227802FC4(v19, &qword_27D7D60A8, qword_2278C9730);
    }
  }

  else
  {
    (*(v0 + 416))(*(v0 + 176), v2, v1);
  }

  v21 = *(v0 + 160);
  v20 = *(v0 + 168);
  v22 = *(v0 + 144);
  v23 = *(v0 + 152);
  sub_2278C67E0();
  sub_2278C67E0();
  sub_2278C67C0();
  sub_2278C7370();
  (*(v23 + 16))(v21, v20, v22);
  v24 = sub_2278C7590();
  v25 = sub_2278C7970();
  if (os_log_type_enabled(v24, v25))
  {
    v57 = *(v0 + 352);
    v26 = *(v0 + 320);
    v27 = *(v0 + 464);
    v62 = *(v0 + 280);
    v63 = *(v0 + 312);
    v60 = *(v0 + 248);
    v28 = *(v0 + 240);
    v29 = *(v0 + 208);
    v30 = *(v0 + 152);
    v58 = *(v0 + 160);
    v59 = *(v0 + 144);
    v31 = *(v0 + 64);
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v64 = v33;
    *v32 = 136315650;
    v26(v28, v27, v29);
    v34 = sub_2278C6D50();
    v36 = v35;
    v57(v28, v29);
    v37 = sub_2278021B4(v34, v36, &v64);

    *(v32 + 4) = v37;
    *(v32 + 12) = 2048;
    *(v32 + 14) = v31 * 100.0;
    *(v32 + 22) = 2080;
    v38 = sub_2278C6790();
    v40 = v39;
    v41 = *(v30 + 8);
    v41(v58, v59);
    v42 = sub_2278021B4(v38, v40, &v64);

    *(v32 + 24) = v42;
    _os_log_impl(&dword_2277F7000, v24, v25, "[%s] Typical Day Model suggests that %f%% of day is: %s", v32, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA9E860](v33, -1, -1);
    MEMORY[0x22AA9E860](v32, -1, -1);

    v63(v62, v60);
  }

  else
  {
    v43 = *(v0 + 312);
    v44 = *(v0 + 280);
    v45 = *(v0 + 248);
    v47 = *(v0 + 152);
    v46 = *(v0 + 160);
    v48 = *(v0 + 144);

    v41 = *(v47 + 8);
    v41(v46, v48);
    v43(v44, v45);
  }

  *(v0 + 440) = v41;
  v49 = *(v0 + 320);
  v50 = *(v0 + 464);
  v51 = *(v0 + 224);
  v52 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1((*(v0 + 80) + 240), *(*(v0 + 80) + 264));
  v49(v51, v50, v52);
  v53 = swift_task_alloc();
  *(v0 + 448) = v53;
  *v53 = v0;
  v53[1] = sub_2278950A0;
  v54 = *(v0 + 224);
  v55 = *(v0 + 168);

  return sub_227884840(v55, v54);
}

uint64_t sub_2278950A0()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  v3 = v2[44];
  v4 = v2[28];
  v5 = v2[26];
  v6 = v2[10];
  v3(v4, v5);
  if (v0)
  {
    v7 = sub_227895400;
  }

  else
  {
    v7 = sub_227895224;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_227895224()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 416);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v5 = *(v0 + 168);
  v6 = *(v0 + 144);
  v7 = *(v0 + 152);
  v8 = *(v0 + 56);

  v1(v3, v6);
  v1(v4, v6);
  v2(v8, v5, v6);
  (*(v7 + 56))(v8, 0, 1, v6);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_227895400()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);
  v5 = *(v0 + 144);

  v1(v4, v5);
  v1(v2, v5);
  v1(v3, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2278955B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2278C6D60();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6570, &qword_2278C9AE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = sub_2278C7840();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  swift_weakInit();
  (*(v6 + 16))(v8, a2, v5);
  sub_2278040AC(a3, v19);
  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = (v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  (*(v6 + 32))(v16 + v14, v8, v5);
  *(v16 + v15) = v13;
  sub_2277F9D0C(v19, v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8));
  sub_22788B134(0, 0, v11, &unk_2278CE288, v16);
}

uint64_t sub_2278957F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_2278C6D60();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = sub_2278C75A0();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22789591C, 0, 0);
}

uint64_t sub_22789591C(uint64_t a1)
{
  v32 = v1;
  v3 = v1[9];
  v2 = v1[10];
  v4 = v1[8];
  v5 = v1[5];
  sub_2278C7370();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_2278C7590();
  v7 = sub_2278C7970();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[14];
  v11 = v1[11];
  v10 = v1[12];
  v13 = v1[9];
  v12 = v1[10];
  v14 = v1[8];
  if (v8)
  {
    v30 = v1[11];
    v15 = swift_slowAlloc();
    v28 = v7;
    v16 = swift_slowAlloc();
    v31 = v16;
    *v15 = 136315138;
    v17 = sub_2278C6D50();
    v29 = v9;
    v19 = v18;
    (*(v13 + 8))(v12, v14);
    v20 = sub_2278021B4(v17, v19, &v31);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_2277F7000, v6, v28, "[%s] XPC Activity triggered", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AA9E860](v16, -1, -1);
    MEMORY[0x22AA9E860](v15, -1, -1);

    v21 = *(v10 + 8);
    v21(v29, v30);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
    v21 = *(v10 + 8);
    v21(v9, v11);
  }

  v1[15] = v21;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v1[16] = Strong;
  if (Strong)
  {
    v23 = swift_task_alloc();
    v1[17] = v23;
    *v23 = v1;
    v23[1] = sub_227895BD8;
    v24 = v1[7];
    v25 = v1[5];

    return sub_22788C268(v25, v24);
  }

  else
  {

    v27 = v1[1];

    return v27();
  }
}

uint64_t sub_227895BD8()
{
  v2 = *v1;
  *(v2 + 144) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227895D30, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_227895D30()
{
  v1 = *(v0 + 144);

  sub_2278C7370();
  v2 = v1;
  v3 = sub_2278C7590();
  v4 = sub_2278C7950();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 144);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2277F7000, v3, v4, "Error scheduling Fitness Plus Plan task: %@", v7, 0xCu);
    sub_227802FC4(v8, &qword_27D7D64B0, &qword_2278CA010);
    MEMORY[0x22AA9E860](v8, -1, -1);
    MEMORY[0x22AA9E860](v7, -1, -1);
  }

  else
  {
  }

  (*(v0 + 120))(*(v0 + 104), *(v0 + 88));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_227895ED8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 984) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  type metadata accessor for NotificationRequest(0);
  *(v5 + 48) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6360, &qword_2278CCC70);
  *(v5 + 56) = swift_task_alloc();
  v6 = sub_2278C6DB0();
  *(v5 + 64) = v6;
  *(v5 + 72) = *(v6 - 8);
  *(v5 + 80) = swift_task_alloc();
  v7 = sub_2278C6D60();
  *(v5 + 88) = v7;
  *(v5 + 96) = *(v7 - 8);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  v8 = sub_2278C6920();
  *(v5 + 192) = v8;
  *(v5 + 200) = *(v8 - 8);
  *(v5 + 208) = swift_task_alloc();
  v9 = sub_2278C6820();
  *(v5 + 216) = v9;
  *(v5 + 224) = *(v9 - 8);
  *(v5 + 232) = swift_task_alloc();
  *(v5 + 240) = swift_task_alloc();
  *(v5 + 248) = swift_task_alloc();
  *(v5 + 256) = swift_task_alloc();
  *(v5 + 264) = swift_task_alloc();
  *(v5 + 272) = swift_task_alloc();
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = swift_task_alloc();
  *(v5 + 296) = swift_task_alloc();
  *(v5 + 304) = swift_task_alloc();
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  *(v5 + 328) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  *(v5 + 336) = swift_task_alloc();
  *(v5 + 344) = swift_task_alloc();
  v10 = sub_2278C6860();
  *(v5 + 352) = v10;
  *(v5 + 360) = *(v10 - 8);
  *(v5 + 368) = swift_task_alloc();
  *(v5 + 376) = swift_task_alloc();
  *(v5 + 384) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D65B8, &qword_2278CE268);
  *(v5 + 392) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D65C0, &qword_2278CE270);
  *(v5 + 400) = swift_task_alloc();
  *(v5 + 408) = swift_task_alloc();
  *(v5 + 416) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D65C8, &qword_2278CE278);
  *(v5 + 424) = swift_task_alloc();
  v11 = sub_2278C6940();
  *(v5 + 432) = v11;
  *(v5 + 440) = *(v11 - 8);
  *(v5 + 448) = swift_task_alloc();
  v12 = sub_2278C75A0();
  *(v5 + 456) = v12;
  *(v5 + 464) = *(v12 - 8);
  *(v5 + 472) = swift_task_alloc();
  *(v5 + 480) = swift_task_alloc();
  *(v5 + 488) = swift_task_alloc();
  *(v5 + 496) = swift_task_alloc();
  *(v5 + 504) = swift_task_alloc();
  *(v5 + 512) = swift_task_alloc();
  *(v5 + 520) = swift_task_alloc();
  *(v5 + 528) = swift_task_alloc();
  *(v5 + 536) = swift_task_alloc();
  *(v5 + 544) = swift_task_alloc();
  *(v5 + 552) = swift_task_alloc();
  *(v5 + 560) = swift_task_alloc();
  *(v5 + 568) = swift_task_alloc();
  *(v5 + 576) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278964E4, v4, 0);
}

uint64_t sub_2278964E4(uint64_t a1)
{
  v67 = v1;
  v2 = v1[72];
  v3 = v1[57];
  v4 = v1[58];
  v5 = v1[5];
  sub_2278C7370();
  sub_2278C7580();
  v6 = *(v4 + 8);
  v1[73] = v6;
  v1[74] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  if ([*(v5 + 112) fitnessAppInstalled])
  {
    v7 = MKBGetDeviceLockState();
    if (v7 != 3 && v7)
    {
      v38 = v1[14];
      v39 = v1[11];
      v40 = v1[12];
      v41 = v1[2];
      sub_2278C7370();
      (*(v40 + 16))(v38, v41, v39);
      v42 = sub_2278C7590();
      v43 = sub_2278C7970();
      v44 = os_log_type_enabled(v42, v43);
      v45 = v1[60];
      v46 = v1[57];
      v47 = v1[14];
      v49 = v1[11];
      v48 = v1[12];
      if (v44)
      {
        v62 = v1[57];
        v50 = swift_slowAlloc();
        v65 = v6;
        v66[0] = swift_slowAlloc();
        v51 = v66[0];
        *v50 = 136315138;
        v58 = v43;
        v52 = sub_2278C6D50();
        v60 = v45;
        v54 = v53;
        (*(v48 + 8))(v47, v49);
        v55 = sub_2278021B4(v52, v54, v66);

        *(v50 + 4) = v55;
        _os_log_impl(&dword_2277F7000, v42, v58, "[%s] Currently locked, skipping...", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v51);
        MEMORY[0x22AA9E860](v51, -1, -1);
        MEMORY[0x22AA9E860](v50, -1, -1);

        v65(v60, v62);
      }

      else
      {

        (*(v48 + 8))(v47, v49);
        v6(v45, v46);
      }

      v56 = v1[1];

      return v56();
    }

    else
    {
      v8 = v1[5];
      v9 = v8[18];
      v10 = v8[19];
      __swift_project_boxed_opaque_existential_1(v8 + 15, v9);
      v63 = (*(v10 + 24) + **(v10 + 24));
      v11 = swift_task_alloc();
      v1[75] = v11;
      *v11 = v1;
      v11[1] = sub_227896D64;
      v12 = v1[53];

      return v63(v12, v9, v10);
    }
  }

  else
  {
    v15 = v1[12];
    v14 = v1[13];
    v16 = v1[11];
    v17 = v1[2];
    sub_2278C7370();
    (*(v15 + 16))(v14, v17, v16);
    v18 = sub_2278C7590();
    v19 = sub_2278C7970();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v1[59];
    v22 = v1[57];
    v24 = v1[12];
    v23 = v1[13];
    v25 = v1[11];
    if (v20)
    {
      v61 = v1[57];
      v26 = swift_slowAlloc();
      v64 = v6;
      v66[0] = swift_slowAlloc();
      v27 = v66[0];
      *v26 = 136315138;
      v57 = v19;
      v28 = sub_2278C6D50();
      v59 = v21;
      v30 = v29;
      (*(v24 + 8))(v23, v25);
      v31 = sub_2278021B4(v28, v30, v66);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_2277F7000, v18, v57, "[%s] Not posting notification, fitness app not installed", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x22AA9E860](v27, -1, -1);
      MEMORY[0x22AA9E860](v26, -1, -1);

      v64(v59, v61);
    }

    else
    {

      (*(v24 + 8))(v23, v25);
      v6(v21, v22);
    }

    v32 = v1[29];
    v33 = v1[5];
    __swift_project_boxed_opaque_existential_1(v33 + 30, v33[33]);
    __swift_project_boxed_opaque_existential_1(v33 + 25, v33[28]);
    v34 = off_283AE99E0;
    type metadata accessor for DateProvider(0);
    v34(v32);
    v35 = swift_task_alloc();
    v1[121] = v35;
    *v35 = v1;
    v35[1] = sub_22789E594;
    v36 = v1[29];
    v37 = v1[2];

    return sub_227884164(v36, v37);
  }
}

uint64_t sub_227896D64()
{
  v2 = *v1;
  *(*v1 + 608) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_22789ECC4;
  }

  else
  {
    v4 = sub_227896E90;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_227896E90()
{
  v1 = v0[54];
  v2 = v0[55];
  v3 = v0[53];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_227802FC4(v3, &qword_27D7D65C8, &qword_2278CE278);
    sub_2278C7370();
    v4 = sub_2278C7590();
    v5 = sub_2278C7970();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[73];
    v8 = v0[61];
    v9 = v0[57];
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2277F7000, v4, v5, "User does not have an active F+ plan", v10, 2u);
      MEMORY[0x22AA9E860](v10, -1, -1);
    }

    v7(v8, v9);

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = v0[5];
    (*(v2 + 32))(v0[56], v3, v1);
    v14 = v13[18];
    v15 = v13[19];
    __swift_project_boxed_opaque_existential_1(v13 + 15, v14);
    v17 = (*(v15 + 16) + **(v15 + 16));
    v16 = swift_task_alloc();
    v0[77] = v16;
    *v16 = v0;
    v16[1] = sub_227897388;

    return v17(v14, v15);
  }
}

uint64_t sub_227897388(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 985) = a1;
  *(v4 + 624) = v1;

  v5 = *(v3 + 40);
  if (v1)
  {
    v6 = sub_22789EFC0;
  }

  else
  {
    v6 = sub_2278974C0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2278974C0()
{
  if (*(v0 + 985))
  {
    __swift_project_boxed_opaque_existential_1((*(v0 + 40) + 240), *(*(v0 + 40) + 264));
    v1 = swift_task_alloc();
    *(v0 + 648) = v1;
    *v1 = v0;
    v1[1] = sub_227898104;
    v2 = *(v0 + 344);
    v3 = *(v0 + 16);

    return sub_227884658(v2, v3);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((*(v0 + 40) + 240), *(*(v0 + 40) + 264));
    v5 = swift_task_alloc();
    *(v0 + 632) = v5;
    *v5 = v0;
    v5[1] = sub_2278975F4;
    v6 = *(v0 + 416);

    return sub_227885490(v6);
  }
}

uint64_t sub_2278975F4()
{
  v2 = *v1;
  *(*v1 + 640) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_227897DF0;
  }

  else
  {
    v4 = sub_227897720;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_227897720()
{
  v2 = v0[51];
  v1 = v0[52];
  v4 = v0[48];
  v3 = v0[49];
  v5 = v0[44];
  v6 = v0[45];
  sub_2278C6930();
  (*(v6 + 56))(v2, 0, 1, v5);
  v7 = *(v4 + 48);
  sub_227850448(v1, v3, &qword_27D7D65C0, &qword_2278CE270);
  sub_227850448(v2, v3 + v7, &qword_27D7D65C0, &qword_2278CE270);
  v8 = *(v6 + 48);
  if (v8(v3, 1, v5) == 1)
  {
    v9 = v0[44];
    sub_227802FC4(v0[51], &qword_27D7D65C0, &qword_2278CE270);
    if (v8(v3 + v7, 1, v9) == 1)
    {
      sub_227802FC4(v0[49], &qword_27D7D65C0, &qword_2278CE270);
LABEL_11:
      sub_2278C7370();
      v26 = sub_2278C7590();
      v27 = sub_2278C7970();
      v28 = os_log_type_enabled(v26, v27);
      v29 = v0[73];
      v30 = v0[71];
      v32 = v0[56];
      v31 = v0[57];
      v33 = v0[55];
      v39 = v0[54];
      v34 = v0[52];
      if (v28)
      {
        v38 = v0[56];
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_2277F7000, v26, v27, "Already scheduled notification for this plan for unsubscribed user", v35, 2u);
        v36 = v35;
        v32 = v38;
        MEMORY[0x22AA9E860](v36, -1, -1);
      }

      v29(v30, v31);
      sub_227802FC4(v34, &qword_27D7D65C0, &qword_2278CE270);
      (*(v33 + 8))(v32, v39);

      v37 = v0[1];

      return v37();
    }

    goto LABEL_6;
  }

  v10 = v0[44];
  sub_227850448(v0[49], v0[50], &qword_27D7D65C0, &qword_2278CE270);
  v11 = v8(v3 + v7, 1, v10);
  v12 = v0[50];
  v13 = v0[51];
  if (v11 == 1)
  {
    v15 = v0[44];
    v14 = v0[45];
    sub_227802FC4(v0[51], &qword_27D7D65C0, &qword_2278CE270);
    (*(v14 + 8))(v12, v15);
LABEL_6:
    sub_227802FC4(v0[49], &qword_27D7D65B8, &qword_2278CE268);
    goto LABEL_7;
  }

  v20 = v0[49];
  v21 = v0[47];
  v22 = v0[44];
  v23 = v0[45];
  (*(v23 + 32))(v21, v3 + v7, v22);
  sub_2278A5F78(&qword_27D7D65D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v24 = sub_2278C76E0();
  v25 = *(v23 + 8);
  v25(v21, v22);
  sub_227802FC4(v13, &qword_27D7D65C0, &qword_2278CE270);
  v25(v12, v22);
  sub_227802FC4(v20, &qword_27D7D65C0, &qword_2278CE270);
  if (v24)
  {
    goto LABEL_11;
  }

LABEL_7:
  sub_227802FC4(v0[52], &qword_27D7D65C0, &qword_2278CE270);
  __swift_project_boxed_opaque_existential_1((v0[5] + 240), *(v0[5] + 264));
  v16 = swift_task_alloc();
  v0[81] = v16;
  *v16 = v0;
  v16[1] = sub_227898104;
  v17 = v0[43];
  v18 = v0[2];

  return sub_227884658(v17, v18);
}

uint64_t sub_227897DF0()
{
  (*(v0[55] + 8))(v0[56], v0[54]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_227898104()
{
  v2 = *v1;
  *(*v1 + 656) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_227898CD4;
  }

  else
  {
    v4 = sub_227898230;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_227898230()
{
  v89 = v0;
  v1 = v0[42];
  v2 = v0[27];
  v3 = v0[28];
  sub_227850448(v0[43], v1, &qword_27D7D60A8, qword_2278C9730);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_227802FC4(v0[42], &qword_27D7D60A8, qword_2278C9730);
    goto LABEL_7;
  }

  v4 = v0[40];
  v5 = v0[28];
  v6 = v0[25];
  v7 = v0[26];
  v84 = v0[27];
  v87 = v0[24];
  v8 = v0[5];
  (*(v5 + 32))(v0[41], v0[42]);
  __swift_project_boxed_opaque_existential_1((v8 + 200), *(v8 + 224));
  sub_227804920();
  __swift_project_boxed_opaque_existential_1((v8 + 200), *(v8 + 224));
  v9 = off_283AE99E0;
  type metadata accessor for DateProvider(0);
  v9(v4);
  v10 = sub_2278C68F0();
  v11 = *(v5 + 8);
  v11(v4, v84);
  (*(v6 + 8))(v7, v87);
  if ((v10 & 1) == 0)
  {
    v11(v0[41], v0[27]);
LABEL_7:
    v39 = v0[40];
    v41 = v0[27];
    v40 = v0[28];
    v42 = v0[5];
    sub_22789F96C(v0[2], v0[3], v0[38]);
    __swift_project_boxed_opaque_existential_1((v42 + 200), *(v42 + 224));
    v43 = off_283AE99E0;
    v0[83] = off_283AE99E0;
    v0[84] = &off_283AE99E0 & 0xFFFFFFFFFFFFLL | 0xB006000000000000;
    v0[85] = type metadata accessor for DateProvider(0);
    v44 = v43;
    v43(v39);
    v45 = sub_2278C6770();
    v46 = *(v40 + 8);
    v0[86] = v46;
    v0[87] = (v40 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v46(v39, v41);
    if (v45)
    {
      __swift_project_boxed_opaque_existential_1((v0[5] + 368), *(v0[5] + 392));
      v47 = swift_task_alloc();
      v0[88] = v47;
      *v47 = v0;
      v47[1] = sub_227898FE8;

      return sub_227817030(0xD00000000000001ELL, 0x80000002278D2DA0);
    }

    else
    {
      v49 = v0[15];
      v51 = v0[11];
      v50 = v0[12];
      v52 = v0[2];
      sub_2278C7370();
      (*(v50 + 16))(v49, v52, v51);
      v53 = sub_2278C7590();
      v83 = sub_2278C7970();
      v54 = os_log_type_enabled(v53, v83);
      v55 = v0[73];
      v56 = v0[62];
      v86 = v0[57];
      v57 = v0[15];
      v59 = v0[11];
      v58 = v0[12];
      if (v54)
      {
        v81 = v0[73];
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v88[0] = v61;
        *v60 = 136315138;
        v77 = sub_2278C6D50();
        v79 = v56;
        v63 = v62;
        (*(v58 + 8))(v57, v59);
        v64 = sub_2278021B4(v77, v63, v88);

        *(v60 + 4) = v64;
        _os_log_impl(&dword_2277F7000, v53, v83, "[%s] Too late to trigger notification, skipping for today", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v61);
        MEMORY[0x22AA9E860](v61, -1, -1);
        MEMORY[0x22AA9E860](v60, -1, -1);

        v81(v79, v86);
      }

      else
      {

        (*(v58 + 8))(v57, v59);
        v55(v56, v86);
      }

      v65 = v0[30];
      __swift_project_boxed_opaque_existential_1((v0[5] + 240), *(v0[5] + 264));
      __swift_project_boxed_opaque_existential_1((v42 + 200), *(v42 + 224));
      v44(v65);
      v66 = swift_task_alloc();
      v0[119] = v66;
      *v66 = v0;
      v66[1] = sub_22789E0B0;
      v67 = v0[30];
      v68 = v0[2];

      return sub_227884164(v67, v68);
    }
  }

  v85 = v11;
  v12 = v0[41];
  v13 = v0[39];
  v14 = v0[27];
  v15 = v0[28];
  v16 = v0[23];
  v17 = v0[11];
  v18 = v0[12];
  v19 = v0[2];
  sub_2278C7370();
  (*(v18 + 16))(v16, v19, v17);
  (*(v15 + 16))(v13, v12, v14);
  v20 = sub_2278C7590();
  v21 = sub_2278C7970();
  v22 = os_log_type_enabled(v20, v21);
  v78 = v0[73];
  v23 = v0[56];
  v75 = v0[57];
  v76 = v0[70];
  v24 = v0[55];
  v80 = v0[43];
  v82 = v0[54];
  v74 = v0[41];
  v25 = v0[39];
  v26 = v0[27];
  v27 = v0[23];
  v29 = v0[11];
  v28 = v0[12];
  if (v22)
  {
    v71 = v21;
    v30 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v88[0] = v72;
    *v30 = 136315394;
    v70 = v26;
    v31 = sub_2278C6D50();
    v73 = v23;
    v33 = v32;
    (*(v28 + 8))(v27, v29);
    v34 = sub_2278021B4(v31, v33, v88);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2080;
    v35 = sub_2278C6790();
    v37 = v36;
    v85(v25, v70);
    v38 = sub_2278021B4(v35, v37, v88);

    *(v30 + 14) = v38;
    _os_log_impl(&dword_2277F7000, v20, v71, "[%s] Already scheduled notification today at %s", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9E860](v72, -1, -1);
    MEMORY[0x22AA9E860](v30, -1, -1);

    v78(v76, v75);
    v85(v74, v70);
    sub_227802FC4(v80, &qword_27D7D60A8, qword_2278C9730);
    (*(v24 + 8))(v73, v82);
  }

  else
  {

    v85(v25, v26);
    (*(v28 + 8))(v27, v29);
    v78(v76, v75);
    v85(v74, v26);
    sub_227802FC4(v80, &qword_27D7D60A8, qword_2278C9730);
    (*(v24 + 8))(v23, v82);
  }

  v69 = v0[1];

  return v69();
}

uint64_t sub_227898CD4()
{
  (*(v0[55] + 8))(v0[56], v0[54]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_227898FE8(unsigned __int8 a1)
{
  v3 = a1;
  v4 = *v1;

  if (v3 == 2 || (a1 & 1) != 0)
  {
    v5 = *(v4 + 40);
    v6 = sub_227899118;
  }

  else
  {
    v5 = *(v4 + 40);
    v6 = sub_22789D954;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_227899118()
{
  v32 = v0;
  if (sub_22785ACAC())
  {
    __swift_project_boxed_opaque_existential_1((v0[5] + 280), *(v0[5] + 304));
    v1 = swift_task_alloc();
    v0[89] = v1;
    *v1 = v0;
    v1[1] = sub_227899420;

    return sub_22783D088();
  }

  else
  {
    v3 = v0[17];
    v4 = v0[11];
    v5 = v0[12];
    v6 = v0[2];
    sub_2278C7370();
    (*(v5 + 16))(v3, v6, v4);
    v7 = sub_2278C7590();
    v8 = sub_2278C7970();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[73];
    v11 = v0[64];
    v12 = v0[57];
    v13 = v0[17];
    v15 = v0[11];
    v14 = v0[12];
    if (v9)
    {
      v30 = v0[73];
      v16 = swift_slowAlloc();
      v29 = v11;
      v17 = swift_slowAlloc();
      v31 = v17;
      *v16 = 136315138;
      v28 = v12;
      v18 = sub_2278C6D50();
      v20 = v19;
      (*(v14 + 8))(v13, v15);
      v21 = sub_2278021B4(v18, v20, &v31);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_2277F7000, v7, v8, "[%s] Fitness+ Plan notifications are disabled because fitness tracking is disabled", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x22AA9E860](v17, -1, -1);
      MEMORY[0x22AA9E860](v16, -1, -1);

      v30(v29, v28);
    }

    else
    {

      (*(v14 + 8))(v13, v15);
      v10(v11, v12);
    }

    v22 = v0[85];
    v23 = v0[83];
    v24 = v0[5];
    __swift_project_boxed_opaque_existential_1(v24 + 30, v24[33]);
    __swift_project_boxed_opaque_existential_1(v24 + 25, v24[28]);
    v23(v22, &off_283AE99D8);
    v25 = swift_task_alloc();
    v0[115] = v25;
    *v25 = v0;
    v25[1] = sub_22789D470;
    v26 = v0[32];
    v27 = v0[2];

    return sub_227884164(v26, v27);
  }
}

uint64_t sub_227899420()
{
  v2 = *v1;
  *(*v1 + 720) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_2278995EC;
  }

  else
  {
    v4 = sub_22789954C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22789954C()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 40) + 488), *(*(v0 + 40) + 512));
  v1 = swift_task_alloc();
  *(v0 + 728) = v1;
  *v1 = v0;
  v1[1] = sub_22789983C;

  return sub_227854324();
}

uint64_t sub_2278995EC(uint64_t a1)
{
  v28 = v1;
  v2 = *(v1 + 176);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  v5 = *(v1 + 16);
  sub_2278C7370();
  (*(v4 + 16))(v2, v5, v3);
  v6 = sub_2278C7590();
  v7 = sub_2278C7970();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v1 + 584);
  v10 = *(v1 + 552);
  v11 = *(v1 + 456);
  v12 = *(v1 + 176);
  v14 = *(v1 + 88);
  v13 = *(v1 + 96);
  if (v8)
  {
    v25 = *(v1 + 720);
    v26 = *(v1 + 552);
    v15 = swift_slowAlloc();
    v24 = v11;
    v16 = swift_slowAlloc();
    v27 = v16;
    *v15 = 136315138;
    v23 = v9;
    v17 = sub_2278C6D50();
    v19 = v18;
    (*(v13 + 8))(v12, v14);
    v20 = sub_2278021B4(v17, v19, &v27);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_2277F7000, v6, v7, "[%s] Failed to enable first pickup retry", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AA9E860](v16, -1, -1);
    MEMORY[0x22AA9E860](v15, -1, -1);

    v23(v26, v24);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
    v9(v10, v11);
  }

  __swift_project_boxed_opaque_existential_1((*(v1 + 40) + 488), *(*(v1 + 40) + 512));
  v21 = swift_task_alloc();
  *(v1 + 728) = v21;
  *v21 = v1;
  v21[1] = sub_22789983C;

  return sub_227854324();
}

uint64_t sub_22789983C(char a1)
{
  v2 = *(*v1 + 40);
  *(*v1 + 986) = a1;

  return MEMORY[0x2822009F8](sub_227899954, v2, 0);
}

uint64_t sub_227899954(uint64_t a1)
{
  v42 = v1;
  if (*(v1 + 986))
  {
    v2 = *(v1 + 144);
    v3 = *(v1 + 88);
    v4 = *(v1 + 96);
    v5 = *(v1 + 16);
    sub_2278C7370();
    (*(v4 + 16))(v2, v5, v3);
    v6 = sub_2278C7590();
    v33 = sub_2278C7970();
    v7 = os_log_type_enabled(v6, v33);
    v8 = *(v1 + 688);
    v38 = *(v1 + 584);
    v9 = *(v1 + 448);
    v36 = *(v1 + 456);
    v37 = *(v1 + 520);
    v10 = *(v1 + 432);
    v11 = *(v1 + 440);
    v39 = *(v1 + 344);
    v34 = *(v1 + 216);
    v35 = *(v1 + 304);
    v12 = *(v1 + 144);
    v14 = *(v1 + 88);
    v13 = *(v1 + 96);
    if (v7)
    {
      v32 = *(v1 + 448);
      v15 = swift_slowAlloc();
      v31 = v10;
      v16 = swift_slowAlloc();
      v41 = v16;
      *v15 = 136315138;
      v30 = v8;
      v17 = sub_2278C6D50();
      v19 = v18;
      (*(v13 + 8))(v12, v14);
      v20 = sub_2278021B4(v17, v19, &v41);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_2277F7000, v6, v33, "[%s] Waiting for good morning screen dismissal", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x22AA9E860](v16, -1, -1);
      MEMORY[0x22AA9E860](v15, -1, -1);

      v38(v37, v36);
      v30(v35, v34);
      sub_227802FC4(v39, &qword_27D7D60A8, qword_2278C9730);
      (*(v11 + 8))(v32, v31);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
      v38(v37, v36);
      v8(v35, v34);
      sub_227802FC4(v39, &qword_27D7D60A8, qword_2278C9730);
      (*(v11 + 8))(v9, v10);
    }

    v29 = *(v1 + 8);

    return v29();
  }

  else
  {
    v21 = *(v1 + 680);
    v22 = *(v1 + 664);
    v23 = *(v1 + 40);
    v24 = v23[18];
    v25 = v23[19];
    __swift_project_boxed_opaque_existential_1(v23 + 15, v24);
    __swift_project_boxed_opaque_existential_1(v23 + 25, v23[28]);
    v22(v21, &off_283AE99D8);
    v40 = (*(v25 + 8) + **(v25 + 8));
    v26 = swift_task_alloc();
    *(v1 + 736) = v26;
    *v26 = v1;
    v26[1] = sub_227899F9C;
    v27 = *(v1 + 296);

    return v40(v27, v24, v25);
  }
}

uint64_t sub_227899F9C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 688);
  v6 = *(*v2 + 296);
  v7 = *(*v2 + 216);
  *(v4 + 744) = a1;
  *(v4 + 752) = v1;

  v5(v6, v7);
  v8 = *(v3 + 40);
  if (v1)
  {
    v9 = sub_22789F2D4;
  }

  else
  {
    v9 = sub_22789A140;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_22789A140()
{
  v13 = v0[86];
  v1 = v0[85];
  v2 = v0[83];
  v3 = v0[40];
  v4 = v0[26];
  v5 = v0[24];
  v6 = v0[25];
  v7 = v0[5];
  v15 = v7[18];
  v11 = v7[19];
  v12 = v0[27];
  __swift_project_boxed_opaque_existential_1(v7 + 15, v15);
  __swift_project_boxed_opaque_existential_1(v7 + 25, v7[28]);
  v2(v1, &off_283AE99D8);
  sub_2278C6900();
  sub_2278C6780();
  (*(v6 + 8))(v4, v5);
  v13(v3, v12);
  v14 = (*(v11 + 8) + **(v11 + 8));
  v8 = swift_task_alloc();
  v0[95] = v8;
  *v8 = v0;
  v8[1] = sub_22789A31C;
  v9 = v0[36];

  return v14(v9, v15, v11);
}

uint64_t sub_22789A31C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 688);
  v5 = *(*v2 + 288);
  v6 = *(*v2 + 216);
  v3[96] = a1;
  v3[97] = v1;

  v4(v5, v6);
  if (v1)
  {
    v7 = v3[5];

    v8 = sub_22789F620;
    v9 = v7;
  }

  else
  {
    v9 = v3[5];
    v8 = sub_22789A4C8;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t sub_22789A4C8()
{
  v36 = v0;
  if (sub_2278A4E84(v0[2], v0[93], v0[96]))
  {
    v1 = v0[4];
    v2 = sub_2278A5864(v0[93], v0[96]);

    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    v3 = swift_task_alloc();
    v0[98] = v3;
    *v3 = v0;
    v3[1] = sub_22789A828;
    v4 = v0[7];
    v5 = v0[2];

    return sub_22786671C(v4, v5, v2);
  }

  else
  {
    v7 = v0[19];
    v8 = v0[11];
    v9 = v0[12];
    v10 = v0[2];

    sub_2278C7370();
    (*(v9 + 16))(v7, v10, v8);
    v11 = sub_2278C7590();
    v12 = sub_2278C7970();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[73];
    v15 = v0[66];
    v16 = v0[57];
    v17 = v0[19];
    v19 = v0[11];
    v18 = v0[12];
    if (v13)
    {
      v34 = v0[73];
      v20 = swift_slowAlloc();
      v33 = v15;
      v21 = swift_slowAlloc();
      v35 = v21;
      *v20 = 136315138;
      v32 = v16;
      v22 = sub_2278C6D50();
      v24 = v23;
      (*(v18 + 8))(v17, v19);
      v25 = sub_2278021B4(v22, v24, &v35);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_2277F7000, v11, v12, "[%s] should not fired based on workouts for today, skipping for today", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x22AA9E860](v21, -1, -1);
      MEMORY[0x22AA9E860](v20, -1, -1);

      v34(v33, v32);
    }

    else
    {

      (*(v18 + 8))(v17, v19);
      v14(v15, v16);
    }

    v26 = v0[85];
    v27 = v0[83];
    v28 = v0[5];
    __swift_project_boxed_opaque_existential_1(v28 + 30, v28[33]);
    __swift_project_boxed_opaque_existential_1(v28 + 25, v28[28]);
    v27(v26, &off_283AE99D8);
    v29 = swift_task_alloc();
    v0[113] = v29;
    *v29 = v0;
    v29[1] = sub_22789CF8C;
    v30 = v0[33];
    v31 = v0[2];

    return sub_227884164(v30, v31);
  }
}

uint64_t sub_22789A828()
{
  v2 = *v1;
  *(*v1 + 792) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_22789ADFC;
  }

  else
  {
    v4 = sub_22789A954;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22789A954()
{
  v54 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  if (v4 == 1)
  {
    v7 = *(v0 + 160);
    v8 = *(v0 + 16);
    sub_227802FC4(v3, &qword_27D7D6360, &qword_2278CCC70);
    sub_2278C7370();
    (*(v6 + 16))(v7, v8, v5);
    v9 = sub_2278C7590();
    v10 = sub_2278C7950();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 584);
    v13 = *(v0 + 536);
    v14 = *(v0 + 456);
    v15 = *(v0 + 160);
    v17 = *(v0 + 88);
    v16 = *(v0 + 96);
    if (v11)
    {
      v51 = *(v0 + 584);
      v18 = swift_slowAlloc();
      v49 = v13;
      v19 = swift_slowAlloc();
      v53 = v19;
      *v18 = 136315138;
      v47 = v14;
      v20 = sub_2278C6D50();
      v22 = v21;
      (*(v16 + 8))(v15, v17);
      v23 = sub_2278021B4(v20, v22, &v53);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_2277F7000, v9, v10, "[%s] Notification content missing, skipping for today", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x22AA9E860](v19, -1, -1);
      MEMORY[0x22AA9E860](v18, -1, -1);

      v51(v49, v47);
    }

    else
    {

      (*(v16 + 8))(v15, v17);
      v12(v13, v14);
    }

    __swift_project_boxed_opaque_existential_1((*(v0 + 40) + 280), *(*(v0 + 40) + 304));
    v41 = swift_task_alloc();
    *(v0 + 880) = v41;
    *v41 = v0;
    v41[1] = sub_22789C564;

    return sub_22783C6DC();
  }

  else
  {
    v24 = *(v0 + 168);
    v25 = *(v0 + 16);
    (*(v2 + 32))(*(v0 + 80), v3, v1);
    sub_2278C7370();
    (*(v6 + 16))(v24, v25, v5);
    v26 = sub_2278C7590();
    v27 = sub_2278C7970();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 584);
    v30 = *(v0 + 544);
    v31 = *(v0 + 456);
    v32 = *(v0 + 168);
    v34 = *(v0 + 88);
    v33 = *(v0 + 96);
    if (v28)
    {
      v52 = *(v0 + 584);
      v35 = swift_slowAlloc();
      v50 = v30;
      v36 = swift_slowAlloc();
      v53 = v36;
      *v35 = 136315138;
      v48 = v31;
      v37 = sub_2278C6D50();
      v39 = v38;
      (*(v33 + 8))(v32, v34);
      v40 = sub_2278021B4(v37, v39, &v53);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_2277F7000, v26, v27, "[%s] Scheduling notification to fire one minute after next lock", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x22AA9E860](v36, -1, -1);
      MEMORY[0x22AA9E860](v35, -1, -1);

      v52(v50, v48);
    }

    else
    {

      (*(v33 + 8))(v32, v34);
      v29(v30, v31);
    }

    *(v0 + 800) = *__swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
    v43 = swift_task_alloc();
    *(v0 + 808) = v43;
    *v43 = v0;
    v43[1] = sub_22789B148;
    v44 = *(v0 + 80);
    v45 = *(v0 + 48);
    v46 = *(v0 + 984);

    return sub_2278656D4(v45, v44, v46);
  }
}

uint64_t sub_22789ADFC()
{
  v2 = *(v0 + 440);
  v1 = *(v0 + 448);
  v3 = *(v0 + 432);
  v4 = *(v0 + 344);
  (*(v0 + 688))(*(v0 + 304), *(v0 + 216));
  sub_227802FC4(v4, &qword_27D7D60A8, qword_2278C9730);
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22789B148()
{
  *(*v1 + 816) = v0;

  if (v0)
  {
    v2 = sub_22789B418;
  }

  else
  {
    v2 = sub_22789B25C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22789B25C()
{
  __swift_project_boxed_opaque_existential_1((v0[100] + 184), *(v0[100] + 208));
  v1 = swift_task_alloc();
  v0[103] = v1;
  *v1 = v0;
  v1[1] = sub_22789B304;
  v2 = v0[6];

  return sub_22782266C(v2);
}

uint64_t sub_22789B304()
{
  *(*v1 + 832) = v0;

  if (v0)
  {
    v2 = sub_22789B5A8;
  }

  else
  {
    v2 = sub_22789B43C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22789B43C()
{
  v1 = *(v0 + 40);
  sub_227810208(*(v0 + 48));

  return MEMORY[0x2822009F8](sub_22789B4A4, v1, 0);
}

uint64_t sub_22789B4A4()
{
  if (*(v0 + 985))
  {
    __swift_project_boxed_opaque_existential_1((*(v0 + 40) + 280), *(*(v0 + 40) + 304));
    v1 = swift_task_alloc();
    *(v0 + 856) = v1;
    *v1 = v0;
    v1[1] = sub_22789BAFC;

    return sub_22783C6DC();
  }

  else
  {
    *(v0 + 848) = __swift_project_boxed_opaque_existential_1((*(v0 + 40) + 240), *(*(v0 + 40) + 264));
    sub_2278C6930();

    return MEMORY[0x2822009F8](sub_22789B984, 0, 0);
  }
}

uint64_t sub_22789B5A8()
{
  sub_227810208(v0[6]);
  v0[105] = v0[104];
  v1 = v0[5];

  return MEMORY[0x2822009F8](sub_22789B618, v1, 0);
}

uint64_t sub_22789B618()
{
  v1 = v0[86];
  v3 = v0[55];
  v2 = v0[56];
  v4 = v0[54];
  v5 = v0[43];
  v6 = v0[38];
  v7 = v0[27];
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1(v6, v7);
  sub_227802FC4(v5, &qword_27D7D60A8, qword_2278C9730);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_22789B984()
{
  v1 = sub_227882AE0();
  if (v1)
  {
    v2 = v1;
    sub_2278C6840();
    v3 = sub_2278C76F0();

    [v2 setObject:v3 forKey:*MEMORY[0x277D09BF8]];
  }

  v4 = v0[5];
  (*(v0[45] + 8))(v0[46], v0[44]);

  return MEMORY[0x2822009F8](sub_22789BA5C, v4, 0);
}

uint64_t sub_22789BA5C()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 40) + 280), *(*(v0 + 40) + 304));
  v1 = swift_task_alloc();
  *(v0 + 856) = v1;
  *v1 = v0;
  v1[1] = sub_22789BAFC;

  return sub_22783C6DC();
}

uint64_t sub_22789BAFC()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_22789BC0C, v1, 0);
}

uint64_t sub_22789BC0C()
{
  v1 = v0[85];
  v2 = v0[83];
  v3 = v0[5];
  __swift_project_boxed_opaque_existential_1(v3 + 30, v3[33]);
  __swift_project_boxed_opaque_existential_1(v3 + 25, v3[28]);
  v2(v1, &off_283AE99D8);
  v4 = swift_task_alloc();
  v0[108] = v4;
  *v4 = v0;
  v4[1] = sub_22789BD00;
  v5 = v0[35];
  v6 = v0[2];

  return sub_227884164(v5, v6);
}

uint64_t sub_22789BD00()
{
  v2 = *v1;
  v3 = *(*v1 + 688);
  v4 = *(*v1 + 280);
  v5 = *(*v1 + 216);
  *(*v1 + 872) = v0;

  v3(v4, v5);
  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = sub_22789C1F8;
  }

  else
  {
    v7 = sub_22789BE98;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22789BE98()
{
  v1 = v0[86];
  v3 = v0[55];
  v2 = v0[56];
  v4 = v0[54];
  v5 = v0[43];
  v6 = v0[38];
  v7 = v0[27];
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1(v6, v7);
  sub_227802FC4(v5, &qword_27D7D60A8, qword_2278C9730);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_22789C1F8()
{
  v1 = v0[86];
  v3 = v0[55];
  v2 = v0[56];
  v4 = v0[54];
  v5 = v0[43];
  v6 = v0[38];
  v7 = v0[27];
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1(v6, v7);
  sub_227802FC4(v5, &qword_27D7D60A8, qword_2278C9730);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_22789C564()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_22789C674, v1, 0);
}

uint64_t sub_22789C674()
{
  v1 = v0[85];
  v2 = v0[83];
  v3 = v0[5];
  __swift_project_boxed_opaque_existential_1(v3 + 30, v3[33]);
  __swift_project_boxed_opaque_existential_1(v3 + 25, v3[28]);
  v2(v1, &off_283AE99D8);
  v4 = swift_task_alloc();
  v0[111] = v4;
  *v4 = v0;
  v4[1] = sub_22789C768;
  v5 = v0[34];
  v6 = v0[2];

  return sub_227884164(v5, v6);
}

uint64_t sub_22789C768()
{
  v2 = *v1;
  v3 = *(*v1 + 688);
  v4 = *(*v1 + 272);
  v5 = *(*v1 + 216);
  *(*v1 + 896) = v0;

  v3(v4, v5);
  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = sub_22789CC40;
  }

  else
  {
    v7 = sub_22789C900;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22789C900()
{
  v2 = *(v0 + 440);
  v1 = *(v0 + 448);
  v3 = *(v0 + 432);
  v4 = *(v0 + 344);
  (*(v0 + 688))(*(v0 + 304), *(v0 + 216));
  sub_227802FC4(v4, &qword_27D7D60A8, qword_2278C9730);
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22789CC40()
{
  v2 = *(v0 + 440);
  v1 = *(v0 + 448);
  v3 = *(v0 + 432);
  v4 = *(v0 + 344);
  (*(v0 + 688))(*(v0 + 304), *(v0 + 216));
  sub_227802FC4(v4, &qword_27D7D60A8, qword_2278C9730);
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22789CF8C()
{
  v2 = *v1;
  v3 = *(*v1 + 688);
  v4 = *(*v1 + 264);
  v5 = *(*v1 + 216);
  *(*v1 + 912) = v0;

  v3(v4, v5);
  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = sub_22789D124;
  }

  else
  {
    v7 = sub_2278A65B4;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22789D124()
{
  v2 = *(v0 + 440);
  v1 = *(v0 + 448);
  v3 = *(v0 + 432);
  v4 = *(v0 + 344);
  (*(v0 + 688))(*(v0 + 304), *(v0 + 216));
  sub_227802FC4(v4, &qword_27D7D60A8, qword_2278C9730);
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22789D470()
{
  v2 = *v1;
  v3 = *(*v1 + 688);
  v4 = *(*v1 + 256);
  v5 = *(*v1 + 216);
  *(*v1 + 928) = v0;

  v3(v4, v5);
  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = sub_22789D608;
  }

  else
  {
    v7 = sub_2278A65B4;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22789D608()
{
  v2 = *(v0 + 440);
  v1 = *(v0 + 448);
  v3 = *(v0 + 432);
  v4 = *(v0 + 344);
  (*(v0 + 688))(*(v0 + 304), *(v0 + 216));
  sub_227802FC4(v4, &qword_27D7D60A8, qword_2278C9730);
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22789D954(uint64_t a1)
{
  v32 = v1;
  v2 = v1[16];
  v3 = v1[11];
  v4 = v1[12];
  v5 = v1[2];
  sub_2278C7370();
  (*(v4 + 16))(v2, v5, v3);
  v6 = sub_2278C7590();
  v7 = sub_2278C7970();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[73];
  v10 = v1[63];
  v11 = v1[57];
  v12 = v1[16];
  v14 = v1[11];
  v13 = v1[12];
  if (v8)
  {
    v30 = v1[73];
    v15 = swift_slowAlloc();
    v29 = v10;
    v16 = swift_slowAlloc();
    v31 = v16;
    *v15 = 136315138;
    v28 = v11;
    v17 = sub_2278C6D50();
    v19 = v18;
    (*(v13 + 8))(v12, v14);
    v20 = sub_2278021B4(v17, v19, &v31);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_2277F7000, v6, v7, "[%s] Fitness+ Plan notifications are disabled in settings", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AA9E860](v16, -1, -1);
    MEMORY[0x22AA9E860](v15, -1, -1);

    v30(v29, v28);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
    v9(v10, v11);
  }

  v21 = v1[85];
  v22 = v1[83];
  v23 = v1[5];
  __swift_project_boxed_opaque_existential_1(v23 + 30, v23[33]);
  __swift_project_boxed_opaque_existential_1(v23 + 25, v23[28]);
  v22(v21, &off_283AE99D8);
  v24 = swift_task_alloc();
  v1[117] = v24;
  *v24 = v1;
  v24[1] = sub_22789DBCC;
  v25 = v1[31];
  v26 = v1[2];

  return sub_227884164(v25, v26);
}

uint64_t sub_22789DBCC()
{
  v2 = *v1;
  v3 = *(*v1 + 688);
  v4 = *(*v1 + 248);
  v5 = *(*v1 + 216);
  *(*v1 + 944) = v0;

  v3(v4, v5);
  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = sub_22789DD64;
  }

  else
  {
    v7 = sub_2278A65B4;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22789DD64()
{
  v2 = *(v0 + 440);
  v1 = *(v0 + 448);
  v3 = *(v0 + 432);
  v4 = *(v0 + 344);
  (*(v0 + 688))(*(v0 + 304), *(v0 + 216));
  sub_227802FC4(v4, &qword_27D7D60A8, qword_2278C9730);
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22789E0B0()
{
  v2 = *v1;
  v3 = *(*v1 + 688);
  v4 = *(*v1 + 240);
  v5 = *(*v1 + 216);
  *(*v1 + 960) = v0;

  v3(v4, v5);
  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = sub_22789E248;
  }

  else
  {
    v7 = sub_2278A65B4;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22789E248()
{
  v2 = *(v0 + 440);
  v1 = *(v0 + 448);
  v3 = *(v0 + 432);
  v4 = *(v0 + 344);
  (*(v0 + 688))(*(v0 + 304), *(v0 + 216));
  sub_227802FC4(v4, &qword_27D7D60A8, qword_2278C9730);
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22789E594()
{
  v2 = *(*v1 + 232);
  v3 = *(*v1 + 224);
  v4 = *(*v1 + 216);
  v5 = *v1;
  v5[122] = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v6 = v5[5];

    return MEMORY[0x2822009F8](sub_22789E9C8, v6, 0);
  }

  else
  {

    v7 = v5[1];

    return v7();
  }
}

uint64_t sub_22789E9C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22789ECC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22789EFC0()
{
  (*(v0[55] + 8))(v0[56], v0[54]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22789F2D4()
{
  v2 = *(v0 + 440);
  v1 = *(v0 + 448);
  v3 = *(v0 + 432);
  v4 = *(v0 + 344);
  (*(v0 + 688))(*(v0 + 304), *(v0 + 216));
  sub_227802FC4(v4, &qword_27D7D60A8, qword_2278C9730);
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22789F620()
{
  v2 = *(v0 + 440);
  v1 = *(v0 + 448);
  v3 = *(v0 + 432);
  v4 = *(v0 + 344);
  (*(v0 + 688))(*(v0 + 304), *(v0 + 216));
  sub_227802FC4(v4, &qword_27D7D60A8, qword_2278C9730);
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22789F96C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a2;
  v22 = a3;
  v4 = sub_2278C6920();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2278C6820();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2278C6D60();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a1, v12);
  v16 = (*(v13 + 88))(v15, v12);
  if (v16 == *MEMORY[0x277D09868] || v16 == *MEMORY[0x277D09860])
  {
    sub_2278C6900();
    sub_2278C66D0();
    (*(v5 + 8))(v7, v4);
    sub_2278C67C0();
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v20 + 200), *(v20 + 224));
    v18 = off_283AE99E0;
    type metadata accessor for DateProvider(0);
    v18(v22);
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_22789FC80()
{
  v1[13] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6570, &qword_2278C9AE0);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v2 = type metadata accessor for NotificationRequest(0);
  v1[16] = v2;
  v3 = *(v2 - 8);
  v1[17] = v3;
  v1[18] = *(v3 + 64);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22789FDB0, v0, 0);
}

uint64_t sub_22789FDB0()
{
  v1 = __swift_project_boxed_opaque_existential_1((*(v0 + 104) + 328), *(*(v0 + 104) + 352));
  v2 = *v1;
  *(v0 + 184) = *v1;

  return MEMORY[0x2822009F8](sub_22789FE24, v2, 0);
}

uint64_t sub_22789FE24()
{
  v1 = __swift_project_boxed_opaque_existential_1((*(v0 + 184) + 192), *(*(v0 + 184) + 216));
  v2 = *v1;
  *(v0 + 192) = *v1;

  return MEMORY[0x2822009F8](sub_22789FE98, v2, 0);
}

uint64_t sub_22789FE98()
{
  v11 = v0;
  v1 = v0[24];
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = v2[2];
  if (v3)
  {
    v4 = v0[17];
    v5 = sub_2278A31B4(v2[2], 0);
    v6 = sub_2278A45A4(&v10, v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3, v2);
    v7 = v10;

    sub_227806704(v7);
    if (v6 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = MEMORY[0x277D84F90];
LABEL_5:
  v0[25] = v5;
  v8 = v0[13];

  return MEMORY[0x2822009F8](sub_22789FFB8, v8, 0);
}

void sub_22789FFB8()
{
  v1 = v0[25];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[17];
    v43 = v0[16];
    v5 = MEMORY[0x277D84F90];
    v41 = v0[25];
    while (v3 < *(v1 + 16))
    {
      v6 = v5;
      v7 = v0[22];
      v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v9 = *(v4 + 72);
      sub_2278101A4(v0[25] + v8 + v9 * v3, v7);
      v10 = (v7 + *(v43 + 36));
      v12 = *v10;
      v11 = v10[1];
      v0[9] = v12;
      v0[10] = v11;
      v0[11] = 0xD000000000000029;
      v0[12] = 0x80000002278D23C0;
      sub_22781F6EC();
      v13 = sub_2278C7AC0();
      v14 = v0[22];
      if (v13)
      {
        sub_227810264(v14, v0[20]);
        v5 = v6;
        v45 = v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2278B4840(0, *(v6 + 16) + 1, 1);
          v5 = v6;
        }

        v16 = *(v5 + 16);
        v15 = *(v5 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_2278B4840((v15 > 1), v16 + 1, 1);
          v5 = v45;
        }

        v17 = v0[20];
        *(v5 + 16) = v16 + 1;
        sub_227810264(v17, v5 + v8 + v16 * v9);
        v1 = v41;
      }

      else
      {
        sub_227810208(v14);
        v5 = v6;
      }

      if (v2 == ++v3)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
LABEL_14:

    v18 = *(v5 + 16);
    if (v18)
    {
      v19 = v0[17];
      v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v21 = v5 + v20;
      v40 = v20;
      v38 = (v0[18] + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
      v39 = *(v19 + 72);
      do
      {
        v42 = v21;
        v44 = v18;
        v23 = v0[21];
        v24 = v0[19];
        v25 = v0[14];
        v26 = v0[15];
        sub_2278101A4(v21, v23);
        v27 = sub_2278C7840();
        v28 = *(v27 - 8);
        (*(v28 + 56))(v26, 1, 1, v27);
        v29 = swift_allocObject();
        swift_weakInit();
        sub_2278101A4(v23, v24);
        v30 = swift_allocObject();
        *(v30 + 16) = 0;
        *(v30 + 24) = 0;
        sub_227810264(v24, v30 + v40);
        *(v30 + v38) = v29;
        sub_227850448(v26, v25, &unk_27D7D6570, &qword_2278C9AE0);
        LODWORD(v26) = (*(v28 + 48))(v25, 1, v27);

        v31 = v0[14];
        if (v26 == 1)
        {
          sub_227802FC4(v0[14], &unk_27D7D6570, &qword_2278C9AE0);
        }

        else
        {
          sub_2278C7830();
          (*(v28 + 8))(v31, v27);
        }

        v32 = *(v30 + 16);
        swift_unknownObjectRetain();

        if (v32)
        {
          swift_getObjectType();
          v33 = sub_2278C77F0();
          v35 = v34;
          swift_unknownObjectRelease();
        }

        else
        {
          v33 = 0;
          v35 = 0;
        }

        sub_227802FC4(v0[15], &unk_27D7D6570, &qword_2278C9AE0);
        v36 = swift_allocObject();
        *(v36 + 16) = &unk_2278CE248;
        *(v36 + 24) = v30;
        if (v35 | v33)
        {
          v0[2] = 0;
          v0[3] = 0;
          v0[4] = v33;
          v0[5] = v35;
        }

        v22 = v0[21];
        swift_task_create();

        sub_227810208(v22);
        v21 = v42 + v39;
        v18 = v44 - 1;
      }

      while (v44 != 1);
    }

    v37 = v0[1];

    v37();
  }
}

uint64_t sub_2278A04B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60D0, &unk_2278C9AC0);
  v5[15] = swift_task_alloc();
  v6 = type metadata accessor for NotificationRequest(0);
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  v7 = sub_2278C75A0();
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278A0604, 0, 0);
}

uint64_t sub_2278A0604(uint64_t a1)
{
  v25 = v1;
  v2 = v1[18];
  v3 = v1[13];
  sub_2278C7370();
  sub_2278101A4(v3, v2);
  v4 = sub_2278C7590();
  v5 = sub_2278C7970();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[20];
  v8 = v1[21];
  v10 = v1[18];
  v9 = v1[19];
  if (v6)
  {
    v11 = v1[16];
    v23 = v1[21];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315138;
    v14 = (v10 + *(v11 + 36));
    v15 = *v14;
    v16 = v14[1];

    sub_227810208(v10);
    v17 = sub_2278021B4(v15, v16, &v24);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_2277F7000, v4, v5, "Suppressing pending notifcation: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AA9E860](v13, -1, -1);
    MEMORY[0x22AA9E860](v12, -1, -1);

    (*(v7 + 8))(v23, v9);
  }

  else
  {

    sub_227810208(v10);
    (*(v7 + 8))(v8, v9);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_2278040AC(Strong + 328, (v1 + 2));

    v19 = __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    v20 = *v19;
    v1[22] = *v19;

    return MEMORY[0x2822009F8](sub_22787E250, v20, 0);
  }

  else
  {

    v21 = v1[1];

    return v21();
  }
}

uint64_t sub_2278A086C()
{
  v1[14] = v0;
  v2 = sub_2278C75A0();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278A0938, v0, 0);
}

uint64_t sub_2278A0938(uint64_t a1)
{
  v2 = v1[14];
  if (*(v2 + 616) || (sub_2278C7440(), v3 = sub_2278C7450(), v3 != sub_2278C7450()))
  {

    v24 = v1[1];

    return v24();
  }

  else
  {
    v4 = v1[18];
    v5 = v1[15];
    v6 = v1[16];
    v7 = v1[14];
    sub_2278C7370();
    sub_2278C7580();
    v8 = *(v6 + 8);
    v1[19] = v8;
    v1[20] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v4, v5);
    v9 = *(v7 + 320);
    if (qword_2813BB688 != -1)
    {
      swift_once();
    }

    v10 = v1[14];
    v11 = qword_2813BC3C0;
    v12 = objc_opt_self();
    v13 = [v12 mainQueue];
    v1[6] = sub_2278A62B4;
    v1[7] = v10;
    v1[2] = MEMORY[0x277D85DD0];
    v1[3] = 1107296256;
    v1[4] = sub_227872968;
    v1[5] = &block_descriptor_23;
    v14 = _Block_copy(v1 + 2);

    v15 = [v9 addObserverForName:v11 object:0 queue:v13 usingBlock:v14];
    v1[21] = v15;
    _Block_release(v14);

    if (qword_2813BB020 != -1)
    {
      swift_once();
    }

    v16 = v1[14];
    v17 = qword_2813BC398;
    v18 = [v12 mainQueue];
    v1[12] = sub_2278A62D4;
    v1[13] = v16;
    v1[8] = MEMORY[0x277D85DD0];
    v1[9] = 1107296256;
    v1[10] = sub_227872968;
    v1[11] = &block_descriptor_96;
    v19 = _Block_copy(v1 + 8);

    v20 = [v9 addObserverForName:v17 object:0 queue:v18 usingBlock:v19];
    v1[22] = v20;
    _Block_release(v19);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D63E0, &unk_2278CC430);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_2278C9970;
    *(v21 + 32) = v15;
    *(v21 + 40) = v20;
    *(v2 + 616) = v21;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    v22 = swift_task_alloc();
    v1[23] = v22;
    *v22 = v1;
    v22[1] = sub_2278A0D38;

    return sub_22788B7C8();
  }
}

uint64_t sub_2278A0D38()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_2278A0E64;
  }

  else
  {
    v4 = sub_22787EA24;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2278A0E64(uint64_t a1)
{
  v2 = *(v1 + 192);
  sub_2278C7370();
  v3 = v2;
  v4 = sub_2278C7590();
  v5 = sub_2278C7950();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v1 + 192);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2277F7000, v4, v5, "Error scheduling tasks: %@", v8, 0xCu);
    sub_227802FC4(v9, &qword_27D7D64B0, &qword_2278CA010);
    MEMORY[0x22AA9E860](v9, -1, -1);
    MEMORY[0x22AA9E860](v8, -1, -1);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  (*(v1 + 152))(*(v1 + 136), *(v1 + 120));

  v12 = *(v1 + 8);

  return v12();
}

uint64_t sub_2278A1018(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6570, &qword_2278C9AE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - v4;
  v6 = sub_2278C75A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2278C7370();
  v10 = sub_2278C7590();
  v11 = sub_2278C7970();
  if (os_log_type_enabled(v10, v11))
  {
    v21 = a2;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    if (qword_2813BB688 != -1)
    {
      swift_once();
    }

    v14 = sub_2278C7700();
    v16 = sub_2278021B4(v14, v15, &v22);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_2277F7000, v10, v11, "Handle %s notification", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AA9E860](v13, -1, -1);
    MEMORY[0x22AA9E860](v12, -1, -1);

    (*(v7 + 8))(v9, v6);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v17 = sub_2278C7840();
  (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v18;
  sub_22788B134(0, 0, v5, &unk_2278CE2D8, v19);
}

uint64_t sub_2278A1310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_2278C75A0();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278A13D0, 0, 0);
}

uint64_t sub_2278A13D0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_2278A14C0;

    return sub_22788B7C8();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_2278A14C0()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2278A1604, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2278A1604()
{
  v1 = v0[11];

  sub_2278C7370();
  v2 = v1;
  v3 = sub_2278C7590();
  v4 = sub_2278C7950();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[11];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2277F7000, v3, v4, "Error handling a user day update: %@", v7, 0xCu);
    sub_227802FC4(v8, &qword_27D7D64B0, &qword_2278CA010);
    MEMORY[0x22AA9E860](v8, -1, -1);
    MEMORY[0x22AA9E860](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[7] + 8))(v0[8], v0[6]);

  v11 = v0[1];

  return v11();
}

double sub_2278A1790(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6570, &qword_2278C9AE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v43[-v3];
  v5 = sub_2278C75A0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v43[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v43[-v10];
  v12 = sub_2278C6560();
  if (!v12)
  {
    goto LABEL_18;
  }

  v13 = v12;
  strcpy(v46, "XPCStreamName");
  v46[7] = -4864;
  sub_2278C7BF0();
  if (!*(v13 + 16) || (v14 = sub_2278AE394(&v47), (v15 & 1) == 0))
  {

    sub_227815D88(&v47);
LABEL_18:
    v49 = 0u;
    v50 = 0u;
    goto LABEL_19;
  }

  sub_227802850(*(v13 + 56) + 32 * v14, &v49);
  sub_227815D88(&v47);

  if (!*(&v50 + 1))
  {
LABEL_19:
    sub_227802FC4(&v49, &qword_27D7D60A0, qword_2278C98D0);
    return result;
  }

  if (swift_dynamicCast())
  {
    v18 = v47;
    v17 = v48;
    v45 = 0x80000002278D2E20;
    v19 = v47 == 0xD000000000000032 && 0x80000002278D2E20 == v48;
    v20 = v19;
    v44 = v20;
    if (!v19 && (sub_2278C7DC0() & 1) == 0)
    {
      if (v18 == sub_2278C69C0() && v17 == v21)
      {
      }

      else
      {
        v22 = sub_2278C7DC0();

        if ((v22 & 1) == 0)
        {

          return result;
        }
      }
    }

    if (v18 == sub_2278C69C0() && v17 == v23)
    {

LABEL_26:

      sub_2278C7370();
      v25 = sub_2278C7590();
      v26 = sub_2278C7970();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v47 = v45;
        *v27 = 136315138;
        v28 = sub_2278C69C0();
        v30 = sub_2278021B4(v28, v29, &v47);

        *(v27 + 4) = v30;
        _os_log_impl(&dword_2277F7000, v25, v26, "Handle %s notification", v27, 0xCu);
        v31 = v45;
        __swift_destroy_boxed_opaque_existential_0(v45);
        MEMORY[0x22AA9E860](v31, -1, -1);
        MEMORY[0x22AA9E860](v27, -1, -1);
      }

      (*(v6 + 8))(v11, v5);
      v32 = sub_2278C7840();
      (*(*(v32 - 8) + 56))(v4, 1, 1, v32);
      v33 = swift_allocObject();
      swift_weakInit();
      v34 = swift_allocObject();
      v34[2] = 0;
      v34[3] = 0;
      v34[4] = v33;
      v35 = &unk_2278CE2C8;
LABEL_29:
      sub_22788B134(0, 0, v4, v35, v34);

      return result;
    }

    v24 = sub_2278C7DC0();

    if (v24)
    {
      goto LABEL_26;
    }

    if (v44)
    {

LABEL_33:
      sub_2278C7370();
      v37 = sub_2278C7590();
      v38 = sub_2278C7970();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v47 = v40;
        *v39 = 136315138;
        *(v39 + 4) = sub_2278021B4(0xD000000000000032, v45, &v47);
        _os_log_impl(&dword_2277F7000, v37, v38, "Handle %s notification", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x22AA9E860](v40, -1, -1);
        MEMORY[0x22AA9E860](v39, -1, -1);
      }

      (*(v6 + 8))(v9, v5);
      v41 = sub_2278C7840();
      (*(*(v41 - 8) + 56))(v4, 1, 1, v41);
      v42 = swift_allocObject();
      swift_weakInit();
      v34 = swift_allocObject();
      v34[2] = 0;
      v34[3] = 0;
      v34[4] = v42;
      v35 = &unk_2278CE2B8;
      goto LABEL_29;
    }

    v36 = sub_2278C7DC0();

    if (v36)
    {
      goto LABEL_33;
    }
  }

  return result;
}

uint64_t sub_2278A1DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a4;
  v5 = sub_2278C75A0();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278A1EB0, 0, 0);
}

uint64_t sub_2278A1EB0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[21] = v2;
    *v2 = v0;
    v2[1] = sub_2278A2094;

    return sub_22789FC80();
  }

  else
  {
    v0[23] = 0;
    swift_beginAccess();
    v4 = swift_weakLoadStrong();
    v0[24] = v4;
    if (v4)
    {

      return MEMORY[0x2822009F8](sub_2278A2308, v4, 0);
    }

    else
    {
      swift_beginAccess();
      v5 = swift_weakLoadStrong();
      v0[28] = v5;
      if (v5)
      {
        v6 = swift_task_alloc();
        v0[29] = v6;
        *v6 = v0;
        v6[1] = sub_2278A289C;

        return sub_22788B7C8();
      }

      else
      {

        v7 = v0[1];

        return v7();
      }
    }
  }
}

uint64_t sub_2278A2094()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_2278A29E0;
  }

  else
  {

    v2 = sub_2278A21B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2278A21B0()
{
  v0[23] = v0[22];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[24] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_2278A2308, Strong, 0);
  }

  else
  {
    swift_beginAccess();
    v2 = swift_weakLoadStrong();
    v0[28] = v2;
    if (v2)
    {
      v3 = swift_task_alloc();
      v0[29] = v3;
      *v3 = v0;
      v3[1] = sub_2278A289C;

      return sub_22788B7C8();
    }

    else
    {

      v4 = v0[1];

      return v4();
    }
  }
}

uint64_t sub_2278A2308()
{
  v1 = v0[23];
  __swift_project_boxed_opaque_existential_1((v0[24] + 448), *(v0[24] + 472));
  sub_227823470(v0 + 2);
  if (v1)
  {

    v0[27] = v1;

    return MEMORY[0x2822009F8](sub_2278A2718, 0, 0);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[25] = v2;
    *v2 = v0;
    v2[1] = sub_2278A2414;

    return sub_227866DE4();
  }
}

uint64_t sub_2278A2414()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 192);
  if (v0)
  {
    v4 = sub_2278A26A0;
  }

  else
  {
    v4 = sub_2278A2540;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2278A2540()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2822009F8](sub_2278A25B0, 0, 0);
}

uint64_t sub_2278A25B0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[28] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[29] = v2;
    *v2 = v0;
    v2[1] = sub_2278A289C;

    return sub_22788B7C8();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_2278A26A0()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v0[27] = v0[26];

  return MEMORY[0x2822009F8](sub_2278A2718, 0, 0);
}

uint64_t sub_2278A2718(uint64_t a1)
{
  v2 = v1[27];
  sub_2278C7370();
  v3 = v2;
  v4 = sub_2278C7590();
  v5 = sub_2278C7950();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2277F7000, v4, v5, "Error handling a F+ plan update: %@", v6, 0xCu);
    sub_227802FC4(v7, &qword_27D7D64B0, &qword_2278CA010);
    MEMORY[0x22AA9E860](v7, -1, -1);
    MEMORY[0x22AA9E860](v6, -1, -1);
  }

  else
  {
  }

  (*(v1[18] + 8))(v1[19], v1[17]);

  v10 = v1[1];

  return v10();
}

uint64_t sub_2278A289C()
{
  v2 = *v1;
  *(v2 + 240) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2278A2B6C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2278A29E0()
{

  v1 = v0[22];
  sub_2278C7370();
  v2 = v1;
  v3 = sub_2278C7590();
  v4 = sub_2278C7950();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_2277F7000, v3, v4, "Error handling a F+ plan update: %@", v5, 0xCu);
    sub_227802FC4(v6, &qword_27D7D64B0, &qword_2278CA010);
    MEMORY[0x22AA9E860](v6, -1, -1);
    MEMORY[0x22AA9E860](v5, -1, -1);
  }

  else
  {
  }

  (*(v0[18] + 8))(v0[19], v0[17]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2278A2B6C()
{

  v1 = v0[30];
  sub_2278C7370();
  v2 = v1;
  v3 = sub_2278C7590();
  v4 = sub_2278C7950();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_2277F7000, v3, v4, "Error handling a F+ plan update: %@", v5, 0xCu);
    sub_227802FC4(v6, &qword_27D7D64B0, &qword_2278CA010);
    MEMORY[0x22AA9E860](v6, -1, -1);
    MEMORY[0x22AA9E860](v5, -1, -1);
  }

  else
  {
  }

  (*(v0[18] + 8))(v0[19], v0[17]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2278A2CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_2278C75A0();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278A2DB8, 0, 0);
}

uint64_t sub_2278A2DB8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_2278A2EA8;

    return sub_22788B7C8();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_2278A2EA8()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2278A2FEC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2278A2FEC()
{
  v1 = v0[11];

  sub_2278C7370();
  v2 = v1;
  v3 = sub_2278C7590();
  v4 = sub_2278C7950();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[11];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2277F7000, v3, v4, "Error handling a defaults update: %@", v7, 0xCu);
    sub_227802FC4(v8, &qword_27D7D64B0, &qword_2278CA010);
    MEMORY[0x22AA9E860](v8, -1, -1);
    MEMORY[0x22AA9E860](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[7] + 8))(v0[8], v0[6]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2278A317C(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void *sub_2278A31B4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D65B0, &qword_2278CE250);
  v4 = *(type metadata accessor for NotificationRequest(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2278A32B0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D63E0, &unk_2278CC430);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
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

void sub_2278A3338(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

void sub_2278A33D4(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_2278A340C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_2278AE31C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2278AF434();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for NotificationRequest(0);
    v19 = *(v12 - 8);
    sub_227810264(v11 + *(v19 + 72) * v8, a3);
    sub_2278A3564(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for NotificationRequest(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

void sub_2278A3564(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2278C7B10() + 1) & ~v5;
    while (1)
    {
      sub_2278C7E60();

      sub_2278C7730();
      v9 = sub_2278C7E90();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for NotificationRequest(0) - 8) + 72);
      v16 = v15 * v3;
      v17 = v14 + v15 * v3;
      v18 = v15 * v6;
      v19 = v14 + v15 * v6 + v15;
      if (v16 < v18 || v17 >= v19)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v18)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t sub_2278A3774(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_2278C7B90();

    if (v17)
    {

      sub_227839268(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_2278C7B80();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_2278A39E8(v15, result + 1, a5, a6, a3, a4);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_2278A3BFC(v28 + 1, a5, a6);
        }

        v29 = v16;
        sub_2278A3E20(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_227839268(0, a3, a4);
    v19 = sub_2278C7A80();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_2278C7A90();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_2278A3EA4(v26, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_2278A39E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_2278C7C20();
    v23 = v10;
    sub_2278C7B40();
    if (sub_2278C7BB0())
    {
      sub_227839268(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_2278A3BFC(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = sub_2278C7A80();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_2278C7BB0());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_2278A3BFC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_2278C7C10();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = sub_2278C7A80();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

unint64_t sub_2278A3E20(uint64_t a1, uint64_t a2)
{
  sub_2278C7A80();
  result = sub_2278C7B20();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_2278A3EA4(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_2278A3BFC(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_2278A4034(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_2278A4174(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = sub_2278C7A80();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_227839268(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_2278C7A90();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2278C7DF0();
  __break(1u);
}

id sub_2278A4034(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2278C7C00();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_2278A4174(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_2278C7C10();
  v7 = result;
  if (*(v5 + 16))
  {
    v26 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = sub_2278C7A80();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v26;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }

  return result;
}

uint64_t sub_2278A4380(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_2278A4474;

  return v5(v2 + 32);
}

uint64_t sub_2278A4474()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2278A45A4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for NotificationRequest(0);
  v32 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v29 - v13;
  v15 = a4 + 8;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & a4[8];
  if (!a2)
  {
LABEL_18:
    v19 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v15;
    a1[2] = ~v16;
    a1[3] = v19;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v19 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = a1;
    v31 = a3;
    result = 0;
    v19 = 0;
    v29 = v16;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      a1 = a4;
      v25 = a4[7];
      v26 = *(v32 + 72);
      sub_2278101A4(v25 + v26 * (v24 | (v19 << 6)), v11);
      sub_227810264(v11, v14);
      sub_227810264(v14, a2);
      if (v21 == v31)
      {
        a4 = a1;
        a1 = v30;
        a3 = v31;
        goto LABEL_23;
      }

      a2 += v26;
      result = v21;
      v27 = __OFADD__(v21++, 1);
      a4 = a1;
      if (v27)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = v15[v23];
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v28 = v19 + 1;
    }

    else
    {
      v28 = v20;
    }

    v19 = v28 - 1;
    a3 = result;
    a1 = v30;
LABEL_23:
    v16 = v29;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_2278A47CC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t *sub_2278A493C(uint64_t *result, uint64_t **a2, void *a3, uint64_t a4, unint64_t *a5, void *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  sub_2278C7B40();
  sub_227839268(0, a5, a6);
  sub_2278A6264(a7, a5, a6);
  result = sub_2278C7900();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!sub_2278C7BB0())
      {
        goto LABEL_30;
      }

      sub_227839268(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = v26 - 1;
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

uint64_t sub_2278A4B6C(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2278C7B80())
  {
    v4 = sub_227839268(0, &qword_2813B9AA0, 0x277CE90F8);
    v5 = sub_2278A6264(&qword_2813B9A98, &qword_2813B9AA0, 0x277CE90F8);
    result = MEMORY[0x22AA9D850](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x277CE90F8uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x22AA9DBF0](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_2278A3774(&v12, v10, &qword_2813B9AA0, 0x277CE90F8, &qword_27D7D65D8, &qword_2278CE298);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_2278C7B80();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2278A4CF8(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2278C7B80())
  {
    v4 = sub_227839268(0, &qword_2813B9AE8, 0x277CE1F98);
    v5 = sub_2278A6264(&qword_2813B9AE0, &qword_2813B9AE8, 0x277CE1F98);
    result = MEMORY[0x22AA9D850](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x277CE1F98uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x22AA9DBF0](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_2278A3774(&v12, v10, &qword_2813B9AE8, 0x277CE1F98, &qword_27D7D65A8, &unk_2278CE228);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_2278C7B80();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2278A4E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v100 = a3;
  v104 = a1;
  v4 = sub_2278C75A0();
  v5 = *(v4 - 8);
  v102 = v4;
  v103 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v101 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v98 = &v91 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v97 = &v91 - v11;
  MEMORY[0x28223BE20](v10);
  v99 = &v91 - v12;
  v13 = sub_2278C6A20();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v91 - v18;
  v20 = sub_2278C6D60();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v26 = MEMORY[0x28223BE20](v25);
  v27 = MEMORY[0x28223BE20](v26);
  MEMORY[0x28223BE20](v27);
  v32 = &v91 - v28;
  v33 = *(a2 + 16);
  if (!v33)
  {
    v55 = v101;
    sub_2278C7370();
    v21[2](v24, v104, v20);
    v56 = sub_2278C7590();
    v57 = sub_2278C7970();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v105[0] = v59;
      *v58 = 136315138;
      v60 = sub_2278C6D50();
      v62 = v61;
      (v21[1])(v24, v20);
      v63 = sub_2278021B4(v60, v62, v105);

      *(v58 + 4) = v63;
      _os_log_impl(&dword_2277F7000, v56, v57, "[%s] No F+ plan workouts scheduled for today, skipping for today", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x22AA9E860](v59, -1, -1);
      MEMORY[0x22AA9E860](v58, -1, -1);
    }

    else
    {

      (v21[1])(v24, v20);
    }

    v84 = *(v103 + 8);
    v85 = v55;
    goto LABEL_31;
  }

  v92 = v29;
  v93 = v31;
  v91 = v30;
  v94 = v21[2];
  v95 = (v21 + 2);
  v94(&v91 - v28, v104, v20);
  v101 = v21;
  v34 = v21[11];
  v96 = v20;
  v35 = (v34)(v32, v20);
  if (v35 == *MEMORY[0x277D09868])
  {
    v38 = *(v14 + 16);
    v36 = v14 + 16;
    v37 = v38;
    v39 = a2 + ((*(v36 + 64) + 32) & ~*(v36 + 64));
    v40 = *(v36 + 56);
    v41 = v33 + 1;
    while (--v41)
    {
      v42 = v39 + v40;
      v37(v19);
      v43 = sub_2278C6A10();
      (*(v36 - 8))(v19, v13);
      v39 = v42;
      if (v43)
      {
        v44 = v99;
        sub_2278C7370();
        v45 = v93;
        v46 = v96;
        v94(v93, v104, v96);
        v47 = sub_2278C7590();
        v48 = sub_2278C7970();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v105[0] = v50;
          *v49 = 136315138;
          v51 = sub_2278C6D50();
          v53 = v52;
          (*(v101 + 1))(v45, v46);
          v54 = sub_2278021B4(v51, v53, v105);

          *(v49 + 4) = v54;
          _os_log_impl(&dword_2277F7000, v47, v48, "[%s] Some workouts scheduled for today but at least one has been completed, shouldFire = NO", v49, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v50);
          MEMORY[0x22AA9E860](v50, -1, -1);
          MEMORY[0x22AA9E860](v49, -1, -1);
        }

        else
        {

          (*(v101 + 1))(v45, v46);
        }

        v84 = *(v103 + 8);
        v85 = v44;
        goto LABEL_31;
      }
    }

    return 1;
  }

  if (v35 != *MEMORY[0x277D09860])
  {
    (*(v101 + 1))(v32, v96);
    return 0;
  }

  v64 = 0;
  do
  {
    v65 = v64;
    if (v33 == v64)
    {
      break;
    }

    (*(v14 + 16))(v17, a2 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v64++, v13);
    v66 = sub_2278C6A10();
    (*(v14 + 8))(v17, v13);
  }

  while ((v66 & 1) != 0);
  v67 = *(v100 + 16);
  v68 = sub_2278C6DC0();
  v105[3] = v68;
  v105[4] = sub_2278A5F78(&qword_2813BC128, MEMORY[0x277D09890], MEMORY[0x277D09880]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v105);
  (*(*(v68 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D09888], v68);
  LOBYTE(v68) = sub_2278C6A70();
  __swift_destroy_boxed_opaque_existential_0(v105);
  if ((v68 & 1) == 0)
  {
    v86 = v104;
    if (v33 != v65)
    {
      return 1;
    }

    v72 = v98;
    sub_2278C7370();
    v73 = v92;
    v74 = v96;
    v94(v92, v86, v96);
    v75 = sub_2278C7590();
    v76 = sub_2278C7970();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v105[0] = v78;
      *v77 = 136315138;
      v87 = sub_2278C6D50();
      v89 = v88;
      (*(v101 + 1))(v73, v74);
      v90 = sub_2278021B4(v87, v89, v105);

      *(v77 + 4) = v90;
      v83 = "[%s] Some workouts scheduled for today but all of them are completed, shouldFire = NO";
      goto LABEL_28;
    }

LABEL_29:

    (*(v101 + 1))(v73, v74);
    goto LABEL_30;
  }

  result = 1;
  v71 = v104;
  if (v33 == v65 && !v67)
  {
    v72 = v97;
    sub_2278C7370();
    v73 = v91;
    v74 = v96;
    v94(v91, v71, v96);
    v75 = sub_2278C7590();
    v76 = sub_2278C7970();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v105[0] = v78;
      *v77 = 136315138;
      v79 = sub_2278C6D50();
      v81 = v80;
      (*(v101 + 1))(v73, v74);
      v82 = sub_2278021B4(v79, v81, v105);

      *(v77 + 4) = v82;
      v83 = "[%s] Some workouts scheduled for today but all of them are completed, and no plan tomorrow, shouldFire = NO";
LABEL_28:
      _os_log_impl(&dword_2277F7000, v75, v76, v83, v77, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v78);
      MEMORY[0x22AA9E860](v78, -1, -1);
      MEMORY[0x22AA9E860](v77, -1, -1);

LABEL_30:
      v84 = *(v103 + 8);
      v85 = v72;
LABEL_31:
      v84(v85, v102);
      return 0;
    }

    goto LABEL_29;
  }

  return result;
}

BOOL sub_2278A5864(uint64_t a1, uint64_t a2)
{
  v4 = sub_2278C75A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2278C6A20();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2278C6DC0();
  v26[3] = v12;
  v26[4] = sub_2278A5F78(&qword_2813BC128, MEMORY[0x277D09890], MEMORY[0x277D09880]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  (*(*(v12 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D09888], v12);
  LOBYTE(v12) = sub_2278C6A70();
  __swift_destroy_boxed_opaque_existential_0(v26);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v14 = *(a1 + 16);
  if (!v14)
  {
    sub_2278C7370();
    v20 = sub_2278C7590();
    v21 = sub_2278C7970();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2277F7000, v20, v21, "No F+ plan workouts scheduled for today, returning false", v22, 2u);
      MEMORY[0x22AA9E860](v22, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return 0;
  }

  v24 = a2;
  v25 = a1;
  v15 = 0;
  do
  {
    v16 = v15;
    if (v14 == v15)
    {
      break;
    }

    (*(v9 + 16))(v11, v25 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15++, v8);
    v17 = sub_2278C6A10();
    (*(v9 + 8))(v11, v8);
  }

  while ((v17 & 1) != 0);
  return v14 == v16 && *(v24 + 16) != 0;
}

uint64_t sub_2278A5B6C()
{
  v0 = sub_2278C7110();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *MEMORY[0x277CE20E8];
  v5 = *MEMORY[0x277D09A80];
  v6 = *(v1 + 104);
  v6(v3, v5, v0);
  v7 = v4;
  sub_2278C7100();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v6(v3, v5, v0);
  v9 = sub_2278C70E0();
  v8(v3, v0);
  v10 = sub_2278C76F0();

  v11 = [objc_opt_self() actionWithIdentifier:v7 title:v10 options:4 icon:v9];

  v12 = *MEMORY[0x277D09C00];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D63E0, &unk_2278CC430);
  v13 = swift_allocObject();
  v24 = xmmword_2278CC820;
  *(v13 + 16) = xmmword_2278CC820;
  *(v13 + 32) = v11;
  sub_227839268(0, &qword_2813B9AF8, 0x277CE1F80);
  v14 = v12;
  v15 = v11;
  v16 = sub_2278C7790();

  v17 = sub_2278C7790();
  v18 = sub_2278C76F0();
  v19 = [objc_opt_self() categoryWithIdentifier:v14 actions:v16 intentIdentifiers:v17 hiddenPreviewsBodyPlaceholder:v18 options:1];

  inited = swift_initStackObject();
  *(inited + 16) = v24;
  *(inited + 32) = v19;
  v21 = v19;
  v22 = sub_2278A4CF8(inited);

  return v22;
}

uint64_t sub_2278A5E58(uint64_t a1)
{
  v4 = *(type metadata accessor for NotificationRequest(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2278004C0;

  return sub_2278A04B0(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_2278A5F78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_71Tm()
{
  v1 = sub_2278C6D60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + v5));

  return MEMORY[0x2821FE8E8](v0, v5 + 40, v3 | 7);
}

uint64_t sub_2278A609C()
{
  v1 = *(sub_2278C6D60() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_2278955B8(v3, v0 + v2, v4);
}

uint64_t sub_2278A612C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2278C6D60() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2278003CC;

  return sub_2278957F0(a1, v9, v10, v1 + v6, v11, v1 + v8);
}

uint64_t sub_2278A6264(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_227839268(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2278A62DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278004C0;

  return sub_2278A2CF8(a1, v4, v5, v6);
}

uint64_t sub_2278A6390(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278004C0;

  return sub_2278A1DF0(a1, v4, v5, v6);
}

uint64_t sub_2278A6444(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278004C0;

  return sub_2278A1310(a1, v4, v5, v6);
}

uint64_t sub_2278A64F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2278004C0;

  return sub_2278A4380(a1, v4);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2278A65E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2278A6638(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_2278A6694(uint64_t a1, uint64_t a2)
{
  v2 = sub_2278C75A0();
  MEMORY[0x28223BE20](v2);
  sub_2278A6CFC();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2278C9F60;
  *(inited + 32) = sub_227839268(0, &qword_2813B9B70, 0x277CBEAC0);
  *(inited + 40) = sub_227839268(0, &qword_2813B9A78, 0x277CCACA8);
  *(inited + 48) = sub_227839268(0, &qword_2813B9AA8, 0x277CBEA90);
  *(inited + 56) = sub_227839268(0, &qword_2813B9A80, 0x277CCABB0);
  sub_227839268(0, &qword_2813B9B18, 0x277CCAAC8);
  sub_2278A6AC8(inited);

  sub_2278C7A50();

  if (v6[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60D8, &qword_2278CE440);
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_227815D20(v6);
  }

  return sub_2278C3BA4(MEMORY[0x277D84F90]);
}

uint64_t sub_2278A69C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_2278B47E0(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2278B47E0((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_2278A7620(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2278A6AC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_2278B4800(0, v1, 0);
    v4 = a1 + 32;
    v2 = v9;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D65F0, &qword_2278CE448);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D65F8, &qword_2278CE450);
      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2278B4800((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2278A6BF4()
{
  sub_2278C7E60();
  sub_2278C6680();
  return sub_2278C7E90();
}

uint64_t sub_2278A6C48(uint64_t a1)
{
  sub_2278C7E60();
  sub_2278C6680();
  return sub_2278C7E90();
}

unint64_t sub_2278A6CA8()
{
  result = qword_27D7D65E8;
  if (!qword_27D7D65E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D65E8);
  }

  return result;
}

uint64_t sub_2278A6CFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D65F0, &qword_2278CE448);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_27D7D6600;
    v3 = &unk_2278CE458;
  }

  else
  {
    v2 = &qword_27D7D63E0;
    v3 = &unk_2278CC430;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

uint64_t sub_2278A6D74@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_2278C6580();
    if (v10)
    {
      v11 = sub_2278C65A0();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_2278C6590();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_2278C6580();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_2278C65A0();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_2278C6590();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2278A6FA4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_2278A7134(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2278372D4(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_2278A6D74(v13, a3, a4, &v12);
  v10 = v4;
  sub_2278372D4(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_2278A7134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_2278C6580();
  v11 = result;
  if (result)
  {
    result = sub_2278C65A0();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2278C6590();
  sub_2278A6D74(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_2278A71EC(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_227837280(a3, a4);
          return sub_2278A6FA4(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2278A7354(uint64_t a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v1 = sub_2278C75A0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = sub_2278C7640();

  v22[0] = 0;
  v7 = [v5 archivedDataWithRootObject:v6 requiringSecureCoding:1 error:v22];

  v8 = v22[0];
  if (v7)
  {
    v9 = sub_2278C6670();
  }

  else
  {
    v10 = v8;
    v11 = sub_2278C65F0();

    swift_willThrow();
    sub_2278C73A0();
    v12 = v11;
    v13 = sub_2278C7590();
    v14 = sub_2278C7950();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22[0] = v16;
      *v15 = 136315138;
      swift_getErrorValue();
      v17 = MEMORY[0x22AA9DD80](v21[2], v21[3]);
      v19 = sub_2278021B4(v17, v18, v22);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_2277F7000, v13, v14, "Failed to archive user info for notification request: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x22AA9E860](v16, -1, -1);
      MEMORY[0x22AA9E860](v15, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v4, v1);
    return 0;
  }

  return v9;
}

_OWORD *sub_2278A7620(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2278A7630(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2278003CC;

  return v7(a1, a2);
}

id sub_2278A77A0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TypicalDayProvider();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2278A7844()
{
  v1[2] = v0;
  v2 = sub_2278C6540();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_2278C75A0();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278A7960, 0, 0);
}

uint64_t sub_2278A7960(uint64_t a1)
{
  v3 = v1[7];
  v2 = v1[8];
  v4 = v1[6];
  v5 = v1[2];
  sub_2278C73A0();
  sub_2278C7580();
  (*(v3 + 8))(v2, v4);
  v6 = OBJC_IVAR____TtC23FitnessCoachingServices18TypicalDayProvider_dataSource;
  v1[9] = OBJC_IVAR____TtC23FitnessCoachingServices18TypicalDayProvider_dataSource;
  __swift_project_boxed_opaque_existential_1((v5 + v6), *(v5 + v6 + 24));
  v7 = swift_task_alloc();
  v1[10] = v7;
  *v7 = v1;
  v7[1] = sub_2278A7A70;

  return sub_22785BB3C();
}

uint64_t sub_2278A7A70()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2278A7BC8, 0, 0);
  }
}

uint64_t sub_2278A7BC8()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = __swift_project_boxed_opaque_existential_1((v4 + v0[9]), *(v4 + v0[9] + 24));
  (*(v2 + 16))(v1, *v5 + OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_dateInterval, v3);
  v6 = objc_allocWithZone(MEMORY[0x277D095D0]);
  v7 = sub_2278C6500();
  v8 = [v6 initForDateInterval:v7 delegate:v4];

  (*(v2 + 8))(v1, v3);
  v9 = *(v4 + OBJC_IVAR____TtC23FitnessCoachingServices18TypicalDayProvider_state);
  *(v4 + OBJC_IVAR____TtC23FitnessCoachingServices18TypicalDayProvider_state) = v8;

  v10 = v0[1];

  return v10();
}

void sub_2278A8348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2278C75A0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2278C73A0();
  sub_2278C7580();
  (*(v8 + 8))(v10, v7);
  __swift_project_boxed_opaque_existential_1((a3 + OBJC_IVAR____TtC23FitnessCoachingServices18TypicalDayProvider_dataSource), *(a3 + OBJC_IVAR____TtC23FitnessCoachingServices18TypicalDayProvider_dataSource + 24));
  v11 = sub_22785CD7C();
  if (!v4)
  {
    v12 = v11;
    v18[1] = 0;
    if (v11 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2278C7B80())
    {
      v14 = 0;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x22AA9DBF0](v14, v12);
        }

        else
        {
          if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v15 = *(v12 + 8 * v14 + 32);
        }

        v16 = v15;
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        (*(a4 + 16))(a4, v15);

        ++v14;
        if (v17 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:
  }
}

uint64_t sub_2278A853C(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2278003CC;

  return v7(a1, a2);
}

uint64_t sub_2278A8698()
{
  v1 = v0[2];
  v2 = v1[22];
  v3 = v1[23];
  __swift_project_boxed_opaque_existential_1(v1 + 19, v2);
  v4 = swift_allocObject();
  v0[3] = v4;
  swift_weakInit();
  v5 = swift_task_alloc();
  v0[4] = v5;
  v6 = sub_22786D8E0();
  v0[5] = v6;
  v7 = sub_2278A8CA4();
  v0[6] = v7;
  *v5 = v0;
  v5[1] = sub_2278A87C4;

  return MEMORY[0x2821603D0](7, &unk_2278CE5C8, v4, v2, v6, v3, v7);
}

uint64_t sub_2278A87C4()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_2278A88F0, v1, 0);
}

uint64_t sub_2278A88F0()
{
  v1 = v0[2];
  v2 = v1[22];
  v3 = v1[23];
  __swift_project_boxed_opaque_existential_1(v1 + 19, v2);
  v4 = swift_allocObject();
  v0[7] = v4;
  swift_weakInit();
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_2278A89FC;
  v6 = v0[5];
  v7 = v0[6];

  return MEMORY[0x2821603D0](8, &unk_2278CE5D8, v4, v2, v6, v3, v7);
}

uint64_t sub_2278A89FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2278A8B0C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 80) = a2;
  *(v2 + 88) = v3;
  return MEMORY[0x2822009F8](sub_2278A8B30, 0, 0);
}

uint64_t sub_2278A8B30()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = v0[11];
    sub_2278040AC(Strong + 112, (v0 + 2));

    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    sub_22786D13C(v2);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_2278A8C0C(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2278003CC;

  return sub_2278A8B0C(a1, v1);
}

unint64_t sub_2278A8CA4()
{
  result = qword_2813B9AC8;
  if (!qword_2813B9AC8)
  {
    sub_22786D8E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813B9AC8);
  }

  return result;
}

uint64_t sub_2278A8CFC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 80) = a2;
  *(v2 + 88) = v3;
  return MEMORY[0x2822009F8](sub_2278A8D20, 0, 0);
}

uint64_t sub_2278A8D20()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = v0[11];
    sub_2278040AC(Strong + 112, (v0 + 2));

    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    sub_22786D4D0(v2);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_2278A8DE4(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2278004C0;

  return sub_2278A8CFC(a1, v1);
}

uint64_t sub_2278A8E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2278003CC;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_2278A8FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2278004C0;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_2278A90E4(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v19 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2278C7B80())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = MEMORY[0x22AA9DBF0](v8, v4);
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_2278C7CB0();
        sub_2278C7CE0();
        v4 = v15;
        sub_2278C7CF0();
        sub_2278C7CC0();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_20:

  return v12;
}

double sub_2278A9290(void *a1, id a2)
{
  v4 = 0.0;
  if (([*(v2 + 80) isPausedForActivitySummaryCacheIndex_] & 1) == 0)
  {
    v5 = sub_2278C79C0();
    v6 = [a1 statisticsForType_];

    if (v6)
    {
      v7 = [v6 sumQuantity];
      if (v7)
      {
        v8 = v7;
        v9 = sub_2278C79D0();
        [v8 doubleValueForUnit_];
        v11 = v10;

        sub_2278C7A20();
        v13 = v12;

        return v11 / v13;
      }

      else
      {
      }
    }
  }

  return v4;
}

uint64_t sub_2278A9394(double a1)
{
  *(v2 + 24) = v1;
  *(v2 + 16) = a1;
  v3 = sub_2278C6820();
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v3 - 8);
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = swift_task_alloc();
  v4 = sub_2278C6540();
  *(v2 + 64) = v4;
  *(v2 + 72) = *(v4 - 8);
  *(v2 + 80) = swift_task_alloc();
  v5 = sub_2278C6920();
  *(v2 + 88) = v5;
  *(v2 + 96) = *(v5 - 8);
  *(v2 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278A951C, 0, 0);
}

uint64_t sub_2278A951C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v13 = v0[4];
  v4 = v0[3];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_227804920();
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v5 = off_283AE99E0;
  type metadata accessor for DateProvider(0);
  v5(v2);
  sub_2278C67A0();
  v6 = *(v3 + 8);
  v6(v2, v13);
  sub_2278C66F0();
  v6(v1, v13);
  v7 = v4[8];
  v8 = v4[9];
  __swift_project_boxed_opaque_existential_1(v4 + 5, v7);
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_2278A96B0;
  v10 = v0[10];
  v11.n128_u64[0] = v0[2];

  return MEMORY[0x2821602D8](v10, v7, v8, v11);
}

uint64_t sub_2278A96B0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_2278A99E4;
  }

  else
  {
    v4 = sub_2278A97C4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2278A97C4()
{
  v1 = v0[15];
  v20 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
    goto LABEL_16;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0[15]; v2; i = v0[15])
  {
    v4 = 0;
    v5 = v1 & 0xC000000000000001;
    v6 = v1 & 0xFFFFFFFFFFFFFF8;
    v7 = i + 32;
    v1 = &off_2785DA000;
    while (1)
    {
      if (v5)
      {
        v8 = MEMORY[0x22AA9DBF0](v4, v19[15]);
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_15;
        }

        v8 = *(v7 + 8 * v4);
      }

      v9 = v8;
      v0 = (v4 + 1);
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (qword_283AE9500 == [v8 *(v1 + 2352)])
      {
      }

      else
      {
        sub_2278C7CB0();
        sub_2278C7CE0();
        sub_2278C7CF0();
        sub_2278C7CC0();
        v1 = 0x2785DA000;
      }

      ++v4;
      if (v0 == v2)
      {
        v0 = v19;
        v10 = v20;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v2 = sub_2278C7B80();
  }

  v10 = MEMORY[0x277D84F90];
LABEL_18:
  v12 = v0[12];
  v11 = v0[13];
  v14 = v0[10];
  v13 = v0[11];
  v15 = v0[8];
  v16 = v0[9];

  (*(v16 + 8))(v14, v15);
  (*(v12 + 8))(v11, v13);

  v17 = v0[1];

  return v17(v10);
}

uint64_t sub_2278A99E4()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2278A9AAC(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = sub_2278C75A0();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278A9B70, 0, 0);
}

uint64_t sub_2278A9B70(uint64_t a1)
{
  v3 = v1[17];
  v2 = v1[18];
  v4 = v1[16];
  sub_2278C7340();
  sub_2278C7580();
  (*(v3 + 8))(v2, v4);
  sub_2278C78B0();
  v6 = v5 * 15.0;
  v7 = swift_task_alloc();
  v1[19] = v7;
  *v7 = v1;
  v7[1] = sub_2278A9C78;

  return sub_2278A9394(v6);
}

uint64_t sub_2278A9C78(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {

    v4 = sub_2278A9F8C;
  }

  else
  {
    v4 = sub_2278A9D94;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2278A9D94()
{
  v15 = v0;
  v1 = *(v0 + 168);
  sub_227871228(*(v0 + 120), v0 + 16);
  v2 = swift_allocObject();
  v3 = *(v0 + 64);
  *(v2 + 48) = *(v0 + 48);
  *(v2 + 64) = v3;
  *(v2 + 80) = *(v0 + 80);
  *(v2 + 96) = *(v0 + 96);
  v4 = *(v0 + 32);
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v4;

  v14 = sub_2278AB83C(v5);
  sub_2278AC5C4(&v14, sub_2278ABD18);
  if (v1)
  {
  }

  v7 = v14;
  if ((v14 & 0x8000000000000000) != 0 || (v14 & 0x4000000000000000) != 0)
  {
    result = sub_2278C7B80();
    if (result)
    {
      goto LABEL_8;
    }
  }

  else if (*(v14 + 16))
  {
LABEL_8:
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x22AA9DBF0](0, v7);
    }

    else
    {
      if (!*(v7 + 16))
      {
        __break(1u);
        return result;
      }

      v8 = *(v7 + 32);
    }

    v9 = v8;

    sub_2278A9290(v9, *(v0 + 112));
    sub_2278C7270();
    v10 = 0;
    goto LABEL_14;
  }

  v10 = 1;
LABEL_14:
  v11 = *(v0 + 104);
  v12 = sub_2278C7280();
  (*(*(v12 - 8) + 56))(v11, v10, 1, v12);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_2278A9F8C()
{
  v1 = *(v0 + 104);
  v2 = sub_2278C7280();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2278AA034(void *a1, void *a2)
{
  result = [a1 totalEnergyBurned];
  if (result)
  {
    v4 = result;
    v5 = [a2 totalEnergyBurned];
    if (v5)
    {
      v6 = v5;
      v7 = [v4 compare_];

      return v7 == 1;
    }

    else
    {

      return 1;
    }
  }

  return result;
}

uint64_t sub_2278AA0C8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_2278C75A0();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278AA18C, 0, 0);
}

uint64_t sub_2278AA18C(uint64_t a1)
{
  v3 = v1[6];
  v2 = v1[7];
  v4 = v1[5];
  sub_2278C7340();
  sub_2278C7580();
  (*(v3 + 8))(v2, v4);
  sub_2278C78A0();
  v6 = v5;
  v7 = swift_task_alloc();
  v1[8] = v7;
  *v7 = v1;
  v7[1] = sub_2278AA290;

  return sub_2278A9394(v6);
}

uint64_t sub_2278AA290(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {

    v4 = sub_2278AA57C;
  }

  else
  {
    v4 = sub_2278AA3AC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2278AA3AC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;

  v12 = sub_2278AB83C(v4);
  sub_2278AA720(sub_2278AC658, v3);
  if (v1)
  {
  }

  if ((v12 & 0x8000000000000000) != 0 || (v12 & 0x4000000000000000) != 0)
  {
    result = sub_2278C7B80();
    if (result)
    {
      goto LABEL_8;
    }
  }

  else if (*(v12 + 16))
  {
LABEL_8:
    if ((v12 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x22AA9DBF0](0, v12);
    }

    else
    {
      if (!*(v12 + 16))
      {
        __break(1u);
        return result;
      }

      v6 = *(v12 + 32);
    }

    v7 = v6;

    sub_2278A9290(v7, *(v0 + 24));
    sub_2278C7270();
    v8 = 0;
    goto LABEL_14;
  }

  v8 = 1;
LABEL_14:
  v9 = *(v0 + 16);
  v10 = sub_2278C7280();
  (*(*(v10 - 8) + 56))(v9, v8, 1, v10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2278AA57C()
{
  v1 = *(v0 + 16);
  v2 = sub_2278C7280();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2278AA624(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  [*a1 duration];
  v5 = v4;
  [v3 duration];
  if (v5 == v6)
  {
    result = [v2 totalEnergyBurned];
    if (result)
    {
      v8 = result;
      v9 = [v3 totalEnergyBurned];
      if (v9)
      {
        v10 = v9;
        v11 = [v8 compare_];

        return v11 == 1;
      }

      else
      {

        return 1;
      }
    }
  }

  else
  {
    [v2 duration];
    v13 = v12;
    [v3 duration];
    return v14 < v13;
  }

  return result;
}

uint64_t sub_2278AA720(uint64_t (*a1)(void **, void **), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    *v3 = sub_22786A18C(v6);
  }

  sub_2278AA7B8(a1, a2);
  return sub_2278C7CC0();
}

void sub_2278AA7B8(uint64_t (*a1)(void **, void **), uint64_t a2)
{
  v5 = *(v2 + 8);
  v6 = sub_2278C7D90();
  if (v6 < v5)
  {
    if (v5 >= -1)
    {
      v7 = v6;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_227839268(0, &qword_27D7D6620, 0x277CCDBE8);
        v9 = sub_2278C77D0();
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFF8;
      v11[0] = ((v9 & 0xFFFFFFFFFFFFFF8) + 32);
      v11[1] = v8;
      sub_2278AA9DC(v11, v12, v2, a1, a2, v7);
      *(v10 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    sub_2278AA8DC(0, v5, 1, a1);
  }
}

void sub_2278AA8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void **, void **))
{
  if (a3 != a2)
  {
    v7 = *v4;
    v8 = (*v4 + 8 * a3 - 8);
    v9 = a1 - a3;
LABEL_4:
    v19 = v8;
    v20 = a3;
    v10 = *(v7 + 8 * a3);
    v18 = v9;
    while (1)
    {
      v22 = v10;
      v21 = *v8;
      v11 = v21;
      v12 = v10;
      v13 = v11;
      v14 = a4(&v22, &v21);

      if (v5)
      {
        break;
      }

      if (v14)
      {
        if (!v7)
        {
          __break(1u);
          return;
        }

        v15 = *v8;
        v10 = v8[1];
        *v8 = v10;
        v8[1] = v15;
        --v8;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      a3 = v20 + 1;
      v8 = v19 + 1;
      v9 = v18 - 1;
      if (v20 + 1 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_2278AA9DC(void ***a1, uint64_t a2, void **a3, uint64_t (*a4)(void **, void **), uint64_t a5, uint64_t a6)
{
  v9 = a3;
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = MEMORY[0x277D84F90];
LABEL_90:
    v7 = v9;
    v9 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_92;
    }

    goto LABEL_130;
  }

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (1)
  {
    v13 = v11 + 1;
    if (v11 + 1 < v10)
    {
      v97 = v10;
      v7 = *v9;
      v14 = *(*v9 + v13);
      v105 = *(*v9 + v11);
      v15 = v105;
      v106 = v14;
      v16 = v14;
      v17 = v15;
      v100 = a4(&v106, &v105);
      if (v6)
      {

        return;
      }

      v18 = 8 * v11;
      v19 = &v7[v11 + 2];
      v95 = v11;
      while (v97 - 2 != v11)
      {
        v20 = *v19;
        v105 = *(v19 - 1);
        v21 = v105;
        v106 = v20;
        v22 = v20;
        v7 = v21;
        LODWORD(v21) = a4(&v106, &v105);

        ++v11;
        ++v19;
        if ((v100 ^ v21))
        {
          v13 = v11 + 1;
          goto LABEL_11;
        }
      }

      v11 = v97 - 1;
      v13 = v97;
LABEL_11:
      v9 = a3;
      if (v100)
      {
        if (v13 < v95)
        {
          goto LABEL_124;
        }

        v23 = v95 <= v11;
        v11 = v95;
        if (v23)
        {
          v24 = 8 * v13 - 8;
          v25 = v13;
          v26 = v95;
          do
          {
            if (v26 != --v25)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_128;
              }

              v28 = *&v27[v18];
              *&v27[v18] = *&v27[v24];
              *&v27[v24] = v28;
            }

            ++v26;
            v24 -= 8;
            v18 += 8;
          }

          while (v26 < v25);
        }
      }

      else
      {
        v11 = v95;
      }
    }

    v29 = v9[1];
    if (v13 >= v29)
    {
      goto LABEL_133;
    }

    if (__OFSUB__(v13, v11))
    {
      goto LABEL_120;
    }

    if (v13 - v11 >= a6)
    {
      goto LABEL_133;
    }

    v30 = (v11 + a6);
    if (__OFADD__(v11, a6))
    {
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v30 >= v29)
    {
      v30 = v9[1];
    }

    if (v30 < v11)
    {
      goto LABEL_123;
    }

    if (v13 == v30)
    {
LABEL_133:
      if (v13 < v11)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v77 = a5;
      v78 = *v9;
      v7 = (*v9 + 8 * v13 - 8);
      v96 = v11;
      v79 = v11 - v13;
      v92 = v30;
      do
      {
        v101 = v7;
        v103 = v13;
        v80 = v78[v13];
        v98 = v79;
        do
        {
          v105 = *v7;
          v81 = v105;
          v106 = v80;
          v82 = v80;
          v83 = v81;
          v84 = a4(&v106, &v105);
          if (v6)
          {

            return;
          }

          v85 = v84;

          if ((v85 & 1) == 0)
          {
            break;
          }

          if (!v78)
          {
            goto LABEL_126;
          }

          v86 = *v7;
          v80 = v7[1];
          *v7 = v80;
          v7[1] = v86;
          --v7;
        }

        while (!__CFADD__(v79++, 1));
        v13 = v103 + 1;
        v7 = v101 + 1;
        v79 = v98 - 1;
      }

      while ((v103 + 1) != v92);
      v13 = v92;
      a5 = v77;
      v9 = a3;
      v11 = v96;
      if (v92 < v96)
      {
        goto LABEL_119;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_22780202C(0, *(v12 + 2) + 1, 1, v12);
    }

    v32 = *(v12 + 2);
    v31 = *(v12 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v12 = sub_22780202C((v31 > 1), v32 + 1, 1, v12);
    }

    *(v12 + 2) = v33;
    v34 = &v12[16 * v32];
    *(v34 + 4) = v11;
    *(v34 + 5) = v13;
    v102 = v13;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v32)
    {
      break;
    }

LABEL_3:
    v10 = v9[1];
    v11 = v102;
    if (v102 >= v10)
    {
      goto LABEL_90;
    }
  }

  while (1)
  {
    v35 = v33 - 1;
    if (v33 >= 4)
    {
      v40 = &v12[16 * v33 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_106;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_107;
      }

      v47 = &v12[16 * v33];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_109;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_112;
      }

      if (v51 >= v43)
      {
        v69 = &v12[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_118;
        }

        if (v38 < v72)
        {
          v35 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v33 == 3)
    {
      v36 = *(v12 + 4);
      v37 = *(v12 + 5);
      v46 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      v39 = v46;
LABEL_49:
      if (v39)
      {
        goto LABEL_108;
      }

      v52 = &v12[16 * v33];
      v54 = *v52;
      v53 = *(v52 + 1);
      v55 = __OFSUB__(v53, v54);
      v56 = v53 - v54;
      v57 = v55;
      if (v55)
      {
        goto LABEL_111;
      }

      v58 = &v12[16 * v35 + 32];
      v60 = *v58;
      v59 = *(v58 + 1);
      v46 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v46)
      {
        goto LABEL_114;
      }

      if (__OFADD__(v56, v61))
      {
        goto LABEL_115;
      }

      if (v56 + v61 >= v38)
      {
        if (v38 < v61)
        {
          v35 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v62 = &v12[16 * v33];
    v64 = *v62;
    v63 = *(v62 + 1);
    v46 = __OFSUB__(v63, v64);
    v56 = v63 - v64;
    v57 = v46;
LABEL_63:
    if (v57)
    {
      goto LABEL_110;
    }

    v65 = &v12[16 * v35];
    v67 = *(v65 + 4);
    v66 = *(v65 + 5);
    v46 = __OFSUB__(v66, v67);
    v68 = v66 - v67;
    if (v46)
    {
      goto LABEL_113;
    }

    if (v68 < v56)
    {
      goto LABEL_3;
    }

LABEL_70:
    v73 = v35 - 1;
    if (v35 - 1 >= v33)
    {
      break;
    }

    if (!*v9)
    {
      goto LABEL_125;
    }

    v74 = *&v12[16 * v73 + 32];
    v75 = *&v12[16 * v35 + 40];
    sub_2278AB474(*v9 + v74, *v9 + *&v12[16 * v35 + 32], *v9 + v75, v7, a4);
    if (v6)
    {
      goto LABEL_100;
    }

    if (v75 < v74)
    {
      goto LABEL_104;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_22786934C(v12);
    }

    if (v73 >= *(v12 + 2))
    {
      goto LABEL_105;
    }

    v76 = &v12[16 * v73];
    *(v76 + 4) = v74;
    *(v76 + 5) = v75;
    v107 = v12;
    sub_2278692C0(v35);
    v12 = v107;
    v33 = *(v107 + 2);
    if (v33 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
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
  v12 = sub_22786934C(v12);
LABEL_92:
  v107 = v12;
  v88 = *(v12 + 2);
  if (v88 < 2)
  {
LABEL_100:
  }

  else
  {
    while (*v7)
    {
      v89 = *&v12[16 * v88];
      v90 = *&v12[16 * v88 + 24];
      sub_2278AB474(*v7 + v89, *v7 + *&v12[16 * v88 + 16], *v7 + v90, v9, a4);
      if (v6)
      {
        goto LABEL_100;
      }

      if (v90 < v89)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_22786934C(v12);
      }

      if (v88 - 2 >= *(v12 + 2))
      {
        goto LABEL_117;
      }

      v91 = &v12[16 * v88];
      *v91 = v89;
      *(v91 + 1) = v90;
      v107 = v12;
      sub_2278692C0(v88 - 1);
      v12 = v107;
      v88 = *(v107 + 2);
      if (v88 <= 1)
      {
        goto LABEL_100;
      }
    }

LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
  }
}

uint64_t sub_2278AB0A8(void **__dst, id *__src, id *a3, unint64_t a4, uint64_t (*a5)(id, id))
{
  v6 = v5;
  v7 = a3;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    v16 = a4;
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      memmove(a4, __dst, 8 * v11);
    }

    v55 = &v16[v11];
    if (v9 < 8 || __src >= v7)
    {
LABEL_20:
      v27 = v8;
      goto LABEL_53;
    }

    v17 = __src;
    while (1)
    {
      v18 = v17;
      v19 = v6;
      v20 = v16;
      v21 = *v16;
      v22 = *v17;
      v23 = v21;
      v24 = a5(v22, v23);
      if (v19)
      {

        v41 = v20;
        v42 = v55 - v20 + 7;
        if (v55 - v20 >= 0)
        {
          v42 = v55 - v20;
        }

        v43 = v42 >> 3;
        if (v8 < v20 || v8 >= (v20 + (v42 & 0xFFFFFFFFFFFFFFF8)))
        {
          memmove(v8, v20, 8 * v43);
        }

        else if (v8 != v20)
        {
          v44 = 8 * v43;
          v45 = v8;
          goto LABEL_59;
        }

        return 1;
      }

      v25 = v24;

      if ((v25 & 1) == 0)
      {
        break;
      }

      v26 = v18;
      v17 = v18 + 1;
      v16 = v20;
      if (v8 != v18)
      {
        goto LABEL_17;
      }

LABEL_18:
      ++v8;
      v6 = 0;
      if (v16 >= v55 || v17 >= v7)
      {
        goto LABEL_20;
      }
    }

    v26 = v20;
    v16 = v20 + 1;
    v17 = v18;
    if (v8 == v20)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v8 = *v26;
    goto LABEL_18;
  }

  v27 = __src;
  if (a4 != __src || &__src[v14] <= a4)
  {
    v28 = a4;
    memmove(a4, __src, 8 * v14);
    a4 = v28;
  }

  v52 = a4;
  v55 = (a4 + 8 * v14);
  if (v12 < 8 || v27 <= v8)
  {
    v16 = a4;
    goto LABEL_53;
  }

  v29 = -a4;
  v50 = -a4;
LABEL_27:
  v53 = v6;
  v51 = v27;
  v30 = v27 - 1;
  v31 = v55;
  v32 = v55 + v29;
  --v7;
  while (1)
  {
    v33 = *--v31;
    v34 = v30;
    v35 = *v30;
    v36 = v33;
    v37 = v35;
    v38 = a5(v36, v37);

    if (v53)
    {
      break;
    }

    v39 = v7 + 1;
    if (v38)
    {
      v40 = v34;
      if (v39 != v51)
      {
        *v7 = *v34;
      }

      v16 = v52;
      v6 = 0;
      if (v55 <= v52 || (v27 = v40, v29 = v50, v40 <= v8))
      {
        v27 = v40;
        goto LABEL_53;
      }

      goto LABEL_27;
    }

    if (v39 != v55)
    {
      *v7 = *v31;
    }

    v32 -= 8;
    --v7;
    v55 = v31;
    v30 = v34;
    if (v31 <= v52)
    {
      v55 = v31;
      v27 = v51;
      v16 = v52;
LABEL_53:
      v48 = v55 - v16 + 7;
      if (v55 - v16 >= 0)
      {
        v48 = v55 - v16;
      }

      if (v27 >= v16 && v27 < (v16 + (v48 & 0xFFFFFFFFFFFFFFF8)) && v27 == v16)
      {
        return 1;
      }

      v44 = 8 * (v48 >> 3);
      v45 = v27;
      v41 = v16;
LABEL_59:
      memmove(v45, v41, v44);
      return 1;
    }
  }

  if (v32 >= 0)
  {
    v46 = v32;
  }

  else
  {
    v46 = v32 + 7;
  }

  v47 = v46 >> 3;
  v45 = v51;
  v41 = v52;
  if (v51 < v52 || v51 >= (v52 + (v46 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v51, v52, 8 * v47);
    return 1;
  }

  if (v51 != v52)
  {
    v44 = 8 * v47;
    goto LABEL_59;
  }

  return 1;
}

uint64_t sub_2278AB474(id *__src, id *a2, id *a3, unint64_t __dst, uint64_t (*a5)(id *, id *))
{
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    v14 = __dst;
    if (__dst != __src || &__src[v10] <= __dst)
    {
      memmove(__dst, __src, 8 * v10);
    }

    v52 = &v14[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_51;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = v6;
      v54 = *v6;
      v17 = v14;
      v53 = *v14;
      v18 = v53;
      v19 = v54;
      v20 = v18;
      v21 = a5(&v54, &v53);
      if (__dsta)
      {

        v43 = v52 - v17 + 7;
        if (v52 - v17 >= 0)
        {
          v43 = v52 - v17;
        }

        if (v7 < v17 || v7 >= (v17 + (v43 & 0xFFFFFFFFFFFFFFF8)) || v7 != v17)
        {
          v42 = 8 * (v43 >> 3);
          v41 = v7;
          v40 = v17;
          goto LABEL_57;
        }

        return 1;
      }

      v22 = v21;

      __dsta = 0;
      if (v22)
      {
        break;
      }

      v15 = v17;
      v14 = v17 + 1;
      v6 = v16;
      if (v7 != v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v14 >= v52)
      {
        goto LABEL_10;
      }
    }

    v15 = v16;
    v6 = v16 + 1;
    v14 = v17;
    if (v7 == v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (__dst != a2 || &a2[v13] <= __dst)
  {
    v23 = __dst;
    memmove(__dst, a2, 8 * v13);
    __dst = v23;
  }

  __srca = __dst;
  v52 = (__dst + 8 * v13);
  if (v11 < 8)
  {
    v14 = __dst;
  }

  else
  {
    v24 = __dsta;
    if (v6 <= v7)
    {
      v14 = __dst;
    }

    else
    {
      v25 = -__dst;
      v46 = -__dst;
      v47 = v7;
      while (2)
      {
        v26 = v24;
        __dstb = v6;
        v27 = v6 - 1;
        v28 = v52;
        v29 = v52 + v25;
        --v5;
        while (1)
        {
          v30 = *--v28;
          v54 = v30;
          v31 = v27;
          v53 = *v27;
          v32 = v53;
          v33 = v30;
          v34 = v32;
          v35 = a5(&v54, &v53);
          if (v26)
          {

            if (v29 >= 0)
            {
              v38 = v29;
            }

            else
            {
              v38 = v29 + 7;
            }

            v39 = v38 >> 3;
            v40 = __srca;
            v41 = __dstb;
            if (__dstb < __srca || __dstb >= (__srca + (v38 & 0xFFFFFFFFFFFFFFF8)))
            {
              memmove(__dstb, __srca, 8 * v39);
              return 1;
            }

            if (__dstb == __srca)
            {
              return 1;
            }

            v42 = 8 * v39;
            goto LABEL_57;
          }

          v36 = v35;

          v37 = v5 + 1;
          if (v36)
          {
            break;
          }

          v27 = v31;
          if (v37 != v52)
          {
            *v5 = *v28;
          }

          v29 -= 8;
          --v5;
          v52 = v28;
          if (v28 <= __srca)
          {
            v52 = v28;
            v6 = __dstb;
            v14 = __srca;
            goto LABEL_51;
          }
        }

        v6 = v31;
        if (v37 != __dstb)
        {
          *v5 = *v31;
        }

        v14 = __srca;
        v24 = 0;
        if (v52 > __srca)
        {
          v25 = v46;
          if (v31 > v47)
          {
            continue;
          }
        }

        break;
      }
    }
  }

LABEL_51:
  v44 = v52 - v14 + 7;
  if (v52 - v14 >= 0)
  {
    v44 = v52 - v14;
  }

  if (v6 < v14 || v6 >= (v14 + (v44 & 0xFFFFFFFFFFFFFFF8)) || v6 != v14)
  {
    v42 = 8 * (v44 >> 3);
    v41 = v6;
    v40 = v14;
LABEL_57:
    memmove(v41, v40, v42);
  }

  return 1;
}

unint64_t sub_2278AB83C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_2278C7B80();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_2278A65C4();
  sub_2278ABA70(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2278AB8D0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2278C7B80();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2278C7B80();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2278AC678(&qword_27D7D6640, &qword_27D7D6638, &qword_2278CE660);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6638, &qword_2278CE660);
            v9 = sub_2278ABC10(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_227839268(0, &qword_2813B9B60, 0x277CE8CB0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}