uint64_t sub_220740B3C(uint64_t a1, __n128 a2)
{
  v75 = a1;
  v3 = sub_2208899AC();
  v58 = *(v3 - 8);
  v59 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v57 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22088971C();
  v62 = *(v6 - 8);
  v63 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v61 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204D0618(0, &unk_281297E50, sub_2204FA2D0, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v55 - v11;
  sub_2204FA2D0(0);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207417F4(0);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22088A0DC();
  v65 = *(v23 - 8);
  v66 = v23;
  MEMORY[0x28223BE20](v23, v24);
  v64 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204F1480(0);
  v27 = v26;
  v56 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v55 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v2[8];
  sub_220488310(0);
  sub_220454908(&qword_281297C80, sub_220488310, MEMORY[0x277D6D8C8]);
  sub_22088BF9C();
  v60 = v2;
  v74 = v2[2];
  v31 = sub_22088D5BC();
  (*(*(v31 - 8) + 56))(v22, 1, 1, v31);
  sub_22051D97C(0);
  sub_22088AD4C();
  sub_22088E76C();

  result = (*(v15 + 48))(v12, 1, v14);
  if (result == 1)
  {
    goto LABEL_11;
  }

  (*(v15 + 32))(v18, v12, v14);
  v33 = v64;
  sub_22073BB24(v18, v22);
  (*(v15 + 8))(v18, v14);
  sub_220503BCC(v22, sub_2207417F4);
  sub_2204D0618(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v35 = v34;
  v36 = sub_220886F8C();
  v37 = *(v36 - 8);
  v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v70 = *(v37 + 72);
  v72 = v35;
  v39 = swift_allocObject();
  v67 = xmmword_220899360;
  *(v39 + 16) = xmmword_220899360;
  v40 = *(v37 + 104);
  v69 = *MEMORY[0x277CEAD10];
  v73 = v36;
  v68 = v40;
  v40(v39 + v38);
  sub_220454908(&unk_281298290, MEMORY[0x277D68FD8], MEMORY[0x277D68FD0]);
  v71 = "feedDismissingManager";
  v41 = v66;
  sub_2208872CC();

  (*(v65 + 8))(v33, v41);
  sub_220454908(&qword_281293340, type metadata accessor for ForYouFeedModel, &unk_2208BAB20);
  result = sub_22088E7FC();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v42 = v30;
  v43 = v61;
  sub_22088970C();
  v44 = swift_allocObject();
  *(v44 + 16) = v67;
  v68(v44 + v38, v69, v73);
  sub_220454908(&qword_281298470, MEMORY[0x277D68720], MEMORY[0x277D68718]);
  v45 = v27;
  v46 = v63;
  sub_2208872CC();

  v47 = v46;
  v48 = v45;
  (*(v62 + 8))(v43, v47);
  result = sub_22088E80C();
  if (result >= 0xFFFFFFFF80000000)
  {
    if (result <= 0x7FFFFFFF)
    {
      v49 = v57;
      sub_22088999C();
      v50 = swift_allocObject();
      *(v50 + 16) = v67;
      v68(v50 + v38, v69, v73);
      sub_220454908(&qword_2812983F0, MEMORY[0x277D68928], MEMORY[0x277D68920]);
      v51 = v59;
      v52 = v74;
      sub_2208872CC();

      (*(v58 + 8))(v49, v51);
      v53 = v60[6];
      v54 = v60[7];
      __swift_project_boxed_opaque_existential_1(v60 + 3, v53);
      (*(v54 + 8))(v52, v53, v54);
      return (*(v56 + 8))(v42, v48);
    }

    goto LABEL_10;
  }

LABEL_9:
  __break(1u);
LABEL_10:
  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_220741438()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  __swift_destroy_boxed_opaque_existential_1((v0 + 88));
  __swift_destroy_boxed_opaque_existential_1((v0 + 128));

  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  __swift_destroy_boxed_opaque_existential_1((v0 + 216));
  __swift_destroy_boxed_opaque_existential_1((v0 + 256));
  __swift_destroy_boxed_opaque_existential_1((v0 + 296));
  sub_220503BCC(v0 + OBJC_IVAR____TtC8StocksUI17ForYouFeedTracker_onDeckViewAction, sub_220500B98);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8StocksUI17ForYouFeedTracker_feedDismissingManager));
  return v0;
}

uint64_t sub_2207414E4()
{
  sub_220741438();

  return swift_deallocClassInstance();
}

uint64_t sub_2207415D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  (a3)(0, a2);
  sub_220454908(a4, a5, a6);
  return sub_22088730C();
}

uint64_t sub_220741650(uint64_t a1)
{
  v3 = *(sub_22088698C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  sub_2204F1480(0);
  v7 = (v4 + v5 + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80);
  v8 = *(*(v6 - 8) + 64);
  sub_22051D97C(0);
  v10 = (v7 + v8 + *(*(v9 - 8) + 80)) & ~*(*(v9 - 8) + 80);
  v11 = (*(*(v9 - 8) + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_220454720(0);
  v14 = *(v1 + v11);
  v15 = v1 + ((v11 + *(*(v13 - 8) + 80) + 8) & ~*(*(v13 - 8) + 80));

  return sub_22073F430(a1, v1 + v4, v1 + v7, v1 + v10, v14, v15, v12);
}

uint64_t sub_220741828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v233 = a5;
  v261 = a4;
  v272 = a3;
  v276 = a1;
  v226 = sub_22088993C();
  v225 = *(v226 - 8);
  MEMORY[0x28223BE20](v226, v5);
  v224 = &v204 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088516C();
  v249 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v248 = &v204 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = sub_22088824C();
  v235 = *(v236 - 8);
  MEMORY[0x28223BE20](v236, v10);
  v234 = &v204 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = sub_22088944C();
  v244 = *(v245 - 8);
  MEMORY[0x28223BE20](v245, v12);
  v223 = &v204 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v241 = &v204 - v16;
  MEMORY[0x28223BE20](v17, v18);
  v231 = &v204 - v19;
  v243 = sub_220886A4C();
  v242 = *(v243 - 8);
  MEMORY[0x28223BE20](v243, v20);
  v221 = &v204 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v230 = &v204 - v24;
  v247 = sub_22088943C();
  v246 = *(v247 - 8);
  MEMORY[0x28223BE20](v247, v25);
  v222 = &v204 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28);
  v232 = &v204 - v29;
  v229 = sub_22088A04C();
  v228 = *(v229 - 8);
  MEMORY[0x28223BE20](v229, v30);
  v227 = &v204 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_22088A10C();
  v206 = *(v207 - 8);
  MEMORY[0x28223BE20](v207, v32);
  v205 = &v204 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = sub_2208891DC();
  v209 = *(v210 - 8);
  MEMORY[0x28223BE20](v210, v34);
  v208 = &v204 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_2208898CC();
  v219 = *(v220 - 8);
  MEMORY[0x28223BE20](v220, v36);
  v218 = &v204 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = sub_220889BFC();
  v216 = *(v217 - 8);
  MEMORY[0x28223BE20](v217, v38);
  v215 = &v204 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = sub_2208895EC();
  v213 = *(v214 - 8);
  MEMORY[0x28223BE20](v214, v40);
  v212 = &v204 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = sub_22088698C();
  v257 = *(v240 - 8);
  MEMORY[0x28223BE20](v240, v42);
  v258 = &v204 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = sub_2208899AC();
  v238 = *(v239 - 8);
  MEMORY[0x28223BE20](v239, v44);
  v237 = &v204 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = sub_22088971C();
  v251 = *(v252 - 8);
  MEMORY[0x28223BE20](v252, v46);
  v250 = &v204 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204D0618(0, &unk_281297E50, sub_2204FA2D0, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v48 - 8, v49);
  v51 = &v204 - v50;
  sub_2204FA2D0(0);
  v53 = v52;
  v54 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v55);
  v57 = &v204 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207417F4(0);
  MEMORY[0x28223BE20](v58 - 8, v59);
  v61 = &v204 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22051D97C(0);
  v265 = v62;
  v271 = *(v62 - 8);
  MEMORY[0x28223BE20](v62, v63);
  v264 = &v204 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65, v66);
  v68 = &v204 - v67;
  sub_2204F1480(0);
  v259 = v69;
  v270 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v70);
  v263 = &v204 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v72, v73);
  v75 = &v204 - v74;
  v254 = sub_22088A0DC();
  v253 = *(v254 - 1);
  MEMORY[0x28223BE20](v254, v76);
  v78 = &v204 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v267 = result;
  if (!result)
  {
    return result;
  }

  v211 = v7;
  sub_220516884(0, &qword_281297B30, MEMORY[0x277D6DA48]);
  v81 = v80;
  sub_22088BC0C();
  v260 = v81;
  sub_22088BBEC();
  v82 = sub_22088D5BC();
  (*(*(v82 - 8) + 56))(v61, 1, 1, v82);
  sub_22088AD4C();
  sub_22088E76C();

  if ((*(v54 + 48))(v51, 1, v53) == 1)
  {
    goto LABEL_29;
  }

  (*(v54 + 32))(v57, v51, v53);
  sub_22073BB24(v57, v61);
  (*(v54 + 8))(v57, v53);
  sub_220503BCC(v61, sub_2207417F4);
  v83 = v271[1];
  v84 = v68;
  v85 = v265;
  ++v271;
  v83(v84, v265);
  v86 = *(v270 + 8);
  v87 = v75;
  v88 = v259;
  v270 += 8;
  v256 = v86;
  v86(v87, v259);
  sub_2204D0618(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v90 = v89;
  v91 = sub_220886F8C();
  v92 = *(v91 - 8);
  v93 = *(v92 + 80);
  v94 = (v93 + 32) & ~v93;
  v277 = *(v92 + 72);
  v269 = v93;
  v273 = v90;
  v95 = swift_allocObject();
  v278 = xmmword_220899360;
  *(v95 + 16) = xmmword_220899360;
  v97 = *(v92 + 104);
  v96 = v92 + 104;
  v274 = *MEMORY[0x277CEAD18];
  v266 = v91;
  v275 = v97;
  (v97)(v95 + v94);
  sub_220454908(&unk_281298290, MEMORY[0x277D68FD8], MEMORY[0x277D68FD0]);
  v98 = v254;
  sub_220886F1C();

  (*(v253 + 8))(v78, v98);
  sub_22088BC0C();
  sub_22088BBEC();
  sub_220454908(&qword_281293340, type metadata accessor for ForYouFeedModel, &unk_2208BAB20);
  v99 = sub_22088E7FC();
  if (v99 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v99 > 0x7FFFFFFF)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v100 = v88;
  v101 = v250;
  sub_22088970C();
  v254 = v83;
  v83(v264, v85);
  v256(v263, v100);
  v102 = swift_allocObject();
  *(v102 + 16) = v278;
  v255 = v94;
  v268 = v96;
  v275(v102 + v94, v274, v266);
  sub_220454908(&qword_281298470, MEMORY[0x277D68720], MEMORY[0x277D68718]);
  v103 = v252;
  sub_220886F1C();

  (*(v251 + 8))(v101, v103);
  sub_22088BC0C();
  sub_22088BBEC();
  v104 = sub_22088E80C();
  if (v104 < 0xFFFFFFFF80000000)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v104 > 0x7FFFFFFF)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v105 = v237;
  sub_22088999C();
  (v254)(v264, v265);
  v256(v263, v100);
  v106 = v266;
  v107 = v255;
  v108 = swift_allocObject();
  *(v108 + 16) = v278;
  v275(v108 + v107, v274, v106);
  sub_220454908(&qword_2812983F0, MEMORY[0x277D68928], MEMORY[0x277D68920]);
  v262 = "feedDismissingManager";
  v109 = v239;
  sub_220886F1C();

  (*(v238 + 8))(v105, v109);
  v110 = v257;
  v111 = v258;
  v112 = v240;
  (*(v257 + 16))(v258, v261, v240);
  v113 = (*(v110 + 88))(v111, v112);
  if (v113 == *MEMORY[0x277D69850])
  {
    (*(v110 + 96))(v111, v112);
    v114 = *v111;
    swift_getObjectType();
    v115 = v106;
    v116 = v212;
    v271 = v114;
    sub_2206F61F0(v212);
    v117 = swift_allocObject();
    *(v117 + 16) = v278;
    v275(v117 + v107, v274, v115);
    sub_220454908(&qword_2812984B0, MEMORY[0x277D686A0], MEMORY[0x277D68698]);
    v118 = v214;
    sub_220886F1C();

    (*(v213 + 8))(v116, v118);
    v119 = *(v267 + 168);
    v120 = v215;
    sub_2206F69A0(v119);

    v121 = swift_allocObject();
    *(v121 + 16) = v278;
    v122 = v274;
    v123 = v275;
    v275(v121 + v107, v274, v266);
    sub_220454908(&qword_281298370, MEMORY[0x277D68B40], MEMORY[0x277D68B38]);
    v124 = v217;
    sub_220886F1C();

    (*(v216 + 8))(v120, v124);
    v125 = v218;
    sub_22057BB68();
    v126 = swift_allocObject();
    *(v126 + 16) = v278;
    v123(v126 + v107, v122, v266);
    sub_220454908(&qword_281298430, MEMORY[0x277D68860], MEMORY[0x277D68858]);
    v127 = v220;
    sub_220886F1C();

    v128 = v125;
    v129 = v271;
    (*(v219 + 8))(v128, v127);
    v130 = [v129 sourceChannel];
    v131 = v122;
    if (v130)
    {
      v132 = v130;
      v133 = v123;
      __swift_project_boxed_opaque_existential_1((v267 + 128), *(v267 + 152));
      v134 = v208;
      sub_2206EC95C(v132, v135);
      v136 = swift_allocObject();
      *(v136 + 16) = v278;
      v133(v136 + v107, v122, v266);
      sub_220454908(&qword_281298560, MEMORY[0x277D68340], MEMORY[0x277D68338]);
      v137 = v210;
      sub_220886F1C();
      swift_unknownObjectRelease();

      v138 = v137;
      v131 = v122;
      (*(v209 + 8))(v134, v138);
    }

    if ([v129 respondsToSelector_])
    {
      v139 = [v129 parentIssue];
      if (v139)
      {
        v140 = v139;
        v141 = [v139 identifier];
        sub_22089136C();

        v142 = v205;
        sub_22088A0FC();
        sub_220454908(&qword_281298280, MEMORY[0x277D69030], MEMORY[0x277D69028]);
        v143 = v207;
        sub_2208872CC();

        v131 = v274;
        (*(v206 + 8))(v142, v143);
      }
    }

    v144 = v267;
    v145 = v227;
    sub_220605740();
    v146 = swift_allocObject();
    *(v146 + 16) = v278;
    v147 = v266;
    v275(v146 + v107, v131, v266);
    sub_220454908(&unk_2812982A0, MEMORY[0x277D68F38], MEMORY[0x277D68F30]);
    v148 = v229;
    sub_220886F1C();

    (*(v228 + 8))(v145, v148);
    __swift_project_boxed_opaque_existential_1((v144 + 256), *(v144 + 280));
    v149 = v230;
    sub_2208863EC();
    v150 = sub_2208869AC();
    v151 = v244;
    v152 = MEMORY[0x277D68560];
    if ((v150 & 1) == 0)
    {
      v152 = MEMORY[0x277D68558];
    }

    v153 = v231;
    v154 = v245;
    (*(v244 + 104))(v231, *v152, v245);
    (*(v151 + 16))(v241, v153, v154);
    v155 = v232;
    sub_22088942C();
    (*(v151 + 8))(v153, v154);
    (*(v242 + 8))(v149, v243);
    v156 = swift_allocObject();
    *(v156 + 16) = v278;
    v275(v156 + v107, v131, v147);
    sub_220454908(&qword_2812984F0, MEMORY[0x277D68550], MEMORY[0x277D68548]);
    v157 = v247;
    sub_220886F1C();

    (*(v246 + 8))(v155, v157);
    v158 = OBJC_IVAR____TtC8StocksUI17ForYouFeedTracker_feedDismissingManager;
    v159 = sub_22088691C();
    if (v160)
    {
      v161 = v159;
      v162 = v160;
      __swift_project_boxed_opaque_existential_1((v267 + v158), *(v267 + v158 + 24));
      v163 = sub_22088FDBC();
      sub_22056F244(v161, v162, v163);

      v164 = v234;
      sub_22088823C();
      v165 = v255;
      v166 = swift_allocObject();
      *(v166 + 16) = v278;
      v275(v166 + v165, v274, v147);
      sub_220454908(&unk_27CF5A280, MEMORY[0x277D2DAD8], MEMORY[0x277D2DAD0]);
      v167 = v236;
      sub_220886F1C();

      (*(v235 + 8))(v164, v167);
    }

    sub_22052EC94(0);
    *&v278 = *(v168 + 48);
    sub_220889D5C();
    v169 = v248;
    sub_22088BC1C();
    sub_220454908(&qword_281298338, MEMORY[0x277D68C90], MEMORY[0x277D68C88]);
    sub_220886ECC();
    v170 = *(v249 + 8);
    v171 = v211;
    v170(v169, v211);
    sub_22088BBFC();
    sub_220886EDC();
    swift_unknownObjectRelease();

    v170(v169, v171);
    v172 = sub_220885CDC();
    return (*(*(v172 - 8) + 8))(&v258[v278], v172);
  }

  v173 = v267;
  if (v113 != *MEMORY[0x277D69840])
  {
LABEL_30:
    result = sub_2208928AC();
    __break(1u);
    return result;
  }

  (*(v257 + 96))(v111, v112);
  v174 = *v111;
  swift_getObjectType();
  v175 = v224;
  v271 = v174;
  sub_2206F6C58();
  v176 = swift_allocObject();
  *(v176 + 16) = v278;
  v177 = v106;
  v178 = v275;
  v275(v176 + v107, v274, v106);
  sub_220454908(&qword_27CF58950, MEMORY[0x277D688C8], MEMORY[0x277D688C0]);
  v179 = v226;
  sub_220886F1C();

  (*(v225 + 8))(v175, v179);
  __swift_project_boxed_opaque_existential_1((v173 + 256), *(v173 + 280));
  v180 = v221;
  sub_2208863EC();
  v181 = sub_2208869AC();
  v182 = v244;
  v183 = MEMORY[0x277D68560];
  if ((v181 & 1) == 0)
  {
    v183 = MEMORY[0x277D68558];
  }

  v184 = v223;
  v185 = v245;
  (*(v244 + 104))(v223, *v183, v245);
  (*(v182 + 16))(v241, v184, v185);
  v186 = v222;
  sub_22088942C();
  (*(v182 + 8))(v184, v185);
  (*(v242 + 8))(v180, v243);
  v187 = swift_allocObject();
  *(v187 + 16) = v278;
  v188 = v177;
  v178(v187 + v107, v274, v177);
  sub_220454908(&qword_2812984F0, MEMORY[0x277D68550], MEMORY[0x277D68548]);
  v189 = v267;
  v190 = v247;
  sub_220886F1C();

  (*(v246 + 8))(v186, v190);
  v191 = OBJC_IVAR____TtC8StocksUI17ForYouFeedTracker_feedDismissingManager;
  v192 = sub_22088691C();
  if (v193)
  {
    v194 = v192;
    v195 = v193;
    __swift_project_boxed_opaque_existential_1((v189 + v191), *(v189 + v191 + 24));
    v196 = sub_22088FDBC();
    sub_22056F244(v194, v195, v196);

    v197 = v234;
    sub_22088823C();
    v198 = v255;
    v199 = swift_allocObject();
    *(v199 + 16) = v278;
    v275(v199 + v198, v274, v188);
    sub_220454908(&unk_27CF5A280, MEMORY[0x277D2DAD8], MEMORY[0x277D2DAD0]);
    v200 = v236;
    sub_220886F1C();

    (*(v235 + 8))(v197, v200);
  }

  sub_220889E4C();
  v201 = v248;
  sub_22088BC1C();
  sub_220454908(&unk_27CF593B0, MEMORY[0x277D68D80], MEMORY[0x277D68D78]);
  sub_220886ECC();
  v202 = *(v249 + 8);
  v203 = v211;
  v202(v201, v211);
  sub_22088BBFC();
  sub_220886EDC();

  swift_unknownObjectRelease();
  return (v202)(v201, v203);
}

uint64_t sub_220743B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v102 = a4;
  v129 = a3;
  v126 = a1;
  v4 = sub_22088516C();
  v104 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v103 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_22088824C();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95, v7);
  v93 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_2208894EC();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101, v9);
  v99 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_2208899AC();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98, v11);
  v96 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_22088971C();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107, v13);
  v105 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204D0618(0, &unk_281297E50, sub_2204FA2D0, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v92 - v17;
  sub_2204FA2D0(0);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207417F4(0);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v28 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22051D97C(0);
  v130 = v29;
  v128 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v30);
  v123 = &v92 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v92 - v34;
  sub_2204F1480(0);
  v116 = v36;
  v127 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v37);
  v122 = &v92 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v40);
  v42 = &v92 - v41;
  v109 = sub_22088A0DC();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109, v43);
  v45 = &v92 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v115 = result;
  if (!result)
  {
    return result;
  }

  v92 = v4;
  sub_220516884(0, &qword_281297B30, MEMORY[0x277D6DA48]);
  v48 = v47;
  sub_22088BC0C();
  v114 = v48;
  sub_22088BBEC();
  v49 = sub_22088D5BC();
  (*(*(v49 - 8) + 56))(v28, 1, 1, v49);
  sub_22088AD4C();
  sub_22088E76C();

  result = (*(v21 + 48))(v18, 1, v20);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  (*(v21 + 32))(v24, v18, v20);
  sub_22073BB24(v24, v28);
  (*(v21 + 8))(v24, v20);
  sub_220503BCC(v28, sub_2207417F4);
  v50 = *(v128 + 8);
  v128 += 8;
  v113 = v50;
  v50(v35, v130);
  v51 = *(v127 + 8);
  v52 = v116;
  v127 += 8;
  v112 = v51;
  v51(v42, v116);
  sub_2204D0618(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v54 = v53;
  v55 = sub_220886F8C();
  v56 = *(v55 - 8);
  v57 = *(v56 + 80);
  v58 = (v57 + 32) & ~v57;
  v117 = *(v56 + 72);
  v118 = v54;
  v125 = v57;
  v59 = swift_allocObject();
  v124 = xmmword_220899360;
  *(v59 + 16) = xmmword_220899360;
  v60 = *MEMORY[0x277CEAD18];
  v61 = *MEMORY[0x277CEAD18];
  v120 = *(v56 + 104);
  v121 = v56 + 104;
  v120(v59 + v58, v61, v55);
  sub_220454908(&unk_281298290, MEMORY[0x277D68FD8], MEMORY[0x277D68FD0]);
  v119 = "feedDismissingManager";
  v62 = v109;
  sub_220886F1C();

  (*(v108 + 8))(v45, v62);
  sub_22088BC0C();
  sub_22088BBEC();
  sub_220454908(&qword_281293340, type metadata accessor for ForYouFeedModel, &unk_2208BAB20);
  result = sub_22088E7FC();
  v63 = v130;
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v64 = v105;
  sub_22088970C();
  v113(v123, v63);
  v112(v122, v52);
  v65 = swift_allocObject();
  *(v65 + 16) = v124;
  v110 = v60;
  v111 = v55;
  (v120)(v65 + v58);
  sub_220454908(&qword_281298470, MEMORY[0x277D68720], MEMORY[0x277D68718]);
  v66 = v107;
  sub_220886F1C();

  (*(v106 + 8))(v64, v66);
  sub_22088BC0C();
  sub_22088BBEC();
  result = sub_22088E80C();
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v67 = v96;
  sub_22088999C();
  v113(v123, v130);
  v112(v122, v52);
  v68 = swift_allocObject();
  *(v68 + 16) = v124;
  v69 = v68 + v58;
  v70 = v58;
  v71 = v110;
  v72 = v111;
  v130 = v70;
  v120(v69, v110, v111);
  sub_220454908(&qword_2812983F0, MEMORY[0x277D68928], MEMORY[0x277D68920]);
  v73 = v98;
  sub_220886F1C();

  (*(v97 + 8))(v67, v73);
  sub_22089046C();
  sub_22089048C();
  v74 = v99;
  sub_2208894DC();
  v75 = v130;
  v76 = swift_allocObject();
  *(v76 + 16) = v124;
  v77 = v71;
  v78 = v120;
  v120(v76 + v75, v77, v72);
  sub_220454908(&qword_27CF593C0, MEMORY[0x277D685C0], MEMORY[0x277D685B8]);
  v79 = v101;
  sub_220886F1C();

  (*(v100 + 8))(v74, v79);
  v80 = OBJC_IVAR____TtC8StocksUI17ForYouFeedTracker_feedDismissingManager;
  v81 = sub_22089047C();
  if (v82)
  {
    v83 = v81;
    v84 = v82;
    __swift_project_boxed_opaque_existential_1((v115 + v80), *(v115 + v80 + 24));
    v85 = sub_22088FDBC();
    sub_22056F244(v83, v84, v85);

    v86 = v93;
    sub_22088823C();
    v87 = swift_allocObject();
    *(v87 + 16) = v124;
    v78(v87 + v75, v110, v111);
    sub_220454908(&unk_27CF5A280, MEMORY[0x277D2DAD8], MEMORY[0x277D2DAD0]);
    v88 = v95;
    sub_220886F1C();

    (*(v94 + 8))(v86, v88);
  }

  sub_220889C6C();
  v89 = v103;
  sub_22088BC1C();
  sub_220454908(&qword_27CF593C8, MEMORY[0x277D68B90], MEMORY[0x277D68B88]);
  sub_220886ECC();
  v90 = *(v104 + 8);
  v91 = v92;
  v90(v89, v92);
  sub_22088BBFC();
  sub_220886EDC();

  return (v90)(v89, v91);
}

uint64_t sub_220744B60(uint64_t a1, uint64_t a2)
{
  sub_220500B98(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_220744BC4(uint64_t a1)
{
  v3 = *(sub_22088CE3C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_220889B9C() - 8);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80));

  return sub_22073CB5C(a1, v1 + v4, v7, v8);
}

