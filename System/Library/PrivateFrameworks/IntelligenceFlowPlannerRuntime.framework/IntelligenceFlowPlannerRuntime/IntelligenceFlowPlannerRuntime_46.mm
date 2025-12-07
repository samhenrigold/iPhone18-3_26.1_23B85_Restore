uint64_t sub_22C7BD560()
{
  v273 = v0;
  v1 = v0[23];
  v2 = v1[10];
  v3 = v1[11];
  sub_22C374168(v1 + 7, v2);
  sub_22C369A48();
  type metadata accessor for QueryDecorationSignpost();
  inited = swift_initStaticObject();
  (*(v3 + 8))(inited, v2, v3);
  sub_22C90371C();
  v5 = sub_22C36BAFC();
  if (v6(v5) != *MEMORY[0x277D1ECE8])
  {
    (*(v0[66] + 8))(v0[67], v0[65]);
    sub_22C373A34();
    v16 = sub_22C36BBCC();
    sub_22C7C2788(v16, v17);
LABEL_45:
    sub_22C374168(v0 + 2, v0[5]);
    sub_22C7C293C();
    v177 = sub_22C36CA88();
    v178(v177);
    sub_22C36FF94(v0 + 2);

    sub_22C369A24();

    return v179();
  }

  (*(v0[66] + 96))(v0[67], v0[65]);
  v7 = sub_22C36BAFC();
  v8(v7);
  sub_22C908A3C();
  sub_22C374168(v0 + 7, v0[10]);
  sub_22C3A5908(&qword_27D9BEC40, &unk_22C920500);
  sub_22C369A48();
  v9 = sub_22C908D4C();
  sub_22C369824();
  v11 = v10;
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22C90F800;
  v14 = (v13 + v12);
  *v14 = sub_22C9099DC();
  v14[1] = v15;
  (*(v11 + 104))(v14, *MEMORY[0x277D720F0], v9);
  sub_22C36BB08();
  v18 = sub_22C90667C();

  sub_22C36FF94(v0 + 7);
  sub_22C90400C();
  v19 = sub_22C9063CC();
  v20 = sub_22C90AACC();
  v21 = os_log_type_enabled(v19, v20);
  v270 = v0;
  if (v21)
  {
    v259 = v20;
    sub_22C37FE78();
    v22 = swift_slowAlloc();
    sub_22C36FE8C();
    v271 = swift_slowAlloc();
    *v22 = 136315394;
    *(v22 + 4) = sub_22C36F9F4(0xD00000000000006CLL, 0x800000022C935780, &v271);
    v260 = v22;
    *(v22 + 12) = 2080;
    v23 = *(v18 + 16);
    v24 = MEMORY[0x277D84F90];
    if (v23)
    {
      v255 = v19;
      v25 = v270[49];
      v272[0] = MEMORY[0x277D84F90];

      sub_22C3B5E2C(0, v23, 0, v26, v27, v28, v29);
      v24 = v272[0];
      v266 = *(v25 + 16);
      sub_22C36BA94();
      v31 = v18 + v30;
      v262 = *(v25 + 72);
      do
      {
        v32 = v270[48];
        v266(v270[52], v31, v32);
        v33 = sub_22C908E7C();
        v35 = v34;
        v36 = sub_22C36BBCC();
        v37(v36);
        v272[0] = v24;
        v38 = *(v24 + 16);
        sub_22C7C2A88();
        if (v40)
        {
          v42 = sub_22C369AB0(v39);
          sub_22C3B5E2C(v42, v32, 1, v43, v44, v45, v46);
          v24 = v272[0];
        }

        *(v24 + 16) = v32;
        v41 = v24 + 16 * v38;
        *(v41 + 32) = v33;
        *(v41 + 40) = v35;
        v31 += v262;
        --v23;
      }

      while (v23);

      v19 = v255;
    }

    v52 = v270[64];
    v54 = v270[53];
    v53 = v270[54];
    v55 = MEMORY[0x2318B7AD0](v24, MEMORY[0x277D837D0]);
    v57 = v56;

    v58 = sub_22C36F9F4(v55, v57, &v271);

    *(v260 + 14) = v58;
    _os_log_impl(&dword_22C366000, v19, v259, "%s implementingTools: %s", v260, 0x16u);
    swift_arrayDestroy();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v59 = *(v53 + 8);
    v60 = v54;
    v47 = v270;
    v59(v52, v60);
    v51 = v59;
  }

  else
  {
    v47 = v0;
    v48 = v0[54];

    v49 = *(v48 + 8);
    v50 = sub_22C36BBCC();
    v49(v50);
    v51 = v49;
  }

  *(v47 + 568) = v51;
  v61 = *(v47 + 216);

  v62 = sub_22C36D264();
  v64 = sub_22C7BF4A4(v62, v63, v61);
  *(v47 + 576) = v64;
  swift_bridgeObjectRelease_n();
  sub_22C90400C();

  v65 = sub_22C9063CC();
  v66 = sub_22C90AACC();
  v258 = v51;
  if (sub_22C370048(v66))
  {
    sub_22C37FE78();
    v67 = swift_slowAlloc();
    sub_22C36FE8C();
    v47 = swift_slowAlloc();
    v272[0] = v47;
    *v67 = 136315394;
    *(v67 + 4) = sub_22C383478("<unknown tool type>");
    *(v67 + 12) = 2080;
    sub_22C7BFC90(v64);

    v68 = sub_22C36CC9C();
    v71 = sub_22C36F9F4(v68, v69, v70);

    *(v67 + 14) = v71;
    _os_log_impl(&dword_22C366000, v65, v66, "%s implementingTools post filtering: %s", v67, 0x16u);
    swift_arrayDestroy();
    sub_22C7C2A30();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    v51 = v258;
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  else
  {
  }

  v72 = sub_22C36D264();
  v51(v72);
  v73 = v64;
  if (!*(v64 + 16))
  {
    v115 = *(v47 + 376);
    v116 = *(v47 + 200);
    sub_22C90400C();
    sub_22C373A34();
    sub_22C7C2788(v116, v115);
    v117 = sub_22C9063CC();
    v118 = sub_22C90AABC();
    v119 = sub_22C36DB24(v118);
    v120 = *(v47 + 560);
    v121 = *(v47 + 552);
    v122 = *(v47 + 544);
    v123 = *(v47 + 496);
    v124 = *(v47 + 424);
    v125 = *(v47 + 376);
    if (v119)
    {
      sub_22C37FE78();
      v126 = swift_slowAlloc();
      sub_22C36FE8C();
      v272[0] = swift_slowAlloc();
      *v126 = 136315394;
      v127 = sub_22C383478("<unknown tool type>");
      sub_22C7C292C(v127);
      sub_22C7FE524();
      sub_22C36B740();
      sub_22C7C27E0(v125, v128);
      v129 = sub_22C50B478();
      v132 = sub_22C36F9F4(v129, v130, v131);

      *(v126 + 14) = v132;
      sub_22C3838EC(&dword_22C366000, v133, v134, "%s No implementation, pass-thru the original protocol: %s");
      sub_22C7C2A3C();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      (v258)(v123, v124);
      (*(v121 + 8))(v120, v122);
    }

    else
    {

      sub_22C36B740();
      sub_22C7C27E0(v125, v171);
      (v258)(v123, v124);
      v172 = sub_22C36D264();
      v174(v172, v173);
    }

LABEL_44:
    v0 = v270;
    sub_22C373A34();
    sub_22C7C2788(v175, v176);

    goto LABEL_45;
  }

  v74 = *(v47 + 392);
  static AppDirectedToolHelper.getAppDirectedApps(spanMatches:toolContext:)(*(v47 + 208), *(v47 + 216), v272);
  v263 = sub_22C3AE694(v272[0]);
  v267 = *(v64 + 16);
  v256 = (v74 + 32);

  v76 = 0;
  v257 = MEMORY[0x277D84F90];
  while (v267 != v76)
  {
    if (v76 >= *(v73 + 16))
    {
      __break(1u);
      return result;
    }

    v77 = *(v47 + 312);
    v78 = (*(v74 + 80) + 32) & ~*(v74 + 80);
    v79 = v73;
    v80 = v73 + v78;
    v81 = *(v74 + 72);
    (*(v74 + 16))(*(v47 + 408), v80 + v81 * v76, *(v47 + 384));
    sub_22C47FCDC();
    sub_22C9096FC();
    sub_22C386DDC();
    v82 = sub_22C36CA88();
    v83(v82);
    v84 = sub_22C5E935C(v77, v47, v263);
    sub_22C7C2A30();

    if (v84)
    {
      v85 = *v256;
      (*v256)(*(v47 + 400), *(v47 + 408), *(v47 + 384));
      v86 = v257;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v272[0] = v257;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C3B7AE0(0, *(v257 + 16) + 1, 1);
        v86 = v272[0];
      }

      v89 = *(v86 + 16);
      v88 = *(v86 + 24);
      if (v89 >= v88 >> 1)
      {
        v93 = sub_22C369AB0(v88);
        sub_22C3B7AE0(v93, v89 + 1, 1);
        v86 = v272[0];
      }

      ++v76;
      v90 = v270[50];
      v91 = v270[48];
      *(v86 + 16) = v89 + 1;
      v257 = v86;
      v92 = v86 + v78 + v89 * v81;
      v47 = v270;
      result = v85(v92, v90, v91);
      v73 = v79;
    }

    else
    {
      result = (*(v74 + 8))(*(v47 + 408), *(v47 + 384));
      ++v76;
      v73 = v79;
    }
  }

  v94 = *(v257 + 16);

  if (v94)
  {
    v95 = *(v47 + 368);
    v96 = *(v47 + 200);
    sub_22C90400C();
    sub_22C373A34();
    sub_22C7C2788(v96, v95);
    v97 = sub_22C9063CC();
    v98 = sub_22C90AABC();
    v99 = sub_22C36DB24(v98);
    v100 = *(v47 + 560);
    v101 = *(v47 + 552);
    v102 = *(v47 + 544);
    v103 = *(v47 + 488);
    v104 = *(v47 + 424);
    v105 = *(v47 + 368);
    if (v99)
    {
      sub_22C37FE78();
      v106 = swift_slowAlloc();
      sub_22C36FE8C();
      v272[0] = swift_slowAlloc();
      *v106 = 136315394;
      v107 = sub_22C383478("<unknown tool type>");
      sub_22C7C292C(v107);
      sub_22C7FE524();
      sub_22C36B740();
      sub_22C7C27E0(v105, v108);
      v109 = sub_22C50B478();
      v112 = sub_22C36F9F4(v109, v110, v111);

      *(v106 + 14) = v112;
      sub_22C3838EC(&dword_22C366000, v113, v114, "%s not a candidate for protocol round-trip optimization, pass-thru the original protocol: %s");
      sub_22C7C2A3C();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      (v258)(v103, v104);
    }

    else
    {

      sub_22C36B740();
      sub_22C7C27E0(v105, v169);
      v170 = sub_22C50B478();
      v258(v170);
    }

    (*(v101 + 8))(v100, v102);
    goto LABEL_44;
  }

  v135 = *(v47 + 232);
  v136 = *(v47 + 200);
  *(swift_task_alloc() + 16) = v136;

  sub_22C3B5058();
  v264 = v137;

  sub_22C7C26C0(v135, v47 + 136);
  if (!*(v47 + 160))
  {
    v182 = *(v47 + 344);
    v183 = *(v47 + 200);

    sub_22C36DD28(v47 + 136, &qword_27D9C0278, &qword_22C9267A0);
    sub_22C90400C();
    sub_22C373A34();
    sub_22C7C2788(v183, v182);
    v184 = sub_22C9063CC();
    v185 = sub_22C90AADC();
    v186 = os_log_type_enabled(v184, v185);
    v187 = *(v47 + 448);
    v188 = *(v47 + 424);
    v189 = *(v47 + 344);
    if (v186)
    {
      sub_22C37FE78();
      v47 = swift_slowAlloc();
      sub_22C36FE8C();
      v272[0] = swift_slowAlloc();
      *v47 = 136315394;
      *(v47 + 4) = sub_22C383478("<unknown tool type>");
      *(v47 + 12) = 2080;
      v190 = sub_22C7FE524();
      v191 = v187;
      v193 = v192;
      sub_22C36B740();
      sub_22C7C27E0(v189, v194);
      v195 = sub_22C36F9F4(v190, v193, v272);

      *(v47 + 14) = v195;
      _os_log_impl(&dword_22C366000, v184, v185, "%s No ToolCandidateRanker instantiated, pass-thru the original protocol: %s", v47, 0x16u);
      swift_arrayDestroy();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C7C2A30();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      v196 = v191;
    }

    else
    {

      sub_22C36B740();
      sub_22C7C27E0(v189, v218);
      v196 = v187;
    }

    (v258)(v196, v188);
    v219 = *(v47 + 336);
    v220 = *(v47 + 200);
    sub_22C90400C();
    sub_22C373A34();
    sub_22C7C2788(v220, v219);
    v221 = sub_22C9063CC();
    v222 = sub_22C90AABC();
    v223 = sub_22C36DB24(v222);
    v224 = *(v47 + 560);
    v225 = *(v47 + 552);
    v226 = *(v47 + 544);
    v227 = *(v47 + 440);
    v228 = *(v47 + 424);
    v229 = *(v47 + 336);
    if (v223)
    {
      sub_22C37FE78();
      v265 = v228;
      v230 = swift_slowAlloc();
      sub_22C36FE8C();
      v272[0] = swift_slowAlloc();
      *v230 = 136315394;
      v231 = sub_22C383478("<unknown tool type>");
      sub_22C7C292C(v231);
      sub_22C7FE524();
      sub_22C36B740();
      sub_22C7C27E0(v229, v232);
      v233 = sub_22C50B478();
      v236 = sub_22C36F9F4(v233, v234, v235);

      *(v230 + 14) = v236;
      sub_22C3838EC(&dword_22C366000, v237, v238, "QDInternal: Protocol substitution | %s\nNo ToolCandidateRanker instantiated, pass-thru the original protocol: %s");
      sub_22C7C2A3C();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      (v258)(v227, v265);
      (*(v225 + 8))(v224, v226);
    }

    else
    {

      sub_22C36B740();
      sub_22C7C27E0(v229, v239);
      (v258)(v227, v228);
      v240 = sub_22C36D264();
      v242(v240, v241);
    }

    goto LABEL_44;
  }

  sub_22C36C730((v47 + 136), v47 + 96);
  sub_22C90400C();
  v138 = sub_22C9063CC();
  v139 = sub_22C90AABC();
  v140 = sub_22C370048(v139);
  v141 = *(v47 + 480);
  v142 = *(v47 + 424);
  if (v140)
  {
    v143 = sub_22C36FB44();
    sub_22C370220();
    v47 = swift_slowAlloc();
    v272[0] = v47;
    *v143 = 136315138;
    *(v143 + 4) = sub_22C383478("<unknown tool type>");
    sub_22C7C29D0();
    _os_log_impl(v144, v145, v146, v147, v148, 0xCu);
    sub_22C36FF94(v47);
    sub_22C7C2A30();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    v149 = sub_22C3816C4();
    MEMORY[0x2318B9880](v149);
  }

  v150 = v258;
  (v258)(v141, v142);
  v151 = sub_22C374168(*(v47 + 224), *(*(v47 + 224) + 24));
  v152 = v151;
  v153 = *(v264 + 16);
  if (v153)
  {
    v261 = v151;
    v154 = *(v47 + 328);
    v155 = *(v47 + 256);
    v272[0] = MEMORY[0x277D84F90];
    sub_22C3B60C0(0, v153, 0);
    v156 = v272[0];
    v157 = v264 + ((*(v154 + 80) + 32) & ~*(v154 + 80));
    v268 = *(v154 + 72);
    do
    {
      v158 = *(v47 + 360);
      v159 = v47;
      v160 = *(v47 + 288);
      v161 = *(v159 + 248);
      sub_22C373A34();
      v162 = sub_22C36CA88();
      sub_22C7C2788(v162, v163);
      (*(v155 + 16))(v160, v158, v161);
      sub_22C36B740();
      sub_22C7C27E0(v158, v164);
      v272[0] = v156;
      v166 = *(v156 + 16);
      v165 = *(v156 + 24);
      if (v166 >= v165 >> 1)
      {
        v168 = sub_22C369AB0(v165);
        sub_22C3B60C0(v168, v166 + 1, 1);
        v156 = v272[0];
      }

      *(v156 + 16) = v166 + 1;
      sub_22C36BA94();
      (*(v155 + 32))(v156 + v167 + *(v155 + 72) * v166);
      v157 += v268;
      --v153;
      v47 = v159;
    }

    while (v153);

    v150 = v258;
    v152 = v261;
  }

  else
  {

    v156 = MEMORY[0x277D84F90];
  }

  sub_22C7E7254(v156, MEMORY[0x277D84F90], MEMORY[0x277D84F90], *v152, *(v152 + 8), v152[2], v180, v181, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254);
  v198 = v197;

  *(v47 + 584) = v198;
  sub_22C90400C();

  v199 = sub_22C9063CC();
  v200 = sub_22C90AACC();

  v201 = os_log_type_enabled(v199, v200);
  v202 = *(v47 + 472);
  v203 = *(v47 + 424);
  if (v201)
  {
    sub_22C37FE78();
    v269 = v202;
    v204 = swift_slowAlloc();
    sub_22C36FE8C();
    v47 = swift_slowAlloc();
    v272[0] = v47;
    *v204 = 136315394;
    *(v204 + 4) = sub_22C383478("<unknown tool type>");
    *(v204 + 12) = 2080;
    DecorationTuple = type metadata accessor for QueryDecorationTuple(0);
    v206 = MEMORY[0x2318B7AD0](v198, DecorationTuple);
    v208 = sub_22C36F9F4(v206, v207, v272);

    *(v204 + 14) = v208;
    sub_22C7C29D0();
    _os_log_impl(v209, v210, v211, v212, v213, 0x16u);
    swift_arrayDestroy();
    sub_22C7C2A30();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    v214 = sub_22C3816C4();
    MEMORY[0x2318B9880](v214);

    v215 = v269;
  }

  else
  {

    v215 = v202;
  }

  v150(v215, v203);
  sub_22C374168((v47 + 96), *(v47 + 120));
  v216 = swift_task_alloc();
  *(v47 + 592) = v216;
  *v216 = v47;
  v216[1] = sub_22C7BEB6C;
  v217 = *(v47 + 184);

  return (sub_22C7C229C)(v217, v198);
}

uint64_t sub_22C7BEB6C()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C36D994();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 600) = v7;
  *(v5 + 608) = v0;

  if (v0)
  {
  }

  else
  {
    *(v5 + 616) = v3;
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C7BEC8C()
{
  v72 = v0;
  if (*(v0 + 616))
  {
  }

  else
  {
    v2 = *(v0 + 240);
    v1 = *(v0 + 248);
    sub_22C7C00B0(*(v0 + 600), *(v0 + 584), v2);

    if (sub_22C370B74(v2, 1, v1) != 1)
    {
      v28 = *(v0 + 272);
      v27 = *(v0 + 280);
      v29 = *(v0 + 248);
      v30 = *(v0 + 256);
      v70 = *(v30 + 32);
      v70(v27, *(v0 + 240), v29);
      sub_22C90400C();
      v31 = *(v30 + 16);
      v31(v28, v27, v29);
      v32 = sub_22C9063CC();
      v33 = sub_22C90AABC();
      v67 = v32;
      v34 = os_log_type_enabled(v32, v33);
      v35 = *(v0 + 552);
      v36 = *(v0 + 544);
      v37 = *(v0 + 272);
      if (v34)
      {
        v66 = *(v0 + 560);
        v39 = *(v0 + 256);
        v38 = *(v0 + 264);
        v65 = v33;
        v40 = *(v0 + 248);
        sub_22C37FE78();
        v41 = swift_slowAlloc();
        sub_22C36FE8C();
        v71 = swift_slowAlloc();
        *v41 = 136315394;
        sub_22C36EE00();
        *(v41 + 4) = sub_22C36F9F4(0xD00000000000006CLL, v42, &v71);
        *(v41 + 12) = 2080;
        v31(v38, v37, v40);
        sub_22C36BBCC();
        v43 = sub_22C90A1AC();
        v44 = v36;
        v46 = v45;
        (*(v39 + 8))(v37, v40);
        v47 = sub_22C36F9F4(v43, v46, &v71);

        *(v41 + 14) = v47;
        _os_log_impl(&dword_22C366000, v67, v65, "QDInternal: Protocol substitution | %s\nBest Direct Executable rowIndex resolved by Joint Resolver. Returning %s", v41, 0x16u);
        swift_arrayDestroy();
        sub_22C369B50();
        MEMORY[0x2318B9880]();
        sub_22C369B50();
        MEMORY[0x2318B9880]();

        v48 = sub_22C7C2A94();
        v49(v48);
        (*(v35 + 8))(v66, v44);
      }

      else
      {
        v51 = *(v0 + 248);
        v50 = *(v0 + 256);

        (*(v50 + 8))(v37, v51);
        v52 = sub_22C7C2A94();
        v53(v52);
        v54 = sub_22C36D264();
        v56(v54, v55);
      }

      v57 = *(v0 + 320);
      v58 = *(v0 + 176);
      if (*(*(v0 + 200) + *(v57 + 20)) == 6)
      {
        v59 = 0;
      }

      else
      {
        v59 = *(*(v0 + 200) + *(v57 + 20));
      }

      v70(*(v0 + 176), *(v0 + 280), *(v0 + 248));
      *(v58 + *(v57 + 20)) = v59;
      goto LABEL_16;
    }

    sub_22C36DD28(*(v0 + 240), &qword_27D9BD2A8, &qword_22C920540);
  }

  v3 = *(v0 + 352);
  v4 = *(v0 + 200);
  sub_22C90400C();
  sub_22C373A34();
  sub_22C7C2788(v4, v3);
  v5 = sub_22C9063CC();
  v6 = sub_22C90AABC();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 568);
  v9 = *(v0 + 560);
  v10 = *(v0 + 552);
  v11 = *(v0 + 544);
  v12 = *(v0 + 456);
  v69 = *(v0 + 424);
  v13 = *(v0 + 352);
  if (v7)
  {
    sub_22C37FE78();
    v68 = v8;
    v14 = swift_slowAlloc();
    sub_22C36FE8C();
    v71 = swift_slowAlloc();
    *v14 = 136315394;
    sub_22C36EE00();
    *(v14 + 4) = sub_22C36F9F4(0xD00000000000006CLL, v15, &v71);
    *(v14 + 12) = 2080;
    sub_22C7FE524();
    sub_22C36B740();
    sub_22C7C27E0(v13, v16);
    v17 = sub_22C36BAFC();
    v20 = sub_22C36F9F4(v17, v18, v19);

    *(v14 + 14) = v20;
    _os_log_impl(&dword_22C366000, v5, v6, "QDInternal: Protocol substitution | %s\nJoint Resolver did not resolve to a Direct Execute tool, pass-thru the original protocol: %s", v14, 0x16u);
    swift_arrayDestroy();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v68(v12, v69);
    (*(v10 + 8))(v9, v11);
  }

  else
  {

    sub_22C36B740();
    sub_22C7C27E0(v13, v21);
    v8(v12, v69);
    v22 = sub_22C36BAFC();
    v24(v22, v23);
  }

  sub_22C373A34();
  sub_22C7C2788(v25, v26);
LABEL_16:
  sub_22C36FF94((v0 + 96));

  sub_22C371D74();
  sub_22C7C2A18(v60);
  sub_22C374168((v0 + 16), *(v0 + 40));
  sub_22C7C293C();
  v61 = sub_22C36CA88();
  v62(v61);
  sub_22C36FF94((v0 + 16));

  sub_22C369A24();

  return v63();
}

uint64_t sub_22C7BF2DC()
{
  v1 = sub_22C6B02C0();
  v2(v1);
  sub_22C36FF94(v0 + 12);

  sub_22C371D74();
  sub_22C7C2A18(v3);
  v4 = v0[5];
  v5 = v0[6];
  sub_22C374168(v0 + 2, v4);
  sub_22C7C293C();
  v6(v4, v5);
  sub_22C36FF94(v0 + 2);

  sub_22C369A24();

  return v7();
}

unint64_t sub_22C7BF4A4(uint64_t a1, char *a2, uint64_t a3)
{
  v57 = a1;
  v5 = sub_22C908D6C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v75 = &v56 - v10;
  v70 = sub_22C908EAC();
  v11 = *(v70 - 8);
  v12 = MEMORY[0x28223BE20](v70);
  v59 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v69 = &v56 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v56 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v56 - v19;
  type metadata accessor for ContextRetrievalService();
  result = static ContextRetrievalService.shouldFilterMusicToolsGivenContext(retrievedContext:)(a3);
  v66 = v11;
  if (result)
  {
    v62 = v18;
    v22 = 0;
    v71 = *(a2 + 2);
    v65 = v11 + 16;
    v63 = (v11 + 8);
    v23 = MEMORY[0x277D84F90];
    v64 = (v11 + 32);
    v68 = a2;
    for (i = v20; ; v20 = i)
    {
      v67 = v23;
LABEL_4:
      if (v22 == v71)
      {
        break;
      }

      v73 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v72 = *(v11 + 72);
      (*(v11 + 16))(v20, &a2[v73 + v72 * v22], v70);
      if (qword_27D9BA7B0 != -1)
      {
        swift_once();
      }

      ++v22;
      v24 = qword_27D9E4018;
      v25 = sub_22C908E7C();
      v27 = v26;
      if (*(v24 + 16))
      {
        v28 = v25;
        sub_22C90B62C();
        sub_22C909FFC();
        v29 = sub_22C90B66C();
        v30 = ~(-1 << *(v24 + 32));
        while (1)
        {
          v31 = v29 & v30;
          if (((*(v24 + 56 + (((v29 & v30) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v29 & v30)) & 1) == 0)
          {
            break;
          }

          v32 = (*(v24 + 48) + 16 * v31);
          if (*v32 != v28 || v32[1] != v27)
          {
            v34 = sub_22C90B4FC();
            v29 = v31 + 1;
            if ((v34 & 1) == 0)
            {
              continue;
            }
          }

          v20 = i;
          (*v63)(i, v70);

          v11 = v66;
          v23 = v67;
          a2 = v68;
          goto LABEL_4;
        }
      }

      v35 = *v64;
      v36 = v62;
      (*v64)(v62, i, v70);
      v23 = v67;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v77 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C3B7AE0(0, *(v23 + 2) + 1, 1);
        v23 = v77;
      }

      v11 = v66;
      v39 = *(v23 + 2);
      v38 = *(v23 + 3);
      if (v39 >= v38 >> 1)
      {
        sub_22C3B7AE0(v38 > 1, v39 + 1, 1);
        v23 = v77;
      }

      *(v23 + 2) = v39 + 1;
      result = (v35)(&v23[v73 + v39 * v72], v36, v70);
      a2 = v68;
    }
  }

  else
  {

    v23 = a2;
  }

  v40 = 0;
  v63 = *(v23 + 2);
  v62 = (v11 + 16);
  v73 = v6 + 32;
  i = (v6 + 16);
  v41 = *MEMORY[0x277D72188];
  LODWORD(v72) = *MEMORY[0x277D72180];
  LODWORD(v71) = *MEMORY[0x277D72178];
  v42 = (v6 + 8);
  v61 = (v11 + 8);
  v58 = (v11 + 32);
  v60 = MEMORY[0x277D84F90];
  v67 = v23;
  while (1)
  {
LABEL_23:
    if (v40 == v63)
    {

      MEMORY[0x28223BE20](v55);
      *(&v56 - 2) = v57;
      return sub_22C47B8F0(sub_22C6AE7D8, (&v56 - 4), v60);
    }

    if (v40 >= *(v23 + 2))
    {
      break;
    }

    v65 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v64 = *(v11 + 72);
    (*(v11 + 16))(v69, &v23[v65 + v64 * v40], v70);
    v68 = v40 + 1;
    result = sub_22C908DEC();
    v43 = result;
    v44 = 0;
    v45 = *(result + 16);
    while (v45 != v44)
    {
      if (v44 >= *(v43 + 16))
      {
        __break(1u);
        goto LABEL_42;
      }

      v46 = v75;
      (*(v6 + 16))(v75, v43 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v44, v5);
      (*(v6 + 32))(v9, v46, v5);
      v47 = (*(v6 + 88))(v9, v5);
      if (v47 == v41)
      {

        (*v42)(v9, v5);
        goto LABEL_39;
      }

      if (v47 == v72 || v47 == v71)
      {

LABEL_39:
        result = (*v61)(v69, v70);
        v11 = v66;
        v23 = v67;
        v40 = v68;
        goto LABEL_23;
      }

      result = (*v42)(v9, v5);
      ++v44;
    }

    v48 = *v58;
    (*v58)(v59, v69, v70);
    v49 = v60;
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v51 = v49;
    v76[0] = v49;
    if ((v50 & 1) == 0)
    {
      sub_22C3B7AE0(0, *(v49 + 16) + 1, 1);
      v51 = v76[0];
    }

    v11 = v66;
    v23 = v67;
    v53 = *(v51 + 16);
    v52 = *(v51 + 24);
    v54 = v53 + 1;
    if (v53 >= v52 >> 1)
    {
      v60 = v53 + 1;
      sub_22C3B7AE0(v52 > 1, v53 + 1, 1);
      v54 = v60;
      v23 = v67;
      v51 = v76[0];
    }

    *(v51 + 16) = v54;
    v60 = v51;
    result = (v48)(v51 + v65 + v53 * v64, v59, v70);
    v40 = v68;
  }

LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_22C7BFC90(uint64_t a1)
{
  v33 = sub_22C908EAC();
  sub_22C369824();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v11 = v10 - v9;
  v12 = *(a1 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v34 = MEMORY[0x277D84F90];
    sub_22C3B5E2C(0, v12, 0, v5, v6, v7, v8);
    v13 = v34;
    v14 = v3 + 16;
    sub_22C36BA94();
    v16 = a1 + v15;
    v31 = *(v14 + 56);
    v32 = v17;
    v30 = (v14 - 8);
    do
    {
      v18 = v14;
      v32(v11, v16, v33);
      v19 = sub_22C908E7C();
      v21 = v20;
      (*v30)(v11, v33);
      v27 = *(v34 + 16);
      v26 = *(v34 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_22C3B5E2C(v26 > 1, v27 + 1, 1, v22, v23, v24, v25);
      }

      *(v34 + 16) = v27 + 1;
      v28 = v34 + 16 * v27;
      *(v28 + 32) = v19;
      *(v28 + 40) = v21;
      v16 += v31;
      --v12;
      v14 = v18;
    }

    while (v12);
  }

  MEMORY[0x2318B7AD0](v13, MEMORY[0x277D837D0]);

  return sub_22C36BA00();
}

uint64_t sub_22C7BFE50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a1;
  v19 = a3;
  v4 = sub_22C9037DC();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_22C90377C();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_22C908EAC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C9037EC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v18, v6);
  sub_22C90374C();
  sub_22C90378C();
  sub_22C90379C();
  sub_22C90372C(0.0);
  v14 = type metadata accessor for RetrievedToolWithAttribution(0);
  if (*(a2 + *(v14 + 20)) == 6)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(a2 + *(v14 + 20));
  }

  v16 = v19;
  result = (*(v11 + 32))(v19, v13, v10);
  *(v16 + *(v14 + 20)) = v15;
  return result;
}

