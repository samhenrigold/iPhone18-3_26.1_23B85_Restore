uint64_t sub_22786EA94()
{
  v1 = *(*v0 + 48);
  *(*v0 + 344) = v1;
  if (v1)
  {
    v2 = sub_22786EC80;
  }

  else
  {
    v2 = sub_22786EBA4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22786EBA4()
{
  v1 = *(v0 + 328);
  v3 = *(v0 + 312);
  v2 = *(v0 + 320);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22786EC80(uint64_t a1)
{
  v2 = *(v1 + 312);
  v3 = *(v1 + 320);
  swift_willThrow();

  v4 = *(v1 + 328);

  v5 = *(v1 + 8);

  return v5();
}

unint64_t sub_22786ED78()
{
  result = qword_27D7D64A0;
  if (!qword_27D7D64A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D64A0);
  }

  return result;
}

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_22786EE28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22786EE70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_22786EF58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22786EFA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22786F010@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1;
  v169 = a1;
  v282 = *MEMORY[0x277D85DE8];
  v4 = sub_2278C71C0();
  v183 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v190 = &v143 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2278C6870();
  v172 = *(v6 - 8);
  v173 = v6;
  MEMORY[0x28223BE20](v6);
  GlanceActivitySharingProvider = &v143 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = type metadata accessor for LegacyWeeklySummaryProvider(0);
  MEMORY[0x28223BE20](v188);
  v189 = &v143 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2278C6E40();
  v181 = *(v9 - 8);
  v182 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v143 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2278C7040();
  v186 = *(v12 - 8);
  v187 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v143 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + 120);
  v180 = FIExperienceTypeWithHealthStoreAndDefaultExperienceType();
  GlanceMessageToneProvider = type metadata accessor for FirstGlanceMessageToneProvider();
  v184 = swift_allocObject();
  *(v184 + 16) = v15;
  v16 = *(v3 + 128);
  v17 = v15;
  v18 = v16;
  v185 = v14;
  sub_2278C7030();
  v273[0] = 0;
  v19 = [v17 wheelchairUseWithError_];
  if (v19)
  {
    v20 = v19;
    v21 = v273[0];
    v178 = [v20 wheelchairUse];

    sub_2278C7530();
    v22 = sub_2278C7520();
    type metadata accessor for ActivitySharingQuery();
    v23 = swift_allocObject();
    v174 = v23;
    *(v23 + 16) = v22;
    *(v23 + 24) = 0;
    v167 = v17;
    v175 = v11;
    sub_2278C6E30();
    sub_2278040AC(v3 + 40, v273);
    v24 = __swift_mutable_project_boxed_opaque_existential_1(v273, v273[3]);
    v166 = &v143;
    MEMORY[0x28223BE20](v24);
    v26 = &v143 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v27 + 16))(v26);
    v168 = v2;
    v276 = &type metadata for AchievementQuery;
    v277 = &off_283AE99F8;
    v28 = type metadata accessor for DateProvider(0);
    v270 = v28;
    v177 = v28;
    v271 = &off_283AE99D8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v269);
    v176 = type metadata accessor for DateProvider;
    sub_2278712E0(v26, boxed_opaque_existential_1, type metadata accessor for DateProvider);
    v30 = type metadata accessor for AchievementDataSource();
    v31 = objc_allocWithZone(v30);
    __swift_mutable_project_boxed_opaque_existential_1(v275, v276);
    v32 = __swift_mutable_project_boxed_opaque_existential_1(v269, v270);
    MEMORY[0x28223BE20](v32);
    v170 = v4;
    v34 = &v143 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v35 + 16))(v34);
    v266 = &type metadata for AchievementQuery;
    v267 = &off_283AE99F8;
    v280 = v28;
    v281 = &off_283AE99D8;
    v36 = __swift_allocate_boxed_opaque_existential_1(v279);
    sub_2278712E0(v34, v36, type metadata accessor for DateProvider);
    sub_2278040AC(&v265, &v31[OBJC_IVAR____TtC23FitnessCoachingServices21AchievementDataSource_query]);
    *&v31[OBJC_IVAR____TtC23FitnessCoachingServices21AchievementDataSource_state] = 0;
    sub_2278040AC(v279, &v31[OBJC_IVAR____TtC23FitnessCoachingServices21AchievementDataSource_dateProvider]);
    v191.receiver = v31;
    v191.super_class = v30;
    v37 = objc_msgSendSuper2(&v191, sel_init);
    __swift_destroy_boxed_opaque_existential_0(v279);
    __swift_destroy_boxed_opaque_existential_0(&v265);
    __swift_destroy_boxed_opaque_existential_0(v269);
    __swift_destroy_boxed_opaque_existential_0(v275);
    __swift_destroy_boxed_opaque_existential_0(v273);
    v165 = [objc_allocWithZone(FCSFirstGlanceAchievementEvaluator) initWithDataSource_];
    v166 = sub_227870910(v3);
    sub_2278040AC(v3, v275);
    sub_2278040AC(v3 + 40, v278);
    v278[5] = [objc_allocWithZone(MEMORY[0x277D09D18]) &selRef_dateFromString_];
    sub_2278040AC(v3, v273);
    v38 = v189;
    v39 = v188;
    sub_2278040AC(v3 + 40, v189 + *(v188 + 24));
    sub_2278040AC(v273, v38);
    v41 = GlanceActivitySharingProvider;
    v40 = v172;
    v42 = v173;
    (v172[13])(GlanceActivitySharingProvider, *MEMORY[0x277CC9830], v173);
    sub_2278C6880();
    (v40[1])(v41, v42);
    __swift_destroy_boxed_opaque_existential_0(v273);
    *(v38 + *(v39 + 28)) = v178;
    sub_2278040AC(v3, v273);
    v43 = v167;
    sub_2278C71B0();
    v273[5] = &off_283AECDC0;
    v273[4] = v30;
    v273[1] = v37;
    sub_2278040AC(v3 + 40, v274);
    v273[0] = v165;
    v274[5] = v180;
    v44 = [objc_allocWithZone(MEMORY[0x277D095A8]) initWithHealthStore_];
    sub_2278040AC(v3 + 40, v269);
    sub_2278040AC(v3, &v265);
    v45 = __swift_mutable_project_boxed_opaque_existential_1(v269, v270);
    MEMORY[0x28223BE20](v45);
    v47 = &v143 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v48 + 16))(v47);
    v49 = v166;
    v167 = v49;
    v50 = v44;
    v173 = sub_227870E7C(v47, &v265, v49, v50);
    __swift_destroy_boxed_opaque_existential_0(v269);
    GlanceActivitySharingProvider = type metadata accessor for FirstGlanceActivitySharingProvider();
    v51 = swift_allocObject();
    v172 = v51;
    v51[2] = v174;
    v51[3] = &off_283AEB1F0;
    v51[4] = 0;
    sub_2278040AC(v3 + 40, v269);
    v52 = MEMORY[0x277D098A0];
    v53 = v182;
    v272[3] = v182;
    v272[4] = MEMORY[0x277D098A0];
    v54 = __swift_allocate_boxed_opaque_existential_1(v272);
    v55 = *(v181 + 16);
    v56 = v175;
    v55(v54, v175, v53);
    v272[5] = v50;
    sub_2278040AC(v3 + 40, &v265);
    v268[3] = v53;
    v268[4] = v52;
    v57 = __swift_allocate_boxed_opaque_existential_1(v268);
    v55(v57, v56, v53);
    v58 = objc_allocWithZone(MEMORY[0x277CBDAB8]);

    v59 = v173;

    v60 = v172;

    v61 = [v58 init];
    sub_2278040AC(v3 + 40, v279);
    sub_2278040AC(v3 + 80, v264);
    v62 = v184;

    v164 = sub_2278C7440();
    v63 = __swift_mutable_project_boxed_opaque_existential_1(v279, v280);
    v166 = &v143;
    MEMORY[0x28223BE20](v63);
    v65 = &v143 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v66 + 16))(v65);
    v67 = __swift_mutable_project_boxed_opaque_existential_1(v264, v264[3]);
    v165 = &v143;
    MEMORY[0x28223BE20](v67);
    v69 = (&v143 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v70 + 16))(v69);
    v71 = *v69;
    v262 = &type metadata for FirstGlanceAchievementProvider;
    v263 = &off_283AEBDD0;
    v261[0] = swift_allocObject();
    sub_2278710C4(v273, v261[0] + 16);
    GlanceActivityDataProvider = type metadata accessor for FirstGlanceActivityDataProvider();
    v260 = &off_283AEB590;
    v259 = GlanceActivityDataProvider;
    v258[0] = v59;
    v257 = &off_283AEA370;
    v256 = GlanceActivitySharingProvider;
    v255[0] = v60;
    v254 = &off_283AEC2E0;
    v253 = &type metadata for ContactStore;
    v252[0] = v61;
    v250 = v177;
    v251 = &off_283AE99D8;
    v72 = __swift_allocate_boxed_opaque_existential_1(v249);
    sub_2278712E0(v65, v72, v176);
    v158 = type metadata accessor for FitnessModeObserver();
    v248 = &off_283AEBF40;
    v247 = v158;
    v246[0] = v71;
    v244 = v188;
    v245 = &off_283AECF50;
    v73 = __swift_allocate_boxed_opaque_existential_1(v243);
    sub_227871120(v189, v73);
    v74 = v187;
    v241 = v187;
    v242 = MEMORY[0x277D09A48];
    v75 = __swift_allocate_boxed_opaque_existential_1(&v240);
    (*(v186 + 16))(v75, v185, v74);
    v239 = &off_283AEB5E8;
    v238 = GlanceMessageToneProvider;
    v237[0] = v62;
    v235 = &type metadata for WeeklyGoalProvider;
    v236 = &off_283AED848;
    v234[0] = swift_allocObject();
    sub_227871184(v275, v234[0] + 16);
    v76 = v170;
    v232 = v170;
    v233 = MEMORY[0x277D09AD0];
    v77 = __swift_allocate_boxed_opaque_existential_1(&v231);
    (*(v183 + 16))(v77, v190, v76);
    v229 = &type metadata for FirstGlanceWorkoutProvider;
    v230 = &off_283AED500;
    v228[0] = swift_allocObject();
    sub_227871228(v269, v228[0] + 16);
    v226 = &type metadata for FirstGlanceWorkoutSummationProvider;
    v227 = &off_283AEB0D0;
    v225[0] = swift_allocObject();
    sub_227871284(&v265, v225[0] + 16);
    GlanceService = type metadata accessor for FirstGlanceService();
    v157 = swift_allocObject();
    v78 = __swift_mutable_project_boxed_opaque_existential_1(v261, v262);
    v162 = &v143;
    MEMORY[0x28223BE20](v78);
    v151 = &v143 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v80 + 16))();
    v81 = __swift_mutable_project_boxed_opaque_existential_1(v258, v259);
    v161 = &v143;
    MEMORY[0x28223BE20](v81);
    v83 = (&v143 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v84 + 16))(v83);
    v85 = __swift_mutable_project_boxed_opaque_existential_1(v255, v256);
    v159 = &v143;
    MEMORY[0x28223BE20](v85);
    v87 = (&v143 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v88 + 16))(v87);
    v89 = __swift_mutable_project_boxed_opaque_existential_1(v252, v253);
    v156 = &v143;
    MEMORY[0x28223BE20](v89);
    v147 = (&v143 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v91 + 16))();
    v92 = __swift_mutable_project_boxed_opaque_existential_1(v249, v250);
    v155 = &v143;
    MEMORY[0x28223BE20](v92);
    v148 = &v143 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v94 + 16))();
    v95 = __swift_mutable_project_boxed_opaque_existential_1(v246, v247);
    v154 = &v143;
    MEMORY[0x28223BE20](v95);
    v144 = (&v143 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v97 + 16))();
    v98 = __swift_mutable_project_boxed_opaque_existential_1(v243, v244);
    v153 = &v143;
    MEMORY[0x28223BE20](v98);
    v145 = &v143 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v100 + 16))();
    v101 = __swift_mutable_project_boxed_opaque_existential_1(v237, v238);
    v152 = &v143;
    MEMORY[0x28223BE20](v101);
    v103 = (&v143 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v104 + 16))(v103);
    v105 = __swift_mutable_project_boxed_opaque_existential_1(v234, v235);
    v150 = &v143;
    MEMORY[0x28223BE20](v105);
    v107 = &v143 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v108 + 16))(v107);
    v109 = __swift_mutable_project_boxed_opaque_existential_1(v228, v229);
    v149 = &v143;
    MEMORY[0x28223BE20](v109);
    v111 = &v143 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v112 + 16))(v111);
    v113 = __swift_mutable_project_boxed_opaque_existential_1(v225, v226);
    v146 = &v143;
    MEMORY[0x28223BE20](v113);
    v115 = (&v143 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v116 + 16))(v115);
    v117 = *v83;
    v118 = *v87;
    v119 = *v147;
    v120 = *v144;
    v121 = *v103;
    v223 = &type metadata for FirstGlanceAchievementProvider;
    v224 = &off_283AEBDD0;
    v122 = swift_allocObject();
    *&v222 = v122;
    v123 = v151;
    v124 = *(v151 + 3);
    v122[3] = *(v151 + 2);
    v122[4] = v124;
    v125 = v123[5];
    v122[5] = v123[4];
    v122[6] = v125;
    v126 = v123[1];
    v122[1] = *v123;
    v122[2] = v126;
    v221 = &off_283AEB590;
    v220 = GlanceActivityDataProvider;
    *&v219 = v117;
    v218 = &off_283AEA370;
    v217 = GlanceActivitySharingProvider;
    *&v216 = v118;
    v215 = &off_283AEC2E0;
    v214 = &type metadata for ContactStore;
    *&v213 = v119;
    v211 = v177;
    v212 = &off_283AE99D8;
    v127 = __swift_allocate_boxed_opaque_existential_1(&v210);
    sub_2278712E0(v148, v127, v176);
    v209 = &off_283AEBF40;
    v208 = v158;
    *&v207 = v120;
    v205 = v188;
    v206 = &off_283AECF50;
    v128 = __swift_allocate_boxed_opaque_existential_1(&v204);
    sub_2278712E0(v145, v128, type metadata accessor for LegacyWeeklySummaryProvider);
    v203 = &off_283AEB5E8;
    v202 = GlanceMessageToneProvider;
    *&v201 = v121;
    v199 = &type metadata for WeeklyGoalProvider;
    v200 = &off_283AED848;
    v129 = swift_allocObject();
    *&v198 = v129;
    v130 = *(v107 + 3);
    *(v129 + 48) = *(v107 + 2);
    *(v129 + 64) = v130;
    *(v129 + 80) = *(v107 + 4);
    *(v129 + 96) = *(v107 + 10);
    v131 = *(v107 + 1);
    *(v129 + 16) = *v107;
    *(v129 + 32) = v131;
    v196 = &type metadata for FirstGlanceWorkoutProvider;
    v197 = &off_283AED500;
    v132 = swift_allocObject();
    *&v195 = v132;
    v133 = *(v111 + 3);
    *(v132 + 48) = *(v111 + 2);
    *(v132 + 64) = v133;
    *(v132 + 80) = *(v111 + 4);
    *(v132 + 96) = *(v111 + 10);
    v134 = *(v111 + 1);
    *(v132 + 16) = *v111;
    *(v132 + 32) = v134;
    v193 = &type metadata for FirstGlanceWorkoutSummationProvider;
    v194 = &off_283AEB0D0;
    v135 = swift_allocObject();
    *&v192 = v135;
    v136 = v115[3];
    v135[3] = v115[2];
    v135[4] = v136;
    v135[5] = v115[4];
    v137 = v115[1];
    v135[1] = *v115;
    v135[2] = v137;
    v138 = v157;
    sub_2277F9D0C(&v222, v157 + 16);
    sub_2277F9D0C(&v219, v138 + 56);
    sub_2277F9D0C(&v216, v138 + 96);
    sub_2277F9D0C(&v213, v138 + 136);
    sub_2277F9D0C(&v210, v138 + 176);
    *(v138 + 216) = v180;
    sub_2277F9D0C(&v207, v138 + 224);
    sub_2277F9D0C(&v204, v138 + 264);
    sub_2277F9D0C(&v201, v138 + 344);
    sub_2277F9D0C(&v240, v138 + 304);
    *(v138 + 384) = v164;
    sub_2277F9D0C(&v198, v138 + 392);
    sub_2277F9D0C(&v231, v138 + 432);
    *(v138 + 472) = v178;
    sub_2277F9D0C(&v195, v138 + 480);
    sub_2277F9D0C(&v192, v138 + 520);
    __swift_destroy_boxed_opaque_existential_0(v225);
    __swift_destroy_boxed_opaque_existential_0(v228);
    __swift_destroy_boxed_opaque_existential_0(v234);
    __swift_destroy_boxed_opaque_existential_0(v237);
    __swift_destroy_boxed_opaque_existential_0(v243);
    __swift_destroy_boxed_opaque_existential_0(v246);
    __swift_destroy_boxed_opaque_existential_0(v249);
    __swift_destroy_boxed_opaque_existential_0(v252);
    __swift_destroy_boxed_opaque_existential_0(v255);
    __swift_destroy_boxed_opaque_existential_0(v258);
    __swift_destroy_boxed_opaque_existential_0(v261);
    __swift_destroy_boxed_opaque_existential_0(v264);
    __swift_destroy_boxed_opaque_existential_0(v279);
    v139 = v169;
    v169[3] = GlanceService;
    v139[4] = &off_283AEA660;
    v140 = v139;

    *v140 = v138;
    (*(v183 + 8))(v190, v170);
    sub_227871348(v189);
    sub_2278713A4(v275);
    (*(v181 + 8))(v175, v182);
    (*(v186 + 8))(v185, v187);
    sub_2278713F8(&v265);
    sub_22787144C(v269);
    return sub_2278714A0(v273);
  }

  else
  {
    v142 = v273[0];
    sub_2278C65F0();

    swift_willThrow();

    return (*(v186 + 8))(v185, v187);
  }
}

uint64_t *sub_227870910(uint64_t a1)
{
  v2 = v1;
  v53 = a1;
  v3 = sub_2278C6540();
  MEMORY[0x28223BE20](v3 - 8);
  v52 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_2278C6910();
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v47 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_2278C6820();
  v40 = *(v44 - 8);
  v6 = v40;
  v7 = MEMORY[0x28223BE20](v44);
  v50 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v48 = &v40 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v40 - v12;
  MEMORY[0x28223BE20](v11);
  v41 = &v40 - v14;
  v15 = sub_2278C6920();
  v45 = v15;
  v54 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v40 - v19;
  __swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64));
  v42 = v20;
  sub_227804920();
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  sub_227804920();
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  v21 = off_283AE99E0;
  type metadata accessor for DateProvider(0);
  v21(v13);
  v22 = v41;
  sub_2278C6890();
  v43 = *(v6 + 8);
  v23 = v44;
  v43(v13, v44);
  v24 = *(v54 + 8);
  v54 += 8;
  v46 = v24;
  v24(v18, v15);
  v25 = v49;
  v26 = v47;
  v27 = v51;
  (*(v49 + 104))(v47, *MEMORY[0x277CC9968], v51);
  sub_2278C66E0();
  (*(v25 + 8))(v26, v27);
  sub_2278040AC(v53, v56);
  v28 = *(v40 + 16);
  v29 = v23;
  v28(v48, v13, v23);
  v30 = v22;
  v28(v50, v22, v29);
  v31 = v52;
  sub_2278C6520();
  sub_2278040AC(v1 + 40, v55);
  v32 = __swift_mutable_project_boxed_opaque_existential_1(v55, v55[3]);
  MEMORY[0x28223BE20](v32);
  v34 = &v40 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v35 + 16))(v34);
  v36 = sub_227869CE4(v56, v31, v34);
  __swift_destroy_boxed_opaque_existential_0(v55);
  v37 = sub_227869FAC(v36);
  v38 = v43;
  v43(v13, v29);
  v38(v30, v29);
  v46(v42, v45);
  return v37;
}

uint64_t *sub_227870E7C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DateProvider(0);
  v25 = v8;
  v26 = &off_283AE99D8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  sub_2278712E0(a1, boxed_opaque_existential_1, type metadata accessor for DateProvider);
  v10 = type metadata accessor for TypicalDayProvider();
  v23[3] = v10;
  v23[4] = &off_283AED4B0;
  v23[0] = a3;
  type metadata accessor for FirstGlanceActivityDataProvider();
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
  MEMORY[0x28223BE20](v12);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v23, v10);
  MEMORY[0x28223BE20](v16);
  v18 = (v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v18;
  v11[5] = v8;
  v11[6] = &off_283AE99D8;
  v21 = __swift_allocate_boxed_opaque_existential_1(v11 + 2);
  sub_2278712E0(v14, v21, type metadata accessor for DateProvider);
  v11[15] = v10;
  v11[16] = &off_283AED4B0;
  v11[12] = v20;
  sub_2277F9D0C(a2, (v11 + 7));
  v11[17] = a4;
  v11[18] = 1;
  __swift_destroy_boxed_opaque_existential_0(v23);
  __swift_destroy_boxed_opaque_existential_0(v24);
  return v11;
}

uint64_t sub_227871120(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyWeeklySummaryProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_2Tm()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2278712E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_227871348(uint64_t a1)
{
  v2 = type metadata accessor for LegacyWeeklySummaryProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2278714F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2278004C0;

  return v9(a1, a2, a3);
}

uint64_t sub_22787161C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2278003CC;

  return v9(a1, a2, a3);
}

uint64_t sub_227871748(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2278004C0;

  return v7(a1, a2);
}

uint64_t sub_227871870(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return MEMORY[0x2822009F8](sub_227871890, 0, 0);
}