uint64_t sub_220744CA8(uint64_t a1)
{
  sub_220516884(0, &qword_281297B30, MEMORY[0x277D6DA48]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = *(*(v3 - 8) + 64);
  v6 = *(sub_22089049C() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_220743B68(a1, v7, v1 + v4, v8);
}

uint64_t sub_220744D9C(uint64_t a1)
{
  sub_220516884(0, &qword_281297B30, MEMORY[0x277D6DA48]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = *(*(v3 - 8) + 64);
  v6 = *(sub_22088698C() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_22088FEFC() - 8);
  v10 = *(v1 + 16);
  v11 = v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_220741828(a1, v10, v1 + v4, v1 + v7, v11);
}

uint64_t sub_220744EF4()
{
  sub_22074503C(v0 + OBJC_IVAR____TtC8StocksUI33StockChartCalloutViewModelFactory_chart);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StockChartCalloutViewModelFactory(uint64_t a1)
{
  result = qword_281283340;
  if (!qword_281283340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220744FAC(uint64_t a1)
{
  sub_2205C41F4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_22074503C(uint64_t a1)
{
  sub_2205C41F4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_220745098@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_22088C31C();
  v7 = v6;
  sub_22088C22C();
  sub_220891A6C();
  v9 = v7 - v8;
  v10 = sub_22088C2AC();
  sub_22088C20C();
  v53[0] = v9;
  *&v53[1] = v10;
  v53[2] = v11;
  v53[3] = v12;
  v53[4] = v13;
  v53[5] = v14;
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  v15 = sub_2206149F0();
  sub_2208124BC(v15, v53, &v48);

  v54.size.height = v49;
  v46 = v49;
  v47 = v48;
  v54.origin.x = 0.0;
  v54.origin.y = 0.0;
  v54.size.width = v9;
  v16 = CGRectGetMaxY(v54) + 0.0;
  sub_22088C31C();
  v18 = v17;
  sub_22088C22C();
  sub_220891A6C();
  v20 = v18 - v19;
  sub_22088C31C();
  sub_22088C20C();
  sub_220891A6C();
  v22 = v20 - v21;
  v23 = type metadata accessor for StockChartViewLayoutOptions(0);
  if (*(a1 + *(v23 + 24) + 8))
  {
    v24 = *(a1 + *(v23 + 20));
  }

  else
  {
    sub_22088737C();
    v24 = v25;
  }

  sub_22088C20C();
  v27 = v26;
  sub_22088C20C();
  v29 = v28;
  v43 = v28;
  v55.origin.x = v27;
  v55.origin.y = v16;
  v55.size.width = v22;
  v55.size.height = v24;
  v42 = CGRectGetMaxY(v55) + 5.0;
  sub_22088C31C();
  v31 = v30;
  sub_22088C22C();
  sub_220891A6C();
  v45 = v31 - v32;
  sub_22088C31C();
  v56.size.height = 15.0;
  v56.origin.x = v29;
  v56.origin.y = v42;
  v56.size.width = v9;
  MaxY = CGRectGetMaxY(v56);
  sub_22088C1FC();
  v40 = v51;
  v41 = v50;
  v33 = v52;
  v44 = 1.0 / v34;

  v57.origin.x = v27;
  v57.origin.y = v16;
  v57.size.width = v22;
  v57.size.height = v24;
  MinX = CGRectGetMinX(v57);
  v58.origin.x = 0.0;
  v58.origin.y = 0.0;
  v58.size.width = v9;
  v58.size.height = v46;
  MinY = CGRectGetMinY(v58);
  v59.origin.x = v27;
  v59.origin.y = v16;
  v59.size.width = v22;
  v59.size.height = v24;
  Width = CGRectGetWidth(v59);
  sub_22074536C(&v48);

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = v45;
  *(a2 + 24) = MaxY;
  *(a2 + 32) = v27;
  *(a2 + 40) = v16;
  *(a2 + 48) = v22;
  *(a2 + 56) = v24;
  *(a2 + 64) = v43;
  *(a2 + 72) = v42;
  *(a2 + 80) = v9;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 88) = 0x402E000000000000;
  *(a2 + 112) = v9;
  *(a2 + 120) = v46;
  *(a2 + 128) = v47;
  *(a2 + 136) = v46;
  *(a2 + 144) = v41;
  *(a2 + 152) = v40;
  *(a2 + 160) = v33;
  *(a2 + 168) = MinX;
  *(a2 + 176) = MinY;
  result = v44;
  *(a2 + 184) = Width;
  *(a2 + 192) = v44;
  return result;
}

void sub_220745434(uint64_t a1)
{
  if (!qword_28127E2F0)
  {
    sub_22088685C();
    v1 = sub_2208926EC();
    if (!v2)
    {
      atomic_store(v1, &qword_28127E2F0);
    }
  }
}

void sub_22074549C(uint64_t a1, char a2, void *a3)
{
  v61 = sub_22088685C();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61, v7);
  v60 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204E323C(0);
  v58 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v13 = (&v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = *(a1 + 16);
  if (!v56)
  {
    goto LABEL_24;
  }

  v52 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = *(v11 + 48);
  v15 = *(v58 + 80);
  v57 = a1;
  v16 = (v59 + 32);
  v54 = a1 + ((v15 + 32) & ~v15);
  sub_2204BD750(v54, v13, sub_2204E323C);
  v17 = v13[1];
  v64 = *v13;
  v18 = v64;
  v65 = v17;
  v19 = *v16;
  v55 = v14;
  v53 = v19;
  v19(v60, v13 + v14, v61);
  v20 = *a3;
  v22 = sub_2204AF97C(v18, v17);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v26 = v21;
  if (v20[3] >= v25)
  {
    if (a2)
    {
      if ((v21 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_2207D0AB0();
      if ((v26 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_2207CE804(v25, a2 & 1);
  v27 = sub_2204AF97C(v18, v17);
  if ((v26 & 1) == (v28 & 1))
  {
    v22 = v27;
    if ((v26 & 1) == 0)
    {
LABEL_14:
      v31 = *a3;
      *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      v32 = (v31[6] + 16 * v22);
      *v32 = v18;
      v32[1] = v17;
      v53((v31[7] + *(v59 + 72) * v22), v60, v61);
      v33 = v31[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v31[2] = v35;
      if (v56 != 1)
      {
        v36 = 1;
        while (v36 < *(v57 + 16))
        {
          sub_2204BD750(v54 + *(v58 + 72) * v36, v13, sub_2204E323C);
          v37 = v13[1];
          v64 = *v13;
          v38 = v64;
          v65 = v37;
          v39 = *v16;
          (*v16)(v60, v13 + v55, v61);
          v40 = *a3;
          v41 = sub_2204AF97C(v38, v37);
          v43 = v40[2];
          v44 = (v42 & 1) == 0;
          v34 = __OFADD__(v43, v44);
          v45 = v43 + v44;
          if (v34)
          {
            goto LABEL_26;
          }

          v46 = v42;
          if (v40[3] < v45)
          {
            sub_2207CE804(v45, 1);
            v41 = sub_2204AF97C(v38, v37);
            if ((v46 & 1) != (v47 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v46)
          {
            goto LABEL_11;
          }

          v48 = *a3;
          *(*a3 + 8 * (v41 >> 6) + 64) |= 1 << v41;
          v49 = (v48[6] + 16 * v41);
          *v49 = v38;
          v49[1] = v37;
          v39((v48[7] + *(v59 + 72) * v41), v60, v61);
          v50 = v48[2];
          v34 = __OFADD__(v50, 1);
          v51 = v50 + 1;
          if (v34)
          {
            goto LABEL_27;
          }

          ++v36;
          v48[2] = v51;
          if (v56 == v36)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v29 = swift_allocError();
    swift_willThrow();
    v66 = v29;
    v30 = v29;
    sub_2204446D4(0, &qword_28127DE30, MEMORY[0x277D84948]);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v59 + 8))(v60, v61);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_22089291C();
  __break(1u);
LABEL_29:
  v62 = 0;
  v63 = 0xE000000000000000;
  sub_22089254C();
  MEMORY[0x223D89680](0xD00000000000001BLL, 0x80000002208D25D0);
  sub_22089264C();
  MEMORY[0x223D89680](39, 0xE100000000000000);
  sub_22089267C();
  __break(1u);
}

uint64_t type metadata accessor for LandingPagePromiseViewController(uint64_t a1)
{
  result = qword_27CF593E0;
  if (!qword_27CF593E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_220745A98(uint64_t a1, unint64_t *a2)
{
  v4 = sub_22088BD1C();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v29 = sub_22088519C();
  v6 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2208871DC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22055F760(0);
  v31 = v15;
  v32 = a1;
  sub_22088E11C();
  if (v34)
  {
    sub_22088731C();
    if (swift_dynamicCast())
    {
      *v14 = 0xD000000000000013;
      v14[1] = 0x80000002208D2650;
      (*(v11 + 104))(v14, *MEMORY[0x277CEAE50], v10);
      v16 = a2;

      sub_2208872DC();

      (*(v11 + 8))(v14, v10);
    }

    else
    {
      v16 = a2;
    }
  }

  else
  {
    v16 = a2;
    sub_22056D130(v33);
  }

  type metadata accessor for LandingPagePromiseViewController(0);
  sub_22088518C();
  sub_22088517C();
  v17 = (*(v6 + 8))(v9, v29);
  MEMORY[0x28223BE20](v17, v18);
  v19 = v30;
  *(&v28 - 4) = v16;
  *(&v28 - 3) = v19;
  sub_22088BD0C();
  v27 = &v28 - 6;
  v20 = sub_22088C0CC();
  v21 = [objc_opt_self() currentDevice];
  v22 = [v21 userInterfaceIdiom];

  if (v22 == 1)
  {
    v23 = 2;
    goto LABEL_10;
  }

  if (!v22)
  {
    v23 = 1;
LABEL_10:
    [v20 setModalPresentationStyle_];
  }

  v24 = sub_22088E0EC();
  v25 = v20;
  v24();

  return v25;
}

void sub_220745E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a3;
  v36 = a4;
  v33 = a1;
  v34 = a2;
  sub_22055F760(0);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10, v14);
  v15 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CampaignRouteModel(0);
  v30 = *(v16 - 8);
  v17 = *(v30 + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v19 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a5;
  v38 = a6;
  sub_22088A3FC();
  v32 = sub_220888FBC();
  sub_22046D5B4();
  v31 = sub_220891D0C();
  sub_220748828(a5, v19);
  (*(v12 + 16))(v15, a7, v11);
  v20 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v21 = (v17 + *(v12 + 80) + v20) & ~*(v12 + 80);
  v22 = (v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  sub_22074888C(v19, v23 + v20);
  (*(v12 + 32))(v23 + v21, v15, v11);
  *(v23 + v22) = a6;
  v24 = (v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8));
  v25 = v34;
  *v24 = v33;
  v24[1] = v25;
  type metadata accessor for Router();

  v26 = v31;
  sub_220888E6C();

  v27 = swift_allocObject();
  *(v27 + 16) = v35;
  *(v27 + 24) = v36;

  v28 = sub_220888D9C();
  sub_220888E9C();
}

uint64_t sub_220746194(void *a1, void *a2)
{
  v4 = sub_22088A3BC();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = a1[1];
  if (v10)
  {
    *v9 = *a1;
    v9[1] = v10;
    v11 = MEMORY[0x277D34F48];
  }

  else
  {
    v11 = MEMORY[0x277D34F40];
  }

  (*(v5 + 104))(v9, *v11, v4, v7);
  __swift_project_boxed_opaque_existential_1(a2 + 22, a2[25]);

  v12 = sub_22088A45C();
  (*(v5 + 8))(v9, v4);
  return v12;
}

uint64_t sub_2207462E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void), uint64_t a7)
{
  v107 = a7;
  v108 = a6;
  v93 = a5;
  v92 = a4;
  v116 = a2;
  v117 = a3;
  v109 = a1;
  v106 = sub_22088A50C();
  v104 = *(v106 - 8);
  MEMORY[0x28223BE20](v106, v7);
  v105 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22047A238(0, &qword_2812994E0, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v103 = &v88 - v11;
  sub_22047A238(0, &qword_281298210, MEMORY[0x277D35078]);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v102 = &v88 - v14;
  v97 = sub_22088A3AC();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97, v15);
  v100 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22047A238(0, &qword_2812982D0, MEMORY[0x277D68ED8]);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v88 - v19;
  v101 = sub_22088A2FC();
  v99 = *(v101 - 8);
  MEMORY[0x28223BE20](v101, v21);
  v98 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_22088A56C();
  v110 = *(v115 - 8);
  MEMORY[0x28223BE20](v115, v23);
  v95 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v113 = &v88 - v27;
  v114 = sub_22088A3EC();
  v112 = *(v114 - 8);
  MEMORY[0x28223BE20](v114, v28);
  v111 = &v88 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_2208899EC();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91, v30);
  v89 = &v88 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for CampaignRouteModel(0);
  v94 = *(v121 - 1);
  v32 = *(v94 + 64);
  MEMORY[0x28223BE20](v121, v33);
  v34 = &v88 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_22088A3DC();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v37);
  v39 = (&v88 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = sub_22088A3FC();
  v41 = *(v40 - 8);
  v43 = MEMORY[0x28223BE20](v40, v42);
  v45 = (&v88 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v41 + 16))(v45, v109, v40, v43);
  v46 = (*(v41 + 88))(v45, v40);
  if (v46 == *MEMORY[0x277D34F58])
  {
    v47.n128_f64[0] = (*(v41 + 96))(v45, v40);
    v49 = *v45;
    v48 = v45[1];
    sub_220748AF8(0, v47);
    v51 = *(v50 + 48);
    v112 = v39;
    v113 = v36;
    v52 = *(v36 + 4);
    v114 = v35;
    v53.n128_f64[0] = v52(v39, v45 + v51, v35);
    v54 = v117;
    v110 = v49;
    v111 = v48;
    v55 = sub_22074708C(v117, v49, v48, v53);
    v56 = v116[5];
    v115 = v116[6];
    __swift_project_boxed_opaque_existential_1(v116 + 2, v56);
    sub_220446A58(0, &qword_27CF59408, MEMORY[0x277D30188], 1);
    sub_220748828(v54, &v88 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
    v57 = (*(v94 + 80) + 16) & ~*(v94 + 80);
    v58 = (v32 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    v59 = swift_allocObject();
    sub_22074888C(v34, v59 + v57);
    *(v59 + v58) = v55;

    sub_2208884BC();

    if (v119)
    {

      sub_220457328(&v118, v120);
      sub_220747500(v92, v93);
      sub_2208872FC();

      if (*(v54 + v121[7] + 8))
      {

        v60 = v89;
        sub_2208899DC();
        sub_220448D00(&unk_2812983E0, MEMORY[0x277D68948], MEMORY[0x277D68940]);
        v61 = v91;
        sub_2208872CC();
        (*(v90 + 8))(v60, v61);
      }

      __swift_project_boxed_opaque_existential_1(v120, v120[3]);
      v62 = v112;
      sub_22088A3CC();
      v63 = sub_220887F1C();

      Strong = swift_unknownObjectWeakLoadStrong();
      v66 = v113;
      v65 = v114;
      if (Strong)
      {
        swift_unknownObjectRetain();
        sub_22088C88C();
        swift_unknownObjectRelease();
      }

      (v108)(v63);

      (*(v66 + 1))(v62, v65);
      return __swift_destroy_boxed_opaque_existential_1(v120);
    }

    __break(1u);
LABEL_29:
    result = sub_2208928AC();
    __break(1u);
    return result;
  }

  v68 = v117;
  if (v46 != *MEMORY[0x277D34F50])
  {
    goto LABEL_29;
  }

  (*(v41 + 96))(v45, v40);
  v112[4](v111, v45, v114);
  v69 = *(v68 + v121[8]);
  v70 = sub_22089174C();
  v71 = (v110 + 104);
  if (v70)
  {
    if ((sub_22089176C() & 1) == 0)
    {
      if (sub_22089175C())
      {
        v73 = MEMORY[0x277D351E0];
      }

      else
      {
        v73 = MEMORY[0x277D351D0];
      }

      (*v71)(v113, *v73, v115);
      goto LABEL_18;
    }

    v72 = MEMORY[0x277D35170];
  }

  else
  {
    v72 = MEMORY[0x277D351D0];
  }

  (*v71)(v113, *v72, v115);
LABEL_18:
  v74 = sub_2207475BC();
  if (v75)
  {
    v76 = v74;
  }

  else
  {
    v76 = 0;
  }

  v109 = v76;
  v77 = 0xE000000000000000;
  if (v75)
  {
    v77 = v75;
  }

  v94 = v77;
  sub_2207909DC(v69, v20);
  v78 = sub_220889FEC();
  v79 = *(v78 - 8);
  if ((*(v79 + 48))(v20, 1, v78) == 1)
  {
    sub_220748A1C(v20, &qword_2812982D0, MEMORY[0x277D68ED8]);
    v93 = 0;
    v92 = 0xE000000000000000;
  }

  else
  {
    v93 = sub_220889FBC();
    v92 = v80;
    (*(v79 + 8))(v20, v78);
  }

  v81 = v110;
  v82 = v113;
  v83 = v115;
  (*(v110 + 16))(v95, v113, v115);
  (*(v96 + 104))(v100, *MEMORY[0x277D34F38], v97);
  sub_220748A78(v117 + v121[10], v102);
  v84 = sub_220884E9C();
  (*(*(v84 - 8) + 56))(v103, 1, 1, v84);
  (*(v104 + 104))(v105, *MEMORY[0x277D350C0], v106);

  v85 = v98;
  sub_22088A27C();
  v86 = v111;
  v87 = sub_22074794C(v111, v85, v116);
  v108();

  (*(v99 + 8))(v85, v101);
  (*(v81 + 8))(v82, v83);
  return (v112[1])(v86, v114);
}

void *sub_22074708C(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v7 = sub_22088A20C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + *(type metadata accessor for CampaignRouteModel(0) + 32));
  if (sub_22089176C())
  {
  }

  else
  {
    *v11 = a2;
    *(v11 + 1) = a3;
    *(v11 + 1) = 0u;
    *(v11 + 2) = 0u;
    *(v11 + 3) = 0u;
    (*(v8 + 104))(v11, *MEMORY[0x277D34DF8], v7);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_220588198(0, v12[2] + 1, 1, v12);
    }

    v14 = v12[2];
    v13 = v12[3];
    if (v14 >= v13 >> 1)
    {
      v12 = sub_220588198((v13 > 1), v14 + 1, 1, v12);
    }

    v12[2] = v14 + 1;
    (*(v8 + 32))(v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v14, v11, v7);
  }

  return v12;
}

uint64_t sub_220747244(void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v24 = a1;
  sub_22047A238(0, &qword_281298210, MEMORY[0x277D35078]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v21 - v6;
  sub_22047A238(0, &qword_27CF59410, MEMORY[0x277D30210]);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v21 - v10;
  v12 = sub_2208879EC();
  v22 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CampaignRouteModel(0);
  v17 = *(v16 + 20);
  v18 = sub_220887FAC();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v11, a2 + v17, v18);
  (*(v19 + 56))(v11, 0, 1, v18);
  sub_220748A78(a2 + *(v16 + 40), v7);

  sub_2208879DC();
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_22088837C();
  return (*(v22 + 8))(v15, v12);
}

uint64_t sub_220747500(uint64_t a1, void *a2)
{
  sub_22055F760(0);
  sub_22088E11C();
  if (v6)
  {
    sub_22088731C();
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_22056D130(v5);
  }

  __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
  sub_22088731C();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void *sub_2207475BC()
{
  sub_22047A238(0, &qword_27CF59420, MEMORY[0x277D34D78]);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v23 - v3;
  sub_22047A238(0, qword_281298170, MEMORY[0x277D35380]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v23 - v7;
  v9 = sub_22088A61C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v24 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_220446A58(0, &unk_281298250, MEMORY[0x277D34EA8], 0);
  result = sub_2208884DC();
  if (v25)
  {
    swift_getObjectType();
    v14 = *MEMORY[0x277D34D58];
    v15 = sub_22088A1EC();
    v16 = *(v15 - 8);
    (*(v16 + 104))(v4, v14, v15);
    (*(v16 + 56))(v4, 0, 1, v15);
    sub_22088A30C();
    sub_220748A1C(v4, &qword_27CF59420, MEMORY[0x277D34D78]);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      swift_unknownObjectRelease();
      sub_220748A1C(v8, qword_281298170, MEMORY[0x277D35380]);
    }

    else
    {
      v17 = v24;
      (*(v10 + 32))(v24, v8, v9);
      v18 = sub_22088A60C();
      if (v18)
      {
        v19 = v18;
        v20 = sub_220891A0C();
        v22 = v21;
        swift_unknownObjectRelease();

        (*(v10 + 8))(v17, v9);
        if (v22)
        {
          return v20;
        }
      }

      else
      {
        (*(v10 + 8))(v17, v9);
        swift_unknownObjectRelease();
      }
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22074794C(uint64_t a1, uint64_t a2, void *a3)
{
  v67 = a2;
  v68 = a3;
  v65 = a1;
  sub_22047A238(0, &qword_27CF59418, MEMORY[0x277D34E88]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v62 = &v58 - v5;
  sub_22047A238(0, &qword_27CF59420, MEMORY[0x277D34D78]);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v61 = &v58 - v8;
  v69 = sub_220884E9C();
  v9 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v10);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_22088519C();
  v66 = *(v72 - 8);
  MEMORY[0x28223BE20](v72, v13);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22088A2FC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v64 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22088A1EC();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v63 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22088A61C();
  v70 = *(v24 - 8);
  v71 = v24;
  MEMORY[0x28223BE20](v24, v25);
  v73 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22088A3EC();
  v28 = *(v27 - 8);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v32 = &v58 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v32, v65, v27, v30);
  v33 = (*(v28 + 88))(v32, v27);
  if (v33 == *MEMORY[0x277D34F68])
  {
    (*(v28 + 96))(v32, v27);
    v34 = v9;
    (*(v9 + 32))(v12, v32, v69);
    v35 = v61;
    (*(v21 + 56))(v61, 1, 1, v20);
    v36 = v62;
    (*(v17 + 16))(v62, v67, v16);
    (*(v17 + 56))(v36, 0, 1, v16);
    __swift_project_boxed_opaque_existential_1(v68 + 17, v68[20]);
    sub_22088518C();
    sub_22088517C();
    (*(v66 + 8))(v15, v72);
    v37 = sub_22088A59C();

    sub_220748A1C(v36, &qword_27CF59418, MEMORY[0x277D34E88]);
    sub_220748A1C(v35, &qword_27CF59420, MEMORY[0x277D34D78]);
    (*(v34 + 8))(v12, v69);
    return v37;
  }

  v69 = v20;
  v38 = v15;
  v39 = v67;
  v40 = v68;
  if (v33 == *MEMORY[0x277D34F60])
  {
    (*(v28 + 96))(v32, v27);
    (*(v70 + 32))(v73, v32, v71);
    v41 = sub_22088A5EC();
    v60 = v38;
    if (v41)
    {
      v42 = v39;
      v43 = v17;
LABEL_15:
      sub_22088A2BC();
      v44 = v16;
      goto LABEL_16;
    }

    v42 = v39;
    v44 = v16;
    v43 = v17;
    if ((sub_22088A5CC() & 1) == 0)
    {
LABEL_16:
      v59 = v44;
      v51 = sub_22088A5FC();
      v52 = v63;
      (*(v21 + 104))(v63, *MEMORY[0x277D34D60], v69);
      v53 = v64;
      (*(v43 + 16))(v64, v42, v44);
      v54 = v40[20];
      v67 = v40[21];
      __swift_project_boxed_opaque_existential_1(v40 + 17, v54);
      v55 = v60;
      sub_22088518C();
      sub_22088517C();
      (*(v66 + 8))(v55, v72);
      v37 = sub_22088A5AC();

      (*(v43 + 8))(v53, v59);
      (*(v21 + 8))(v52, v69);
      (*(v70 + 8))(v73, v71);
      return v37;
    }

    v45 = [v40[27] possiblyUnfetchedAppConfiguration];
    if ([v45 respondsToSelector_])
    {
      v46 = [v45 paidBundleConfig];
      swift_unknownObjectRelease();
      v47 = [v46 offeredBundlePurchaseIDs];

      if (v47)
      {
        v48 = sub_2208916EC();

        if (*(v48 + 16))
        {

          sub_22088A5DC();
          if (!v49)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }
      }

      sub_22088A5DC();
      if (!v57)
      {
        goto LABEL_14;
      }
    }

    else
    {
      swift_unknownObjectRelease();
      sub_22088A5DC();
      if (!v50)
      {
LABEL_14:
        v43 = v17;
        sub_22088A29C();
        goto LABEL_15;
      }
    }

LABEL_13:

    goto LABEL_14;
  }

  result = sub_22089267C();
  __break(1u);
  return result;
}

void sub_220748248(void *a1, void (*a2)(void *))
{
  v4 = sub_22088C0EC();
  sub_220448D00(&qword_27CF593F0, MEMORY[0x277D6DD70], MEMORY[0x277D6DD78]);
  v5 = swift_allocError();
  v7 = v6;
  v6[3] = sub_220887C7C();
  v7[4] = sub_220448D00(&qword_27CF593F8, MEMORY[0x277D2FEF0], MEMORY[0x277D2FED0]);
  __swift_allocate_boxed_opaque_existential_1(v7);
  v8 = a1;
  sub_220887C6C();
  (*(*(v4 - 8) + 104))(v7, *MEMORY[0x277D6DD60], v4);
  a2(v5);
}

uint64_t sub_2207483A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v20[1] = a7;
  v20[2] = a8;
  v20[0] = a6;
  v13 = sub_22088BD1C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_allocWithZone(v10);
  (*(v14 + 16))(v17, a4, v13);
  sub_22046DA2C(a5, v21);
  v18 = sub_22088C0DC();
  __swift_destroy_boxed_opaque_existential_1(a5);
  (*(v14 + 8))(a4, v13);
  return v18;
}

id sub_220748544(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for LandingPagePromiseViewController(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_2207485C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LandingPagePromiseViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_220748600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22088B97C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = (*(v5 + 88))(v9, v4);
  if (v10 == *MEMORY[0x277D6D980])
  {
    v11 = MEMORY[0x277D6E208];
LABEL_5:
    v12 = *v11;
    v13 = sub_22088CC1C();
    (*(*(v13 - 8) + 104))(a2, v12, v13);
    v14 = *MEMORY[0x277D6E200];
    v15 = sub_22088CC2C();
    return (*(*(v15 - 8) + 104))(a2, v14, v15);
  }

  if (v10 == *MEMORY[0x277D6D978])
  {
    v11 = MEMORY[0x277D6E210];
    goto LABEL_5;
  }

  result = sub_22089267C();
  __break(1u);
  return result;
}

uint64_t sub_220748828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CampaignRouteModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22074888C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CampaignRouteModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2207488F0(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for CampaignRouteModel(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  sub_22055F760(0);
  v9 = (v6 + v7 + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80);
  v10 = (*(*(v8 - 8) + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2207462E4(a1, a2, v2 + v6, v2 + v9, *(v2 + v10), *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_220748A1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22047A238(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_220748A78(uint64_t a1, uint64_t a2)
{
  sub_22047A238(0, &qword_281298210, MEMORY[0x277D35078]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_220748AF8(uint64_t a1, __n128 a2)
{
  if (!qword_27CF59400)
  {
    sub_22088A3DC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF59400);
    }
  }
}

uint64_t sub_220748B64(void *a1)
{
  v3 = *(type metadata accessor for CampaignRouteModel(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_220747244(a1, v1 + v4, v5);
}

void sub_220748C00(uint64_t a1, double *a2, char *a3)
{
  v4 = v3;
  sub_2206E8A48(0, &qword_28127E448, MEMORY[0x277D75058], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v35 - v9;
  v36 = objc_opt_self();
  v11 = [v36 secondarySystemBackgroundColor];
  [a3 setBackgroundColor_];

  v12 = *&a3[OBJC_IVAR____TtC8StocksUI19CreateWatchlistView_newWatchlistButton];
  v13 = *(type metadata accessor for CreateWatchlistViewLayoutAttributes(0) + 24);
  v14 = sub_22089226C();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v10, a2 + v13, v14);
  (*(v15 + 56))(v10, 0, 1, v14);
  sub_22089228C();
  [v12 setFrame_];
  swift_beginAccess();
  v16 = __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  v18 = *(*v16 + 40);
  v17 = *(*v16 + 48);
  __swift_project_boxed_opaque_existential_1((*v16 + 16), v18);
  v19 = (*(*(v17 + 16) + 128))(v18);
  [v12 setTintColor_];

  sub_2206E8A48(0, &qword_28127DE80, sub_2204A5D84, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899360;
  v21 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v22 = sub_220561394();
  v23 = v21;
  v24 = sub_220891F2C();
  *(inited + 64) = v22;
  *(inited + 40) = v24;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2205613E0(inited + 32);
  v25 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v26 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_220749100(&qword_28127E6A8, 255, type metadata accessor for Key, &unk_220899024);
  v27 = sub_22089125C();

  v28 = [v25 initWithString:v26 attributes:v27];

  [v12 setAttributedTitle:v28 forState:0];
  v29 = *__swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  v30 = [v36 secondarySystemBackgroundColor];
  [v12 setBackgroundColor_];

  v32 = v29[5];
  v31 = v29[6];
  __swift_project_boxed_opaque_existential_1(v29 + 2, v32);
  v33 = (*(*(v31 + 16) + 128))(v32);
  [v12 setTintColor_];

  v34 = sub_22089132C();
  [a3 setAccessibilityLabel_];
}

uint64_t sub_2207490A8(uint64_t a1, uint64_t a2)
{
  result = sub_220749100(&qword_27CF59428, a2, type metadata accessor for CreateWatchlistViewRenderer, &unk_2208B0E5C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_220749100(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

char *sub_2207491DC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC8StocksUI28StockChartCalloutHandleLayer_knobLayer;
  *&v2[v4] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  *&v2[OBJC_IVAR____TtC8StocksUI28StockChartCalloutHandleLayer_knobLocation] = 0;
  v19.receiver = v2;
  v19.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v19, sel_init);
  v6 = OBJC_IVAR____TtC8StocksUI28StockChartCalloutHandleLayer_knobLayer;
  v7 = *&v5[OBJC_IVAR____TtC8StocksUI28StockChartCalloutHandleLayer_knobLayer];
  v8 = objc_opt_self();
  v9 = v5;
  v10 = v7;
  v11 = [v8 bezierPathWithOvalInRect_];
  v12 = [v11 CGPath];

  [v10 setPath_];
  [*&v5[v6] setBounds_];
  v13 = *&v5[v6];
  sub_2207495A0(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899920;
  *(inited + 32) = 0x6E6F697469736F70;
  *(inited + 40) = 0xE800000000000000;
  v15 = objc_allocWithZone(MEMORY[0x277CBEB68]);
  v16 = v13;
  *(inited + 48) = [v15 init];
  *(inited + 56) = 0x756F72676B636162;
  *(inited + 64) = 0xEF726F6C6F43646ELL;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  sub_2205CFB38(inited);
  swift_setDeallocating();
  sub_2207495F8(0);
  swift_arrayDestroy();
  sub_220749660();
  v17 = sub_22089125C();

  [v16 setActions_];

  [v9 addSublayer_];
  return v9;
}

void sub_2207495A0(uint64_t a1)
{
  if (!qword_28127DEC8)
  {
    sub_2207495F8(255);
    v1 = sub_22089288C();
    if (!v2)
    {
      atomic_store(v1, &qword_28127DEC8);
    }
  }
}

void sub_2207495F8(uint64_t a1)
{
  if (!qword_28127EB88)
  {
    sub_220749660();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28127EB88);
    }
  }
}

unint64_t sub_220749660()
{
  result = qword_28127E510;
  if (!qword_28127E510)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28127E510);
  }

  return result;
}

uint64_t sub_220749710(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(*v3 + 40);
  v6 = *(*v3 + 48);
  __swift_project_boxed_opaque_existential_1((*v3 + 16), v5);
  return a3(v5, v6) & 1;
}

void sub_22074977C(void (*a1)(uint64_t, id), uint64_t a2, void *a3)
{
  v5 = *(v3 + *a3);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  if (v8)
  {
    while (1)
    {
      v11 = v10;
LABEL_9:
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v13 = v12 | (v11 << 6);
      v14 = *(*(v5 + 48) + v13);
      v15 = *(*(v5 + 56) + 8 * v13);
      a1(v14, v15);

      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return;
    }

    if (v11 >= v9)
    {
      break;
    }

    v8 = *(v5 + 64 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }
}

char *sub_220749890(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  v12 = OBJC_IVAR____TtC8StocksUI15QuoteDetailView_scrollView;
  *&v6[v12] = [objc_allocWithZone(MEMORY[0x277D759D8]) initWithFrame_];
  v13 = OBJC_IVAR____TtC8StocksUI15QuoteDetailView_separatorsView;
  *&v6[v13] = [objc_allocWithZone(type metadata accessor for ShapeView()) initWithFrame_];
  v14 = OBJC_IVAR____TtC8StocksUI15QuoteDetailView_attributionButtonContainerView;
  *&v6[v14] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v15 = OBJC_IVAR____TtC8StocksUI15QuoteDetailView_attributionButton;
  type metadata accessor for AttributionButton();
  v16 = [swift_getObjCClassFromMetadata() buttonWithType_];
  v17 = *&v16[OBJC_IVAR____TtC8StocksUI17AttributionButton_onTap];
  sub_22088E18C();

  v18 = 0;
  v84 = v7;
  *&v7[v15] = v16;
  v19 = MEMORY[0x277D84F98];
  while (1)
  {
    v22 = byte_283411568[v18 + 32];
    v23 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
    if (!v23)
    {
      v34 = sub_2205CDFF4(v22);
      if (v35)
      {
        v36 = v34;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_2207D0D40();
        }

        sub_22059B294(v36, v19);
      }

      goto LABEL_3;
    }

    v24 = v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = sub_2205CDFF4(v22);
    v28 = v19[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      break;
    }

    v32 = v27;
    if (v19[3] >= v31)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = v26;
        sub_2207D0D40();
        v26 = v39;
        if ((v32 & 1) == 0)
        {
LABEL_15:
          v19[(v26 >> 6) + 8] |= 1 << v26;
          *(v19[6] + v26) = v22;
          *(v19[7] + 8 * v26) = v24;
          v37 = v19[2];
          v30 = __OFADD__(v37, 1);
          v38 = v37 + 1;
          if (v30)
          {
            goto LABEL_62;
          }

          v19[2] = v38;
          goto LABEL_3;
        }

        goto LABEL_2;
      }
    }

    else
    {
      sub_2207CEB98(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_2205CDFF4(v22);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_64;
      }
    }

    if ((v32 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_2:
    v20 = v19[7];
    v21 = *(v20 + 8 * v26);
    *(v20 + 8 * v26) = v24;

LABEL_3:
    if (++v18 == 12)
    {
      v40 = 0;
      *&v84[OBJC_IVAR____TtC8StocksUI15QuoteDetailView_nameLabels] = v19;
      v41 = MEMORY[0x277D84F98];
      while (1)
      {
        v44 = byte_283411568[v40 + 32];
        v45 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
        if (!v45)
        {
          v55 = sub_2205CDFF4(v44);
          if (v56)
          {
            v57 = v55;
            if (!swift_isUniquelyReferenced_nonNull_native())
            {
              sub_2207D0D40();
            }

            sub_22059B294(v57, v41);
          }

          goto LABEL_21;
        }

        v46 = v45;
        v47 = swift_isUniquelyReferenced_nonNull_native();
        v48 = sub_2205CDFF4(v44);
        v50 = v41[2];
        v51 = (v49 & 1) == 0;
        v30 = __OFADD__(v50, v51);
        v52 = v50 + v51;
        if (v30)
        {
          goto LABEL_61;
        }

        v53 = v49;
        if (v41[3] >= v52)
        {
          if ((v47 & 1) == 0)
          {
            v60 = v48;
            sub_2207D0D40();
            v48 = v60;
            if ((v53 & 1) == 0)
            {
LABEL_33:
              v41[(v48 >> 6) + 8] |= 1 << v48;
              *(v41[6] + v48) = v44;
              *(v41[7] + 8 * v48) = v46;
              v58 = v41[2];
              v30 = __OFADD__(v58, 1);
              v59 = v58 + 1;
              if (v30)
              {
                goto LABEL_63;
              }

              v41[2] = v59;
              goto LABEL_21;
            }

            goto LABEL_20;
          }
        }

        else
        {
          sub_2207CEB98(v52, v47);
          v48 = sub_2205CDFF4(v44);
          if ((v53 & 1) != (v54 & 1))
          {
            goto LABEL_64;
          }
        }

        if ((v53 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_20:
        v42 = v41[7];
        v43 = *(v42 + 8 * v48);
        *(v42 + 8 * v48) = v46;

LABEL_21:
        if (++v40 == 12)
        {
          *&v84[OBJC_IVAR____TtC8StocksUI15QuoteDetailView_valueLabels] = v41;
          v85.receiver = v84;
          v85.super_class = ObjectType;
          v61 = objc_msgSendSuper2(&v85, sel_initWithFrame_, a1, a2, a3, a4);
          v62 = OBJC_IVAR____TtC8StocksUI15QuoteDetailView_scrollView;
          v63 = *&v61[OBJC_IVAR____TtC8StocksUI15QuoteDetailView_scrollView];
          v64 = v61;
          [v63 setAlwaysBounceVertical_];
          [*&v61[v62] setShowsVerticalScrollIndicator_];
          [*&v61[v62] setShowsHorizontalScrollIndicator_];
          [*&v61[v62] setDirectionalLockEnabled_];
          [v64 addSubview_];
          [*&v61[v62] addSubview_];
          v65 = OBJC_IVAR____TtC8StocksUI15QuoteDetailView_attributionButtonContainerView;
          [v64 addSubview_];
          [*&v64[v65] addSubview_];
          v66 = *&v64[OBJC_IVAR____TtC8StocksUI15QuoteDetailView_nameLabels];
          v67 = 1 << *(v66 + 32);
          v68 = -1;
          if (v67 < 64)
          {
            v68 = ~(-1 << v67);
          }

          v69 = v68 & *(v66 + 64);
          v70 = (v67 + 63) >> 6;

          v71 = 0;
          if (v69)
          {
            while (1)
            {
              v72 = v71;
LABEL_45:
              v73 = __clz(__rbit64(v69));
              v69 &= v69 - 1;
              [*&v61[v62] addSubview_];
              if (!v69)
              {
                goto LABEL_41;
              }
            }
          }

          while (1)
          {
LABEL_41:
            v72 = v71 + 1;
            if (__OFADD__(v71, 1))
            {
              __break(1u);
              goto LABEL_59;
            }

            if (v72 >= v70)
            {
              break;
            }

            v69 = *(v66 + 64 + 8 * v72);
            ++v71;
            if (v69)
            {
              v71 = v72;
              goto LABEL_45;
            }
          }

          v74 = *&v64[OBJC_IVAR____TtC8StocksUI15QuoteDetailView_valueLabels];
          v75 = 1 << *(v74 + 32);
          v76 = -1;
          if (v75 < 64)
          {
            v76 = ~(-1 << v75);
          }

          v77 = v76 & *(v74 + 64);
          v78 = (v75 + 63) >> 6;

          v79 = 0;
          while (v77)
          {
            v80 = v79;
LABEL_55:
            v81 = __clz(__rbit64(v77));
            v77 &= v77 - 1;
            [*&v61[v62] addSubview_];
          }

          while (1)
          {
            v80 = v79 + 1;
            if (__OFADD__(v79, 1))
            {
              break;
            }

            if (v80 >= v78)
            {

              return v64;
            }

            v77 = *(v74 + 64 + 8 * v80);
            ++v79;
            if (v77)
            {
              v79 = v80;
              goto LABEL_55;
            }
          }

LABEL_59:
          __break(1u);
          goto LABEL_60;
        }
      }
    }
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  result = sub_22089291C();
  __break(1u);
  return result;
}

void sub_22074A08C()
{
  sub_22074A118(&qword_281293178, &unk_2208B0F8C);

  JUMPOUT(0x223D86790);
}

uint64_t sub_22074A118(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for QuoteDetailView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22074A158()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8StocksUI15QuoteDetailView_scrollView;
  *(v1 + v2) = [objc_allocWithZone(MEMORY[0x277D759D8]) initWithFrame_];
  v3 = OBJC_IVAR____TtC8StocksUI15QuoteDetailView_separatorsView;
  *(v1 + v3) = [objc_allocWithZone(type metadata accessor for ShapeView()) initWithFrame_];
  v4 = OBJC_IVAR____TtC8StocksUI15QuoteDetailView_attributionButtonContainerView;
  *(v1 + v4) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v5 = OBJC_IVAR____TtC8StocksUI15QuoteDetailView_attributionButton;
  type metadata accessor for AttributionButton();
  v6 = [swift_getObjCClassFromMetadata() buttonWithType_];
  v7 = *&v6[OBJC_IVAR____TtC8StocksUI17AttributionButton_onTap];
  sub_22088E18C();

  *(v1 + v5) = v6;
  sub_22089267C();
  __break(1u);
}

uint64_t type metadata accessor for StockChartViewLayoutOptions(uint64_t a1)
{
  result = qword_281288038;
  if (!qword_281288038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22074A324(uint64_t a1)
{
  sub_22088C32C();
  if (v1 <= 0x3F)
  {
    sub_2204BCAA4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t AppEvent.hashValue.getter()
{
  v1 = *v0;
  sub_2208929EC();
  MEMORY[0x223D8ABA0](v1);
  return sub_220892A2C();
}

void sub_22074A45C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v42 = a1;
  v4 = sub_22088954C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22088926C();
  v38 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22047A28C(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v37 - v15;
  v17 = sub_220884E9C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088EDFC();
  v22 = (*(v18 + 48))(v16, 1, v17);
  v40 = v5;
  v41 = v4;
  if (v22 == 1)
  {
    sub_22047C4E4(v16);
LABEL_9:
    sub_22088EDCC();
    sub_22088953C();
    sub_22047A28C(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v32 = sub_220886F8C();
    v33 = *(v32 - 8);
    v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_220899360;
    (*(v33 + 104))(v35 + v34, *MEMORY[0x277CEAD18], v32);
    sub_22074B9C0(&qword_2812984C0, MEMORY[0x277D68600], MEMORY[0x277D685F8]);
    v36 = v41;
    sub_220886F1C();

    sub_220889C0C();
    sub_22074B9C0(&qword_27CF59488, MEMORY[0x277D68B50], MEMORY[0x277D68B48]);
    memset(v43, 0, sizeof(v43));
    sub_220886F3C();
    sub_22056D130(v43);
    (*(v40 + 8))(v8, v36);
    return;
  }

  v37 = v9;
  v39 = a2;
  (*(v18 + 32))(v21, v16, v17);
  v23 = [objc_allocWithZone(MEMORY[0x277D55100]) init];
  v24 = sub_220884E3C();
  v25 = [v23 identifierForURL_];

  if (!v25)
  {
LABEL_8:
    (*(v18 + 8))(v21, v17);
    goto LABEL_9;
  }

  sub_22089136C();

  sub_22088EDDC();
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v26 <= -2147483650.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v26 < 2147483650.0)
  {
    sub_22088925C();
    sub_22047A28C(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v27 = sub_220886F8C();
    v28 = *(v27 - 8);
    v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_220899360;
    (*(v28 + 104))(v30 + v29, *MEMORY[0x277CEAD18], v27);
    sub_22074B9C0(&qword_27CF59478, MEMORY[0x277D683B0], MEMORY[0x277D683A8]);
    v31 = v37;
    sub_220886F1C();

    (*(v38 + 8))(v12, v31);
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_22074AB1C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v78 = a1;
  v4 = sub_22088954C();
  v76 = *(v4 - 8);
  v77 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v75 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088926C();
  v67 = *(v7 - 8);
  v68 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v66 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22047A28C(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v65 - v12;
  v14 = sub_220884E9C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v74 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22088979C();
  v70 = *(v18 - 8);
  v71 = v18;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22088EDAC();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v65 - v29;
  v31 = sub_2208896BC();
  v72 = *(v31 - 8);
  v73 = v31;
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v65 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = COERCE_DOUBLE(sub_22088EDEC());
  if ((v36 & 1) == 0)
  {
    v65 = v15;
    v69 = a2;
    v37 = v35 * 1000.0;
    if (COERCE__INT64(fabs(v35 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v37 > -9.22337204e18)
    {
      if (v37 < 9.22337204e18)
      {
        sub_22088EDBC();
        (*(v23 + 32))(v26, v30, v22);
        v38 = (*(v23 + 88))(v26, v22);
        if (v38 == *MEMORY[0x277D2D5D0])
        {
          (*(v70 + 104))(v21, *MEMORY[0x277D687B0], v71);
LABEL_17:
          sub_2208896AC();
          sub_22047A28C(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
          v42 = sub_220886F8C();
          v43 = *(v42 - 8);
          v44 = (*(v43 + 80) + 32) & ~*(v43 + 80);
          v45 = swift_allocObject();
          *(v45 + 16) = xmmword_220899360;
          (*(v43 + 104))(v45 + v44, *MEMORY[0x277CEAD18], v42);
          sub_22074B9C0(&qword_27CF59480, MEMORY[0x277D686E0], MEMORY[0x277D686D8]);
          v46 = v73;
          sub_220886F1C();

          (*(v72 + 8))(v34, v46);
          v15 = v65;
          goto LABEL_18;
        }

        if (v38 == *MEMORY[0x277D2D5A8])
        {
          v39 = MEMORY[0x277D68788];
        }

        else if (v38 == *MEMORY[0x277D2D5B0])
        {
          v39 = MEMORY[0x277D68790];
        }

        else if (v38 == *MEMORY[0x277D2D5C0])
        {
          v39 = MEMORY[0x277D687A0];
        }

        else
        {
          if (v38 != *MEMORY[0x277D2D5B8])
          {
            v41 = *(v70 + 104);
            if (v38 != *MEMORY[0x277D2D5C8])
            {
              v41(v21, *MEMORY[0x277D687B0], v71);
              (*(v23 + 8))(v26, v22);
              goto LABEL_17;
            }

            v40 = *MEMORY[0x277D687A8];
            goto LABEL_16;
          }

          v39 = MEMORY[0x277D68798];
        }

        v40 = *v39;
        v41 = *(v70 + 104);
LABEL_16:
        v41(v21, v40, v71);
        goto LABEL_17;
      }

LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_18:
  sub_22088EDFC();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_22047C4E4(v13);
LABEL_26:
    sub_22088EDCC();
    v59 = v75;
    sub_22088953C();
    sub_22047A28C(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v60 = sub_220886F8C();
    v61 = *(v60 - 8);
    v62 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_220899360;
    (*(v61 + 104))(v63 + v62, *MEMORY[0x277CEAD18], v60);
    sub_22074B9C0(&qword_2812984C0, MEMORY[0x277D68600], MEMORY[0x277D685F8]);
    v64 = v77;
    sub_220886F1C();

    sub_22088978C();
    sub_22074B9C0(&qword_27CF59470, MEMORY[0x277D68780], MEMORY[0x277D68778]);
    memset(v79, 0, 32);
    sub_220886F3C();
    sub_22056D130(v79);
    (*(v76 + 8))(v59, v64);
    return;
  }

  v47 = v15;
  v48 = v74;
  (*(v15 + 32))(v74, v13, v14);
  v49 = [objc_allocWithZone(MEMORY[0x277D55100]) init];
  v50 = sub_220884E3C();
  v51 = [v49 identifierForURL_];

  if (!v51)
  {
LABEL_25:
    (*(v47 + 8))(v48, v14);
    goto LABEL_26;
  }

  sub_22089136C();

  sub_22088EDDC();
  if ((*&v52 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_33;
  }

  if (v52 <= -2147483650.0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v52 < 2147483650.0)
  {
    v53 = v66;
    sub_22088925C();
    sub_22047A28C(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v54 = sub_220886F8C();
    v55 = *(v54 - 8);
    v56 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_220899360;
    (*(v55 + 104))(v57 + v56, *MEMORY[0x277CEAD18], v54);
    sub_22074B9C0(&qword_27CF59478, MEMORY[0x277D683B0], MEMORY[0x277D683A8]);
    v58 = v68;
    sub_220886F1C();

    (*(v67 + 8))(v53, v58);
    goto LABEL_25;
  }

LABEL_35:
  __break(1u);
}

double sub_22074B720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[1] = a5;
  v7 = sub_22088EE0C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  __swift_project_boxed_opaque_existential_1((*v5 + 24), *(*v5 + 48));
  if (sub_220889D0C())
  {
    (*(v8 + 16))(v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
    v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v13 = swift_allocObject();
    (*(v8 + 32))(v13 + v12, v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    sub_22088726C();
  }

  return result;
}

uint64_t objectdestroyTm_11()
{
  v1 = sub_22088EE0C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_22074B93C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(sub_22088EE0C() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_22074B9C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22074BA08()
{
  v0 = sub_220884E7C();
  if (v1)
  {
    v2 = v1;
    if (v0 == sub_220884DEC() && v2 == v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_2208928BC();
    }

    v6 = sub_220884E6C();
    v8 = v7;
    v9 = sub_220884DDC();
    if (v8)
    {
      if (v6 == v9 && v8 == v10)
      {
        v11 = 1;
      }

      else
      {
        v11 = sub_2208928BC();
      }
    }

    else
    {
      v11 = 0;
    }

    v5 = v4 | v11;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_22074BAFC(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v2 = sub_22088516C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_220889FAC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_220889F9C();
  v22 = *(v20 - 8);
  v13 = MEMORY[0x28223BE20](v20, v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x277D68EC8];
  if (*(v21 + 64) < 0)
  {
    v16 = MEMORY[0x277D68EC0];
  }

  (*(v8 + 104))(v11, *v16, v7, v13);
  sub_220889F8C();
  sub_22074C308(&qword_2812982E0, 255, MEMORY[0x277D68EB8], MEMORY[0x277D68EB0]);
  sub_220886F1C();
  sub_22088977C();
  sub_2208877FC();
  sub_22074C308(&qword_281298468, 255, MEMORY[0x277D68770], MEMORY[0x277D68768]);
  sub_220886ECC();
  v17 = *(v3 + 8);
  v17(v6, v2);
  sub_2208877EC();
  sub_220886EDC();
  v17(v6, v2);
  return (*(v22 + 8))(v15, v20);
}

uint64_t sub_22074BE60()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  sub_22059A860(*(v0 + 64));

  return swift_deallocClassInstance();
}

double sub_22074BED4(uint64_t a1, uint64_t a2)
{
  if (*(*v2 + 16))
  {
    sub_22074C308(&qword_27CF59498, a2, type metadata accessor for TipInteractor, &unk_2208B1158);

    sub_220886C6C();
  }

  return result;
}

uint64_t sub_22074BF70(uint64_t a1)
{
  sub_22047C320(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_220884E9C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  sub_22047C2BC(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_22047C4E4(v6);
  }

  (*(v8 + 32))(v11, v6, v7);
  __swift_project_boxed_opaque_existential_1((v12 + 24), *(v12 + 48));
  sub_22088B62C();
  return (*(v8 + 8))(v11, v7);
}

double sub_22074C100(uint64_t a1)
{
  v3 = sub_22088780C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v8 = *v1;
  (*(v4 + 16))(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v7);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  (*(v4 + 32))(v10 + v9, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);

  sub_22088726C();

  return result;
}

uint64_t sub_22074C294(uint64_t a1)
{
  sub_22088780C();
  v3 = *(v1 + 16);

  return sub_22074BAFC(a1, v3);
}

uint64_t sub_22074C308(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_22074C374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 48);
  v9 = __swift_project_boxed_opaque_existential_1((*v3 + 16), v7);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (*(*(v8 + 8) + 8))(a1, v7, v13);
  v17 = MEMORY[0x28223BE20](v15, v16);
  (*(v10 + 16))(&v20 - v14, &v20 - v14, v7, v17);
  v18 = sub_220476DF0(&v20 - v14, a2, v7, v8);
  result = (*(v10 + 8))(&v20 - v14, v7);
  *a3 = v18;
  return result;
}

uint64_t sub_22074C4DC()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v2);
  return (*(*(v3 + 16) + 40))(v2);
}

double sub_22074C53C(uint64_t a1)
{
  sub_22074C5D4();

  sub_22088D90C();
  return result;
}

unint64_t sub_22074C57C()
{
  result = qword_281283C00;
  if (!qword_281283C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281283C00);
  }

  return result;
}

unint64_t sub_22074C5D4()
{
  result = qword_281283C08;
  if (!qword_281283C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281283C08);
  }

  return result;
}

uint64_t sub_22074C628(uint64_t a1, uint64_t a2, __n128 a3)
{
  v64 = a2;
  v66 = a1;
  v3 = sub_2208891DC();
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v50 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2208895EC();
  v7 = *(v6 - 8);
  v59 = v6;
  v60 = v7;
  MEMORY[0x28223BE20](v6, v8);
  v58 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22088956C();
  v11 = *(v10 - 8);
  v56 = v10;
  v57 = v11;
  MEMORY[0x28223BE20](v10, v12);
  v55 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_220889FFC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_220889FEC();
  v20 = *(v19 - 8);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v18, *MEMORY[0x277D68EE0], v14, v22);
  sub_220889FCC();
  sub_2207526F0(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v65 = v25;
  v26 = sub_220886F8C();
  v27 = *(v26 - 8);
  v63 = *(v27 + 72);
  v28 = *(v27 + 80);
  v29 = (v28 + 32) & ~v28;
  v30 = swift_allocObject();
  v62 = xmmword_220899360;
  *(v30 + 16) = xmmword_220899360;
  v54 = *MEMORY[0x277CEAD10];
  v53 = *(v27 + 104);
  v53(v30 + v29);
  v61 = "articleFooterContext";
  sub_22075275C(&qword_2812982D8, MEMORY[0x277D68ED8], MEMORY[0x277D68ED0]);
  sub_220886F1C();

  (*(v20 + 8))(v24, v19);
  v31 = sub_22088798C();
  sub_22088797C();
  v32 = v55;
  sub_22088955C();
  sub_22075275C(&qword_2812984B8, MEMORY[0x277D68610], MEMORY[0x277D68608]);
  v33 = v56;
  sub_220886F1C();
  (*(v57 + 8))(v32, v33);
  swift_getObjectType();
  v34 = v58;
  sub_2206F61F0(v58);
  v55 = v28;
  v35 = swift_allocObject();
  *(v35 + 16) = v62;
  v56 = v29;
  v57 = v26;
  v36 = v35 + v29;
  v37 = v54;
  v38 = v26;
  v39 = v53;
  (v53)(v36, v54, v38);
  sub_22075275C(&qword_2812984B0, MEMORY[0x277D686A0], MEMORY[0x277D68698]);
  v40 = v34;
  v41 = v59;
  sub_220886F1C();

  (*(v60 + 8))(v40, v41);
  v42 = [v31 sourceChannel];
  if (!v42)
  {
    return swift_unknownObjectRelease();
  }

  v43 = v42;
  __swift_project_boxed_opaque_existential_1((v64 + 24), *(v64 + 48));
  v44 = v50;
  sub_2206EC95C(v43, v45);
  v46 = v56;
  v47 = swift_allocObject();
  *(v47 + 16) = v62;
  v39(v47 + v46, v37, v57);
  sub_22075275C(&qword_281298560, MEMORY[0x277D68340], MEMORY[0x277D68338]);
  v48 = v52;
  sub_220886F1C();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return (*(v51 + 8))(v44, v48);
}

uint64_t sub_22074CD6C(uint64_t a1)
{
  v26 = a1;
  v2 = sub_22088916C();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v25 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22088A02C();
  v5 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22088519C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22088A01C();
  v15 = *(v14 - 8);
  v22 = v14;
  v23 = v15;
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v1 + 16);
  sub_22088518C();
  sub_22088517C();
  (*(v10 + 8))(v13, v9);
  (*(v5 + 104))(v8, *MEMORY[0x277D68F28], v24);
  sub_22074D074(v25);
  sub_22088A00C();
  sub_22075275C(&unk_2812982B0, MEMORY[0x277D68F18], MEMORY[0x277D68F10]);
  v19 = v22;
  sub_2208872CC();
  (*(v23 + 8))(v18, v19);
  return sub_22088725C();
}

uint64_t sub_22074D074@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_220886F7C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088D81C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088D6AC();
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == *MEMORY[0x277D6E830])
  {
    v13 = *MEMORY[0x277D682F8];
    v14 = sub_22088916C();
    return (*(*(v14 - 8) + 104))(a1, v13, v14);
  }

  else if (v12 == *MEMORY[0x277D6E840] || v12 == *MEMORY[0x277D6E848] || v12 == *MEMORY[0x277D6E838])
  {
    sub_22088729C();
    sub_2207526F0(0, &unk_28127E158, MEMORY[0x277CEAE60], MEMORY[0x277D84560]);
    v18 = *(sub_2208871DC() - 8);
    v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_220899360;
    v21 = (v20 + v19);
    *v21 = 0x656C6369747261;
    v21[1] = 0xE700000000000000;
    (*(v18 + 104))();
    v22 = sub_220886F6C();

    (*(v3 + 8))(v6, v2);
    v23 = sub_22088916C();
    if (v22)
    {
      v24 = MEMORY[0x277D682D0];
    }

    else
    {
      v24 = MEMORY[0x277D682C8];
    }

    return (*(*(v23 - 8) + 104))(a1, *v24, v23);
  }

  else
  {
    result = sub_22089267C();
    __break(1u);
  }

  return result;
}

uint64_t sub_22074D430(char *a1, __n128 a2)
{
  sub_2207520F8(0, a2);
  v65 = *(v3 - 1);
  v66 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v63 = v5;
  v64 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v67 = &v60 - v9;
  sub_220751EEC(0, &qword_27CF594E0, MEMORY[0x277D6DA48], v8);
  v11 = v10;
  v72 = *(v10 - 1);
  v69 = *(v72 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v74 = &v60 - v13;
  sub_2207521E0(0);
  v75 = v14;
  v70 = *(v14 - 8);
  v15 = *(v70 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v68 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v71 = &v60 - v19;
  v20 = sub_22088778C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220751D9C(0);
  v26 = v25;
  v27 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088BBEC();
  sub_22088AD8C();
  (*(v27 + 8))(v30, v26);
  v31 = (*(v21 + 88))(v24, v20);
  if (v31 == *MEMORY[0x277D2FB98])
  {
    (*(v21 + 96))(v24, v20);
    v33 = v70;
    v32 = v71;
    v66 = *(v70 + 32);
    v34 = v24;
    v35 = v75;
    v66(v71, v34, v75);
    v36 = v72;
    v37 = v73;
    v67 = v73[2];
    (*(v72 + 16))(v74, a1, v11);
    v38 = v68;
    (*(v33 + 16))(v68, v32, v35);
    v39 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v40 = (v69 + *(v33 + 80) + v39) & ~*(v33 + 80);
    v41 = swift_allocObject();
    (*(v36 + 32))(v41 + v39, v74, v11);
    v42 = v75;
    v66((v41 + v40), v38, v75);
    *(v41 + ((v15 + v40 + 7) & 0xFFFFFFFFFFFFFFF8)) = v37;

    sub_22088726C();

    return (*(v33 + 8))(v71, v42);
  }

  else
  {
    v68 = a1;
    v45 = v72;
    v44 = v73;
    v71 = v11;
    if (v31 == *MEMORY[0x277D2FBA0])
    {
      v46.n128_f64[0] = (*(v21 + 96))(v24, v20);
      sub_2207522C8(0, v46);
      v48 = *(v47 + 48);
      v49 = v65;
      v50 = v66;
      v51 = v67;
      v61 = *(v65 + 32);
      v62 = v48;
      v61(v67, v24, v66);
      __swift_project_boxed_opaque_existential_1(v44 + 9, v44[12]);
      if (sub_220889D0C())
      {
        v73 = v44[2];
        v52 = v51;
        v53 = v45;
        v54 = *(v45 + 16);
        v55 = v71;
        v54(v74, v68, v71);
        v56 = v64;
        (*(v49 + 16))(v64, v52, v50);
        v57 = (*(v53 + 80) + 16) & ~*(v53 + 80);
        v58 = (v69 + *(v49 + 80) + v57) & ~*(v49 + 80);
        v59 = swift_allocObject();
        (*(v53 + 32))(v59 + v57, v74, v55);
        v61((v59 + v58), v56, v50);
        sub_22088726C();

        (*(v49 + 8))(v67, v50);
      }

      else
      {
        (*(v49 + 8))(v51, v50);
      }

      return (*(v70 + 8))(&v24[v62], v75);
    }

    else
    {
      return (*(v21 + 8))(v24, v20);
    }
  }
}

uint64_t sub_22074DB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v176 = a4;
  v216 = a3;
  v240 = a1;
  v196 = sub_22088516C();
  v195 = *(v196 - 8);
  MEMORY[0x28223BE20](v196, v5);
  v194 = &v169 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_22088776C();
  v190 = *(v191 - 8);
  MEMORY[0x28223BE20](v191, v7);
  v187 = &v169 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_22088FFFC();
  v188 = *(v189 - 8);
  MEMORY[0x28223BE20](v189, v9);
  v184 = &v169 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_22088FEFC();
  v185 = *(v186 - 8);
  MEMORY[0x28223BE20](v186, v11);
  v183 = &v169 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_22088A04C();
  v192 = *(v193 - 8);
  MEMORY[0x28223BE20](v193, v13);
  v215 = &v169 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_22088A10C();
  v171 = *(v172 - 8);
  MEMORY[0x28223BE20](v172, v15);
  v170 = &v169 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_2208891DC();
  v174 = *(v175 - 8);
  MEMORY[0x28223BE20](v175, v17);
  v173 = &v169 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = sub_2208895EC();
  v202 = *(v203 - 8);
  MEMORY[0x28223BE20](v203, v19);
  v201 = &v169 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22089011C();
  v200 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21, v22);
  v199 = &v169 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220751E78(0, v23);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v213 = &v169 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28, v29);
  v232 = &v169 - v31;
  sub_220751EEC(0, &qword_27CF58C50, MEMORY[0x277D6D710], v30);
  v217 = v32;
  v225 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v33);
  v182 = &v169 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v36);
  v197 = &v169 - v37;
  sub_2207526F0(0, &qword_281297500, MEMORY[0x277D6E740], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v38 - 8, v39);
  v212 = &v169 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41, v42);
  v211 = (&v169 - v43);
  v44 = sub_22088A0DC();
  v45 = *(v44 - 8);
  v223 = v44;
  v224 = v45;
  MEMORY[0x28223BE20](v44, v46);
  v214 = &v169 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48, v49);
  v198 = &v169 - v50;
  v208 = sub_2208899AC();
  v207 = *(v208 - 8);
  MEMORY[0x28223BE20](v208, v51);
  v206 = &v169 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220751D9C(0);
  v235 = v53;
  v54 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v55);
  v205 = &v169 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57, v58);
  v210 = &v169 - v59;
  v62 = MEMORY[0x28223BE20](v60, v61);
  v64 = &v169 - v63;
  sub_220751EEC(0, &qword_27CF58C60, MEMORY[0x277D6EC60], v62);
  v66 = v65;
  v67 = *(v65 - 8);
  MEMORY[0x28223BE20](v65, v68);
  v204 = &v169 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70, v71);
  v209 = &v169 - v72;
  MEMORY[0x28223BE20](v73, v74);
  v76 = &v169 - v75;
  v233 = sub_22088971C();
  v77 = *(v233 - 1);
  v79 = MEMORY[0x28223BE20](v233, v78);
  v81 = &v169 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220751EEC(0, &qword_27CF594E0, MEMORY[0x277D6DA48], v79);
  v83 = v82;
  sub_22088BC0C();
  v226 = v83;
  v218 = a2;
  sub_22088BBEC();
  v84 = sub_22075275C(&qword_27CF594B0, MEMORY[0x277D2FBA8], MEMORY[0x277D2FB88]);
  v227 = v66;
  result = sub_22088E7FC();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v181 = v21;
  sub_22088970C();
  v86 = *(v54 + 8);
  v222 = v54 + 8;
  v231 = v86;
  v86(v64, v235);
  v87 = *(v67 + 8);
  v221 = v67 + 8;
  v220 = v87;
  v87(v76, v227);
  sub_2207526F0(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v89 = v88;
  v90 = sub_220886F8C();
  v91 = *(v90 - 8);
  v219 = v84;
  v92 = v91;
  v93 = *(v91 + 80);
  v94 = (v93 + 32) & ~v93;
  v239 = *(v91 + 72);
  v234 = v93;
  v229 = v89;
  v95 = swift_allocObject();
  v237 = xmmword_220899360;
  *(v95 + 16) = xmmword_220899360;
  v96 = *MEMORY[0x277CEAD18];
  v97 = *(v92 + 104);
  v228 = v94;
  v98 = v95 + v94;
  v99 = v96;
  v230 = v90;
  v236 = v92 + 104;
  v97(v98, v96, v90);
  v100 = v97;
  sub_22075275C(&qword_281298470, MEMORY[0x277D68720], MEMORY[0x277D68718]);
  v238 = "articleFooterContext";
  v101 = v233;
  sub_220886F1C();

  (*(v77 + 8))(v81, v101);
  sub_22088BC0C();
  sub_22088BBEC();
  result = sub_22088E80C();
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v102 = v206;
  sub_22088999C();
  v231(v64, v235);
  v103 = v227;
  v220(v76, v227);
  v104 = v228;
  v105 = swift_allocObject();
  *(v105 + 16) = v237;
  LODWORD(v219) = v99;
  v233 = v100;
  v100(v105 + v104, v99, v230);
  sub_22075275C(&qword_2812983F0, MEMORY[0x277D68928], MEMORY[0x277D68920]);
  v106 = v208;
  sub_220886F1C();

  v207[1](v102, v106);
  v107 = v209;
  sub_22088BC0C();
  v108 = v210;
  sub_22088BBEC();
  v109 = sub_22088D5BC();
  v110 = *(v109 - 8);
  v111 = *(v110 + 56);
  v112 = v211;
  v208 = v109;
  v207 = v111;
  v206 = (v110 + 56);
  (v111)(v211, 1, 1);
  sub_22088AD4C();
  v113 = v232;
  sub_22088E76C();

  v114 = v225;
  v115 = *(v225 + 48);
  v116 = v217;
  v180 = v225 + 48;
  v179 = v115;
  result = v115(v113, 1, v217);
  if (result == 1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v117 = *(v114 + 32);
  v118 = v197;
  v178 = v114 + 32;
  v177 = v117;
  v117(v197, v113, v116);
  v119 = v198;
  sub_22073BD40(v118, v112, v198);
  v120 = *(v114 + 8);
  v225 = v114 + 8;
  v197 = v120;
  (v120)(v118, v116);
  sub_220751FE0(v112);
  v231(v108, v235);
  v220(v107, v103);
  v121 = v228;
  v122 = swift_allocObject();
  *(v122 + 16) = v237;
  v123 = v219;
  v124 = v230;
  (v233)(v122 + v121, v219);
  v125 = sub_22075275C(&unk_281298290, MEMORY[0x277D68FD8], MEMORY[0x277D68FD0]);
  v126 = v223;
  v210 = v125;
  sub_220886F1C();

  v127 = *(v224 + 8);
  v224 += 8;
  v211 = v127;
  v127(v119, v126);
  sub_2207521E0(0);
  v128 = v199;
  v209 = v129;
  sub_22088FF6C();
  v130 = sub_2208900FC();
  (*(v200 + 8))(v128, v181);
  swift_getObjectType();
  v131 = v201;
  sub_2206F61F0(v201);
  v132 = swift_allocObject();
  *(v132 + 16) = v237;
  (v233)(v132 + v121, v123, v124);
  sub_22075275C(&qword_2812984B0, MEMORY[0x277D686A0], MEMORY[0x277D68698]);
  v133 = v203;
  sub_220886F1C();

  (*(v202 + 8))(v131, v133);
  v232 = v130;
  v134 = [v130 sourceChannel];
  if (v134)
  {
    v135 = v134;
    __swift_project_boxed_opaque_existential_1((v176 + 24), *(v176 + 48));
    v136 = v173;
    sub_2206EC95C(v135, v137);
    v138 = swift_allocObject();
    *(v138 + 16) = v237;
    (v233)(v138 + v121, v123, v124);
    sub_22075275C(&qword_281298560, MEMORY[0x277D68340], MEMORY[0x277D68338]);
    v139 = v175;
    sub_220886F1C();
    swift_unknownObjectRelease();

    (*(v174 + 8))(v136, v139);
  }

  v140 = [v232 respondsToSelector_];
  v141 = v213;
  v142 = v212;
  v143 = v205;
  v144 = v204;
  v145 = v231;
  if (v140)
  {
    v146 = [v232 parentIssue];
    if (v146)
    {
      v147 = v146;
      v148 = [v146 identifier];
      sub_22089136C();

      v149 = v170;
      v145 = v231;
      sub_22088A0FC();
      v150 = v228;
      v151 = swift_allocObject();
      *(v151 + 16) = v237;
      (v233)(v151 + v150, v219, v230);
      sub_22075275C(&qword_281298280, MEMORY[0x277D69030], MEMORY[0x277D69028]);
      v152 = v172;
      sub_220886F1C();

      v153 = v149;
      v142 = v212;
      v154 = v152;
      v141 = v213;
      (*(v171 + 8))(v153, v154);
    }
  }

  sub_22088BC0C();
  sub_22088BBEC();
  (v207)(v142, 1, 1, v208);
  v155 = v235;
  sub_22088AD4C();
  v156 = v144;
  v157 = v227;
  sub_22088E76C();

  v158 = v217;
  result = v179(v141, 1, v217);
  if (result != 1)
  {
    v159 = v182;
    v177(v182, v141, v158);
    sub_22073BD40(v159, v142, v214);
    (v197)(v159, v158);
    sub_220751FE0(v142);
    v145(v143, v155);
    v220(v156, v157);
    v160 = v228;
    v161 = swift_allocObject();
    *(v161 + 16) = v237;
    (v233)(v161 + v160, v219, v230);
    sub_220886F1C();

    v162 = v184;
    sub_22088FF7C();
    v163 = v187;
    sub_22088FF8C();
    sub_22088775C();
    (*(v190 + 8))(v163, v191);
    v164 = v183;
    sub_22088FFEC();
    (*(v188 + 8))(v162, v189);
    sub_220605740();
    (*(v185 + 8))(v164, v186);
    sub_22075275C(&unk_2812982A0, MEMORY[0x277D68F38], MEMORY[0x277D68F30]);
    v165 = v193;
    sub_220886F1C();
    sub_220889D5C();
    v166 = v194;
    sub_22088BC1C();
    sub_22075275C(&qword_281298338, MEMORY[0x277D68C90], MEMORY[0x277D68C88]);
    sub_220886ECC();
    v167 = *(v195 + 8);
    v168 = v196;
    v167(v166, v196);
    sub_22088BBFC();
    sub_220886EDC();
    swift_unknownObjectRelease();
    v167(v166, v168);
    (*(v192 + 8))(v215, v165);
    return v211(v214, v223);
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_22074F4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v161 = a3;
  v169 = a1;
  v129 = sub_22088516C();
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129, v4);
  v127 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_22088954C();
  v126 = *(v158 - 8);
  MEMORY[0x28223BE20](v158, v6);
  v157 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_220889FFC();
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123, v8);
  v121 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_22088909C();
  v125 = *(v156 - 8);
  MEMORY[0x28223BE20](v156, v10);
  v154 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_22088918C();
  v124 = *(v155 - 8);
  v13 = MEMORY[0x28223BE20](v155, v12);
  v153 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220751E78(0, v13);
  v17 = MEMORY[0x28223BE20](v15 - 8, v16);
  v139 = &v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220751EEC(0, &qword_27CF58C50, MEMORY[0x277D6D710], v17);
  v140 = v19;
  v138 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v20);
  v119 = &v115 - v21;
  sub_2207526F0(0, &qword_281297500, MEMORY[0x277D6E740], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v137 = &v115 - v24;
  v152 = sub_22088A0DC();
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152, v25);
  v120 = &v115 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28);
  v150 = &v115 - v29;
  v30 = sub_2208895EC();
  v134 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v31);
  v133 = &v115 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_22088EF8C();
  v166 = *(v160 - 8);
  MEMORY[0x28223BE20](v160, v33);
  v159 = &v115 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_2208899AC();
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132, v35);
  v130 = &v115 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220751D9C(0);
  v170 = v37;
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v39);
  v136 = &v115 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41, v42);
  v45 = &v115 - v44;
  sub_220751EEC(0, &qword_27CF58C60, MEMORY[0x277D6EC60], v43);
  v47 = v46;
  v48 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v49);
  v135 = &v115 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51, v52);
  v54 = &v115 - v53;
  v141 = sub_22088971C();
  v55 = *(v141 - 8);
  v57 = MEMORY[0x28223BE20](v141, v56);
  v59 = &v115 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220751EEC(0, &qword_27CF594E0, MEMORY[0x277D6DA48], v57);
  v61 = v60;
  sub_22088BC0C();
  v167 = v61;
  v168 = a2;
  sub_22088BBEC();
  v62 = sub_22075275C(&qword_27CF594B0, MEMORY[0x277D2FBA8], MEMORY[0x277D2FB88]);
  result = sub_22088E7FC();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v117 = v30;
  sub_22088970C();
  v146 = *(v38 + 8);
  v144 = v38 + 8;
  v146(v45, v170);
  v64 = *(v48 + 8);
  v147 = v48 + 8;
  v145 = v64;
  v64(v54, v47);
  sub_2207526F0(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v66 = v65;
  v67 = sub_220886F8C();
  v68 = *(v67 - 8);
  v118 = v62;
  v69 = v68;
  v70 = v47;
  v71 = (*(v69 + 80) + 32) & ~*(v69 + 80);
  v72 = v71 + *(v68 + 72);
  v148 = *(v68 + 80);
  v162 = v72;
  v163 = v66;
  v73 = swift_allocObject();
  v171 = xmmword_220899360;
  *(v73 + 16) = xmmword_220899360;
  v74 = *MEMORY[0x277CEAD18];
  v75 = *(v69 + 104);
  v149 = v71;
  v172 = v74;
  v164 = v67;
  v165 = v69 + 104;
  v75(v73 + v71);
  v76 = v75;
  sub_22075275C(&qword_281298470, MEMORY[0x277D68720], MEMORY[0x277D68718]);
  v77 = v141;
  sub_220886F1C();

  (*(v55 + 8))(v59, v77);
  sub_22088BC0C();
  sub_22088BBEC();
  result = sub_22088E80C();
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v142 = v76;
  v78 = v76;
  v79 = v130;
  sub_22088999C();
  v143 = "articleFooterContext";
  v146(v45, v170);
  v116 = v70;
  v145(v54, v70);
  v80 = swift_allocObject();
  *(v80 + 16) = v171;
  v81 = v149;
  v82 = v164;
  (v78)(v80 + v149, v172, v164);
  sub_22075275C(&qword_2812983F0, MEMORY[0x277D68928], MEMORY[0x277D68920]);
  v83 = v132;
  sub_220886F1C();

  v84.n128_f64[0] = v131[1](v79, v83);
  sub_2207520F8(0, v84);
  v85 = v159;
  v132 = v86;
  sub_22088FF6C();
  v87 = sub_22088EF7C();
  v88 = *(v166 + 8);
  v166 += 8;
  v131 = v88;
  (v88)(v85, v160);
  swift_getObjectType();
  v89 = v133;
  v141 = v87;
  sub_2206F61F0(v133);
  v90 = swift_allocObject();
  *(v90 + 16) = v171;
  v91 = v116;
  (v142)(v90 + v81, v172, v82);
  sub_22075275C(&qword_2812984B0, MEMORY[0x277D686A0], MEMORY[0x277D68698]);
  v92 = v170;
  v93 = v117;
  sub_220886F1C();

  (*(v134 + 8))(v89, v93);
  v94 = v135;
  sub_22088BC0C();
  v95 = v136;
  sub_22088BBEC();
  v96 = sub_22088D5BC();
  v97 = v137;
  (*(*(v96 - 8) + 56))(v137, 1, 1, v96);
  sub_22088AD4C();
  v98 = v139;
  v99 = v91;
  sub_22088E76C();
  v100 = v98;

  v101 = v138;
  v102 = v140;
  result = (*(v138 + 48))(v100, 1, v140);
  if (result != 1)
  {
    v103 = v119;
    (*(v101 + 32))(v119, v100, v102);
    v104 = v150;
    sub_22073BD40(v103, v97, v150);
    (*(v101 + 8))(v103, v102);
    sub_220751FE0(v97);
    v146(v95, v92);
    v145(v94, v99);
    v105 = swift_allocObject();
    *(v105 + 16) = v171;
    v106 = v149;
    v107 = v142;
    (v142)(v105 + v149, v172, v164);
    sub_22075275C(&unk_281298290, MEMORY[0x277D68FD8], MEMORY[0x277D68FD0]);
    v108 = v152;
    sub_220886F1C();

    (*(v151 + 16))(v120, v104, v108);
    sub_22088917C();
    sub_22075275C(qword_27CF59148, MEMORY[0x277D68310], MEMORY[0x277D68308]);
    sub_220886F1C();
    (*(v122 + 104))(v121, *MEMORY[0x277D68EE0], v123);
    sub_22088908C();
    sub_22075275C(&qword_281298590, MEMORY[0x277D68210], MEMORY[0x277D68208]);
    sub_220886F1C();
    v109 = v159;
    v110 = sub_22088FF6C();
    MEMORY[0x223D87110](v110);
    (v131)(v109, v160);
    sub_22088953C();
    v111 = swift_allocObject();
    *(v111 + 16) = v171;
    v107(v111 + v106, v172, v164);
    sub_22075275C(&qword_2812984C0, MEMORY[0x277D68600], MEMORY[0x277D685F8]);
    sub_220886F1C();

    sub_220889C7C();
    v112 = v127;
    sub_22088BC1C();
    sub_22075275C(&qword_27CF59508, MEMORY[0x277D68BA0], MEMORY[0x277D68B98]);
    sub_220886ECC();
    v113 = *(v128 + 8);
    v114 = v129;
    v113(v112, v129);
    sub_22088BBFC();
    sub_220886EDC();
    swift_unknownObjectRelease();
    v113(v112, v114);
    (*(v126 + 8))(v157, v158);
    (*(v125 + 8))(v154, v156);
    (*(v124 + 8))(v153, v155);
    return (*(v151 + 8))(v150, v152);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_22075089C(uint64_t a1, uint64_t a2)
{
  v43 = a1;
  v3 = sub_22088516C();
  v44 = *(v3 - 8);
  v45 = v3;
  v5 = MEMORY[0x28223BE20](v3, v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220751EEC(0, &qword_27CF58C50, MEMORY[0x277D6D710], v5);
  v39 = v8;
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v38 - v12;
  sub_220751EEC(0, &qword_27CF58C60, MEMORY[0x277D6EC60], v11);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v38 - v18;
  v20 = sub_22088A0DC();
  v21 = *(v20 - 8);
  v41 = v20;
  v42 = v21;
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207526F0(0, &qword_281297500, MEMORY[0x277D6E740], MEMORY[0x277D83D88]);
  v27 = MEMORY[0x28223BE20](v25 - 8, v26);
  v29 = &v38 - v28;
  sub_220751EEC(0, &qword_27CF594B8, MEMORY[0x277D6E3A0], v27);
  v40 = v29;
  v38 = a2;
  sub_22088CDFC();
  sub_22088CDDC();
  sub_22088CDCC();
  sub_22073BD40(v13, v29, v24);
  (*(v9 + 8))(v13, v39);
  (*(v16 + 8))(v19, v15);
  sub_2207526F0(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v30 = sub_220886F8C();
  v31 = *(v30 - 8);
  v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_220899360;
  (*(v31 + 104))(v33 + v32, *MEMORY[0x277CEAD10], v30);
  sub_22075275C(&unk_281298290, MEMORY[0x277D68FD8], MEMORY[0x277D68FD0]);
  v34 = v41;
  sub_220886F1C();

  (*(v42 + 8))(v24, v34);
  sub_220889AEC();
  sub_22088CDEC();
  sub_22075275C(&qword_27CF594C0, MEMORY[0x277D68A50], MEMORY[0x277D68A48]);
  sub_220886ECC();
  v35 = v45;
  v36 = *(v44 + 8);
  v36(v7, v45);
  sub_22088CDBC();
  sub_220886EDC();
  v36(v7, v35);
  return sub_220751FE0(v40);
}

uint64_t sub_220750E40(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v60 = a2;
  v61 = a3;
  v62 = a1;
  v4 = sub_2208899AC();
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v50 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088971C();
  v54 = *(v7 - 8);
  v55 = v7;
  v9 = MEMORY[0x28223BE20](v7, v8);
  v53 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220751E78(0, v9);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v59 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220751EEC(0, &qword_27CF58C50, MEMORY[0x277D6D710], v13);
  v58 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v49 - v18;
  sub_2207526F0(0, &qword_281297500, MEMORY[0x277D6E740], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v23 = &v49 - v22;
  v24 = sub_22088A0DC();
  v56 = *(v24 - 8);
  v57 = v24;
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_220889FFC();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_220889FEC();
  v34 = *(v33 - 8);
  v36 = MEMORY[0x28223BE20](v33, v35);
  v38 = &v49 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 104))(v32, *MEMORY[0x277D68EE0], v28, v36);
  sub_220889FCC();
  sub_22075275C(&qword_2812982D8, MEMORY[0x277D68ED8], MEMORY[0x277D68ED0]);
  sub_220886F1C();
  (*(v34 + 8))(v38, v33);
  v39 = sub_22088D5BC();
  (*(*(v39 - 8) + 56))(v23, 1, 1, v39);
  sub_220751D9C(0);
  sub_22088AD4C();
  sub_220751EEC(0, &qword_27CF58C60, MEMORY[0x277D6EC60], v40);
  v41 = v59;
  sub_22088E76C();
  v42 = v58;

  result = (*(v16 + 48))(v41, 1, v42);
  if (result == 1)
  {
    goto LABEL_11;
  }

  (*(v16 + 32))(v19, v41, v42);
  sub_22073BD40(v19, v23, v27);
  (*(v16 + 8))(v19, v42);
  sub_220751FE0(v23);
  sub_22075275C(&unk_281298290, MEMORY[0x277D68FD8], MEMORY[0x277D68FD0]);
  v44 = v57;
  sub_220886F1C();
  (*(v56 + 8))(v27, v44);
  sub_22075275C(&qword_27CF594B0, MEMORY[0x277D2FBA8], MEMORY[0x277D2FB88]);
  result = sub_22088E7FC();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v45 = v53;
  sub_22088970C();
  sub_22075275C(&qword_281298470, MEMORY[0x277D68720], MEMORY[0x277D68718]);
  v46 = v55;
  sub_220886F1C();
  (*(v54 + 8))(v45, v46);
  result = sub_22088E80C();
  if (result >= 0xFFFFFFFF80000000)
  {
    if (result <= 0x7FFFFFFF)
    {
      v47 = v50;
      sub_22088999C();
      sub_22075275C(&qword_2812983F0, MEMORY[0x277D68928], MEMORY[0x277D68920]);
      v48 = v52;
      sub_220886F1C();
      return (*(v51 + 8))(v47, v48);
    }

    goto LABEL_10;
  }

LABEL_9:
  __break(1u);
LABEL_10:
  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_22075165C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return swift_deallocClassInstance();
}

double sub_2207516D0()
{

  sub_22088726C();

  return result;
}

uint64_t sub_220751750()
{
  v0 = sub_22088516C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2208896FC();
  sub_22088CE2C();
  sub_22075275C(&qword_281298478, MEMORY[0x277D68710], MEMORY[0x277D68708]);
  sub_22088728C();
  v5 = *(v1 + 8);
  v5(v4, v0);
  sub_22088CE1C();
  sub_2208872AC();
  return (v5)(v4, v0);
}

double sub_2207518FC(uint64_t a1, __n128 a2)
{
  sub_220751EEC(0, &qword_27CF594B8, MEMORY[0x277D6E3A0], a2);
  v4 = v3;
  v5 = *(v3 - 8);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v13 - v8;
  (*(v5 + 16))(&v13 - v8, a1, v4, v7);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v9, v4);
  sub_22088726C();

  return result;
}

uint64_t sub_220751A58(__n128 a1)
{
  v1 = sub_2208871DC();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = (&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = 0x656E696C64616568;
  v6[1] = 0xE800000000000000;
  (*(v2 + 104))(v6, *MEMORY[0x277CEAE48], v1, v4);
  sub_2208872DC();
  return (*(v2 + 8))(v6, v1);
}

double sub_220751B68(uint64_t a1, uint64_t a2, __n128 a3)
{
  v24 = a1;
  sub_220751D9C(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v4, v8);
  v10 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220751EEC(0, &qword_27CF58C60, MEMORY[0x277D6EC60], v9);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v11, v15);
  v18 = &v23 - v17;
  (*(v13 + 16))(&v23 - v17, a2, v12, v16);
  (*(v6 + 16))(v10, v24, v5);
  v19 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v20 = (v14 + *(v6 + 80) + v19) & ~*(v6 + 80);
  v21 = swift_allocObject();
  (*(v13 + 32))(v21 + v19, v18, v12);
  (*(v6 + 32))(v21 + v20, v10, v5);
  sub_22088726C();

  return result;
}

void sub_220751D9C(uint64_t a1)
{
  if (!qword_27CF594A0)
  {
    sub_22088778C();
    sub_22075275C(&qword_27CF58C58, MEMORY[0x277D2FBA8], MEMORY[0x277D2FB90]);
    v1 = sub_22088ADAC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF594A0);
    }
  }
}

void sub_220751E78(uint64_t a1, __n128 a2)
{
  if (!qword_27CF594A8)
  {
    sub_220751EEC(255, &qword_27CF58C50, MEMORY[0x277D6D710], a2);
    v2 = sub_22089230C();
    if (!v3)
    {
      atomic_store(v2, &qword_27CF594A8);
    }
  }
}

void sub_220751EEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), __n128 a4)
{
  if (!*a2)
  {
    v9[0] = sub_220887F2C();
    v9[1] = sub_22088778C();
    v9[2] = sub_22075275C(&unk_27CF59390, MEMORY[0x277D301D0], MEMORY[0x277D301A8]);
    v9[3] = sub_22075275C(&qword_27CF58C58, MEMORY[0x277D2FBA8], MEMORY[0x277D2FB90]);
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220751FE0(uint64_t a1)
{
  sub_2207526F0(0, &qword_281297500, MEMORY[0x277D6E740], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22075206C(uint64_t a1, __n128 a2)
{
  sub_220751EEC(0, &qword_27CF594B8, MEMORY[0x277D6E3A0], a2);
  v5 = v2 + ((*(*(v4 - 8) + 80) + 16) & ~*(*(v4 - 8) + 80));

  return sub_22075089C(a1, v5);
}

void sub_2207520F8(uint64_t a1, __n128 a2)
{
  if (!qword_27CF594C8)
  {
    sub_22088EF8C();
    sub_22088776C();
    v2 = MEMORY[0x277D2D6B0];
    sub_22075275C(&qword_27CF594D0, MEMORY[0x277D2D6B0], MEMORY[0x277D2D6B8]);
    sub_22075275C(&qword_27CF594D8, v2, MEMORY[0x277D2D698]);
    v3 = sub_22088FFBC();
    if (!v4)
    {
      atomic_store(v3, &qword_27CF594C8);
    }
  }
}

void sub_2207521E0(uint64_t a1)
{
  if (!qword_27CF594E8)
  {
    sub_22089011C();
    sub_22088776C();
    v1 = MEMORY[0x277D33058];
    sub_22075275C(&qword_27CF594F0, MEMORY[0x277D33058], MEMORY[0x277D33060]);
    sub_22075275C(&qword_27CF594F8, v1, MEMORY[0x277D33050]);
    v2 = sub_22088FFBC();
    if (!v3)
    {
      atomic_store(v2, &qword_27CF594E8);
    }
  }
}

void sub_2207522C8(uint64_t a1, __n128 a2)
{
  if (!qword_27CF59500)
  {
    sub_2207520F8(255, a2);
    sub_2207521E0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF59500);
    }
  }
}

uint64_t objectdestroyTm_12(unint64_t *a1, uint64_t (*a2)(uint64_t, void *), uint64_t (*a3)(void), __n128 a4)
{
  sub_220751EEC(0, a1, a2, a4);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = a3(0);
  v12 = *(v11 - 8);
  v13 = (v9 + v10 + *(v12 + 80)) & ~*(v12 + 80);
  (*(v8 + 8))(v4 + v9, v7);
  (*(v12 + 8))(v4 + v13, v11);

  return swift_deallocObject();
}

uint64_t sub_2207524DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, unint64_t, uint64_t), __n128 a6)
{
  sub_220751EEC(0, a2, a3, a6);
  v10 = (*(*(v9 - 8) + 80) + 16) & ~*(*(v9 - 8) + 80);
  v11 = *(*(v9 - 8) + 64);
  v12 = *(a4(0) - 8);
  v13 = v6 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80));

  return a5(a1, v6 + v10, v13);
}

uint64_t sub_2207525D4(uint64_t a1, __n128 a2)
{
  sub_220751EEC(0, &qword_27CF594E0, MEMORY[0x277D6DA48], a2);
  v5 = (*(*(v4 - 8) + 80) + 16) & ~*(*(v4 - 8) + 80);
  v6 = *(*(v4 - 8) + 64);
  sub_2207521E0(0);
  v8 = *(v7 - 8);
  v9 = (v5 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_22074DB00(a1, v2 + v5, v2 + v9, v10);
}

void sub_2207526F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22075275C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2207527A4(uint64_t a1)
{
  v28 = a1;
  v3 = *v1;
  v4 = v1[5];
  v32 = v1[6];
  v33 = v3;
  v5 = __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  v31 = *(v4 - 8);
  v6 = *(v31 + 64);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v30 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v28 - v30;
  (*(*(v32 + 8) + 8))(a1, v4, v8);
  v10 = v1[10];
  v29 = v1[11];
  v11 = v29;
  v12 = __swift_project_boxed_opaque_existential_1(v1 + 7, v10);
  v13 = *(v10 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v17 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = (*(*(v11 + 8) + 8))(v28, v10, v16);
  v20 = MEMORY[0x28223BE20](v18, v19);
  v21 = v31;
  v22 = &v28 - v30;
  v23 = (*(v31 + 16))(&v28 - v30, v9, v4, v20);
  v25 = MEMORY[0x28223BE20](v23, v24);
  (*(v13 + 16))(&v28 - v17, &v28 - v17, v10, v25);
  v26 = sub_2204E6820(v22, &v28 - v17, v33, v4, v10, v32, v29);
  (*(v13 + 8))(&v28 - v17, v10);
  (*(v21 + 8))(v9, v4);
  return v26;
}

id sub_220752A48(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
  v6 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v7 = sub_22089132C();
  v8 = [v6 initWithString_];

  [v5 appendAttributedString_];
  if (a3)
  {
    v9 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v10 = a3;
    v11 = sub_22089132C();
    v12 = [v9 initWithString_];

    [v5 appendAttributedString_];
    type metadata accessor for IconTextAttachment();
    v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v13 setImage_];
    v14 = &v13[OBJC_IVAR____TtC8StocksUI18IconTextAttachment_baselineAdjustment];
    *v14 = 0x3FF0000000000000;
    v14[8] = 0;
    v15 = &v13[OBJC_IVAR____TtC8StocksUI18IconTextAttachment_imageHeightOverride];
    *v15 = 0x402A000000000000;
    v15[8] = 0;
    v16 = [objc_opt_self() attributedStringWithAttachment_];
    [v5 appendAttributedString_];
  }

  sub_2204A5DF0(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899360;
  v18 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v19 = v3[5];
  v20 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v19);
  v21 = *(v20 + 16);
  v22 = *(v21 + 216);
  v23 = v18;
  v24 = v22(v19, v21);
  *(inited + 64) = sub_22044D56C(0, &qword_28127E530, 0x277D75348);
  *(inited + 40) = v24;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2205613E0(inited + 32);
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v25 = sub_22089125C();

  v26 = v5;
  [v26 addAttributes:v25 range:{0, objc_msgSend(v26, sel_length)}];

  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_220899360;
  v28 = *MEMORY[0x277D740A8];
  *(v27 + 32) = *MEMORY[0x277D740A8];
  v29 = v28;
  sub_22088F0DC();
  v30 = sub_22044D56C(0, &qword_28127E570, 0x277D74300);
  v31 = sub_220891F2C();
  *(v27 + 64) = v30;
  *(v27 + 40) = v31;
  sub_2204A5EAC(v27);
  swift_setDeallocating();
  sub_2205613E0(v27 + 32);
  v32 = sub_22089125C();

  [v26 addAttributes:v32 range:{0, objc_msgSend(v26, sel_length)}];

  return v26;
}

uint64_t sub_220752E4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2207527A4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_220752E78()
{
  v1 = OBJC_IVAR____TtC8StocksUI31StubStockForYouFeedGroupEmitter_config;
  sub_220452A8C(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StubStockForYouFeedGroupEmitter(uint64_t a1)
{
  result = qword_27CF59518;
  if (!qword_27CF59518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220752F68(uint64_t a1)
{
  sub_220452A8C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_220752FF8()
{
  sub_22052BD60(0, &qword_28127E198, MEMORY[0x277D69810], MEMORY[0x277D84560]);
  sub_22088685C();
  *(swift_allocObject() + 16) = xmmword_22089EF70;
  sub_2208867DC();
  sub_2208867EC();
  sub_2208867FC();
  sub_22088682C();
  sub_22052BD60(0, &qword_2812985E0, sub_22055F87C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_220888ECC();
}

uint64_t sub_220753164(uint64_t a1)
{
  sub_2205028F4(&qword_27CF59538, type metadata accessor for StubStockForYouFeedGroupEmitter, &unk_2208B14F8);

  return sub_22088882C();
}

uint64_t sub_220753338(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockForYouFeedGroup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22075339C()
{
  v1 = v0;
  v2 = type metadata accessor for CuratedForYouFeedGroup(0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ForYouFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FB25C(v1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) >= 2)
    {
      sub_2204FC284(v9, type metadata accessor for ForYouFeedSectionDescriptor);
    }

    goto LABEL_7;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_2204B3C8C(v9, &qword_281296C60, MEMORY[0x277D31C50]);
    v14 = 1;
    return v14 & 1;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_22045849C(0);
    v12 = *(v11 + 48);
    sub_2204B3C8C(&v9[*(v11 + 64)], &qword_281296C60, MEMORY[0x277D31C50]);
    sub_2204FC284(&v9[v12], type metadata accessor for StockViewModel);
    v13 = sub_22088685C();
    (*(*(v13 - 8) + 8))(v9, v13);
LABEL_7:
    v14 = 0;
    return v14 & 1;
  }

  sub_220523070(v9, v5, type metadata accessor for CuratedForYouFeedGroup);
  v16 = &v5[*(v2 + 20)];
  if (*v16 == 0x69726F7453706F74 && *(v16 + 1) == 0xEA00000000007365)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_2208928BC();
  }

  sub_2204FC284(v5, type metadata accessor for CuratedForYouFeedGroup);
  return v14 & 1;
}

uint64_t sub_22075360C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ForYouFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FB25C(v2, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) < 2)
    {
      v16 = *MEMORY[0x277D69008];
      v17 = sub_22088A0EC();
      return (*(*(v17 - 8) + 104))(a1, v16, v17);
    }

    v20 = MEMORY[0x277D68FE8];
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v18 = *MEMORY[0x277D68FE0];
      v19 = sub_22088A0EC();
      (*(*(v19 - 8) + 104))(a1, v18, v19);
      return sub_2204B3C8C(v7, &qword_281296C60, MEMORY[0x277D31C50]);
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_22045849C(0);
      v10 = *(v9 + 48);
      v11 = *(v9 + 64);
      v12 = *MEMORY[0x277D68FF0];
      v13 = sub_22088A0EC();
      (*(*(v13 - 8) + 104))(a1, v12, v13);
      sub_2204B3C8C(&v7[v11], &qword_281296C60, MEMORY[0x277D31C50]);
      sub_2204FC284(&v7[v10], type metadata accessor for StockViewModel);
      v14 = sub_22088685C();
      return (*(*(v14 - 8) + 8))(v7, v14);
    }

    v20 = MEMORY[0x277D68FF8];
  }

  v21 = *v20;
  v22 = sub_22088A0EC();
  (*(*(v22 - 8) + 104))(a1, v21, v22);
  return sub_2204FC284(v7, type metadata accessor for ForYouFeedSectionDescriptor);
}

uint64_t sub_2207538C8()
{
  v1 = v0;
  v2 = type metadata accessor for CuratedForYouFeedGroup(0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ForYouFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FB25C(v1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = EnumCaseMultiPayload;
  if (EnumCaseMultiPayload > 2)
  {
    result = 0;
    if ((v11 - 4) < 2)
    {
      return result;
    }

    sub_2204FC284(v9, type metadata accessor for ForYouFeedSectionDescriptor);
    return 0;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_2204B3C8C(v9, &qword_281296C60, MEMORY[0x277D31C50]);
    return 0;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_22045849C(0);
    v13 = *(v12 + 48);
    sub_2204B3C8C(&v9[*(v12 + 64)], &qword_281296C60, MEMORY[0x277D31C50]);
    sub_2204FC284(&v9[v13], type metadata accessor for StockViewModel);
    v14 = sub_22088685C();
    (*(*(v14 - 8) + 8))(v9, v14);
    return 0;
  }

  sub_220523070(v9, v5, type metadata accessor for CuratedForYouFeedGroup);
  v16 = *&v5[*(v2 + 20)];

  sub_2204FC284(v5, type metadata accessor for CuratedForYouFeedGroup);
  return v16;
}

double sub_220753B34(uint64_t a1)
{
  sub_220530500(&qword_281285400, &unk_2208B17D8);

  sub_22088D90C();
  return result;
}

uint64_t sub_220753B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a2;
  v59 = sub_22088516C();
  v6 = *(v59 - 8);
  MEMORY[0x28223BE20](v59, v7);
  v58 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v52 = &v52 - v11;
  MEMORY[0x28223BE20](v12, v13);
  v55 = v3;
  v56 = &v52 - v14;
  sub_22046DA2C(v3 + 56, v63);
  v15 = *(*__swift_project_boxed_opaque_existential_1(v63, v63[3]) + 16);
  v60 = a3;
  v16 = *(*v15 + *MEMORY[0x277D841D0] + 16);
  v17 = (*(*v15 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v15 + v17));
  sub_220754E98(v15 + v16);
  os_unfair_lock_unlock((v15 + v17));
  v18 = __swift_destroy_boxed_opaque_existential_1(v63);
  v20 = *(a1 + 16);
  if (v20)
  {
    v53 = (v6 + 32);
    v57 = MEMORY[0x277D84F90];
    v21 = (a1 + 40);
    v22 = v6;
    while (1)
    {
      v23 = *(v21 - 1);
      v24 = *v21;
      v62 = 0;
      MEMORY[0x28223BE20](v18, v19);
      *(&v52 - 2) = &v62;
      if ((v24 & 0x1000000000000000) == 0)
      {
        if ((v24 & 0x2000000000000000) != 0)
        {
          v63[0] = v23;
          v63[1] = v24 & 0xFFFFFFFFFFFFFFLL;

          if (v23 <= 0x20u && ((1 << v23) & 0x100003E01) != 0)
          {
            goto LABEL_17;
          }

          v27 = _swift_stdlib_strtod_clocale();
          if (!v27)
          {
            goto LABEL_17;
          }

LABEL_21:
          if (!*v27)
          {
            goto LABEL_22;
          }

          goto LABEL_17;
        }

        if ((v23 & 0x1000000000000000) != 0)
        {
          v25 = *((v24 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

          if (v25 <= 0x20 && ((1 << v25) & 0x100003E01) != 0)
          {
            goto LABEL_17;
          }

          v27 = _swift_stdlib_strtod_clocale();
          if (!v27)
          {
            goto LABEL_17;
          }

          goto LABEL_21;
        }
      }

      sub_22089253C();
      if (v61)
      {
LABEL_22:
        v29 = v52;
        sub_2208850EC();

        v30 = *v53;
        (*v53)(v56, v29, v59);
        v31 = v57;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_220587B60(0, *(v31 + 2) + 1, 1, v31);
        }

        v33 = *(v31 + 2);
        v32 = *(v31 + 3);
        if (v33 >= v32 >> 1)
        {
          v31 = sub_220587B60((v32 > 1), v33 + 1, 1, v31);
        }

        *(v31 + 2) = v33 + 1;
        v34 = (*(v22 + 80) + 32) & ~*(v22 + 80);
        v57 = v31;
        v18 = v30(&v31[v34 + *(v22 + 72) * v33], v56, v59);
        goto LABEL_18;
      }

LABEL_17:

LABEL_18:
      v21 += 2;
      if (!--v20)
      {
        goto LABEL_30;
      }
    }
  }

  v57 = MEMORY[0x277D84F90];
  v22 = v6;
LABEL_30:
  v35 = sub_220754234(v54, v57, v55);

  v36 = v35[2];
  if (v36)
  {
    v63[0] = MEMORY[0x277D84F90];
    sub_22048EE54(0, v36, 0);
    v37 = v63[0];
    v39 = *(v22 + 16);
    v38 = v22 + 16;
    v40 = *(v38 + 64);
    v55 = v35;
    v41 = v35 + ((v40 + 32) & ~v40);
    v56 = *(v38 + 56);
    v57 = v39;
    v42 = (v38 - 8);
    do
    {
      v43 = v58;
      v44 = v59;
      (v57)(v58, v41, v59);
      sub_2208850FC();
      v45 = sub_22089185C();
      v47 = v46;
      (*v42)(v43, v44);
      v63[0] = v37;
      v49 = *(v37 + 16);
      v48 = *(v37 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_22048EE54((v48 > 1), v49 + 1, 1);
        v37 = v63[0];
      }

      *(v37 + 16) = v49 + 1;
      v50 = v37 + 16 * v49;
      *(v50 + 32) = v45;
      *(v50 + 40) = v47;
      v41 = &v56[v41];
      --v36;
    }

    while (v36);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v37;
}

uint64_t sub_220754098()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = OBJC_IVAR____TtC8StocksUI27StockChartDescriptorFactory_stock;
  v2 = sub_22088685C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StockChartDescriptorFactory(uint64_t a1)
{
  result = qword_2812880F8;
  if (!qword_2812880F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220754198(uint64_t a1)
{
  result = sub_22088685C();
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

void *sub_220754234(uint64_t a1, char *a2, uint64_t a3)
{
  v79 = a3;
  sub_22044D9F8(0, &qword_281299480, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v71 - v7;
  v77 = sub_2208853CC();
  v75 = *(v77 - 8);
  MEMORY[0x28223BE20](v77, v9);
  v73 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_220884BDC();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76, v11);
  v72 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v71 - v15;
  v17 = sub_22088516C();
  v78 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v71 - v23;
  v25 = sub_2208854FC();
  v26 = *(v25 - 8);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v30 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v30, a1, v25, v28);
  v31 = (*(v26 + 88))(v30, v25);
  if (v31 != *MEMORY[0x277D69120])
  {
    if (v31 == *MEMORY[0x277D69128])
    {
      __swift_project_boxed_opaque_existential_1((v79 + 56), *(v79 + 80));
      v47 = 1;
LABEL_8:
      v48 = 0;
      return sub_220883680(v47, v48, a2);
    }

    if (v31 == *MEMORY[0x277D69138])
    {
      __swift_project_boxed_opaque_existential_1((v79 + 56), *(v79 + 80));
      v47 = 0x8000000000000001;
      v48 = 7;
      return sub_220883680(v47, v48, a2);
    }

    if (v31 == *MEMORY[0x277D69110] || v31 == *MEMORY[0x277D69158])
    {
      __swift_project_boxed_opaque_existential_1((v79 + 56), *(v79 + 80));
      v47 = 2;
      goto LABEL_8;
    }

    if (v31 == *MEMORY[0x277D69100])
    {
      __swift_project_boxed_opaque_existential_1((v79 + 56), *(v79 + 80));
      v47 = 0x8000000000000002;
      v48 = 2;
      return sub_220883680(v47, v48, a2);
    }

    if (v31 == *MEMORY[0x277D69130])
    {
      __swift_project_boxed_opaque_existential_1((v79 + 56), *(v79 + 80));
      v47 = 0x8000000000000002;
      v48 = 4;
      return sub_220883680(v47, v48, a2);
    }

    if (v31 == *MEMORY[0x277D69148])
    {
      __swift_project_boxed_opaque_existential_1((v79 + 56), *(v79 + 80));
      v47 = 0x8000000000000002;
      v48 = 6;
      return sub_220883680(v47, v48, a2);
    }

    if (v31 == *MEMORY[0x277D69150])
    {
      __swift_project_boxed_opaque_existential_1((v79 + 56), *(v79 + 80));
      result = sub_220883680(3, 0, a2);
      if (result[2] < 6uLL)
      {
        return result;
      }

      v57 = v78;
      v58 = result;
      (*(v78 + 16))(v8, result + ((*(v57 + 80) + 32) & ~*(v57 + 80)), v17);
      (*(v57 + 56))(v8, 0, 1, v17);
      result = sub_22047EB44(v8, &qword_281299480, MEMORY[0x277CC9578]);
      v59 = v58[2];
      if (v59)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v80 = v58;
        if (!isUniquelyReferenced_nonNull_native || (v59 - 1) > v58[3] >> 1)
        {
          v58 = sub_220587B60(isUniquelyReferenced_nonNull_native, v59, 1, v58);
          v80 = v58;
        }

        sub_220662D10(0, 1, 0);
        return v58;
      }

      __break(1u);
    }

    else
    {
      if (v31 != *MEMORY[0x277D69140] && v31 != *MEMORY[0x277D69118])
      {
        (*(v26 + 8))(v30, v25);
        return MEMORY[0x277D84F90];
      }

      if (!*(a2 + 2) || (v61 = v73, sub_22088538C(), sub_22044D9F8(0, &qword_28127E1C8, MEMORY[0x277CC99D0], MEMORY[0x277D84560]), v62 = sub_2208853AC(), v63 = *(v62 - 8), v64 = (*(v63 + 80) + 32) & ~*(v63 + 80), v65 = swift_allocObject(), *(v65 + 16) = xmmword_220899360, (*(v63 + 104))(v65 + v64, *MEMORY[0x277CC9988], v62), sub_2207E1070(v65), swift_setDeallocating(), (*(v63 + 8))(v65 + v64, v62), swift_deallocClassInstance(), v66 = v72, sub_22088530C(), , (*(v75 + 8))(v61, v77), v67 = sub_220884B9C(), LOBYTE(v63) = v68, result = (*(v74 + 8))(v66, v76), (v63 & 1) != 0))
      {
        __swift_project_boxed_opaque_existential_1((v79 + 56), *(v79 + 80));
        return sub_220883680(0x8000000000000003, 3, a2);
      }

      v69 = ceilf(v67 / 5.0);
      if ((LODWORD(v69) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        if (v69 > -9.2234e18)
        {
          if (v69 < 9.2234e18)
          {
            if (v69 <= 1)
            {
              v70 = 1;
            }

            else
            {
              v70 = v69;
            }

            __swift_project_boxed_opaque_existential_1((v79 + 56), *(v79 + 80));
            v47 = 0x8000000000000003;
            v48 = v70;
            return sub_220883680(v47, v48, a2);
          }

LABEL_52:
          __break(1u);
          return result;
        }

LABEL_51:
        __break(1u);
        goto LABEL_52;
      }
    }

    __break(1u);
    goto LABEL_51;
  }

  v32 = *(a2 + 2);
  if (!v32)
  {
    return MEMORY[0x277D84F90];
  }

  v33 = v78 + 16;
  v34 = *(v78 + 16);
  v35 = (*(v78 + 80) + 32) & ~*(v78 + 80);
  v72 = a2;
  v36 = &a2[v35];
  v34(v24, &a2[v35], v17);
  v34(v20, &v36[*(v33 + 56) * (v32 - 1)], v17);
  v37 = [objc_opt_self() currentCalendar];
  v38 = v73;
  sub_22088534C();

  sub_22044D9F8(0, &qword_28127E1C8, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
  v39 = sub_2208853AC();
  v40 = *(v39 - 8);
  v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_220899360;
  (*(v40 + 104))(v42 + v41, *MEMORY[0x277CC9980], v39);
  sub_2207E1070(v42);
  swift_setDeallocating();
  (*(v40 + 8))(v42 + v41, v39);
  swift_deallocClassInstance();
  sub_22088530C();

  (*(v75 + 8))(v38, v77);
  v43 = sub_220884B8C();
  LOBYTE(v40) = v44;
  (*(v74 + 8))(v16, v76);
  if (v40)
  {
    v45 = *(v78 + 8);
    v45(v20, v17);
    v45(v24, v17);
    return MEMORY[0x277D84F90];
  }

  v49 = sub_220754DAC(v43);
  v51 = v50;
  __swift_project_boxed_opaque_existential_1((v79 + 56), *(v79 + 80));
  v52 = sub_220883680(v49, v51, v72);
  v53 = v52[2];
  if (v53)
  {
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v80 = v52;
    v55 = v78;
    if (!v54 || (v53 - 1) > v52[3] >> 1)
    {
      v52 = sub_220587B60(v54, v53, 1, v52);
      v80 = v52;
    }

    sub_220662D10(0, 1, 0);
  }

  else
  {
    v55 = v78;
  }

  v56 = *(v55 + 8);
  v56(v20, v17);
  v56(v24, v17);
  return v52;
}

uint64_t sub_220754DAC(uint64_t result)
{
  if (result < 7)
  {
    return 0;
  }

  v1 = ceilf(result / 5.0);
  if (v1 == INFINITY)
  {
    __break(1u);
  }

  else if (v1 > -9.2234e18)
  {
    if (v1 < 9.2234e18)
    {
      return 0x8000000000000000;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

_BYTE *sub_220754E1C@<X0>(_BYTE *result@<X0>, BOOL *a3@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v8 = *result == 0;
    }

    else
    {
      v8 = 0;
    }

    *a3 = v8;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

_BYTE *sub_220754EB4@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

char *sub_220754F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v76 = a2;
  v4 = sub_22088516C();
  v77 = *(v4 - 8);
  v78 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v79 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v80 = &v69 - v9;
  sub_22044D9F8(0, &qword_2812990C0, MEMORY[0x277D697F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v69 - v12;
  v83 = sub_22088676C();
  v81 = *(v83 - 8);
  MEMORY[0x28223BE20](v83, v14);
  v75 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_2208865FC();
  v16 = *(v84 - 8);
  MEMORY[0x28223BE20](v84, v17);
  v74 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v73 = &v69 - v21;
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v69 - v24;
  MEMORY[0x28223BE20](v26, v27);
  v82 = &v69 - v28;
  v29 = sub_2208854FC();
  v30 = *(v29 - 8);
  v32 = MEMORY[0x28223BE20](v29, v31);
  v34 = &v69 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v34, a3, v29, v32);
  v35 = (*(v30 + 88))(v34, v29);
  v36 = *MEMORY[0x277D69120];
  (*(v30 + 8))(v34, v29);
  v37 = sub_22088662C();
  v38 = v37;
  if (v35 != v36)
  {
    return v38;
  }

  v39 = *(v37 + 16);
  if (!v39)
  {

    return sub_22088662C();
  }

  v40 = v16;
  v72 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v71 = *(v16 + 72);
  v41 = v84;
  (*(v16 + 16))(v25, v37 + v72 + v71 * (v39 - 1), v84);

  v42 = v82;
  v70 = *(v16 + 32);
  v70(v82, v25, v41);
  v38 = sub_22088662C();
  sub_2204B1CA8(v76, v13);
  v43 = v81;
  v44 = v83;
  if ((*(v81 + 48))(v13, 1, v83) == 1)
  {
    sub_22047EB44(v13, &qword_2812990C0, MEMORY[0x277D697F8]);
    v45 = v78;
    goto LABEL_19;
  }

  v76 = v16 + 32;
  v46 = v75;
  (*(v43 + 32))(v75, v13, v44);
  v47 = v80;
  v48 = v43;
  sub_2208865BC();
  v49 = v79;
  sub_2208866FC();
  v50 = sub_2208850BC();
  v51 = v42;
  v52 = *(v77 + 8);
  v53 = v49;
  v45 = v78;
  v52(v53, v78);
  v52(v47, v45);
  if (v50)
  {
    v54 = COERCE_DOUBLE(sub_2208865DC());
    v56 = v55;
    v57 = COERCE_DOUBLE(sub_22088675C());
    if (v56)
    {
      v41 = v84;
      if ((v58 & 1) == 0)
      {
LABEL_14:
        v59 = v79;
        sub_2208865BC();
        sub_22088508C();
        v52(v59, v45);
        v60 = v75;
        sub_22088675C();
        v61 = v73;
        sub_2208865CC();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_220587B2C(0, *(v38 + 2) + 1, 1, v38);
        }

        v63 = *(v38 + 2);
        v62 = *(v38 + 3);
        v42 = v82;
        if (v63 >= v62 >> 1)
        {
          v38 = sub_220587B2C((v62 > 1), v63 + 1, 1, v38);
        }

        (*(v81 + 8))(v60, v83);
        *(v38 + 2) = v63 + 1;
        v70(&v38[v72 + v63 * v71], v61, v41);
        goto LABEL_19;
      }
    }

    else
    {
      v41 = v84;
      if ((v58 & 1) != 0 || v54 != v57)
      {
        goto LABEL_14;
      }
    }

    (*(v81 + 8))(v75, v83);
    v42 = v82;
  }

  else
  {
    (*(v48 + 8))(v46, v83);
    v42 = v51;
    v41 = v84;
  }

LABEL_19:
  if (*(v38 + 2) == 1)
  {
    v64 = v79;
    sub_2208865BC();
    sub_22088508C();
    (*(v77 + 8))(v64, v45);
    sub_2208865DC();
    v65 = v74;
    sub_2208865CC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_220587B2C(0, *(v38 + 2) + 1, 1, v38);
    }

    v67 = *(v38 + 2);
    v66 = *(v38 + 3);
    if (v67 >= v66 >> 1)
    {
      v38 = sub_220587B2C((v66 > 1), v67 + 1, 1, v38);
    }

    (*(v40 + 8))(v42, v41);
    *(v38 + 2) = v67 + 1;
    v70(&v38[v72 + v67 * v71], v65, v41);
  }

  else
  {
    (*(v40 + 8))(v42, v41);
  }

  return v38;
}

uint64_t sub_2207557B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088665C();
  v69 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v66 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D697C0];
  sub_2204541E0(0, &unk_2812990E0, MEMORY[0x277D697C0]);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v67 = &v60 - v10;
  sub_220755F20(0, &qword_2812990D8, &unk_2812990E0, v7);
  v12 = v11;
  MEMORY[0x28223BE20](v11, v13);
  v68 = &v60 - v14;
  v15 = sub_22088676C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x277D697F8];
  sub_2204541E0(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = &v60 - v23;
  sub_220755F20(0, &qword_2812990A8, &qword_2812990C0, v20);
  v26 = v25;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v30 = &v60 - v29;
  if ((MEMORY[0x223D7E940](a1, a2, v28) & 1) == 0)
  {
    return 0;
  }

  v61 = v12;
  v63 = v4;
  v62 = type metadata accessor for StockFeedMastheadModel(0);
  v31 = *(v62 + 20);
  v32 = a1;
  v33 = a2;
  v34 = *(v26 + 48);
  v35 = MEMORY[0x277D697F8];
  v64 = v32;
  sub_2204B2BEC(v32 + v31, v30, &qword_2812990C0, MEMORY[0x277D697F8]);
  v65 = v33;
  sub_2204B2BEC(v33 + v31, &v30[v34], &qword_2812990C0, v35);
  v36 = *(v16 + 48);
  if (v36(v30, 1, v15) == 1)
  {
    if (v36(&v30[v34], 1, v15) == 1)
    {
      sub_220755F84(v30, &qword_2812990C0, MEMORY[0x277D697F8]);
      goto LABEL_9;
    }

LABEL_7:
    v37 = &qword_2812990A8;
    v38 = &qword_2812990C0;
    v39 = MEMORY[0x277D697F8];
    v40 = v30;
LABEL_15:
    sub_220755FE0(v40, v37, v38, v39);
    return 0;
  }

  sub_2204B2BEC(v30, v24, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v36(&v30[v34], 1, v15) == 1)
  {
    (*(v16 + 8))(v24, v15);
    goto LABEL_7;
  }

  (*(v16 + 32))(v19, &v30[v34], v15);
  sub_22075603C(&qword_2812990C8, MEMORY[0x277D697F8], MEMORY[0x277D69800]);
  v41 = sub_2208912FC();
  v42 = *(v16 + 8);
  v42(v19, v15);
  v42(v24, v15);
  sub_220755F84(v30, &qword_2812990C0, MEMORY[0x277D697F8]);
  if ((v41 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v43 = v62;
  v44 = *(v62 + 24);
  v45 = *(v61 + 48);
  v46 = MEMORY[0x277D697C0];
  v47 = v64;
  v48 = v68;
  sub_2204B2BEC(v64 + v44, v68, &unk_2812990E0, MEMORY[0x277D697C0]);
  v49 = v65 + v44;
  v50 = v65;
  sub_2204B2BEC(v49, v48 + v45, &unk_2812990E0, v46);
  v51 = v69;
  v52 = *(v69 + 48);
  v53 = v63;
  if (v52(v48, 1, v63) != 1)
  {
    v54 = v67;
    sub_2204B2BEC(v48, v67, &unk_2812990E0, MEMORY[0x277D697C0]);
    if (v52(v48 + v45, 1, v53) != 1)
    {
      v56 = v48 + v45;
      v57 = v66;
      (*(v51 + 32))(v66, v56, v53);
      sub_22075603C(&qword_2812990F0, MEMORY[0x277D697C0], MEMORY[0x277D697D0]);
      v58 = sub_2208912FC();
      v59 = *(v51 + 8);
      v59(v57, v53);
      v59(v54, v53);
      sub_220755F84(v48, &unk_2812990E0, MEMORY[0x277D697C0]);
      if ((v58 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_19;
    }

    (*(v51 + 8))(v54, v53);
    goto LABEL_14;
  }

  if (v52(v48 + v45, 1, v53) != 1)
  {
LABEL_14:
    v37 = &qword_2812990D8;
    v38 = &unk_2812990E0;
    v39 = MEMORY[0x277D697C0];
    v40 = v48;
    goto LABEL_15;
  }

  sub_220755F84(v48, &unk_2812990E0, MEMORY[0x277D697C0]);
LABEL_19:
  if (sub_220656DB4(v47 + *(v43 + 28), v50 + *(v43 + 28)))
  {
    return (*(v47 + *(v43 + 32)) == 2) ^ (*(v50 + *(v43 + 32)) != 2);
  }

  return 0;
}

void sub_220755F20(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2204541E0(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_220755F84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2204541E0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_220755FE0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_220755F20(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_22075603C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_220756084@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  sub_22044CD9C(0);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v36 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220452A8C(0);
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207573B8(0);
  v11 = v10;
  v35 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ForYouFeedGroupConfig(0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220757414();
  v19 = v38;
  sub_220892A4C();
  if (v19)
  {
    v22 = a1;
  }

  else
  {
    v38 = v18;
    v20 = v35;
    v21 = v36;
    sub_220757468();
    sub_22089279C();
    v28 = v14;
    v29 = v11;
    if (v37[0])
    {
      sub_22046DA2C(a1, v37);
      type metadata accessor for CuratedForYouFeedGroupConfigData(0);
      sub_22050293C(&qword_281284728, type metadata accessor for CuratedForYouFeedGroupConfigData, &unk_2208B7C74);
      sub_22050293C(&qword_281284730, type metadata accessor for CuratedForYouFeedGroupConfigData, &unk_2208B7C4C);
      sub_22088F49C();
      (*(v20 + 8))(v28, v29);
      v25 = a1;
      v26 = v38;
      (*(v32 + 32))(v38, v21, v33);
      v27 = v34;
    }

    else
    {
      v25 = a1;
      sub_22046DA2C(a1, v37);
      type metadata accessor for StockForYouFeedGroupConfigData(0);
      sub_22050293C(&qword_281285558, type metadata accessor for StockForYouFeedGroupConfigData, &unk_2208B85C8);
      sub_22050293C(&qword_281285560, type metadata accessor for StockForYouFeedGroupConfigData, &unk_2208B85A0);
      v24 = v9;
      sub_22088F49C();
      v27 = v34;
      (*(v20 + 8))(v28, v29);
      v26 = v38;
      (*(v30 + 32))(v38, v24, v31);
    }

    swift_storeEnumTagMultiPayload();
    sub_2207574BC(v26, v27);
    v22 = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_22075654C(uint64_t a1)
{
  v19[1] = a1;
  sub_22044CD9C(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220452A8C(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ForYouFeedGroupConfig(0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22052C670(v1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v7, v17, v3);
    sub_22088F4BC();
    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    (*(v10 + 32))(v13, v17, v9);
    sub_22088F4BC();
    return (*(v10 + 8))(v13, v9);
  }
}

uint64_t sub_2207567A0()
{
  sub_2208929EC();
  sub_22089146C();
  return sub_220892A2C();
}

uint64_t sub_2207567EC()
{
  sub_2208929EC();
  sub_22089146C();
  return sub_220892A2C();
}

void sub_220756834(BOOL *a2@<X8>)
{
  v3 = sub_22089270C();

  *a2 = v3 != 0;
}

void sub_220756888(BOOL *a3@<X8>)
{
  v4 = sub_22089270C();

  *a3 = v4 != 0;
}

uint64_t sub_2207568E0(uint64_t a1)
{
  v2 = sub_220757414();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22075691C(uint64_t a1)
{
  v2 = sub_220757414();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_220756958(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x64657461727563;
  }

  else
  {
    v3 = 0x6B636F7473;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x64657461727563;
  }

  else
  {
    v5 = 0x6B636F7473;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2208928BC();
  }

  return v8 & 1;
}

uint64_t sub_2207569FC()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

double sub_220756A7C(uint64_t a1)
{
  sub_22089146C();

  return result;
}

uint64_t sub_220756AE8()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

void sub_220756B64(char *a2@<X8>)
{
  v3 = sub_22089270C();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_220756BC4(uint64_t *a1@<X8>)
{
  v2 = 0x6B636F7473;
  if (*v1)
  {
    v2 = 0x64657461727563;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_220756D30(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v22 = a3;
  sub_22044CD9C(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220452A8C(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22052C670(v3, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v9, v19, v5);
    v22(v5);
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    (*(v12 + 32))(v15, v19, v11);
    v22(v11);
    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_220756F90(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = v3;
  sub_22044CD9C(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220452A8C(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22052C670(v5, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v11, v21, v7);
    v22 = a3(v7);
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    (*(v14 + 32))(v17, v21, v13);
    v22 = a3(v13);
    (*(v14 + 8))(v17, v13);
  }

  return v22;
}

uint64_t sub_220757214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22050293C(&qword_28128DF98, type metadata accessor for ForYouFeedGroupConfig, &unk_2208B19B0);

  return MEMORY[0x282190458](a1, a2, a3, v6);
}

void sub_2207573B8(uint64_t a1)
{
  if (!qword_28127E248)
  {
    sub_220757414();
    v1 = sub_2208927BC();
    if (!v2)
    {
      atomic_store(v1, &qword_28127E248);
    }
  }
}

unint64_t sub_220757414()
{
  result = qword_28128DFC0;
  if (!qword_28128DFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128DFC0);
  }

  return result;
}

unint64_t sub_220757468()
{
  result = qword_28128DFA0;
  if (!qword_28128DFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128DFA0);
  }

  return result;
}

uint64_t sub_2207574BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouFeedGroupConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_220757544()
{
  result = qword_27CF59558;
  if (!qword_27CF59558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59558);
  }

  return result;
}

unint64_t sub_22075759C()
{
  result = qword_27CF59560;
  if (!qword_27CF59560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59560);
  }

  return result;
}

unint64_t sub_2207575F4()
{
  result = qword_28128DFB0;
  if (!qword_28128DFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128DFB0);
  }

  return result;
}

unint64_t sub_22075764C()
{
  result = qword_28128DFB8;
  if (!qword_28128DFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128DFB8);
  }

  return result;
}

unint64_t sub_2207576A0()
{
  result = qword_28128DFA8;
  if (!qword_28128DFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128DFA8);
  }

  return result;
}

void sub_2207576F4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v29[1] = a2;
  v30 = sub_2208897CC();
  v29[0] = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220757A94(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v14);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_220886E8C();
  v19 = MEMORY[0x28223BE20](v17, v18);
  (*(v21 + 16))(v29 - v20, a1, v17, v19);
  if (swift_dynamicCast())
  {
    (*(v13 + 8))(v16, v12);
    v22 = sub_220886E6C();
    v23 = sub_2208871CC();
    v25 = v24;

    if (!v5)
    {
      sub_220757B28(&qword_27CF59568, MEMORY[0x277D687C0], MEMORY[0x277D687C8]);
      v26 = v30;
      sub_22088827C();
      sub_220457EE8(v23, v25);
      (*(v29[0] + 32))(a5, v10, v26);
      v27 = type metadata accessor for EngagementEvent(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v27 - 8) + 56))(a5, 0, 1, v27);
    }
  }

  else
  {
    v28 = type metadata accessor for EngagementEvent(0);
    (*(*(v28 - 8) + 56))(a5, 1, 1, v28);
  }
}

void sub_220757A94(uint64_t a1)
{
  if (!qword_281298C48)
  {
    sub_2208897DC();
    sub_220757B28(&qword_281298460, MEMORY[0x277D687D0], MEMORY[0x277D687B8]);
    v1 = sub_220886E8C();
    if (!v2)
    {
      atomic_store(v1, &qword_281298C48);
    }
  }
}

uint64_t sub_220757B28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_220757B70(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_2206C1FA0(sub_2204CB288, v4);

  return result;
}

void sub_220757C90(void *a1, uint64_t a2, uint64_t a3)
{
  v70 = a3;
  v69 = a2;
  v4 = sub_22088F11C();
  v76 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v73 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_22088F14C();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75, v7);
  v72 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_22088F17C();
  v9 = *(v71 - 8);
  MEMORY[0x28223BE20](v71, v10);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v77 = &v63 - v15;
  v68 = v16;
  MEMORY[0x28223BE20](v17, v18);
  v78 = &v63 - v19;
  v64 = sub_22088CC6C();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64, v20);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22089132C();
  v24 = [a1 objectForKey_];

  if (v24)
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
    sub_2204A62A4(&v84, &aBlock);
    type metadata accessor for ForYouFeedViewController();
    swift_dynamicCast();
    v25 = v79;
    v26 = sub_22089132C();
    v27 = [a1 objectForKey_];

    if (v27)
    {
      sub_2208923BC();
      swift_unknownObjectRelease();
    }

    else
    {
      v84 = 0u;
      v85 = 0u;
    }

    aBlock = v84;
    v81 = v85;
    v67 = v4;
    v66 = v12;
    if (!*(&v85 + 1))
    {
      sub_22056D130(&aBlock);
      goto LABEL_11;
    }

    sub_22044D56C(0, &qword_27CF56C10, 0x277D75A50);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_11;
    }

    v28 = v79;
    v29 = [v79 isCollapsed];

    if (!v29)
    {
      goto LABEL_11;
    }

    v30 = sub_22089132C();
    v31 = [a1 objectForKey_];

    if (v31)
    {
      sub_2208923BC();
      swift_unknownObjectRelease();
      sub_2204A62A4(&v84, &aBlock);
      sub_22056D25C();
      swift_dynamicCast();
      v32 = v79;
      swift_getObjectType();
      v33 = v63;
      v34 = v64;
      (*(v63 + 104))(v22, *MEMORY[0x277D6E258], v64);
      sub_22088D08C();

      (*(v33 + 8))(v22, v34);
LABEL_11:
      v65 = v25;
      sub_22088C71C();
      v35 = sub_22088BFCC();

      [v35 bounds];
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v43 = v42;

      v86.origin.x = v37;
      v86.origin.y = v39;
      v86.size.width = v41;
      v86.size.height = v43;
      v44 = CGRectGetHeight(v86) * 20.0;
      sub_22088C71C();
      v63 = sub_22088BFCC();

      v45 = v77;
      sub_22088F16C();
      v46 = v78;
      sub_22088F18C();
      v47 = *(v9 + 8);
      v48 = v71;
      v47(v45, v71);
      v64 = v9 + 8;
      v49 = swift_allocObject();
      v50 = v70;
      *(v49 + 16) = v69;
      *(v49 + 24) = v50;
      sub_22044D56C(0, &qword_28127E7C0, 0x277D85C78);

      v70 = sub_220891D0C();
      v51 = v66;
      sub_22088F16C();
      sub_22088F18C();
      v47(v51, v48);
      v52 = v47;
      (*(v9 + 16))(v51, v46, v48);
      v53 = (*(v9 + 80) + 56) & ~*(v9 + 80);
      v54 = swift_allocObject();
      *(v54 + 16) = v44;
      *(v54 + 24) = 0;
      v55 = v63;
      *(v54 + 32) = v63;
      *(v54 + 40) = sub_2207585CC;
      *(v54 + 48) = v49;
      (*(v9 + 32))(v54 + v53, v51, v48);
      v82 = sub_22056D194;
      v83 = v54;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v81 = sub_2204C35E8;
      *(&v81 + 1) = &block_descriptor_37;
      v56 = _Block_copy(&aBlock);
      v57 = v55;

      v58 = v72;
      sub_22088F13C();
      *&aBlock = MEMORY[0x277D84F90];
      sub_22046275C(&qword_281296CA0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      sub_22056D204(0);
      sub_22046275C(&qword_28127EA50, sub_22056D204, MEMORY[0x277D83970]);
      v59 = v73;
      v60 = v67;
      sub_2208923FC();
      v61 = v77;
      v62 = v70;
      MEMORY[0x223D89E80](v77, v58, v59, v56);
      _Block_release(v56);

      (*(v76 + 8))(v59, v60);
      (*(v74 + 8))(v58, v75);
      v52(v61, v48);
      v52(v78, v48);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_220758620(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_220758668(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2207586CC(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v285 = a3;
  v286 = a2;
  v293 = a1;
  v284 = sub_22088B64C();
  v283 = *(v284 - 8);
  MEMORY[0x28223BE20](v284, v3);
  v287 = &v268 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22075B8C4(0, &qword_281297850, MEMORY[0x277D6DF88]);
  v282 = v5;
  v281 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v280 = &v268 - v7;
  v316 = sub_22088F23C();
  v270 = *(v316 - 8);
  MEMORY[0x28223BE20](v316, v8);
  v310 = &v268 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22088698C();
  v11 = *(v10 - 8);
  v337 = v10;
  v338 = v11;
  MEMORY[0x28223BE20](v10, v12);
  v329 = (&v268 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14, v15);
  v328 = &v268 - v16;
  v278 = type metadata accessor for NewsStockFeedGroup(0);
  MEMORY[0x28223BE20](v278, v17);
  v331 = (&v268 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19, v20);
  v277 = (&v268 - v21);
  MEMORY[0x28223BE20](v22, v23);
  v330 = (&v268 - v24);
  v25 = type metadata accessor for StockFeedModel(0);
  MEMORY[0x28223BE20](v25, v26);
  v313 = &v268 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055D328(0);
  v339 = *(v28 - 8);
  v340 = v28;
  MEMORY[0x28223BE20](v28, v29);
  v336 = &v268 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v335 = &v268 - v33;
  MEMORY[0x28223BE20](v34, v35);
  v301 = &v268 - v36;
  sub_22055D524(0);
  MEMORY[0x28223BE20](v37 - 8, v38);
  *&v292 = &v268 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v41);
  v291 = &v268 - v42;
  MEMORY[0x28223BE20](v43, v44);
  v312 = &v268 - v45;
  v294 = type metadata accessor for NewsPlacardStockFeedGroup(0);
  MEMORY[0x28223BE20](v294, v46);
  v272 = &v268 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48, v49);
  v303 = &v268 - v50;
  MEMORY[0x28223BE20](v51, v52);
  v271 = &v268 - v53;
  MEMORY[0x28223BE20](v54, v55);
  v302 = (&v268 - v56);
  v319 = sub_22088FFFC();
  v276 = *(v319 - 8);
  MEMORY[0x28223BE20](v319, v57);
  v333 = &v268 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59, v60);
  v332 = &v268 - v61;
  MEMORY[0x28223BE20](v62, v63);
  v274 = &v268 - v64;
  v314 = type metadata accessor for StockFeedGroup(0);
  v317 = *(v314 - 8);
  MEMORY[0x28223BE20](v314, v65);
  v300 = (&v268 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v67, v68);
  v307 = (&v268 - v69);
  MEMORY[0x28223BE20](v70, v71);
  v309 = &v268 - v72;
  MEMORY[0x28223BE20](v73, v74);
  v299 = (&v268 - v75);
  MEMORY[0x28223BE20](v76, v77);
  v306 = (&v268 - v78);
  MEMORY[0x28223BE20](v79, v80);
  v308 = &v268 - v81;
  MEMORY[0x28223BE20](v82, v83);
  v269 = &v268 - v84;
  MEMORY[0x28223BE20](v85, v86);
  v273 = &v268 - v87;
  v327 = type metadata accessor for StockFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v327 - 8, v88);
  v297 = (&v268 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v90, v91);
  v298 = (&v268 - v92);
  MEMORY[0x28223BE20](v93, v94);
  v296 = (&v268 - v95);
  MEMORY[0x28223BE20](v96, v97);
  *&v295 = &v268 - v98;
  MEMORY[0x28223BE20](v99, v100);
  v311 = &v268 - v101;
  MEMORY[0x28223BE20](v102, v103);
  v326 = &v268 - v104;
  sub_22055CE80(0);
  v334 = v105;
  v315 = *(v105 - 8);
  MEMORY[0x28223BE20](v105, v106);
  v305 = &v268 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v108, v109);
  v304 = &v268 - v110;
  MEMORY[0x28223BE20](v111, v112);
  v275 = &v268 - v113;
  MEMORY[0x28223BE20](v114, v115);
  v320 = &v268 - v116;
  MEMORY[0x28223BE20](v117, v118);
  v120 = &v268 - v119;
  sub_22055D1DC(0);
  v122 = v121 - 8;
  MEMORY[0x28223BE20](v121, v123);
  v125 = &v268 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220587530(0);
  MEMORY[0x28223BE20](v126 - 8, v127);
  v290 = &v268 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_22088519C();
  v130 = *(v129 - 8);
  MEMORY[0x28223BE20](v129, v131);
  v133 = &v268 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055CF9C(0);
  v135 = v134;
  v136 = *(v134 - 8);
  MEMORY[0x28223BE20](v134, v137);
  v139 = &v268 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v140, v141);
  v322 = &v268 - v142;
  sub_22088518C();
  v289 = sub_22088517C();
  v288 = v143;
  (*(v130 + 8))(v133, v129);
  v279 = v136;
  (*(v136 + 16))(v139, v293, v135);
  sub_220444524(&qword_281296F28, sub_22055CF9C, MEMORY[0x277D6EC68]);
  sub_2208915BC();
  v144 = *(v122 + 44);
  sub_220444524(&qword_281296F20, sub_22055CF9C, MEMORY[0x277D6EC70]);
  sub_22089199C();
  v145 = MEMORY[0x277D84F90];
  v146 = *&v125[v144] == v341;
  v325 = v25;
  v324 = v135;
  if (!v146)
  {
    v194 = (v315 + 16);
    v323 = (v315 + 8);
    v318 = (v315 + 32);
    do
    {
      v195 = sub_2208919BC();
      (*v194)(v120);
      v195(&v341, 0);
      sub_2208919AC();
      sub_22088B2AC();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 3)
      {
        (*v323)(v120, v334);
      }

      else if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload != 2)
        {
          goto LABEL_43;
        }

        (*v323)(v120, v334);
        sub_22075B9B8(v326, type metadata accessor for StockFeedSectionDescriptor);
      }

      else
      {
        if (!EnumCaseMultiPayload)
        {
          sub_22075B9B8(v326, type metadata accessor for StockFeedMastheadModel);
LABEL_43:
          v197 = *v318;
          (*v318)(v320, v120, v334);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v345 = v145;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_22070BF64(0, *(v145 + 16) + 1, 1);
            v145 = v345;
          }

          v200 = *(v145 + 16);
          v199 = *(v145 + 24);
          if (v200 >= v199 >> 1)
          {
            sub_22070BF64((v199 > 1), v200 + 1, 1);
            v145 = v345;
          }

          *(v145 + 16) = v200 + 1;
          v197(v145 + ((*(v315 + 80) + 32) & ~*(v315 + 80)) + *(v315 + 72) * v200, v320, v334);
          goto LABEL_35;
        }

        (*v323)(v120, v334);
        v201 = v326;

        sub_220459628(0);
        sub_22075B9B8(v201 + *(v202 + 64), sub_2204595F4);
      }

LABEL_35:
      sub_22089199C();
    }

    while (*&v125[v144] != v341);
  }

  sub_22075B9B8(v125, sub_22055D1DC);
  v147 = sub_220444524(&qword_281297DF8, sub_22055CE80, MEMORY[0x277D6D720]);
  v148 = sub_220444524(&qword_281297E00, sub_22055CE80, MEMORY[0x277D6D718]);
  v149 = v334;
  MEMORY[0x223D80A20](v145, v334, v147, v148);
  v150 = sub_220444524(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A1FAC);
  v151 = sub_220444524(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
  v323 = v150;
  v326 = v151;
  sub_22088E6EC();
  v153 = v321[2];
  v154 = v153 >> 61;
  if ((v153 >> 61) <= 1)
  {
    if (!v154)
    {
      sub_2206009C4(0, v152);
      v204 = v203;
      v205 = swift_projectBox();
      v206 = *(v205 + *(v204 + 48));
      v207 = v273;
      sub_22075BA18(v205, v273, type metadata accessor for StockFeedGroup);
      __swift_project_boxed_opaque_existential_1(v321 + 3, v321[6]);
      type metadata accessor for StockFeedServiceConfig(0);
      sub_220444524(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig, &unk_22089CCD0);

      v208 = v274;
      sub_22088F6CC();
      v209 = v275;
      sub_22072933C(v207, v208, v275);
      (*(v276 + 8))(v208, v319);
      sub_22088E72C();
      v210 = *(v315 + 8);
      v210(v209, v149);
      sub_2208544BC(v206, v209);
      sub_22088E72C();
      v210(v209, v149);
      sub_22088FA1C();
      sub_22088FA0C();
      v211 = sub_22088F9EC();

      v212 = 0;
      if (v211)
      {
        v212 = sub_22088F45C();
      }

      else
      {
        v342 = 0;
        v343 = 0;
      }

      v262 = v287;
      v341 = v211;
      v344 = v212;
      v263 = v324;
      v264 = v322;
      sub_22088E7BC();

      sub_22075B9B8(v273, type metadata accessor for StockFeedGroup);
      goto LABEL_99;
    }

    v221 = *((v153 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v329 = *((v153 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v320 = v221;
    v222 = v308;
    v318 = *(v221 + 2);
    if (v318)
    {
      v156 = 0;
      v309 = &v320[(*(v317 + 80) + 32) & ~*(v317 + 80)];
      v303 = (v270 + 32);
      v300 = (v270 + 16);
      v298 = (v270 + 8);
      v336 = v338 + 16;
      v223 = (v338 + 8);
      v333 = (v339 + 32);
      v297 = (v339 + 8);
      v307 = (v276 + 8);
      v305 = (v315 + 8);
      v292 = xmmword_220899360;
      while (v156 < *(v320 + 2))
      {
        v231 = *(v317 + 72);
        v331 = v156;
        sub_22075BA18(&v309[v231 * v156], v222, type metadata accessor for StockFeedGroup);
        v232 = __swift_project_boxed_opaque_existential_1(v321 + 3, v321[6]);
        type metadata accessor for StockFeedServiceConfig(0);
        sub_220444524(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig, &unk_22089CCD0);
        sub_22088F6CC();
        v156 = *v232;
        v233 = v306;
        sub_22075BA18(v222, v306, type metadata accessor for StockFeedGroup);
        v234 = swift_getEnumCaseMultiPayload();
        if (v234)
        {
          if (v234 == 1)
          {
            sub_22060095C(v233, v330, type metadata accessor for NewsStockFeedGroup);
            sub_22075BA18(v222, v299, type metadata accessor for StockFeedGroup);
            v235 = swift_getEnumCaseMultiPayload();
            if (v235)
            {
              v236 = v337;
              v237 = v328;
              if (v235 == 1)
              {
                v238 = v277;
                sub_22060095C(v299, v277, type metadata accessor for NewsStockFeedGroup);
                sub_220459628(0);
                v240 = *(v239 + 64);
                v241 = v238[1];
                v242 = v295;
                *v295 = *v238;
                *(v242 + 8) = v241;
                v243 = *(v278 + 32);
                *(v242 + 16) = *(v238 + *(v278 + 28));
                sub_22075BA18(v238 + v243, v242 + v240, sub_2204595F4);
                v244 = v242;

                sub_22075B9B8(v238, type metadata accessor for NewsStockFeedGroup);
              }

              else
              {
                v244 = v295;
                (*v303)(v295, v299, v316);
              }
            }

            else
            {
              v251 = v271;
              sub_22060095C(v299, v271, type metadata accessor for NewsPlacardStockFeedGroup);
              sub_22075B9B8(v251, type metadata accessor for NewsPlacardStockFeedGroup);
              v236 = v337;
              v237 = v328;
              v244 = v295;
            }

            swift_storeEnumTagMultiPayload();
            sub_22075BA18(v244, v296, type metadata accessor for StockFeedSectionDescriptor);
            v150 = v330[2];
            v145 = *(v150 + 16);
            if (v145)
            {
              v341 = MEMORY[0x277D84F90];
              sub_22070BC24(0, v145, 0);
              v252 = 0;
              v253 = v341;
              v254 = v150 + ((*(v338 + 80) + 32) & ~*(v338 + 80));
              while (v252 < *(v150 + 16))
              {
                (*(v338 + 16))(v237, v254 + *(v338 + 72) * v252, v236);
                sub_22072A47C(v237, v332, v330, v156, v335);
                (*v223)(v237, v236);
                v341 = v253;
                v256 = *(v253 + 16);
                v255 = *(v253 + 24);
                if (v256 >= v255 >> 1)
                {
                  sub_22070BC24((v255 > 1), v256 + 1, 1);
                  v253 = v341;
                }

                ++v252;
                *(v253 + 16) = v256 + 1;
                (*(v339 + 32))(v253 + ((*(v339 + 80) + 32) & ~*(v339 + 80)) + *(v339 + 72) * v256, v335, v340);
                v236 = v337;
                v237 = v328;
                if (v145 == v252)
                {
                  goto LABEL_84;
                }
              }

LABEL_101:
              __break(1u);
              goto LABEL_102;
            }

            v253 = MEMORY[0x277D84F90];
LABEL_84:
            v257 = sub_220444524(&qword_281297FB8, sub_22055D328, MEMORY[0x277D6D408]);
            v258 = sub_220444524(&qword_281297FC0, sub_22055D328, MEMORY[0x277D6D3F8]);
            v150 = v291;
            MEMORY[0x223D80A20](v253, v340, v257, v258);
            v145 = v304;
            sub_22088B29C();
            sub_22075B9B8(v295, type metadata accessor for StockFeedSectionDescriptor);
            sub_22075B9B8(v330, type metadata accessor for NewsStockFeedGroup);
            v149 = v334;
            v222 = v308;
          }

          else
          {
            v224 = v310;
            v225 = v233;
            v226 = v316;
            (*v303)(v310, v225, v316);
            (*v300)(v311, v224, v226);
            swift_storeEnumTagMultiPayload();
            sub_220453D34(0, &qword_28127E100, sub_22055D328, MEMORY[0x277D84560]);
            v227 = swift_allocObject();
            *(v227 + 16) = v292;
            __swift_project_boxed_opaque_existential_1(v156 + 7, v156[10]);
            sub_22088FB2C();
            swift_storeEnumTagMultiPayload();
            sub_22088AD7C();
            v228 = sub_220444524(&qword_281297FB8, sub_22055D328, MEMORY[0x277D6D408]);
            v229 = sub_220444524(&qword_281297FC0, sub_22055D328, MEMORY[0x277D6D3F8]);
            v150 = v312;
            MEMORY[0x223D80A10](v227, v340, v228, v229);
            v145 = v304;
            v222 = v308;
            sub_22088B29C();
            (*v298)(v310, v316);
            v149 = v334;
          }

          v230 = v331;
        }

        else
        {
          sub_22060095C(v233, v302, type metadata accessor for NewsPlacardStockFeedGroup);
          __swift_project_boxed_opaque_existential_1(v156 + 2, v156[5]);
          if ((sub_220885E7C() & 1) != 0 && *(v302 + *(v294 + 20)) == 1)
          {
            swift_storeEnumTagMultiPayload();
            v245 = sub_220444524(&qword_281297FB8, sub_22055D328, MEMORY[0x277D6D408]);
            v246 = sub_220444524(&qword_281297FC0, sub_22055D328, MEMORY[0x277D6D3F8]);
            MEMORY[0x223D80A10](MEMORY[0x277D84F90], v340, v245, v246);
            v145 = v304;
            sub_22088B29C();
            v150 = v313;
            swift_storeEnumTagMultiPayload();
            v149 = v334;
            v230 = v331;
          }

          else
          {
            swift_storeEnumTagMultiPayload();
            v247 = sub_220444524(&qword_281297FB8, sub_22055D328, MEMORY[0x277D6D408]);
            v248 = sub_220444524(&qword_281297FC0, sub_22055D328, MEMORY[0x277D6D3F8]);
            MEMORY[0x223D80A10](MEMORY[0x277D84F90], v340, v247, v248);
            v145 = v304;
            sub_22088B29C();
            v150 = v313;
            v149 = v334;
            v230 = v331;
            if (qword_281299528 != -1)
            {
              swift_once();
            }

            v249 = *algn_2812B6D88;
            *v150 = qword_2812B6D80;
            *(v150 + 8) = v249;
            swift_storeEnumTagMultiPayload();
          }

          v250 = v301;
          sub_22088AD7C();
          sub_22088B30C();
          (*v297)(v250, v340);
          sub_22075B9B8(v302, type metadata accessor for NewsPlacardStockFeedGroup);
          v222 = v308;
        }

        v156 = (v230 + 1);
        (*v307)(v332, v319);
        sub_22088E72C();
        (*v305)(v145, v149);
        sub_22075B9B8(v222, type metadata accessor for StockFeedGroup);
        if (v156 == v318)
        {
          goto LABEL_87;
        }
      }

      goto LABEL_103;
    }

LABEL_87:
    v259 = v275;
    sub_2208544BC(v329, v275);
    sub_22088E72C();
    (*(v315 + 8))(v259, v149);
    sub_22088FA1C();

    sub_22088FA0C();
    type metadata accessor for StockFeedServiceConfig(0);
    sub_220444524(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig, &unk_22089CCD0);
    v260 = sub_22088F9EC();

    v261 = 0;
    if (v260)
    {
      v261 = sub_22088F45C();
    }

    else
    {
      v342 = 0;
      v343 = 0;
    }

    v262 = v287;
    v341 = v260;
    v344 = v261;
    v263 = v324;
    v264 = v322;
    sub_22088E7BC();
    goto LABEL_98;
  }

  if (v154 == 2)
  {
    sub_2206009C4(0, v152);
    v213 = swift_projectBox();
    v214 = v269;
    sub_22075BA18(v213, v269, type metadata accessor for StockFeedGroup);
    __swift_project_boxed_opaque_existential_1(v321 + 3, v321[6]);
    type metadata accessor for StockFeedServiceConfig(0);
    sub_220444524(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig, &unk_22089CCD0);

    v215 = v274;
    sub_22088F6CC();
    v216 = v275;
    sub_22072933C(v214, v215, v275);
    (*(v276 + 8))(v215, v319);
    sub_22088E72C();
    (*(v315 + 8))(v216, v149);
    sub_22088FA1C();
    sub_22088FA0C();
    v217 = sub_22088F9EC();

    v218 = 0;
    if (v217)
    {
      v218 = sub_22088F45C();
    }

    else
    {
      v342 = 0;
      v343 = 0;
    }

    v262 = v287;
    v341 = v217;
    v344 = v218;
    v263 = v324;
    v264 = v322;
    sub_22088E7BC();

    sub_22075B9B8(v214, type metadata accessor for StockFeedGroup);
    goto LABEL_99;
  }

  if (v154 != 3)
  {
    sub_22088FA1C();

    sub_22088FA0C();
    type metadata accessor for StockFeedServiceConfig(0);
    sub_220444524(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig, &unk_22089CCD0);
    v219 = sub_22088F9EC();

    v220 = 0;
    if (!v219)
    {
      v342 = 0;
      v343 = 0;
      goto LABEL_92;
    }

LABEL_55:
    v220 = sub_22088F45C();
LABEL_92:
    v262 = v287;
    v341 = v219;
    v344 = v220;
    v263 = v324;
    v264 = v322;
    sub_22088E7BC();
LABEL_98:

LABEL_99:
    v265 = v283;
    v266 = v284;
    (*(v283 + 104))(v262, *MEMORY[0x277D6D868], v284);
    sub_220444524(&unk_281288C00, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A205C);
    v267 = v280;
    sub_22088C67C();
    (*(v265 + 8))(v262, v266);
    v286(v267);
    (*(v281 + 8))(v267, v282);
    (*(v279 + 8))(v264, v263);
    return;
  }

  v155 = *((v153 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v328 = *((v153 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v320 = v155;
  v156 = v329;
  v157 = v309;
  v318 = *(v155 + 2);
  if (!v318)
  {
LABEL_85:
    sub_22088FA1C();

    sub_22088FA0C();
    type metadata accessor for StockFeedServiceConfig(0);
    sub_220444524(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig, &unk_22089CCD0);
    v219 = sub_22088F9EC();

    v220 = 0;
    if (!v219)
    {
      v342 = 0;
      v343 = 0;
      goto LABEL_92;
    }

    goto LABEL_55;
  }

  v150 = 0;
  v308 = &v320[(*(v317 + 80) + 32) & ~*(v317 + 80)];
  v304 = (v270 + 32);
  v302 = (v270 + 16);
  v299 = (v270 + 8);
  v335 = v338 + 16;
  v145 = v338 + 8;
  v332 = (v339 + 32);
  v296 = (v339 + 8);
  v306 = (v276 + 8);
  v315 += 8;
  v295 = xmmword_220899360;
  while (v150 < *(v320 + 2))
  {
    v166 = *(v317 + 72);
    v330 = v150;
    sub_22075BA18(&v308[v166 * v150], v157, type metadata accessor for StockFeedGroup);
    v167 = __swift_project_boxed_opaque_existential_1(v321 + 3, v321[6]);
    type metadata accessor for StockFeedServiceConfig(0);
    sub_220444524(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig, &unk_22089CCD0);
    sub_22088F6CC();
    v168 = *v167;
    v169 = v307;
    sub_22075BA18(v157, v307, type metadata accessor for StockFeedGroup);
    v170 = swift_getEnumCaseMultiPayload();
    if (v170)
    {
      if (v170 == 1)
      {
        sub_22060095C(v169, v331, type metadata accessor for NewsStockFeedGroup);
        v150 = v300;
        sub_22075BA18(v157, v300, type metadata accessor for StockFeedGroup);
        v171 = swift_getEnumCaseMultiPayload();
        if (v171)
        {
          v172 = v298;
          if (v171 == 1)
          {
            v150 = v277;
            sub_22060095C(v300, v277, type metadata accessor for NewsStockFeedGroup);
            sub_220459628(0);
            v174 = *(v173 + 64);
            v175 = *(v150 + 8);
            *v172 = *v150;
            v172[1] = v175;
            v176 = *(v278 + 32);
            *(v172 + 16) = *(v150 + *(v278 + 28));
            sub_22075BA18(v150 + v176, v172 + v174, sub_2204595F4);

            sub_22075B9B8(v150, type metadata accessor for NewsStockFeedGroup);
          }

          else
          {
            (*v304)(v298, v300, v316);
          }
        }

        else
        {
          v184 = v272;
          sub_22060095C(v300, v272, type metadata accessor for NewsPlacardStockFeedGroup);
          v150 = *(v184 + *(v294 + 20));
          sub_22075B9B8(v184, type metadata accessor for NewsPlacardStockFeedGroup);
          v172 = v298;
        }

        swift_storeEnumTagMultiPayload();
        sub_22075BA18(v172, v297, type metadata accessor for StockFeedSectionDescriptor);
        v185 = v331[2];
        v186 = *(v185 + 16);
        if (v186)
        {
          v341 = MEMORY[0x277D84F90];
          sub_22070BC24(0, v186, 0);
          v187 = 0;
          v188 = v341;
          v189 = v185 + ((*(v338 + 80) + 32) & ~*(v338 + 80));
          while (v187 < *(v185 + 16))
          {
            v190 = v337;
            (*(v338 + 16))(v156, v189 + *(v338 + 72) * v187, v337);
            sub_22072A47C(v156, v333, v331, v168, v336);
            (*v145)(v156, v190);
            v341 = v188;
            v150 = *(v188 + 16);
            v191 = *(v188 + 24);
            if (v150 >= v191 >> 1)
            {
              sub_22070BC24((v191 > 1), v150 + 1, 1);
              v188 = v341;
            }

            ++v187;
            *(v188 + 16) = v150 + 1;
            (*(v339 + 32))(v188 + ((*(v339 + 80) + 32) & ~*(v339 + 80)) + *(v339 + 72) * v150, v336, v340);
            v156 = v329;
            if (v186 == v187)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
          goto LABEL_101;
        }

        v188 = MEMORY[0x277D84F90];
LABEL_34:
        v192 = sub_220444524(&qword_281297FB8, sub_22055D328, MEMORY[0x277D6D408]);
        v193 = sub_220444524(&qword_281297FC0, sub_22055D328, MEMORY[0x277D6D3F8]);
        MEMORY[0x223D80A20](v188, v340, v192, v193);
        v164 = v305;
        sub_22088B29C();
        sub_22075B9B8(v298, type metadata accessor for StockFeedSectionDescriptor);
        sub_22075B9B8(v331, type metadata accessor for NewsStockFeedGroup);
      }

      else
      {
        v158 = v310;
        v159 = v169;
        v160 = v316;
        (*v304)(v310, v159, v316);
        (*v302)(v311, v158, v160);
        swift_storeEnumTagMultiPayload();
        sub_220453D34(0, &qword_28127E100, sub_22055D328, MEMORY[0x277D84560]);
        v161 = swift_allocObject();
        *(v161 + 16) = v295;
        __swift_project_boxed_opaque_existential_1(v168 + 7, v168[10]);
        sub_22088FB2C();
        swift_storeEnumTagMultiPayload();
        sub_22088AD7C();
        v162 = sub_220444524(&qword_281297FB8, sub_22055D328, MEMORY[0x277D6D408]);
        v163 = sub_220444524(&qword_281297FC0, sub_22055D328, MEMORY[0x277D6D3F8]);
        MEMORY[0x223D80A10](v161, v340, v162, v163);
        v164 = v305;
        v156 = v329;
        sub_22088B29C();
        (*v299)(v310, v316);
      }

      v165 = v334;
    }

    else
    {
      sub_22060095C(v169, v303, type metadata accessor for NewsPlacardStockFeedGroup);
      __swift_project_boxed_opaque_existential_1(v168 + 2, v168[5]);
      if ((sub_220885E7C() & 1) != 0 && v303[*(v294 + 20)] == 1)
      {
        swift_storeEnumTagMultiPayload();
        v177 = sub_220444524(&qword_281297FB8, sub_22055D328, MEMORY[0x277D6D408]);
        v178 = sub_220444524(&qword_281297FC0, sub_22055D328, MEMORY[0x277D6D3F8]);
        MEMORY[0x223D80A10](MEMORY[0x277D84F90], v340, v177, v178);
        v164 = v305;
        sub_22088B29C();
        swift_storeEnumTagMultiPayload();
        v165 = v334;
      }

      else
      {
        swift_storeEnumTagMultiPayload();
        v179 = sub_220444524(&qword_281297FB8, sub_22055D328, MEMORY[0x277D6D408]);
        v180 = sub_220444524(&qword_281297FC0, sub_22055D328, MEMORY[0x277D6D3F8]);
        MEMORY[0x223D80A10](MEMORY[0x277D84F90], v340, v179, v180);
        v164 = v305;
        sub_22088B29C();
        v181 = v313;
        v165 = v334;
        if (qword_281299528 != -1)
        {
          swift_once();
        }

        v182 = *algn_2812B6D88;
        *v181 = qword_2812B6D80;
        v181[1] = v182;
        swift_storeEnumTagMultiPayload();
      }

      v183 = v301;
      sub_22088AD7C();
      sub_22088B30C();
      (*v296)(v183, v340);
      sub_22075B9B8(v303, type metadata accessor for NewsPlacardStockFeedGroup);
    }

    v150 = v330 + 1;
    (*v306)(v333, v319);
    sub_22088E72C();
    (*v315)(v164, v165);
    v157 = v309;
    sub_22075B9B8(v309, type metadata accessor for StockFeedGroup);
    if (v150 == v318)
    {
      goto LABEL_85;
    }
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
  (*v145)(v156, v150);

  __break(1u);
}

unint64_t sub_22075B7E0()
{
  result = qword_27CF59570;
  if (!qword_27CF59570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59570);
  }

  return result;
}

void sub_22075B8C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for StockFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for StockFeedModel(255);
    v8[2] = sub_220444524(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A1FAC);
    v8[3] = sub_220444524(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_22075B9B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22075BA18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22075BA80()
{
  if (qword_281294340 != -1)
  {
    swift_once();
  }

  sub_22048D7F8(0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_220899360;
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v2 = sub_22088613C();
  v3 = MEMORY[0x277D839F0];
  *(v1 + 56) = MEMORY[0x277D839B0];
  *(v1 + 64) = v3;
  *(v1 + 32) = v2 & 1;
  sub_220891AFC();
  sub_22088A7EC("For You Feed pool service will fetch pool, appleNewsContent=%d", v9);

  sub_22048E0A4(0);
  sub_220888FBC();
  v4 = sub_220888D9C();
  sub_220528958(0);
  sub_220888E5C();

  v5 = sub_220888D9C();
  sub_220888E6C();

  v6 = sub_220888D9C();
  v7 = sub_220888E4C();

  sub_22075BCC0(v7);
  return v7;
}

uint64_t sub_22075BCC0(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  if (sub_22088613C())
  {
    sub_22048E0A4(0);
    sub_220888FBC();
    v2 = sub_220888D9C();
    sub_22075BFA0(0);
    sub_220888E5C();

    v3 = sub_220888D9C();
    v4 = sub_220888E4C();

    return v4;
  }

  else
  {
    sub_22075BF30();
    swift_allocError();
    sub_22075C0AC(0, &qword_27CF59580, &type metadata for ForYouFeedPoolStockContent, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_220888EBC();
  }
}

double sub_22075BE64@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_22046DA2C((a1 + 1), (a2 + 1));
  *a2 = v3;

  return result;
}

uint64_t sub_22075BEAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22075BA80();
  *a1 = result;
  a1[1] = v3;
  a1[2] = MEMORY[0x277D84FA0];
  return result;
}

unint64_t sub_22075BF30()
{
  result = qword_27CF59578;
  if (!qword_27CF59578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59578);
  }

  return result;
}

void sub_22075BFA0(uint64_t a1)
{
  if (!qword_28127EC48)
  {
    sub_22075C020(255);
    sub_2204446D4(255, &unk_281299230, MEMORY[0x277D695D8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28127EC48);
    }
  }
}

void sub_22075C020(uint64_t a1)
{
  if (!qword_28127EC50)
  {
    sub_22075C0AC(255, &qword_28127E9C0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    v1 = sub_22089128C();
    if (!v2)
    {
      atomic_store(v1, &qword_28127EC50);
    }
  }
}

void sub_22075C0AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_22075C110()
{
  result = qword_27CF59588;
  if (!qword_27CF59588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59588);
  }

  return result;
}

uint64_t sub_22075C164(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x736E6F6974706FLL;
    v6 = 0x6F506C6C6F726373;
    if (a1 != 8)
    {
      v6 = 0xD000000000000013;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x656C6369747261;
    if (a1 != 5)
    {
      v7 = 7107189;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 1701869940;
    v2 = 0x6B636F7473;
    v3 = 0x6565466B636F7473;
    if (a1 != 3)
    {
      v3 = 0x7972657571;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x546E6F6974636573;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_22075C2AC(void *a1)
{
  v3 = v1;
  sub_220760C54(0, &qword_28127E1F0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220760998();
  sub_220892A5C();
  LOBYTE(v18) = *v3;
  v22 = 0;
  sub_220760CB8();
  sub_22089283C();
  if (!v2)
  {
    LOBYTE(v18) = v3[1];
    v22 = 1;
    sub_220760D0C();
    sub_2208927FC();
    v11 = type metadata accessor for StocksActivityUserInfo(0);
    LOBYTE(v18) = 2;
    sub_22088685C();
    sub_220448D90(&qword_281299078, MEMORY[0x277D69810], MEMORY[0x277D69818]);
    sub_2208927FC();
    LOBYTE(v18) = 3;
    type metadata accessor for StocksActivity.StockFeed.Series(0);
    sub_220448D90(qword_281295358, type metadata accessor for StocksActivity.StockFeed.Series, &protocol conformance descriptor for StocksActivity.StockFeed.Series);
    sub_2208927FC();
    LOBYTE(v18) = 4;
    sub_2208927CC();
    LOBYTE(v18) = 5;
    type metadata accessor for ArticleUserInfoModel(0);
    sub_220448D90(&qword_28128F3E0, type metadata accessor for ArticleUserInfoModel, &protocol conformance descriptor for ArticleUserInfoModel);
    sub_2208927FC();
    LOBYTE(v18) = 6;
    sub_220884E9C();
    sub_220448D90(&qword_2812994F8, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_2208927FC();
    LOBYTE(v18) = 7;
    sub_2208927EC();
    v12 = &v3[*(v11 + 48)];
    v13 = v12[1];
    v14 = v12[2];
    v15 = v12[3];
    v18 = *v12;
    v19 = v13;
    v20 = v14;
    v21 = v15;
    v22 = 8;
    sub_2206B2110(v18, v13);
    sub_220760D60();
    sub_2208927FC();
    sub_2207609EC(v18, v19);
    LOBYTE(v18) = 9;
    sub_2208927CC();
  }

  return (*(v7 + 8))(v10, v6);
}

void sub_22075C730(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = MEMORY[0x277D83D88];
  sub_220447700(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v51 = &v48 - v6;
  sub_220447700(0, qword_28128F390, type metadata accessor for ArticleUserInfoModel, v3);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v52 = &v48 - v9;
  sub_220447700(0, qword_281295308, type metadata accessor for StocksActivity.StockFeed.Series, v3);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v48 - v12;
  sub_220447700(0, &qword_281299060, MEMORY[0x277D69810], v3);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v48 - v16;
  sub_220760C54(0, &qword_281299830, MEMORY[0x277D844C8]);
  v19 = *(v18 - 8);
  v53 = v18;
  v54 = v19;
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v48 - v21;
  v23 = type metadata accessor for StocksActivityUserInfo(0);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_220760998();
  v55 = v22;
  v28 = v56;
  sub_220892A4C();
  if (v28)
  {
    __swift_destroy_boxed_opaque_existential_1(v57);
  }

  else
  {
    v29 = v13;
    v30 = v52;
    v31 = v54;
    v49 = v23;
    v60 = 0;
    sub_220760A70();
    sub_22089279C();
    *v26 = v58;
    v60 = 1;
    sub_220760AC4();
    sub_22089276C();
    v56 = v26;
    v26[1] = v58;
    sub_22088685C();
    LOBYTE(v58) = 2;
    sub_220448D90(&qword_281299848, MEMORY[0x277D69810], MEMORY[0x277D69828]);
    sub_22089276C();
    v32 = v49;
    sub_220760B18(v17, &v56[v49[6]], &qword_281299060, MEMORY[0x277D69810]);
    type metadata accessor for StocksActivity.StockFeed.Series(0);
    LOBYTE(v58) = 3;
    sub_220448D90(&qword_281299850, type metadata accessor for StocksActivity.StockFeed.Series, &protocol conformance descriptor for StocksActivity.StockFeed.Series);
    sub_22089276C();
    v33 = v56;
    sub_220760B18(v29, &v56[v32[7]], qword_281295308, type metadata accessor for StocksActivity.StockFeed.Series);
    LOBYTE(v58) = 4;
    v48 = 0;
    v34 = sub_22089273C();
    v35 = &v33[v32[8]];
    *v35 = v34;
    v35[1] = v36;
    type metadata accessor for ArticleUserInfoModel(0);
    LOBYTE(v58) = 5;
    sub_220448D90(&qword_281299858, type metadata accessor for ArticleUserInfoModel, &protocol conformance descriptor for ArticleUserInfoModel);
    sub_22089276C();
    sub_220760B18(v30, &v33[v49[9]], qword_28128F390, type metadata accessor for ArticleUserInfoModel);
    sub_220884E9C();
    LOBYTE(v58) = 6;
    sub_220448D90(&qword_2812997D0, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    v37 = v51;
    sub_22089276C();
    sub_220760B18(v37, &v33[v49[10]], &qword_2812994E0, MEMORY[0x277CC9260]);
    LOBYTE(v58) = 7;
    v38 = sub_22089275C();
    v39 = &v33[v49[11]];
    *v39 = v38;
    v39[8] = v40 & 1;
    v60 = 8;
    sub_220760B98();
    sub_22089276C();
    v41 = &v33[v49[12]];
    v42 = v59;
    *v41 = v58;
    *(v41 + 1) = v42;
    LOBYTE(v58) = 9;
    v43 = sub_22089273C();
    v45 = v44;
    (*(v31 + 8))(v55, v53);
    v46 = v50;
    v47 = &v26[v49[13]];
    *v47 = v43;
    v47[1] = v45;
    sub_220760BEC(v26, v46, type metadata accessor for StocksActivityUserInfo);
    __swift_destroy_boxed_opaque_existential_1(v57);
    sub_22076087C(v26, type metadata accessor for StocksActivityUserInfo);
  }
}

uint64_t sub_22075D1A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22075D978(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22075D1D8(uint64_t a1)
{
  v2 = sub_220760998();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22075D214(uint64_t a1)
{
  v2 = sub_220760998();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t type metadata accessor for StocksActivityUserInfo(uint64_t a1)
{
  result = qword_2812960A8;
  if (!qword_2812960A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22075D2F4(uint64_t a1)
{
  sub_22075EAA0(319, &qword_281291A58, &type metadata for ForYouFeedSection, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_220447700(319, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_220447700(319, qword_281295308, type metadata accessor for StocksActivity.StockFeed.Series, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_22075EAA0(319, &qword_28127EBE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_220447700(319, qword_28128F390, type metadata accessor for ArticleUserInfoModel, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_220447700(319, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_22075EAA0(319, &qword_28127E908, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_22075EAA0(319, &qword_281293ED8, &type metadata for ScrollPosition, MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_22075D5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for StocksV2UserActivitySerializer();

  return MEMORY[0x2821D4698](a1, v5, a3);
}

uint64_t sub_22075D610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for StocksV2UserActivitySerializer();

  return MEMORY[0x2821D46A8](a1, v5, a3);
}

unint64_t sub_22075D65C(unint64_t a1)
{
  sub_220447700(0, &qword_28127DEC0, sub_22052BFB4, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899360;
  *(inited + 32) = 1635017060;
  *(inited + 40) = 0xE400000000000000;
  sub_22075EAF0(a1, 0);
  if (v1)
  {

    swift_setDeallocating();
    sub_22052BFB4();
    swift_arrayDestroy();
  }

  else
  {
    *(inited + 72) = MEMORY[0x277CC9318];
    *(inited + 48) = v4;
    *(inited + 56) = v5;
    a1 = sub_22052BDC4(inited);
    swift_setDeallocating();
    sub_22076087C(inited + 32, sub_22052BFB4);
  }

  return a1;
}

unint64_t sub_22075D784(uint64_t a1, unint64_t a2)
{
  sub_220447700(0, &qword_28127DEC0, sub_22052BFB4, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899360;
  *(inited + 32) = 1635017060;
  *(inited + 40) = 0xE400000000000000;
  sub_22075EAF0(a1, a2);
  if (v2)
  {

    swift_setDeallocating();
    sub_22052BFB4();
    swift_arrayDestroy();
  }

  else
  {
    *(inited + 72) = MEMORY[0x277CC9318];
    *(inited + 48) = v6;
    *(inited + 56) = v7;
    a2 = sub_22052BDC4(inited);
    swift_setDeallocating();
    sub_22076087C(inited + 32, sub_22052BFB4);
  }

  return a2;
}

uint64_t sub_22075D8BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for StocksV2UserActivitySerializer();

  return MEMORY[0x2821D46A0](a1, v5, a3);
}

uint64_t sub_22075D908(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  return (*(v4 + 8))(a1, v3, v4);
}

uint64_t sub_22075D978(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_2208928BC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x546E6F6974636573 && a2 == 0xEB00000000657079 || (sub_2208928BC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B636F7473 && a2 == 0xE500000000000000 || (sub_2208928BC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6565466B636F7473 && a2 == 0xEF73656972655364 || (sub_2208928BC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7972657571 && a2 == 0xE500000000000000 || (sub_2208928BC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C6369747261 && a2 == 0xE700000000000000 || (sub_2208928BC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_2208928BC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000 || (sub_2208928BC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6F506C6C6F726373 && a2 == 0xEE006E6F69746973 || (sub_2208928BC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002208D3070 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_2208928BC();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_22075DCB8(uint64_t a1)
{
  v2 = type metadata accessor for StocksActivity.StockFeed.Series(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22088685C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StocksActivity.StockFeed(0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = v47 - v17;
  v19 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220760BEC(a1, v22, type metadata accessor for StocksActivity);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_2206A1D94(0);
        v25 = *(v24 + 48);
        type metadata accessor for Localized();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v27 = [objc_opt_self() bundleForClass_];
        v28 = sub_220884CAC();

        v29 = sub_22088CC6C();
        (*(*(v29 - 8) + 8))(&v22[v25], v29);
        v30 = type metadata accessor for ForYouSectionDescriptor;
LABEL_8:
        v33 = v30;
        v34 = v22;
LABEL_17:
        sub_22076087C(v34, v33);
        return v28;
      }

      if (EnumCaseMultiPayload == 2)
      {
        sub_2207608DC(v22, v18, type metadata accessor for StocksActivity.StockFeed);
        type metadata accessor for Localized();
        v37 = swift_getObjCClassFromMetadata();
        v38 = [objc_opt_self() bundleForClass_];
        sub_220884CAC();

        sub_220448068(0, &qword_28127DE60, &qword_28127DE10, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_220899360;
        sub_220760BEC(v18, v14, type metadata accessor for StocksActivity.StockFeed);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_2207608DC(v14, v5, type metadata accessor for StocksActivity.StockFeed.Series);
          (*(v7 + 16))(v10, v5, v6);
          sub_22076087C(v5, type metadata accessor for StocksActivity.StockFeed.Series);
        }

        else
        {
          (*(v7 + 32))(v10, v14, v6);
        }

        v43 = sub_22088684C();
        v45 = v44;
        (*(v7 + 8))(v10, v6);
        *(v39 + 56) = MEMORY[0x277D837D0];
        *(v39 + 64) = sub_22048D860();
        *(v39 + 32) = v43;
        *(v39 + 40) = v45;
        v28 = sub_22089139C();

        v33 = type metadata accessor for StocksActivity.StockFeed;
        v34 = v18;
        goto LABEL_17;
      }

      goto LABEL_19;
    }

    goto LABEL_9;
  }

  switch(EnumCaseMultiPayload)
  {
    case 3:
LABEL_9:
      sub_22076087C(v22, type metadata accessor for StocksActivity);
      type metadata accessor for Localized();
      v35 = swift_getObjCClassFromMetadata();
      v36 = [objc_opt_self() bundleForClass_];
      v28 = sub_220884CAC();

      return v28;
    case 4:
      type metadata accessor for Localized();
      v31 = swift_getObjCClassFromMetadata();
      v32 = [objc_opt_self() bundleForClass_];
      v28 = sub_220884CAC();

      v30 = type metadata accessor for StocksActivity;
      goto LABEL_8;
    case 5:
      type metadata accessor for Localized();
      v40 = swift_getObjCClassFromMetadata();
      v41 = [objc_opt_self() bundleForClass_];
      v28 = sub_220884CAC();

      v42 = sub_220884E9C();
      (*(*(v42 - 8) + 8))(v22, v42);
      return v28;
  }

LABEL_19:
  v47[0] = 0;
  v47[1] = 0xE000000000000000;
  sub_22089254C();
  MEMORY[0x223D89680](0xD000000000000019, 0x80000002208D2E80);
  sub_22089264C();
  result = sub_22089267C();
  __break(1u);
  return result;
}

uint64_t sub_22075E564(uint64_t a1)
{
  v2 = type metadata accessor for StocksActivity.StockFeed.Series(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22088685C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StocksActivity.StockFeed(0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v34 - v17;
  v19 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220760BEC(a1, v22, type metadata accessor for StocksActivity);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = MEMORY[0x277D84F90];
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_2206A1D94(0);
      v29 = *(v28 + 48);
      v30 = sub_22088CC6C();
      (*(*(v30 - 8) + 8))(&v22[v29], v30);
      v25 = type metadata accessor for ForYouSectionDescriptor;
      goto LABEL_3;
    case 2:
      sub_2207608DC(v22, v18, type metadata accessor for StocksActivity.StockFeed);
      sub_22075EAA0(0, &qword_28127DEE8, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_220899360;
      sub_220760BEC(v18, v14, type metadata accessor for StocksActivity.StockFeed);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_2207608DC(v14, v5, type metadata accessor for StocksActivity.StockFeed.Series);
        (*(v7 + 16))(v10, v5, v6);
        sub_22076087C(v5, type metadata accessor for StocksActivity.StockFeed.Series);
      }

      else
      {
        (*(v7 + 32))(v10, v14, v6);
      }

      v31 = sub_22088681C();
      v33 = v32;
      (*(v7 + 8))(v10, v6);
      *(v26 + 32) = v31;
      *(v26 + 40) = v33;
      sub_22076087C(v18, type metadata accessor for StocksActivity.StockFeed);
      return v26;
    case 5:
      v27 = sub_220884E9C();
      (*(*(v27 - 8) + 8))(v22, v27);
      return MEMORY[0x277D84F90];
    case 11:
      sub_220447880(0);

      sub_220760A00(v22, &qword_281299060, MEMORY[0x277D69810]);
      return MEMORY[0x277D84F90];
    case 13:
      return result;
    default:
      v25 = type metadata accessor for StocksActivity;
LABEL_3:
      sub_22076087C(v22, v25);
      return MEMORY[0x277D84F90];
  }
}

id sub_22075E9D8(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CC34B8]) initWithItemContentType_];
  sub_22075DCB8(a1);
  v3 = sub_22089132C();

  [v2 setDisplayName_];

  sub_22075E564(a1);
  v4 = sub_2208916DC();

  [v2 setKeywords_];

  return v2;
}

void sub_22075EAA0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_22075EAF0(uint64_t a1, uint64_t a2)
{
  *&v221 = a2;
  v229 = sub_220884E9C();
  v222 = *(v229 - 8);
  MEMORY[0x28223BE20](v229, v3);
  v212 = &v204 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = type metadata accessor for StocksActivity.Article(0);
  MEMORY[0x28223BE20](v210, v5);
  v211 = &v204 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v218 = &v204 - v9;
  v10 = type metadata accessor for StocksActivity.StockFeed.Series(0);
  v11 = *(v10 - 8);
  v224 = v10;
  v225 = v11;
  MEMORY[0x28223BE20](v10, v12);
  v213 = &v204 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22088AD3C();
  v215 = *(v14 - 8);
  v216 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v214 = &v204 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = type metadata accessor for StocksActivity.StockFeed(0);
  MEMORY[0x28223BE20](v209, v17);
  v19 = &v204 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  *&v220 = &v204 - v22;
  v231 = sub_22088685C();
  v226 = *(v231 - 8);
  MEMORY[0x28223BE20](v231, v23);
  v219 = &v204 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v206 = &v204 - v27;
  v28 = type metadata accessor for ForYouSectionDescriptor(0);
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v204 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v217 = &v204 - v34;
  v227 = type metadata accessor for StocksActivityUserInfo(0);
  MEMORY[0x28223BE20](v227, v35);
  v37 = &v204 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v39);
  v41 = &v204 - v40;
  MEMORY[0x28223BE20](v42, v43);
  v45 = &v204 - v44;
  MEMORY[0x28223BE20](v46, v47);
  v207 = &v204 - v48;
  MEMORY[0x28223BE20](v49, v50);
  v208 = &v204 - v51;
  MEMORY[0x28223BE20](v52, v53);
  v205 = &v204 - v54;
  MEMORY[0x28223BE20](v55, v56);
  v204 = &v204 - v57;
  MEMORY[0x28223BE20](v58, v59);
  v61 = &v204 - v60;
  v62 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v62, v63);
  v223 = a1;
  v65 = a1;
  v66 = &v204 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220760BEC(v65, v66, type metadata accessor for StocksActivity);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v95 = v66;
      v96 = *v66;
      v97 = *(v95 + 1);
      sub_2208849EC();
      swift_allocObject();
      sub_2208849DC();
      StocksActivity.type.getter(v230);
      v98 = v230[0];
      v99 = v227;
      (*(v226 + 56))(&v45[*(v227 + 24)], 1, 1, v231);
      (*(v225 + 56))(&v45[v99[7]], 1, 1, v224);
      v100 = v99[9];
      v101 = type metadata accessor for ArticleUserInfoModel(0);
      (*(*(v101 - 8) + 56))(&v45[v100], 1, 1, v101);
      (*(v222 + 56))(&v45[v99[10]], 1, 1, v229);
      *v45 = v98;
      v45[1] = 2;
      v102 = &v45[v99[8]];
      *v102 = v96;
      *(v102 + 1) = v97;
      v103 = &v45[v99[11]];
      *v103 = 0;
      v103[8] = 1;
      v104 = &v45[v99[12]];
      *v104 = xmmword_2208B2020;
      *(v104 + 2) = 0;
      *(v104 + 3) = 0;
      v105 = &v45[v99[13]];
      *v105 = 0;
      *(v105 + 1) = 0;
      sub_220448D90(&qword_2812960B8, type metadata accessor for StocksActivityUserInfo, &unk_2208B2078);
      sub_2208849CC();
      sub_22076087C(v45, type metadata accessor for StocksActivityUserInfo);

      return;
    }

    v76 = v231;
    if (EnumCaseMultiPayload == 4)
    {
      v77 = v218;
      sub_2207608DC(v66, v218, type metadata accessor for StocksActivity.Article);
      v78 = v211;
      sub_220760BEC(v77, v211, type metadata accessor for StocksActivity.Article);
      v79 = swift_getEnumCaseMultiPayload();
      v80 = type metadata accessor for StocksActivity.Article;
      v81 = v229;
      if (v79 == 1)
      {
        v82 = 0;
      }

      else
      {
        sub_2204481D8(0);
        v82 = *(v78 + *(v157 + 48));
        sub_2207607F4(v78 + *(v157 + 64));
        v80 = MEMORY[0x277D2FB40];
      }

      v158 = v221;
      sub_22076087C(v78, v80);
      if (v158)
      {
        v160 = v214;
        v159 = v215;
        v161 = v216;
        (*(v215 + 104))(v214, *MEMORY[0x277D6D3C8], v216);
        v162 = sub_2206FA360(v160, v158);
        (*(v159 + 8))(v160, v161);
        v82 |= v162 & ((v82 & 1) == 0);
      }

      sub_2208849EC();
      swift_allocObject();
      sub_2208849DC();
      StocksActivity.type.getter(v230);
      v163 = v230[0];
      v164 = v227;
      (*(v226 + 56))(&v41[*(v227 + 24)], 1, 1, v76);
      (*(v225 + 56))(&v41[v164[7]], 1, 1, v224);
      v165 = v164[9];
      v166 = v218;
      sub_2207DE838(&v41[v165]);
      v167 = type metadata accessor for ArticleUserInfoModel(0);
      (*(*(v167 - 8) + 56))(&v41[v165], 0, 1, v167);
      (*(v222 + 56))(&v41[v164[10]], 1, 1, v81);
      *v41 = v163;
      v41[1] = 2;
      v168 = &v41[v164[8]];
      *v168 = 0;
      *(v168 + 1) = 0;
      v169 = &v41[v164[11]];
      *v169 = v82;
      v169[8] = 0;
      v170 = &v41[v164[12]];
      *v170 = xmmword_2208B2020;
      *(v170 + 2) = 0;
      *(v170 + 3) = 0;
      v171 = &v41[v164[13]];
      *v171 = 0;
      *(v171 + 1) = 0;
      sub_220448D90(&qword_2812960B8, type metadata accessor for StocksActivityUserInfo, &unk_2208B2078);
      sub_2208849CC();

      sub_22076087C(v41, type metadata accessor for StocksActivityUserInfo);
      sub_22076087C(v166, type metadata accessor for StocksActivity.Article);
      return;
    }

    v129 = v229;
    if (EnumCaseMultiPayload == 5)
    {
      v130 = v222;
      v131 = v212;
      (*(v222 + 32))(v212, v66, v229);
      sub_2208849EC();
      swift_allocObject();
      sub_2208849DC();
      StocksActivity.type.getter(v230);
      v132 = v230[0];
      v133 = v227;
      v134 = v76;
      v135 = v131;
      (*(v226 + 56))(&v37[*(v227 + 24)], 1, 1, v134);
      (*(v225 + 56))(&v37[v133[7]], 1, 1, v224);
      v136 = v133[9];
      v137 = type metadata accessor for ArticleUserInfoModel(0);
      (*(*(v137 - 8) + 56))(&v37[v136], 1, 1, v137);
      v138 = v133[10];
      (*(v130 + 16))(&v37[v138], v135, v129);
      (*(v130 + 56))(&v37[v138], 0, 1, v129);
      *v37 = v132;
      v37[1] = 2;
      v139 = &v37[v133[8]];
      *v139 = 0;
      *(v139 + 1) = 0;
      v140 = &v37[v133[11]];
      *v140 = 0;
      v140[8] = 1;
      v141 = &v37[v133[12]];
      *v141 = xmmword_2208B2020;
      *(v141 + 2) = 0;
      *(v141 + 3) = 0;
      v142 = &v37[v133[13]];
      *v142 = 0;
      *(v142 + 1) = 0;
      sub_220448D90(&qword_2812960B8, type metadata accessor for StocksActivityUserInfo, &unk_2208B2078);
      sub_2208849CC();

      sub_22076087C(v37, type metadata accessor for StocksActivityUserInfo);
      (*(v130 + 8))(v135, v129);
      return;
    }

LABEL_34:
    v230[0] = 0;
    v230[1] = 0xE000000000000000;
    sub_22089254C();

    strcpy(v230, "This activity ");
    HIBYTE(v230[1]) = -18;
    v203 = StocksActivity.identifier.getter();
    MEMORY[0x223D89680](v203);

    MEMORY[0x223D89680](0xD000000000000021, 0x80000002208D3040);
    sub_22089267C();
    __break(1u);
    return;
  }

  if (!EnumCaseMultiPayload)
  {
    v83 = *(v66 + 4);
    v84 = *(v66 + 5);
    sub_2208849EC();
    swift_allocObject();
    v85 = *v66;
    v220 = *(v66 + 1);
    v221 = v85;
    sub_2208849DC();
    StocksActivity.type.getter(v230);
    v86 = v230[0];
    v87 = v227;
    (*(v226 + 56))(&v61[*(v227 + 24)], 1, 1, v231);
    (*(v225 + 56))(&v61[v87[7]], 1, 1, v224);
    v88 = v87[9];
    v89 = type metadata accessor for ArticleUserInfoModel(0);
    (*(*(v89 - 8) + 56))(&v61[v88], 1, 1, v89);
    (*(v222 + 56))(&v61[v87[10]], 1, 1, v229);
    *v61 = v86;
    v61[1] = 2;
    v90 = &v61[v87[8]];
    *v90 = 0;
    *(v90 + 1) = 0;
    v91 = &v61[v87[11]];
    *v91 = 0;
    v91[8] = 1;
    v92 = &v61[v87[12]];
    v93 = v220;
    *v92 = v221;
    *(v92 + 1) = v93;
    v94 = &v61[v87[13]];
    *v94 = v83;
    *(v94 + 1) = v84;
    sub_220448D90(&qword_2812960B8, type metadata accessor for StocksActivityUserInfo, &unk_2208B2078);
    sub_2208849CC();
    sub_22076087C(v61, type metadata accessor for StocksActivityUserInfo);

    return;
  }

  v68 = v231;
  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v106 = v220;
      sub_2207608DC(v66, v220, type metadata accessor for StocksActivity.StockFeed);
      sub_220760BEC(v106, v19, type metadata accessor for StocksActivity.StockFeed);
      v107 = swift_getEnumCaseMultiPayload();
      v108 = v222;
      v109 = v219;
      if (v107 == 1)
      {
        sub_2204471FC(0, &qword_2812952A0, type metadata accessor for StocksActivity.StockFeed.Series);
        v111 = *&v19[*(v110 + 48)];
        sub_2207608DC(v19, v213, type metadata accessor for StocksActivity.StockFeed.Series);
        v112 = v226;
        v113 = v221;
        if (v221)
        {
          v115 = v214;
          v114 = v215;
          v116 = v216;
          (*(v215 + 104))(v214, *MEMORY[0x277D6D3C8], v216);
          v117 = sub_2206FA360(v115, v113);
          (*(v114 + 8))(v115, v116);
          v111 |= v117 & ((v111 & 1) == 0);
        }

        sub_2208849EC();
        swift_allocObject();
        sub_2208849DC();
        StocksActivity.type.getter(v230);
        v118 = v230[0];
        v119 = v227;
        v120 = v207;
        (*(v112 + 56))(&v207[*(v227 + 24)], 1, 1, v68);
        v121 = v119[7];
        v122 = v213;
        sub_220760BEC(v213, &v120[v121], type metadata accessor for StocksActivity.StockFeed.Series);
        (*(v225 + 56))(&v120[v121], 0, 1, v224);
        v123 = v119[9];
        v124 = type metadata accessor for ArticleUserInfoModel(0);
        (*(*(v124 - 8) + 56))(&v120[v123], 1, 1, v124);
        (*(v108 + 56))(&v120[v119[10]], 1, 1, v229);
        *v120 = v118;
        v120[1] = 2;
        v125 = &v120[v119[8]];
        *v125 = 0;
        v125[1] = 0;
        v126 = &v120[v119[11]];
        *v126 = v111;
        v126[8] = 0;
        v127 = &v120[v119[12]];
        *v127 = xmmword_2208B2020;
        *(v127 + 2) = 0;
        *(v127 + 3) = 0;
        v128 = &v120[v119[13]];
        *v128 = 0;
        v128[1] = 0;
        sub_220448D90(&qword_2812960B8, type metadata accessor for StocksActivityUserInfo, &unk_2208B2078);
        sub_2208849CC();

        sub_22076087C(v120, type metadata accessor for StocksActivityUserInfo);
        sub_22076087C(v122, type metadata accessor for StocksActivity.StockFeed.Series);
        sub_22076087C(v220, type metadata accessor for StocksActivity.StockFeed);
      }

      else
      {
        sub_2204471FC(0, &qword_281299050, MEMORY[0x277D69810]);
        v173 = *&v19[*(v172 + 48)];
        v174 = v226;
        (*(v226 + 32))(v109, v19, v68);
        v175 = v221;
        if (v221)
        {
          v177 = v214;
          v176 = v215;
          v178 = v216;
          (*(v215 + 104))(v214, *MEMORY[0x277D6D3C8], v216);
          v179 = sub_2206FA360(v177, v175);
          (*(v176 + 8))(v177, v178);
          v173 |= v179 & ((v173 & 1) == 0);
        }

        sub_2208849EC();
        swift_allocObject();
        sub_2208849DC();
        StocksActivity.type.getter(v230);
        v180 = v230[0];
        v181 = v227;
        v182 = *(v227 + 24);
        v183 = v208;
        (*(v174 + 16))(&v208[v182], v219, v68);
        (*(v174 + 56))(&v183[v182], 0, 1, v68);
        (*(v225 + 56))(&v183[v181[7]], 1, 1, v224);
        v184 = v181[9];
        v185 = type metadata accessor for ArticleUserInfoModel(0);
        (*(*(v185 - 8) + 56))(&v183[v184], 1, 1, v185);
        (*(v108 + 56))(&v183[v181[10]], 1, 1, v229);
        *v183 = v180;
        v183[1] = 2;
        v186 = &v183[v181[8]];
        *v186 = 0;
        v186[1] = 0;
        v187 = &v183[v181[11]];
        *v187 = v173;
        v187[8] = 0;
        v188 = &v183[v181[12]];
        *v188 = xmmword_2208B2020;
        *(v188 + 2) = 0;
        *(v188 + 3) = 0;
        v189 = &v183[v181[13]];
        *v189 = 0;
        v189[1] = 0;
        sub_220448D90(&qword_2812960B8, type metadata accessor for StocksActivityUserInfo, &unk_2208B2078);
        sub_2208849CC();

        sub_22076087C(v183, type metadata accessor for StocksActivityUserInfo);
        (*(v174 + 8))(v219, v68);
        sub_22076087C(v220, type metadata accessor for StocksActivity.StockFeed);
      }

      return;
    }

    goto LABEL_34;
  }

  sub_2206A1D94(0);
  v70 = *(v69 + 48);
  v71 = v217;
  sub_2207608DC(v66, v217, type metadata accessor for ForYouSectionDescriptor);
  sub_220760BEC(v71, v31, type metadata accessor for ForYouSectionDescriptor);
  v72 = swift_getEnumCaseMultiPayload();
  v73 = v229;
  if ((v72 - 1) < 2)
  {
    sub_22076087C(v31, type metadata accessor for ForYouSectionDescriptor);
    sub_220760944();
    swift_allocError();
    *v74 = 0;
    v74[1] = 0;
    swift_willThrow();
    v75 = v71;
LABEL_31:
    sub_22076087C(v75, type metadata accessor for ForYouSectionDescriptor);
    v200 = sub_22088CC6C();
    (*(*(v200 - 8) + 8))(&v66[v70], v200);
    return;
  }

  if (v72)
  {
    sub_2208849EC();
    swift_allocObject();
    sub_2208849DC();
    StocksActivity.type.getter(v230);
    v190 = v230[0];
    v191 = v227;
    v192 = v204;
    (*(v226 + 56))(&v204[*(v227 + 24)], 1, 1, v68);
    (*(v225 + 56))(&v192[v191[7]], 1, 1, v224);
    v193 = v191[9];
    v194 = type metadata accessor for ArticleUserInfoModel(0);
    (*(*(v194 - 8) + 56))(&v192[v193], 1, 1, v194);
    (*(v222 + 56))(&v192[v191[10]], 1, 1, v73);
    *v192 = v190;
    v192[1] = 0;
    v195 = &v192[v191[8]];
    *v195 = 0;
    v195[1] = 0;
    v196 = &v192[v191[11]];
    *v196 = 0;
    v196[8] = 1;
    v197 = &v192[v191[12]];
    *v197 = xmmword_2208B2020;
    *(v197 + 2) = 0;
    *(v197 + 3) = 0;
    v198 = &v192[v191[13]];
    *v198 = 0;
    v198[1] = 0;
    sub_220448D90(&qword_2812960B8, type metadata accessor for StocksActivityUserInfo, &unk_2208B2078);
    v199 = v228;
    sub_2208849CC();
    if (v199)
    {

      sub_22076087C(v192, type metadata accessor for StocksActivityUserInfo);
      v75 = v217;
      goto LABEL_31;
    }

    sub_22076087C(v192, type metadata accessor for StocksActivityUserInfo);
    sub_22076087C(v217, type metadata accessor for ForYouSectionDescriptor);
    v202 = sub_22088CC6C();
    (*(*(v202 - 8) + 8))(&v66[v70], v202);
  }

  else
  {
    *&v220 = v70;
    *&v221 = v66;
    v143 = v226;
    v144 = v206;
    (*(v226 + 32))(v206, v31, v68);
    sub_2208849EC();
    swift_allocObject();
    sub_2208849DC();
    StocksActivity.type.getter(v230);
    v145 = v230[0];
    v146 = v227;
    v147 = *(v227 + 24);
    v148 = v205;
    (*(v143 + 16))(&v205[v147], v144, v68);
    (*(v143 + 56))(&v148[v147], 0, 1, v68);
    (*(v225 + 56))(&v148[v146[7]], 1, 1, v224);
    v149 = v146[9];
    v150 = type metadata accessor for ArticleUserInfoModel(0);
    (*(*(v150 - 8) + 56))(&v148[v149], 1, 1, v150);
    (*(v222 + 56))(&v148[v146[10]], 1, 1, v73);
    *v148 = v145;
    v148[1] = 1;
    v151 = &v148[v146[8]];
    *v151 = 0;
    v151[1] = 0;
    v152 = &v148[v146[11]];
    *v152 = 0;
    v152[8] = 1;
    v153 = &v148[v146[12]];
    *v153 = xmmword_2208B2020;
    *(v153 + 2) = 0;
    *(v153 + 3) = 0;
    v154 = &v148[v146[13]];
    *v154 = 0;
    v154[1] = 0;
    sub_220448D90(&qword_2812960B8, type metadata accessor for StocksActivityUserInfo, &unk_2208B2078);
    v155 = v228;
    sub_2208849CC();

    sub_22076087C(v148, type metadata accessor for StocksActivityUserInfo);
    (*(v143 + 8))(v144, v68);
    sub_22076087C(v217, type metadata accessor for ForYouSectionDescriptor);
    if (v155)
    {
      v156 = sub_22088CC6C();
      (*(*(v156 - 8) + 8))(v221 + v220, v156);
    }

    else
    {
      v201 = sub_22088CC6C();
      (*(*(v201 - 8) + 8))(v221 + v220, v201);
    }
  }
}

uint64_t sub_2207607F4(uint64_t a1)
{
  sub_220448068(0, &qword_281285B20, &qword_281285B30, &protocol descriptor for ArticleScienceDataProviderType, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22076087C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2207608DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_220760944()
{
  result = qword_27CF59590;
  if (!qword_27CF59590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59590);
  }

  return result;
}

unint64_t sub_220760998()
{
  result = qword_2812960D0;
  if (!qword_2812960D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812960D0);
  }

  return result;
}

double sub_2207609EC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_220760A00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_220447700(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_220760A70()
{
  result = qword_281299838;
  if (!qword_281299838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281299838);
  }

  return result;
}

unint64_t sub_220760AC4()
{
  result = qword_281299840;
  if (!qword_281299840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281299840);
  }

  return result;
}

uint64_t sub_220760B18(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_220447700(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_220760B98()
{
  result = qword_27CF59598;
  if (!qword_27CF59598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59598);
  }

  return result;
}

uint64_t sub_220760BEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_220760C54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220760998();
    v7 = a3(a1, &type metadata for StocksActivityUserInfo.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220760CB8()
{
  result = qword_2812960E8;
  if (!qword_2812960E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812960E8);
  }

  return result;
}

unint64_t sub_220760D0C()
{
  result = qword_281291A68;
  if (!qword_281291A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281291A68);
  }

  return result;
}

unint64_t sub_220760D60()
{
  result = qword_281293EE0;
  if (!qword_281293EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281293EE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StocksActivityUserInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StocksActivityUserInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_220760F18()
{
  result = qword_27CF595A0;
  if (!qword_27CF595A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF595A0);
  }

  return result;
}

unint64_t sub_220760F70()
{
  result = qword_2812960C0;
  if (!qword_2812960C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812960C0);
  }

  return result;
}

unint64_t sub_220760FC8()
{
  result = qword_2812960C8;
  if (!qword_2812960C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812960C8);
  }

  return result;
}

uint64_t sub_22076103C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t sub_220761108()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t sub_2207611D0()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t sub_220761288()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

id sub_22076137C(void *a1, void *a2)
{
  type metadata accessor for WatchlistCreationAlert.Localization();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = [v5 bundleForClass_];
  sub_220884CAC();

  v7 = sub_22089132C();

  [a1 setPlaceholder_];

  type metadata accessor for Localized();
  v8 = swift_getObjCClassFromMetadata();
  v9 = [v5 bundleForClass_];
  sub_220884CAC();

  v10 = sub_22089132C();

  [a1 setAccessibilityLabel_];

  if (a2)
  {
    v11 = [v5 bundleForClass_];
    sub_220884CAC();

    v12 = sub_22089132C();

    [a2 setText_];
  }

  [a1 setEnablesReturnKeyAutomatically_];
  [a1 setReturnKeyType_];

  return [a1 setAutocapitalizationType_];
}

uint64_t sub_2207616D4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_220888CFC();

  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  v7 = sub_220888D9C();
  v8 = sub_220888E4C();

  return v8;
}

void sub_220761858(void *a1, uint64_t a2, char *a3, __n128 a4)
{
  v81 = a2;
  v88 = sub_2208887CC();
  v104 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v6);
  v87 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220762514(0, &qword_281298898, MEMORY[0x277D6CBF0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v101 = &v75 - v10;
  v97 = sub_22088880C();
  v102 = *(v97 - 8);
  MEMORY[0x28223BE20](v97, v11);
  v86 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_220884E9C();
  v13 = *(v89 - 8);
  MEMORY[0x28223BE20](v89, v14);
  v100 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v99 = &v75 - v18;
  MEMORY[0x28223BE20](v19, v20);
  v98 = &v75 - v21;
  v80 = sub_22088831C();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80, v22);
  v78 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = swift_allocObject();
  *(v82 + 16) = a3;
  v24 = MEMORY[0x277D84560];
  sub_220762514(0, &qword_28127E130, MEMORY[0x277D6CCC0], MEMORY[0x277D84560]);
  sub_220888A9C();
  v25 = swift_allocObject();
  v105 = xmmword_220899360;
  *(v25 + 16) = xmmword_220899360;
  sub_220762514(0, &qword_28127E140, MEMORY[0x277D6CCA0], v24);
  v26 = *(sub_220888A2C() - 8);
  v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v105;
  v29 = (v28 + v27);
  *v29 = 0x6C6F626D7973;
  v29[1] = 0xE600000000000000;
  (*(v26 + 104))();
  _Block_copy(a3);
  sub_2205CEF04(MEMORY[0x277D84F90]);
  v103 = v25;
  sub_220888A3C();
  v30 = [a1 documentController];
  if (!v30)
  {
    (*(a3 + 2))(a3);
    v63 = objc_allocWithZone(MEMORY[0x277D30EA8]);
    v110 = nullsub_1;
    v111 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v107 = 1107296256;
    v108 = sub_2204C35E8;
    v109 = &block_descriptor_38;
    v64 = _Block_copy(&aBlock);

    v65 = [v63 initWithBlock_];
    _Block_release(v64);
    if (v65)
    {

      goto LABEL_31;
    }

    goto LABEL_36;
  }

  v76 = v30;
  v31 = [v30 additions];
  sub_220762578();
  v32 = sub_2208916EC();

  v33 = v32 & 0xFFFFFFFFFFFFFF8;
  if (v32 >> 62)
  {
LABEL_34:
    v34 = sub_2208926AC();
  }

  else
  {
    v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = v89;
  v75 = a3;
  if (!v34)
  {
    v77 = MEMORY[0x277D84F90];
    goto LABEL_29;
  }

  v36 = 0;
  v37 = 0;
  *&v105 = v32 & 0xC000000000000001;
  v93 = (v13 + 16);
  v94 = (v13 + 32);
  v92 = (v13 + 8);
  v91 = (v102 + 56);
  v85 = (v102 + 32);
  v84 = (v104 + 8);
  v83 = (v102 + 8);
  v77 = MEMORY[0x277D84F90];
  v104 = v34;
  v95 = v33;
  v96 = v32;
  do
  {
    v38 = v36;
    v39 = v35;
    while (1)
    {
      if (v105)
      {
        v40 = MEMORY[0x223D8A700](v38, v32);
      }

      else
      {
        if (v38 >= *(v33 + 16))
        {
          goto LABEL_33;
        }

        v40 = *(v32 + 8 * v38 + 32);
      }

      a3 = v40;
      v36 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      objc_opt_self();
      v41 = swift_dynamicCastObjCClass();
      if (v41)
      {
        break;
      }

LABEL_8:

      ++v38;
      if (v36 == v104)
      {
        goto LABEL_29;
      }
    }

    v13 = v41;
    v42 = a3;
    v43 = [v13 URL];
    if (!v43)
    {

      goto LABEL_8;
    }

    v102 = v42;
    v44 = v99;
    v45 = v43;
    sub_220884E4C();

    v46 = v98;
    (*v94)(v98, v44, v39);
    (*v93)(v100, v46, v39);
    sub_220888A0C();
    swift_allocObject();
    v47 = sub_2208889EC();
    v48 = v39;
    v49 = v101;
    v13 = v47;
    sub_2208889FC();
    if (v37)
    {

      (*v92)(v46, v48);
      (*v91)(v49, 1, 1, v97);
      sub_2207625C4(v49);
      v37 = 0;
      v33 = v95;
      v32 = v96;
      v39 = v48;
      goto LABEL_8;
    }

    v90 = 0;
    v50 = v97;
    (*v91)(v49, 0, 1, v97);
    v51 = v86;
    (*v85)(v86, v49, v50);
    v52 = v87;
    sub_2208887EC();
    v13 = sub_2208887BC();
    v54 = v53;

    v55 = v102;

    (*v84)(v52, v88);
    v56 = v51;
    v57 = v54;
    v39 = v89;
    (*v83)(v56, v50);
    (*v92)(v46, v39);
    if (!v57)
    {
      v33 = v95;
      v32 = v96;
      v37 = v90;
      goto LABEL_8;
    }

    v35 = v39;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v77 = sub_22045E924(0, *(v77 + 2) + 1, 1, v77);
    }

    v37 = v90;
    v59 = *(v77 + 2);
    v58 = *(v77 + 3);
    v60 = v104;
    if (v59 >= v58 >> 1)
    {
      v77 = sub_22045E924((v58 > 1), v59 + 1, 1, v77);
      v60 = v104;
    }

    v61 = v77;
    *(v77 + 2) = v59 + 1;
    v62 = &v61[16 * v59];
    *(v62 + 4) = v13;
    *(v62 + 5) = v57;
    v33 = v95;
    v32 = v96;
  }

  while (v36 != v60);
LABEL_29:

  __swift_project_boxed_opaque_existential_1((v81 + OBJC_IVAR____TtC8StocksUI19LinkedStockProvider_metadataManager), *(v81 + OBJC_IVAR____TtC8StocksUI19LinkedStockProvider_metadataManager + 24));
  v66 = v79;
  v67 = v78;
  v68 = v80;
  (*(v79 + 104))(v78, *MEMORY[0x277D6CA28], v80);
  a3 = v77;
  sub_22088628C();
  (*(v66 + 8))(v67, v68);
  v69 = swift_allocObject();
  v70 = v82;
  *(v69 + 16) = sub_2205889EC;
  *(v69 + 24) = v70;

  v71 = sub_220888D9C();
  type metadata accessor for LinkedStockProvider();
  sub_220888E5C();

  v72 = objc_allocWithZone(MEMORY[0x277D30EA8]);
  v110 = nullsub_1;
  v111 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v107 = 1107296256;
  v108 = sub_2204C35E8;
  v109 = &block_descriptor_7;
  v73 = _Block_copy(&aBlock);

  v74 = [v72 initWithBlock_];
  _Block_release(v73);
  if (!v74)
  {
    _Block_release(v75);
    __break(1u);
LABEL_36:
    _Block_release(a3);
    __break(1u);
    return;
  }

LABEL_31:
}

void sub_220762514(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_220762578()
{
  result = qword_28127E8E0;
  if (!qword_28127E8E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28127E8E0);
  }

  return result;
}

uint64_t sub_2207625C4(uint64_t a1)
{
  sub_220762514(0, &qword_281298898, MEMORY[0x277D6CBF0], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2207626A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (*(Strong + OBJC_IVAR____TtC8StocksUI23StockListViewController_toolbarState) == 2)
    {
LABEL_9:

      return;
    }

    sub_2204A0BAC(*(Strong + OBJC_IVAR____TtC8StocksUI23StockListViewController_toolbarState) & 1, HIBYTE(*(Strong + OBJC_IVAR____TtC8StocksUI23StockListViewController_toolbarState)) & 1);
    if (sub_22088F0DC())
    {
      sub_22044D56C(0, &qword_28127E850, 0x277D751E0);
      v4 = sub_2208916DC();
      v7.receiver = v3;
      v7.super_class = type metadata accessor for StockListViewController(0);
      objc_msgSendSuper2(&v7, sel_setToolbarItems_animated_, v4, 1);
    }

    else
    {
      v5 = sub_220891C4C();
      if (!v5)
      {
LABEL_8:

        goto LABEL_9;
      }

      v6 = v5;
      sub_22044D56C(0, &qword_28127E850, 0x277D751E0);
      v4 = sub_2208916DC();
      [v6 setToolbarItems:v4 animated:1];
    }

    goto LABEL_8;
  }
}