uint64_t sub_22C7C00B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 < 0 || *(a2 + 16) <= a1)
  {
    v10 = sub_22C9037EC();
    v8 = a3;
    v9 = 1;
  }

  else
  {
    DecorationTuple = type metadata accessor for QueryDecorationTuple(0);
    sub_22C3699B8(DecorationTuple);
    v5 = sub_22C9037EC();
    sub_22C36985C();
    v6 = sub_22C36BA00();
    v7(v6);
    v8 = a3;
    v9 = 0;
    v10 = v5;
  }

  return sub_22C36C640(v8, v9, 1, v10);
}

uint64_t sub_22C7C01B4()
{
  sub_22C369980();
  v1[27] = v2;
  v1[28] = v0;
  v1[25] = v3;
  v1[26] = v4;
  v5 = sub_22C90292C();
  v1[29] = v5;
  sub_22C3699B8(v5);
  v1[30] = v6;
  v1[31] = sub_22C3699D4();
  v7 = sub_22C90622C();
  v1[32] = v7;
  sub_22C3699B8(v7);
  v1[33] = v8;
  v1[34] = sub_22C3699D4();
  v9 = sub_22C90069C();
  v1[35] = v9;
  sub_22C3699B8(v9);
  v1[36] = v10;
  v1[37] = sub_22C3699D4();
  v11 = _s10ModelInputVMa(0);
  v1[38] = v11;
  sub_22C369914(v11);
  v1[39] = sub_22C3699D4();
  v12 = sub_22C3A5908(&qword_27D9BF2C0, &qword_22C925300);
  sub_22C369914(v12);
  v1[40] = sub_22C36D0D4();
  v1[41] = swift_task_alloc();
  v13 = type metadata accessor for JointResolution.DeviceContext(0);
  v1[42] = v13;
  sub_22C369914(v13);
  v1[43] = sub_22C36D0D4();
  v1[44] = swift_task_alloc();
  v14 = sub_22C90063C();
  v1[45] = v14;
  sub_22C3699B8(v14);
  v1[46] = v15;
  v1[47] = sub_22C3699D4();
  v16 = sub_22C9063DC();
  v1[48] = v16;
  sub_22C3699B8(v16);
  v1[49] = v17;
  v1[50] = sub_22C36D0D4();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

void sub_22C7C0458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_22C7C2AA8();
  a27 = v29;
  a28 = v30;
  a26 = v28;
  sub_22C90407C();
  v31 = sub_22C9063CC();
  v32 = sub_22C90AACC();
  v33 = sub_22C36D08C(v32);
  v34 = *(v28 + 392);
  if (v33)
  {
    v35 = sub_22C36FB44();
    sub_22C370220();
    v36 = swift_slowAlloc();
    a16 = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_22C37B0CC(v36, 0x800000022C935810, &a16);
    sub_22C374ED0();
    _os_log_impl(v37, v38, v39, v40, v41, 0xCu);
    sub_22C36FF94(v36);
    v42 = sub_22C3816C4();
    MEMORY[0x2318B9880](v42);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v43 = *(v34 + 8);
  v44 = sub_22C36BAFC();
  v43(v44);
  *(v28 + 448) = v43;
  v45 = *(*(v28 + 216) + 16);
  if (v45)
  {
    sub_22C90052C();
    sub_22C90407C();
    v46 = sub_22C9063CC();
    v47 = sub_22C90AACC();
    if (sub_22C370048(v47))
    {
      v48 = sub_22C36FB44();
      sub_22C370220();
      v49 = swift_slowAlloc();
      a16 = v49;
      *v48 = 136315138;
      sub_22C36EE00();
      *(v48 + 4) = sub_22C37B0CC(v50, v51, &a16);
      sub_22C7C29D0();
      _os_log_impl(v52, v53, v54, v55, v56, 0xCu);
      sub_22C36FF94(v49);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      v57 = sub_22C3816C4();
      MEMORY[0x2318B9880](v57);
    }

    v58 = sub_22C36D264();
    v43(v58);
    v59 = *(v28 + 216);
    a16 = MEMORY[0x277D84F90];
    sub_22C3B781C(0, v45, 0);
    v60 = a16;
    DecorationTuple = type metadata accessor for QueryDecorationTuple(0);
    sub_22C3699B8(DecorationTuple);
    v63 = v59 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
    v65 = *(v64 + 72);
    do
    {
      sub_22C7C1FA4(v63);
      v67 = v66;
      a16 = v60;
      v69 = v60[2];
      v68 = v60[3];
      if (v69 >= v68 >> 1)
      {
        sub_22C3B781C(v68 > 1, v69 + 1, 1);
        v60 = a16;
      }

      v60[2] = v69 + 1;
      v60[v69 + 4] = v67;
      v63 += v65;
      --v45;
    }

    while (v45);
    swift_getKeyPath();
    v70 = v60[2];
    *(v28 + 456) = v70;
    if (v70)
    {
      a16 = MEMORY[0x277D84F90];
      sub_22C3B7698(0, v70, 0);
      v71 = a16;
      v72 = v60 + 4;
      do
      {
        *(v28 + 192) = *v72;

        swift_getAtKeyPath();

        v73 = *(v28 + 184);
        a16 = v71;
        v75 = v71[2];
        v74 = v71[3];
        if (v75 >= v74 >> 1)
        {
          v76 = sub_22C369AB0(v74);
          sub_22C3B7698(v76, v75 + 1, 1);
          v71 = a16;
        }

        v71[2] = v75 + 1;
        v71[v75 + 4] = v73;
        ++v72;
        --v70;
      }

      while (v70);
    }

    else
    {

      v71 = MEMORY[0x277D84F90];
    }

    v78 = sub_22C3D0D14(v71);
    v80 = v79;

    *(v28 + 464) = v78;
    *(v28 + 73) = v80;
    *(v28 + 472) = sub_22C74C164(v60, MEMORY[0x277D84F90], MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
    *(v28 + 480) = v81;
    *(v28 + 488) = v82;
    *(v28 + 496) = v83;
    v92 = *(v28 + 208);
    sub_22C374168((*(v28 + 224) + 64), *(*(v28 + 224) + 88));
    *(v28 + 504) = *(v92 + 96);
    sub_22C903C0C();
    *(v28 + 512) = v93;
    swift_task_alloc();
    sub_22C36CC90();
    *(v28 + 520) = v94;
    *v94 = v95;
    v94[1] = sub_22C7C0A34;
    sub_22C378644();

    sub_22C740278(v96, v97, v98, v99, v100);
  }

  else
  {
    sub_22C388A34();
    v77 = *(v28 + 200);

    v77[1] = 0u;
    v77[2] = 0u;
    *v77 = 0u;
    sub_22C369A24();
    sub_22C378644();

    v85(v84, v85, v86, v87, v88, v89, v90, v91, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }
}

uint64_t sub_22C7C0A34()
{
  sub_22C36FB38();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v3 + 528) = v0;

  if (v0)
  {
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C7C1068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22C36CC74();
  (*(v18[46] + 8))(v18[47], v18[45]);
  v19 = sub_22C7C28C4();
  sub_22C386B20(v19, v20, v21, v22, v23, v24, v25, v26);

  sub_22C369A24();
  sub_22C375E04();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_22C7C115C(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  v6 = *(v3 + 328);
  v7 = *(v3 + 320);
  v8 = *v1;
  *v5 = *v1;
  *(v4 + 552) = a1;

  sub_22C36DD28(v7, &qword_27D9BF2C0, &qword_22C925300);
  sub_22C36DD28(v6, &qword_27D9BF2C0, &qword_22C925300);
  v9 = swift_task_alloc();
  *(v4 + 560) = v9;
  *v9 = v8;
  v9[1] = sub_22C7C1378;

  return sub_22C755550();
}

uint64_t sub_22C7C1378(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  sub_22C369970();
  *v7 = v6;
  *v7 = *v3;
  v6[71] = v2;

  if (!v2)
  {
    v6[72] = a2;
    v6[73] = a1;
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C7C1830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22C36CC74();
  a25 = v27;
  a26 = v28;
  a24 = v26;
  v29 = *(v26 + 568);
  sub_22C90401C();
  v30 = v29;
  v31 = sub_22C9063CC();
  v32 = sub_22C90AADC();

  v33 = os_log_type_enabled(v31, v32);
  v34 = *(v26 + 568);
  if (v33)
  {
    v35 = sub_22C36FB44();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    v37 = v34;
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 4) = v38;
    *v36 = v38;
    _os_log_impl(&dword_22C366000, v31, v32, "[RECOVERABLE_ERROR]: %@", v35, 0xCu);
    sub_22C36DD28(v36, &qword_27D9BB158, qword_22C910FD0);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    v39 = sub_22C36D66C();
    MEMORY[0x2318B9880](v39);
  }

  else
  {
  }

  v40 = *(v26 + 456);
  v42 = *(v26 + 344);
  v41 = *(v26 + 352);
  v44 = *(v26 + 304);
  v43 = *(v26 + 312);
  v45 = *(v26 + 296);
  v47 = *(v26 + 264);
  v46 = *(v26 + 272);
  v82 = *(v26 + 256);
  v48 = *(v26 + 208);
  v81 = *(v26 + 472);
  v83 = *(v26 + 488);
  (*(v26 + 448))(*(v26 + 416), *(v26 + 384));
  sub_22C3875B8();
  sub_22C7C2788(v41, v42);
  v49 = sub_22C5C8B28(0x7FFuLL);
  v50 = (v49 + 1) & ~((v49 + 1) >> 63);
  sub_22C7C28AC();
  sub_22C7C2730(v42, v43);
  v51 = (v43 + v44[5]);
  *v51 = v81;
  v51[1] = v83;
  v52 = MEMORY[0x277D84F90];
  v53 = (v43 + v44[6]);
  *v53 = MEMORY[0x277D84F90];
  v53[1] = v52;
  *(v43 + v44[7]) = v52;
  v54 = (v43 + v44[8]);
  *v54 = v52;
  v54[1] = v40;
  v55 = v43 + v44[9];
  *v55 = 0;
  *(v55 + 8) = 0;
  *(v55 + 16) = v50;
  *(v43 + v44[10]) = 1;
  *(v43 + v44[11]) = v52;
  sub_22C90068C();
  v56 = v48[5];
  v57 = v48[6];
  sub_22C374168(v48 + 2, v56);
  sub_22C90621C();
  (*(v57 + 96))(v45, v46, v56, v57);
  (*(v47 + 8))(v46, v82);
  sub_22C90407C();
  v58 = sub_22C9063CC();
  v59 = sub_22C90AACC();
  v60 = sub_22C36D08C(v59);
  v61 = *(v26 + 448);
  if (v60)
  {
    v62 = sub_22C36FB44();
    sub_22C370220();
    v63 = swift_slowAlloc();
    a15 = v63;
    *v62 = 136315138;
    sub_22C36EE00();
    *(v62 + 4) = sub_22C37B0CC(v64, v65, &a15);
    sub_22C374ED0();
    _os_log_impl(v66, v67, v68, v69, v70, 0xCu);
    sub_22C36FF94(v63);
    v71 = sub_22C3816C4();
    MEMORY[0x2318B9880](v71);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v72 = sub_22C36BAFC();
  v61(v72);
  v73 = sub_22C7C2948();
  sub_22C7C29A0(v73, v74);
  sub_22C374168(v48 + 2, v48[5]);
  v75 = sub_22C3776E4();
  v76(v75);
  swift_task_alloc();
  sub_22C36CC90();
  *(v26 + 600) = v77;
  *v77 = v78;
  sub_22C3787B0(v77);
  sub_22C375E04();

  return sub_22C750500();
}

uint64_t sub_22C7C1BC8()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v3 + 608) = v0;

  if (v0)
  {
    (*(*(v3 + 240) + 8))(*(v3 + 248), *(v3 + 232));
  }

  else
  {
    v8 = *(v3 + 240);
    v7 = *(v3 + 248);
    v9 = *(v3 + 232);
    v10 = *(v3 + 160);
    *(v3 + 616) = *(v3 + 144);
    *(v3 + 632) = v10;
    *(v3 + 648) = *(v3 + 176);
    (*(v8 + 8))(v7, v9);
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C7C1D24()
{
  v12 = *(v0 + 648);
  v11 = *(v0 + 632);
  v1 = sub_22C38B504();
  v2(v1);
  sub_22C7C2904();
  sub_22C7C28DC();
  v3 = sub_22C36BBCC();
  v4(v3);
  v10 = *(v0 + 616);
  if (*(v0 + 73))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v0 + 464);
  }

  v9 = v5;
  sub_22C388A34();
  v6 = *(v0 + 200);

  *v6 = v10;
  *(v6 + 16) = v11;
  *(v6 + 32) = v12;
  *(v6 + 40) = v9;
  sub_22C369A24();

  return v7();
}

uint64_t sub_22C7C1E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22C36CC74();
  v18 = sub_22C38B504();
  v19(v18);
  sub_22C7C2904();
  sub_22C7C28DC();
  v20 = sub_22C36BBCC();
  v21(v20);
  v22 = sub_22C7C28C4();
  sub_22C386B20(v22, v23, v24, v25, v26, v27, v28, v29);

  sub_22C369A24();
  sub_22C375E04();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

void sub_22C7C1FA4(uint64_t a1)
{
  DecorationTupleParameter = type metadata accessor for QueryDecorationTupleParameter(0);
  v35 = *(DecorationTupleParameter - 8);
  v36 = DecorationTupleParameter;
  MEMORY[0x28223BE20](DecorationTupleParameter);
  v34 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C7E60B0(&v37);
  v31 = v38;
  v32 = v37;
  v30 = v39;
  v29 = v40;
  v4 = *(a1 + *(type metadata accessor for QueryDecorationTuple(0) + 20));
  v5 = v4 + 56;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 56);
  v9 = (v6 + 63) >> 6;
  v41 = v4;

  v10 = 0;
  v33 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v10;
    if (!v8)
    {
      break;
    }

LABEL_8:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = v34;
    sub_22C7C2788(*(v41 + 48) + *(v35 + 72) * (v12 | (v10 << 6)), v34);
    sub_22C7E4F60();
    sub_22C7C27E0(v13, type metadata accessor for QueryDecorationTupleParameter);
    v14 = v37;
    v15 = v38;
    v16 = v39;
    v17 = v40;
    if (v38)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C594258(0, *(v33 + 16) + 1, 1, v33);
        v33 = v23;
      }

      v19 = *(v33 + 16);
      v18 = *(v33 + 24);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v27 = *(v33 + 16);
        v28 = v19 + 1;
        sub_22C594258(v18 > 1, v19 + 1, 1, v33);
        v19 = v27;
        v20 = v28;
        v33 = v24;
      }

      v21 = v33;
      *(v33 + 16) = v20;
      v22 = v21 + 40 * v19;
      *(v22 + 32) = v14;
      *(v22 + 40) = v15;
      *(v22 + 48) = v16;
      *(v22 + 56) = v17;
    }

    else
    {
      sub_22C7C2838(v37, 0);
    }
  }

  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      sub_22C3A5908(&qword_27D9BAC10, &qword_22C90D4B0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_22C90F800;
      v26 = v31;
      *(v25 + 32) = v32;
      *(v25 + 40) = v26;
      *(v25 + 48) = v30;
      *(v25 + 56) = v29;
      v37 = v25;
      sub_22C3CEF98(v33);
      return;
    }

    v8 = *(v5 + 8 * v10);
    ++v11;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_22C7C229C()
{
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_22C7C2348;

  return sub_22C7C01B4();
}

uint64_t sub_22C7C2348()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = *v1;
  v4 = *(v3 + 32);
  *(v3 + 120) = *(v3 + 16);
  *(v3 + 112) = v0;
  *(v3 + 136) = v4;
  *(v3 + 152) = *(v3 + 48);

  if (v0)
  {
    v5 = *(v2 + 8);

    return v5();
  }

  else
  {
    sub_22C36BB08();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_22C7C2498(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 136);
  if (v3)
  {
    v5 = *(v2 + 144);
    v4 = *(v2 + 152);
    v6 = *(v2 + 112);
    *(v2 + 64) = *(v2 + 120);
    *(v2 + 80) = v3;
    *(v2 + 88) = v5;
    *(v2 + 96) = v4;
    sub_22C7432D0(a1, a2);
    v8 = v7;

    if (v6)
    {
      sub_22C369A24();

      return v9();
    }

    if (v8 - 1 >= 2 && v8)
    {
      v11 = sub_22C36BBCC();
      sub_22C601E0C(v11, v12, 3);
    }
  }

  v13 = sub_22C792134();

  return v14(v13);
}

uint64_t sub_22C7C25C8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  swift_task_alloc();
  sub_22C36CC90();
  *(v3 + 16) = v12;
  *v12 = v13;
  v12[1] = sub_22C382AF4;

  return sub_22C7BD0EC(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_22C7C26C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9C0278, &qword_22C9267A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C7C2730(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v4(v3);
  sub_22C36985C();
  v5 = sub_22C36BA00();
  v6(v5);
  return a2;
}

uint64_t sub_22C7C2788(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v4(v3);
  sub_22C36985C();
  v5 = sub_22C36BA00();
  v6(v5);
  return a2;
}

uint64_t sub_22C7C27E0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22C7C2838(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_22C7C28DC()
{

  return sub_22C7C27E0(v0, type metadata accessor for JointResolution.DeviceContext);
}

uint64_t sub_22C7C2904()
{

  return sub_22C7C27E0(v0, _s10ModelInputVMa);
}

uint64_t sub_22C7C292C(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t sub_22C7C2948()
{
  sub_22C374168((*(v0 + 224) + 16), *(*(v0 + 224) + 40));

  return sub_22C903C0C();
}

uint64_t sub_22C7C29E0(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

void sub_22C7C2A18(uint64_t a1@<X8>)
{
  *(v3 - 120) = v1;
  *(v3 - 112) = a1;
  v4 = v2[33];
  *(v3 - 104) = v2[34];
  *(v3 - 96) = v4;
  *(v3 - 88) = v2[30];
}

uint64_t sub_22C7C2A3C()
{

  return swift_arrayDestroy();
}

BOOL sub_22C7C2A58(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_22C7C2AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v5 = sub_22C9037EC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v10 = *(a1 + 16);
  v11 = v6 + 16;
  v20 = (v6 + 8);
  v21 = a1;
  v22 = v10;
LABEL_2:
  if (v9 == v10)
  {
    v17 = 1;
    v16 = v23;
  }

  else
  {
    v24 = v9 + 1;
    v12 = v11;
    (*(v6 + 16))(v8, a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v9, v5);
    v13 = a2;
    v14 = *(*a2 + 16);

    v15 = 0;
    while (v14 != v15)
    {
      type metadata accessor for RetrievedToolWithAttribution(0);
      ++v15;
      if (sub_22C90375C())
      {

        (*v20)(v8, v5);
        v9 = v24;
        a2 = v13;
        a1 = v21;
        v10 = v22;
        v11 = v12;
        goto LABEL_2;
      }
    }

    v16 = v23;
    (*(v6 + 32))(v23, v8, v5);
    v17 = 0;
  }

  return sub_22C36C640(v16, v17, 1, v5);
}

void sub_22C7C2CF8()
{
  sub_22C36BA7C();
  v383 = v1;
  v391 = v2;
  v4 = v3;
  v373 = sub_22C9063DC();
  sub_22C369824();
  v372 = v5;
  MEMORY[0x28223BE20](v6);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v7);
  sub_22C36BA64();
  v9 = sub_22C3698F8(v8);
  v434 = type metadata accessor for RetrievedToolWithAttribution(v9);
  sub_22C369824();
  v438 = v10;
  MEMORY[0x28223BE20](v11);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v12);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v13);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v14);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v15);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v16);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v17);
  sub_22C36BA64();
  sub_22C3698F8(v18);
  v19 = sub_22C908D6C();
  sub_22C369824();
  v379 = v20;
  MEMORY[0x28223BE20](v21);
  sub_22C3698E4();
  v448 = v22;
  MEMORY[0x28223BE20](v23);
  sub_22C36BA64();
  v447 = v24;
  v25 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  MEMORY[0x28223BE20](v25 - 8);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v26);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v27);
  sub_22C36BA64();
  sub_22C3698F8(v28);
  v420 = sub_22C9036EC();
  sub_22C369824();
  v418 = v29;
  MEMORY[0x28223BE20](v30);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v31);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v32);
  sub_22C36BA64();
  sub_22C3698F8(v33);
  v426 = sub_22C908EAC();
  sub_22C369824();
  v413 = v34;
  MEMORY[0x28223BE20](v35);
  sub_22C369838();
  sub_22C3698F8(v37 - v36);
  v436 = sub_22C90377C();
  sub_22C369824();
  v39 = v38;
  MEMORY[0x28223BE20](v40);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v41);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v42);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v43);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v44);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v45);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v46);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v47);
  sub_22C36BA64();
  sub_22C3698F8(v48);
  v49 = sub_22C9037EC();
  sub_22C369824();
  v51 = v50;
  MEMORY[0x28223BE20](v52);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v53);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v54);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v55);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v56);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v57);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v58);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v59);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v60);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v61);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v62);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v63);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v64);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v65);
  sub_22C36BA58();
  v441 = v66;
  MEMORY[0x28223BE20](v67);
  v69 = &v370 - v68;
  sub_22C374168((v0 + 16), *(v0 + 40));
  sub_22C37931C();
  v71 = sub_22C37FACC(v70, &v448);
  sub_22C377700(v71);
  sub_22C37FACC(v72, &v410);
  sub_22C37931C();
  v74 = sub_22C37FACC(v73, &v409);
  sub_22C377700(v74);
  v375 = v75;
  v76 = 0;
  v428 = v4;
  v431 = *(v4 + 16);
  v442 = (v51 + 16);
  v432 = *MEMORY[0x277D1ED28];
  v427 = (v39 + 104);
  v384 = v39;
  v435 = (v39 + 8);
  v424 = *MEMORY[0x277D1ED30];
  v417 = *MEMORY[0x277D1ED40];
  v439 = v51 + 8;
  v444 = v51;
  v437 = v51 + 32;
  v77 = MEMORY[0x277D84F90];
  v440 = v49;
  v409 = v19;
  while (1)
  {
    v78 = v430;
    v79 = v429;
    if (v431 == v76)
    {
      break;
    }

    v80 = v77;
    sub_22C371DC0();
    v445 = v82 & ~v81;
    v446 = v76;
    v443 = *(v83 + 72);
    (*(v83 + 16))(v69, v428 + v445 + v443 * v76, v49);
    sub_22C90378C();
    v84 = *v427;
    v85 = v436;
    (*v427)(v78, v432, v436);
    v86 = sub_22C90376C();
    v39 = v435;
    v87 = *v435;
    v88 = sub_22C37BD98();
    v87(v88);
    (v87)(v79, v85);
    if (v86 & 1) != 0 || (sub_22C90378C(), v84(v78, v424, v85), v89 = sub_22C90376C(), v90 = sub_22C37BD98(), v87(v90), (v87)(v79, v85), (v89) || (sub_22C90378C(), v84(v78, v417, v85), v91 = sub_22C90376C(), v92 = sub_22C37BD98(), v87(v92), (v87)(v79, v85), (v91))
    {
      sub_22C3892B0();
      v95 = *v94;
      (*v94)(v441, v69, v440);
      v77 = v80;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v449 = v80;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C36DB40(*(v80 + 2));
        v77 = v449;
      }

      v19 = v409;
      v97 = v446;
      v99 = *(v77 + 2);
      v98 = *(v77 + 3);
      if (v99 >= v98 >> 1)
      {
        v100 = sub_22C369AB0(v98);
        sub_22C3B60C0(v100, v99 + 1, 1);
        v97 = v446;
        v77 = v449;
      }

      v76 = v97 + 1;
      *(v77 + 2) = v99 + 1;
      v49 = v440;
      sub_22C388A64();
      v95();
    }

    else
    {
      sub_22C37ED90();
      v49 = v440;
      v93(v69, v440);
      v76 = v446 + 1;
      v77 = v80;
      v19 = v409;
    }
  }

  v101 = *(v77 + 2);

  v102 = 0;
  v408 = MEMORY[0x277D84F90];
  sub_22C7C61D8();
  v103 = v419;
  v104 = v379;
  while (v101 != v102)
  {
    if (v102 >= *(v77 + 2))
    {
LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);
      goto LABEL_224;
    }

    sub_22C371DC0();
    v105 = sub_22C372DC8();
    v106(v105);
    sub_22C7C5788();
    if (v107)
    {
      sub_22C37ED90();
      v108(v103, v49);
      ++v102;
    }

    else
    {
      v446 = v77;
      sub_22C3892B0();
      v110 = *v109;
      (*v109)(v423, v103, v49);
      v111 = v408;
      v112 = swift_isUniquelyReferenced_nonNull_native();
      v449 = v111;
      if ((v112 & 1) == 0)
      {
        sub_22C36DB40(*(v111 + 2));
        v103 = v419;
        v111 = v449;
      }

      v114 = *(v111 + 2);
      v113 = *(v111 + 3);
      v39 = v114 + 1;
      if (v114 >= v113 >> 1)
      {
        v115 = sub_22C369AB0(v113);
        sub_22C3B60C0(v115, v114 + 1, 1);
        v103 = v419;
        v111 = v449;
      }

      ++v102;
      *(v111 + 2) = v39;
      v408 = v111;
      v49 = v440;
      sub_22C388A64();
      v110();
      sub_22C7C61D8();
      v77 = v446;
      v19 = v409;
    }
  }

  v116 = v408;

  v117 = 0;
  v406 = *(v116 + 2);
  v419 = v418 + 1;
  v402 = v413 + 32;
  v445 = v104 + 32;
  v446 = (v104 + 16);
  v118 = *MEMORY[0x277D72188];
  LODWORD(v443) = *MEMORY[0x277D72180];
  LODWORD(v441) = *MEMORY[0x277D72178];
  v119 = (v104 + 8);
  v418 = (v413 + 8);
  v407 = MEMORY[0x277D84F90];
  while (v117 != v406)
  {
    if (v117 >= *(v116 + 2))
    {
      goto LABEL_221;
    }

    sub_22C37054C();
    v413 = v120;
    v412 = *(v121 + 72);
    v122 = sub_22C372DC8();
    v124 = v123;
    v125(v122);
    v423 = v124 + 1;
    v126 = v404;
    sub_22C90371C();
    v127 = v405;
    sub_22C9036BC();
    sub_22C36BA4C();
    v128(v126, v420);
    sub_22C3724D4(v127);
    if (!v163)
    {
      sub_22C36BA4C();
      v129(v422, v127, v39);
      v130 = sub_22C908DEC();
      v131 = 0;
      v49 = *(v130 + 16);
      while (1)
      {
        if (v49 == v131)
        {
          sub_22C36BA4C();
          v136(v422, v426);

          v49 = v440;
          goto LABEL_35;
        }

        if (v131 >= *(v130 + 16))
        {
          break;
        }

        sub_22C36BA94();
        v133 = v447;
        (*(v104 + 16))(v447, v130 + v132 + *(v104 + 72) * v131, v19);
        v134 = v448;
        (*(v104 + 32))(v448, v133, v19);
        v135 = (*(v104 + 88))(v134, v19);
        if (v135 == v118)
        {

          (*v119)(v448, v19);
          goto LABEL_41;
        }

        if (v135 == v443 || v135 == v441)
        {

LABEL_41:
          sub_22C36BA4C();
          v39 = v426;
          v142(v422, v426);
          sub_22C37ED90();
          v143 = sub_22C383498();
          v144(v143);
          goto LABEL_42;
        }

        (*v119)(v448, v19);
        ++v131;
      }

      __break(1u);
      goto LABEL_220;
    }

    sub_22C3770B0(v127, &qword_27D9BC1E8, &qword_22C9123B0);
LABEL_35:
    sub_22C3892B0();
    v138 = *v137;
    (*v137)(v395, v425, v49);
    v139 = v407;
    v140 = swift_isUniquelyReferenced_nonNull_native();
    v449 = v139;
    if ((v140 & 1) == 0)
    {
      sub_22C36DB40(*(v139 + 2));
      v139 = v449;
    }

    v39 = *(v139 + 2);
    v141 = *(v139 + 3);
    if (v39 >= v141 >> 1)
    {
      v145 = sub_22C369AB0(v141);
      sub_22C3B60C0(v145, v39 + 1, 1);
      v139 = v449;
    }

    *(v139 + 2) = v39 + 1;
    v407 = v139;
    sub_22C388A64();
    v138();
    sub_22C7C61D8();
LABEL_42:
    v116 = v408;
    v117 = v423;
  }

  v146 = v407;
  v452 = v407;
  v147 = type metadata accessor for ContextRetrievalService();
  v148 = v383;
  if (static ContextRetrievalService.shouldFilterMusicToolsGivenContext(retrievedContext:)(v383))
  {
    v447 = v147;
    v149 = 0;
    v150 = MEMORY[0x277D84F90];
    v448 = *(v146 + 2);
    for (i = v146; ; i = v407)
    {
      v152 = v394;
LABEL_47:
      if (v149 == v448)
      {
        break;
      }

      if (v149 >= *(i + 2))
      {
        goto LABEL_226;
      }

      sub_22C371DC0();
      v153 = sub_22C372DC8();
      v154(v153);
      ++v149;
      v155 = v393;
      sub_22C90371C();
      sub_22C9036BC();
      sub_22C36BA4C();
      v156(v155, v420);
      sub_22C3724D4(v152);
      if (v163)
      {
        sub_22C3770B0(v152, &qword_27D9BC1E8, &qword_22C9123B0);
      }

      else
      {
        v157 = sub_22C908E7C();
        v158 = v39;
        v39 = v157;
        v49 = v159;
        (*v418)(v152, v158);
        if (qword_27D9BA7B0 != -1)
        {
          sub_22C370A64();
          swift_once();
        }

        v160 = qword_27D9E4018;
        if (*(qword_27D9E4018 + 16))
        {
          sub_22C90B62C();
          sub_22C909FFC();
          sub_22C90B66C();
          sub_22C3724BC();
          while (1)
          {
            sub_22C382950();
            if ((v161 & 1) == 0)
            {
              break;
            }

            v162 = (*(v160 + 48) + 16 * v152);
            v163 = *v162 == v39 && v162[1] == v49;
            if (v163 || (sub_22C90B4FC() & 1) != 0)
            {

              sub_22C37ED90();
              v164 = sub_22C383498();
              v165(v164);
              sub_22C7C61D8();
              v152 = v394;
              i = v407;
              goto LABEL_47;
            }
          }
        }

        v49 = v440;
      }

      sub_22C3892B0();
      v167 = *v166;
      (*v166)(v390, v403, v49);
      v168 = swift_isUniquelyReferenced_nonNull_native();
      v451 = v150;
      if ((v168 & 1) == 0)
      {
        v169 = sub_22C373310();
        sub_22C3B60C0(v169, v170, v171);
        v150 = v451;
      }

      v173 = *(v150 + 2);
      v172 = *(v150 + 3);
      v39 = v173 + 1;
      if (v173 >= v172 >> 1)
      {
        v174 = sub_22C369AB0(v172);
        sub_22C3B60C0(v174, v173 + 1, 1);
        v150 = v451;
      }

      *(v150 + 2) = v39;
      sub_22C388A64();
      v167();
      sub_22C7C61D8();
    }

    v452 = v150;
    v148 = v383;
  }

  if (static ContextRetrievalService.shouldFilterMusicToolsGivenContext(retrievedContext:)(v148))
  {
    if (v391)
    {
      v175 = 0;
      v176 = MEMORY[0x277D84F90];
      v448 = *(v391 + 2);
LABEL_72:
      while (v175 != v448)
      {
        sub_22C371DC0();
        v177 = sub_22C372DC8();
        v178(v177);
        ++v175;
        v179 = v388;
        sub_22C90371C();
        v180 = v389;
        sub_22C9036BC();
        sub_22C36BA4C();
        v181(v179, v420);
        v182 = v426;
        if (sub_22C370B74(v180, 1, v426) == 1)
        {
          sub_22C3770B0(v180, &qword_27D9BC1E8, &qword_22C9123B0);
        }

        else
        {
          v49 = sub_22C908E7C();
          v184 = v183;
          sub_22C36BA4C();
          v185(v180, v182);
          if (qword_27D9BA7B0 != -1)
          {
            sub_22C370A64();
            swift_once();
          }

          v186 = qword_27D9E4018;
          if (*(qword_27D9E4018 + 16))
          {
            sub_22C90B62C();
            sub_22C909FFC();
            sub_22C90B66C();
            sub_22C3724BC();
            while (1)
            {
              sub_22C382950();
              if ((v187 & 1) == 0)
              {
                break;
              }

              v188 = (*(v186 + 48) + 16 * v180);
              v189 = *v188 == v49 && v188[1] == v184;
              if (v189 || (sub_22C90B4FC() & 1) != 0)
              {

                sub_22C37ED90();
                v190 = sub_22C383498();
                v191(v190);
                goto LABEL_72;
              }
            }
          }

          v49 = v440;
        }

        sub_22C3892B0();
        v193 = *v192;
        (*v192)(v387, v397, v49);
        v194 = swift_isUniquelyReferenced_nonNull_native();
        v451 = v176;
        if ((v194 & 1) == 0)
        {
          v195 = sub_22C373310();
          sub_22C3B60C0(v195, v196, v197);
          v176 = v451;
        }

        v199 = *(v176 + 2);
        v198 = *(v176 + 3);
        if (v199 >= v198 >> 1)
        {
          v200 = sub_22C369AB0(v198);
          sub_22C3B60C0(v200, v199 + 1, 1);
          v176 = v451;
        }

        *(v176 + 2) = v199 + 1;
        sub_22C388A64();
        v193();
      }

      v391 = v176;
    }

    else
    {
      v391 = 0;
    }
  }

  else
  {
  }

  v201 = 0;
  LODWORD(v447) = *MEMORY[0x277D1ED38];
  v446 = MEMORY[0x277D84F90];
  v202 = v382;
  while (v431 != v201)
  {
    sub_22C371DC0();
    v203 = sub_22C372DC8();
    v204(v203);
    v205 = v429;
    sub_22C90378C();
    sub_22C36BA4C();
    v206 = v430;
    v207 = v436;
    v208(v430, v447, v436);
    LODWORD(v448) = sub_22C90376C();
    v209 = *v435;
    (*v435)(v206, v207);
    (v209)(v205, v207);
    if (v448)
    {
      sub_22C3892B0();
      v212 = *v211;
      (*v211)(v386, v202, v49);
      v213 = v446;
      v214 = swift_isUniquelyReferenced_nonNull_native();
      v215 = v213;
      v449 = v213;
      if ((v214 & 1) == 0)
      {
        sub_22C36DB40(*(v213 + 2));
        v202 = v382;
        v215 = v449;
      }

      v217 = *(v215 + 2);
      v216 = *(v215 + 3);
      if (v217 >= v216 >> 1)
      {
        v218 = sub_22C369AB0(v216);
        sub_22C3B60C0(v218, v217 + 1, 1);
        v202 = v382;
        v215 = v449;
      }

      ++v201;
      *(v215 + 2) = v217 + 1;
      v446 = v215;
      sub_22C388A64();
      v212();
    }

    else
    {
      sub_22C37ED90();
      v210(v202, v49);
      ++v201;
    }
  }

  v449 = v446;
  v219 = sub_22C7C524C(v378);
  v220 = *(v219 + 16);
  if (v220)
  {
    v451 = MEMORY[0x277D84F90];
    sub_22C3B7CA0(0, v220, 0);
    v221 = 0;
    v222 = v451;
    sub_22C36BA94();
    v448 = v219 + v223;
    v224 = (v384 + 16);
    v225 = (v384 + 88);
    while (v221 < *(v219 + 16))
    {
      v226 = v220;
      v227 = sub_22C372DC8();
      v228(v227);
      v229 = v415;
      sub_22C90378C();
      v230 = v398;
      v231 = v436;
      (*v224)(v398, v229, v436);
      (*v225)(v230, v231);
      sub_22C369908();
      if (v163)
      {
        v232 = 1;
      }

      else
      {
        sub_22C369908();
        if (v233)
        {
          v232 = 2;
        }

        else
        {
          sub_22C369908();
          if (v234)
          {
            v232 = 3;
          }

          else
          {
            if (v235 != v447)
            {
              goto LABEL_229;
            }

            v232 = 4;
          }
        }
      }

      sub_22C36BA4C();
      v236(v415, v436);
      sub_22C36BA4C();
      v237 = v399;
      v238(v399, v414, v49);
      sub_22C3875D0();
      *(v237 + v239) = v232;
      v451 = v222;
      v241 = *(v222 + 2);
      v240 = *(v222 + 3);
      if (v241 >= v240 >> 1)
      {
        v245 = sub_22C369AB0(v240);
        sub_22C3B7CA0(v245, v241 + 1, 1);
        v222 = v451;
      }

      ++v221;
      *(v222 + 2) = v241 + 1;
      sub_22C7C61C0();
      sub_22C7C615C(v244, &v222[v242 + *(v243 + 72) * v241]);
      v220 = v226;
      v49 = v440;
      if (v226 == v221)
      {

        goto LABEL_123;
      }
    }

LABEL_224:
    __break(1u);
    goto LABEL_225;
  }

  v222 = MEMORY[0x277D84F90];