uint64_t sub_227871890()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCD570]) initWithCategory:4 domainName:*MEMORY[0x277D09BC0] healthStore:v0[19]];
  v0[20] = v1;
  v2 = sub_2278C67D0();
  v3 = *MEMORY[0x277D09BC8];
  v0[21] = v2;
  v0[22] = v3;
  v0[2] = v0;
  v0[3] = sub_227871A08;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6130, qword_2278CD4F0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_227871C0C;
  v0[13] = &block_descriptor_14;
  v0[14] = v4;
  [v1 setDate:v2 forKey:v3 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_227871A08()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_227871B88;
  }

  else
  {
    v2 = sub_227871B18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227871B18()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_227871B88(uint64_t a1)
{
  v2 = v1[22];
  v4 = v1[20];
  v3 = v1[21];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t sub_227871C0C(uint64_t a1, int a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a2)
  {
    v5 = *v5;

    return MEMORY[0x282200950](v5);
  }

  if (!a3)
  {
    __break(1u);
    return MEMORY[0x282200950](v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6110, qword_2278CA030);
  v7 = swift_allocError();
  *v8 = a3;
  v9 = a3;

  return MEMORY[0x282200958](v6, v7);
}

uint64_t sub_227871CC4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_227871CE4, 0, 0);
}

uint64_t sub_227871CE4()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCD570]) initWithCategory:4 domainName:*MEMORY[0x277D09BC0] healthStore:v0[3]];
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  *v3 = v0;
  v3[1] = sub_227871E24;
  v5 = v0[2];

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000015, 0x80000002278D26A0, sub_22787279C, v2, v4);
}

uint64_t sub_227871E24()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_227871FA4;
  }

  else
  {

    v2 = sub_227871F40;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227871F40()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227871FA4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_227872010(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D64C0, &qword_2278CD720);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = *MEMORY[0x277D09BC8];
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_2278727A4;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2278722C4;
  aBlock[3] = &block_descriptor_11;
  v11 = _Block_copy(aBlock);
  v12 = v8;

  [a2 dateForKey:v12 completion:v11];
  _Block_release(v11);
}

uint64_t sub_2278721E0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  MEMORY[0x28223BE20](v4 - 8);
  if (a2)
  {
    v8[1] = a2;
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D64C0, &qword_2278CD720);
    return sub_2278C7800();
  }

  else
  {
    sub_2278102C8(a1, v8 - v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D64C0, &qword_2278CD720);
    return sub_2278C7810();
  }
}

uint64_t sub_2278722C4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_2278C6800();
    v10 = sub_2278C6820();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_2278C6820();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_22783F30C(v8);
}

uint64_t sub_227872428()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCD570]) initWithCategory:4 domainName:*MEMORY[0x277D09BC0] healthStore:v0[18]];
  v2 = *MEMORY[0x277D09BC8];
  v0[19] = v1;
  v0[20] = v2;
  v0[2] = v0;
  v0[3] = sub_227872594;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6130, qword_2278CD4F0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_227871C0C;
  v0[13] = &block_descriptor_18;
  v0[14] = v3;
  [v1 setDate:0 forKey:v2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_227872594()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_22787270C;
  }

  else
  {
    v2 = sub_2278726A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2278726A4()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22787270C(uint64_t a1)
{
  v2 = v1[20];
  v3 = v1[19];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_2278727A4(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D64C0, &qword_2278CD720);

  return sub_2278721E0(a1, a2);
}

uint64_t sub_227872850(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2278004C0;

  return v7(a1, a2);
}

uint64_t sub_227872968(uint64_t a1, uint64_t a2)
{
  v3 = sub_2278C6570();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_2278C6550();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_227872A5C()
{
  v1 = *(v0 + 576);
  if (v1)
  {
    if (v1 >> 62)
    {
      goto LABEL_17;
    }

    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v2)
    {
      v3 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x22AA9DBF0](v3, v1);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_13:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_17:
            v2 = sub_2278C7B80();
            goto LABEL_4;
          }

          v4 = *(v1 + 8 * v3 + 32);
          swift_unknownObjectRetain();
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_13;
          }
        }

        [*(v0 + 280) removeObserver_];
        swift_unknownObjectRelease();
        ++v3;
      }

      while (v5 != v2);
    }
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 120));
  __swift_destroy_boxed_opaque_existential_0((v0 + 160));
  __swift_destroy_boxed_opaque_existential_0((v0 + 200));
  __swift_destroy_boxed_opaque_existential_0((v0 + 240));

  __swift_destroy_boxed_opaque_existential_0((v0 + 288));
  __swift_destroy_boxed_opaque_existential_0((v0 + 328));
  __swift_destroy_boxed_opaque_existential_0((v0 + 368));
  __swift_destroy_boxed_opaque_existential_0((v0 + 408));
  __swift_destroy_boxed_opaque_existential_0((v0 + 448));
  __swift_destroy_boxed_opaque_existential_0((v0 + 488));
  __swift_destroy_boxed_opaque_existential_0((v0 + 528));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_227872BD8()
{
  sub_227872A5C();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_227872C48()
{
  __swift_project_boxed_opaque_existential_1((v0[7] + 408), *(v0[7] + 432));
  sub_22783935C(v0 + 2);
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_227872D3C;

  return sub_22787D664();
}

uint64_t sub_227872D3C()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_227873208;
  }

  else
  {
    v4 = sub_227872E68;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_227872E68()
{
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_227872F04;

  return sub_22781DA5C();
}

uint64_t sub_227872F04()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {
    v3 = v2[7];

    return MEMORY[0x2822009F8](sub_2278731A4, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[12] = v4;
    *v4 = v2;
    v4[1] = sub_227873078;

    return sub_2278732D0((v2 + 2));
  }
}

uint64_t sub_227873078()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_22787326C;
  }

  else
  {
    v4 = sub_227803A30;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2278731A4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227873208()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22787326C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2278732D0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2278C75A0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227873390, v1, 0);
}

uint64_t sub_227873390(uint64_t a1)
{
  v3 = v1[5];
  v2 = v1[6];
  v5 = v1[3];
  v4 = v1[4];
  sub_2278C7330();
  sub_2278C7580();
  (*(v3 + 8))(v2, v4);
  v1[7] = *(v5 + 568);
  v8 = (*MEMORY[0x277D09B38] + MEMORY[0x277D09B38]);

  v6 = swift_task_alloc();
  v1[8] = v6;
  *v6 = v1;
  v6[1] = sub_2278734B0;

  return v8();
}

uint64_t sub_2278734B0()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 72) = v3;
  *v3 = v2;
  v3[1] = sub_22787362C;
  v4 = *(v1 + 16);

  return sub_227873860(v4);
}

uint64_t sub_22787362C()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_2278737DC;
  }

  else
  {
    v4 = sub_227873758;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_227873758()
{

  sub_2278C7470();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2278737DC()
{

  sub_2278C7470();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227873860(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = sub_2278C6920();
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();
  v4 = sub_2278C6820();
  v2[27] = v4;
  v2[28] = *(v4 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v5 = sub_2278C75A0();
  v2[42] = v5;
  v2[43] = *(v5 - 8);
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227873B00, v1, 0);
}

uint64_t sub_227873B00(uint64_t a1)
{
  sub_2278C7330();
  v2 = sub_2278C7590();
  v3 = sub_2278C7970();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2277F7000, v2, v3, "[EndTomorrowReminder] Schedule Pause Rings Reminder Task if needed", v4, 2u);
    MEMORY[0x22AA9E860](v4, -1, -1);
  }

  v5 = v1[53];
  v6 = v1[42];
  v7 = v1[43];
  v8 = v1[23];

  v9 = *(v7 + 8);
  v1[54] = v9;
  v9(v5, v6);
  __swift_project_boxed_opaque_existential_1((v8 + 200), *(v8 + 224));
  v10 = swift_task_alloc();
  v1[55] = v10;
  *v10 = v1;
  v10[1] = sub_227873C50;
  v11 = v1[41];

  return sub_227849404(v11);
}

uint64_t sub_227873C50()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  v3 = *(v2 + 184);
  if (v0)
  {
    v4 = sub_2278742DC;
  }

  else
  {
    v4 = sub_227873D7C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_227873D7C()
{
  v45 = v0;
  v1 = v0[40];
  v2 = v0[27];
  v3 = v0[28];
  sub_227850448(v0[41], v1, &qword_27D7D60A8, qword_2278C9730);
  v4 = *(v3 + 48);
  v0[57] = v4;
  v0[58] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    sub_227802FC4(v0[40], &qword_27D7D60A8, qword_2278C9730);
LABEL_7:
    __swift_project_boxed_opaque_existential_1((v0[23] + 448), *(v0[23] + 472));
    v32 = swift_task_alloc();
    v0[59] = v32;
    *v32 = v0;
    v32[1] = sub_227874470;
    v33 = v0[39];

    return sub_227853C98(v33);
  }

  v5 = v0[36];
  v6 = v0[28];
  v40 = v0[27];
  v8 = v0[25];
  v7 = v0[26];
  v9 = v0[23];
  v42 = v0[24];
  (*(v6 + 32))(v0[37], v0[40]);
  __swift_project_boxed_opaque_existential_1((v9 + 160), *(v9 + 184));
  sub_227804920();
  __swift_project_boxed_opaque_existential_1((v9 + 160), *(v9 + 184));
  v10 = off_283AE99E0;
  type metadata accessor for DateProvider(0);
  v10(v5);
  v11 = sub_2278C68F0();
  v12 = *(v6 + 8);
  v12(v5, v40);
  (*(v8 + 8))(v7, v42);
  if ((v11 & 1) == 0)
  {
    v12(v0[37], v0[27]);
    goto LABEL_7;
  }

  v13 = v0[37];
  v14 = v0[35];
  v15 = v0[27];
  v16 = v0[28];
  sub_2278C7330();
  (*(v16 + 16))(v14, v13, v15);
  v17 = sub_2278C7590();
  v18 = sub_2278C7970();
  v19 = os_log_type_enabled(v17, v18);
  v20 = v0[54];
  v43 = v0[52];
  v41 = v0[42];
  v21 = v0[41];
  v22 = v0[37];
  v23 = v0[35];
  v24 = v0[27];
  if (v19)
  {
    v36 = v18;
    v25 = swift_slowAlloc();
    v39 = v21;
    v26 = swift_slowAlloc();
    v44 = v26;
    *v25 = 136315138;
    v37 = v20;
    v38 = v22;
    v27 = sub_2278C6790();
    v29 = v28;
    v12(v23, v24);
    v30 = sub_2278021B4(v27, v29, &v44);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_2277F7000, v17, v36, "[EndTomorrowReminder] Already fired notification today on %s, skipping...", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x22AA9E860](v26, -1, -1);
    MEMORY[0x22AA9E860](v25, -1, -1);

    v37(v43, v41);
    v12(v38, v24);
    v31 = v39;
  }

  else
  {

    v12(v23, v24);
    v20(v43, v41);
    v12(v22, v24);
    v31 = v21;
  }

  sub_227802FC4(v31, &qword_27D7D60A8, qword_2278C9730);

  v35 = v0[1];

  return v35();
}

uint64_t sub_2278742DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227874470()
{
  v1 = *(*v0 + 184);

  return MEMORY[0x2822009F8](sub_227874580, v1, 0);
}

uint64_t sub_227874580()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 216);
  if ((*(v0 + 456))(v1, 1, v2) == 1)
  {
    sub_227802FC4(v1, &qword_27D7D60A8, qword_2278C9730);
LABEL_8:
    sub_2278C7330();
    v15 = sub_2278C7590();
    v16 = sub_2278C7970();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 432);
    v19 = *(v0 + 352);
    v20 = *(v0 + 328);
    v21 = *(v0 + 336);
    if (v17)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2277F7000, v15, v16, "[EndTomorrowReminder] User hasn't started their day, skipping for now..", v22, 2u);
      MEMORY[0x22AA9E860](v22, -1, -1);
    }

    v18(v19, v21);
    sub_227802FC4(v20, &qword_27D7D60A8, qword_2278C9730);

    v23 = *(v0 + 8);

    return v23();
  }

  v3 = *(v0 + 288);
  v4 = *(v0 + 272);
  v5 = *(v0 + 224);
  v6 = *(v0 + 184);
  v7 = *(v5 + 32);
  *(v0 + 480) = v7;
  *(v0 + 488) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v7(v4, v1, v2);
  __swift_project_boxed_opaque_existential_1((v6 + 160), *(v6 + 184));
  v8 = off_283AE99E0;
  *(v0 + 496) = off_283AE99E0;
  *(v0 + 504) = &off_283AE99E0 & 0xFFFFFFFFFFFFLL | 0xB006000000000000;
  *(v0 + 512) = type metadata accessor for DateProvider(0);
  v8(v3);
  v9 = sub_2278C6710();
  v10 = *(v5 + 8);
  *(v0 + 520) = v10;
  *(v0 + 528) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v3, v2);
  if ((v9 & 1) == 0)
  {
    v10(*(v0 + 272), *(v0 + 216));
    goto LABEL_8;
  }

  v11 = swift_task_alloc();
  *(v0 + 536) = v11;
  *v11 = v0;
  v11[1] = sub_227874954;
  v12 = *(v0 + 304);
  v13 = *(v0 + 176);

  return sub_227876AD8(v12, v13);
}

uint64_t sub_227874954()
{
  v2 = *v1;
  *(*v1 + 544) = v0;

  v3 = *(v2 + 184);
  if (v0)
  {
    v4 = sub_227876740;
  }

  else
  {
    v4 = sub_227874A80;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_227874A80()
{
  v148 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 216);
  if ((*(v0 + 456))(v1, 1, v2) == 1)
  {
    sub_227802FC4(v1, &qword_27D7D60A8, qword_2278C9730);
    sub_2278C7330();
    v3 = sub_2278C7590();
    v4 = sub_2278C7950();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 432);
    v7 = *(v0 + 360);
    v8 = *(v0 + 336);
    v139 = *(v0 + 520);
    v141 = *(v0 + 328);
    v9 = *(v0 + 272);
    v10 = *(v0 + 216);
    if (v5)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2277F7000, v3, v4, "[EndTomorrowReminder] Unable to determine scheduled date for notification, skipping for now...", v11, 2u);
      MEMORY[0x22AA9E860](v11, -1, -1);
    }

    v6(v7, v8);
    v139(v9, v10);
    v48 = v141;
    goto LABEL_15;
  }

  v12 = *(v0 + 520);
  v13 = *(v0 + 512);
  v14 = *(v0 + 496);
  v15 = *(v0 + 288);
  v16 = *(v0 + 184);
  (*(v0 + 480))(*(v0 + 264), v1, v2);
  sub_2278C67E0();
  v18 = v17;
  *(v0 + 552) = v17;
  __swift_project_boxed_opaque_existential_1((v16 + 160), *(v16 + 184));
  v14(v13, &off_283AE99D8);
  sub_2278C67E0();
  v20 = v19;
  *(v0 + 560) = v19;
  v12(v15, v2);
  if (v18 - v20 < 0.0)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v18 - v20;
  }

  v22 = MKBGetDeviceLockState();
  if (v22 != 3 && v22)
  {
    sub_2278C7330();
    v76 = sub_2278C7590();
    v77 = sub_2278C7970();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_2277F7000, v76, v77, "[EndTomorrowReminder] Currently locked, rescheduling XPC Tasks...", v78, 2u);
      MEMORY[0x22AA9E860](v78, -1, -1);
    }

    v79 = *(v0 + 432);
    v80 = *(v0 + 376);
    v81 = *(v0 + 336);
    v144 = *(v0 + 264);
    v82 = *(v0 + 224);
    v137 = *(v0 + 232);
    v83 = *(v0 + 216);
    v84 = *(v0 + 176);

    v79(v80, v81);
    v85 = *__swift_project_boxed_opaque_existential_1(v84, v84[3]);
    *(v0 + 40) = type metadata accessor for PauseRingsService();
    *(v0 + 48) = &off_283AE9FE8;
    *(v0 + 16) = v85;

    sub_2278C7330();
    (*(v82 + 16))(v137, v144, v83);
    v86 = sub_2278C7590();
    v145 = sub_2278C7970();
    v87 = os_log_type_enabled(v86, v145);
    v88 = *(v0 + 520);
    v89 = *(v0 + 432);
    v90 = *(v0 + 368);
    v91 = *(v0 + 336);
    v92 = *(v0 + 232);
    v93 = *(v0 + 216);
    if (v87)
    {
      v138 = *(v0 + 368);
      v94 = swift_slowAlloc();
      v132 = v91;
      v95 = swift_slowAlloc();
      v147 = v95;
      *v94 = 136315138;
      v126 = v89;
      v96 = sub_2278C6790();
      v98 = v97;
      v88(v92, v93);
      v99 = sub_2278021B4(v96, v98, &v147);

      *(v94 + 4) = v99;
      _os_log_impl(&dword_2277F7000, v86, v145, "[EndTomorrowReminder] Schedule XPC Activity for notifcation to trigger on %s", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v95);
      MEMORY[0x22AA9E860](v95, -1, -1);
      MEMORY[0x22AA9E860](v94, -1, -1);

      v126(v138, v132);
    }

    else
    {

      v88(v92, v93);
      v89(v90, v91);
    }

    __swift_project_boxed_opaque_existential_1((*(v0 + 184) + 528), *(*(v0 + 184) + 552));
    v100 = swift_task_alloc();
    *(v0 + 616) = v100;
    *v100 = v0;
    v101 = sub_2278761F0;
  }

  else if (v21 <= 0.0)
  {
    v130 = *(v0 + 520);
    v51 = *(v0 + 512);
    v52 = *(v0 + 496);
    v53 = *(v0 + 288);
    v142 = *(v0 + 224);
    v55 = *(v0 + 200);
    v54 = *(v0 + 208);
    v56 = *(v0 + 184);
    v121 = *(v0 + 216);
    v124 = *(v0 + 192);
    __swift_project_boxed_opaque_existential_1((v56 + 160), *(v56 + 184));
    sub_227804920();
    __swift_project_boxed_opaque_existential_1((v56 + 160), *(v56 + 184));
    v52(v51, &off_283AE99D8);
    v57 = sub_2278C68F0();
    v130(v53, v121);
    (*(v55 + 8))(v54, v124);
    v58 = (v142 + 16);
    v59 = *(v0 + 264);
    v60 = *(v0 + 216);
    if ((v57 & 1) == 0)
    {
      v102 = *(v0 + 240);
      sub_2278C7330();
      (*v58)(v102, v59, v60);
      v103 = sub_2278C7590();
      v133 = sub_2278C7950();
      v104 = os_log_type_enabled(v103, v133);
      v105 = *(v0 + 520);
      v106 = *(v0 + 432);
      v140 = *(v0 + 336);
      v146 = *(v0 + 384);
      v107 = *(v0 + 328);
      v109 = *(v0 + 264);
      v108 = *(v0 + 272);
      v110 = *(v0 + 240);
      v111 = *(v0 + 216);
      if (v104)
      {
        v127 = *(v0 + 328);
        v112 = swift_slowAlloc();
        v122 = v108;
        v113 = swift_slowAlloc();
        v147 = v113;
        *v112 = 136315138;
        v118 = v106;
        v119 = v109;
        v114 = sub_2278C6790();
        v116 = v115;
        v105(v110, v111);
        v117 = sub_2278021B4(v114, v116, &v147);

        *(v112 + 4) = v117;
        _os_log_impl(&dword_2277F7000, v103, v133, "[EndTomorrowReminder] Scheduled date (%s) is in the past, but not today, not firing", v112, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v113);
        MEMORY[0x22AA9E860](v113, -1, -1);
        MEMORY[0x22AA9E860](v112, -1, -1);

        v118(v146, v140);
        v105(v119, v111);
        v105(v122, v111);
        v48 = v127;
      }

      else
      {

        v105(v110, v111);
        v106(v146, v140);
        v105(v109, v111);
        v105(v108, v111);
        v48 = v107;
      }

LABEL_15:
      sub_227802FC4(v48, &qword_27D7D60A8, qword_2278C9730);

      v49 = *(v0 + 8);

      return v49();
    }

    v61 = *(v0 + 248);
    sub_2278C7330();
    (*v58)(v61, v59, v60);
    v62 = sub_2278C7590();
    v143 = sub_2278C7970();
    v63 = os_log_type_enabled(v62, v143);
    v64 = *(v0 + 520);
    v65 = *(v0 + 432);
    v66 = *(v0 + 392);
    v67 = *(v0 + 336);
    v68 = *(v0 + 248);
    v69 = *(v0 + 216);
    if (v63)
    {
      v136 = *(v0 + 392);
      v70 = swift_slowAlloc();
      v131 = v67;
      v71 = swift_slowAlloc();
      v147 = v71;
      *v70 = 136315138;
      v125 = v65;
      v72 = sub_2278C6790();
      v74 = v73;
      v64(v68, v69);
      v75 = sub_2278021B4(v72, v74, &v147);

      *(v70 + 4) = v75;
      _os_log_impl(&dword_2277F7000, v62, v143, "[EndTomorrowReminder] Scheduled date (%s) is today and in the past, firing now...", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v71);
      MEMORY[0x22AA9E860](v71, -1, -1);
      MEMORY[0x22AA9E860](v70, -1, -1);

      v125(v136, v131);
    }

    else
    {

      v64(v68, v69);
      v65(v66, v67);
    }

    __swift_project_boxed_opaque_existential_1((*(v0 + 184) + 528), *(*(v0 + 184) + 552));
    v100 = swift_task_alloc();
    *(v0 + 592) = v100;
    *v100 = v0;
    v101 = sub_227875D8C;
  }

  else
  {
    sub_2278C7330();
    v23 = sub_2278C7590();
    v24 = sub_2278C7970();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      *(v25 + 4) = v21;
      _os_log_impl(&dword_2277F7000, v23, v24, "[EndTomorrowReminder] Schedule XPC activity to trigger in %fs", v25, 0xCu);
      MEMORY[0x22AA9E860](v25, -1, -1);
    }

    v26 = *(v0 + 432);
    v27 = *(v0 + 408);
    v28 = *(v0 + 336);
    v128 = *(v0 + 256);
    v134 = *(v0 + 264);
    v30 = *(v0 + 216);
    v29 = *(v0 + 224);
    v31 = *(v0 + 176);

    v26(v27, v28);
    v32 = *__swift_project_boxed_opaque_existential_1(v31, v31[3]);
    *(v0 + 120) = type metadata accessor for PauseRingsService();
    *(v0 + 128) = &off_283AE9FE8;
    *(v0 + 96) = v32;

    sub_2278C7330();
    (*(v29 + 16))(v128, v134, v30);
    v33 = sub_2278C7590();
    v34 = sub_2278C7970();
    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 520);
    v37 = *(v0 + 432);
    v38 = *(v0 + 400);
    v39 = *(v0 + 336);
    v40 = *(v0 + 256);
    v41 = *(v0 + 216);
    if (v35)
    {
      v135 = *(v0 + 400);
      v42 = swift_slowAlloc();
      v129 = v39;
      v43 = swift_slowAlloc();
      v147 = v43;
      *v42 = 136315138;
      v120 = v34;
      v44 = sub_2278C6790();
      v123 = v37;
      v46 = v45;
      v36(v40, v41);
      v47 = sub_2278021B4(v44, v46, &v147);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_2277F7000, v33, v120, "[EndTomorrowReminder] Schedule XPC Activity for notifcation to trigger on %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x22AA9E860](v43, -1, -1);
      MEMORY[0x22AA9E860](v42, -1, -1);

      v123(v135, v129);
    }

    else
    {

      v36(v40, v41);
      v37(v38, v39);
    }

    __swift_project_boxed_opaque_existential_1((*(v0 + 184) + 528), *(*(v0 + 184) + 552));
    v100 = swift_task_alloc();
    *(v0 + 568) = v100;
    *v100 = v0;
    v101 = sub_22787583C;
  }

  v100[1] = v101;

  return sub_227863B34(0xD000000000000044, 0x80000002278D2800);
}