LABEL_123:
  v246 = MEMORY[0x277D84F90];

  v247 = sub_22C7C524C(v377);
  v248 = *(v247 + 16);
  if (v248)
  {
    v451 = v246;
    sub_22C3B7CA0(0, v248, 0);
    v249 = v451;
    sub_22C37054C();
    v448 = v247;
    v251 = v247 + v250;
    v253 = *(v252 + 72);
    v254 = *(v252 + 16);
    v255 = v371;
    do
    {
      v254(v255, v251, v440);
      sub_22C3875D0();
      *(v255 + v256) = 4;
      v451 = v249;
      v258 = *(v249 + 2);
      v257 = *(v249 + 3);
      if (v258 >= v257 >> 1)
      {
        v261 = sub_22C369AB0(v257);
        sub_22C3B7CA0(v261, v258 + 1, 1);
        v255 = v371;
        v249 = v451;
      }

      *(v249 + 2) = v258 + 1;
      sub_22C7C61C0();
      sub_22C7C615C(v255, &v249[v259 + *(v260 + 72) * v258]);
      v251 += v253;
      --v248;
    }

    while (v248);

    v49 = v440;
  }

  else
  {

    v249 = MEMORY[0x277D84F90];
  }

  v262 = *(v222 + 2);

  v263 = *(v249 + 2);

  v264 = v262 + v263;
  v265 = v436;
  if (__OFADD__(v262, v263))
  {
    goto LABEL_228;
  }

  while (1)
  {
    v266 = v449;
    if (!*(v449 + 2) || v264 >= v416)
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C887698();
      v266 = v280;
    }

    v268 = *(v266 + 2);
    if (!v268)
    {
      goto LABEL_222;
    }

    v269 = v268 - 1;
    v270 = v444;
    sub_22C36BA94();
    v272 = &v266[v271];
    (*(v270 + 32))(v433, &v266[v271], v49);
    v273 = *(v270 + 72);
    if (v273 > 0 || v272 >= v272 + v273 + v273 * v269)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v273)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *(v266 + 2) = v269;
    v449 = v266;
    sub_22C3875D0();
    *(v433 + v275) = 4;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C373310();
      sub_22C595EE4();
      v249 = v281;
    }

    v277 = *(v249 + 2);
    v276 = *(v249 + 3);
    if (v277 >= v276 >> 1)
    {
      sub_22C369AB0(v276);
      sub_22C595EE4();
      v249 = v282;
    }

    *(v249 + 2) = v277 + 1;
    sub_22C7C61C0();
    sub_22C7C615C(v433, &v249[v278 + *(v279 + 72) * v277]);
    ++v264;
  }

  v448 = v384 + 16;
  v446 = (v384 + 88);
  v283 = v444;
  while (v264 < v416)
  {
    v284 = v452;
    if (!*(v452 + 2))
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C887698();
      v284 = v306;
    }

    v285 = *(v284 + 2);
    if (!v285)
    {
      goto LABEL_227;
    }

    v286 = v285 - 1;
    sub_22C36BA94();
    v288 = &v284[v287];
    (*(v283 + 32))(v421, &v284[v287], v440);
    v289 = *(v283 + 72);
    if (v289 > 0 || v288 >= v288 + v289 + v289 * v286)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v289)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *(v284 + 2) = v286;
    v452 = v284;
    sub_22C90378C();
    v291 = v392;
    v292 = sub_22C37BD98();
    v293(v292);
    (*v446)(v291, v265);
    sub_22C369908();
    if (v163)
    {
      v294 = 1;
    }

    else
    {
      sub_22C369908();
      if (v295)
      {
        v294 = 2;
      }

      else
      {
        sub_22C369908();
        if (v296)
        {
          v294 = 3;
        }

        else
        {
          if (v297 != v447)
          {
            goto LABEL_229;
          }

          v294 = 4;
        }
      }
    }

    sub_22C36BA4C();
    v298(v400, v265);
    v299 = v401;
    (*v442)(v401, v421, v440);
    sub_22C3875D0();
    *(v299 + v300) = v294;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C373310();
      sub_22C595EE4();
      v222 = v307;
    }

    v302 = *(v222 + 2);
    v301 = *(v222 + 3);
    if (v302 >= v301 >> 1)
    {
      sub_22C369AB0(v301);
      sub_22C595EE4();
      v222 = v308;
    }

    sub_22C37ED90();
    v303(v421, v440);
    *(v222 + 2) = v302 + 1;
    sub_22C7C61C0();
    sub_22C7C615C(v401, &v222[v304 + *(v305 + 72) * v302]);
    ++v264;
  }

  v451 = v249;

  sub_22C3CF02C(v309);
  v310 = v451;
  if (v375 >= 1)
  {
    sub_22C7C5368();
    v310 = v451;
  }

  v311 = v376;
  v312 = MEMORY[0x277D84F90];
  v441 = v310;
  sub_22C7C5BB0();

  v313 = sub_22C7C524C(0x14uLL);
  v314 = *(v313 + 16);
  if (!v314)
  {

    v316 = MEMORY[0x277D84F90];
LABEL_202:
    v334 = 0;
    v335 = *(v316 + 16);
    v336 = MEMORY[0x277D84F90];
    v337 = v381;
    while (v335 != v334)
    {
      if (v334 >= *(v316 + 16))
      {
        goto LABEL_223;
      }

      v338 = (*(v438 + 80) + 32) & ~*(v438 + 80);
      v339 = *(v438 + 72);
      sub_22C7C609C(v316 + v338 + v339 * v334, v337);
      sub_22C7C5788();
      if (v340)
      {
        sub_22C7C6100(v337);
        ++v334;
      }

      else
      {
        sub_22C7C615C(v337, v385);
        v341 = swift_isUniquelyReferenced_nonNull_native();
        v450 = v336;
        if ((v341 & 1) == 0)
        {
          v342 = sub_22C373310();
          sub_22C3B7CA0(v342, v343, v344);
          v337 = v381;
          v336 = v450;
        }

        v346 = *(v336 + 16);
        v345 = *(v336 + 24);
        v347 = v346 + 1;
        if (v346 >= v345 >> 1)
        {
          v348 = sub_22C369AB0(v345);
          v350 = v349;
          v448 = v351;
          sub_22C3B7CA0(v348, v349, 1);
          v347 = v350;
          v346 = v448;
          v337 = v381;
          v336 = v450;
        }

        ++v334;
        *(v336 + 16) = v347;
        sub_22C7C615C(v385, v336 + v338 + v346 * v339);
      }
    }

    v352 = v374;
    sub_22C90400C();

    v353 = v441;

    v354 = sub_22C9063CC();
    v355 = sub_22C90AACC();
    if (os_log_type_enabled(v354, v355))
    {
      v356 = sub_22C370060();
      v357 = v336;
      v358 = sub_22C370060();
      v450 = v358;
      *v356 = 136315650;
      *(v356 + 4) = sub_22C3769D4();
      *(v356 + 12) = 2048;
      *(v356 + 14) = *(v353 + 2);

      *(v356 + 22) = 2048;
      v359 = *(v357 + 16);

      *(v356 + 24) = v359;

      _os_log_impl(&dword_22C366000, v354, v355, "%s selected tools %ld, substitution candidates %ld", v356, 0x20u);
      sub_22C36FF94(v358);
      sub_22C3699EC();
      sub_22C3699EC();
    }

    else
    {
    }

    v360 = *(v372 + 8);
    v361 = v373;
    v360(v352, v373);
    v362 = v380;
    sub_22C90400C();

    v363 = sub_22C9063CC();
    v364 = sub_22C90AABC();

    if (os_log_type_enabled(v363, v364))
    {
      v365 = swift_slowAlloc();
      v450 = swift_slowAlloc();
      *v365 = 136315394;
      *(v365 + 4) = sub_22C3769D4();
      *(v365 + 12) = 2080;
      static QueryDecorationLoggingUtils.generateReadableToolList(_:)();
      v368 = sub_22C36F9F4(v366, v367, &v450);

      *(v365 + 14) = v368;
      _os_log_impl(&dword_22C366000, v363, v364, "%s substitutionCandidates list:\n%s", v365, 0x16u);
      swift_arrayDestroy();
      sub_22C3699EC();
      sub_22C3699EC();

      v369 = v380;
    }

    else
    {

      v369 = v362;
    }

    v360(v369, v361);

    sub_22C36CC48();
    return;
  }

  v450 = v312;
  v445 = v314;
  sub_22C3B7CA0(0, v314, 0);
  v315 = 0;
  v316 = v450;
  sub_22C36BA94();
  v443 = v313 + v317;
  while (v315 < *(v313 + 16))
  {
    v318 = v222;
    v319 = v313;
    (*(v444 + 16))(v410, v443 + *(v444 + 72) * v315, v440);
    v320 = v411;
    sub_22C90378C();
    v321 = v396;
    (*v448)(v396, v320, v265);
    (*v446)(v321, v265);
    sub_22C369908();
    if (v163)
    {
      v322 = 1;
    }

    else
    {
      sub_22C369908();
      if (v323)
      {
        v322 = 2;
      }

      else
      {
        sub_22C369908();
        if (v324)
        {
          v322 = 3;
        }

        else
        {
          if (v325 != v447)
          {
            goto LABEL_229;
          }

          v322 = 4;
        }
      }
    }

    sub_22C36BA4C();
    v326(v411, v265);
    sub_22C36BA4C();
    v327(v311, v410, v440);
    sub_22C3875D0();
    *(v311 + v328) = v322;
    v450 = v316;
    v330 = *(v316 + 16);
    v329 = *(v316 + 24);
    if (v330 >= v329 >> 1)
    {
      v333 = sub_22C369AB0(v329);
      sub_22C3B7CA0(v333, v330 + 1, 1);
      v316 = v450;
    }

    ++v315;
    *(v316 + 16) = v330 + 1;
    sub_22C7C61C0();
    sub_22C7C615C(v311, v316 + v331 + *(v332 + 72) * v330);
    v265 = v436;
    v313 = v319;
    v222 = v318;
    if (v445 == v315)
    {

      goto LABEL_202;
    }
  }

LABEL_225:
  __break(1u);
LABEL_226:
  __break(1u);
LABEL_227:
  __break(1u);
LABEL_228:
  __break(1u);
LABEL_229:
  sub_22C90B4EC();
  __break(1u);
}

uint64_t sub_22C7C524C(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (*(*v2 + 16) >= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = *(*v2 + 16);
  }

  v1 = sub_22C60607C(0, v6, *v2);
  v3 = v7;
  v4 = v8;
  v5 = v9;
  sub_22C7C79EC(v6);
  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_22C90B50C();
  swift_unknownObjectRetain_n();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    v12 = MEMORY[0x277D84F90];
  }

  v13 = *(v12 + 16);

  if (__OFSUB__(v5 >> 1, v4))
  {
    goto LABEL_16;
  }

  if (v13 != (v5 >> 1) - v4)
  {
LABEL_17:
    swift_unknownObjectRelease_n();
LABEL_6:
    sub_22C46FEFC(v1, v3, v4, v5);
    v11 = v10;
LABEL_13:
    swift_unknownObjectRelease();
    return v11;
  }

  v11 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v11)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  return v11;
}

void sub_22C7C5368()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v56 = type metadata accessor for RetrievedToolWithAttribution(0);
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v9 = v8 - v7;
  sub_22C9063DC();
  sub_22C369824();
  v54 = v11;
  v55 = v10;
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v14 = v13 - v12;
  v15 = sub_22C3A5908(&qword_27D9BD2A8, &qword_22C920540);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v45 - v16;
  v18 = sub_22C9037EC();
  sub_22C369824();
  v20 = v19;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v45 - v25;
  if (v1)
  {
    v53 = v5;
    sub_22C7C2AC4(v1, v3, v17);
    if (sub_22C370B74(v17, 1, v18) == 1)
    {
      sub_22C3770B0(v17, &qword_27D9BD2A8, &qword_22C920540);
    }

    else
    {
      (*(v20 + 32))(v26, v17, v18);
      sub_22C90407C();
      v52 = *(v20 + 16);
      v52(v24, v26, v18);
      v27 = sub_22C9063CC();
      v28 = sub_22C90AACC();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v48 = v3;
        v30 = v29;
        v49 = sub_22C370060();
        v57 = v49;
        *v30 = 136315138;
        v47 = v27;
        v45 = sub_22C7FE524();
        v32 = v31;
        v33 = *(v20 + 8);
        v50 = v9;
        v51 = v33;
        v46 = v28;
        v34 = sub_22C37BC38();
        v35(v34);
        v9 = v50;
        v36 = sub_22C36F9F4(v45, v32, &v57);

        v37 = v30;
        *(v30 + 4) = v36;
        v38 = v47;
        v3 = v48;
        _os_log_impl(&dword_22C366000, v47, v46, "Adding %s to the ranked list", v37, 0xCu);
        sub_22C36FF94(v49);
        sub_22C3699EC();
        sub_22C3699EC();
      }

      else
      {

        v51 = *(v20 + 8);
        v39 = sub_22C37BC38();
        v40(v39);
      }

      (*(v54 + 8))(v14, v55);
      v52(v9, v26, v18);
      *(v9 + *(v56 + 20)) = 5;
      sub_22C3D1010();
      v41 = *(*v3 + 16);
      sub_22C3D11D4(v41);
      v51(v26, v18);
      v42 = *v3;
      *(*v3 + 16) = v41 + 1;
      sub_22C37054C();
      sub_22C7C615C(v9, v42 + v43 + *(v44 + 72) * v41);
      *v3 = v42;
    }
  }

  sub_22C36CC48();
}

void sub_22C7C5788()
{
  sub_22C36BA7C();
  sub_22C9063DC();
  sub_22C369824();
  v32 = v1;
  v33 = v0;
  MEMORY[0x28223BE20](v0);
  sub_22C369838();
  v4 = v3 - v2;
  v5 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - v6;
  v8 = sub_22C9036EC();
  sub_22C369824();
  v10 = v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v32 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - v18;
  sub_22C90371C();
  (*(v10 + 32))(v17, v19, v8);
  LODWORD(v19) = (*(v10 + 88))(v17, v8);
  v20 = *MEMORY[0x277D1ECE8];
  v21 = *(v10 + 8);
  v21(v17, v8);
  if (v19 == v20)
  {
    sub_22C90371C();
    sub_22C57709C();
    v21(v14, v8);
    v22 = sub_22C9099FC();
    sub_22C3724D4(v7);
    if (v23)
    {
      sub_22C3770B0(v7, &qword_27D9BDC50, &unk_22C91B470);
    }

    else
    {
      v24 = sub_22C9099DC();
      v26 = v25;
      (*(*(v22 - 8) + 8))(v7, v22);
      v36[0] = 0xD00000000000001CLL;
      v36[1] = 0x800000022C932110;
      v34 = v24;
      v35 = v26;
      sub_22C3858B4();
      v27 = sub_22C90AD8C();
      if (v27)
      {
        sub_22C90400C();

        v28 = sub_22C9063CC();
        v29 = sub_22C90AACC();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v36[0] = swift_slowAlloc();
          *v30 = 136315394;
          *(v30 + 4) = sub_22C36F9F4(0xD000000000000029, 0x800000022C9359F0, v36);
          *(v30 + 12) = 2080;
          v31 = sub_22C36F9F4(v24, v26, v36);

          *(v30 + 14) = v31;
          _os_log_impl(&dword_22C366000, v28, v29, "%s filtering out assistantSchema that should be ignored %s", v30, 0x16u);
          swift_arrayDestroy();
          sub_22C3699EC();
          sub_22C3699EC();
        }

        else
        {
        }

        (*(v32 + 8))(v4, v33);
      }

      else
      {
      }
    }
  }

  sub_22C36CC48();
}

void sub_22C7C5BB0()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_22C9063DC();
  sub_22C369824();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v12 = v11 - v10;
  sub_22C90407C();

  v13 = sub_22C9063CC();
  v14 = sub_22C90AABC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = sub_22C370060();
    v20 = v16;
    *v15 = 136315138;
    v17 = sub_22C7C5D58(v5, v3, v1);
    v19 = sub_22C36F9F4(v17, v18, &v20);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_22C366000, v13, v14, "%s", v15, 0xCu);
    sub_22C36FF94(v16);
    sub_22C3699EC();
    sub_22C3699EC();
  }

  (*(v8 + 8))(v12, v6);
  sub_22C36CC48();
}

uint64_t sub_22C7C5D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RetrievedToolWithAttribution(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C9037EC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = static QueryDecorationLoggingUtils.generateReadableToolList(_:)(a1);
  v29 = v14;
  v30 = static QueryDecorationLoggingUtils.generateReadableToolList(_:)(a2);
  v16 = v15;
  v17 = *(a3 + 16);
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v27 = v15;
    v33 = MEMORY[0x277D84F90];
    sub_22C3B60C0(0, v17, 0);
    v18 = v33;
    v19 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v20 = *(v7 + 72);
    v31 = v11 + 32;
    v32 = v20;
    do
    {
      sub_22C7C609C(v19, v9);
      (*(v11 + 16))(v13, v9, v10);
      sub_22C7C6100(v9);
      v33 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_22C3B60C0(v21 > 1, v22 + 1, 1);
        v18 = v33;
      }

      *(v18 + 16) = v22 + 1;
      (*(v11 + 32))(v18 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v22, v13, v10);
      v19 += v32;
      --v17;
    }

    while (v17);
    v16 = v27;
  }

  v23 = static QueryDecorationLoggingUtils.generateReadableToolList(_:)(v18);
  v25 = v24;

  v33 = 0;
  v34 = 0xE000000000000000;
  sub_22C90AF5C();
  MEMORY[0x2318B7850](0xD000000000000058, 0x800000022C935950);
  MEMORY[0x2318B7850](v28, v29);

  MEMORY[0x2318B7850](0xD00000000000001ALL, 0x800000022C9359B0);
  MEMORY[0x2318B7850](v30, v16);

  MEMORY[0x2318B7850](0xD000000000000015, 0x800000022C9359D0);
  MEMORY[0x2318B7850](v23, v25);

  return v33;
}

uint64_t sub_22C7C609C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RetrievedToolWithAttribution(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C7C6100(uint64_t a1)
{
  v2 = type metadata accessor for RetrievedToolWithAttribution(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C7C615C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RetrievedToolWithAttribution(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22C7C61E4(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v34 = sub_22C9036EC();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RetrievedToolWithAttribution(0);
  v33 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v31 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v11 = v30 - v10;
  v12 = 0;
  v36 = *(a1 + 16);
  v13 = (v3 + 8);
  v32 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v36 == v12)
    {

      return v32;
    }

    if (v12 >= *(a1 + 16))
    {
      break;
    }

    v14 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v15 = *(v33 + 72);
    v16 = a1;
    sub_22C7E4208(a1 + v14 + v15 * v12, v11);
    sub_22C90371C();
    RetrievedTool.Definition.toCandidateIdentifier()();
    (*v13)(v5, v34);
    v17 = v37;
    v18 = v38;

    sub_22C6A4514(&v37, v17, v18, v19, v20, v21, v22, v23, v30[0], v30[1], v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
    LOBYTE(v17) = v24;

    if (v17)
    {
      sub_22C7E4260(v11, v31);
      v25 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C3B7CA0(0, *(v25 + 16) + 1, 1);
        v25 = v42;
      }

      v28 = *(v25 + 16);
      v27 = *(v25 + 24);
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v32 = v28 + 1;
        sub_22C3B7CA0(v27 > 1, v28 + 1, 1);
        v29 = v32;
        v25 = v42;
      }

      ++v12;
      *(v25 + 16) = v29;
      v32 = v25;
      result = sub_22C7E4260(v31, v25 + v14 + v28 * v15);
      a1 = v16;
    }

    else
    {
      result = sub_22C7E42B8(v11, type metadata accessor for RetrievedToolWithAttribution);
      ++v12;
      a1 = v16;
    }
  }

  __break(1u);
  return result;
}

void sub_22C7C650C()
{
  sub_22C3BDA38();
  v2 = v1;
  v4 = v3;
  sub_22C901FAC();
  sub_22C369824();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22C377578();
  v8 = v0[1];
  v33[2] = *v0;
  v33[3] = v8;
  v33[4] = v2;
  v9 = sub_22C7D5D1C(sub_22C7E435C, v33, v8, MEMORY[0x277D1C338]);
  if (v11)
  {
    if (v4 != 3)
    {
      sub_22C7D4F14();
      v14 = v0[2];
      v12 = v0 + 2;
      v13 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v12 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = sub_22C36D270();
        sub_22C3B6F24(v16, v17, v18);
        v13 = *v12;
      }

      v19 = *(v13 + 16);
      v20 = *(v13 + 24);
      v21 = v19 + 1;
      if (v19 >= v20 >> 1)
      {
        v32 = *(v13 + 16);
        sub_22C3B6F24(v20 > 1, v19 + 1, 1);
        v19 = v32;
        v13 = *v12;
      }

      *(v13 + 16) = v21;
      *(v13 + v19 + 32) = v4;
      *v12 = v13;
    }

    v22 = sub_22C37BD98();
    v23(v22);
    goto LABEL_16;
  }

  v24 = v9;
  if (v4 == 3)
  {
    sub_22C7DEF20(v9, v10);
    v25 = *(v6 + 8);
    v26 = sub_22C36D384();
    v25(v26);
    sub_22C7DFB7C(v24);
    v27 = sub_22C37BD98();
    v25(v27);
LABEL_16:
    sub_22C3BDA24();
    return;
  }

  v28 = v0[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C2D0();
    v28 = v29;
  }

  v30 = sub_22C37BD98();
  v31(v30);
  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v24 < *(v28 + 16))
  {
    *(v28 + v24 + 32) = v4;
    v0[2] = v28;
    goto LABEL_16;
  }

  __break(1u);
}

void sub_22C7C6728()
{
  sub_22C36BA7C();
  v4 = v3;
  v6 = v5;
  sub_22C901FAC();
  sub_22C369824();
  v46 = v8;
  v47 = v7;
  MEMORY[0x28223BE20](v7);
  sub_22C3698A8();
  sub_22C36BA0C();
  v9 = sub_22C9070DC();
  sub_22C369824();
  v49 = v10;
  MEMORY[0x28223BE20](v11);
  sub_22C3698E4();
  v45 = v12;
  sub_22C369930();
  MEMORY[0x28223BE20](v13);
  sub_22C36BA58();
  v44 = v14;
  sub_22C369930();
  MEMORY[0x28223BE20](v15);
  sub_22C387D8C();
  MEMORY[0x28223BE20](v16);
  sub_22C36BA64();
  v43 = v17;
  v18 = sub_22C3A5908(&qword_27D9C02A8, &unk_22C9269C8) - 8;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v19);
  sub_22C38059C();
  v20 = v1[1];
  v50[2] = *v1;
  v50[3] = v20;
  v48 = v4;
  v50[4] = v4;
  v21 = sub_22C7D5D1C(sub_22C7E3F94, v50, v20, MEMORY[0x277D1C338]);
  v23 = v22;
  v24 = *(v18 + 56);
  sub_22C4E719C(v6, v2 + v24, &qword_27D9BAA18, &qword_22C911C40);
  sub_22C36D0A8(v2 + v24, 1, v9);
  if (v23)
  {
    if (v25)
    {
      sub_22C36DD28(v6, &qword_27D9BAA18, &qword_22C911C40);
      (*(v46 + 8))(v48, v47);
    }

    else
    {
      v30 = *(v49 + 32);
      v30(v44, v2 + v24, v9);
      sub_22C7D4F14();
      (*(v49 + 16))(v45, v44, v9);
      v33 = v1[2];
      v32 = v1 + 2;
      v31 = v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v32 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C36D270();
        sub_22C3B6D88();
        v31 = *v32;
      }

      v35 = *(v31 + 16);
      if (v35 >= *(v31 + 24) >> 1)
      {
        sub_22C3B6D88();
      }

      sub_22C36DD28(v6, &qword_27D9BAA18, &qword_22C911C40);
      v36 = sub_22C3806B8();
      v37(v36);
      v38 = *v32;
      *(*v32 + 16) = v35 + 1;
      sub_22C36BA94();
      v30(v38 + v39 + *(v49 + 72) * v35, v45, v9);
      *v32 = v38;
      (*(v46 + 8))(v48, v47);
    }

    goto LABEL_18;
  }

  if (v25)
  {
    v26 = sub_22C37335C();
    sub_22C7DEF20(v26, v27);
    v28 = *(v46 + 8);
    v29 = sub_22C36ECB4();
    v28(v29);
    sub_22C7DFBF4();
    sub_22C36DD28(v6, &qword_27D9BAA18, &qword_22C911C40);
    (*(v49 + 8))(v0, v9);
    (v28)(v48, v47);
LABEL_18:
    sub_22C36CC48();
    return;
  }

  (*(v49 + 32))(v43, v2 + v24, v9);
  v40 = v1[2];
  v41 = swift_isUniquelyReferenced_nonNull_native();
  if ((v41 & 1) == 0)
  {
    sub_22C56C2E8();
    v40 = v42;
  }

  sub_22C36DD28(v6, &qword_27D9BAA18, &qword_22C911C40);
  (*(v46 + 8))(v48, v47);
  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v21 < *(v40 + 16))
  {
    (*(v49 + 40))(v40 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v21, v43, v9);
    v1[2] = v40;
    goto LABEL_18;
  }

  __break(1u);
}

void sub_22C7C6C34()
{
  sub_22C36BA7C();
  v2 = v1;
  v4 = v3;
  sub_22C90981C();
  sub_22C369824();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22C377578();
  v8 = v0[1];
  v45[2] = *v0;
  v45[3] = v8;
  v45[4] = v2;
  v9 = sub_22C7D5D1C(sub_22C7E41EC, v45, v8, MEMORY[0x277D73148]);
  v12 = *v4;
  v11 = v4[1];
  v13 = v4[2];
  if (v14)
  {
    if (v13 != 1)
    {
      v41 = v4[4];
      v43 = v4[3];
      sub_22C7D50A0(v2, v10);
      v17 = v0[2];
      v15 = v0 + 2;
      v16 = v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v15 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C36D270();
        sub_22C3B6AB4();
        v16 = *v15;
      }

      v19 = v43;
      v20 = *(v16 + 16);
      if (v20 >= *(v16 + 24) >> 1)
      {
        sub_22C375CCC();
        sub_22C3B6AB4();
        v19 = v43;
        v16 = *v15;
      }

      *(v16 + 16) = v20 + 1;
      v21 = (v16 + 40 * v20);
      v21[4] = v12;
      v21[5] = v11;
      v21[6] = v13;
      v21[7] = v19;
      v21[8] = v41;
      *v15 = v16;
    }

    v22 = sub_22C37BD98();
    goto LABEL_14;
  }

  v24 = v9;
  if (v13 == 1)
  {
    sub_22C7DF218(v9, v10);
    v25 = *(v6 + 8);
    v26 = sub_22C36D384();
    v25(v26);
    if ((sub_22C7E4E44() & 1) == 0)
    {
      sub_22C56C330();
      v4 = v27;
    }

    sub_22C7E4AA8();
    if (!v29)
    {
      v30 = v28 - 1;
      sub_22C38D04C(&v4[5 * v24 + 9], v28 - 1 - v24, &v4[5 * v24 + 4]);
      v4[2] = v30;

      sub_22C7E4C80();
      sub_22C456D48(v31, v32, v33);
      v0[2] = v4;
      v22 = sub_22C37BD98();
      v23 = v25;
LABEL_14:
      v23(v22);
LABEL_20:
      sub_22C36CC48();
      return;
    }

    __break(1u);
    goto LABEL_22;
  }

  v42 = v4[4];
  v44 = v4[3];
  if ((sub_22C7E4E44() & 1) == 0)
  {
    sub_22C56C330();
    v4 = v34;
  }

  v35 = sub_22C37BD98();
  v36(v35);
  if ((v24 & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_22C7E4AA8();
  if (!v29)
  {
    v37 = &v4[5 * v24];
    v38 = v37[7];
    v37[4] = v12;
    v37[5] = v11;
    v37[6] = v13;
    v37[7] = v44;
    v37[8] = v42;

    v39 = sub_22C36BAFC();
    sub_22C456D48(v39, v40, v38);
    v0[2] = v4;
    goto LABEL_20;
  }

LABEL_23:
  __break(1u);
}

void sub_22C7C6EE4()
{
  sub_22C36BA7C();
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for PromptTreeIdentifier(0);
  v8 = sub_22C369914(v7);
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v11 = v10 - v9;
  v12 = sub_22C3A5908(&qword_27D9BAEC8, &unk_22C90D770);
  sub_22C369824();
  v76 = v13;
  MEMORY[0x28223BE20](v14);
  sub_22C3698E4();
  v75 = v15;
  sub_22C369930();
  MEMORY[0x28223BE20](v16);
  sub_22C36BA58();
  v74 = v17;
  sub_22C369930();
  MEMORY[0x28223BE20](v18);
  sub_22C36D6DC();
  MEMORY[0x28223BE20](v19);
  sub_22C36BA64();
  v73 = v20;
  v21 = sub_22C3A5908(&qword_27D9C02B8, &unk_22C9269F0) - 8;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v22);
  v24 = &v73 - v23;
  v25 = v0[1];
  v79[2] = *v0;
  v79[3] = v25;
  v78 = v4;
  v79[4] = v4;
  sub_22C7D5D1C(sub_22C7E4050, v79, v25, type metadata accessor for PromptTreeIdentifier);
  sub_22C7E4AB4();
  v27 = v26;
  v28 = *(v21 + 56);
  v77 = v6;
  sub_22C4E719C(v6, &v24[v28], &qword_27D9BD0E8, &qword_22C9175D0);
  sub_22C36D0A8(&v24[v28], 1, v12);
  if (v1)
  {
    if (v29)
    {
      sub_22C36DD28(v77, &qword_27D9BD0E8, &qword_22C9175D0);
      sub_22C7E438C();
      v31 = v78;
    }

    else
    {
      v32 = v74;
      sub_22C7E48F0();
      sub_22C4E7208(v33, v34, v35, v36);
      v37 = v78;
      sub_22C7D4550();
      v38 = v75;
      sub_22C7E48F0();
      sub_22C4E719C(v39, v40, v41, v42);
      v45 = v0[2];
      v44 = v0 + 2;
      v43 = v45;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v44 = v43;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v52 = sub_22C36D270();
        sub_22C3B661C(v52, v53, v54, v55, v56, v57, v58, v59);
        v43 = *v44;
      }

      v61 = *(v43 + 16);
      v60 = *(v43 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_22C3B661C(v60 > 1, v61 + 1, 1, v47, v48, v49, v50, v51);
      }

      sub_22C36DD28(v77, &qword_27D9BD0E8, &qword_22C9175D0);
      sub_22C36DD28(v32, &qword_27D9BAEC8, &unk_22C90D770);
      v62 = *v44;
      *(*v44 + 16) = v61 + 1;
      sub_22C37054C();
      sub_22C4E7208(v38, v62 + v63 + *(v64 + 72) * v61, &qword_27D9BAEC8, &unk_22C90D770);
      *v44 = v62;
      sub_22C7E438C();
      v31 = v37;
    }

    goto LABEL_13;
  }

  if (v29)
  {
    sub_22C7DF510(0, v27);
    sub_22C7E42B8(v11, type metadata accessor for PromptTreeIdentifier);
    sub_22C7DFCD0(0, v2);
    sub_22C36DD28(v77, &qword_27D9BD0E8, &qword_22C9175D0);
    sub_22C36DD28(v2, &qword_27D9BAEC8, &unk_22C90D770);
    v31 = v78;
    v30 = type metadata accessor for PromptTreeIdentifier;
LABEL_13:
    sub_22C7E42B8(v31, v30);
LABEL_18:
    sub_22C36CC48();
    return;
  }

  v65 = &v24[v28];
  v66 = v73;
  sub_22C4E7208(v65, v73, &qword_27D9BAEC8, &unk_22C90D770);
  v67 = sub_22C7E4E44();
  if ((v67 & 1) == 0)
  {
    sub_22C56C390();
    v12 = v68;
  }

  v69 = v78;
  sub_22C36DD28(v77, &qword_27D9BD0E8, &qword_22C9175D0);
  sub_22C7E438C();
  sub_22C7E42B8(v69, v70);
  sub_22C7E4AA8();
  if (!v71)
  {
    sub_22C37054C();
    sub_22C7E406C(v66, v12 + v72);
    v0[2] = v12;
    goto LABEL_18;
  }

  __break(1u);
}

void sub_22C7C7320(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
  v7 = sub_22C369914(v6);
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  sub_22C37BDA4();
  v8 = v2[1];
  v27 = *v2;
  v28 = v8;
  v29 = a2;
  v9 = sub_22C7D5D1C(sub_22C7E41D0, v26, v8, type metadata accessor for PromptTreeIdentifier.TranscriptReference);
  v11 = a1 & 0xF000000000000007;
  if (v12)
  {
    if (v11 != 0xF000000000000007)
    {
      sub_22C7D55EC(a2, v10);
      v15 = v2[2];
      v13 = v2 + 2;
      v14 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v13 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C36D270();
        sub_22C3B66A4();
        v14 = *v13;
      }

      v17 = *(v14 + 16);
      v18 = v17 + 1;
      if (v17 >= *(v14 + 24) >> 1)
      {
        sub_22C375CCC();
        v25 = v24;
        sub_22C3B66A4();
        v17 = v25;
        v14 = *v13;
      }

      *(v14 + 16) = v18;
      *(v14 + 8 * v17 + 32) = a1;
      *v13 = v14;
    }

    v19 = type metadata accessor for PromptTreeIdentifier.TranscriptReference;
    v20 = a2;
    goto LABEL_11;
  }

  v21 = v9;
  if (v11 == 0xF000000000000007)
  {
    sub_22C7DF764(v9, v10);
    sub_22C7E42B8(v3, type metadata accessor for PromptTreeIdentifier.TranscriptReference);
    sub_22C7DFDE0(v21);

    v20 = sub_22C37BD98();
LABEL_11:
    sub_22C7E42B8(v20, v19);
    return;
  }

  if ((sub_22C7E4E44() & 1) == 0)
  {
    sub_22C56C3C0();
    v3 = v22;
  }

  sub_22C7E42B8(a2, type metadata accessor for PromptTreeIdentifier.TranscriptReference);
  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    sub_22C7E4AA8();
    if (!v23)
    {
      *(v3 + 8 * v21 + 32) = a1;

      v2[2] = v3;
      return;
    }
  }

  __break(1u);
}

uint64_t sub_22C7C752C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for RetrievedToolWithAttribution(0);
  v45 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v43 = &v41 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v41 - v13;
  MEMORY[0x28223BE20](v12);
  v42 = &v41 - v15;
  v16 = sub_22C3A5908(&qword_27D9C0298, &qword_22C9269A0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v41 - v18;
  v21 = *v3;
  v20 = v3[1];
  v41 = a2;
  v51[0] = a2;
  v51[1] = a3;
  v48 = v21;
  v49 = v20;
  v50 = v51;
  v22 = sub_22C7D5C1C(sub_22C7E3E64, v47, v20);
  v24 = v23;
  v26 = v25;
  v27 = *(v17 + 56);
  v46 = a1;
  sub_22C4E719C(a1, &v19[v27], &qword_27D9C0288, &qword_22C926990);
  if (v24)
  {
    if (sub_22C370B74(&v19[v27], 1, v7) == 1)
    {
      sub_22C36DD28(v46, &qword_27D9C0288, &qword_22C926990);
    }

    else
    {
      v29 = v43;
      sub_22C7E4260(&v19[v27], v43);
      sub_22C7D4160(v41, a3, v26);

      v30 = v44;
      sub_22C7E4208(v29, v44);
      v33 = v3[2];
      v32 = v3 + 2;
      v31 = v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v32 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C3B7CA0(0, *(v31 + 16) + 1, 1);
        v31 = *v32;
      }

      v36 = *(v31 + 16);
      v35 = *(v31 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_22C3B7CA0(v35 > 1, v36 + 1, 1);
      }

      sub_22C36DD28(v46, &qword_27D9C0288, &qword_22C926990);
      sub_22C7E42B8(v29, type metadata accessor for RetrievedToolWithAttribution);
      v37 = *v32;
      *(v37 + 16) = v36 + 1;
      result = sub_22C7E4260(v30, v37 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v36);
      *v32 = v37;
    }
  }

  else
  {

    if (sub_22C370B74(&v19[v27], 1, v7) == 1)
    {
      sub_22C7DF9B8(v22, v26);

      sub_22C7DFE58();
      sub_22C36DD28(v46, &qword_27D9C0288, &qword_22C926990);
      return sub_22C7E42B8(v14, type metadata accessor for RetrievedToolWithAttribution);
    }

    v38 = v42;
    sub_22C7E4260(&v19[v27], v42);
    v39 = v3[2];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C56C558();
      v39 = v40;
    }

    result = sub_22C36DD28(v46, &qword_27D9C0288, &qword_22C926990);
    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v22 < *(v39 + 16))
    {
      result = sub_22C7E3E80(v38, v39 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v22);
      v3[2] = v39;
      return result;
    }

    __break(1u);
  }

  return result;
}

void sub_22C7C7A40(uint64_t result, uint64_t (*a2)(void, uint64_t, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v6 = a2(0, result, *(*v5 + 16));
      if (v7)
      {
LABEL_9:
        __break(1u);
        return;
      }

      if ((v6 & 0x8000000000000000) == 0)
      {
        sub_22C7DD8CC();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t static QueryDecorationToolSelectorService.isEnabled()()
{
  v0 = sub_22C90363C();
  sub_22C369824();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  (*(v2 + 104))(v5 - v4, *MEMORY[0x277D1EC00], v0);
  v6 = sub_22C90362C();
  v7 = sub_22C36BBCC();
  v8(v7);
  return v6 & 1;
}

uint64_t sub_22C7C7BA0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D1D8F8];
  sub_22C90645C();
  sub_22C36985C();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t sub_22C7C7C0C()
{
  sub_22C369980();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  v1[13] = v5;
  v6 = sub_22C905A5C();
  v1[18] = v6;
  sub_22C3699B8(v6);
  v1[19] = v7;
  v1[20] = sub_22C3856B8();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v8 = sub_22C90384C();
  v1[23] = v8;
  sub_22C3699B8(v8);
  v1[24] = v9;
  v1[25] = sub_22C3699D4();
  v10 = sub_22C9099FC();
  v1[26] = v10;
  sub_22C3699B8(v10);
  v1[27] = v11;
  v1[28] = sub_22C3699D4();
  v12 = sub_22C9036EC();
  v1[29] = v12;
  sub_22C3699B8(v12);
  v1[30] = v13;
  v1[31] = sub_22C3699D4();
  v14 = sub_22C908EAC();
  v1[32] = v14;
  sub_22C3699B8(v14);
  v1[33] = v15;
  v1[34] = sub_22C3699D4();
  v16 = sub_22C9037EC();
  v1[35] = v16;
  sub_22C3699B8(v16);
  v1[36] = v17;
  v1[37] = sub_22C3699D4();
  v18 = sub_22C903F4C();
  v1[38] = v18;
  sub_22C3699B8(v18);
  v1[39] = v19;
  v1[40] = sub_22C3699D4();
  v20 = sub_22C9063DC();
  v1[41] = v20;
  sub_22C3699B8(v20);
  v1[42] = v21;
  v1[43] = sub_22C3856B8();
  v1[44] = swift_task_alloc();
  v22 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_22C7C7EF0(uint64_t a1)
{
  sub_22C90407C();
  v2 = sub_22C36D39C();
  v3(v2);
  v4 = sub_22C9063CC();
  v5 = sub_22C90AACC();
  if (os_log_type_enabled(v4, v5))
  {
    v91 = v5;
    log = v4;
    v6 = sub_22C36FB44();
    v90 = sub_22C370060();
    buf = v6;
    *v6 = 136315138;
    v11 = sub_22C903F1C();
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = v1[18].i64[0];
      v14 = v1[15].i64[0];
      v107 = MEMORY[0x277D84F90];
      sub_22C3B5E2C(0, v12, 0, v7, v8, v9, v10);
      v15 = v107;
      v16 = *(v13 + 16);
      v13 += 16;
      v105 = v16;
      sub_22C36BA94();
      v18 = v11 + v17;
      v103 = *(v13 + 56);
      v100 = *MEMORY[0x277D1ECE0];
      v97 = *MEMORY[0x277D1ECE8];
      v95 = *MEMORY[0x277D1ECD0];
      v96 = *MEMORY[0x277D1ECD8];
      v98 = (v14 + 96);
      v94 = *MEMORY[0x277D1ECF8];
      v19 = (v13 - 8);
      while (1)
      {
        v20 = v1[14].i64[1];
        v105(v1[18].i64[1], v18, v1[17].i64[1]);
        sub_22C90371C();
        v21 = sub_22C36D400();
        v23 = v22(v21, v20);
        if (v23 != v100)
        {
          if (v23 == v97)
          {
            v34 = v1[15].i64[1];
            v35 = v1[13].i64[0];
            v36 = sub_22C38C41C();
            v37(v36);
            v38 = sub_22C36D400();
            v39(v38, v34, v35);
            v28 = sub_22C9099DC();
            v30 = v40;
LABEL_8:
            v31 = sub_22C36D400();
            v32 = v35;
            goto LABEL_9;
          }

          if (v23 != v96 && v23 != v95)
          {
            v45 = v1[15].i64[1];
            if (v23 != v94)
            {
              v51 = sub_22C38C41C();
              v52(v51);
              v28 = 0xD000000000000013;
              v30 = 0x800000022C935760;
              goto LABEL_10;
            }

            v35 = v1[11].i64[1];
            v46 = sub_22C38C41C();
            v47(v46);
            v48 = sub_22C36D400();
            v49(v48, v45, v35);
            v28 = sub_22C9037FC();
            v30 = v50;
            goto LABEL_8;
          }
        }

        v25 = v1[15].i64[1];
        v24 = v1[16].i64[0];
        (*v98)(v25, v1[14].i64[1]);
        v26 = sub_22C38C41C();
        v27(v26, v25, v24);
        v28 = sub_22C908E7C();
        v30 = v29;
        v31 = sub_22C37170C();
LABEL_9:
        v33(v31, v32);
LABEL_10:
        (*v19)(v1[18].i64[1], v1[17].i64[1]);
        v42 = *(v107 + 16);
        v41 = *(v107 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_22C369AB0(v41);
          sub_22C7E4C74();
          sub_22C3B5E2C(v53, v54, v55, v56, v57, v58, v59);
        }

        *(v107 + 16) = v42 + 1;
        v43 = v107 + 16 * v42;
        *(v43 + 32) = v28;
        *(v43 + 40) = v30;
        v18 += v103;
        if (!--v12)
        {

          goto LABEL_23;
        }
      }
    }

    v15 = MEMORY[0x277D84F90];
LABEL_23:
    v65 = v1[19].i64[1];
    v64 = v1[20].i64[0];
    v66 = v1[19].i64[0];
    MEMORY[0x2318B7AD0](v15, MEMORY[0x277D837D0]);

    (*(v65 + 8))(v64, v66);
    v67 = sub_22C6AFC04();
    v70 = sub_22C36F9F4(v67, v68, v69);

    *(buf + 4) = v70;
    _os_log_impl(&dword_22C366000, log, v91, "toolRetrievalResponse: %s", buf, 0xCu);
    sub_22C36FF94(v90);
    sub_22C370510();
    sub_22C36D69C();

    v62 = sub_22C372FA4();
  }

  else
  {

    v60 = sub_22C36ECB4();
    v61(v60);
    v62 = sub_22C37170C();
  }

  v63(v62);
  v71 = v1[8].i64[0];
  v72 = v71[10];
  v73 = v71[11];
  sub_22C374168(v71 + 7, v72);
  if (qword_27D9BA780 != -1)
  {
    swift_once();
  }

  v74 = v1[11].i64[0];
  v76 = v1[9].i64[0];
  v75 = v1[9].i64[1];
  v102 = v76;
  v77 = v1[8].i64[0];
  v78 = v1[8].i64[1];
  v106 = v1[10].i64[1];
  v101 = v1[6].i64[1];
  v99 = v1[7];
  (*(v73 + 8))(qword_27D9C05F8, v72, v73);
  v79 = v77[5];
  v104 = v77[6];
  sub_22C374168(v77 + 2, v79);
  v80 = *MEMORY[0x277D20048];
  v81 = *(v75 + 104);
  v1[22].i64[1] = v81;
  v1[23].i64[0] = (v75 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v81(v74, v80, v76);
  v82 = swift_task_alloc();
  *(v82 + 16) = v78;
  *(v82 + 24) = v101;
  *(v82 + 32) = vextq_s8(v99, v99, 8uLL);
  QueryDecorationSELFLogging.logSubComponentExecution<A>(_:_:)(v74, sub_22C7D3F78, v82, v79, &type metadata for QueryDecorationTupleBuilderOutput, v104, v1[5].i64);

  v83 = *(v75 + 8);
  v1[23].i64[1] = v83;
  v1[24].i64[0] = (v75 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v83(v74, v76);
  LOBYTE(v104) = v1[5].i8[0];
  v84 = v1[5].i64[1];
  v1[24].i64[1] = v84;
  v85 = v1[2].i64[1];
  v86 = v1[3].i64[0];
  sub_22C374168(v1[1].i64, v85);
  (*(v86 + 8))(v85, v86);
  sub_22C374168(v77 + 2, v77[5]);
  v81(v106, *MEMORY[0x277D20070], v102);
  v87 = swift_task_alloc();
  v1[25].i64[0] = v87;
  *(v87 + 16) = v78;
  *(v87 + 24) = v104;
  *(v87 + 32) = v84;
  *(v87 + 40) = v77;
  v88 = swift_task_alloc();
  v1[25].i64[1] = v88;
  sub_22C3A5908(&qword_27D9C0280, &qword_22C926858);
  *v88 = v1;
  v88[1] = sub_22C7C86A4;

  return QueryDecorationSELFLogging.logSubComponentExecution<A>(_:_:)();
}

uint64_t sub_22C7C86A4()
{
  sub_22C36D5EC();
  v2 = *v1;
  sub_22C36D994();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 416) = v0;

  (*(v2 + 376))(*(v2 + 168), *(v2 + 144));

  sub_22C7E4ED0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C7C8858()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  *(v0 + 432) = v2;
  *(v0 + 440) = v3;
  *(v0 + 424) = v1;
  v4 = *(v0 + 360);
  v5 = *(v0 + 160);
  v6 = *(v0 + 144);
  v8 = *(v0 + 120);
  v7 = *(v0 + 128);
  v13 = *(v0 + 136);
  v12 = *(v0 + 104);
  sub_22C374168((v7 + 16), *(v7 + 40));
  v4(v5, *MEMORY[0x277D20050], v6);
  v9 = swift_task_alloc();
  *(v0 + 448) = v9;
  *(v9 + 16) = v13;
  *(v9 + 24) = v8;
  *(v9 + 32) = v1;
  *(v9 + 40) = v2;
  *(v9 + 48) = v3;
  *(v9 + 56) = v12;
  *(v9 + 72) = v7;
  v10 = swift_task_alloc();
  *(v0 + 456) = v10;
  sub_22C903DCC();
  *v10 = v0;
  v10[1] = sub_22C7C89B0;
  sub_22C7E4598();

  return QueryDecorationSELFLogging.logSubComponentExecution<A>(_:_:)();
}

uint64_t sub_22C7C89B0()
{
  sub_22C3743E4();
  v2 = *v1;
  sub_22C36D994();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 464) = v0;

  v5 = v2[47];
  v6 = v2[20];
  v7 = v2[18];
  v8 = v2[17];
  v5(v6, v7);
  sub_22C7E4C80();
  sub_22C7D4114(v9);

  if (v0)
  {
    v10 = sub_22C7C8F3C;
  }

  else
  {
    v10 = sub_22C7C8B9C;
  }

  return MEMORY[0x2822009F8](v10, v8, 0);
}

uint64_t sub_22C7C8B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22C372634();
  sub_22C37F038();
  sub_22C7E479C();
  v26 = v16;
  v27 = v15;
  v28 = *(v14 + 96);
  sub_22C36FF94((v14 + 16));

  sub_22C36D5E0();
  sub_22C36D5F8();

  return v19(v17, v18, v19, v20, v21, v22, v23, v24, v26, v27, v28, a12, a13, a14);
}

uint64_t sub_22C7C8C6C()
{
  v34 = v0;
  v2 = *(v0 + 416);
  sub_22C90408C();
  v3 = v2;
  v4 = sub_22C9063CC();
  v5 = sub_22C90AADC();

  if (sub_22C7E4AC0())
  {
    v6 = *(v0 + 416);
    v7 = sub_22C383050();
    swift_slowAlloc();
    v8 = sub_22C385814();
    v33 = v8;
    *v7 = 136315394;
    sub_22C36EE00();
    *(v7 + 4) = sub_22C36F9F4(0xD000000000000059, v9, &v33);
    *(v7 + 12) = 2112;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v1 = v11;
    _os_log_impl(&dword_22C366000, v4, v5, "%s JointResolver ranking failed with underlying error %@. Original ranking will be used as fallback.", v7, 0x16u);
    sub_22C36DD28(v1, &qword_27D9BB158, qword_22C910FD0);
    sub_22C36C30C();
    sub_22C36FF94(v8);
    sub_22C370510();
    sub_22C36D69C();

    v12 = sub_22C36BAFC();
    v13(v12);
  }

  else
  {

    v14 = sub_22C36BAFC();
    v15(v14);
  }

  v16 = *(v0 + 416);
  sub_22C903F1C();
  sub_22C36CA88();
  sub_22C7C9E54();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  *(v0 + 432) = v20;
  *(v0 + 440) = v22;
  *(v0 + 424) = v18;
  v23 = *(v0 + 360);
  v24 = *(v0 + 160);
  v25 = *(v0 + 144);
  v27 = *(v0 + 120);
  v26 = *(v0 + 128);
  v32 = *(v0 + 136);
  v31 = *(v0 + 104);
  sub_22C374168((v26 + 16), *(v26 + 40));
  v23(v24, *MEMORY[0x277D20050], v25);
  v28 = swift_task_alloc();
  *(v0 + 448) = v28;
  *(v28 + 16) = v32;
  *(v28 + 24) = v27;
  *(v28 + 32) = v18;
  *(v28 + 40) = v20;
  *(v28 + 48) = v22;
  *(v28 + 56) = v31;
  *(v28 + 72) = v26;
  v29 = swift_task_alloc();
  *(v0 + 456) = v29;
  sub_22C903DCC();
  *v29 = v0;
  v29[1] = sub_22C7C89B0;
  sub_22C7E4598();

  return QueryDecorationSELFLogging.logSubComponentExecution<A>(_:_:)();
}

uint64_t sub_22C7C8F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22C372634();
  sub_22C37F038();
  sub_22C7E479C();
  v26 = v16;
  v27 = v15;
  sub_22C36FF94((v14 + 16));

  sub_22C369A24();
  sub_22C36D5F8();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, v26, v27, a12, a13, a14);
}

uint64_t sub_22C7C9000@<X0>(uint64_t a4@<X8>)
{
  sub_22C903F1C();
  sub_22C7CFF74();
  v6 = v5;
  v8 = v7;

  *a4 = v6 & 1;
  *(a4 + 8) = v8;
  return result;
}

uint64_t sub_22C7C9088(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 72) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22C7C90AC, a2, 0);
}

uint64_t sub_22C7C90AC()
{
  sub_22C36D5EC();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 72);
  v4 = *(v0 + 24);
  v5 = *(v4 + 232);
  v6 = swift_allocObject();
  *(v0 + 48) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  *(v6 + 32) = v1;
  *(v6 + 40) = v2;

  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  sub_22C3A5908(&qword_27D9C0280, &qword_22C926858);
  *v7 = v0;
  v7[1] = sub_22C7C91D8;
  v8.n128_u64[0] = v5;

  return MEMORY[0x2821C8618](v8);
}

uint64_t sub_22C7C91D8()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    v7 = *(v3 + 24);

    return MEMORY[0x2822009F8](sub_22C7C92F8, v7, 0);
  }

  else
  {

    sub_22C369A24();

    return v8();
  }
}

uint64_t sub_22C7C92F8()
{
  sub_22C369980();

  sub_22C369A24();

  return v0();
}

uint64_t sub_22C7C9354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v6 = swift_task_alloc();
  *(v5 + 24) = v6;
  *v6 = v5;
  v6[1] = sub_22C7C940C;

  return sub_22C7CA470();
}

uint64_t sub_22C7C940C()
{
  sub_22C36D5EC();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_22C369A3C();
  v9 = v8;
  sub_22C36D994();
  *v10 = v9;
  v11 = *v1;
  sub_22C369970();
  *v12 = v11;

  if (v0)
  {
    sub_22C7E4EBC();

    __asm { BRAA            X1, X16 }
  }

  v9[4] = v3;
  v9[5] = v5;
  v9[6] = v7;
  sub_22C36BB08();
  sub_22C7E4EBC();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_22C7C954C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *v2 = vextq_s8(*(v0 + 40), *(v0 + 40), 8uLL);
  v2[1].i64[0] = v1;
  return sub_22C37A3A0();
}