uint64_t sub_22787583C()
{
  v1 = *(*v0 + 184);

  return MEMORY[0x2822009F8](sub_22787594C, v1, 0);
}

uint64_t sub_22787594C()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 552);
  v3 = *(v0 + 184);
  __swift_project_boxed_opaque_existential_1((v3 + 528), *(v3 + 552));
  sub_2278040AC(v0 + 96, v0 + 136);
  v4 = swift_allocObject();
  *(v0 + 576) = v4;
  *(v4 + 16) = v3;
  sub_2277F9D0C((v0 + 136), v4 + 24);

  v5 = swift_task_alloc();
  *(v0 + 584) = v5;
  *v5 = v0;
  v5[1] = sub_227875A8C;
  v6 = v2 - v1;
  if (v2 - v1 < 0.0)
  {
    v6 = 0.0;
  }

  return sub_2278643BC(0xD000000000000044, 0x80000002278D2800, sub_2278802A8, v4, v6);
}

uint64_t sub_227875A8C()
{
  v1 = *(*v0 + 184);

  return MEMORY[0x2822009F8](sub_227875BB8, v1, 0);
}

uint64_t sub_227875BB8()
{
  v1 = v0[65];
  v2 = v0[41];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[27];
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v1(v4, v5);
  v1(v3, v5);
  sub_227802FC4(v2, &qword_27D7D60A8, qword_2278C9730);

  v6 = v0[1];

  return v6();
}

uint64_t sub_227875D8C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[75] = v3;
  *v3 = v2;
  v3[1] = sub_227875EFC;
  v4 = v1[22];
  v5 = v1[33];

  return sub_227879638(v5, v4, 2);
}

uint64_t sub_227875EFC()
{
  v2 = *v1;
  *(*v1 + 608) = v0;

  v3 = *(v2 + 184);
  if (v0)
  {
    v4 = sub_227876904;
  }

  else
  {
    v4 = sub_227876028;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_227876028()
{
  v1 = v0[65];
  v2 = v0[41];
  v3 = v0[34];
  v4 = v0[27];
  v1(v0[33], v4);
  v1(v3, v4);
  sub_227802FC4(v2, &qword_27D7D60A8, qword_2278C9730);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2278761F0()
{
  v1 = *(*v0 + 184);

  return MEMORY[0x2822009F8](sub_227876300, v1, 0);
}

uint64_t sub_227876300()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 552);
  v3 = *(v0 + 184);
  __swift_project_boxed_opaque_existential_1((v3 + 528), *(v3 + 552));
  sub_2278040AC(v0 + 16, v0 + 56);
  v4 = swift_allocObject();
  *(v0 + 624) = v4;
  *(v4 + 16) = v3;
  sub_2277F9D0C((v0 + 56), v4 + 24);

  v5 = swift_task_alloc();
  *(v0 + 632) = v5;
  *v5 = v0;
  v5[1] = sub_227876440;
  v6 = v2 - v1;
  if (v2 - v1 < 0.0)
  {
    v6 = 0.0;
  }

  return sub_2278643BC(0xD000000000000044, 0x80000002278D2800, sub_227880004, v4, v6);
}

uint64_t sub_227876440()
{
  v1 = *(*v0 + 184);

  return MEMORY[0x2822009F8](sub_22787656C, v1, 0);
}

uint64_t sub_22787656C()
{
  v1 = v0[65];
  v2 = v0[41];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[27];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1(v4, v5);
  v1(v3, v5);
  sub_227802FC4(v2, &qword_27D7D60A8, qword_2278C9730);

  v6 = v0[1];

  return v6();
}

uint64_t sub_227876740()
{
  v1 = *(v0 + 328);
  (*(v0 + 520))(*(v0 + 272), *(v0 + 216));
  sub_227802FC4(v1, &qword_27D7D60A8, qword_2278C9730);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_227876904()
{
  v1 = v0[65];
  v2 = v0[41];
  v3 = v0[34];
  v4 = v0[27];
  v1(v0[33], v4);
  v1(v3, v4);
  sub_227802FC4(v2, &qword_27D7D60A8, qword_2278C9730);

  v5 = v0[1];

  return v5();
}

uint64_t sub_227876AD8(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_2278C6920();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v5 = sub_2278C6820();
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v6 = sub_2278C75A0();
  v3[27] = v6;
  v3[28] = *(v6 - 8);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227876D40, v2, 0);
}

uint64_t sub_227876D40(uint64_t a1)
{
  sub_2278C7330();
  v2 = sub_2278C7590();
  v3 = sub_2278C7970();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2277F7000, v2, v3, "[EndTomorrowReminder] Checking schedued date for notification", v4, 2u);
    MEMORY[0x22AA9E860](v4, -1, -1);
  }

  v5 = v1[34];
  v6 = v1[27];
  v7 = v1[28];
  v8 = v1[17];
  v9 = v1[18];
  v10 = v1[16];
  v11 = v1[9];

  v12 = *(v7 + 8);
  v1[35] = v12;
  v54 = v12;
  v12(v5, v6);
  __swift_project_boxed_opaque_existential_1((v11 + 200), *(v11 + 224));
  sub_2278495CC(v10);
  v13 = *(v9 + 48);
  v1[36] = v13;
  v1[37] = (v9 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v13(v10, 1, v8) == 1)
  {
    sub_227802FC4(v1[16], &qword_27D7D60A8, qword_2278C9730);
LABEL_12:
    sub_2278C7330();
    v33 = sub_2278C7590();
    v34 = sub_2278C7970();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2277F7000, v33, v34, "[EndTomorrowReminder] Generating schedued date for notification", v35, 2u);
      MEMORY[0x22AA9E860](v35, -1, -1);
    }

    v36 = v1[32];
    v37 = v1[27];
    v38 = v1[23];
    v39 = v1[18];
    v50 = v1[17];
    v41 = v1[11];
    v40 = v1[12];
    v42 = v1[9];
    v47 = v1[25];
    v49 = v1[10];
    v53 = v1[8];

    v54(v36, v37);
    __swift_project_boxed_opaque_existential_1((v42 + 160), *(v42 + 184));
    v43 = off_283AE99E0;
    type metadata accessor for DateProvider(0);
    v43(v38);
    sub_2278C6900();
    sub_2278C66D0();
    v44 = *(v41 + 8);
    v1[38] = v44;
    v1[39] = (v41 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v44(v40, v49);
    v45 = *(v39 + 8);
    v1[40] = v45;
    v1[41] = (v39 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v45(v38, v50);
    sub_2278C67C0();
    v45(v47, v50);
    __swift_project_boxed_opaque_existential_1(v53, v53[3]);
    sub_22781F068(v1 + 2);
    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    v46 = swift_task_alloc();
    v1[42] = v46;
    *v46 = v1;
    v46[1] = sub_22787738C;

    return sub_2278A7844();
  }

  v14 = v1[25];
  v15 = v1[18];
  v17 = v1[11];
  v16 = v1[12];
  v18 = v1[9];
  v51 = v1[17];
  v52 = v1[10];
  v48 = *(v15 + 32);
  (v48)(v1[26], v1[16]);
  __swift_project_boxed_opaque_existential_1((v18 + 160), *(v18 + 184));
  sub_227804920();
  __swift_project_boxed_opaque_existential_1((v18 + 160), *(v18 + 184));
  v19 = off_283AE99E0;
  type metadata accessor for DateProvider(0);
  v19(v14);
  v20 = sub_2278C68F0();
  v21 = *(v15 + 8);
  v21(v14, v51);
  (*(v17 + 8))(v16, v52);
  if ((v20 & 1) == 0)
  {
    v21(v1[26], v1[17]);
    goto LABEL_12;
  }

  sub_2278C7330();
  v22 = sub_2278C7590();
  v23 = sub_2278C7970();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_2277F7000, v22, v23, "[EndTomorrowReminder] Using stored schedued date for notification", v24, 2u);
    MEMORY[0x22AA9E860](v24, -1, -1);
  }

  v25 = v1[33];
  v26 = v1[27];
  v27 = v1[26];
  v28 = v1[17];
  v29 = v1[18];
  v30 = v1[7];

  v54(v25, v26);
  v48(v30, v27, v28);
  (*(v29 + 56))(v30, 0, 1, v28);

  v31 = v1[1];

  return v31();
}

uint64_t sub_22787738C()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = sub_227877A58;
  }

  else
  {
    v4 = sub_2278774B8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2278774B8()
{
  v1 = *(*__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]) + OBJC_IVAR____TtC23FitnessCoachingServices18TypicalDayProvider_state);
  v0[44] = v1;
  if (v1)
  {
    v2 = v0[9];
    v3 = v1;
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    __swift_project_boxed_opaque_existential_1((v2 + 448), *(v2 + 472));
    v4 = swift_task_alloc();
    v0[45] = v4;
    *v4 = v0;
    v4[1] = sub_227877700;
    v5 = v0[15];

    return sub_227853C98(v5);
  }

  else
  {
    sub_22785D108();
    v7 = swift_allocError();
    *v8 = 1;
    swift_willThrow();
    v0[53] = v7;
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    sub_2278C7330();
    v9 = sub_2278C7590();
    v10 = sub_2278C7950();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2277F7000, v9, v10, "[EndTomorrowReminder] Failed to generate a Typical Day Model, cannot schedule 75%% F+ Plan notification", v11, 2u);
      MEMORY[0x22AA9E860](v11, -1, -1);
    }

    v12 = v0[35];
    v13 = v0[29];
    v14 = v0[27];

    v12(v13, v14);
    v15 = swift_task_alloc();
    v0[54] = v15;
    *v15 = v0;
    v15[1] = sub_2278789F0;
    v16 = v0[24];

    return sub_22784A06C(v16);
  }
}

uint64_t sub_227877700()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x2822009F8](sub_227877810, v1, 0);
}

uint64_t sub_227877810()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  if ((*(v0 + 288))(v2, 1, v1) == 1)
  {
    sub_227802FC4(v2, &qword_27D7D60A8, qword_2278C9730);
    sub_2278C7330();
    v3 = sub_2278C7590();
    v4 = sub_2278C7950();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2277F7000, v3, v4, "[EndTomorrowReminder] UserDayProvider didn't provide start of user day: cannot schedule 75%% F+ Plan notification", v5, 2u);
      MEMORY[0x22AA9E860](v5, -1, -1);
    }

    v6 = *(v0 + 280);
    v7 = *(v0 + 240);
    v8 = *(v0 + 216);

    v6(v7, v8);
    v9 = swift_task_alloc();
    *(v0 + 408) = v9;
    *v9 = v0;
    v9[1] = sub_2278785B4;
    v10 = *(v0 + 192);

    return sub_22784A06C(v10);
  }

  else
  {
    v12 = *(v0 + 176);
    v13 = *(v0 + 144);
    v14 = *(v0 + 72);
    v15 = *(v13 + 32);
    *(v0 + 368) = v15;
    *(v0 + 376) = (v13 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v15(v12, v2, v1);
    __swift_project_boxed_opaque_existential_1((v14 + 448), *(v14 + 472));
    v16 = swift_task_alloc();
    *(v0 + 384) = v16;
    *v16 = v0;
    v16[1] = sub_227877BBC;
    v17 = *(v0 + 112);

    return sub_227854128(v17);
  }
}

uint64_t sub_227877A58()
{
  v0[53] = v0[43];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_2278C7330();
  v1 = sub_2278C7590();
  v2 = sub_2278C7950();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2277F7000, v1, v2, "[EndTomorrowReminder] Failed to generate a Typical Day Model, cannot schedule 75%% F+ Plan notification", v3, 2u);
    MEMORY[0x22AA9E860](v3, -1, -1);
  }

  v4 = v0[35];
  v5 = v0[29];
  v6 = v0[27];

  v4(v5, v6);
  v7 = swift_task_alloc();
  v0[54] = v7;
  *v7 = v0;
  v7[1] = sub_2278789F0;
  v8 = v0[24];

  return sub_22784A06C(v8);
}

uint64_t sub_227877BBC()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x2822009F8](sub_227877CCC, v1, 0);
}

uint64_t sub_227877CCC()
{
  v47 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  if ((*(v0 + 288))(v2, 1, v1) == 1)
  {
    v3 = [*(v0 + 352) userEndOfDay];
    if (v3)
    {
      v4 = *(v0 + 368);
      v5 = *(v0 + 200);
      v6 = *(v0 + 168);
      v7 = *(v0 + 136);
      v8 = *(v0 + 144);
      v9 = *(v0 + 104);
      v10 = v3;
      sub_2278C6800();

      v4(v9, v5, v7);
      (*(v8 + 56))(v9, 0, 1, v7);
      v4(v6, v9, v7);
    }

    else
    {
      v41 = *(v0 + 320);
      v11 = *(v0 + 304);
      v44 = *(v0 + 288);
      v12 = *(v0 + 200);
      v13 = *(v0 + 136);
      v15 = *(v0 + 96);
      v14 = *(v0 + 104);
      v16 = *(v0 + 72);
      v17 = *(v0 + 80);
      (*(*(v0 + 144) + 56))(v14, 1, 1, v13);
      sub_2278C6810();
      __swift_project_boxed_opaque_existential_1((v16 + 160), *(v16 + 184));
      sub_227804920();
      sub_2278C6760();
      v11(v15, v17);
      v41(v12, v13);
      if (v44(v14, 1, v13) != 1)
      {
        sub_227802FC4(*(v0 + 104), &qword_27D7D60A8, qword_2278C9730);
      }
    }

    v18 = *(v0 + 112);
    if ((*(v0 + 288))(v18, 1, *(v0 + 136)) != 1)
    {
      sub_227802FC4(v18, &qword_27D7D60A8, qword_2278C9730);
    }
  }

  else
  {
    (*(v0 + 368))(*(v0 + 168), v2, v1);
  }

  v20 = *(v0 + 152);
  v19 = *(v0 + 160);
  v21 = *(v0 + 136);
  v22 = *(v0 + 144);
  sub_2278C67E0();
  sub_2278C67E0();
  sub_2278C67C0();
  sub_2278C7330();
  (*(v22 + 16))(v20, v19, v21);
  v23 = sub_2278C7590();
  v24 = sub_2278C7970();
  v25 = os_log_type_enabled(v23, v24);
  v26 = *(v0 + 320);
  v27 = *(v0 + 280);
  v28 = *(v0 + 248);
  v29 = *(v0 + 216);
  v30 = *(v0 + 152);
  v31 = *(v0 + 136);
  if (v25)
  {
    v45 = *(v0 + 248);
    v32 = swift_slowAlloc();
    v43 = v29;
    v33 = swift_slowAlloc();
    v46 = v33;
    *v32 = 134218242;
    *(v32 + 4) = 0x4052C00000000000;
    *(v32 + 12) = 2080;
    v42 = v27;
    v34 = sub_2278C6790();
    v36 = v35;
    v26(v30, v31);
    v37 = sub_2278021B4(v34, v36, &v46);

    *(v32 + 14) = v37;
    _os_log_impl(&dword_2277F7000, v23, v24, "[EndTomorrowReminder] Typical Day Model suggests that %f%% of day is: %s", v32, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x22AA9E860](v33, -1, -1);
    MEMORY[0x22AA9E860](v32, -1, -1);

    v42(v45, v43);
  }

  else
  {

    v26(v30, v31);
    v27(v28, v29);
  }

  v38 = swift_task_alloc();
  *(v0 + 392) = v38;
  *v38 = v0;
  v38[1] = sub_227878118;
  v39 = *(v0 + 160);

  return sub_22784A06C(v39);
}

uint64_t sub_227878118()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = sub_227878410;
  }

  else
  {
    v4 = sub_227878244;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_227878244()
{
  v11 = *(v0 + 368);
  v1 = *(v0 + 320);
  v2 = *(v0 + 192);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  v5 = *(v0 + 160);
  v6 = *(v0 + 136);
  v7 = *(v0 + 144);
  v8 = *(v0 + 56);

  v1(v4, v6);
  v1(v3, v6);
  v1(v2, v6);
  v11(v8, v5, v6);
  (*(v7 + 56))(v8, 0, 1, v6);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_227878410()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  v4 = *(v0 + 160);
  v5 = *(v0 + 136);

  v1(v4, v5);
  v1(v2, v5);
  v1(v3, v5);
  (*(v0 + 320))(*(v0 + 192), *(v0 + 136));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2278785B4()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = sub_227878880;
  }

  else
  {
    v4 = sub_2278786E0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2278786E0()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  v4 = *(v0 + 56);

  (*(v3 + 32))(v4, v1, v2);
  (*(v3 + 56))(v4, 0, 1, v2);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_227878880()
{
  (*(v0 + 320))(*(v0 + 192), *(v0 + 136));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2278789F0()
{
  v2 = *v1;
  *(*v1 + 440) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = sub_227878CBC;
  }

  else
  {
    v4 = sub_227878B1C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_227878B1C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  v4 = *(v0 + 56);

  (*(v3 + 32))(v4, v1, v2);
  (*(v3 + 56))(v4, 0, 1, v2);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_227878CBC()
{
  (*(v0 + 320))(*(v0 + 192), *(v0 + 136));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227878E2C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6570, &qword_2278C9AE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_2278C7840();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  sub_2278040AC(a2, v11);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v7;
  sub_2277F9D0C(v11, (v8 + 5));
  sub_22787938C(0, 0, v5, &unk_2278CD8E0, v8);
}

uint64_t sub_227878F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_2278C75A0();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227879034, 0, 0);
}

uint64_t sub_227879034(uint64_t a1)
{
  sub_2278C7330();
  v2 = sub_2278C7590();
  v3 = sub_2278C7970();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2277F7000, v2, v3, "[EndTomorrowReminder] XPC Activity triggered", v4, 2u);
    MEMORY[0x22AA9E860](v4, -1, -1);
  }

  v6 = v1[8];
  v5 = v1[9];
  v7 = v1[7];

  (*(v6 + 8))(v5, v7);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v1[10] = Strong;
  if (Strong)
  {
    v9 = swift_task_alloc();
    v1[11] = v9;
    *v9 = v1;
    v9[1] = sub_2278791DC;
    v10 = v1[6];

    return sub_227873860(v10);
  }

  else
  {

    v12 = v1[1];

    return v12();
  }
}

uint64_t sub_2278791DC()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227879320, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_227879320()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22787938C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6570, &qword_2278C9AE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_227850448(a3, v22 - v9, &unk_27D7D6570, &qword_2278C9AE0);
  v11 = sub_2278C7840();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_227802FC4(v10, &unk_27D7D6570, &qword_2278C9AE0);
  }

  else
  {
    sub_2278C7830();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2278C77F0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2278C7720() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_227802FC4(a3, &unk_27D7D6570, &qword_2278C9AE0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_227802FC4(a3, &unk_27D7D6570, &qword_2278C9AE0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_227879638(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = v3;
  *(v4 + 584) = a3;
  *(v4 + 56) = a1;
  type metadata accessor for NotificationRequest(0);
  *(v4 + 80) = swift_task_alloc();
  v5 = sub_2278C7200();
  *(v4 + 88) = v5;
  *(v4 + 96) = *(v5 - 8);
  *(v4 + 104) = swift_task_alloc();
  v6 = sub_2278C6920();
  *(v4 + 112) = v6;
  *(v4 + 120) = *(v6 - 8);
  *(v4 + 128) = swift_task_alloc();
  v7 = sub_2278C6820();
  *(v4 + 136) = v7;
  *(v4 + 144) = *(v7 - 8);
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();
  v8 = sub_2278C75A0();
  *(v4 + 240) = v8;
  *(v4 + 248) = *(v8 - 8);
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = swift_task_alloc();
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 336) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22787995C, v3, 0);
}

uint64_t sub_22787995C(uint64_t a1)
{
  v2 = *(v1 + 336);
  v3 = *(v1 + 240);
  v4 = *(v1 + 248);
  sub_2278C7330();
  sub_2278C7580();
  v5 = *(v4 + 8);
  *(v1 + 344) = v5;
  *(v1 + 352) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v3);
  v6 = sub_2278C6DC0();
  *(v1 + 40) = v6;
  *(v1 + 48) = sub_22787FFAC();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v1 + 16));
  (*(*(v6 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D09878], v6);
  LOBYTE(v6) = sub_2278C6A70();
  __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(*(v1 + 64), *(*(v1 + 64) + 24));
    v8 = swift_task_alloc();
    *(v1 + 360) = v8;
    *v8 = v1;
    v8[1] = sub_227879CEC;

    return sub_22781E3A4();
  }

  else
  {
    sub_2278C7330();
    v10 = sub_2278C7590();
    v11 = sub_2278C7970();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v1 + 256);
    v14 = *(v1 + 240);
    if (v12)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2277F7000, v10, v11, "[EndTomorrowReminder] PauseRings feature flag not enabled, not notifying", v15, 2u);
      MEMORY[0x22AA9E860](v15, -1, -1);
    }

    v5(v13, v14);

    v16 = *(v1 + 8);

    return v16();
  }
}