uint64_t sub_22C7C9568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v15;
  v8[6] = a5;
  v8[7] = a7;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  sub_22C3A5908(&qword_27D9BD290, &qword_22C917EC0);
  v8[10] = swift_task_alloc();
  v10 = sub_22C903F4C();
  v8[11] = v10;
  v8[12] = *(v10 - 8);
  v8[13] = swift_task_alloc();
  v11 = sub_22C90622C();
  v8[14] = v11;
  v8[15] = *(v11 - 8);
  v8[16] = swift_task_alloc();
  v8[17] = *(type metadata accessor for RetrievedToolWithAttribution(0) - 8);
  v8[18] = swift_task_alloc();
  v12 = sub_22C9037EC();
  v8[19] = v12;
  v8[20] = *(v12 - 8);
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C7C9794, a2, 0);
}

uint64_t sub_22C7C9794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22C372634();
  sub_22C37F038();
  v15 = v14[5];
  v14[23] = sub_22C903F1C();
  if (v15)
  {
    v16 = v14[6];
    v17 = *(v16 + 16);
    v18 = MEMORY[0x277D84F90];
    if (v17)
    {
      v19 = v14[20];
      v20 = v14[17];
      v37 = MEMORY[0x277D84F90];
      sub_22C3B60C0(0, v17, 0);
      v21 = v19;
      v18 = v37;
      sub_22C36BA94();
      v23 = v16 + v22;
      v36 = *(v20 + 72);
      v24 = (v21 + 32);
      do
      {
        v25 = v14[22];
        v27 = v14[18];
        v26 = v14[19];
        sub_22C373A4C();
        sub_22C7E4208(v23, v27);
        v28 = *v24;
        (*v24)(v25, v27, v26);
        v30 = *(v37 + 16);
        v29 = *(v37 + 24);
        if (v30 >= v29 >> 1)
        {
          v32 = sub_22C369AB0(v29);
          sub_22C3B60C0(v32, v30 + 1, 1);
        }

        *(v37 + 16) = v30 + 1;
        sub_22C36BA94();
        v28(v37 + v31 + *(v21 + 72) * v30);
        v23 += v36;
        --v17;
      }

      while (v17);
    }
  }

  else
  {
    v18 = 0;
  }

  v14[24] = v18;
  v33 = swift_task_alloc();
  v14[25] = v33;
  *v33 = v14;
  v33[1] = sub_22C7C9960;
  sub_22C36D5F8();

  return sub_22C7CACD8();
}

uint64_t sub_22C7C9960()
{
  sub_22C36D5EC();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v3 + 208) = v7;

  if (v0)
  {

    sub_22C369A24();
    sub_22C7E4EBC();

    __asm { BRAA            X1, X16 }
  }

  sub_22C7E4EBC();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C7C9B04()
{
  if (v0[5])
  {
    sub_22C374168((v0[9] + 16), *(v0[9] + 40));
    sub_22C90621C();
    v1 = sub_22C3806B8();
    v2(v1);
    v3 = sub_22C36BAFC();
    v4(v3);
  }

  v5 = v0[26];
  sub_22C903EEC();
  sub_22C903EFC();
  sub_22C903F0C();
  v6 = *(v5 + 16);
  v7 = v0[26];
  if (v6)
  {
    v8 = v0[20];
    v9 = v0[17];
    v36 = MEMORY[0x277D84F90];
    sub_22C3B60C0(0, v6, 0);
    sub_22C36BA94();
    v11 = v7 + v10;
    v35 = *(v9 + 72);
    do
    {
      v12 = v0[21];
      v14 = v0[18];
      v13 = v0[19];
      sub_22C373A4C();
      v15 = sub_22C36D39C();
      sub_22C7E4208(v15, v16);
      (*(v8 + 16))(v12, v14, v13);
      sub_22C36B758();
      sub_22C7E42B8(v14, v17);
      v18 = *(v36 + 16);
      if (v18 >= *(v36 + 24) >> 1)
      {
        sub_22C7E4C74();
        sub_22C3B60C0(v20, v21, v22);
      }

      *(v36 + 16) = v18 + 1;
      sub_22C36BA94();
      (*(v8 + 32))(v36 + v19 + *(v8 + 72) * v18);
      v11 += v35;
      --v6;
    }

    while (v6);
  }

  v23 = v0[12];
  v24 = v0[13];
  v26 = v0[10];
  v25 = v0[11];
  v27 = v0[8];
  v28 = v0[2];
  sub_22C903F3C();
  sub_22C903EDC();
  type metadata accessor for ContextRetrievalService();
  static ContextRetrievalService.filterMediaRetrievedContext(retrievedContext:)(v27);
  (*(v23 + 16))(v26, v24, v25);
  sub_22C36BECC();
  sub_22C36C640(v29, v30, v31, v25);
  objc_allocWithZone(sub_22C903DCC());

  v32 = sub_22C903D9C();
  (*(v23 + 8))(v24, v25);
  *v28 = v32;

  sub_22C369A24();

  return v33();
}

void sub_22C7C9E54()
{
  sub_22C36BA7C();
  v78 = v2;
  v79 = v1;
  v4 = v3;
  type metadata accessor for RetrievedToolWithAttribution(0);
  sub_22C369824();
  v86 = v5;
  MEMORY[0x28223BE20](v5);
  sub_22C3698A8();
  v77 = v6;
  sub_22C3A5908(&qword_27D9BB680, &unk_22C90FA50);
  sub_22C369824();
  v85 = v7;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  sub_22C36D5B4();
  v87 = v9;
  v10 = sub_22C3A5908(&qword_27D9C02B0, &qword_22C9269D8);
  sub_22C369914(v10);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  sub_22C37BDA4();
  v12 = sub_22C3A5908(&qword_27D9BB678, &unk_22C926970);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v13);
  sub_22C36D5B4();
  v83 = v14;
  sub_22C36BA0C();
  v76 = sub_22C90399C();
  sub_22C369824();
  v88 = v15;
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  v19 = v18 - v17;
  v20 = sub_22C9039FC();
  sub_22C369824();
  MEMORY[0x28223BE20](v21);
  sub_22C369838();
  v25 = v24 - v23;
  v26 = *(v4 + 16);
  if (v26)
  {
    v82 = *(v22 + 16);
    sub_22C36BA94();
    v28 = v4 + v27;
    v30 = (v29 - 8);
    v31 = MEMORY[0x277D84F90];
    v81 = *(v29 + 56);
    v80 = v12;
    do
    {
      v32 = sub_22C36BAFC();
      v82(v32);
      sub_22C7D32E4();
      (*v30)(v25, v20);
      sub_22C36D0A8(v0, 1, v12);
      if (v33)
      {
        sub_22C36DD28(v0, &qword_27D9C02B0, &qword_22C9269D8);
      }

      else
      {
        sub_22C4E7208(v0, v83, &qword_27D9BB678, &unk_22C926970);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22C7E43A4();
          sub_22C596438();
          v31 = v41;
        }

        v36 = *(v31 + 16);
        v35 = *(v31 + 24);
        v37 = v31;
        if (v36 >= v35 >> 1)
        {
          sub_22C369AB0(v35);
          sub_22C596438();
          v37 = v42;
        }

        *(v37 + 16) = v36 + 1;
        v31 = v37;
        sub_22C37054C();
        sub_22C4E7208(v83, v38 + v39 + *(v40 + 72) * v36, &qword_27D9BB678, &unk_22C926970);
        v12 = v80;
      }

      v28 += v81;
      --v26;
    }

    while (v26);
  }

  v43 = *(v78 + 16);
  if (v43)
  {
    v44 = v87;
    v45 = *(v88 + 16);
    sub_22C36BA94();
    v48 = v47 + v46;
    v84 = *(v49 + 56);
    v50 = (v49 - 8);
    v51 = MEMORY[0x277D84F90];
    do
    {
      v52 = sub_22C36BBCC();
      v45(v52);
      v53 = (v44 + *(v85 + 48));
      (v45)(v44, v19, v76);
      v54 = sub_22C90390C();
      v56 = v55;
      (*v50)(v19, v76);
      *v53 = v54;
      v53[1] = v56;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C36D270();
        sub_22C59636C();
        v51 = v62;
      }

      v58 = *(v51 + 16);
      v57 = *(v51 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_22C369AB0(v57);
        sub_22C59636C();
        v51 = v63;
      }

      *(v51 + 16) = v58 + 1;
      sub_22C37054C();
      v61 = v51 + v59 + *(v60 + 72) * v58;
      v44 = v87;
      sub_22C4E7208(v87, v61, &qword_27D9BB680, &unk_22C90FA50);
      v48 += v84;
      --v43;
    }

    while (v43);
  }

  v64 = *(v79 + 16);
  if (v64)
  {
    v90 = MEMORY[0x277D84F90];
    v65 = sub_22C36D6CC();
    sub_22C3B7CA0(v65, v66, v67);
    v89 = sub_22C9037EC();
    sub_22C36985C();
    v69 = *(v68 + 16);
    v70 = v79 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
    v71 = *(v68 + 72);
    do
    {
      v69(v77, v70, v89);
      *(v77 + *(v86 + 20)) = 6;
      v73 = *(v90 + 16);
      v72 = *(v90 + 24);
      if (v73 >= v72 >> 1)
      {
        v75 = sub_22C369AB0(v72);
        sub_22C3B7CA0(v75, v73 + 1, 1);
      }

      *(v90 + 16) = v73 + 1;
      sub_22C37054C();
      sub_22C3787F0();
      sub_22C7E4260(v77, v74);
      v70 += v71;
      --v64;
    }

    while (v64);
  }

  sub_22C36CC48();
}

uint64_t sub_22C7CA470()
{
  sub_22C369980();
  *(v1 + 144) = v2;
  *(v1 + 152) = v0;
  *(v1 + 136) = v3;
  *(v1 + 256) = v4;
  DecorationTuple = type metadata accessor for QueryDecorationTuple(0);
  sub_22C3699B8(DecorationTuple);
  *(v1 + 160) = v6;
  *(v1 + 168) = sub_22C3699D4();
  v7 = type metadata accessor for RetrievedToolWithAttribution(0);
  *(v1 + 176) = v7;
  sub_22C3699B8(v7);
  *(v1 + 184) = v8;
  *(v1 + 192) = sub_22C3699D4();
  v9 = sub_22C90622C();
  *(v1 + 200) = v9;
  sub_22C3699B8(v9);
  *(v1 + 208) = v10;
  *(v1 + 216) = sub_22C3699D4();
  v11 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C7CA5B0()
{
  sub_22C3743E4();
  sub_22C374168((*(v0 + 144) + 56), *(*(v0 + 144) + 80));
  if (qword_27D9BA788 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  sub_22C37275C();
  v2();
  sub_22C4E719C(v1 + 192, v0 + 96, &qword_27D9C0278, &qword_22C9267A0);
  if (*(v0 + 120))
  {
    sub_22C36C730((v0 + 96), v0 + 56);
    sub_22C374168((v0 + 56), *(v0 + 80));
    v3 = swift_task_alloc();
    *(v0 + 224) = v3;
    *v3 = v0;
    v3[1] = sub_22C7CA7D0;
    v4 = *(v0 + 136);
    v5 = *(v0 + 144);

    return sub_22C7D3734(v5, v4);
  }

  else
  {
    sub_22C36DD28(v0 + 96, &qword_27D9C0278, &qword_22C9267A0);
    v7 = *(v0 + 48);
    sub_22C374168((v0 + 16), *(v0 + 40));
    v8 = sub_22C38B194();
    v9(v8, v7);
    sub_22C36FF94((v0 + 16));

    sub_22C36BB08();

    return v10();
  }
}

uint64_t sub_22C7CA7D0()
{
  sub_22C36D5EC();
  v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  v6 = *v1;
  sub_22C36D994();
  *v7 = v6;
  v4[29] = v8;
  v4[30] = v0;

  if (!v0)
  {
    v4[31] = v3;
  }

  sub_22C7E4ED0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C7CA8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22C372634();
  sub_22C37F038();
  v52 = v14[29];
  sub_22C374168((v14[18] + 16), *(v14[18] + 40));
  sub_22C90621C();
  v15 = sub_22C4F6088();
  v16(v15);
  v17 = sub_22C36BAFC();
  v18(v17);
  v19 = *(v52 + 16);
  v20 = v14[29];
  if (v19)
  {
    v21 = v14[22];
    v22 = v14[20];
    v53 = MEMORY[0x277D84F90];
    v23 = sub_22C36D6CC();
    sub_22C3B7CA0(v23, v24, v25);
    v26 = v53;
    sub_22C36BA94();
    v28 = v20 + v27;
    v29 = *(v22 + 72);
    do
    {
      v30 = v14[24];
      v31 = v14[21];
      sub_22C7E4208(v28, v31);
      sub_22C9037EC();
      sub_22C36985C();
      v32 = sub_22C36ECB4();
      v33(v32);
      sub_22C7E42B8(v31, type metadata accessor for QueryDecorationTuple);
      *(v30 + *(v21 + 20)) = 6;
      a11 = v26;
      v35 = *(v26 + 16);
      v34 = *(v26 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_22C369AB0(v34);
        sub_22C375CCC();
        sub_22C3B7CA0(v38, v39, v40);
      }

      *(v26 + 16) = v35 + 1;
      sub_22C36BA94();
      sub_22C3787F0();
      sub_22C7E4260(v36, v37);
      v28 += v29;
      --v19;
    }

    while (v19);
  }

  else
  {

    v26 = MEMORY[0x277D84F90];
  }

  sub_22C7CAC54(v26);
  sub_22C7E4E74();
  sub_22C36FF94(v14 + 7);
  sub_22C374168(v14 + 2, v14[5]);
  v41 = sub_22C36FC2C();
  v42(v41);
  sub_22C36FF94(v14 + 2);

  sub_22C36D5F8();

  return v47(v43, v44, v45, v46, v47, v48, v49, v50, a9, v52, a11, a12, a13, a14);
}

void sub_22C7CAB94()
{
  sub_22C36D5EC();
  sub_22C36FF94(v0 + 7);
  v1 = v0[6];
  sub_22C374168(v0 + 2, v0[5]);
  v2 = sub_22C38B194();
  v3(v2, v1);
  sub_22C36FF94(v0 + 2);

  sub_22C369A24();
  sub_22C7E4EBC();

  __asm { BRAA            X1, X16 }
}

unint64_t sub_22C7CAC54(unint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) > 1uLL)
  {
    v4 = MEMORY[0x2318B7DB0]();

    v1 = sub_22C7C61E4(v2, &v4);
  }

  else
  {
  }

  return v1;
}

uint64_t sub_22C7CACD8()
{
  sub_22C369980();
  v1[30] = v2;
  v1[31] = v0;
  v1[28] = v3;
  v1[29] = v4;
  v1[26] = v5;
  v1[27] = v6;
  v7 = sub_22C90377C();
  v1[32] = v7;
  sub_22C3699B8(v7);
  v1[33] = v8;
  v1[34] = sub_22C3856B8();
  v1[35] = swift_task_alloc();
  v9 = sub_22C3A5908(&qword_27D9C0288, &qword_22C926990);
  sub_22C369914(v9);
  v1[36] = sub_22C3856B8();
  v1[37] = swift_task_alloc();
  v10 = type metadata accessor for RetrievedToolWithAttribution(0);
  v1[38] = v10;
  sub_22C3699B8(v10);
  v1[39] = v11;
  v1[40] = sub_22C3856B8();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v12 = sub_22C9063DC();
  v1[46] = v12;
  sub_22C3699B8(v12);
  v1[47] = v13;
  v1[48] = sub_22C3856B8();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v14 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_22C7CAEE4()
{
  v142 = v0;
  v1 = v0[30];
  v2 = v1[10];
  v3 = v1[11];
  sub_22C374168(v1 + 7, v2);
  if (qword_27D9BA790 != -1)
  {
    swift_once();
  }

  v4 = v0[31];
  v6 = v0[28];
  v5 = v0[29];
  v138 = v0[54];
  v133 = v0[26];
  (*(v3 + 8))(qword_27D9C0608, v2, v3);
  v136 = v6;
  static AppDirectedToolHelper.getAppDirectedApps(spanMatches:toolContext:)(v6, v5, v141);
  v135 = v141[0];
  sub_22C378A4C(v4 + 152, (v0 + 14));
  v7 = v0[17];
  v8 = sub_22C36D1E4((v0 + 14), v7);
  v9 = *(v7 - 8);
  v10 = sub_22C3699D4();
  (*(v9 + 16))(v10, v8, v7);
  v11 = *v10;
  v0[22] = &type metadata for QueryDecorationFeatureControl;
  v0[23] = &off_283FC14D0;
  v0[19] = v11;
  type metadata accessor for QueryDecorationToolSelector();
  inited = swift_initStackObject();
  v13 = v0[22];
  v14 = sub_22C36D1E4((v0 + 19), v13);
  v15 = *(v13 - 8);
  v16 = sub_22C3699D4();
  (*(v15 + 16))(v16, v14, v13);
  v17 = *v16;
  inited[5] = &type metadata for QueryDecorationFeatureControl;
  inited[6] = &off_283FC14D0;
  inited[2] = v17;
  sub_22C36FF94(v0 + 19);

  sub_22C36FF94(v0 + 14);
  sub_22C7C2CF8();
  v19 = v18;
  v137 = v20;
  swift_setDeallocating();
  sub_22C36FF94(inited + 2);

  sub_22C90400C();

  v21 = sub_22C9063CC();
  v22 = sub_22C90AABC();

  v23 = os_log_type_enabled(v21, v22);
  v24 = v0[54];
  v26 = v0[46];
  v25 = v0[47];
  if (v23)
  {
    v139 = v0[54];
    v27 = sub_22C383050();
    v28 = sub_22C37A180();
    v141[0] = v28;
    *v27 = 136315394;
    *(v27 + 4) = sub_22C7E4AD8(v28, 0x800000022C935DD0, v29, v30, v31, v32, v33, v34, v130, v133, v135, v136, v137, v139);
    *(v27 + 12) = 2080;
    static QueryDecorationLoggingUtils.generateReadableToolList(_:)();
    v37 = sub_22C36F9F4(v35, v36, v141);

    *(v27 + 14) = v37;
    _os_log_impl(&dword_22C366000, v21, v22, "%s starting toolSelectionResponse.selectedTools:\n%s", v27, 0x16u);
    swift_arrayDestroy();
    sub_22C3699EC();
    sub_22C37B09C();

    v38 = *(v25 + 8);
    v38(v138, v26);
  }

  else
  {

    v38 = *(v25 + 8);
    v38(v24, v26);
  }

  v131 = v38;
  v0[55] = v38;
  sub_22C7CDB30();
  v40 = v39;
  v0[56] = v39;
  v41 = *(v19 + 16);
  v134 = v19;
  if (v41)
  {
    v42 = v0[39];
    type metadata accessor for QueryDecorationToolSelectorService();
    v43 = v19 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
    v44 = *(v42 + 72);
    v45 = MEMORY[0x277D84F90];
    do
    {
      v46 = v0[45];
      v48 = v0[37];
      v47 = v0[38];
      sub_22C373A4C();
      v49 = sub_22C36BBCC();
      sub_22C7E4208(v49, v50);
      sub_22C7CC754(v46, v40, v48);
      sub_22C36B758();
      sub_22C7E42B8(v46, v51);
      sub_22C36D0A8(v48, 1, v47);
      if (v52)
      {
        sub_22C36DD28(v0[37], &qword_27D9C0288, &qword_22C926990);
      }

      else
      {
        sub_22C3787F0();
        sub_22C7E4260(v53, v54);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22C36D270();
          sub_22C595EE4();
          v45 = v60;
        }

        v57 = *(v45 + 16);
        v56 = *(v45 + 24);
        if (v57 >= v56 >> 1)
        {
          sub_22C369AB0(v56);
          sub_22C7E4C74();
          sub_22C595EE4();
          v45 = v61;
        }

        *(v45 + 16) = v57 + 1;
        sub_22C3787F0();
        sub_22C7E4260(v58, v59);
      }

      v43 += v44;
      --v41;
    }

    while (v41);
  }

  v62 = *(v137 + 16);
  if (v62)
  {
    v63 = v0[39];
    type metadata accessor for QueryDecorationToolSelectorService();
    sub_22C36BA94();
    v138 = v64;
    v65 = v137 + v64;
    v66 = *(v63 + 72);
    v67 = MEMORY[0x277D84F90];
    do
    {
      v68 = v0[44];
      v69 = v0[38];
      v70 = v0[36];
      sub_22C373A4C();
      sub_22C7E4208(v65, v68);
      sub_22C7CC754(v68, v40, v70);
      sub_22C36B758();
      sub_22C7E42B8(v68, v71);
      sub_22C36D0A8(v70, 1, v69);
      if (v52)
      {
        sub_22C36DD28(v0[36], &qword_27D9C0288, &qword_22C926990);
      }

      else
      {
        sub_22C3787F0();
        sub_22C7E4260(v72, v73);
        v74 = swift_isUniquelyReferenced_nonNull_native();
        if ((v74 & 1) == 0)
        {
          sub_22C36D270();
          sub_22C595EE4();
          v67 = v79;
        }

        v76 = *(v67 + 16);
        v75 = *(v67 + 24);
        if (v76 >= v75 >> 1)
        {
          sub_22C369AB0(v75);
          sub_22C595EE4();
          v67 = v80;
        }

        *(v67 + 16) = v76 + 1;
        sub_22C3787F0();
        sub_22C7E4260(v77, v78);
      }

      v65 += v66;
      --v62;
    }

    while (v62);
  }

  v81 = v136;
  sub_22C7D2380();
  v83 = v82;

  if (*(v83 + 16))
  {
    sub_22C3A5908(&qword_27D9C0290, &qword_22C926998);
    v84 = swift_allocObject();
    v84[2] = sub_22C7E2DBC();
    v84[3] = 0;
    v84[4] = 0;
    sub_22C7E48F0();
    sub_22C7E2D0C(v85, v86, v87, v88);
  }

  else
  {
    v84 = *sub_22C9031FC();
  }

  v0[24] = v84;
  sub_22C7CED88();

  sub_22C90400C();
  v89 = sub_22C9063CC();
  v90 = sub_22C90AACC();
  if (sub_22C370048(v90))
  {
    v91 = sub_22C36FB44();
    v92 = sub_22C370060();
    v141[0] = v92;
    *v91 = 136315138;
    sub_22C36EE00();
    *(v91 + 4) = sub_22C7E4AD8(v93, v94, v95, v96, v97, v98, v99, v100, v131, v134, v135, v136, v137, v138);
    _os_log_impl(&dword_22C366000, v89, v90, "%s calling runResolveProtocolsToSingularImplementationTools for selected tool list", v91, 0xCu);
    sub_22C36FF94(v92);
    sub_22C36C30C();
    sub_22C3699EC();
  }

  v101 = sub_22C36ECB4();
  v131(v101);
  sub_22C7D2380();
  v103 = v102;
  v0[57] = v102;

  sub_22C90400C();

  v104 = sub_22C9063CC();
  sub_22C90AABC();

  v105 = sub_22C7E4AC0();
  v106 = v0[52];
  v107 = v0[46];
  if (v105)
  {
    sub_22C383050();
    v141[0] = sub_22C37ACD0();
    *v106 = 136315394;
    sub_22C36EE00();
    v116 = sub_22C7E4AD8(v108, v109, v110, v111, v112, v113, v114, v115, v131, v134, v135, v136, v137, v106);
    sub_22C388400(v116);
    static QueryDecorationLoggingUtils.generateReadableToolList(_:)();
    sub_22C36F9F4(v117, v118, v141);
    sub_22C7E4854();

    *(v106 + 14) = v81;
    sub_22C7E44E0(&dword_22C366000, v119, v120, "%s tools at the end of runResolveProtocolsToSingularImplementationTools:\n%s");
    sub_22C7E48C8();
    sub_22C36C30C();
    sub_22C370510();

    v132(v140, v107);
  }

  else
  {

    (v131)(v106, v107);
  }

  v122 = v0[30];
  v121 = v0[31];
  v124 = v0[28];
  v123 = v0[29];
  v125 = *(v121 + 232);
  v126 = swift_allocObject();
  v0[58] = v126;
  v126[2] = v121;
  v126[3] = v122;
  v126[4] = v124;
  v126[5] = v123;
  v126[6] = v103;

  v127 = swift_task_alloc();
  v0[59] = v127;
  sub_22C3A5908(&qword_27D9C02A0, &qword_22C9269B8);
  *v127 = v0;
  v127[1] = sub_22C7CB8D4;
  v128.n128_u64[0] = v125;

  return MEMORY[0x2821C8618](v128);
}

uint64_t sub_22C7CB8D4()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v3 + 480) = v0;

  if (v0)
  {
    v7 = *(v3 + 248);
    v8 = sub_22C7CC000;
  }

  else
  {
    v9 = *(v3 + 248);

    v8 = sub_22C7CB9EC;
    v7 = v9;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

void sub_22C7CB9EC()
{
  sub_22C7E4B74();
  v2 = v1;

  sub_22C90400C();

  v3 = sub_22C9063CC();
  sub_22C90AABC();

  v4 = sub_22C7E4AC0();
  v70 = v0[55];
  v5 = byte_22C90F000;
  v71 = v2;
  if (v4)
  {
    sub_22C383050();
    v6 = sub_22C37ACD0();
    sub_22C7E4A9C(v6);
    *"selectFinalToolList(semanticallyRankedTools:queryDecorationRankedTools:spans:context:qdContext:)" = 136315394;
    v7 = sub_22C37AD58("ols:appDirectedApps:)");
    sub_22C388400(v7);
    static QueryDecorationLoggingUtils.generateReadableToolList(_:)();
    sub_22C7E4BC8(v8, v9);
    sub_22C7E4854();

    *"lList(semanticallyRankedTools:queryDecorationRankedTools:spans:context:qdContext:)" = "selectFinalToolList(semanticallyRankedTools:queryDecorationRankedTools:spans:context:qdContext:)";
    v5 = byte_22C90F000;
    sub_22C7E44E0(&dword_22C366000, v10, v11, "%s tools after final de-duplicating and substitute replacement:\n%s");
    swift_arrayDestroy();
    sub_22C7E4CD4();
    sub_22C3699EC();
    sub_22C370510();
  }

  v12 = sub_22C376018();
  v70(v12);
  v13 = sub_22C7CFEA4();
  if (v13 < *(v2 + 16))
  {
    v65 = v13;
    sub_22C90400C();
    v14 = sub_22C9063CC();
    v15 = sub_22C90AADC();
    v16 = sub_22C370048(v15);
    v17 = v0[55];
    v18 = v0[46];
    if (v16)
    {
      sub_22C383050();
      v72 = sub_22C385814();
      *v2 = *(v5 + 363);
      *(v2 + 4) = sub_22C7E44BC("selectFinalToolList(semanticallyRankedTools:queryDecorationRankedTools:spans:context:qdContext:)");
      *(v2 + 12) = 2048;
      *(v2 + 14) = v65;
      sub_22C7E4B18(&dword_22C366000, v19, v15, "%s final count of tools is greater than expected count %ld! Please clone off a radar to IntelligenceFlow | Query Decoration");
      sub_22C36FF94(v72);
      sub_22C37B09C();
      sub_22C7E4CD4();
      sub_22C3699EC();
    }

    v20 = sub_22C36ECB4();
    v17(v20);
    sub_22C7E4D70();
    v69 = *(v2 + 16);
    v22 = v21 + 104;
    v68 = *MEMORY[0x277D1ED30];
    v67 = *MEMORY[0x277D1ED40];
    v66 = MEMORY[0x277D84F90];
    while (v69 != v18)
    {
      if (v18 >= *(v2 + 16))
      {
        __break(1u);
        return;
      }

      v23 = v0[41];
      v25 = v0[34];
      v24 = v0[35];
      sub_22C37054C();
      sub_22C373A4C();
      sub_22C7E4208(v26, v23);
      sub_22C90378C();
      v27 = sub_22C7E4D50();
      (v2)(v27);
      sub_22C36CC9C();
      sub_22C90376C();
      v28 = sub_22C7E4D90();
      v18(v28);
      v29 = sub_22C38BD8C();
      v30 = (v18)(v29);
      if (v23 & 1) != 0 || (sub_22C7E4740(v30), (v2)(v24, v68, v25), sub_22C634750(), v31 = sub_22C90376C(), v32 = sub_22C36CC9C(), v18(v32), v33 = sub_22C459028(), v34 = (v18)(v33), (v31) || (sub_22C7E4740(v34), (v2)(v24, v67, v25), sub_22C634750(), v35 = sub_22C90376C(), v36 = sub_22C36CC9C(), v18(v36), v37 = sub_22C459028(), v18(v37), (v35))
      {
        sub_22C3787F0();
        sub_22C7E4260(v40, v41);
        v42 = v66;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_22C373310();
          sub_22C3B7CA0(v43, v44, v45);
          v42 = v66;
        }

        v2 = v71;
        v5 = byte_22C90F000;
        sub_22C7E4D14();
        if (v47)
        {
          sub_22C369AB0(v46);
          sub_22C379C28();
          sub_22C3B7CA0(v50, v51, v52);
          v42 = v66;
        }

        v18 = (v18 + 1);
        *(v42 + 16) = v24;
        v66 = v42;
        sub_22C3787F0();
        sub_22C7E4260(v48, v49);
      }

      else
      {
        sub_22C36B758();
        sub_22C7E42B8(v38, v39);
        v18 = (v18 + 1);
        v2 = v71;
        v5 = byte_22C90F000;
      }
    }

    sub_22C7CD9C4(v65);

    sub_22C90400C();

    v53 = sub_22C9063CC();
    sub_22C90AACC();

    sub_22C7E4AC0();
    sub_22C7E4D00();
    if (v54)
    {
      sub_22C383050();
      v55 = sub_22C37ACD0();
      sub_22C7E4A9C(v55);
      *v22 = *(v5 + 363);
      v56 = sub_22C7E44BC("selectFinalToolList(semanticallyRankedTools:queryDecorationRankedTools:spans:context:qdContext:)");
      sub_22C388400(v56);
      static QueryDecorationLoggingUtils.generateReadableToolList(_:)();
      sub_22C7E4BC8(v57, v58);
      sub_22C7E4854();

      *(v22 + 14) = v5;
      sub_22C7E44E0(&dword_22C366000, v59, v60, "%s trimmed tools down to expected count. Returning these tools: %s");
      sub_22C7E48C8();
      sub_22C36C30C();
      sub_22C370510();
    }

    v61 = sub_22C376018();
    (v22)(v61);
  }

  v62 = sub_22C7E4618();
  v63(v62);
  sub_22C36FF94(v0 + 9);

  sub_22C36D5E0();

  v64(v71);
}

void sub_22C7CC000()
{

  sub_22C90400C();
  v2 = sub_22C9063CC();
  sub_22C90AADC();

  v3 = sub_22C7E4AC0();
  v4 = v0[60];
  v5 = byte_22C90F000;
  if (v3)
  {
    v85 = v0[48];
    v86 = v0[55];
    v6 = v0[46];
    sub_22C383050();
    v7 = sub_22C37ACD0();
    sub_22C7E4A9C(v7);
    *v1 = 136315394;
    v8 = sub_22C7E44BC("selectFinalToolList(semanticallyRankedTools:queryDecorationRankedTools:spans:context:qdContext:)");
    sub_22C388400(v8);
    static QueryDecorationLoggingUtils.generateReadableToolList(_:)();
    sub_22C7E4BC8(v9, v10);
    sub_22C7E4854();

    *(v1 + 14) = byte_22C90F000;
    v5 = byte_22C90F000;
    sub_22C7E44E0(&dword_22C366000, v11, v12, "%s timed out in protocol resolution step. Passing through tools without protocol round-trip optimization applied:\n%s");
    swift_arrayDestroy();
    sub_22C3699EC();
    sub_22C370510();

    v86(v85, v6);
  }

  else
  {
    v13 = v0[55];
    v14 = v0[48];
    v15 = v0[46];

    v13(v14, v15);
  }

  sub_22C7E4B74();
  v17 = v16;

  sub_22C90400C();

  v18 = sub_22C9063CC();
  sub_22C90AABC();

  v19 = sub_22C7E4AC0();
  v20 = v0[55];
  v87 = v17;
  if (v19)
  {
    sub_22C383050();
    v21 = sub_22C37ACD0();
    sub_22C7E4A9C(v21);
    *v20 = *(v5 + 363);
    v22 = sub_22C37AD58("ols:appDirectedApps:)");
    sub_22C388400(v22);
    static QueryDecorationLoggingUtils.generateReadableToolList(_:)();
    sub_22C7E4BC8(v23, v24);
    sub_22C7E4854();

    *(v20 + 14) = v5;
    v5 = byte_22C90F000;
    sub_22C7E44E0(&dword_22C366000, v25, v26, "%s tools after final de-duplicating and substitute replacement:\n%s");
    sub_22C7E48C8();
    sub_22C7E4CD4();
    sub_22C3699EC();
    sub_22C370510();
  }

  v27 = sub_22C376018();
  (v20)(v27);
  v28 = sub_22C7CFEA4();
  if (v28 < *(v17 + 16))
  {
    v80 = v28;
    sub_22C90400C();
    v29 = sub_22C9063CC();
    v30 = sub_22C90AADC();
    v31 = sub_22C370048(v30);
    v32 = v0[55];
    v33 = v0[46];
    if (v31)
    {
      sub_22C383050();
      v88 = sub_22C385814();
      *v17 = *(v5 + 363);
      *(v17 + 4) = sub_22C7E44BC("selectFinalToolList(semanticallyRankedTools:queryDecorationRankedTools:spans:context:qdContext:)");
      *(v17 + 12) = 2048;
      *(v17 + 14) = v80;
      sub_22C7E4B18(&dword_22C366000, v34, v30, "%s final count of tools is greater than expected count %ld! Please clone off a radar to IntelligenceFlow | Query Decoration");
      sub_22C36FF94(v88);
      sub_22C37B09C();
      sub_22C7E4CD4();
      sub_22C3699EC();
    }

    v35 = sub_22C36ECB4();
    v32(v35);
    sub_22C7E4D70();
    v84 = *(v17 + 16);
    v37 = v36 + 104;
    v83 = *MEMORY[0x277D1ED30];
    v82 = *MEMORY[0x277D1ED40];
    v81 = MEMORY[0x277D84F90];
    while (v84 != v33)
    {
      if (v33 >= *(v17 + 16))
      {
        __break(1u);
        return;
      }

      v38 = v0[41];
      v40 = v0[34];
      v39 = v0[35];
      sub_22C37054C();
      sub_22C373A4C();
      sub_22C7E4208(v41, v38);
      sub_22C90378C();
      v42 = sub_22C7E4D50();
      (v17)(v42);
      sub_22C36CC9C();
      sub_22C90376C();
      v43 = sub_22C7E4D90();
      v33(v43);
      v44 = sub_22C38BD8C();
      v45 = (v33)(v44);
      if (v38 & 1) != 0 || (sub_22C7E4740(v45), (v17)(v39, v83, v40), sub_22C634750(), v46 = sub_22C90376C(), v47 = sub_22C36CC9C(), v33(v47), v48 = sub_22C459028(), v49 = (v33)(v48), (v46) || (sub_22C7E4740(v49), (v17)(v39, v82, v40), sub_22C634750(), v50 = sub_22C90376C(), v51 = sub_22C36CC9C(), v33(v51), v52 = sub_22C459028(), v33(v52), (v50))
      {
        sub_22C3787F0();
        sub_22C7E4260(v55, v56);
        v57 = v81;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = sub_22C373310();
          sub_22C3B7CA0(v58, v59, v60);
          v57 = v81;
        }

        v17 = v87;
        v5 = byte_22C90F000;
        sub_22C7E4D14();
        if (v62)
        {
          sub_22C369AB0(v61);
          sub_22C379C28();
          sub_22C3B7CA0(v65, v66, v67);
          v57 = v81;
        }

        v33 = (v33 + 1);
        *(v57 + 16) = v39;
        v81 = v57;
        sub_22C3787F0();
        sub_22C7E4260(v63, v64);
      }

      else
      {
        sub_22C36B758();
        sub_22C7E42B8(v53, v54);
        v33 = (v33 + 1);
        v17 = v87;
        v5 = byte_22C90F000;
      }
    }

    sub_22C7CD9C4(v80);

    sub_22C90400C();

    v68 = sub_22C9063CC();
    sub_22C90AACC();

    sub_22C7E4AC0();
    sub_22C7E4D00();
    if (v69)
    {
      sub_22C383050();
      v70 = sub_22C37ACD0();
      sub_22C7E4A9C(v70);
      *v37 = *(v5 + 363);
      v71 = sub_22C7E44BC("selectFinalToolList(semanticallyRankedTools:queryDecorationRankedTools:spans:context:qdContext:)");
      sub_22C388400(v71);
      static QueryDecorationLoggingUtils.generateReadableToolList(_:)();
      sub_22C7E4BC8(v72, v73);
      sub_22C7E4854();

      *(v37 + 14) = v5;
      sub_22C7E44E0(&dword_22C366000, v74, v75, "%s trimmed tools down to expected count. Returning these tools: %s");
      sub_22C7E48C8();
      sub_22C3699EC();
      sub_22C370510();
    }

    v76 = sub_22C376018();
    (v37)(v76);
  }

  v77 = sub_22C7E4618();
  v78(v77);
  sub_22C36FF94(v0 + 9);

  sub_22C36D5E0();

  v79(v87);
}

uint64_t sub_22C7CC754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v205 = a2;
  v6 = sub_22C9037DC();
  v7 = sub_22C369914(v6);
  MEMORY[0x28223BE20](v7);
  sub_22C3698A8();
  sub_22C3698F8(v8);
  v198 = sub_22C90377C();
  sub_22C369824();
  v196 = v9;
  MEMORY[0x28223BE20](v10);
  sub_22C3698A8();
  sub_22C3698F8(v11);
  v201 = sub_22C9037EC();
  sub_22C369824();
  v200 = v12;
  MEMORY[0x28223BE20](v13);
  sub_22C3698A8();
  sub_22C36D234(v14);
  v204 = sub_22C3A5908(&qword_27D9BF0B0, &unk_22C926980);
  sub_22C369824();
  v203 = v15;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v16);
  sub_22C36D5B4();
  sub_22C36D234(v17);
  v18 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  sub_22C369914(v18);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v19);
  sub_22C36D5B4();
  v212 = v20;
  sub_22C36BA0C();
  v218 = sub_22C9036EC();
  sub_22C369824();
  v216 = v21;
  MEMORY[0x28223BE20](v22);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v23);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v24);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v25);
  sub_22C36BA64();
  v211 = v26;
  sub_22C36BA0C();
  v220 = sub_22C9099FC();
  sub_22C369824();
  v213 = v27;
  MEMORY[0x28223BE20](v28);
  sub_22C3698A8();
  v217 = v29;
  v30 = sub_22C36BA0C();
  v31 = type metadata accessor for RetrievedToolWithAttribution(v30);
  sub_22C36985C();
  MEMORY[0x28223BE20](v32);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v33);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v34);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v35);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v36);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v37);
  sub_22C36D6DC();
  MEMORY[0x28223BE20](v38);
  sub_22C373000();
  v39 = sub_22C9063DC();
  sub_22C369824();
  v222 = v40;
  MEMORY[0x28223BE20](v41);
  sub_22C3698E4();
  v210 = v42;
  sub_22C369930();
  MEMORY[0x28223BE20](v43);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v44);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v45);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v46);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v47);
  v49 = &v194 - v48;
  sub_22C90400C();
  sub_22C373A4C();
  v219 = a1;
  sub_22C7E4208(a1, v3);
  v50 = sub_22C9063CC();
  sub_22C90AACC();
  sub_22C7E4C24();
  v52 = os_log_type_enabled(v50, v51);
  v214 = v31;
  v215 = a3;
  v221 = v39;
  if (v52)
  {
    sub_22C383050();
    v225 = sub_22C7E482C();
    *v39 = 136315394;
    v53 = sub_22C36F9F4(0xD000000000000036, 0x800000022C935E40, &v225);
    sub_22C7E455C(v53);
    sub_22C373A4C();
    v54 = sub_22C36CC9C();
    sub_22C7E4208(v54, v55);
    v56 = sub_22C90A1AC();
    v58 = v57;
    sub_22C36B758();
    sub_22C7E42B8(v3, v59);
    v60 = sub_22C36F9F4(v56, v58, &v225);

    *(v39 + 14) = v60;
    _os_log_impl(&dword_22C366000, v50, a1, "%s handling %s", v39, 0x16u);
    swift_arrayDestroy();
    sub_22C3699EC();
    sub_22C372FB0();

    v61 = *(v222 + 8);
    v61(v49, v221);
  }

  else
  {

    sub_22C36B758();
    sub_22C7E42B8(v3, v62);
    v61 = *(v222 + 8);
    v63 = sub_22C37170C();
    v61(v63, v64);
  }

  v65 = v211;
  v66 = v219;
  sub_22C90371C();
  v67 = v212;
  sub_22C57709C();
  v68 = v216;
  v69 = v216 + 8;
  v70 = *(v216 + 8);
  v71 = v65;
  v72 = v218;
  v70(v71, v218);
  sub_22C36D0A8(v67, 1, v220);
  v73 = v217;
  v208 = v70;
  if (v74)
  {
    v220 = v69;
    sub_22C36DD28(v67, &qword_27D9BDC50, &unk_22C91B470);
    v75 = v210;
    sub_22C90400C();
    sub_22C373A4C();
    v76 = v207;
    sub_22C7E4208(v66, v207);
    v77 = sub_22C9063CC();
    v78 = sub_22C90AACC();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = v72;
      v80 = sub_22C383050();
      v81 = sub_22C37A180();
      v223 = v81;
      *v80 = 136315394;
      v82 = sub_22C7E4810(v81, 0x800000022C935E40);
      sub_22C389260(v82);
      sub_22C374490();
      sub_22C90371C();
      RetrievedTool.Definition.toCandidateIdentifier()();
      v208(byte_22C90F000, v79);
      sub_22C36B758();
      sub_22C7E42B8(v76, v83);
      v84 = v61;
      v85 = v225;

      v86 = sub_22C36BA00();
      sub_22C36F9F4(v86, v87, v88);
      sub_22C7E4E74();
      *(v80 + 14) = v85;
      _os_log_impl(&dword_22C366000, v77, v78, "%s tool does not conform to an assistantSchema and is not an instance of an assistantSchema %s", v80, 0x16u);
      swift_arrayDestroy();
      v89 = v219;
      sub_22C3699EC();
      sub_22C372A84();

      sub_22C7E497C();
      v84(v210);
    }

    else
    {
      v89 = v66;

      sub_22C36B758();
      sub_22C7E42B8(v76, v117);
      sub_22C7E497C();
      (v61)(v75);
    }

    v116 = v214;
    v118 = v215;
    sub_22C373A4C();
    v119 = v89;
    goto LABEL_26;
  }

  v211 = v61;
  v90 = sub_22C36CC9C();
  v91(v90);
  sub_22C374490();
  sub_22C90371C();
  v92 = sub_22C5CAC54();
  v93(v92, v50, v72);
  v94 = (*(v68 + 88))(v67, v72);
  v95 = *MEMORY[0x277D1ECE8];
  v70(v67, v72);
  if (v94 == v95)
  {
    sub_22C37A078();
    sub_22C90400C();
    sub_22C373A4C();
    v96 = v202;
    sub_22C7E4208(v66, v202);
    v97 = sub_22C9063CC();
    v98 = sub_22C90AABC();
    v99 = sub_22C7E4928(v98);
    v100 = v221;
    if (v99)
    {
      sub_22C383050();
      v101 = sub_22C7E482C();
      sub_22C7E4D64(v101);
      *v100 = 136315394;
      sub_22C36EE00();
      v104 = sub_22C7E4810(v102, v103);
      sub_22C7E455C(v104);
      sub_22C7E49D8();
      sub_22C90371C();
      sub_22C7E4E2C();
      v105 = sub_22C386690();
      v106(v105);
      sub_22C36B758();
      sub_22C7E42B8(v96, v107);
      sub_22C36C8C0();
      v108 = sub_22C372FA4();
      sub_22C36F9F4(v108, v109, v110);
      sub_22C38B194();
      v111 = v219;

      *(v100 + 14) = v96;
      sub_22C37EFA0(&dword_22C366000, v112, v113, "%s tool is an assistantSchema %s");
      sub_22C7E48AC();
      sub_22C36D69C();
      v114 = v217;
      sub_22C3699EC();

      v115 = sub_22C38BD8C();
      (v211)(v115);
      v116 = v214;
    }

    else
    {
      v111 = v66;

      sub_22C36B758();
      sub_22C7E42B8(v96, v140);
      v141 = sub_22C37170C();
      (v211)(v141);
      v116 = v214;
      v114 = v73;
    }

    v225 = sub_22C9099EC();
    v226 = v142;
    v223 = sub_22C9099DC();
    v224 = v143;
    sub_22C37A078();
    sub_22C90678C();
    sub_22C5E985C();
    v145 = v144;
    (*(v203 + 8))(v114, v204);
    if (v145)
    {
      sub_22C37A078();
      sub_22C90400C();
      sub_22C373A4C();
      v146 = v111;
      v147 = v199;
      sub_22C7E4208(v146, v199);
      v148 = sub_22C9063CC();
      v149 = sub_22C90AABC();
      if (sub_22C7E4928(v149))
      {
        sub_22C383050();
        v150 = sub_22C7E482C();
        sub_22C7E4D64(v150);
        *v100 = 136315394;
        sub_22C36EE00();
        v153 = sub_22C7E4810(v151, v152);
        sub_22C7E455C(v153);
        sub_22C7E49D8();
        sub_22C90371C();
        sub_22C7E4E2C();
        v154 = sub_22C386690();
        v155(v154);
        sub_22C36B758();
        sub_22C7E42B8(v147, v156);
        sub_22C36C8C0();
        v157 = sub_22C372FA4();
        sub_22C36F9F4(v157, v158, v159);
        sub_22C38B194();

        *(v100 + 14) = v147;
        sub_22C37EFA0(&dword_22C366000, v160, v161, "%s discarding schema that has overlap %s");
        sub_22C7E48AC();
        sub_22C3699EC();
        sub_22C372FB0();

        sub_22C7E497C();
        (v211)(v114);
        sub_22C7E4C30();
        v163 = v217;
      }

      else
      {

        sub_22C36B758();
        sub_22C7E42B8(v147, v188);
        v189 = sub_22C37170C();
        (v211)(v189);
        sub_22C7E4C30();
        v163 = v114;
      }

      v162(v163, v220);
      v186 = 1;
      v118 = v215;
      return sub_22C36C640(v118, v186, 1, v116);
    }

    sub_22C7E4C30();
    v183(v114, v220);
    goto LABEL_25;
  }

  sub_22C3819C0();
  v225 = 0xD00000000000001CLL;
  v226 = v120;
  v121 = sub_22C9099DC();
  v123 = v122;
  v223 = v121;
  v224 = v122;
  sub_22C3858B4();
  v124 = sub_22C90AD8C();

  if (v124)
  {
    sub_22C374490();
    sub_22C90400C();
    sub_22C373A4C();
    v111 = v66;
    v125 = v194;
    sub_22C7E4208(v66, v194);
    v126 = sub_22C9063CC();
    v127 = sub_22C90AACC();
    if (sub_22C7E4928(v127))
    {
      sub_22C383050();
      v128 = sub_22C7E482C();
      sub_22C7E4D64(v128);
      *v123 = 136315394;
      sub_22C36EE00();
      v131 = sub_22C7E4810(v129, v130);
      sub_22C7E455C(v131);
      sub_22C7E49D8();
      sub_22C90371C();
      sub_22C7E4E2C();
      v132 = sub_22C386690();
      v133(v132);
      sub_22C36B758();
      sub_22C7E42B8(v125, v134);
      sub_22C36C8C0();
      v135 = sub_22C372FA4();
      sub_22C36F9F4(v135, v136, v137);
      sub_22C38B194();
      v111 = v219;

      *(v123 + 14) = v125;
      sub_22C37EFA0(&dword_22C366000, v138, v139, "%s not replacing app-directed tool implementation with conforming schema %s");
      sub_22C7E48AC();
      sub_22C36D69C();
      sub_22C372FB0();
    }

    else
    {

      sub_22C36B758();
      sub_22C7E42B8(v125, v184);
    }

    sub_22C7E497C();
    (v211)(v50);
    sub_22C7E4C30();
    v185(v73, v220);
    v116 = v214;
LABEL_25:
    sub_22C373A4C();
    v119 = v111;
    v118 = v215;
LABEL_26:
    sub_22C7E4208(v119, v118);
    v186 = 0;
    return sub_22C36C640(v118, v186, 1, v116);
  }

  v164 = v213;
  v165 = v209;
  v166 = sub_22C634750();
  v167(v166);
  (*(v216 + 104))(v165, v95, v218);
  sub_22C90373C();
  (*(v196 + 104))(v197, *MEMORY[0x277D1ED28], v198);
  sub_22C36D818();
  sub_22C90379C();
  sub_22C9036FC();
  sub_22C36D818();
  sub_22C90400C();
  sub_22C373A4C();
  v168 = v95;
  v169 = v195;
  sub_22C7E4208(v66, v195);
  v170 = sub_22C9063CC();
  v171 = v164;
  v172 = sub_22C90AABC();
  if (os_log_type_enabled(v170, v172))
  {
    sub_22C383050();
    v173 = sub_22C7E482C();
    sub_22C7E4D64(v173);
    *v165 = 136315394;
    sub_22C36EE00();
    v176 = sub_22C7E4810(v174, v175);
    sub_22C7E455C(v176);
    sub_22C90371C();
    sub_22C7E4E2C();
    v177 = sub_22C386690();
    v178(v177);
    sub_22C36B758();
    sub_22C7E42B8(v169, v179);
    sub_22C36C8C0();
    v180 = sub_22C372FA4();
    sub_22C36F9F4(v180, v181, v182);
    sub_22C38B194();

    *(v165 + 14) = v169;
    _os_log_impl(&dword_22C366000, v170, v172, "%s replacing tool with its conforming schema for later duplicate removal and substitution %s", v165, 0x16u);
    sub_22C7E48AC();
    sub_22C36D69C();
    sub_22C372FB0();

    sub_22C7E497C();
    (v211)(v168);
    (*(v171 + 8))(v217, v220);
  }

  else
  {

    sub_22C36B758();
    sub_22C7E42B8(v169, v190);
    sub_22C7E497C();
    (v211)(v168);
    v191 = sub_22C37FE24();
    v193(v191, v192);
  }

  v116 = v214;
  v118 = v215;
  (*(v200 + 32))(v215, v206, v201);
  v186 = 0;
  *(v118 + *(v116 + 20)) = 2;
  return sub_22C36C640(v118, v186, 1, v116);
}

uint64_t sub_22C7CD7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v7 = swift_task_alloc();
  *(v6 + 24) = v7;
  *v7 = v6;
  v7[1] = sub_22C7CD890;

  return sub_22C7D28E4();
}

uint64_t sub_22C7CD890(uint64_t a1)
{
  sub_22C369A3C();
  v5 = v4;
  sub_22C36D994();
  *v6 = v5;
  v7 = *v2;
  sub_22C369970();
  *v8 = v7;

  if (v1)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = a1;
    sub_22C36BB08();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_22C7CD9C4(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (*(*v2 + 16) >= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = *(*v2 + 16);
  }

  v1 = sub_22C606154(0, v6, *v2);
  v3 = v7;
  v4 = v8;
  v5 = v9;
  sub_22C7C7A40(v6, sub_22C88842C, sub_22C3D85FC, type metadata accessor for RetrievedToolWithAttribution, sub_22C3D7AAC);
  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_22C90B50C();
  swift_unknownObjectRetain_n();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    v12 = MEMORY[0x277D84F90];
  }

  v13 = *(v12 + 16);

  if (__OFSUB__(v5 >> 1, v4))
  {
    goto LABEL_16;
  }

  if (v13 != (v5 >> 1) - v4)
  {
LABEL_17:
    swift_unknownObjectRelease_n();
LABEL_6:
    sub_22C4705E4(v1, v3, v4, v5);
    v11 = v10;
LABEL_13:
    swift_unknownObjectRelease();
    return v11;
  }

  v11 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v11)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  return v11;
}

void sub_22C7CDB30()
{
  sub_22C36BA7C();
  sub_22C369A48();
  v110 = sub_22C9036EC();
  sub_22C369824();
  v122 = v3;
  MEMORY[0x28223BE20](v4);
  sub_22C3698A8();
  sub_22C3698F8(v5);
  v117 = sub_22C9063DC();
  sub_22C369824();
  v121 = v6;
  MEMORY[0x28223BE20](v7);
  sub_22C3698A8();
  sub_22C36D234(v8);
  sub_22C3A5908(&qword_27D9BF0B0, &unk_22C926980);
  sub_22C369824();
  v125 = v10;
  v126 = v9;
  MEMORY[0x28223BE20](v9);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v11);
  sub_22C36BA64();
  v118 = v12;
  sub_22C36BA0C();
  v129 = sub_22C9099FC();
  sub_22C369824();
  v120 = v13;
  MEMORY[0x28223BE20](v14);
  sub_22C3698E4();
  sub_22C3698D4();
  v16 = MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v107 - v17;
  v19 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  v20 = sub_22C369914(v19);
  MEMORY[0x28223BE20](v20);
  sub_22C369ABC();
  sub_22C387D8C();
  MEMORY[0x28223BE20](v21);
  v22 = sub_22C7E4D3C();
  v23 = type metadata accessor for RetrievedToolWithAttribution(v22);
  v24 = sub_22C3699B8(v23);
  v26 = v25;
  MEMORY[0x28223BE20](v24);
  sub_22C3698E4();
  v124 = v27;
  sub_22C369930();
  MEMORY[0x28223BE20](v28);
  sub_22C36BA58();
  v130 = v29;
  sub_22C369930();
  MEMORY[0x28223BE20](v30);
  sub_22C36BA58();
  v127 = v31;
  sub_22C369930();
  MEMORY[0x28223BE20](v32);
  v35 = &v107 - v34;
  v36 = 0;
  v128 = v1;
  v37 = *(v1 + 16);
  v112 = MEMORY[0x277D84F90];
  v131 = v0;
  while (v37 != v36)
  {
    v38 = v18;
    v39 = v33;
    sub_22C373A4C();
    sub_22C7E4208(v40, v35);
    type metadata accessor for QueryDecorationToolSelectorService();
    sub_22C7CE4C0(v35, v2);
    sub_22C36D0A8(v2, 1, v129);
    if (v41)
    {
      sub_22C36B758();
      sub_22C7E42B8(v35, v42);
      sub_22C36DD28(v2, &qword_27D9BDC50, &unk_22C91B470);
      ++v36;
    }

    else
    {
      sub_22C36DD28(v2, &qword_27D9BDC50, &unk_22C91B470);
      sub_22C3787F0();
      sub_22C7E4260(v35, v127);
      v43 = v112;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v132 = v43;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v45 = sub_22C373310();
        sub_22C3B7CA0(v45, v46, v47);
        v43 = v132;
      }

      v49 = *(v43 + 16);
      v48 = *(v43 + 24);
      v50 = (v49 + 1);
      if (v49 >= v48 >> 1)
      {
        v52 = sub_22C369AB0(v48);
        v123 = v53;
        v119 = v54;
        sub_22C3B7CA0(v52, v53, 1);
        v50 = v123;
        v43 = v132;
      }

      ++v36;
      *(v43 + 16) = v50;
      v112 = v43;
      sub_22C3787F0();
      sub_22C7E4260(v127, v51);
    }

    v33 = v39;
    v18 = v38;
    v0 = v131;
  }

  v136 = MEMORY[0x277D84FA0];
  v55 = sub_22C37B56C();
  v57 = *(v55 + 16);
  if (v57)
  {
    v114 = v56;
    v58 = v55;
    type metadata accessor for QueryDecorationToolSelectorService();
    sub_22C36BA94();
    v60 = v58 + v59;
    v127 = *(v26 + 72);
    v128 = v61;
    v123 = v120 + 4;
    ++v125;
    v62 = v120 + 2;
    v116 = v121 + 8;
    v109 = "ools:substitutes:ignoreSet:)";
    v108 = v122 + 1;
    *&v63 = 136315650;
    v107 = v63;
    v122 = v120 + 1;
    v115 = &v120[1] & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v64 = v111;
    v65 = v118;
    v66 = v129;
    while (1)
    {
      v67 = v62;
      sub_22C373A4C();
      v69 = v68;
      sub_22C7E4208(v60, v68);
      sub_22C7CE4C0(v69, v0);
      sub_22C36D0A8(v0, 1, v66);
      if (v41)
      {
        sub_22C36B758();
        sub_22C7E42B8(v69, v70);
        sub_22C36DD28(v0, &qword_27D9BDC50, &unk_22C91B470);
      }

      else
      {
        (v123->isa)(v18, v0, v66);
        v132 = sub_22C9099EC();
        v133 = v71;
        v134 = sub_22C9099DC();
        v135 = v72;
        sub_22C90678C();
        sub_22C5E985C();
        v74 = v73;
        v75 = *v125;
        (*v125)(v65, v126);
        if ((v74 & 1) == 0)
        {
          v121 = v75;
          sub_22C90400C();
          v62 = v67;
          isa = v67->isa;
          (v67->isa)(v114, v18, v66);
          sub_22C373A4C();
          sub_22C7E4208(v130, v124);
          v80 = sub_22C9063CC();
          LODWORD(v119) = sub_22C90AACC();
          v120 = v80;
          if (os_log_type_enabled(v80, v119))
          {
            v81 = sub_22C370060();
            v113 = swift_slowAlloc();
            v134 = v113;
            *v81 = v107;
            sub_22C7E4C68();
            *(v81 + 4) = sub_22C36F9F4(0xD000000000000045, v82 | 0x8000000000000000, &v134);
            *(v81 + 12) = 2080;
            v83 = sub_22C37170C();
            isa(v83);
            sub_22C90A1AC();
            v85 = v84;
            v86 = v122->isa;
            v87 = sub_22C634750();
            (v86)(v87);
            v88 = sub_22C36BBCC();
            v91 = sub_22C36F9F4(v88, v89, v90);

            *(v81 + 14) = v91;
            *(v81 + 22) = 2080;
            sub_22C36D818();
            v92 = v124;
            sub_22C90371C();
            RetrievedTool.Definition.toCandidateIdentifier()();
            sub_22C36BA4C();
            v93(v85, v110);
            sub_22C36B758();
            sub_22C7E42B8(v92, v94);
            v95 = v132;

            v96 = sub_22C36BA00();
            sub_22C36F9F4(v96, v97, v98);
            sub_22C7E4E74();
            *(v81 + 24) = v95;
            v99 = v120;
            _os_log_impl(&dword_22C366000, v120, v119, "%s adding to ignoreSchemas: %s %s", v81, 0x20u);
            swift_arrayDestroy();
            sub_22C3699EC();
            v62 = v67;
            v100 = v86;
            v64 = v111;
            sub_22C3699EC();
          }

          else
          {

            sub_22C36B758();
            sub_22C7E42B8(v124, v102);
            v100 = v122->isa;
            v103 = sub_22C634750();
            (v100)(v103);
          }

          sub_22C37BFAC();
          v101(v64, v117);
          v132 = sub_22C9099EC();
          v133 = v104;
          v134 = sub_22C9099DC();
          v135 = v105;
          sub_22C36D818();
          sub_22C90678C();
          v65 = v118;
          sub_22C6A637C();
          (v121)(v65, v126);
          sub_22C50B578();
          sub_22C7E4C00();
          v100();
          sub_22C36B758();
          sub_22C7E42B8(v130, v106);
          v0 = v131;
          goto LABEL_24;
        }

        sub_22C7E49CC();
        v76 = sub_22C50B578();
        v77(v76);
        sub_22C36B758();
        sub_22C7E42B8(v130, v78);
        v0 = v131;
      }

      v62 = v67;
LABEL_24:
      v60 += v127;
      if (!--v57)
      {
        sub_22C37B56C();
        break;
      }
    }
  }

  sub_22C36CC48();
}