uint64_t sub_227879CEC(char a1)
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
    v8 = *(v4 + 72);
    *(v4 + 585) = a1 & 1;

    return MEMORY[0x2822009F8](sub_227879F80, v8, 0);
  }
}

uint64_t sub_227879F80(uint64_t a1)
{
  if (*(v1 + 585) == 1)
  {
    if ([*(*(v1 + 72) + 112) fitnessAppInstalled])
    {
      v2 = MKBGetDeviceLockState();
      if (v2 != 3 && v2)
      {
        sub_2278C7330();
        v27 = sub_2278C7590();
        v28 = sub_2278C7970();
        v29 = os_log_type_enabled(v27, v28);
        v30 = *(v1 + 344);
        v31 = *(v1 + 280);
        v32 = *(v1 + 240);
        if (v29)
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&dword_2277F7000, v27, v28, "[EndTomorrowReminder] Currently locked, skipping...", v33, 2u);
          MEMORY[0x22AA9E860](v33, -1, -1);
        }

        v30(v31, v32);

        v34 = *(v1 + 8);

        return v34();
      }

      else
      {
        __swift_project_boxed_opaque_existential_1((*(v1 + 72) + 200), *(*(v1 + 72) + 224));
        v3 = swift_task_alloc();
        *(v1 + 368) = v3;
        *v3 = v1;
        v3[1] = sub_22787A500;
        v4 = *(v1 + 232);

        return sub_227849404(v4);
      }
    }

    sub_2278C7330();
    v17 = sub_2278C7590();
    v18 = sub_2278C7970();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2277F7000, v17, v18, "[EndTomorrowReminder] Not posting notification, fitness app not installed", v19, 2u);
      MEMORY[0x22AA9E860](v19, -1, -1);
    }

    v20 = *(v1 + 344);
    v21 = *(v1 + 272);
    v22 = *(v1 + 240);
    v23 = *(v1 + 160);
    v24 = *(v1 + 72);

    v20(v21, v22);
    __swift_project_boxed_opaque_existential_1((v24 + 160), *(v24 + 184));
    v25 = off_283AE99E0;
    type metadata accessor for DateProvider(0);
    v25(v23);
    v26 = swift_task_alloc();
    *(v1 + 552) = v26;
    *v26 = v1;
    v26[1] = sub_22787CD64;
    v16 = *(v1 + 160);
  }

  else
  {
    sub_2278C7330();
    v6 = sub_2278C7590();
    v7 = sub_2278C7970();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2277F7000, v6, v7, "[EndTomorrowReminder] We're not paused or paused doesn't end today or pause is less than 2 days, skipping...", v8, 2u);
      MEMORY[0x22AA9E860](v8, -1, -1);
    }

    v9 = *(v1 + 344);
    v10 = *(v1 + 264);
    v11 = *(v1 + 240);
    v12 = *(v1 + 152);
    v13 = *(v1 + 72);

    v9(v10, v11);
    __swift_project_boxed_opaque_existential_1((v13 + 160), *(v13 + 184));
    v14 = off_283AE99E0;
    type metadata accessor for DateProvider(0);
    v14(v12);
    v15 = swift_task_alloc();
    *(v1 + 568) = v15;
    *v15 = v1;
    v15[1] = sub_22787D1E4;
    v16 = *(v1 + 152);
  }

  return sub_227849C98(v16);
}

uint64_t sub_22787A500()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = sub_22787AEE0;
  }

  else
  {
    v4 = sub_22787A62C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22787A62C()
{
  v70 = v0;
  v1 = v0[28];
  v2 = v0[17];
  v3 = v0[18];
  sub_227850448(v0[29], v1, &qword_27D7D60A8, qword_2278C9730);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_227802FC4(v0[28], &qword_27D7D60A8, qword_2278C9730);
  }

  else
  {
    v4 = v0[26];
    v5 = v0[18];
    v7 = v0[15];
    v6 = v0[16];
    v64 = v0[17];
    v66 = v0[14];
    v8 = v0[9];
    (*(v5 + 32))(v0[27], v0[28]);
    __swift_project_boxed_opaque_existential_1((v8 + 160), *(v8 + 184));
    sub_227804920();
    __swift_project_boxed_opaque_existential_1((v8 + 160), *(v8 + 184));
    v9 = off_283AE99E0;
    type metadata accessor for DateProvider(0);
    v9(v4);
    v10 = sub_2278C68F0();
    v11 = *(v5 + 8);
    v11(v4, v64);
    (*(v7 + 8))(v6, v66);
    if (v10)
    {
      v12 = v0[27];
      v13 = v0[25];
      v14 = v0[17];
      v15 = v0[18];
      sub_2278C7330();
      (*(v15 + 16))(v13, v12, v14);
      v16 = sub_2278C7590();
      v63 = sub_2278C7970();
      v17 = os_log_type_enabled(v16, v63);
      v18 = v0[43];
      v19 = v0[29];
      v65 = v0[30];
      v67 = v0[41];
      v20 = v0[27];
      v21 = v0[25];
      v22 = v0[17];
      if (v17)
      {
        v62 = v0[27];
        v23 = swift_slowAlloc();
        v61 = v19;
        v24 = swift_slowAlloc();
        v69 = v24;
        *v23 = 136315138;
        v60 = v18;
        v25 = sub_2278C6790();
        v27 = v26;
        v11(v21, v22);
        v28 = sub_2278021B4(v25, v27, &v69);

        *(v23 + 4) = v28;
        _os_log_impl(&dword_2277F7000, v16, v63, "[EndTomorrowReminder] Already scheduled notification today at %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x22AA9E860](v24, -1, -1);
        MEMORY[0x22AA9E860](v23, -1, -1);

        v60(v67, v65);
        v11(v62, v22);
        v29 = v61;
      }

      else
      {

        v11(v21, v22);
        v18(v67, v65);
        v11(v20, v22);
        v29 = v19;
      }

      sub_227802FC4(v29, &qword_27D7D60A8, qword_2278C9730);

      v59 = v0[1];

      return v59();
    }

    v11(v0[27], v0[17]);
  }

  v30 = v0[26];
  v31 = v0[17];
  v32 = v0[18];
  v33 = v0[15];
  v34 = v0[16];
  v35 = v0[14];
  v36 = v0[9];
  sub_2278C6900();
  sub_2278C66D0();
  (*(v33 + 8))(v34, v35);
  sub_2278C67C0();
  v37 = *(v32 + 8);
  v0[48] = v37;
  v0[49] = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v37(v30, v31);
  v68 = v36;
  __swift_project_boxed_opaque_existential_1((v36 + 160), *(v36 + 184));
  v38 = off_283AE99E0;
  v0[50] = off_283AE99E0;
  v0[51] = &off_283AE99E0 & 0xFFFFFFFFFFFFLL | 0xB006000000000000;
  v0[52] = type metadata accessor for DateProvider(0);
  v38(v30);
  v39 = sub_2278C6770();
  v37(v30, v31);
  if (v39)
  {
    if (sub_22785ACAC())
    {
      __swift_project_boxed_opaque_existential_1((v0[9] + 240), *(v0[9] + 264));
      v40 = swift_task_alloc();
      v0[53] = v40;
      *v40 = v0;
      v40[1] = sub_22787B084;

      return sub_22783D088();
    }

    sub_2278C7330();
    v51 = sub_2278C7590();
    v52 = sub_2278C7970();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_2277F7000, v51, v52, "[EndTomorrowReminder] Pause Rings Reminder notifications are disabled because fitness tracking is disabled", v53, 2u);
      MEMORY[0x22AA9E860](v53, -1, -1);
    }

    v54 = v0[43];
    v55 = v0[37];
    v56 = v0[30];
    v57 = v0[22];

    v54(v55, v56);
    __swift_project_boxed_opaque_existential_1((v68 + 160), *(v68 + 184));
    v38(v57);
    v58 = swift_task_alloc();
    v0[65] = v58;
    *v58 = v0;
    v58[1] = sub_22787C694;
    v50 = v0[22];
  }

  else
  {
    sub_2278C7330();
    v42 = sub_2278C7590();
    v43 = sub_2278C7970();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_2277F7000, v42, v43, "[EndTomorrowReminder] Too late to trigger notification, skipping for today", v44, 2u);
      MEMORY[0x22AA9E860](v44, -1, -1);
    }

    v45 = v0[43];
    v46 = v0[36];
    v47 = v0[30];
    v48 = v0[21];

    v45(v46, v47);
    __swift_project_boxed_opaque_existential_1((v68 + 160), *(v68 + 184));
    v38(v48);
    v49 = swift_task_alloc();
    v0[67] = v49;
    *v49 = v0;
    v49[1] = sub_22787C9FC;
    v50 = v0[21];
  }

  return sub_227849C98(v50);
}

uint64_t sub_22787AEE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22787B084()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = sub_22787B250;
  }

  else
  {
    v4 = sub_22787B1B0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22787B1B0()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 72) + 448), *(*(v0 + 72) + 472));
  v1 = swift_task_alloc();
  *(v0 + 440) = v1;
  *v1 = v0;
  v1[1] = sub_22787B3A4;

  return sub_227854324();
}

uint64_t sub_22787B250(uint64_t a1)
{
  sub_2278C7330();
  v2 = sub_2278C7590();
  v3 = sub_2278C7970();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[54];
  v6 = v1[43];
  v7 = v1[40];
  v8 = v1[30];
  if (v4)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2277F7000, v2, v3, "[EndTomorrowReminder] Failed to enable first pickup retry", v9, 2u);
    MEMORY[0x22AA9E860](v9, -1, -1);
  }

  v6(v7, v8);
  __swift_project_boxed_opaque_existential_1((v1[9] + 448), *(v1[9] + 472));
  v10 = swift_task_alloc();
  v1[55] = v10;
  *v10 = v1;
  v10[1] = sub_22787B3A4;

  return sub_227854324();
}

uint64_t sub_22787B3A4(char a1)
{
  v2 = *(*v1 + 72);
  *(*v1 + 586) = a1;

  return MEMORY[0x2822009F8](sub_22787B4BC, v2, 0);
}

uint64_t sub_22787B4BC(uint64_t a1)
{
  if (*(v1 + 586))
  {
    sub_2278C7330();
    v2 = sub_2278C7590();
    v3 = sub_2278C7970();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v1 + 344);
    v6 = *(v1 + 304);
    v7 = *(v1 + 240);
    v28 = *(v1 + 232);
    v29 = *(v1 + 384);
    v8 = *(v1 + 192);
    v9 = *(v1 + 136);
    if (v4)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2277F7000, v2, v3, "[EndTomorrowReminder] Waiting for good morning screen dismissal", v10, 2u);
      MEMORY[0x22AA9E860](v10, -1, -1);
    }

    v5(v6, v7);
    v29(v8, v9);
    sub_227802FC4(v28, &qword_27D7D60A8, qword_2278C9730);

    v11 = *(v1 + 8);

    return v11();
  }

  else
  {
    sub_2278C7330();
    v13 = sub_2278C7590();
    v14 = sub_2278C7970();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2277F7000, v13, v14, "[EndTomorrowReminder] Scheduling notification to fire one minute after next lock", v15, 2u);
      MEMORY[0x22AA9E860](v15, -1, -1);
    }

    v16 = *(v1 + 344);
    v17 = *(v1 + 312);
    v18 = *(v1 + 240);
    v20 = *(v1 + 96);
    v19 = *(v1 + 104);
    v21 = *(v1 + 88);
    v22 = *(v1 + 64);

    v16(v17, v18);
    v23 = __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    (*(v20 + 104))(v19, *MEMORY[0x277D09AD8], v21);
    *(v1 + 448) = *v23;
    v24 = swift_task_alloc();
    *(v1 + 456) = v24;
    *v24 = v1;
    v24[1] = sub_22787B88C;
    v25 = *(v1 + 104);
    v26 = *(v1 + 80);
    v27 = *(v1 + 584);

    return sub_22781D4F8(v26, v25, v27);
  }
}

uint64_t sub_22787B88C()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_22787BB5C;
  }

  else
  {
    v2 = sub_22787B9A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22787B9A0()
{
  __swift_project_boxed_opaque_existential_1((v0[56] + 184), *(v0[56] + 208));
  v1 = swift_task_alloc();
  v0[59] = v1;
  *v1 = v0;
  v1[1] = sub_22787BA48;
  v2 = v0[10];

  return sub_22782266C(v2);
}

uint64_t sub_22787BA48()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_22787C438;
  }

  else
  {
    v2 = sub_22787BBE0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22787BB5C()
{
  v0[64] = v0[58];
  v1 = v0[9];
  (*(v0[12] + 8))(v0[13], v0[11]);

  return MEMORY[0x2822009F8](sub_22787C4C4, v1, 0);
}

uint64_t sub_22787BBE0()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[9];
  sub_227810208(v0[10]);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_22787BC70, v4, 0);
}

uint64_t sub_22787BC70()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 72) + 240), *(*(v0 + 72) + 264));
  v1 = swift_task_alloc();
  *(v0 + 488) = v1;
  *v1 = v0;
  v1[1] = sub_22787BD10;

  return sub_22783C6DC();
}

uint64_t sub_22787BD10()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x2822009F8](sub_22787BE20, v1, 0);
}

uint64_t sub_22787BE20()
{
  v1 = v0[52];
  v2 = v0[50];
  __swift_project_boxed_opaque_existential_1((v0[9] + 160), *(v0[9] + 184));
  v2(v1, &off_283AE99D8);
  v3 = swift_task_alloc();
  v0[62] = v3;
  *v3 = v0;
  v3[1] = sub_22787BF08;
  v4 = v0[23];

  return sub_227849C98(v4);
}

uint64_t sub_22787BF08()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *(*v1 + 184);
  v5 = *(*v1 + 136);
  *(*v1 + 504) = v0;

  v3(v4, v5);
  v6 = *(v2 + 72);
  if (v0)
  {
    v7 = sub_22787C268;
  }

  else
  {
    v7 = sub_22787C0A0;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22787C0A0()
{
  v1 = *(v0 + 232);
  (*(v0 + 384))(*(v0 + 192), *(v0 + 136));
  sub_227802FC4(v1, &qword_27D7D60A8, qword_2278C9730);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22787C268()
{
  v1 = *(v0 + 232);
  (*(v0 + 384))(*(v0 + 192), *(v0 + 136));
  sub_227802FC4(v1, &qword_27D7D60A8, qword_2278C9730);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22787C438()
{
  sub_227810208(v0[10]);
  v0[64] = v0[60];
  v1 = v0[9];
  (*(v0[12] + 8))(v0[13], v0[11]);

  return MEMORY[0x2822009F8](sub_22787C4C4, v1, 0);
}

uint64_t sub_22787C4C4()
{
  v1 = *(v0 + 232);
  (*(v0 + 384))(*(v0 + 192), *(v0 + 136));
  sub_227802FC4(v1, &qword_27D7D60A8, qword_2278C9730);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22787C694()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *(*v1 + 176);
  v5 = *(*v1 + 136);
  *(*v1 + 528) = v0;

  v3(v4, v5);
  v6 = *(v2 + 72);
  if (v0)
  {
    v7 = sub_22787C82C;
  }

  else
  {
    v7 = sub_2278802B0;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22787C82C()
{
  v1 = *(v0 + 232);
  (*(v0 + 384))(*(v0 + 192), *(v0 + 136));
  sub_227802FC4(v1, &qword_27D7D60A8, qword_2278C9730);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22787C9FC()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *(*v1 + 168);
  v5 = *(*v1 + 136);
  *(*v1 + 544) = v0;

  v3(v4, v5);
  v6 = *(v2 + 72);
  if (v0)
  {
    v7 = sub_22787CB94;
  }

  else
  {
    v7 = sub_2278802B0;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22787CB94()
{
  v1 = *(v0 + 232);
  (*(v0 + 384))(*(v0 + 192), *(v0 + 136));
  sub_227802FC4(v1, &qword_27D7D60A8, qword_2278C9730);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22787CD64()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *v1;
  v5[70] = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v6 = v5[9];

    return MEMORY[0x2822009F8](sub_22787D040, v6, 0);
  }

  else
  {

    v7 = v5[1];

    return v7();
  }
}

uint64_t sub_22787D040()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22787D1E4()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *v1;
  v5[72] = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v6 = v5[9];

    return MEMORY[0x2822009F8](sub_22787D4C0, v6, 0);
  }

  else
  {

    v7 = v5[1];

    return v7();
  }
}

uint64_t sub_22787D4C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22787D664()
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

  return MEMORY[0x2822009F8](sub_22787D794, v0, 0);
}

uint64_t sub_22787D794()
{
  v1 = __swift_project_boxed_opaque_existential_1((*(v0 + 104) + 288), *(*(v0 + 104) + 312));
  v2 = *v1;
  *(v0 + 184) = *v1;

  return MEMORY[0x2822009F8](sub_22787D808, v2, 0);
}

uint64_t sub_22787D808()
{
  v1 = __swift_project_boxed_opaque_existential_1((*(v0 + 184) + 192), *(*(v0 + 184) + 216));
  v2 = *v1;
  *(v0 + 192) = *v1;

  return MEMORY[0x2822009F8](sub_22787D87C, v2, 0);
}

uint64_t sub_22787D87C()
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

  return MEMORY[0x2822009F8](sub_22787D99C, v8, 0);
}

void sub_22787D99C()
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
      v0[11] = 0xD00000000000002CLL;
      v0[12] = 0x80000002278D07B0;
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
        *(v36 + 16) = &unk_2278CD8C8;
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

uint64_t sub_22787DE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  return MEMORY[0x2822009F8](sub_22787DFE8, 0, 0);
}

uint64_t sub_22787DFE8(uint64_t a1)
{
  v25 = v1;
  v2 = v1[18];
  v3 = v1[13];
  sub_2278C7330();
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
    _os_log_impl(&dword_2277F7000, v4, v5, "[EndTomorrowReminder] Suppressing pending notifcation: %s", v12, 0xCu);
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
    sub_2278040AC(Strong + 288, (v1 + 2));

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

uint64_t sub_22787E250()
{
  v1 = __swift_project_boxed_opaque_existential_1((*(v0 + 176) + 192), *(*(v0 + 176) + 216));
  v2 = *v1;
  *(v0 + 184) = *v1;

  return MEMORY[0x2822009F8](sub_22787E2C4, v2, 0);
}

uint64_t sub_22787E2C4()
{
  v1 = v0[15];
  v2 = (v0[13] + *(v0[16] + 36));
  v3 = *v2;
  v4 = v2[1];
  (*(v0[17] + 56))(v1, 1, 1);
  swift_beginAccess();

  sub_22788B434(v1, v3, v4);
  swift_endAccess();
  sub_2278B4388();

  return MEMORY[0x2822009F8](sub_22787E3AC, 0, 0);
}

uint64_t sub_22787E3AC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22787E42C()
{
  v1[14] = v0;
  v2 = sub_2278C75A0();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22787E4F8, v0, 0);
}

uint64_t sub_22787E4F8(uint64_t a1)
{
  v2 = v1[14];
  if (*(v2 + 576) || (sub_2278C7440(), v3 = sub_2278C7450(), v3 != sub_2278C7450()))
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
    sub_2278C7330();
    sub_2278C7580();
    v8 = *(v6 + 8);
    v1[19] = v8;
    v1[20] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v4, v5);
    v9 = *(v7 + 280);
    if (qword_2813BB688 != -1)
    {
      swift_once();
    }

    v10 = v1[14];
    v11 = qword_2813BC3C0;
    v12 = objc_opt_self();
    v13 = [v12 mainQueue];
    v1[6] = sub_227880110;
    v1[7] = v10;
    v1[2] = MEMORY[0x277D85DD0];
    v1[3] = 1107296256;
    v1[4] = sub_227872968;
    v1[5] = &block_descriptor_19;
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
    v1[12] = sub_227880130;
    v1[13] = v16;
    v1[8] = MEMORY[0x277D85DD0];
    v1[9] = 1107296256;
    v1[10] = sub_227872968;
    v1[11] = &block_descriptor_73;
    v19 = _Block_copy(v1 + 8);

    v20 = [v9 addObserverForName:v17 object:0 queue:v18 usingBlock:v19];
    v1[22] = v20;
    _Block_release(v19);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D63E0, &unk_2278CC430);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_2278C9970;
    *(v21 + 32) = v15;
    *(v21 + 40) = v20;
    *(v2 + 576) = v21;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    v22 = swift_task_alloc();
    v1[23] = v22;
    *v22 = v1;
    v22[1] = sub_22787E8F8;

    return sub_227872C28();
  }
}

uint64_t sub_22787E8F8()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_22787EA9C;
  }

  else
  {
    v4 = sub_22787EA24;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22787EA24()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22787EA9C(uint64_t a1)
{
  v2 = *(v1 + 192);
  sub_2278C7330();
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
    _os_log_impl(&dword_2277F7000, v4, v5, "Error processing PauseRingsSystem: %@", v8, 0xCu);
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

uint64_t sub_22787EC50(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6570, &qword_2278C9AE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - v4;
  v6 = sub_2278C75A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2278C7330();
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
  sub_22788B134(0, 0, v5, &unk_2278CD908, v19);
}

uint64_t sub_22787EF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_2278C75A0();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22787F008, 0, 0);
}

uint64_t sub_22787F008()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_22787F0F8;

    return sub_227872C28();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_22787F0F8()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2278802A4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

void sub_22787F23C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6570, &qword_2278C9AE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24[-4] - v3;
  v5 = sub_2278C75A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24[-4] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2278C6560();
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  strcpy(v24, "XPCStreamName");
  v24[7] = -4864;
  sub_2278C7BF0();
  if (!*(v10 + 16) || (v11 = sub_2278AE394(v25), (v12 & 1) == 0))
  {

    sub_227815D88(v25);
LABEL_10:
    v26 = 0u;
    v27 = 0u;
    goto LABEL_11;
  }

  sub_227802850(*(v10 + 56) + 32 * v11, &v26);
  sub_227815D88(v25);

  if (!*(&v27 + 1))
  {
LABEL_11:
    sub_227802FC4(&v26, &qword_27D7D60A0, qword_2278C98D0);
    return;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v14 = v25[0];
  v13 = v25[1];
  if (sub_2278C7700() == v14 && v15 == v13)
  {
  }

  else
  {
    v16 = sub_2278C7DC0();

    if ((v16 & 1) == 0)
    {
      return;
    }
  }

  sub_2278C7330();
  v17 = sub_2278C7590();
  v18 = sub_2278C7970();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2277F7000, v17, v18, "Handle FCPauseRingsSampleChanged notification", v19, 2u);
    MEMORY[0x22AA9E860](v19, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v20 = sub_2278C7840();
  (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v21;
  sub_22788B134(0, 0, v4, &unk_2278CD8F8, v22);
}

uint64_t sub_22787F5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_2278C75A0();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22787F688, 0, 0);
}