uint64_t sub_22C7CE4C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v3 = sub_22C908D6C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  MEMORY[0x28223BE20](v7 - 8);
  v83 = &v70 - v8;
  v9 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v77 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v76 = &v70 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v94 = &v70 - v15;
  MEMORY[0x28223BE20](v14);
  v82 = &v70 - v16;
  v17 = sub_22C9099FC();
  v90 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v93 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v81 = &v70 - v20;
  v21 = sub_22C9036EC();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v79 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v78 = &v70 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v70 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v70 - v30;
  v32 = a1;
  sub_22C90371C();
  LOBYTE(a1) = sub_22C57F13C();
  v80 = v22;
  v34 = *(v22 + 8);
  v33 = v22 + 8;
  v35 = v31;
  v36 = v21;
  v37 = v34;
  v34(v35, v36);
  if ((a1 & 1) == 0)
  {
    v42 = 1;
    v41 = v84;
    return sub_22C36C640(v41, v42, 1, v17);
  }

  v75 = v32;
  sub_22C90371C();
  v38 = v83;
  sub_22C9036BC();
  v74 = v33;
  v37(v29, v36);
  v39 = sub_22C908EAC();
  if (sub_22C370B74(v38, 1, v39) == 1)
  {
    sub_22C36DD28(v38, &qword_27D9BC1E8, &qword_22C9123B0);
    v40 = v82;
    sub_22C36C640(v82, 1, 1, v17);
    v41 = v84;
    goto LABEL_25;
  }

  v73 = v39;
  v71 = v37;
  v72 = v36;
  result = sub_22C908DEC();
  v44 = result;
  v45 = 0;
  v46 = *(result + 16);
  v92 = *MEMORY[0x277D72148];
  v86 = (v4 + 96);
  v87 = (v4 + 8);
  v47 = v90;
  v85 = 0x800000022C932110;
  ++v90;
  v91 = (v47 + 4);
  v88 = v4;
  v89 = result;
  while (v46 != v45)
  {
    (*(v4 + 16))(v6, v44 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v45, v3);
    v48 = (*(v4 + 88))(v6, v3);
    if (v48 == v92)
    {
      (*v86)(v6, v3);
      v49 = *v91;
      v50 = v17;
      (*v91)(v93, v6, v17);
      if (sub_22C9099DC() == 0xD00000000000001CLL && v85 == v51)
      {
      }

      else
      {
        v53 = sub_22C90B4FC();

        if ((v53 & 1) == 0)
        {
          v68 = v94;
          v17 = v50;
          v69 = v91;
          v49(v94, v93, v50);
          sub_22C36C640(v68, 0, 1, v50);
          result = sub_22C36DD28(v68, &qword_27D9BDC50, &unk_22C91B470);
          v44 = v89;
          goto LABEL_19;
        }
      }

      v17 = v50;
      (*v90)(v93, v50);
      v4 = v88;
      v44 = v89;
    }

    else
    {
      (*v87)(v6, v3);
    }

    v54 = v94;
    sub_22C36C640(v94, 1, 1, v17);
    result = sub_22C36DD28(v54, &qword_27D9BDC50, &unk_22C91B470);
    ++v45;
  }

  v45 = v46;
  v69 = v91;
LABEL_19:
  v55 = *(v44 + 16);
  v41 = v84;
  if (v45 == v55)
  {
    v56 = 1;
    v40 = v82;
    v57 = v83;
    goto LABEL_24;
  }

  if (v45 >= v55)
  {
    __break(1u);
  }

  else
  {
    v58 = v76;
    sub_22C5791C0();
    v59 = v77;
    sub_22C4E719C(v58, v77, &qword_27D9BDC50, &unk_22C91B470);
    result = sub_22C370B74(v59, 1, v17);
    if (result != 1)
    {
      v40 = v82;
      (*v69)(v82, v59, v17);
      sub_22C36DD28(v58, &qword_27D9BDC50, &unk_22C91B470);
      v56 = 0;
      v57 = v83;
LABEL_24:
      v60 = v81;
      sub_22C36C640(v40, v56, 1, v17);

      (*(*(v73 - 8) + 8))(v57);
      if (sub_22C370B74(v40, 1, v17) != 1)
      {
        v61 = *v69;
        (*v69)(v60, v40, v17);
        v62 = v78;
        sub_22C90371C();
        v64 = v79;
        v63 = v80;
        v65 = v62;
        v66 = v72;
        (*(v80 + 32))(v79, v65, v72);
        LODWORD(v63) = (*(v63 + 88))(v64, v66);
        v67 = *MEMORY[0x277D1ECE8];
        v71(v64, v66);
        if (v63 != v67)
        {
          v61(v41, v60, v17);
          v42 = 0;
          return sub_22C36C640(v41, v42, 1, v17);
        }

        (*v90)(v60, v17);
        goto LABEL_26;
      }

LABEL_25:
      sub_22C36DD28(v40, &qword_27D9BDC50, &unk_22C91B470);
LABEL_26:
      v42 = 1;
      return sub_22C36C640(v41, v42, 1, v17);
    }
  }

  __break(1u);
  return result;
}

void sub_22C7CED88()
{
  sub_22C36BA7C();
  v193 = v2;
  v4 = v3;
  v183 = sub_22C3A5908(&qword_27D9BF0B0, &unk_22C926980);
  sub_22C369824();
  v181 = v5;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  sub_22C36D5B4();
  sub_22C36D234(v7);
  v8 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  sub_22C369914(v8);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C36D5B4();
  sub_22C3698F8(v10);
  v186 = sub_22C9099FC();
  sub_22C369824();
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  sub_22C9063DC();
  sub_22C369824();
  MEMORY[0x28223BE20](v12);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v13);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v14);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v15);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v16);
  sub_22C36BA64();
  sub_22C36D234(v17);
  v18 = sub_22C3A5908(&qword_27D9C0288, &qword_22C926990);
  v19 = sub_22C369914(v18);
  MEMORY[0x28223BE20](v19);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v20);
  sub_22C36BA58();
  v191 = v21;
  sub_22C369930();
  MEMORY[0x28223BE20](v22);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v23);
  sub_22C36BA64();
  v194 = v24;
  sub_22C36BA0C();
  v25 = sub_22C9036EC();
  sub_22C369824();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v29);
  v30 = sub_22C7E4D28();
  v200 = type metadata accessor for RetrievedToolWithAttribution(v30);
  sub_22C369824();
  v196 = v31;
  MEMORY[0x28223BE20](v32);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v33);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v34);
  sub_22C36BA58();
  v192 = v35;
  sub_22C369930();
  MEMORY[0x28223BE20](v36);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v37);
  sub_22C373000();
  v38 = 0;
  v205 = 0;
  v206 = MEMORY[0x277D84F90];
  v207 = MEMORY[0x277D84F90];
  v195 = *(v4 + 16);
  v39 = (v27 + 8);
  v197 = v0;
  v198 = v25;
  v199 = (v27 + 8);
  while (v195 != v38)
  {
    v40 = (*(v196 + 80) + 32) & ~*(v196 + 80);
    v41 = *(v196 + 72);
    v201 = v38;
    sub_22C373A4C();
    sub_22C7E4208(v42, v1);
    sub_22C90371C();
    sub_22C7E4EA4();
    v43 = *v39;
    v44 = sub_22C3806B8();
    v43(v44);
    v45 = v203;

    v46 = v207;
    v47 = *(v206 + 16);
    if (v205)
    {

      v48 = sub_22C7E47D4();
      sub_22C7DA844(v48, v49, v50, v51, v52);
      sub_22C7E4AB4();
    }

    else
    {
      v53 = sub_22C7E47D4();
      sub_22C7D9010(v53, v54, v55, v56);
      sub_22C7E4AB4();
    }

    if (v47)
    {
      v57 = sub_22C381B6C();
      sub_22C36C640(v57, v58, v59, v200);
      sub_22C36DD28(v194, &qword_27D9C0288, &qword_22C926990);
      sub_22C90371C();
      sub_22C7E4EA4();
      (v43)(v197, v198);
      v39 = v199;
      v60 = v204;

      sub_22C373A4C();
      sub_22C7E4208(v1, v190);
      sub_22C36BECC();
      sub_22C36C640(v61, v62, v63, v200);
      v64 = sub_22C36BAFC();
      sub_22C7C752C(v64, v65, v60);
      sub_22C36B758();
      v67 = v1;
LABEL_12:
      sub_22C7E42B8(v67, v66);
      goto LABEL_14;
    }

    if (v45 < 0)
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      return;
    }

    sub_22C7E4AA8();
    if (v68)
    {
      goto LABEL_51;
    }

    sub_22C7E4208(v46 + v40 + v45 * v41, v194);
    sub_22C36BECC();
    sub_22C36C640(v69, v70, v71, v200);
    sub_22C36DD28(v194, &qword_27D9C0288, &qword_22C926990);
    sub_22C36D818();
    sub_22C90400C();
    sub_22C7E4208(v1, v189);
    v72 = sub_22C9063CC();
    sub_22C90AACC();
    sub_22C7E4C24();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = sub_22C383050();
      v75 = sub_22C37A180();
      *v74 = sub_22C7E4A28(v75).n128_u32[0];
      v76 = sub_22C7E45B8();
      sub_22C389260(v76);
      sub_22C90371C();
      RetrievedTool.Definition.toCandidateIdentifier()();
      (v43)(v197, v198);
      sub_22C36B758();
      v188 = v77;
      sub_22C7E42B8(v189, v78);
      v79 = v203;
      v80 = v204;

      v81 = sub_22C36F9F4(v79, v80, v202);

      *(v74 + 14) = v81;
      v39 = v199;
      _os_log_impl(&dword_22C366000, v72, v47, "%s duplicate tool dropped %s", v74, 0x16u);
      swift_arrayDestroy();
      sub_22C372FB0();
      sub_22C372A84();

      sub_22C37BFAC();
      sub_22C7E4804();
      v82();
      v67 = v1;
      v66 = v188;
      goto LABEL_12;
    }

    sub_22C37B420();
    sub_22C7E42B8(v189, v83);
    sub_22C37BFAC();
    sub_22C7E4804();
    v84();
    v85 = sub_22C4F6088();
    sub_22C7E42B8(v85, v86);
    v39 = v199;
LABEL_14:
    v38 = v201 + 1;
  }

  while (1)
  {
    v87 = v207;
    v88 = *(v207 + 16);
    v89 = sub_22C7CFEA4();
    v90 = *(*v193 + 24);
    if (v88 >= v89)
    {
      break;
    }

    if (!v90)
    {
      goto LABEL_43;
    }

    if (v90 < 1)
    {
      v110 = sub_22C381B6C();
      sub_22C36C640(v110, v111, v112, v200);
      sub_22C36DD28(v191, &qword_27D9C0288, &qword_22C926990);
      continue;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C7E2E58();
    }

    v91 = *v193;
    v92 = *(v196 + 80);
    sub_22C3787F0();
    sub_22C7E4260(v93, v191);
    v94 = v91[4];
    v95 = __OFADD__(v94, 1);
    v96 = v94 + 1;
    if (v95)
    {
      goto LABEL_52;
    }

    v97 = v91[3];
    if (v96 >= v91[2])
    {
      v96 = 0;
    }

    v91[4] = v96;
    if (__OFSUB__(v97, 1))
    {
      goto LABEL_53;
    }

    v91[3] = v97 - 1;
    sub_22C36BECC();
    sub_22C36C640(v98, v99, v100, v200);
    sub_22C3787F0();
    sub_22C7E4260(v191, v192);
    sub_22C90371C();
    sub_22C7E4EA4();
    v101 = *v199;
    v102 = sub_22C3806B8();
    v101(v102);
    v103 = v203;

    v104 = *(v206 + 16);
    if (v205)
    {

      v105 = sub_22C7E47D4();
      sub_22C7DA844(v105, v106, v107, v108, v109);
      sub_22C7E4AB4();
    }

    else
    {
      v113 = sub_22C7E47D4();
      sub_22C7D9010(v113, v114, v115, v116);
      sub_22C7E4AB4();
    }

    if (v104)
    {
      v117 = sub_22C381B6C();
      sub_22C36C640(v117, v118, v119, v200);
      sub_22C36DD28(v187, &qword_27D9C0288, &qword_22C926990);
      sub_22C37BA44();
      sub_22C90371C();
      sub_22C36D818();
      sub_22C57709C();
      (v101)(v103, v198);
      sub_22C36D0A8(v187, 1, v186);
      if (v120)
      {
        sub_22C36DD28(v187, &qword_27D9BDC50, &unk_22C91B470);
        v127 = v197;
      }

      else
      {
        v121 = sub_22C36BBCC();
        v122(v121);
        v203 = sub_22C9099EC();
        v204 = v123;
        v202[0] = sub_22C9099DC();
        v202[1] = v124;
        sub_22C90678C();
        sub_22C5E985C();
        v126 = v125;
        (*(v181 + 8))(v182, v183);
        v127 = v197;
        if (v126)
        {
          sub_22C37BA44();
          sub_22C90400C();
          sub_22C373A4C();
          sub_22C7E4208(v192, v185);
          v128 = sub_22C9063CC();
          v129 = sub_22C90AACC();
          if (sub_22C7E4928(v129))
          {
            sub_22C383050();
            v130 = sub_22C37ACD0();
            *v92 = sub_22C7E4A28(v130).n128_u32[0];
            v131 = sub_22C7E45B8();
            sub_22C388400(v131);
            sub_22C90371C();
            RetrievedTool.Definition.toCandidateIdentifier()();
            (v101)(v197, v198);
            sub_22C37B420();
            sub_22C7E42B8(v185, v132);
            v133 = v203;
            v134 = v204;

            v135 = sub_22C36F9F4(v133, v134, v202);

            *(v92 + 14) = v135;
            _os_log_impl(&dword_22C366000, v128, v182, "%s skipped overlapping schema tool %s", v92, 0x16u);
            swift_arrayDestroy();
            sub_22C3699EC();
            sub_22C370510();

            sub_22C37BFAC();
            sub_22C7E4804();
            v136();
            sub_22C37ED90();
            v137 = sub_22C7E4CE0();
            v138(v137);
            sub_22C7E42B8(v192, v197);
          }

          else
          {

            sub_22C7E46E8();
            sub_22C7E42B8(v185, v144);
            sub_22C37BFAC();
            sub_22C7E4804();
            v145();
            sub_22C37ED90();
            v146 = sub_22C7E4CE0();
            v147(v146);
            sub_22C7E42B8(v192, v128);
          }

          continue;
        }

        sub_22C37ED90();
        v148 = sub_22C37170C();
        v149(v148);
      }

      sub_22C90371C();
      sub_22C7E4EA4();
      v150 = sub_22C3806B8();
      v101(v150);

      sub_22C7E4208(v192, v190);
      sub_22C36BECC();
      sub_22C36C640(v151, v152, v153, v200);
      sub_22C37275C();
      sub_22C7C752C(v154, v155, v156);
      sub_22C37A078();
      sub_22C90400C();
      sub_22C7E4208(v192, v184);
      v157 = sub_22C9063CC();
      sub_22C90AACC();
      sub_22C7E4C24();
      if (os_log_type_enabled(v157, v158))
      {
        v159 = sub_22C383050();
        v160 = sub_22C37A180();
        *v159 = sub_22C7E4A28(v160).n128_u32[0];
        v161 = sub_22C7E45B8();
        sub_22C389260(v161);
        sub_22C90371C();
        RetrievedTool.Definition.toCandidateIdentifier()();
        (v101)(v127, v198);
        sub_22C37B420();
        sub_22C7E42B8(v184, v162);

        v163 = sub_22C36FC2C();
        v166 = sub_22C36F9F4(v163, v164, v165);

        *(v159 + 14) = v166;
        _os_log_impl(&dword_22C366000, v157, v127, "%s replaced duplicate with substitute tool %s", v159, 0x16u);
        swift_arrayDestroy();
        sub_22C372FB0();
        sub_22C372A84();

        sub_22C37BFAC();
        sub_22C7E4804();
        v167();
        sub_22C7E42B8(v192, v127);
      }

      else
      {

        sub_22C7E46E8();
        sub_22C7E42B8(v184, v168);
        sub_22C37BFAC();
        sub_22C7E4804();
        v169();
        sub_22C7E42B8(v192, v157);
      }
    }

    else
    {
      if ((v103 & 0x8000000000000000) != 0)
      {
        goto LABEL_54;
      }

      if (v103 >= *(v87 + 16))
      {
        goto LABEL_55;
      }

      sub_22C373A4C();
      sub_22C7E4208(v139, v187);
      sub_22C36BECC();
      sub_22C36C640(v140, v141, v142, v200);
      sub_22C36B758();
      sub_22C7E42B8(v192, v143);
      sub_22C36DD28(v187, &qword_27D9C0288, &qword_22C926990);
    }
  }

  if (v90)
  {
    goto LABEL_46;
  }

LABEL_43:
  sub_22C90400C();
  v170 = sub_22C9063CC();
  v171 = sub_22C90AADC();
  if (sub_22C370048(v171))
  {
    v172 = swift_slowAlloc();
    *v172 = 0;
    _os_log_impl(&dword_22C366000, v170, v171, "QDInternal: Query Decoration ran out of tool substitutes! Please clone off a radar to IntelligenceFlow | Query Decoration", v172, 2u);
    sub_22C372A84();
  }

  sub_22C37BFAC();
  sub_22C7E4804();
  v173();
LABEL_46:
  sub_22C7E4CC8();
  sub_22C90400C();

  v174 = sub_22C9063CC();
  v175 = sub_22C90AACC();
  if (sub_22C370048(v175))
  {
    v176 = sub_22C370060();
    v177 = sub_22C370060();
    v203 = v177;
    *v176 = 136315650;
    *(v176 + 4) = sub_22C36F9F4(0xD00000000000003CLL, 0x800000022C935D40, &v203);
    *(v176 + 12) = 2048;
    *(v176 + 14) = v195;

    *(v176 + 22) = 2048;
    *(v176 + 24) = *(v87 + 16);
    _os_log_impl(&dword_22C366000, v174, v175, "%s Tools in %ld out %ld", v176, 0x20u);
    sub_22C36FF94(v177);
    sub_22C36D69C();
    sub_22C372A84();
  }

  else
  {
  }

  sub_22C37BFAC();
  sub_22C7E4804();
  v178();
  swift_beginAccess();

  v179 = sub_22C37170C();
  sub_22C4704E8(v179, v180, v87);

  sub_22C36CC48();
}

uint64_t sub_22C7CFEA4()
{
  sub_22C374168((v0 + 152), *(v0 + 176));
  sub_22C7E4A90();
  sub_22C37931C();
  v2 = v1;
  sub_22C374168((v0 + 152), *(v0 + 176));
  sub_22C7E4A90();
  sub_22C37931C();
  v4 = v3;
  sub_22C374168((v0 + 152), *(v0 + 176));
  sub_22C7E4A90();
  sub_22C37931C();
  if (v2 <= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v2;
  }

  v7 = __OFADD__(v6, v5);
  result = v6 + v5;
  if (v7)
  {
    __break(1u);
  }

  return result;
}

void sub_22C7CFF74()
{
  sub_22C36BA7C();
  v5 = v0;
  v7 = v6;
  v355 = v8;
  v357 = v9;
  v399 = sub_22C90941C();
  sub_22C369824();
  v349 = v10;
  MEMORY[0x28223BE20](v11);
  sub_22C3698A8();
  v398 = v12;
  sub_22C36BA0C();
  v397 = sub_22C90981C();
  sub_22C369824();
  v400 = v13;
  MEMORY[0x28223BE20](v14);
  sub_22C3698A8();
  v396 = v15;
  v16 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  sub_22C369914(v16);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v17);
  sub_22C36D5B4();
  sub_22C36D234(v18);
  v19 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v20 = sub_22C369914(v19);
  MEMORY[0x28223BE20](v20);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v21);
  sub_22C36BA64();
  v387 = v22;
  v23 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  v24 = sub_22C369914(v23);
  MEMORY[0x28223BE20](v24);
  sub_22C3698E4();
  v386 = v25;
  sub_22C369930();
  MEMORY[0x28223BE20](v26);
  sub_22C36BA64();
  v390 = v27;
  sub_22C36BA0C();
  v395 = sub_22C90952C();
  sub_22C369824();
  v370 = v28;
  MEMORY[0x28223BE20](v29);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v30);
  sub_22C36BA64();
  v383 = v31;
  sub_22C36BA0C();
  v369 = sub_22C9039FC();
  sub_22C369824();
  v389 = v32;
  MEMORY[0x28223BE20](v33);
  sub_22C3698A8();
  v394 = v34;
  sub_22C36BA0C();
  v351 = sub_22C90384C();
  sub_22C369824();
  v348 = v35;
  MEMORY[0x28223BE20](v36);
  sub_22C3698A8();
  sub_22C3698F8(v37);
  v363 = sub_22C9099FC();
  sub_22C369824();
  v347 = v38;
  MEMORY[0x28223BE20](v39);
  sub_22C3698A8();
  sub_22C3698F8(v40);
  v393 = sub_22C9036EC();
  sub_22C369824();
  v352 = v41;
  MEMORY[0x28223BE20](v42);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v43);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v44);
  sub_22C36BA58();
  v385 = v45;
  sub_22C369930();
  MEMORY[0x28223BE20](v46);
  sub_22C36BA64();
  v382 = v47;
  sub_22C36BA0C();
  v388 = sub_22C908EAC();
  sub_22C369824();
  v350 = v48;
  MEMORY[0x28223BE20](v49);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v50);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v51);
  sub_22C36BA58();
  v384 = v52;
  sub_22C369930();
  MEMORY[0x28223BE20](v53);
  sub_22C36BA64();
  sub_22C3698F8(v54);
  sub_22C9037EC();
  sub_22C369824();
  v391 = v56;
  v392 = v55;
  MEMORY[0x28223BE20](v55);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v57);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v58);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v59);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v60);
  sub_22C36BA64();
  sub_22C3698F8(v61);
  v356 = sub_22C9063DC();
  sub_22C369824();
  v362 = v62;
  MEMORY[0x28223BE20](v63);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v64);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v65);
  sub_22C36D6DC();
  MEMORY[0x28223BE20](v66);
  v68 = &v331 - v67;
  sub_22C374168(v5 + 19, v5[22]);
  sub_22C586B68();
  v70 = v69;
  sub_22C90407C();
  v71 = sub_22C9063CC();
  sub_22C90AACC();
  sub_22C7E4C24();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 67109120;
    *(v73 + 4) = v70 & 1;
    _os_log_impl(&dword_22C366000, v71, v2, "Using filtered tools for ranking: %{BOOL}d", v73, 8u);
    sub_22C3699EC();
  }

  v74 = *(v362 + 8);
  v75 = v356;
  v362 += 8;
  v353 = v74;
  v74(v68, v356);
  if ((v70 & 1) == 0)
  {
    v137 = sub_22C374168(v5 + 14, v5[17]);
    sub_22C7E7254(v355, v357, v7, *v137, *(v137 + 8), v137[2], v138, v139, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342);
LABEL_131:
    sub_22C36CC48();
    return;
  }

  sub_22C90407C();
  v76 = v355;

  v77 = sub_22C9063CC();
  v78 = sub_22C90AACC();
  v79 = sub_22C370048(v78);
  v341 = v7;
  v342 = v5;
  if (!v79)
  {

    sub_22C7E43F0();
    v140();
    v82 = v387;
    goto LABEL_29;
  }

  HIDWORD(v338) = v78;
  v339 = v77;
  v80 = sub_22C383050();
  v336 = sub_22C370060();
  v402 = v336;
  *v80 = 134218242;
  v81 = *(v76 + 16);
  *(v80 + 4) = v81;

  v337 = v80;
  *(v80 + 12) = 2080;
  v3 = MEMORY[0x277D84F90];
  v82 = v387;
  if (!v81)
  {
    goto LABEL_28;
  }

  v331 = v4;
  v401 = MEMORY[0x277D84F90];
  v83 = sub_22C36D6CC();
  sub_22C3B5E2C(v83, v84, v85, v86, v87, v88, v89);
  v3 = v401;
  v378 = *(v391 + 16);
  sub_22C36BA94();
  v91 = v76 + v90;
  v377 = *(v92 + 56);
  v366 = v352 + 11;
  LODWORD(v365) = *MEMORY[0x277D1ECE0];
  LODWORD(v354) = *MEMORY[0x277D1ECE8];
  LODWORD(v346) = *MEMORY[0x277D1ECD8];
  v345 = *MEMORY[0x277D1ECD0];
  sub_22C3819C0();
  v335 = v93;
  v334 = v94 + 8;
  v364 = v94 + 96;
  sub_22C7E4A18();
  v333 = v95;
  v332 = v96 + 8;
  v359 = v350 + 32;
  HIDWORD(v340) = *MEMORY[0x277D1ECF8];
  v344 = v347 + 32;
  v343 = v347 + 8;
  v358 = v350 + 8;
  v380 = v97;
  v98 = (v97 - 8);
  do
  {
    v99 = v381;
    (v378)(v381, v91, v392);
    sub_22C90371C();
    sub_22C36BA4C();
    v100 = sub_22C3864EC();
    v101(v100);
    sub_22C369908();
    if (v112)
    {
LABEL_9:
      sub_22C36BA4C();
      v102 = v382;
      v103(v382, v393);
      sub_22C36BA4C();
      v104 = v361;
      v105 = v388;
      v106(v361, v102, v388);
      v107 = sub_22C908E7C();
      v109 = v108;
      sub_22C36BA4C();
      v111 = v104;
      goto LABEL_14;
    }

    sub_22C369908();
    if (v112)
    {
      sub_22C36BA4C();
      v113 = sub_22C3864EC();
      v114(v113);
      sub_22C36BA4C();
      v115 = sub_22C36EE48();
      v105 = v363;
      v116(v115);
      v107 = sub_22C9099DC();
      v109 = v117;
      goto LABEL_13;
    }

    sub_22C369908();
    if (v121)
    {
      v123 = 1;
    }

    else
    {
      v123 = v122 == v345;
    }

    if (v123)
    {
      goto LABEL_9;
    }

    sub_22C369908();
    if (v112)
    {
      sub_22C36BA4C();
      v124 = sub_22C3864EC();
      v125(v124);
      sub_22C36BA4C();
      v126 = sub_22C36EE48();
      v105 = v351;
      v127(v126);
      v107 = sub_22C9037FC();
      v109 = v128;
LABEL_13:
      sub_22C36BA4C();
      v111 = v99;
LABEL_14:
      v110(v111, v105);
      goto LABEL_15;
    }

    sub_22C36BA4C();
    v129(v382, v393);
    v107 = 0xD000000000000013;
    v109 = v335;
LABEL_15:
    (*v98)(v381, v392);
    v401 = v3;
    v119 = v3[2];
    v118 = v3[3];
    if (v119 >= v118 >> 1)
    {
      sub_22C369AB0(v118);
      sub_22C7E4C74();
      sub_22C3B5E2C(v130, v131, v132, v133, v134, v135, v136);
      v3 = v401;
    }

    v3[2] = v119 + 1;
    v120 = &v3[2 * v119];
    v120[4] = v107;
    v120[5] = v109;
    v91 += v377;
    --v81;
    v82 = v387;
  }

  while (v81);
  v5 = v342;
  v75 = v356;
  v4 = v331;
LABEL_28:
  v141 = MEMORY[0x2318B7AD0](v3, MEMORY[0x277D837D0]);

  v142 = sub_22C36BA00();
  sub_22C36F9F4(v142, v143, v144);
  sub_22C7E4E74();
  v145 = v337;
  *(v337 + 14) = v141;
  v146 = v339;
  _os_log_impl(&dword_22C366000, v339, BYTE4(v338), "Starting with %ld tools when filtering for QDR tuple generation: %s", v145, 0x16u);
  sub_22C36FF94(v336);
  sub_22C372FB0();
  sub_22C3699EC();

  sub_22C7E43F0();
  v147();
LABEL_29:
  sub_22C374168(v5 + 19, v5[22]);
  sub_22C7E4A90();
  v148 = 0xD000000000000013;
  sub_22C37931C();
  v150 = v149;
  sub_22C374168(v5 + 19, v5[22]);
  sub_22C7E4A90();
  sub_22C37931C();
  v354 = v151;

  v346 = v150;
  v152 = sub_22C37170C();
  v359 = sub_22C812724(v152, v153);
  v364 = v154;
  v358 = v155;
  v361 = v156;
  v157 = *(v357 + 16);
  if (v157)
  {
    v381 = *(v389 + 16);
    sub_22C36BA94();
    v148 = (v357 + v158);
    v380 = *(v159 + 56);
    sub_22C7E4C68();
    v366 = v160 + 2;
    v365 = v160 + 1;
    v389 = v161;
    v377 = v161 - 8;
    v378 = v160 + 4;
    v382 = MEMORY[0x277D84F90];
    v1 = v395;
    v3 = v369;
    do
    {
      v162 = sub_22C36BBCC();
      v381(v162);
      sub_22C9039CC();
      v163 = sub_22C9093BC();
      sub_22C36D0A8(v82, 1, v163);
      if (v112)
      {
        v165 = v386;
        sub_22C36C640(v386, 1, 1, v1);
        v4 = &qword_27D9BB908;
      }

      else
      {
        v164 = v368;
        v4 = &qword_27D9BB908;
        sub_22C4E719C(v82, v368, &qword_27D9BB908, &qword_22C910960);
        sub_22C374490();
        sub_22C90935C();
        sub_22C36BA4C();
        v165 = v386;
        v166(v386, v3, v395);
        sub_22C36BECC();
        sub_22C36C640(v167, v168, v169, v395);
        sub_22C36BA4C();
        v170 = v3;
        v3 = v369;
        v171(v170, v395);
        v172 = v164;
        v1 = v395;
        (*(*(v163 - 8) + 8))(v172, v163);
      }

      v75 = v82;
      sub_22C36DD28(v82, &qword_27D9BB908, &qword_22C910960);
      v173 = v165;
      v174 = v390;
      sub_22C4E7208(v173, v390, &qword_27D9BB0C0, &qword_22C90D960);
      sub_22C36BA4C();
      v175(v394, v3);
      sub_22C36D0A8(v174, 1, v1);
      if (v112)
      {
        sub_22C36DD28(v390, &qword_27D9BB0C0, &qword_22C90D960);
      }

      else
      {
        sub_22C7E4C00();
        v75 = *v176;
        (*v176)(v383, v390, v1);
        v4 = v382;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22C36D270();
          sub_22C591AD0();
          v4 = v180;
        }

        v179 = v4[2];
        v178 = v4[3];
        if (v179 >= v178 >> 1)
        {
          sub_22C369AB0(v178);
          sub_22C591AD0();
          v4 = v181;
        }

        v4[2] = v179 + 1;
        sub_22C37054C();
        v382 = v4;
        sub_22C7E4C00();
        (v75)();
        v82 = v387;
      }

      v148 = (v148 + v380);
      --v157;
    }

    while (v157);
  }

  else
  {
    v382 = MEMORY[0x277D84F90];
  }

  sub_22C3AD9E8();
  v395 = v182;
  v183 = (v361 >> 1) - v358;
  if (__OFSUB__(v361 >> 1, v358))
  {
    goto LABEL_136;
  }

  v184 = *(v355 + 16);
  if (v184 < v183)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  v369 = v361 >> 1;
  v367 = (v361 >> 1) - v358;
  v368 = sub_22C60607C(v183, v184, v355);
  v82 = v185;
  v157 = v186;
  v383 = v187 >> 1;
  v390 = v391 + 16;
  v386 = v352 + 1;
  v381 = (v350 + 32);
  v394 = v400 + 16;
  v4 = (v349 + 8);
  v75 = v400 + 8;
  v380 = v350 + 8;
  v370 = v391 + 32;
  v389 = v391 + 8;
  v378 = MEMORY[0x277D84F90];
  v188 = v392;
  sub_22C7E4C3C();
  v3 = v388;
  v377 = v189;
LABEL_48:
  while (v157 != v383)
  {
    if (v157 >= v383)
    {
      goto LABEL_133;
    }

    v387 = *(v391 + 72);
    (*(v391 + 16))(v1, v82 + v387 * v157++, v188);
    sub_22C90371C();
    sub_22C9036BC();
    sub_22C7E49CC();
    v190 = sub_22C3864EC();
    v191(v190);
    sub_22C36D0A8(v148, 1, v3);
    if (!v112)
    {
      v382 = v157;
      sub_22C37ED90();
      v193 = sub_22C36BBCC();
      v194(v193);
      v195 = sub_22C908DCC();
      v82 = 0;
      v3 = *(v195 + 16);
      while (1)
      {
        if (v3 == v82)
        {

          sub_22C36BA4C();
          v3 = v388;
          v213(v384, v388);
          sub_22C3704B8();
          v1 = v379;
          v188 = v392;
          v214(v379, v392);
          v148 = v372;
LABEL_62:
          v82 = v377;
          v157 = v382;
          goto LABEL_48;
        }

        if (v82 >= *(v195 + 16))
        {
          break;
        }

        v196 = v400;
        sub_22C36BA94();
        v1 = v397;
        v198 = (*(v196 + 16))(v396, v195 + v197 + *(v196 + 72) * v82++, v397);
        v199 = v398;
        MEMORY[0x2318B6CE0](v198);
        v200 = sub_22C9093DC();
        (*v4)(v199, v399);
        v157 = sub_22C7D1FCC(v395, v200);

        v201 = sub_22C37335C();
        v202(v201);
        if ((v157 & 1) == 0)
        {
          sub_22C36BA4C();
          v3 = v388;
          v203(v384, v388);

          sub_22C7E4C68();
          v205 = *v204;
          (*v204)(v371, v379, v392);
          v148 = v378;
          v206 = swift_isUniquelyReferenced_nonNull_native();
          v402 = v148;
          if ((v206 & 1) == 0)
          {
            v207 = sub_22C373310();
            sub_22C3B60C0(v207, v208, v209);
            v148 = v402;
          }

          isa = v148[2].isa;
          v210 = v148[3].isa;
          if (isa >= v210 >> 1)
          {
            v215 = sub_22C369AB0(v210);
            sub_22C3B60C0(v215, isa + 1, 1);
            v148 = v402;
          }

          v148[2].isa = (isa + 1);
          sub_22C36BA94();
          v378 = v148;
          v212 = v392;
          sub_22C7E4C68();
          v205();
          v188 = v212;
          sub_22C7E4C3C();
          goto LABEL_62;
        }
      }

      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
      goto LABEL_137;
    }

    sub_22C3704B8();
    v192(v1, v188);
    sub_22C36DD28(v148, &qword_27D9BC1E8, &qword_22C9123B0);
  }

  swift_unknownObjectRelease();

  v4 = sub_22C812724(v354, v378);
  v400 = v216;
  v396 = v217;
  v219 = v218;
  sub_22C36D818();
  sub_22C90407C();
  sub_22C7E4CC8();
  swift_unknownObjectRetain();
  v220 = sub_22C9063CC();
  v82 = sub_22C90AACC();
  swift_unknownObjectRelease();
  v221 = os_log_type_enabled(v220, v82);
  v384 = v4;
  v397 = v219;
  if (!v221)
  {

    sub_22C7E4BE0();
    sub_22C7E43F0();
    v265();
    goto LABEL_86;
  }

  v75 = sub_22C383050();
  v222 = sub_22C370060();
  v3 = v222;
  v402 = v222;
  *v75 = 134218242;
  *(v75 + 4) = v346;
  *(v75 + 12) = 2080;
  v4 = MEMORY[0x277D84F90];
  if (!v367)
  {
    goto LABEL_85;
  }

  v371 = v222;
  v372 = v75;
  LODWORD(v377) = v82;
  v378 = v220;
  v401 = MEMORY[0x277D84F90];
  v227 = v367;
  sub_22C3B5E2C(0, v367 & ~(v367 >> 63), 0, v223, v224, v225, v226);
  if (v227 < 0)
  {
    __break(1u);
    goto LABEL_143;
  }

  v4 = v401;
  v3 = &v352[11];
  v228 = *MEMORY[0x277D1ECE0];
  LODWORD(v399) = *MEMORY[0x277D1ECE8];
  LODWORD(v398) = *MEMORY[0x277D1ECD8];
  sub_22C3819C0();
  v383 = v229;
  v157 = v230 + 96;
  sub_22C7E4A18();
  v382 = v231;
  v379 = v232 + 8;
  LODWORD(v395) = *MEMORY[0x277D1ECD0];
  v394 = v347 + 32;
  v387 = v347 + 8;
  v1 = v358;
  LODWORD(v385) = *MEMORY[0x277D1ECF8];
  v233 = v369;
  while (2)
  {
    if (v1 >= v233)
    {
      goto LABEL_134;
    }

    v234 = sub_22C7E4BEC();
    v235(v234);
    sub_22C37BA44();
    sub_22C90371C();
    v236 = sub_22C3864EC();
    v238 = v237(v236);
    if (v238 == v228)
    {
LABEL_69:
      v239 = sub_22C38B51C();
      v240(v239);
      sub_22C37ED90();
      v241 = sub_22C36EE48();
      v242(v241);
      sub_22C908E7C();
      sub_22C7E49C0();
      goto LABEL_72;
    }

    if (v238 == v399)
    {
      v243 = sub_22C38B51C();
      v244(v243);
      v245 = sub_22C36EE48();
      v246(v245);
      sub_22C9099DC();
      sub_22C7E49C0();
      goto LABEL_72;
    }

    if (v238 == v398 || v238 == v395)
    {
      goto LABEL_69;
    }

    if (v238 == v385)
    {
      v253 = sub_22C38B51C();
      v254(v253);
      v255 = sub_22C36EE48();
      v256(v255);
      sub_22C9037FC();
      sub_22C7E49C0();
LABEL_72:
      v247 = sub_22C372FA4();
      v248(v247);
    }

    else
    {
      sub_22C7E49CC();
      v257(v376, v393);
      v82 = 0xD000000000000013;
      v219 = v383;
    }

    sub_22C3704B8();
    v249(v375, v188);
    v401 = v4;
    v75 = v4[2];
    v250 = v4[3];
    if (v75 >= v250 >> 1)
    {
      sub_22C369AB0(v250);
      sub_22C379C28();
      sub_22C3B5E2C(v258, v259, v260, v261, v262, v263, v264);
      v4 = v401;
    }

    v4[2] = v75 + 1;
    v251 = &v4[2 * v75];
    v251[4] = v82;
    v251[5] = v219;
    ++v1;
    v233 = v369;
    v188 = v392;
    if (v369 != v1)
    {
      continue;
    }

    break;
  }

  v220 = v378;
  v82 = v377;
  v75 = v372;
  v3 = v371;
LABEL_85:
  MEMORY[0x2318B7AD0](v4, MEMORY[0x277D837D0]);

  v266 = sub_22C37170C();
  v269 = sub_22C36F9F4(v266, v267, v268);

  *(v75 + 14) = v269;
  _os_log_impl(&dword_22C366000, v220, v82, "QDR Filtered to top-%ld semantic tools: %s", v75, 0x16u);
  sub_22C36FF94(v3);
  sub_22C370510();
  sub_22C3699EC();

  sub_22C7E4BE0();
  sub_22C7E43F0();
  v270();
  sub_22C7E4CC8();
  v4 = v384;
LABEL_86:
  sub_22C37A078();
  sub_22C90407C();
  swift_unknownObjectRetain();
  v1 = sub_22C9063CC();
  p_isa = sub_22C90AACC();
  swift_unknownObjectRelease();
  LODWORD(v382) = p_isa;
  os_log_type_enabled(v1, p_isa);
  v75 = v397 >> 1;
  sub_22C7E4960();
  v399 = v75;
  if (!v272)
  {

    sub_22C37170C();
    sub_22C7E43F0();
    v315();
    v1 = v397;
LABEL_111:
    v75 = sub_22C374168(p_isa + 14, p_isa[17]);
    if ((v361 & 1) == 0)
    {
      swift_unknownObjectRetain();
LABEL_113:
      sub_22C46FEFC(v157, v364, v358, v361);
      v322 = v321;
      goto LABEL_122;
    }

    sub_22C90B50C();
    swift_unknownObjectRetain_n();
    v323 = swift_dynamicCastClass();
    if (!v323)
    {
      swift_unknownObjectRelease();
      v323 = MEMORY[0x277D84F90];
    }

    v324 = *(v323 + 16);

    if (v324 == v367)
    {
      v322 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v322)
      {
        if (v1)
        {
LABEL_123:
          sub_22C90B50C();
          swift_unknownObjectRetain_n();
          v327 = swift_dynamicCastClass();
          if (!v327)
          {
            swift_unknownObjectRelease();
            v327 = MEMORY[0x277D84F90];
          }

          v328 = *(v327 + 16);

          if (__OFSUB__(v399, v396))
          {
            __break(1u);
          }

          else if (v328 == v399 - v396)
          {
            v326 = swift_dynamicCastClass();
            swift_unknownObjectRelease();
            if (v326)
            {
LABEL_130:
              v402 = v322;
              sub_22C3CF058(v326);
              sub_22C7E7254(v402, v3, v82, *v75, *(v75 + 8), *(v75 + 16), v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              goto LABEL_131;
            }

            v326 = MEMORY[0x277D84F90];
LABEL_129:
            swift_unknownObjectRelease();
            goto LABEL_130;
          }

          swift_unknownObjectRelease();
LABEL_120:
          sub_22C46FEFC(v4, v400, v396, v1);
          v326 = v325;
          goto LABEL_129;
        }

LABEL_119:
        swift_unknownObjectRetain();
        goto LABEL_120;
      }

      v322 = MEMORY[0x277D84F90];
LABEL_122:
      swift_unknownObjectRelease();
      if (v1)
      {
        goto LABEL_123;
      }

      goto LABEL_119;
    }

LABEL_139:
    swift_unknownObjectRelease();
    goto LABEL_113;
  }

  v379 = v1;
  sub_22C383050();
  v273 = sub_22C385814();
  v402 = v273;
  *v157 = 134218242;
  *(v157 + 4) = v354;
  *(v157 + 12) = 2080;
  v278 = v75 - v396;
  if (__OFSUB__(v75, v396))
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v378 = v273;
  v4 = MEMORY[0x277D84F90];
  v3 = v388;
  v82 = v379;
  v1 = v397;
  if (!v278)
  {
LABEL_110:
    MEMORY[0x2318B7AD0](v4, MEMORY[0x277D837D0]);

    v316 = sub_22C37170C();
    v319 = sub_22C36F9F4(v316, v317, v318);

    *(v157 + 14) = v319;
    _os_log_impl(&dword_22C366000, v82, v382, "QDR Filtered to top-%ld tools with compatible span matches: %s", v157, 0x16u);
    p_isa = &v378->isa;
    sub_22C36FF94(v378);
    sub_22C3699EC();
    sub_22C36C30C();

    sub_22C7E43F0();
    v320();
    sub_22C7E4960();
    sub_22C7E4CC8();
    v4 = v384;
    goto LABEL_111;
  }

  v279 = v75;
  v372 = v157;
  v401 = MEMORY[0x277D84F90];
  sub_22C3B5E2C(0, v278 & ~(v278 >> 63), 0, v274, v275, v276, v277);
  if ((v278 & 0x8000000000000000) == 0)
  {
    v4 = v401;
    v75 = *MEMORY[0x277D1ECE0];
    LODWORD(v398) = *MEMORY[0x277D1ECE8];
    LODWORD(v395) = *MEMORY[0x277D1ECD8];
    sub_22C3819C0();
    v377 = v280;
    v1 = v281 + 96;
    sub_22C7E4A18();
    v376 = v282;
    v375 = v283 + 8;
    LODWORD(v394) = *MEMORY[0x277D1ECD0];
    v387 = v347 + 32;
    v385 = v347 + 8;
    v157 = v396;
    LODWORD(v383) = *MEMORY[0x277D1ECF8];
    while (1)
    {
      if (v157 >= v279)
      {
        goto LABEL_135;
      }

      v284 = sub_22C7E4BEC();
      v285(v284);
      sub_22C37BA44();
      sub_22C90371C();
      v286 = sub_22C3864EC();
      v288 = v287(v286);
      if (v288 != v75)
      {
        if (v288 == v398)
        {
          v279 = v374;
          v294 = sub_22C3864EC();
          v295(v294);
          v296 = sub_22C36EE48();
          v3 = v363;
          v297(v296);
          sub_22C9099DC();
          sub_22C7E49C0();
LABEL_96:
          v293 = sub_22C38C41C();
          goto LABEL_97;
        }

        if (v288 != v395 && v288 != v394)
        {
          if (v288 != v383)
          {
            sub_22C7E49CC();
            v307(v374, v393);
            v82 = 0xD000000000000013;
            v279 = v377;
            goto LABEL_98;
          }

          v279 = v374;
          v303 = sub_22C3864EC();
          v304(v303);
          sub_22C36BA4C();
          v305 = sub_22C36EE48();
          v3 = v351;
          v306(v305);
          sub_22C9037FC();
          sub_22C7E49C0();
          goto LABEL_96;
        }
      }

      (*v1)(v374, v393);
      sub_22C37ED90();
      v289 = v360;
      v290 = sub_22C4F6088();
      v291(v290);
      sub_22C908E7C();
      sub_22C7E49C0();
      sub_22C36BA4C();
      v293 = v289;
      v188 = v392;
LABEL_97:
      v292(v293, v3);
LABEL_98:
      sub_22C3704B8();
      v298(v373, v188);
      v401 = v4;
      v300 = v4[2];
      v299 = v4[3];
      if (v300 >= v299 >> 1)
      {
        sub_22C369AB0(v299);
        sub_22C379C28();
        sub_22C3B5E2C(v308, v309, v310, v311, v312, v313, v314);
        v4 = v401;
      }

      v4[2] = v300 + 1;
      v301 = &v4[2 * v300];
      v301[4] = v82;
      v301[5] = v279;
      ++v157;
      v279 = v399;
      v3 = v388;
      v188 = v392;
      if (v399 == v157)
      {
        v1 = v397;
        v82 = v379;
        v157 = v372;
        goto LABEL_110;
      }
    }
  }

LABEL_143:
  __break(1u);
}

uint64_t sub_22C7D1FCC(void *a1, void *a2)
{
  v4 = sub_22C90952C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v44 = &v33 - v10;
  MEMORY[0x28223BE20](v9);
  v39 = &v33 - v11;
  v12 = a2[2];
  if (!v12)
  {
    return 1;
  }

  v13 = a1[2];
  if (!v13)
  {
    return 1;
  }

  if (v12 >= v13)
  {
    v14 = a1;
  }

  else
  {
    v14 = a2;
  }

  if (v12 < v13)
  {
    a2 = a1;
  }

  v15 = v14 + 7;
  v16 = 1 << *(v14 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v14[7];
  v19 = (v16 + 63) >> 6;
  v42 = v5 + 16;
  v37 = v5 + 32;
  v40 = a2 + 7;
  v20 = (v5 + 8);

  v43 = a2;

  v22 = 0;
  v34 = v19;
  v35 = v14 + 7;
  v36 = v5;
  v38 = v14;
  if (v18)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v19)
    {

      return 1;
    }

    v18 = v15[v23];
    ++v22;
    if (v18)
    {
      v22 = v23;
      do
      {
LABEL_16:
        v24 = v14[6];
        v41 = *(v5 + 72);
        v25 = *(v5 + 16);
        v26 = v39;
        v25(v39, v24 + v41 * (__clz(__rbit64(v18)) | (v22 << 6)), v4);
        (*(v5 + 32))(v44, v26, v4);
        if (v43[2])
        {
          v27 = v43;
          sub_22C7E4310(&qword_28142FA80, MEMORY[0x277D72D58], MEMORY[0x277D72D68]);
          v28 = sub_22C909F7C();
          v29 = ~(-1 << *(v27 + 32));
          while (1)
          {
            v30 = v28 & v29;
            if (((*(v40 + (((v28 & v29) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v28 & v29)) & 1) == 0)
            {
              break;
            }

            v25(v8, v43[6] + v30 * v41, v4);
            sub_22C7E4310(&qword_28142FA78, MEMORY[0x277D72D58], MEMORY[0x277D72D70]);
            v31 = sub_22C90A0BC();
            v32 = *v20;
            (*v20)(v8, v4);
            v28 = v30 + 1;
            if (v31)
            {

              v32(v44, v4);
              return 0;
            }
          }
        }

        v18 &= v18 - 1;
        result = (*v20)(v44, v4);
        v15 = v35;
        v5 = v36;
        v14 = v38;
        v19 = v34;
      }

      while (v18);
    }
  }

  __break(1u);
  return result;
}

void sub_22C7D2380()
{
  sub_22C36BA7C();
  v72 = v1;
  v67[2] = v3;
  v68 = v2;
  v5 = v4;
  sub_22C9063DC();
  sub_22C369824();
  v70 = v7;
  v71 = v6;
  MEMORY[0x28223BE20](v6);
  sub_22C3698E4();
  v67[1] = v8;
  sub_22C369930();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v67 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v67 - v14;
  MEMORY[0x28223BE20](v13);
  sub_22C36BA64();
  v67[0] = v16;
  sub_22C36BA0C();
  v69 = sub_22C908AEC();
  sub_22C369824();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  sub_22C369ABC();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  sub_22C36BA64();
  sub_22C36BA0C();
  v24 = sub_22C903E9C();
  sub_22C369824();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  sub_22C377578();
  type metadata accessor for QueryDecorator();
  (*(v26 + 104))(v0, *MEMORY[0x277D1F178], v24);
  v28 = sub_22C37D894(v5, v0);
  v29 = sub_22C3806B8();
  v30(v29);
  if (!v28)
  {
    sub_22C90400C();
    v34 = sub_22C9063CC();
    v35 = sub_22C90AABC();
    if (sub_22C369E90(v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      sub_22C6B01C8();
      _os_log_impl(v37, v38, v39, v40, v36, 2u);
      sub_22C372FB0();
    }

    (*(v70 + 8))(v12, v71);
    goto LABEL_14;
  }

  v31 = v5[13];
  if (!v31)
  {
    sub_22C90400C();
    v41 = sub_22C9063CC();
    v42 = sub_22C90AABC();
    if (sub_22C369E90(v42))
    {
      v43 = sub_22C36FB44();
      v44 = sub_22C370060();
      v73 = v44;
      *v43 = 136315138;
      sub_22C36EE00();
      *(v43 + 4) = sub_22C7E4B34(v45, v46);
      sub_22C6B01C8();
      _os_log_impl(v47, v48, v49, v50, v43, 0xCu);
      sub_22C36FF94(v44);
      sub_22C372A84();
      sub_22C372FB0();
    }

    (*(v70 + 8))(v15, v71);
    goto LABEL_14;
  }

  (*(v18 + 16))(v22, v31 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime16ToolboxResources_toolbox, v69);
  v32 = sub_22C50B578();
  v33(v32);
  if (!v68)
  {
    v51 = v67[0];
    sub_22C90400C();
    v52 = sub_22C9063CC();
    v53 = sub_22C90AABC();
    if (sub_22C369E90(v53))
    {
      v54 = sub_22C36FB44();
      v55 = sub_22C370060();
      v73 = v55;
      *v54 = 136315138;
      sub_22C36EE00();
      *(v54 + 4) = sub_22C7E4B34(v56, v57);
      sub_22C6B01C8();
      _os_log_impl(v58, v59, v60, v61, v54, 0xCu);
      sub_22C36FF94(v55);
      sub_22C36D69C();
      sub_22C372A84();
    }

    (*(v70 + 8))(v51, v71);
    v62 = sub_22C36FC2C();
    v63(v62);
    goto LABEL_14;
  }

  v64 = sub_22C7BA3D0(v5);
  v65 = sub_22C36FC2C();
  v66(v65);
  if (!v64)
  {
LABEL_14:
  }

  sub_22C36CC48();
}

uint64_t sub_22C7D28E4()
{
  sub_22C369980();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = sub_22C9063DC();
  v1[7] = v6;
  sub_22C3699B8(v6);
  v1[8] = v7;
  v1[9] = sub_22C3856B8();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v8 = sub_22C908AEC();
  v1[13] = v8;
  sub_22C3699B8(v8);
  v1[14] = v9;
  v1[15] = sub_22C3856B8();
  v1[16] = swift_task_alloc();
  v10 = sub_22C903E9C();
  v1[17] = v10;
  sub_22C3699B8(v10);
  v1[18] = v11;
  v1[19] = sub_22C3699D4();
  v12 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22C7D2A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_22C372634();
  a21 = v23;
  a22 = v24;
  sub_22C37F038();
  a20 = v22;
  v26 = v22[18];
  v25 = v22[19];
  v27 = v22[17];
  type metadata accessor for QueryDecorator();
  (*(v26 + 104))(v25, *MEMORY[0x277D1F178], v27);
  v28 = sub_22C36BBCC();
  v30 = sub_22C37D894(v28, v29);
  v31 = sub_22C36BAFC();
  v32(v31);
  if (v30)
  {
    v33 = *(v22[2] + 104);
    if (v33)
    {
      v34 = v22[3];
      (*(v22[14] + 16))(v22[15], v33 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime16ToolboxResources_toolbox, v22[13]);
      v35 = sub_22C36BBCC();
      v36(v35);
      if (v34)
      {
        v37 = swift_task_alloc();
        v22[20] = v37;
        *v37 = v22;
        v37[1] = sub_22C7D2EA4;
        sub_22C36D5F8();

        return sub_22C7BC5B0();
      }

      sub_22C90400C();
      v54 = sub_22C9063CC();
      v55 = sub_22C90AABC();
      v56 = os_log_type_enabled(v54, v55);
      v57 = v22[16];
      v58 = v22[13];
      v59 = v22[14];
      if (v56)
      {
        sub_22C36FB44();
        a10 = v57;
        v60 = sub_22C385814();
        a11 = v60;
        *v57 = 136315138;
        sub_22C36EE00();
        *(v57 + 4) = sub_22C36F9F4(0xD00000000000004ELL, v61, &a11);
        _os_log_impl(&dword_22C366000, v54, v55, "%s resolveProtocolsToTools not run (inputs.spans = nil)", v57, 0xCu);
        sub_22C36FF94(v60);
        sub_22C37B09C();
        sub_22C36C30C();
      }

      v62 = sub_22C36ECB4();
      v63(v62);
      (*(v59 + 8))(v57, v58);
    }

    else
    {
      sub_22C90400C();
      v45 = sub_22C9063CC();
      v46 = sub_22C90AABC();
      if (sub_22C370048(v46))
      {
        v47 = sub_22C36FB44();
        v48 = sub_22C370060();
        a11 = v48;
        *v47 = 136315138;
        sub_22C36EE00();
        *(v47 + 4) = sub_22C36F9F4(0xD00000000000004ELL, v49, &a11);
        sub_22C7E4DDC(&dword_22C366000, v50, v51, "%s not run (no toolbox)");
        sub_22C36FF94(v48);
        sub_22C370510();
        sub_22C3699EC();
      }

      v52 = sub_22C36BAFC();
      v53(v52);
    }
  }

  else
  {
    sub_22C90400C();
    v40 = sub_22C9063CC();
    v41 = sub_22C90AABC();
    if (sub_22C370048(v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_22C366000, v40, v41, "runResolveProtocolsToTools skipped as Joint Resolver is not enabled or requested", v42, 2u);
      sub_22C372FB0();
    }

    v43 = sub_22C36BAFC();
    v44(v43);
  }

  sub_22C36D5E0();
  sub_22C36D5F8();

  return v66(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_22C7D2EA4()
{
  v2 = *v1;
  sub_22C36D994();
  *v4 = v3;
  *(v3 + 168) = v5;
  *(v3 + 176) = v0;

  v6 = *(v2 + 48);
  if (v0)
  {
    v7 = sub_22C7D3218;
  }

  else
  {
    v7 = sub_22C7D2FD0;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

void sub_22C7D2FD0(uint64_t a1)
{
  if (v1[21])
  {
    sub_22C90400C();

    v2 = sub_22C9063CC();
    v3 = sub_22C90AABC();

    v4 = os_log_type_enabled(v2, v3);
    v5 = v1[16];
    v6 = v1[13];
    v7 = v1[14];
    v9 = v1[7];
    v8 = v1[8];
    if (v4)
    {
      v23 = v1[12];
      v10 = sub_22C383050();
      v24 = sub_22C37A180();
      *v10 = 136315394;
      sub_22C36EE00();
      *(v10 + 4) = sub_22C36F9F4(0xD00000000000004ELL, v11, &v24);
      *(v10 + 12) = 2080;
      static QueryDecorationLoggingUtils.generateReadableToolList(_:)();
      v22 = v6;
      v14 = sub_22C36F9F4(v12, v13, &v24);

      *(v10 + 14) = v14;
      _os_log_impl(&dword_22C366000, v2, v3, "%s protocol round-trip optimized tools:\n%s", v10, 0x16u);
      swift_arrayDestroy();
      sub_22C3699EC();
      sub_22C37B09C();

      (*(v8 + 8))(v23, v9);
      (*(v7 + 8))(v5, v22);
    }

    else
    {

      v15 = sub_22C36CC9C();
      v16(v15);
      v17 = sub_22C37170C();
      v19(v17, v18);
    }
  }

  else
  {
    (*(v1[14] + 8))(v1[16], v1[13]);
  }

  sub_22C36D5E0();
  sub_22C36EC40();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_22C7D3218()
{
  sub_22C3743E4();
  (*(v0[14] + 8))(v0[16], v0[13]);

  sub_22C369A24();

  return v1();
}

void sub_22C7D32E4()
{
  sub_22C36BA7C();
  v6 = v5;
  v8 = v7;
  v48 = sub_22C9039FC();
  sub_22C369824();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22C369ABC();
  sub_22C387D8C();
  MEMORY[0x28223BE20](v12);
  sub_22C7E4D28();
  v13 = sub_22C9063DC();
  sub_22C369824();
  v47 = v14;
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  sub_22C37BDA4();
  v16 = sub_22C3A5908(&qword_27D9BDA90, &unk_22C91A460);
  sub_22C369914(v16);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v17);
  sub_22C7E47F4();
  v18 = sub_22C9039DC();
  sub_22C58B384(v18, v3);

  sub_22C90361C();
  v19 = sub_22C7E4854();
  sub_22C36D0A8(v19, 1, v4);
  if (v20)
  {
    v46 = v13;
    sub_22C36DD28(v3, &qword_27D9BDA90, &unk_22C91A460);
    sub_22C90407C();
    v21 = *(v10 + 16);
    v21(v2, v6, v48);
    v22 = sub_22C9063CC();
    v23 = sub_22C90AADC();
    if (sub_22C370048(v23))
    {
      v24 = sub_22C383050();
      v49 = sub_22C37A180();
      *v24 = 136315394;
      sub_22C36EE00();
      *(v24 + 4) = sub_22C36F9F4(0xD000000000000017, v25, &v49);
      *(v24 + 12) = 2080;
      v21(v0, v2, v48);
      sub_22C37BD98();
      v26 = sub_22C90A1AC();
      v28 = v27;
      v29 = sub_22C36D384();
      v30(v29);
      v31 = sub_22C36F9F4(v26, v28, &v49);

      *(v24 + 14) = v31;
      sub_22C7E4B18(&dword_22C366000, v32, v23, "[%s] Failed to get spanEntityId (entity: %s)");
      swift_arrayDestroy();
      sub_22C3699EC();
      sub_22C36C30C();
    }

    else
    {

      v44 = sub_22C36D384();
      v45(v44);
    }

    (*(v47 + 8))(v1, v46);
    sub_22C3A5908(&qword_27D9BB678, &unk_22C926970);
    v40 = sub_22C381B6C();
  }

  else
  {
    v33 = sub_22C9035FC();
    v35 = v34;
    v36 = sub_22C36CC9C();
    v37(v36);
    v38 = sub_22C3A5908(&qword_27D9BB678, &unk_22C926970);
    v39 = (v8 + *(v38 + 48));
    (*(v10 + 16))(v8, v6, v48);
    *v39 = v33;
    v39[1] = v35;
    sub_22C36BECC();
    v43 = v38;
  }

  sub_22C36C640(v40, v41, v42, v43);
  sub_22C36CC48();
}

uint64_t QueryDecorationToolSelectorService.deinit()
{
  sub_22C36FF94((v0 + 112));
  sub_22C36FF94((v0 + 152));
  sub_22C36DD28(v0 + 192, &qword_27D9C0278, &qword_22C9267A0);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t QueryDecorationToolSelectorService.__deallocating_deinit()
{
  QueryDecorationToolSelectorService.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22C7D3734(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = sub_22C3A5908(&qword_27D9BABD8, &unk_22C90FA30);
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = *(type metadata accessor for QueryDecorationTuple(0) - 8);
  v3[21] = swift_task_alloc();
  v5 = sub_22C9063DC();
  v3[22] = v5;
  v3[23] = *(v5 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C7D38D0, 0, 0);
}