uint64_t sub_22787F688()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_22787F778;

    return sub_227872C28();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_22787F778()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22787F8BC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_22787F8BC()
{
  v1 = v0[11];

  sub_2278C7330();
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

uint64_t sub_22787FA4C()
{
  v0 = sub_2278C7110();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v26 - v5;
  v7 = *MEMORY[0x277D09A88];
  v8 = *(v1 + 104);
  v8(v26 - v5, v7, v0);
  *&v27 = sub_2278C70F0();
  v9 = *(v1 + 8);
  v9(v6, v0);
  v8(v4, v7, v0);
  v26[1] = sub_2278C7100();
  v9(v4, v0);
  v8(v4, v7, v0);
  v10 = sub_2278C70E0();
  v9(v4, v0);
  v11 = sub_2278C76F0();

  v12 = sub_2278C76F0();

  v13 = [objc_opt_self() actionWithIdentifier:v11 title:v12 options:4 icon:v10];

  v14 = *MEMORY[0x277D09C40];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D63E0, &unk_2278CC430);
  v15 = swift_allocObject();
  v27 = xmmword_2278CC820;
  *(v15 + 16) = xmmword_2278CC820;
  *(v15 + 32) = v13;
  sub_22787FD88();
  v16 = v14;
  v17 = v13;
  v18 = sub_2278C7790();

  v19 = sub_2278C7790();
  v20 = sub_2278C76F0();
  v21 = [objc_opt_self() categoryWithIdentifier:v16 actions:v18 intentIdentifiers:v19 hiddenPreviewsBodyPlaceholder:v20 options:1];

  inited = swift_initStackObject();
  *(inited + 16) = v27;
  *(inited + 32) = v21;
  v23 = v21;
  v24 = sub_2278A4CF8(inited);

  return v24;
}

unint64_t sub_22787FD88()
{
  result = qword_2813B9AF8;
  if (!qword_2813B9AF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813B9AF8);
  }

  return result;
}

uint64_t sub_22787FDD4(uint64_t a1)
{
  v4 = *(type metadata accessor for NotificationRequest(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2278003CC;

  return sub_22787DE94(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_22787FEF4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2278004C0;

  return sub_227888604(a1, v4);
}

unint64_t sub_22787FFAC()
{
  result = qword_2813BC128;
  if (!qword_2813BC128)
  {
    sub_2278C6DC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BC128);
  }

  return result;
}

uint64_t objectdestroy_46Tm()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_227880050(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278003CC;

  return sub_227878F74(a1, v4, v5, v6, (v1 + 5));
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_227880138(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278004C0;

  return sub_22787F5C8(a1, v4, v5, v6);
}

uint64_t sub_2278801EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278004C0;

  return sub_22787EF48(a1, v4, v5, v6);
}

uint64_t sub_2278802B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2278003CC;

  return v9(a1, a2, a3);
}

uint64_t sub_2278803DC(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_2278C75A0();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = sub_2278C7160();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278804F8, 0, 0);
}

uint64_t sub_2278804F8()
{
  v1 = [*(v0 + 56) completedGoalTypes];
  sub_2278184E8();
  v2 = sub_2278C77A0();

  if (v2 >> 62)
  {
    v3 = sub_2278C7B80();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 == 1)
  {
    v4 = [*(v0 + 56) completedGoalTypes];
    v5 = sub_2278C77A0();

    if (v5 >> 62)
    {
      v9 = sub_2278C7B80();
      if (v9)
      {
LABEL_6:
        if ((v5 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x22AA9DBF0](0, v5);
        }

        else
        {
          if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return MEMORY[0x282160398](v9, v6, v7, v8);
          }

          v10 = *(v5 + 32);
        }

        v11 = v10;
        v13 = *(v0 + 56);
        v12 = *(v0 + 64);

        *(v0 + 120) = [v11 integerValue];

        v14 = v12[3];
        v15 = v12[4];
        __swift_project_boxed_opaque_existential_1(v12, v14);
        v16 = [v13 activitySummaryIndex];
        *(v0 + 40) = MEMORY[0x277D84F90];
        sub_227882164(&qword_2813BC0F8, MEMORY[0x277D09AB8], MEMORY[0x277D09AC0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6158, &qword_2278CBE40);
        sub_227829300();
        sub_2278C7AF0();
        v17 = swift_task_alloc();
        *(v0 + 128) = v17;
        *v17 = v0;
        v17[1] = sub_2278807E8;
        v6 = *(v0 + 112);
        v9 = v16;
        v7 = v14;
        v8 = v15;

        return MEMORY[0x282160398](v9, v6, v7, v8);
      }
    }

    else
    {
      v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
        goto LABEL_6;
      }
    }
  }

  v18 = *(v0 + 8);

  return v18(0);
}

uint64_t sub_2278807E8(uint64_t a1)
{
  v4 = *v2;
  v4[17] = v1;

  v5 = v4[14];
  v6 = v4[13];
  v7 = v4[12];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_227880A0C;
  }

  else
  {
    v4[18] = a1;
    (*(v6 + 8))(v5, v7);
    v8 = sub_227880970;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_227880970()
{
  v1 = *(v0 + 144);
  sub_2278C79F0();
  v3 = v2;

  v4 = *(v0 + 8);

  return v4(v3 >= 1.01);
}

uint64_t sub_227880A0C(uint64_t a1)
{
  v21 = v1;
  v2 = *(v1 + 136);
  sub_2278C7360();
  v3 = v2;
  v4 = sub_2278C7590();
  v5 = sub_2278C7950();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 136);
    v7 = *(v1 + 80);
    v19 = *(v1 + 88);
    v8 = *(v1 + 72);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x22AA9DD80](*(v1 + 24), *(v1 + 32));
    v13 = sub_2278021B4(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2277F7000, v4, v5, "Error fetching summary for goal exceeded %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9E860](v10, -1, -1);
    MEMORY[0x22AA9E860](v9, -1, -1);

    (*(v7 + 8))(v19, v8);
  }

  else
  {
    v15 = *(v1 + 80);
    v14 = *(v1 + 88);
    v16 = *(v1 + 72);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v1 + 8);

  return v17(0);
}

uint64_t sub_227880BF4(uint64_t a1)
{
  v2[33] = a1;
  v2[34] = v1;
  v3 = sub_2278C6860();
  v2[35] = v3;
  v2[36] = *(v3 - 8);
  v2[37] = swift_task_alloc();
  v4 = sub_2278C6920();
  v2[38] = v4;
  v2[39] = *(v4 - 8);
  v2[40] = swift_task_alloc();
  v5 = sub_2278C6820();
  v2[41] = v5;
  v2[42] = *(v5 - 8);
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v6 = sub_2278C7420();
  v2[45] = v6;
  v2[46] = *(v6 - 8);
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v7 = sub_2278C75A0();
  v2[49] = v7;
  v2[50] = *(v7 - 8);
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227880E6C, 0, 0);
}

uint64_t sub_227880E6C(uint64_t a1)
{
  v2 = v1[55];
  v3 = v1[49];
  v4 = v1[50];
  v6 = v1[47];
  v5 = v1[48];
  v7 = v1[45];
  v8 = v1[46];
  sub_2278C7360();
  sub_2278C7580();
  v9 = *(v4 + 8);
  v1[56] = v9;
  v1[57] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v2, v3);
  sub_2278C7430();
  sub_2278C73D0();
  sub_227882164(&qword_2813BC0F0, MEMORY[0x277D09B28], MEMORY[0x277D09B30]);
  LOBYTE(v2) = sub_2278C7AE0();
  v10 = *(v8 + 8);
  v10(v6, v7);
  v10(v5, v7);
  if (v2)
  {
    if (sub_22785ACAC())
    {
      __swift_project_boxed_opaque_existential_1((v1[34] + 184), *(v1[34] + 208));
      v11 = swift_task_alloc();
      v1[58] = v11;
      *v11 = v1;
      v11[1] = sub_2278811F8;

      return sub_227817030(0xD000000000000015, 0x80000002278CFA80);
    }

    sub_2278C7360();
    v13 = sub_2278C7590();
    v14 = sub_2278C7970();
    v20 = os_log_type_enabled(v13, v14);
    v16 = v1[52];
    v17 = v1[49];
    if (v20)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "Not posting goal completion notification, fitness tracking is disabled";
      goto LABEL_10;
    }
  }

  else
  {
    sub_2278C7360();
    v13 = sub_2278C7590();
    v14 = sub_2278C7970();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v1[51];
    v17 = v1[49];
    if (v15)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "Not posting goal completion notification, disabled for platform";
LABEL_10:
      _os_log_impl(&dword_2277F7000, v13, v14, v19, v18, 2u);
      MEMORY[0x22AA9E860](v18, -1, -1);
    }
  }

  v9(v16, v17);

  v21 = v1[1];

  return v21();
}

uint64_t sub_2278811F8(unsigned __int8 a1)
{
  v2 = a1;

  if (v2 == 2 || (a1 & 1) != 0)
  {
    v3 = sub_227881318;
  }

  else
  {
    v3 = sub_227881FCC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227881318()
{
  v1 = v0[33];
  v2 = *(v0[34] + 136);
  v0[59] = v2;
  v3 = [v1 completedGoalTypes];
  if (!v3)
  {
    sub_2278184E8();
    sub_2278C77A0();
    v3 = sub_2278C7790();
  }

  v4 = v2 == 2;
  v5 = v0[34];
  v6 = objc_opt_self();
  v0[60] = v6;
  v0[61] = *(v5 + 120);
  v7 = [v6 localizedTitleForGoalsCompleted:v3 isWheelchairUser:v4 experienceType:?];

  if (!v7)
  {
    sub_2278C7700();
    v7 = sub_2278C76F0();
  }

  v0[62] = v7;
  v8 = swift_task_alloc();
  v0[63] = v8;
  *v8 = v0;
  v8[1] = sub_227881474;
  v9 = v0[33];

  return sub_2278803DC(v9);
}

uint64_t sub_227881474(char a1)
{
  *(*v1 + 544) = a1;

  return MEMORY[0x2822009F8](sub_227881574, 0, 0);
}

uint64_t sub_227881574()
{
  v1 = [*(v0 + 264) completedGoalTypes];
  if (!v1)
  {
    sub_2278184E8();
    sub_2278C77A0();
    v1 = sub_2278C7790();
  }

  v2 = *(v0 + 352);
  v4 = *(v0 + 328);
  v3 = *(v0 + 336);
  v5 = *(v0 + 272);
  __swift_project_boxed_opaque_existential_1(v5 + 10, v5[13]);
  v6 = off_283AE99E0;
  type metadata accessor for DateProvider(0);
  v50 = v6;
  v6(v2);
  v7 = sub_2278C67D0();
  v52 = *(v3 + 8);
  v52(v2, v4);
  v51 = v5;
  v8 = __swift_project_boxed_opaque_existential_1(v5 + 5, v5[8]);
  sub_227865154(*v8);
  if (v9)
  {
    v10 = sub_2278C76F0();
  }

  else
  {
    v10 = 0;
  }

  LOBYTE(v47) = 1;
  v11 = [*(v0 + 480) localizedDescriptionForGoalsCompleted:v1 singleGoalExceeded:*(v0 + 544) date:v7 firstName:v10 isWheelchairUser:*(v0 + 472) == 2 experienceType:*(v0 + 488) isStandalone:v47];

  if (!v11)
  {
    sub_2278C7700();
    v11 = sub_2278C76F0();
  }

  v12 = *(v0 + 480);
  v13 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
  *(v0 + 512) = v13;
  [v13 setCategoryIdentifier_];
  v14 = [v12 localizedAppName];
  if (!v14)
  {
    sub_2278C7700();
    v14 = sub_2278C76F0();
  }

  v15 = *(v0 + 496);
  v17 = *(v0 + 344);
  v16 = *(v0 + 352);
  v19 = *(v0 + 320);
  v18 = *(v0 + 328);
  v20 = *(v0 + 312);
  v48 = *(v0 + 304);
  v49 = *(v0 + 264);
  [v13 setTitle_];

  [v13 setSubtitle_];
  [v13 setBody_];

  __swift_project_boxed_opaque_existential_1(v51 + 10, v51[13]);
  v50(v17);
  __swift_project_boxed_opaque_existential_1(v51 + 10, v51[13]);
  sub_227804920();
  sub_2278C6760();
  (*(v20 + 8))(v19, v48);
  v52(v17, v18);
  v21 = sub_2278C67D0();
  v52(v16, v18);
  [v13 setExpirationDate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6148, &unk_2278CD390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2278C9140;
  *(v0 + 248) = sub_2278C7700();
  *(v0 + 256) = v23;
  sub_2278C7BF0();
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = 3;
  sub_2278C3BA4(inited);
  swift_setDeallocating();
  sub_227802FC4(inited + 32, &qword_27D7D6150, &unk_2278CAAE0);
  v24 = sub_2278C7640();

  [v13 setUserInfo_];

  sub_2277FF194(100.0, 100.0);
  v25 = sub_2278C76F0();

  v26 = [objc_opt_self() iconAtPath_];
  *(v0 + 520) = v26;

  v53 = v13;
  [v13 setIcon_];
  sub_2278C7360();
  v27 = v49;
  v28 = sub_2278C7590();
  v29 = sub_2278C7970();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = *(v0 + 264);
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    *(v31 + 4) = v30;
    *v32 = v30;
    v33 = v30;
    _os_log_impl(&dword_2277F7000, v28, v29, "Posting goal completion notification: %@", v31, 0xCu);
    sub_227802FC4(v32, &qword_27D7D64B0, &qword_2278CA010);
    MEMORY[0x22AA9E860](v32, -1, -1);
    MEMORY[0x22AA9E860](v31, -1, -1);
  }

  v34 = *(v0 + 448);
  v35 = *(v0 + 432);
  v36 = *(v0 + 392);
  v37 = *(v0 + 288);
  v38 = *(v0 + 296);
  v40 = *(v0 + 272);
  v39 = *(v0 + 280);

  v34(v35, v36);
  sub_2278C6850();
  sub_2278C6840();
  (*(v37 + 8))(v38, v39);
  v41 = v53;
  v42 = sub_2278C76F0();

  v43 = [objc_opt_self() requestWithIdentifier:v42 content:v41 trigger:0];
  *(v0 + 528) = v43;

  v44 = *__swift_project_boxed_opaque_existential_1((v40 + 144), *(v40 + 168));
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_227881C98;
  v45 = swift_continuation_init();
  *(v0 + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6130, qword_2278CD4F0);
  *(v0 + 184) = MEMORY[0x277D85DD0];
  *(v0 + 192) = 1107296256;
  *(v0 + 200) = sub_227822B84;
  *(v0 + 208) = &block_descriptor_20;
  *(v0 + 216) = v45;
  [v44 addNotificationRequest:v43 withCompletionHandler:?];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_227881C98()
{
  v1 = *(*v0 + 48);
  *(*v0 + 536) = v1;
  if (v1)
  {
    v2 = sub_227881EB0;
  }

  else
  {
    v2 = sub_227881DA8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227881DA8()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 512);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_227881EB0(uint64_t a1)
{
  v2 = v1[66];
  v3 = v1[65];
  v4 = v1[64];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t sub_227881FCC(uint64_t a1)
{
  sub_2278C7360();
  v2 = sub_2278C7590();
  v3 = sub_2278C7970();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[56];
  v6 = v1[53];
  v7 = v1[49];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2277F7000, v2, v3, "Not posting goal completion notification, goal completion notifications are disabled in settings", v8, 2u);
    MEMORY[0x22AA9E860](v8, -1, -1);
  }

  v5(v6, v7);

  v9 = v1[1];

  return v9();
}

uint64_t sub_227882164(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2278821B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 264))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2278821FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22788228C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2278004C0;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_2278823BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2278004C0;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_2278824EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2278004C0;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_227882620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 32) + **(a5 + 32));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2278004C0;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_227882764(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 40) + **(a2 + 40));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2278004C0;

  return v7(a1, a2);
}

uint64_t sub_22788287C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2278003CC;

  return v9(a1, a2, a3);
}

uint64_t sub_2278829A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 56) + **(a3 + 56));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2278004C0;

  return v9(a1, a2, a3);
}

id sub_227882AE0()
{
  v0 = sub_2278C75A0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!result)
  {
    sub_2278C73A0();
    v5 = sub_2278C7590();
    v6 = sub_2278C7950();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2277F7000, v5, v6, "Failed to create notification settings user defaults", v7, 2u);
      MEMORY[0x22AA9E860](v7, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }

  return result;
}

uint64_t sub_227882C44(uint64_t a1)
{
  v2 = sub_2278C75A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2278C6D60();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == *MEMORY[0x277D09868] || v10 == *MEMORY[0x277D09860])
  {
    return sub_2278C7700();
  }

  sub_2278C7370();
  sub_2278C7580();
  (*(v3 + 8))(v5, v2);
  result = sub_2278C7D00();
  __break(1u);
  return result;
}

uint64_t sub_227882E94(uint64_t a1)
{
  v2 = sub_2278C75A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2278C6D60();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == *MEMORY[0x277D09868] || v10 == *MEMORY[0x277D09860])
  {
    return sub_2278C7700();
  }

  sub_2278C7370();
  sub_2278C7580();
  (*(v3 + 8))(v5, v2);
  result = sub_2278C7D00();
  __break(1u);
  return result;
}

uint64_t sub_2278830E4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 152) = a2;
  *(v4 + 160) = v3;
  *(v4 + 336) = a3;
  *(v4 + 144) = a1;
  *(v4 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();
  v5 = sub_2278C6820();
  *(v4 + 208) = v5;
  *(v4 + 216) = *(v5 - 8);
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();
  v6 = sub_2278C6D60();
  *(v4 + 240) = v6;
  *(v4 + 248) = *(v6 - 8);
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = swift_task_alloc();
  v7 = sub_2278C75A0();
  *(v4 + 288) = v7;
  *(v4 + 296) = *(v7 - 8);
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 328) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227883318, 0, 0);
}

uint64_t sub_227883318()
{
  v170 = v0;
  v1 = *(v0 + 336);
  v2 = sub_227882E94(*(v0 + 152));
  v3 = v2;
  v5 = v4;
  if (v1 == 1)
  {
    v164 = v2;
    v6 = *(v0 + 280);
    v8 = *(v0 + 240);
    v7 = *(v0 + 248);
    v9 = *(v0 + 152);
    sub_2278C7370();
    (*(v7 + 16))(v6, v9, v8);
    v10 = sub_2278C7590();
    v11 = sub_2278C7970();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 328);
    v14 = *(v0 + 288);
    v15 = *(v0 + 296);
    v16 = *(v0 + 280);
    v18 = *(v0 + 240);
    v17 = *(v0 + 248);
    if (v12)
    {
      v157 = v5;
      v19 = swift_slowAlloc();
      v160 = v14;
      v20 = swift_slowAlloc();
      *&v168 = v20;
      *v19 = 136315138;
      v154 = v13;
      v21 = sub_2278C6D50();
      v151 = v11;
      v23 = v22;
      (*(v17 + 8))(v16, v18);
      v24 = sub_2278021B4(v21, v23, &v168);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_2277F7000, v10, v151, "[%s] Scheduled date pref syncing", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x22AA9E860](v20, -1, -1);
      v25 = v19;
      v5 = v157;
      MEMORY[0x22AA9E860](v25, -1, -1);

      (*(v15 + 8))(v154, v160);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
      (*(v15 + 8))(v13, v14);
    }

    v26 = [objc_allocWithZone(MEMORY[0x277D2BA60]) init];
    v27 = *MEMORY[0x277D09B98];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6088, &qword_2278C96A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2278C9140;
    v3 = v164;
    *(inited + 32) = v164;
    *(inited + 40) = v5;
    v29 = v27;

    sub_22788594C(inited);
    swift_setDeallocating();
    sub_227885AB4(inited + 32);
    v30 = sub_2278C78C0();

    [v26 synchronizeUserDefaultsDomain:v29 keys:v30];
  }

  v31 = sub_227882AE0();
  if (!v31)
  {
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
LABEL_15:
    v71 = *(v0 + 208);
    v72 = *(v0 + 216);
    v73 = *(v0 + 200);
    sub_227802FC4(v0 + 64, &qword_27D7D60A0, qword_2278C98D0);
    v40 = *(v72 + 56);
    v40(v73, 1, 1, v71);
LABEL_16:
    sub_227802FC4(*(v0 + 200), &qword_27D7D60A8, qword_2278C9730);
    v74 = sub_227882AE0();
    if (v74)
    {
      v75 = v74;
      v76 = sub_2278C76F0();
      v77 = [v75 objectForKey_];

      if (v77)
      {
        sub_2278C7AD0();
        swift_unknownObjectRelease();
      }

      else
      {
        v168 = 0u;
        v169 = 0u;
      }

      v78 = v169;
      *(v0 + 96) = v168;
      *(v0 + 112) = v78;
      if (*(v0 + 120))
      {
        if (swift_dynamicCast())
        {
          v80 = *(v0 + 128);
          v79 = *(v0 + 136);
          v81 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
          v82 = sub_2278C76F0();
          [v81 setDateFormat_];

          loga = v80;
          v155 = v79;
          v83 = sub_2278C76F0();
          v162 = v81;
          v84 = [v81 dateFromString_];

          v158 = v5;
          v166 = v3;
          v85 = v40;
          if (v84)
          {
            sub_2278C6800();

            v86 = 0;
          }

          else
          {
            v86 = 1;
          }

          v109 = *(v0 + 264);
          v110 = *(v0 + 240);
          v111 = *(v0 + 248);
          v113 = *(v0 + 184);
          v112 = *(v0 + 192);
          v114 = *(v0 + 176);
          v115 = *(v0 + 152);
          v85(v113, v86, 1, *(v0 + 208));
          sub_227854DEC(v113, v112);
          sub_2278C7370();
          (*(v111 + 16))(v109, v115, v110);
          sub_2278102C8(v112, v114);

          v116 = sub_2278C7590();
          LOBYTE(v110) = sub_2278C7970();

          v147 = v110;
          v153 = v116;
          v117 = os_log_type_enabled(v116, v110);
          v118 = *(v0 + 312);
          v120 = *(v0 + 288);
          v119 = *(v0 + 296);
          v121 = *(v0 + 264);
          v122 = *(v0 + 240);
          v123 = *(v0 + 248);
          v124 = *(v0 + 176);
          if (v117)
          {
            v145 = *(v0 + 288);
            v125 = swift_slowAlloc();
            v141 = swift_slowAlloc();
            *&v168 = v141;
            *v125 = 136315906;
            v126 = sub_2278C6D50();
            v143 = v118;
            v128 = v127;
            (*(v123 + 8))(v121, v122);
            v129 = sub_2278021B4(v126, v128, &v168);

            *(v125 + 4) = v129;
            *(v125 + 12) = 2080;
            v130 = sub_2278021B4(loga, v155, &v168);

            *(v125 + 14) = v130;
            *(v125 + 22) = 2080;
            v131 = sub_2278021B4(v166, v158, &v168);

            *(v125 + 24) = v131;
            *(v125 + 32) = 2080;
            v132 = sub_2278C7AA0();
            v134 = v133;
            sub_227802FC4(v124, &qword_27D7D60A8, qword_2278C9730);
            v135 = sub_2278021B4(v132, v134, &v168);

            *(v125 + 34) = v135;
            _os_log_impl(&dword_2277F7000, v153, v147, "[%s] Scheduled Date from %s: (%s) = %s", v125, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x22AA9E860](v141, -1, -1);
            MEMORY[0x22AA9E860](v125, -1, -1);

            (*(v119 + 8))(v143, v145);
          }

          else
          {

            sub_227802FC4(v124, &qword_27D7D60A8, qword_2278C9730);
            (*(v123 + 8))(v121, v122);
            (*(v119 + 8))(v118, v120);
          }

          sub_227854DEC(*(v0 + 192), *(v0 + 144));
          goto LABEL_39;
        }

LABEL_28:
        v88 = *(v0 + 248);
        v87 = *(v0 + 256);
        v89 = *(v0 + 240);
        v90 = *(v0 + 152);
        sub_2278C7370();
        (*(v88 + 16))(v87, v90, v89);
        v91 = sub_2278C7590();
        v92 = sub_2278C7970();
        v93 = os_log_type_enabled(v91, v92);
        v95 = *(v0 + 296);
        v94 = *(v0 + 304);
        v96 = *(v0 + 288);
        v98 = *(v0 + 248);
        v97 = *(v0 + 256);
        v99 = *(v0 + 240);
        if (v93)
        {
          v167 = *(v0 + 288);
          v100 = swift_slowAlloc();
          v156 = v92;
          v101 = swift_slowAlloc();
          *&v168 = v101;
          *v100 = 136315138;
          v159 = v94;
          v163 = v40;
          v102 = sub_2278C6D50();
          v104 = v103;
          (*(v98 + 8))(v97, v99);
          v105 = v102;
          v40 = v163;
          v106 = sub_2278021B4(v105, v104, &v168);

          *(v100 + 4) = v106;
          _os_log_impl(&dword_2277F7000, v91, v156, "[%s] No schedule date in user preferences", v100, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v101);
          MEMORY[0x22AA9E860](v101, -1, -1);
          MEMORY[0x22AA9E860](v100, -1, -1);

          (*(v95 + 8))(v159, v167);
        }

        else
        {

          (*(v98 + 8))(v97, v99);
          (*(v95 + 8))(v94, v96);
        }

        v40(*(v0 + 144), 1, 1, *(v0 + 208));
        goto LABEL_39;
      }
    }

    else
    {

      *(v0 + 96) = 0u;
      *(v0 + 112) = 0u;
    }

    sub_227802FC4(v0 + 96, &qword_27D7D60A0, qword_2278C98D0);
    goto LABEL_28;
  }

  v32 = v31;
  v33 = sub_2278C76F0();
  v34 = [v32 objectForKey_];

  if (v34)
  {
    sub_2278C7AD0();
    swift_unknownObjectRelease();
  }

  else
  {
    v168 = 0u;
    v169 = 0u;
  }

  v35 = v169;
  *(v0 + 64) = v168;
  *(v0 + 80) = v35;
  if (!*(v0 + 88))
  {
    goto LABEL_15;
  }

  v36 = *(v0 + 208);
  v37 = *(v0 + 216);
  v38 = *(v0 + 200);
  v39 = swift_dynamicCast();
  v40 = *(v37 + 56);
  v40(v38, v39 ^ 1u, 1, v36);
  if ((*(v37 + 48))(v38, 1, v36) == 1)
  {
    goto LABEL_16;
  }

  v161 = v40;
  v165 = v3;
  v41 = *(v0 + 272);
  v42 = v5;
  v43 = *(v0 + 240);
  v44 = *(v0 + 248);
  v45 = *(v0 + 232);
  v46 = *(v0 + 208);
  v47 = *(v0 + 216);
  v48 = *(v0 + 152);
  logb = *(v0 + 224);
  v152 = *(v47 + 32);
  (v152)(v45, *(v0 + 200), v46);
  sub_2278C7370();
  (*(v44 + 16))(v41, v48, v43);
  v49 = v42;
  (*(v47 + 16))(logb, v45, v46);

  v50 = sub_2278C7590();
  LOBYTE(v43) = sub_2278C7970();

  v144 = v43;
  log = v50;
  v51 = os_log_type_enabled(v50, v43);
  v52 = *(v0 + 320);
  v54 = *(v0 + 288);
  v53 = *(v0 + 296);
  v55 = *(v0 + 272);
  v57 = *(v0 + 240);
  v56 = *(v0 + 248);
  v58 = *(v0 + 216);
  v146 = *(v0 + 224);
  v59 = *(v0 + 208);
  if (v51)
  {
    v140 = *(v0 + 320);
    v142 = *(v0 + 288);
    v60 = v49;
    v61 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    *&v168 = v138;
    *v61 = 136315650;
    v62 = sub_2278C6D50();
    v139 = v53;
    v64 = v63;
    (*(v56 + 8))(v55, v57);
    v65 = sub_2278021B4(v62, v64, &v168);

    *(v61 + 4) = v65;
    *(v61 + 12) = 2080;
    v66 = sub_2278021B4(v165, v60, &v168);

    *(v61 + 14) = v66;
    *(v61 + 22) = 2080;
    sub_227885B08(&qword_2813BC158, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v67 = sub_2278C7DA0();
    v69 = v68;
    (*(v58 + 8))(v146, v59);
    v70 = sub_2278021B4(v67, v69, &v168);

    *(v61 + 24) = v70;
    _os_log_impl(&dword_2277F7000, log, v144, "[%s] Scheduled Date from Date: (%s) = %s", v61, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA9E860](v138, -1, -1);
    MEMORY[0x22AA9E860](v61, -1, -1);

    (*(v139 + 8))(v140, v142);
  }

  else
  {

    (*(v58 + 8))(v146, v59);
    (*(v56 + 8))(v55, v57);
    (*(v53 + 8))(v52, v54);
  }

  v107 = *(v0 + 208);
  v108 = *(v0 + 144);
  (v152)(v108, *(v0 + 232), v107);
  v161(v108, 0, 1, v107);
LABEL_39:

  v136 = *(v0 + 8);

  return v136();
}

uint64_t sub_227884164(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_2278C6820();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_2278C6D60();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_2278C75A0();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278842E0, 0, 0);
}

uint64_t sub_2278842E0(uint64_t a1)
{
  v43 = v1;
  v3 = v1[9];
  v2 = v1[10];
  v5 = v1[7];
  v4 = v1[8];
  v6 = v1[5];
  v7 = v1[6];
  v9 = v1[2];
  v8 = v1[3];
  sub_2278C7370();
  (*(v3 + 16))(v2, v8, v4);
  (*(v7 + 16))(v5, v9, v6);
  v10 = sub_2278C7590();
  v40 = sub_2278C7970();
  log = v10;
  v11 = os_log_type_enabled(v10, v40);
  v12 = v1[12];
  v13 = v1[13];
  v14 = v1[10];
  v15 = v1[11];
  v16 = v1[8];
  v17 = v1[9];
  v18 = v1[6];
  v19 = v1[7];
  v20 = v1[5];
  if (v11)
  {
    v39 = v1[13];
    v21 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v42 = v36;
    *v21 = 136315394;
    v37 = v12;
    v38 = v15;
    v22 = sub_2278C6D50();
    v24 = v23;
    (*(v17 + 8))(v14, v16);
    v25 = sub_2278021B4(v22, v24, &v42);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    sub_227885B08(&qword_2813BC158, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v26 = sub_2278C7DA0();
    v28 = v27;
    (*(v18 + 8))(v19, v20);
    v29 = sub_2278021B4(v26, v28, &v42);

    *(v21 + 14) = v29;
    _os_log_impl(&dword_2277F7000, log, v40, "[%s] Set mostRecentAlertDate = %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9E860](v36, -1, -1);
    MEMORY[0x22AA9E860](v21, -1, -1);

    (*(v37 + 8))(v39, v38);
  }

  else
  {

    (*(v18 + 8))(v19, v20);
    (*(v17 + 8))(v14, v16);
    (*(v12 + 8))(v13, v15);
  }

  sub_227882C44(v1[3]);
  v30 = sub_227882AE0();
  if (v30)
  {
    v31 = v30;
    v32 = sub_2278C67D0();
    v33 = sub_2278C76F0();

    [v31 setObject:v32 forKey:v33];
  }

  else
  {
  }

  v34 = v1[1];

  return v34();
}

uint64_t sub_227884658(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  return MEMORY[0x2822009F8](sub_22788467C, 0, 0);
}

uint64_t sub_22788467C()
{
  sub_227882C44(*(v0 + 56));
  v1 = sub_227882AE0();
  if (v1)
  {
    v2 = v1;
    v3 = sub_2278C76F0();

    v4 = [v2 objectForKey_];

    if (v4)
    {
      sub_2278C7AD0();
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
    }

    *(v0 + 16) = v12;
    *(v0 + 32) = v13;
    if (*(v0 + 40))
    {
      v5 = *(v0 + 48);
      v6 = sub_2278C6820();
      v7 = swift_dynamicCast();
      (*(*(v6 - 8) + 56))(v5, v7 ^ 1u, 1, v6);
      goto LABEL_9;
    }
  }

  else
  {

    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
  }

  v8 = *(v0 + 48);
  sub_227802FC4(v0 + 16, &qword_27D7D60A0, qword_2278C98D0);
  v9 = sub_2278C6820();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
LABEL_9:
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_227884840(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_2278C6820();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_2278C6D60();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_2278C75A0();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278849BC, 0, 0);
}

uint64_t sub_2278849BC(uint64_t a1)
{
  v43 = v1;
  v3 = v1[9];
  v2 = v1[10];
  v5 = v1[7];
  v4 = v1[8];
  v6 = v1[5];
  v7 = v1[6];
  v9 = v1[2];
  v8 = v1[3];
  sub_2278C7370();
  (*(v3 + 16))(v2, v8, v4);
  (*(v7 + 16))(v5, v9, v6);
  v10 = sub_2278C7590();
  v40 = sub_2278C7970();
  log = v10;
  v11 = os_log_type_enabled(v10, v40);
  v12 = v1[12];
  v13 = v1[13];
  v14 = v1[10];
  v15 = v1[11];
  v16 = v1[8];
  v17 = v1[9];
  v18 = v1[6];
  v19 = v1[7];
  v20 = v1[5];
  if (v11)
  {
    v39 = v1[13];
    v21 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v42 = v36;
    *v21 = 136315394;
    v37 = v12;
    v38 = v15;
    v22 = sub_2278C6D50();
    v24 = v23;
    (*(v17 + 8))(v14, v16);
    v25 = sub_2278021B4(v22, v24, &v42);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    sub_227885B08(&qword_2813BC158, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v26 = sub_2278C7DA0();
    v28 = v27;
    (*(v18 + 8))(v19, v20);
    v29 = sub_2278021B4(v26, v28, &v42);

    *(v21 + 14) = v29;
    _os_log_impl(&dword_2277F7000, log, v40, "[%s] Set scheduledDate = %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9E860](v36, -1, -1);
    MEMORY[0x22AA9E860](v21, -1, -1);

    (*(v37 + 8))(v39, v38);
  }

  else
  {

    (*(v18 + 8))(v19, v20);
    (*(v17 + 8))(v14, v16);
    (*(v12 + 8))(v13, v15);
  }

  sub_227882E94(v1[3]);
  v30 = sub_227882AE0();
  if (v30)
  {
    v31 = v30;
    v32 = sub_2278C67D0();
    v33 = sub_2278C76F0();

    [v31 setObject:v32 forKey:v33];
  }

  else
  {
  }

  v34 = v1[1];

  return v34();
}

uint64_t sub_227884D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v6 = sub_2278C6920();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  v7 = swift_task_alloc();
  v4[9] = v7;
  v8 = sub_2278C6820();
  v4[10] = v8;
  v4[11] = *(v8 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v9 = swift_task_alloc();
  v4[14] = v9;
  *v9 = v4;
  v9[1] = sub_227884EE4;

  return sub_2278830E4(v7, a2, 0);
}

uint64_t sub_227884EE4()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_227885408;
  }

  else
  {
    v2 = sub_227884FF8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227884FF8()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_227802FC4(v3, &qword_27D7D60A8, qword_2278C9730);
LABEL_8:
    v16 = swift_task_alloc();
    v0[16] = v16;
    *v16 = v0;
    v16[1] = sub_227885294;
    v17 = v0[2];
    v18 = v0[3];

    return sub_2278830E4(v17, v18, 1);
  }

  v4 = v0[12];
  v6 = v0[7];
  v5 = v0[8];
  v20 = v0[6];
  v7 = v0[4];
  v19 = *(v2 + 32);
  v19();
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_227804920();
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v8 = off_283AE99E0;
  type metadata accessor for DateProvider(0);
  v8(v4);
  v9 = sub_2278C68F0();
  v10 = *(v2 + 8);
  v10(v4, v1);
  (*(v6 + 8))(v5, v20);
  if ((v9 & 1) == 0)
  {
    v10(v0[13], v0[10]);
    goto LABEL_8;
  }

  v11 = v0[10];
  v12 = v0[11];
  v13 = v0[2];
  (v19)(v13, v0[13], v11);
  (*(v12 + 56))(v13, 0, 1, v11);

  v14 = v0[1];

  return v14();
}

uint64_t sub_227885294()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_227885408()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227885490(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_2278854B0, 0, 0);
}

uint64_t sub_2278854B0()
{
  v1 = sub_227882AE0();
  if (!v1)
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
LABEL_9:
    sub_227802FC4(v0 + 16, &qword_27D7D60A0, qword_2278C98D0);
    goto LABEL_10;
  }

  v2 = v1;
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_2278C7AD0();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  *(v0 + 16) = v8;
  *(v0 + 32) = v9;
  if (!*(v0 + 40))
  {
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    sub_2278C6830();

    goto LABEL_11;
  }

LABEL_10:
  v4 = *(v0 + 64);
  v5 = sub_2278C6860();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
LABEL_11:
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_22788562C(uint64_t a1)
{
  v2 = sub_2278C6910();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D64D0, qword_2278CDB28);
    v9 = sub_2278C7C30();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_227885B08(&qword_2813BC138, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v16 = sub_2278C7680();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_227885B08(&qword_2813BC130, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = sub_2278C76E0();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_22788594C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D64C8, &qword_2278CDB20);
    v3 = sub_2278C7C30();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_2278C7E60();

      sub_2278C7730();
      result = sub_2278C7E90();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_2278C7DC0();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_227885B08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227885B50(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22780523C;

  return v7(a1, a2);
}

void sub_227885C78(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D64E0, qword_2278CDBD8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  sub_2278C7700();
  v8 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v9 = sub_2278C76F0();

  v10 = [v8 initWithKey:v9 ascending:0];

  sub_227839268(0, &qword_2813B9B78, 0x277CCD8D8);
  v11 = [swift_getObjCClassFromMetadata() pauseRingsScheduleType];
  if (v11)
  {
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D63E0, &unk_2278CC430);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_2278CC820;
    *(v13 + 32) = v10;
    (*(v5 + 16))(v7, a1, v4);
    v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v15 = swift_allocObject();
    (*(v5 + 32))(v15 + v14, v7, v4);
    v16 = objc_allocWithZone(MEMORY[0x277CCD8D0]);
    sub_227839268(0, &qword_2813B9B38, 0x277CCAC98);
    v17 = v10;
    v18 = sub_2278C7790();

    aBlock[4] = sub_227886618;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2278866AC;
    aBlock[3] = &block_descriptor_21;
    v19 = _Block_copy(aBlock);
    v20 = [v16 initWithSampleType:v12 predicate:0 limit:1 sortDescriptors:v18 resultsHandler:v19];

    _Block_release(v19);

    [a2 executeQuery_];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_227885F84(int a1, unint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D64E0, qword_2278CDBD8);
    return sub_2278C7800();
  }

  if (!a2)
  {
    goto LABEL_14;
  }

  result = sub_2278861E0(a2);
  if (!result)
  {
    goto LABEL_14;
  }

  v5 = result & 0xFFFFFFFFFFFFFF8;
  if (result >> 62)
  {
    v10 = result;
    v6 = sub_2278C7B80();
    result = v10;
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
LABEL_13:

LABEL_14:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D64E0, qword_2278CDBD8);
      return sub_2278C7810();
    }
  }

  v7 = __OFSUB__(v6, 1);
  v8 = v6 - 1;
  if (v7)
  {
    __break(1u);
    goto LABEL_16;
  }

  if ((result & 0xC000000000000001) != 0)
  {
LABEL_16:
    MEMORY[0x22AA9DBF0](v8);
    goto LABEL_13;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v8 < *(v5 + 16))
  {
    v9 = *(result + 8 * v8 + 32);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_2278860B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  sub_2278B4820(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_227802850(i, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60D8, &qword_2278CE440);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2278B4820((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_2278861E0(unint64_t a1)
{
  v8 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_2278C7CD0();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2278C7B80())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x22AA9DBF0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_2278C7CB0();
      sub_2278C7CE0();
      sub_2278C7CF0();
      sub_2278C7CC0();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_2278C7B80();
    sub_2278C7CD0();
  }

  return v8;
}

uint64_t sub_22788636C()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D64D8, &qword_2278CDBD0);
  *v3 = v0;
  v3[1] = sub_227886474;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000018, 0x80000002278D2A40, sub_227886610, v2, v4);
}

uint64_t sub_227886474()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_2278865AC;
  }

  else
  {

    v2 = sub_227886590;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2278865AC()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_227886618(int a1, unint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D64E0, qword_2278CDBD8);

  return sub_227885F84(a1, a2, a3);
}

double sub_2278866AC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_227839268(0, &qword_2813B9A90, 0x277CCD8A8);
    v5 = sub_2278C77A0();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);

  return result;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_227886790()
{
  result = qword_27D7D64E8;
  if (!qword_27D7D64E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D64E8);
  }

  return result;
}

uint64_t sub_2278867E4(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2278003CC;

  return v7(a1, a2);
}

uint64_t sub_227886924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22780523C;

  return v9(a1, a2, a3);
}

uint64_t sub_227886A4C(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t sub_227886AFC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

id sub_227886BD8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AchievementDataSource();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_227886C8C()
{
  v1[2] = v0;
  v2 = sub_2278C6820();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_2278C65D0();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = sub_2278C6920();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227886E04, 0, 0);
}

uint64_t sub_227886E04()
{
  v1 = v0[5];
  v14 = v0[4];
  v15 = v0[3];
  v2 = (v0[2] + OBJC_IVAR____TtC23FitnessCoachingServices21AchievementDataSource_dateProvider);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_227804920();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6580, qword_2278CC500);
  v3 = sub_2278C6910();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2278C9F70;
  v8 = v7 + v6;
  v9 = *(v4 + 104);
  v9(v8, *MEMORY[0x277CC9988], v3);
  v9(v8 + v5, *MEMORY[0x277CC9998], v3);
  v9(v8 + 2 * v5, *MEMORY[0x277CC9968], v3);
  sub_22788562C(v7);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v10 = off_283AE99E0;
  type metadata accessor for DateProvider(0);
  v10(v1);
  sub_2278C68A0();

  (*(v14 + 8))(v1, v15);
  v11 = swift_task_alloc();
  v0[12] = v11;
  *v11 = v0;
  v11[1] = sub_2278870AC;
  v12 = v0[8];

  return sub_2278060A8(v12);
}

uint64_t sub_2278870AC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_2278872DC;
  }

  else
  {
    *(v4 + 112) = a1;
    v5 = sub_2278871D4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2278871D4()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[2];
  v8 = sub_227811A68(v0[14]);

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  *(v7 + OBJC_IVAR____TtC23FitnessCoachingServices21AchievementDataSource_state) = v8;

  v9 = v0[1];

  return v9();
}

uint64_t sub_2278872DC()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  (*(v0[7] + 8))(v0[8], v0[6]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22788739C()
{
  v1[2] = v0;
  v2 = sub_2278C6920();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_2278C6820();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278874B8, 0, 0);
}

uint64_t sub_2278874B8()
{
  v24 = v0;
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC23FitnessCoachingServices21AchievementDataSource_state);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = sub_2278A65C4();
      v5 = sub_2278A47CC(&v23, (v4 + 32), v3, v2);
      v6 = v23;

      result = sub_227806704(v6);
      if (v5 != v3)
      {
        __break(1u);
        return result;
      }

      v1 = v0[2];
    }

    v8 = v0[7];
    v9 = v0[8];
    v10 = v0[5];
    v20 = v0[6];
    v11 = v0[4];
    v22 = v0[3];
    sub_22781BEE8();
    v21 = sub_2278C7790();

    v12 = (v1 + OBJC_IVAR____TtC23FitnessCoachingServices21AchievementDataSource_dateProvider);
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    v13 = off_283AE99E0;
    type metadata accessor for DateProvider(0);
    v13(v9);
    v14 = sub_2278C67D0();
    (*(v8 + 8))(v9, v20);
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    sub_227804920();
    v15 = sub_2278C68B0();
    (*(v11 + 8))(v10, v22);
    v16 = ACHMonthlyChallengeAchievementFromAchievementsForDate();

    if (v16)
    {

      v17 = v0[1];

      return v17(v16);
    }

    LOBYTE(v2) = 1;
  }

  sub_2278888AC();
  swift_allocError();
  *v18 = v2;
  swift_willThrow();

  v19 = v0[1];

  return v19();
}

uint64_t sub_2278878E4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_22788798C;

  return sub_22788739C();
}

uint64_t sub_22788798C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_2278C65E0();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_227887B2C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_227887B4C, 0, 0);
}

uint64_t sub_227887B4C()
{
  v12 = v0;
  if (!*(v0[3] + OBJC_IVAR____TtC23FitnessCoachingServices21AchievementDataSource_state))
  {
LABEL_5:
    sub_2278888AC();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }

  v1 = v0[2];

  v3 = sub_227888DE8(v2, v1);

  v4 = v3[2];
  if (v4)
  {
    v5 = sub_2278A65C4();
    v6 = sub_2278A47CC(&v11, (v5 + 32), v4, v3);
    sub_227806704(v11);
    if (v6 != v4)
    {
      __break(1u);
      goto LABEL_5;
    }
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v10 = v0[1];

  return v10(v5);
}

uint64_t sub_227887E50(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_2278C77A0();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_227887F24;

  return sub_227887B2C(v5);
}

uint64_t sub_227887F24(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = sub_2278C65E0();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    sub_22781BEE8();
    v10 = sub_2278C7790();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_2278880D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2278004C0;

  return sub_227887E50(v2, v3, v4);
}

uint64_t sub_227888188(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_2278004C0;

  return v6();
}

uint64_t sub_227888270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6570, &qword_2278C9AE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_22788852C(a3, v23 - v10);
  v12 = sub_2278C7840();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_22788859C(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2278C7830();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_2278C77F0();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_2278C7720() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_22788859C(a3);

    return v21;
  }

LABEL_8:
  sub_22788859C(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_22788852C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6570, &qword_2278C9AE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22788859C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6570, &qword_2278C9AE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227888604(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2278886FC;

  return v6(a1);
}

uint64_t sub_2278886FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2278887F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2278004C0;

  return sub_227888604(a1, v4);
}

unint64_t sub_2278888AC()
{
  result = qword_2813BB8E0;
  if (!qword_2813BB8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BB8E0);
  }

  return result;
}

unint64_t *sub_227888900(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_227888C34(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_22788899C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60E0, &qword_2278CE840);
  result = sub_2278C7D50();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_2278C7E60();

    v33 = v21;
    sub_2278C7730();
    result = sub_2278C7E90();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_227888BDC(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2278C7DC0() & 1;
  }
}

void sub_227888C34(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = 0;
  v25 = a4;
  v22 = a2;
  v23 = a1;
  v4 = 0;
  v26 = a3;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(v26 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(v26 + 56) + 8 * v13);
    v27[0] = *v14;
    v27[1] = v15;
    MEMORY[0x28223BE20](a1);
    v21[2] = v27;

    v17 = v16;
    v18 = v28;
    v19 = sub_227886AFC(sub_227888FA8, v21, v25);
    v28 = v18;

    if (v19)
    {
      *(v23 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
LABEL_15:
        sub_22788899C(v23, v22, v24, v26);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_227888DE8(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v11 = sub_227888900(v13, v7, a1, a2);
      MEMORY[0x22AA9E860](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      return v11;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  sub_227888C34((v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);
  v11 = v10;

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v11;
}

uint64_t sub_227888FA8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2278C7DC0() & 1;
  }
}

uint64_t sub_227889000()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2278003CC;

  return sub_2278878E4(v2, v3);
}

double sub_2278890AC()
{
  sub_2278C78B0();
  result = v0 * 5.0;
  qword_27D7D8850 = *&result;
  return result;
}

uint64_t sub_2278890F8(uint64_t a1, uint64_t *a2)
{
  v11 = a2;
  v2 = sub_2278C7130();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6590, &qword_2278CDE10);
  sub_2278C6FB0();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2278CDE00;
  v7 = *MEMORY[0x277D09AA0];
  v8 = *(v3 + 104);
  v8(v5, v7, v2);
  sub_2278C6F90();
  v8(v5, v7, v2);
  sub_2278C6F90();
  v8(v5, v7, v2);
  sub_2278C6F90();
  v8(v5, v7, v2);
  sub_2278C6F90();
  v8(v5, v7, v2);
  result = sub_2278C6F90();
  *v11 = v6;
  return result;
}

unint64_t sub_227889338()
{
  result = sub_2278C45B0(&unk_283AE9470);
  qword_27D7D8870 = result;
  return result;
}

uint64_t sub_227889360()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6598, &qword_2278CDE18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2278CDE00;
  *(inited + 32) = 37;
  sub_227848004();
  v1 = *MEMORY[0x277CCCB40];
  *(inited + 40) = MEMORY[0x22AA9D8F0]();
  *(inited + 48) = 52;
  *(inited + 56) = MEMORY[0x22AA9D8F0](v1);
  *(inited + 64) = 13;
  *(inited + 72) = MEMORY[0x22AA9D8F0](*MEMORY[0x277CCCB10]);
  *(inited + 80) = 71;
  v2 = *MEMORY[0x277CCCB48];
  *(inited + 88) = MEMORY[0x22AA9D8F0]();
  *(inited + 96) = 70;
  *(inited + 104) = MEMORY[0x22AA9D8F0](v2);
  v3 = sub_2278C44B4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D65A0, &unk_2278CDE20);
  result = swift_arrayDestroy();
  qword_27D7D8878 = v3;
  return result;
}

uint64_t sub_227889488()
{
  result = sub_2278C76F0();
  qword_2813BC3C8 = result;
  return result;
}

uint64_t sub_2278894D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2278003CC;

  return v11(a1, a2, a3, a4);
}

uint64_t type metadata accessor for LegacyWeeklySummaryProvider(uint64_t a1)
{
  result = qword_2813BA2E8;
  if (!qword_2813BA2E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_227889678(uint64_t a1)
{
  sub_22788974C(319, &qword_2813BC100, MEMORY[0x277D09A28]);
  if (v1 <= 0x3F)
  {
    sub_2278C6920();
    if (v2 <= 0x3F)
    {
      sub_22788974C(319, qword_2813BB9E8, &protocol descriptor for DateProviding);
      if (v3 <= 0x3F)
      {
        type metadata accessor for HKWheelchairUse(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_22788974C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2278897A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2278003CC;

  return v9(a1, a2, a3);
}

uint64_t sub_2278898D4(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2278003CC;

  return v7(a1, a2);
}

uint64_t sub_2278899EC()
{
  v1[7] = v0;
  v2 = sub_2278C75A0();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227889AAC, v0, 0);
}

uint64_t sub_227889AAC(uint64_t a1)
{
  v3 = v1[9];
  v2 = v1[10];
  v5 = v1[7];
  v4 = v1[8];
  sub_2278C73A0();
  sub_2278C7580();
  (*(v3 + 8))(v2, v4);
  v6 = *__swift_project_boxed_opaque_existential_1((v5 + 112), *(v5 + 136));
  v1[5] = &type metadata for NotificationRequestService;
  v1[6] = &off_283AEC228;
  v7 = swift_allocObject();
  v1[2] = v7;
  v7[5] = &type metadata for NotificationRequestPublisher;
  v7[6] = &off_283AEB7B8;
  v7[2] = v6;
  __swift_project_boxed_opaque_existential_1(v1 + 2, &type metadata for NotificationRequestService);
  v8 = v6;
  v9 = swift_task_alloc();
  v1[11] = v9;
  *v9 = v1;
  v9[1] = sub_227889C10;

  return sub_2278649B4();
}

uint64_t sub_227889C10()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_227889DAC;
  }

  else
  {
    v4 = sub_227889D3C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_227889D3C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227889DAC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227889E60()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_227889F48;

    return sub_2278899EC();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_227889F48()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22788A084, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_22788A084()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22788A0E8()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x2822009F8](sub_22788A108, v2, 0);
}

uint64_t sub_22788A108()
{
  v1 = v0[2];
  v3 = v1[22];
  v2 = v1[23];
  __swift_project_boxed_opaque_existential_1(v1 + 19, v3);
  v4 = swift_allocObject();
  v0[3] = v4;
  swift_weakInit();

  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_22788A21C;

  return MEMORY[0x2821603D8](2, &unk_2278CE010, v4, v3, v2);
}

uint64_t sub_22788A21C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22788A330()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2278003CC;

  return sub_227889E40(v0);
}

FitnessCoachingServices::XPCStreamHandler __swiftcall XPCStreamHandler.init(streams:notificationCenter:)(Swift::OpaquePointer streams, NSNotificationCenter notificationCenter)
{
  *v2 = notificationCenter;
  *(v2 + 8) = streams;
  result.streams._rawValue = notificationCenter.super.isa;
  result.notificationCenter.super.isa = streams._rawValue;
  return result;
}

Swift::Void __swiftcall XPCStreamHandler.activate()()
{
  v28 = sub_2278C75A0();
  v1 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v0[1];
  v5 = v4[2];
  if (v5)
  {
    v27 = *v0;
    v6 = sub_2278002AC();
    v25 = (v1 + 8);
    v26 = v6;
    v24 = v30;
    v7 = v4 + 5;
    *&v8 = 136315138;
    v22 = v8;
    v23 = v3;
    do
    {
      v19 = *(v7 - 1);
      v18 = *v7;

      sub_2278C73A0();

      v20 = sub_2278C7590();
      v21 = sub_2278C7970();

      if (os_log_type_enabled(v20, v21))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        aBlock[0] = v10;
        *v9 = v22;
        *(v9 + 4) = sub_2278021B4(v19, v18, aBlock);
        _os_log_impl(&dword_2277F7000, v20, v21, "Registering xpc stream handler: %s", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v10);
        v11 = v28;
        v3 = v23;
        MEMORY[0x22AA9E860](v10, -1, -1);
        MEMORY[0x22AA9E860](v9, -1, -1);

        (*v25)(v3, v11);
      }

      else
      {

        (*v25)(v3, v28);
      }

      v12 = sub_2278C7A60();
      v13 = swift_allocObject();
      v13[2] = v19;
      v13[3] = v18;
      v14 = v27;
      v13[4] = v27;
      v13[5] = v4;
      v30[2] = sub_22788AB1C;
      v30[3] = v13;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v30[0] = sub_227839D18;
      v30[1] = &block_descriptor_22;
      v15 = _Block_copy(aBlock);

      v16 = v14;

      v17 = sub_2278C7720();

      xpc_set_event_stream_handler((v17 + 32), v12, v15);

      _Block_release(v15);

      v7 += 2;
      --v5;
    }

    while (v5);
  }
}

void sub_22788A6E0(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v38 = a4;
  v7 = sub_2278C75A0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  sub_2278C73A0();

  v14 = sub_2278C7590();
  v15 = sub_2278C7970();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v37 = v8;
    v17 = v16;
    v18 = v7;
    v19 = a1;
    v20 = swift_slowAlloc();
    v39[0] = v20;
    *v17 = 136315138;
    *(v17 + 4) = sub_2278021B4(a2, a3, v39);
    _os_log_impl(&dword_2277F7000, v14, v15, "Handling xpc stream event: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v21 = v20;
    a1 = v19;
    v7 = v18;
    MEMORY[0x22AA9E860](v21, -1, -1);
    v22 = v17;
    v23 = v37;
    MEMORY[0x22AA9E860](v22, -1, -1);

    v24 = *(v23 + 8);
    v24(v13, v18);
  }

  else
  {

    v24 = *(v8 + 8);
    v24(v13, v7);
  }

  if (xpc_dictionary_get_string(a1, *MEMORY[0x277D86430]))
  {
    v25 = sub_2278C7750();
    v27 = v26;
    sub_2278C73A0();

    v28 = sub_2278C7590();
    v29 = sub_2278C7970();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_2278021B4(v25, v27, v39);
      _os_log_impl(&dword_2277F7000, v28, v29, "Publishing stream event: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x22AA9E860](v31, -1, -1);
      MEMORY[0x22AA9E860](v30, -1, -1);
    }

    v24(v11, v7);
    if (qword_2813BB020 != -1)
    {
      swift_once();
    }

    v32 = qword_2813BC398;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6148, &unk_2278CD390);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2278C9140;
    strcpy(v39, "XPCStreamName");
    HIWORD(v39[1]) = -4864;
    v34 = MEMORY[0x277D837D0];
    sub_2278C7BF0();
    *(inited + 96) = v34;
    *(inited + 72) = v25;
    *(inited + 80) = v27;
    sub_2278C3BA4(inited);
    swift_setDeallocating();
    sub_2278650B0(inited + 32);
    v35 = sub_2278C7640();

    [v38 postNotificationName:v32 object:0 userInfo:v35];
  }
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22788AB4C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22788AB94(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_22788ABE0(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2278004C0;

  return v7(a1, a2);
}

uint64_t sub_22788ACF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2278003CC;

  return v9(a1, a2, a3);
}

uint64_t sub_22788AE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6570, &qword_2278C9AE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_227850448(a3, v25 - v10, &unk_27D7D6570, &qword_2278C9AE0);
  v12 = sub_2278C7840();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_227802FC4(v11, &unk_27D7D6570, &qword_2278C9AE0);
  }

  else
  {
    sub_2278C7830();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2278C77F0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2278C7720() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D65E0, &qword_2278CE2F0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_227802FC4(a3, &unk_27D7D6570, &qword_2278C9AE0);

      return v22;
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

  sub_227802FC4(a3, &unk_27D7D6570, &qword_2278C9AE0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D65E0, &qword_2278CE2F0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_22788B134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6570, &qword_2278C9AE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_227850448(a3, v25 - v10, &unk_27D7D6570, &qword_2278C9AE0);
  v12 = sub_2278C7840();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_227802FC4(v11, &unk_27D7D6570, &qword_2278C9AE0);
  }

  else
  {
    sub_2278C7830();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2278C77F0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2278C7720() + 32;
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

      sub_227802FC4(a3, &unk_27D7D6570, &qword_2278C9AE0);

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

  sub_227802FC4(a3, &unk_27D7D6570, &qword_2278C9AE0);
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

void sub_22788B434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60D0, &unk_2278C9AC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for NotificationRequest(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_227802FC4(a1, &qword_27D7D60D0, &unk_2278C9AC0);
    sub_2278A340C(a2, a3, v9);

    sub_227802FC4(v9, &qword_27D7D60D0, &unk_2278C9AC0);
  }

  else
  {
    sub_227810264(a1, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    sub_2278AF970(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v16;
  }
}

uint64_t sub_22788B5F4()
{
  v1 = *(v0 + 616);
  if (v1)
  {
    if (v1 >> 62)
    {
      goto LABEL_17;
    }

    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v2)
    {
      v3 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x22AA9DBF0](v3, v1);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_13:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_17:
            v2 = sub_2278C7B80();
            goto LABEL_4;
          }

          v4 = *(v1 + 8 * v3 + 32);
          swift_unknownObjectRetain();
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_13;
          }
        }

        [*(v0 + 320) removeObserver_];
        swift_unknownObjectRelease();
        ++v3;
      }

      while (v5 != v2);
    }
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 120));
  __swift_destroy_boxed_opaque_existential_0((v0 + 160));
  __swift_destroy_boxed_opaque_existential_0((v0 + 200));
  __swift_destroy_boxed_opaque_existential_0((v0 + 240));
  __swift_destroy_boxed_opaque_existential_0((v0 + 280));

  __swift_destroy_boxed_opaque_existential_0((v0 + 328));
  __swift_destroy_boxed_opaque_existential_0((v0 + 368));
  __swift_destroy_boxed_opaque_existential_0((v0 + 408));
  __swift_destroy_boxed_opaque_existential_0((v0 + 448));
  __swift_destroy_boxed_opaque_existential_0((v0 + 488));
  __swift_destroy_boxed_opaque_existential_0((v0 + 528));
  __swift_destroy_boxed_opaque_existential_0((v0 + 568));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22788B778()
{
  sub_22788B5F4();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22788B7C8()
{
  v1[7] = v0;
  v2 = sub_2278C6D60();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v3 = sub_2278C75A0();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22788B8F0, v0, 0);
}

uint64_t sub_22788B8F0(uint64_t a1)
{
  v3 = v1[13];
  v2 = v1[14];
  v4 = v1[12];
  v5 = v1[7];
  sub_2278C7370();
  sub_2278C7580();
  (*(v3 + 8))(v2, v4);
  v1[15] = *(v5 + 608);
  v8 = (*MEMORY[0x277D09B38] + MEMORY[0x277D09B38]);

  v6 = swift_task_alloc();
  v1[16] = v6;
  *v6 = v1;
  v6[1] = sub_22788BA14;

  return v8();
}

uint64_t sub_22788BA14()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x2822009F8](sub_22788BB40, v1, 0);
}

uint64_t sub_22788BB40()
{
  __swift_project_boxed_opaque_existential_1((v0[7] + 448), *(v0[7] + 472));
  sub_227823470(v0 + 2);
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = *MEMORY[0x277D09868];
  v5 = *(v3 + 104);
  v0[17] = v5;
  v0[18] = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v5(v1, v4, v2);
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_22788BCA8;
  v7 = v0[11];

  return sub_22788C268(v7, (v0 + 2));
}

uint64_t sub_22788BCA8()
{
  v2 = *v1;
  v2[20] = v0;

  v3 = v2[11];
  v4 = v2[9];
  v5 = v2[8];
  v6 = v2[7];
  v9 = *(v4 + 8);
  v7 = v4 + 8;
  v8 = v9;
  if (v0)
  {
    v8(v3, v5);
    v10 = sub_22788C120;
  }

  else
  {
    v2[21] = v8;
    v2[22] = v7 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v3, v5);
    v10 = sub_22788BE3C;
  }

  return MEMORY[0x2822009F8](v10, v6, 0);
}

uint64_t sub_22788BE3C()
{
  (*(v0 + 136))(*(v0 + 80), *MEMORY[0x277D09860], *(v0 + 64));
  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  v1[1] = sub_22788BEF4;
  v2 = *(v0 + 80);

  return sub_22788C268(v2, v0 + 16);
}

uint64_t sub_22788BEF4()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = v2[21];
  v4 = v2[10];
  v5 = v2[8];
  v6 = v2[7];
  v3(v4, v5);
  if (v0)
  {
    v7 = sub_22788C1C4;
  }

  else
  {
    v7 = sub_22788C078;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22788C078()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  sub_2278C7470();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22788C120()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  sub_2278C7470();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22788C1C4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  sub_2278C7470();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22788C268(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = sub_2278C6920();
  v3[25] = v4;
  v3[26] = *(v4 - 8);
  v3[27] = swift_task_alloc();
  v5 = sub_2278C6820();
  v3[28] = v5;
  v3[29] = *(v5 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v6 = sub_2278C6D60();
  v3[43] = v6;
  v7 = *(v6 - 8);
  v3[44] = v7;
  v3[45] = *(v7 + 64);
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v8 = sub_2278C75A0();
  v3[58] = v8;
  v3[59] = *(v8 - 8);
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22788C5F4, v2, 0);
}

uint64_t sub_22788C5F4(uint64_t a1)
{
  v32 = v1;
  v2 = v1[57];
  v3 = v1[43];
  v4 = v1[44];
  v5 = v1[22];
  sub_2278C7370();
  v6 = *(v4 + 16);
  v1[70] = v6;
  v1[71] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  v7 = sub_2278C7590();
  v8 = sub_2278C7970();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v1[69];
  v12 = v1[58];
  v11 = v1[59];
  v13 = v1[57];
  v14 = v1[43];
  v15 = v1[44];
  if (v9)
  {
    v30 = v1[58];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v31 = v17;
    *v16 = 136315138;
    v27 = sub_2278C6D50();
    v29 = v10;
    v19 = v18;
    v28 = v8;
    v20 = *(v15 + 8);
    v20(v13, v14);
    v21 = sub_2278021B4(v27, v19, &v31);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_2277F7000, v7, v28, "[%s] Schedule F+ Plan Task if needed", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AA9E860](v17, -1, -1);
    MEMORY[0x22AA9E860](v16, -1, -1);

    v22 = *(v11 + 8);
    v22(v29, v30);
  }

  else
  {

    v20 = *(v15 + 8);
    v20(v13, v14);
    v22 = *(v11 + 8);
    v22(v10, v12);
  }

  v1[73] = v20;
  v1[72] = v22;
  __swift_project_boxed_opaque_existential_1((v1[24] + 240), *(v1[24] + 264));
  v23 = swift_task_alloc();
  v1[74] = v23;
  *v23 = v1;
  v23[1] = sub_22788C850;
  v24 = v1[42];
  v25 = v1[22];

  return sub_227884658(v24, v25);
}

uint64_t sub_22788C850()
{
  v2 = *v1;
  *(*v1 + 600) = v0;

  v3 = *(v2 + 192);
  if (v0)
  {
    v4 = sub_22788D02C;
  }

  else
  {
    v4 = sub_22788C97C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22788C97C()
{
  v56 = v0;
  v1 = v0[41];
  v2 = v0[28];
  v3 = v0[29];
  sub_227850448(v0[42], v1, &qword_27D7D60A8, qword_2278C9730);
  v4 = *(v3 + 48);
  v0[76] = v4;
  v0[77] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    sub_227802FC4(v0[41], &qword_27D7D60A8, qword_2278C9730);
LABEL_7:
    __swift_project_boxed_opaque_existential_1((v0[24] + 488), *(v0[24] + 512));
    v39 = swift_task_alloc();
    v0[78] = v39;
    *v39 = v0;
    v39[1] = sub_22788D25C;
    v40 = v0[40];

    return sub_227853C98(v40);
  }

  v5 = v0[37];
  v6 = v0[29];
  v8 = v0[26];
  v7 = v0[27];
  v9 = v0[24];
  v52 = v0[28];
  v54 = v0[25];
  (*(v6 + 32))(v0[38], v0[41]);
  __swift_project_boxed_opaque_existential_1((v9 + 200), *(v9 + 224));
  sub_227804920();
  __swift_project_boxed_opaque_existential_1((v9 + 200), *(v9 + 224));
  v10 = off_283AE99E0;
  type metadata accessor for DateProvider(0);
  v10(v5);
  v11 = sub_2278C68F0();
  v12 = *(v6 + 8);
  v12(v5, v52);
  (*(v8 + 8))(v7, v54);
  if ((v11 & 1) == 0)
  {
    v12(v0[38], v0[28]);
    goto LABEL_7;
  }

  v53 = v12;
  v13 = v0[70];
  v14 = v0[56];
  v15 = v0[43];
  v50 = v0[38];
  v16 = v0[36];
  v18 = v0[28];
  v17 = v0[29];
  v19 = v0[22];
  sub_2278C7370();
  v13(v14, v19, v15);
  (*(v17 + 16))(v16, v50, v18);
  v20 = sub_2278C7590();
  v47 = sub_2278C7970();
  v21 = os_log_type_enabled(v20, v47);
  v22 = v0[73];
  v23 = v0[72];
  v24 = v0[68];
  v25 = v0[56];
  v26 = v0[43];
  v49 = v0[42];
  v51 = v0[58];
  v48 = v0[38];
  v27 = v0[36];
  v28 = v0[28];
  if (v21)
  {
    v46 = v0[68];
    v29 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v55[0] = v44;
    *v29 = 136315394;
    log = v20;
    v30 = v28;
    v31 = sub_2278C6D50();
    v45 = v23;
    v33 = v32;
    v22(v25, v26);
    v34 = sub_2278021B4(v31, v33, v55);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2080;
    v35 = sub_2278C6790();
    v37 = v36;
    v53(v27, v30);
    v38 = sub_2278021B4(v35, v37, v55);

    *(v29 + 14) = v38;
    _os_log_impl(&dword_2277F7000, log, v47, "[%s] Already fired notification today on %s, skipping...", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9E860](v44, -1, -1);
    MEMORY[0x22AA9E860](v29, -1, -1);

    v45(v46, v51);
    v53(v48, v30);
  }

  else
  {

    v53(v27, v28);
    v22(v25, v26);
    v23(v24, v51);
    v53(v48, v28);
  }

  sub_227802FC4(v49, &qword_27D7D60A8, qword_2278C9730);

  v42 = v0[1];

  return v42();
}

uint64_t sub_22788D02C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22788D25C()
{
  v1 = *(*v0 + 192);

  return MEMORY[0x2822009F8](sub_22788D36C, v1, 0);
}

uint64_t sub_22788D36C()
{
  v277 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 224);
  if ((*(v0 + 608))(v1, 1, v2) == 1)
  {
    sub_227802FC4(v1, &qword_27D7D60A8, qword_2278C9730);
    goto LABEL_9;
  }

  v3 = *(v0 + 296);
  v4 = *(v0 + 280);
  v5 = *(v0 + 232);
  v6 = *(v0 + 192);
  v7 = *(v5 + 32);
  *(v0 + 632) = v7;
  *(v0 + 640) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v7(v4, v1, v2);
  __swift_project_boxed_opaque_existential_1((v6 + 200), *(v6 + 224));
  v8 = off_283AE99E0;
  *(v0 + 648) = off_283AE99E0;
  *(v0 + 656) = &off_283AE99E0 & 0xFFFFFFFFFFFFLL | 0xB006000000000000;
  *(v0 + 664) = type metadata accessor for DateProvider(0);
  v8(v3);
  v9 = sub_2278C6710();
  v10 = *(v5 + 8);
  *(v0 + 672) = v10;
  *(v0 + 680) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v3, v2);
  if ((v9 & 1) == 0)
  {
    v10(*(v0 + 280), *(v0 + 224));
LABEL_9:
    v18 = *(v0 + 560);
    v19 = *(v0 + 368);
    v20 = *(v0 + 344);
    v21 = *(v0 + 176);
    sub_2278C7370();
    v18(v19, v21, v20);
    v22 = sub_2278C7590();
    v23 = sub_2278C7970();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 576);
    v26 = *(v0 + 480);
    v259 = *(v0 + 584);
    v27 = *(v0 + 464);
    v28 = *(v0 + 368);
    v29 = *(v0 + 344);
    v30 = *(v0 + 336);
    if (v24)
    {
      v256 = *(v0 + 480);
      v31 = swift_slowAlloc();
      v253 = v27;
      v32 = swift_slowAlloc();
      v276[0] = v32;
      *v31 = 136315138;
      v239 = v25;
      v33 = sub_2278C6D50();
      v248 = v30;
      v35 = v34;
      v259(v28, v29);
      v36 = sub_2278021B4(v33, v35, v276);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_2277F7000, v22, v23, "[%s] User hasn't started their day, skipping for now..", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x22AA9E860](v32, -1, -1);
      MEMORY[0x22AA9E860](v31, -1, -1);

      v239(v256, v253);
      v37 = v248;
    }

    else
    {

      v259(v28, v29);
      v25(v26, v27);
      v37 = v30;
    }

LABEL_12:
    sub_227802FC4(v37, &qword_27D7D60A8, qword_2278C9730);

    v38 = *(v0 + 8);

    return v38();
  }

  v11 = *(v0 + 440);
  v12 = *(v0 + 344);
  v13 = *(v0 + 352);
  (*(v0 + 560))(v11, *(v0 + 176), v12);
  v14 = (*(v13 + 88))(v11, v12);
  if (v14 == *MEMORY[0x277D09868])
  {
    v15 = swift_task_alloc();
    *(v0 + 688) = v15;
    *v15 = v0;
    v15[1] = sub_22788ECCC;
    v16 = *(v0 + 312);

    return sub_227891D08(v16);
  }

  if (v14 == *MEMORY[0x277D09860])
  {
    v39 = swift_task_alloc();
    *(v0 + 704) = v39;
    *v39 = v0;
    v39[1] = sub_22788EDF8;
    v40 = *(v0 + 312);
    v41 = *(v0 + 184);

    return sub_227892EA0(v40, v41, 0.75);
  }

  v42 = *(v0 + 584);
  v43 = *(v0 + 440);
  v44 = *(v0 + 344);
  (*(*(v0 + 232) + 56))(*(v0 + 312), 1, 1, *(v0 + 224));
  v42(v43, v44);
  v45 = *(v0 + 312);
  v46 = *(v0 + 224);
  if ((*(v0 + 608))(v45, 1, v46) == 1)
  {
    v47 = *(v0 + 560);
    v48 = *(v0 + 376);
    v49 = *(v0 + 344);
    v50 = *(v0 + 176);
    sub_227802FC4(v45, &qword_27D7D60A8, qword_2278C9730);
    sub_2278C7370();
    v47(v48, v50, v49);
    v51 = sub_2278C7590();
    v240 = sub_2278C7950();
    v52 = os_log_type_enabled(v51, v240);
    v53 = *(v0 + 672);
    v54 = *(v0 + 584);
    v55 = *(v0 + 576);
    v260 = *(v0 + 464);
    v266 = *(v0 + 488);
    v56 = *(v0 + 376);
    v57 = *(v0 + 344);
    v58 = *(v0 + 336);
    v257 = *(v0 + 280);
    v254 = *(v0 + 224);
    if (!v52)
    {

      v54(v56, v57);
      v55(v266, v260);
      v53(v257, v254);
      v37 = v58;
      goto LABEL_12;
    }

    v235 = *(v0 + 576);
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v276[0] = v60;
    *v59 = 136315138;
    v222 = v53;
    v227 = v58;
    v61 = sub_2278C6D50();
    v63 = v62;
    v54(v56, v57);
    v64 = sub_2278021B4(v61, v63, v276);

    *(v59 + 4) = v64;
    _os_log_impl(&dword_2277F7000, v51, v240, "[%s] Unable to determine scheduled date for notification, skipping for now...", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v60);
    MEMORY[0x22AA9E860](v60, -1, -1);
    MEMORY[0x22AA9E860](v59, -1, -1);

    v235(v266, v260);
    v222(v257, v254);
    goto LABEL_22;
  }

  v261 = *(v0 + 672);
  v65 = *(v0 + 664);
  v66 = *(v0 + 648);
  v67 = *(v0 + 296);
  v68 = *(v0 + 192);
  (*(v0 + 632))(*(v0 + 272), v45, v46);
  sub_2278C7C50();

  v276[0] = 0xD000000000000035;
  v276[1] = 0x80000002278D2DC0;
  v69 = sub_2278C6D50();
  MEMORY[0x22AA9D6B0](v69);

  MEMORY[0x22AA9D6B0](0x63696669746F6E5FLL, 0xED00006E6F697461);
  *(v0 + 720) = 0xD000000000000035;
  *(v0 + 728) = 0x80000002278D2DC0;
  sub_2278C67E0();
  v71 = v70;
  *(v0 + 736) = v70;
  __swift_project_boxed_opaque_existential_1((v68 + 200), *(v68 + 224));
  v66(v65, &off_283AE99D8);
  sub_2278C67E0();
  v73 = v72;
  *(v0 + 744) = v72;
  v261(v67, v46);
  if (v71 - v73 < 0.0)
  {
    v74 = 0.0;
  }

  else
  {
    v74 = v71 - v73;
  }

  v75 = MKBGetDeviceLockState();
  if (v75 != 3 && v75)
  {
    v126 = *(v0 + 560);
    v127 = *(v0 + 392);
    v128 = *(v0 + 344);
    v129 = *(v0 + 176);
    sub_2278C7370();
    v126(v127, v129, v128);
    v130 = sub_2278C7590();
    v131 = sub_2278C7970();
    v132 = os_log_type_enabled(v130, v131);
    v270 = *(v0 + 584);
    v133 = *(v0 + 576);
    v134 = *(v0 + 504);
    v135 = *(v0 + 464);
    v136 = *(v0 + 392);
    v137 = *(v0 + 344);
    if (v132)
    {
      v264 = *(v0 + 576);
      v138 = swift_slowAlloc();
      v251 = v135;
      v139 = swift_slowAlloc();
      v276[0] = v139;
      *v138 = 136315138;
      v244 = v134;
      v140 = sub_2278C6D50();
      v142 = v141;
      v270(v136, v137);
      v143 = sub_2278021B4(v140, v142, v276);

      *(v138 + 4) = v143;
      _os_log_impl(&dword_2277F7000, v130, v131, "[%s] Currently locked, rescheduling XPC Tasks...", v138, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v139);
      MEMORY[0x22AA9E860](v139, -1, -1);
      MEMORY[0x22AA9E860](v138, -1, -1);

      v264(v244, v251);
    }

    else
    {

      v270(v136, v137);
      v133(v134, v135);
    }

    v192 = *(v0 + 560);
    v193 = *(v0 + 384);
    v194 = *(v0 + 344);
    v274 = *(v0 + 272);
    v196 = *(v0 + 232);
    v195 = *(v0 + 240);
    v197 = *(v0 + 224);
    v198 = *(v0 + 176);
    v199 = *__swift_project_boxed_opaque_existential_1(*(v0 + 184), *(*(v0 + 184) + 24));
    *(v0 + 40) = type metadata accessor for FitnessPlusPlanService();
    *(v0 + 48) = &off_283AEC318;
    *(v0 + 16) = v199;

    sub_2278C7370();
    v192(v193, v198, v194);
    (*(v196 + 16))(v195, v274, v197);
    v200 = sub_2278C7590();
    v238 = sub_2278C7970();
    v201 = os_log_type_enabled(v200, v238);
    v247 = *(v0 + 672);
    v202 = *(v0 + 584);
    v203 = *(v0 + 576);
    v204 = *(v0 + 496);
    v275 = *(v0 + 464);
    v205 = *(v0 + 384);
    v206 = *(v0 + 344);
    v207 = *(v0 + 240);
    v208 = *(v0 + 224);
    if (v201)
    {
      v234 = *(v0 + 496);
      v209 = swift_slowAlloc();
      v226 = swift_slowAlloc();
      v276[0] = v226;
      *v209 = 136315394;
      v230 = v203;
      v210 = sub_2278C6D50();
      logb = v200;
      v212 = v211;
      v202(v205, v206);
      v213 = sub_2278021B4(v210, v212, v276);

      *(v209 + 4) = v213;
      *(v209 + 12) = 2080;
      v214 = sub_2278C6790();
      v216 = v215;
      v247(v207, v208);
      v217 = sub_2278021B4(v214, v216, v276);

      *(v209 + 14) = v217;
      _os_log_impl(&dword_2277F7000, logb, v238, "[%s] Schedule XPC Activity for notifcation to trigger on %s", v209, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9E860](v226, -1, -1);
      MEMORY[0x22AA9E860](v209, -1, -1);

      v230(v234, v275);
    }

    else
    {

      v247(v207, v208);
      v202(v205, v206);
      v203(v204, v275);
    }

    __swift_project_boxed_opaque_existential_1((*(v0 + 192) + 568), *(*(v0 + 192) + 592));
    v190 = swift_task_alloc();
    *(v0 + 800) = v190;
    *v190 = v0;
    v191 = sub_227891438;
  }

  else if (v74 <= 0.0)
  {
    v263 = *(v0 + 672);
    v94 = *(v0 + 664);
    v95 = *(v0 + 648);
    v96 = *(v0 + 296);
    v97 = *(v0 + 216);
    v242 = *(v0 + 224);
    v98 = *(v0 + 208);
    v250 = *(v0 + 200);
    v99 = *(v0 + 192);
    __swift_project_boxed_opaque_existential_1((v99 + 200), *(v99 + 224));
    sub_227804920();
    __swift_project_boxed_opaque_existential_1((v99 + 200), *(v99 + 224));
    v95(v94, &off_283AE99D8);
    v100 = sub_2278C68F0();
    v263(v96, v242);
    (*(v98 + 8))(v97, v250);
    v101 = *(v0 + 560);
    v102 = *(v0 + 344);
    v268 = *(v0 + 272);
    v103 = *(v0 + 224);
    v104 = *(v0 + 232);
    v105 = *(v0 + 176);
    if ((v100 & 1) == 0)
    {
      v170 = *(v0 + 400);
      v171 = *(v0 + 248);

      sub_2278C7370();
      v101(v170, v105, v102);
      (*(v104 + 16))(v171, v268, v103);
      v172 = sub_2278C7590();
      v233 = sub_2278C7950();
      v258 = v172;
      v173 = os_log_type_enabled(v172, v233);
      v174 = *(v0 + 672);
      v175 = *(v0 + 584);
      v265 = *(v0 + 576);
      v255 = *(v0 + 512);
      v252 = *(v0 + 464);
      v176 = *(v0 + 400);
      v177 = *(v0 + 344);
      v178 = *(v0 + 336);
      v273 = *(v0 + 280);
      v246 = *(v0 + 272);
      v179 = *(v0 + 248);
      v180 = *(v0 + 224);
      if (!v173)
      {

        v174(v179, v180);
        v175(v176, v177);
        v265(v255, v252);
        v174(v246, v180);
        v174(v273, v180);
        v37 = v178;
        goto LABEL_12;
      }

      v181 = swift_slowAlloc();
      v225 = swift_slowAlloc();
      v276[0] = v225;
      *v181 = 136315394;
      v218 = v174;
      v182 = sub_2278C6D50();
      v227 = v178;
      v184 = v183;
      v175(v176, v177);
      v185 = sub_2278021B4(v182, v184, v276);

      *(v181 + 4) = v185;
      *(v181 + 12) = 2080;
      v186 = sub_2278C6790();
      v188 = v187;
      v218(v179, v180);
      v189 = sub_2278021B4(v186, v188, v276);

      *(v181 + 14) = v189;
      _os_log_impl(&dword_2277F7000, v258, v233, "[%s] Scheduled date (%s) is in the past, but not today, not firing", v181, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9E860](v225, -1, -1);
      MEMORY[0x22AA9E860](v181, -1, -1);

      v265(v255, v252);
      v218(v246, v180);
      v218(v273, v180);
LABEL_22:
      v37 = v227;
      goto LABEL_12;
    }

    v106 = *(v0 + 408);
    v107 = *(v0 + 256);
    sub_2278C7370();
    v101(v106, v105, v102);
    (*(v104 + 16))(v107, v268, v103);
    v108 = sub_2278C7590();
    v236 = sub_2278C7970();
    v109 = os_log_type_enabled(v108, v236);
    v243 = *(v0 + 672);
    v110 = *(v0 + 584);
    v111 = *(v0 + 576);
    v112 = *(v0 + 520);
    v269 = *(v0 + 464);
    v113 = *(v0 + 408);
    v114 = *(v0 + 344);
    v115 = *(v0 + 256);
    v116 = *(v0 + 224);
    if (v109)
    {
      v231 = *(v0 + 520);
      v117 = swift_slowAlloc();
      v223 = swift_slowAlloc();
      v276[0] = v223;
      *v117 = 136315394;
      v228 = v111;
      v118 = sub_2278C6D50();
      log = v108;
      v120 = v119;
      v110(v113, v114);
      v121 = sub_2278021B4(v118, v120, v276);

      *(v117 + 4) = v121;
      *(v117 + 12) = 2080;
      v122 = sub_2278C6790();
      v124 = v123;
      v243(v115, v116);
      v125 = sub_2278021B4(v122, v124, v276);

      *(v117 + 14) = v125;
      _os_log_impl(&dword_2277F7000, log, v236, "[%s] Scheduled date (%s) is today and in the past, firing now...", v117, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9E860](v223, -1, -1);
      MEMORY[0x22AA9E860](v117, -1, -1);

      v228(v231, v269);
    }

    else
    {

      v243(v115, v116);
      v110(v113, v114);
      v111(v112, v269);
    }

    __swift_project_boxed_opaque_existential_1((*(v0 + 192) + 568), *(*(v0 + 192) + 592));
    v190 = swift_task_alloc();
    *(v0 + 776) = v190;
    *v190 = v0;
    v191 = sub_227890F00;
  }

  else
  {
    v76 = *(v0 + 560);
    v77 = *(v0 + 432);
    v78 = *(v0 + 344);
    v79 = *(v0 + 176);
    sub_2278C7370();
    v76(v77, v79, v78);
    v80 = sub_2278C7590();
    v267 = sub_2278C7970();
    v81 = os_log_type_enabled(v80, v267);
    v82 = *(v0 + 584);
    v83 = *(v0 + 576);
    v84 = *(v0 + 536);
    v85 = *(v0 + 464);
    v86 = *(v0 + 432);
    v87 = *(v0 + 344);
    if (v81)
    {
      v262 = *(v0 + 576);
      v88 = swift_slowAlloc();
      v249 = v85;
      v89 = swift_slowAlloc();
      v276[0] = v89;
      *v88 = 136315394;
      v241 = v84;
      v90 = sub_2278C6D50();
      v92 = v91;
      v82(v86, v87);
      v93 = sub_2278021B4(v90, v92, v276);

      *(v88 + 4) = v93;
      *(v88 + 12) = 2048;
      *(v88 + 14) = v74;
      _os_log_impl(&dword_2277F7000, v80, v267, "[%s] Schedule XPC activity to trigger in %fs", v88, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v89);
      MEMORY[0x22AA9E860](v89, -1, -1);
      MEMORY[0x22AA9E860](v88, -1, -1);

      v262(v241, v249);
    }

    else
    {

      v82(v86, v87);
      v83(v84, v85);
    }

    v144 = *(v0 + 560);
    v145 = *(v0 + 424);
    v146 = *(v0 + 344);
    v147 = *(v0 + 264);
    v271 = *(v0 + 272);
    v148 = *(v0 + 224);
    v149 = *(v0 + 232);
    v150 = *(v0 + 176);
    v151 = *__swift_project_boxed_opaque_existential_1(*(v0 + 184), *(*(v0 + 184) + 24));
    *(v0 + 120) = type metadata accessor for FitnessPlusPlanService();
    *(v0 + 128) = &off_283AEC318;
    *(v0 + 96) = v151;

    sub_2278C7370();
    v144(v145, v150, v146);
    (*(v149 + 16))(v147, v271, v148);
    v152 = sub_2278C7590();
    v237 = sub_2278C7970();
    v153 = os_log_type_enabled(v152, v237);
    v245 = *(v0 + 672);
    v154 = *(v0 + 584);
    v155 = *(v0 + 576);
    v156 = *(v0 + 528);
    v272 = *(v0 + 464);
    v157 = *(v0 + 424);
    v158 = *(v0 + 344);
    v159 = *(v0 + 264);
    v160 = *(v0 + 224);
    if (v153)
    {
      v232 = *(v0 + 528);
      v161 = swift_slowAlloc();
      v224 = swift_slowAlloc();
      v276[0] = v224;
      *v161 = 136315394;
      v229 = v155;
      v162 = sub_2278C6D50();
      loga = v152;
      v164 = v163;
      v154(v157, v158);
      v165 = sub_2278021B4(v162, v164, v276);

      *(v161 + 4) = v165;
      *(v161 + 12) = 2080;
      v166 = sub_2278C6790();
      v168 = v167;
      v245(v159, v160);
      v169 = sub_2278021B4(v166, v168, v276);

      *(v161 + 14) = v169;
      _os_log_impl(&dword_2277F7000, loga, v237, "[%s] Schedule XPC Activity for notifcation to trigger on %s", v161, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9E860](v224, -1, -1);
      MEMORY[0x22AA9E860](v161, -1, -1);

      v229(v232, v272);
    }

    else
    {

      v245(v159, v160);
      v154(v157, v158);
      v155(v156, v272);
    }

    __swift_project_boxed_opaque_existential_1((*(v0 + 192) + 568), *(*(v0 + 192) + 592));
    v190 = swift_task_alloc();
    *(v0 + 752) = v190;
    *v190 = v0;
    v191 = sub_2278908A0;
  }

  v190[1] = v191;

  return sub_227863B34(0xD000000000000035, 0x80000002278D2DC0);
}