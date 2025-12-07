uint64_t static Dependencies.browsing(wheelchairStatus:queue:)(void *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);

  return sub_20B51A9FC(v6, a2, v2, v4, v5);
}

uint64_t sub_20B51A9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v9 - 8);
  v120 = &v102 - v10;
  v11 = sub_20C13A2E4();
  v150 = *(v11 - 8);
  v151 = v11;
  MEMORY[0x28223BE20](v11);
  v118 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v157 = &v102 - v14;
  v15 = sub_20C13AF94();
  v112 = *(v15 - 8);
  v113 = v15;
  MEMORY[0x28223BE20](v15);
  v155 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20C13BA84();
  v110 = *(v17 - 8);
  v111 = v17;
  MEMORY[0x28223BE20](v17);
  v154 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v152 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v139 = &v102 - v19;
  v226[3] = a4;
  v226[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v226);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  v21 = MEMORY[0x20F2EB1F0](a2);
  sub_20C133AA4();
  LODWORD(v121) = LOBYTE(v225[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769590, &unk_20C152E50);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60, &unk_20C14DA00);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768860, &unk_20C14FD70);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763DE0, &unk_20C161550);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  v22 = v221[0];
  v23 = v221[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763DF0, &qword_20C1551B8);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768850, &qword_20C176E30);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763E00, &unk_20C156CF0);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768810, &unk_20C1524D0);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763E10, &qword_20C1551C0);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621C0, &unk_20C151240);
  sub_20C133AA4();
  sub_20C138F44();
  swift_unknownObjectRetain();
  v149 = sub_20C138F34();
  swift_unknownObjectRetain();
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763E20, &qword_20C1551C8);
  v156 = v21;
  sub_20C133AA4();
  sub_20C13ACE4();
  swift_allocObject();
  v148 = sub_20C13ACD4();
  v24 = sub_20C13B8E4();
  v25 = objc_opt_self();
  swift_unknownObjectRetain();
  v26 = [v25 ams_sharedAccountStore];
  v27 = sub_20B51C88C(0, &qword_281100580, 0x277CB8F48);
  v215 = MEMORY[0x277D4FB68];
  v214 = v27;
  *&v213 = v26;
  v28 = sub_20C13B8D4();
  sub_20C13B8C4();
  sub_20C13A504();
  swift_allocObject();
  v29 = sub_20C13A4F4();
  v147 = v29;
  type metadata accessor for AvatarSettingsCoordinator();
  v30 = swift_allocObject();
  swift_unknownObjectRetain();

  v31 = v29;
  v32 = v23;
  v146 = sub_20B51C8F8(v28, v31, v22, v23, v30);
  v33 = objc_allocWithZone(SMUSystemDisplayMonitor);
  swift_unknownObjectRetain();
  v34 = [v33 init];
  v214 = &type metadata for SystemDisplayLayoutMonitorProvider;
  v215 = &off_2822E8A68;
  type metadata accessor for AppOcclusionMonitor();
  v35 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(&v213, &type metadata for SystemDisplayLayoutMonitorProvider);
  v145 = sub_20B51CE40(v22, v32, v34, v35);
  __swift_destroy_boxed_opaque_existential_1(&v213);
  type metadata accessor for AppStateMonitor();
  swift_allocObject();
  v36 = swift_unknownObjectRetain();
  v144 = sub_20B51E890(v36, v32);
  swift_unknownObjectRelease();
  sub_20C13A2F4();
  sub_20C13A304();
  v37 = sub_20C13C914();

  v38 = sub_20C13C914();

  v39 = [objc_opt_self() bagForProfile:v37 profileVersion:v38];

  v123 = sub_20C1394E4();
  swift_allocObject();
  swift_unknownObjectRetain();
  v153 = sub_20C1394D4();
  sub_20B51CC64(v221, &v213);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A80, &unk_20C14DA20);
  sub_20C133AA4();
  sub_20B51CC64(v216, v211);
  sub_20C138784();
  swift_allocObject();
  v103 = v32;
  v143 = sub_20C138774();
  type metadata accessor for MetricNavigationTracker(0);
  swift_allocObject();
  v40 = swift_unknownObjectRetain();
  v142 = sub_20B51F310(v40, v32);
  swift_unknownObjectRelease();
  v215 = MEMORY[0x277D4FAB0];
  v214 = v24;
  v140 = v28;
  *&v213 = v28;
  sub_20B51CC64(v217, v212);
  sub_20B51C88C(0, &qword_281100530, 0x277D85C78);

  v136 = v39;
  sub_20C13D374();
  sub_20C138E34();
  sub_20C138E24();
  sub_20C138E14();
  v119 = sub_20C138D84();
  swift_allocObject();
  v127 = sub_20C138D74();
  sub_20B51CC64(v223, &v213);
  v116 = type metadata accessor for ContentRatingCache();
  swift_allocObject();
  swift_unknownObjectRetain();
  v41 = v103;
  v131 = sub_20B51EC00(&v213, v22, v103);
  v42 = v139;
  sub_20B522414(v139);
  v43 = v141;
  v44 = sub_20C137CB4();
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  *(v45 + 24) = 0;
  v44(sub_20B52347C, v45);

  (*(v152 + 8))(v42, v43);
  v46 = sub_20C138984();
  swift_allocObject();
  v47 = sub_20C138974();
  v215 = MEMORY[0x277D540E8];
  v214 = v46;
  *&v213 = v47;
  v108 = v47;
  sub_20B51CC64(v225, v212);
  sub_20C138A44();
  swift_allocObject();

  v141 = sub_20C138A34();
  sub_20C138C94();
  swift_allocObject();

  v139 = sub_20C138C84();
  v48 = sub_20C1390F4();
  sub_20B51CC64(v217, &v213);
  swift_unknownObjectRetain();
  v49 = sub_20C1390E4();
  type metadata accessor for LocaleAnalyzer();
  v138 = swift_allocObject();
  *(v138 + 16) = 0;
  v50 = MEMORY[0x277D54290];
  v215 = MEMORY[0x277D54290];
  v214 = v48;
  *&v213 = v49;
  v137 = v49;
  v117 = type metadata accessor for MarketingSubscriptionStatusProvider();
  v51 = swift_allocObject();
  sub_20B51C710(&v213, v51 + 16);
  sub_20B51CC64(v221, &v213);
  sub_20B51CC64(v219, v212);
  v211[4] = v50;
  v211[3] = v48;
  v211[0] = v49;
  sub_20C139494();
  swift_allocObject();
  swift_retain_n();
  swift_unknownObjectRetain();
  v52 = sub_20C139484();
  v53 = v136;
  sub_20C13BA74();
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v55 = [objc_opt_self() bundleForClass_];
  v56 = sub_20C13A6C4();
  swift_allocObject();
  v57 = sub_20C13A6B4();
  v215 = MEMORY[0x277D4E258];
  v214 = v56;
  *&v213 = v57;
  v58 = sub_20C138BF4();
  swift_allocObject();
  v59 = sub_20C138BD4();
  sub_20C138BE4();
  v215 = MEMORY[0x277D54168];
  v214 = v58;
  *&v213 = v59;
  v122 = v59;
  sub_20B51CC64(v226, v212);
  sub_20C138504();
  swift_allocObject();

  v136 = sub_20C1384F4();
  sub_20B51CC64(v226, &v213);
  sub_20C1391B4();
  swift_allocObject();
  swift_unknownObjectRetain();
  v60 = v41;
  v133 = sub_20C1391A4();
  sub_20C13AF84();
  sub_20C139014();
  swift_allocObject();
  swift_unknownObjectRetain();
  v132 = sub_20C139004();
  sub_20B51CC64(v220, &v213);
  sub_20B51CC64(v218, v212);
  sub_20C1394B4();
  swift_allocObject();
  swift_unknownObjectRetain();
  v135 = sub_20C1394A4();
  swift_unknownObjectRetain();
  v61 = v53;
  v129 = v52;

  v152 = v51;

  v62 = sub_20B51EF48(v61, v22, v41, v52, v51);
  v107 = v62;
  swift_unknownObjectRelease();
  sub_20B51CC64(v222, &v213);
  v63 = objc_allocWithZone(type metadata accessor for EngagementPresentationCoordinator(0));
  swift_unknownObjectRetain();

  v134 = sub_20B51FBBC(&v213, v22, v41, v62, v63);
  swift_unknownObjectRelease();
  EngagementPresentationCoordinator.activate()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
  sub_20C133AA4();
  sub_20B51CC64(&v213, v212);
  sub_20B51CC64(v216, v211);
  v64 = sub_20C138C14();
  swift_allocObject();
  v65 = sub_20C138C04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A40, &unk_20C14D9E0);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763E30, &unk_20C169DD0);
  sub_20C133AA4();
  sub_20B51CC64(v212, &v208);
  v66 = MEMORY[0x277D543F0];
  v207 = MEMORY[0x277D543F0];
  v67 = v123;
  v206 = v123;
  v68 = v153;
  *&v205 = v153;
  v204 = MEMORY[0x277D54170];
  v203 = v64;
  v106 = v65;
  v202[0] = v65;
  sub_20C138E04();
  swift_allocObject();
  swift_unknownObjectRetain();

  v130 = sub_20C138DF4();
  sub_20B51CC64(v216, &v208);
  type metadata accessor for ActiveWorkoutPlanProvider();
  v69 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  v69[22] = 0;
  v69[23] = 0;
  v69[14] = v22;
  v69[15] = v60;
  v70 = v69;
  sub_20B51CC64(&v208, (v69 + 17));
  v114 = sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  v71 = sub_20C13A914();
  __swift_destroy_boxed_opaque_existential_1(&v208);
  v128 = v70;
  v70[16] = v71;
  sub_20B523510();
  v72 = sub_20C13AFF4();
  swift_allocObject();
  v73 = sub_20C13AFE4();
  v210 = MEMORY[0x277D4F4B8];
  v209 = v72;
  *&v208 = v73;
  v105 = v73;
  sub_20B51CC64(v211, &v205);
  v204 = v66;
  v203 = v67;
  v202[0] = v68;
  swift_unknownObjectRetain();

  sub_20C1380F4();
  sub_20C1395F4();
  swift_allocObject();
  v125 = sub_20C1395E4();
  sub_20C13AAB4();
  swift_allocObject();
  swift_unknownObjectRetain();
  v74 = v60;
  v126 = sub_20C13AAA4();
  sub_20C13AA94();
  sub_20C13A2D4();
  v75 = objc_allocWithZone(type metadata accessor for MarketingPlacementProvider(0));
  swift_unknownObjectRetain();
  v124 = v61;
  LODWORD(v67) = v121;
  v76 = sub_20B52438C(v124, v22, v60, v121, v75);
  swift_unknownObjectRelease();
  v77 = sub_20C13CDF4();
  v78 = v120;
  (*(*(v77 - 8) + 56))(v120, 1, 1, v77);
  v79 = swift_allocObject();
  v79[2] = 0;
  v79[3] = 0;
  v79[4] = v76;
  v104 = v76;
  sub_20B6383D0(0, 0, v78, &unk_20C1551D0, v79);

  sub_20B51CC64(v224, &v208);
  v207 = MEMORY[0x277D54188];
  v206 = v119;
  *&v205 = v127;
  v204 = &off_2822DF468;
  v80 = v117;
  v203 = v117;
  v202[0] = v152;
  type metadata accessor for CatalogTipUpsellCoordinator();
  v81 = swift_allocObject();
  v82 = __swift_mutable_project_boxed_opaque_existential_1(v202, v80);
  v83 = MEMORY[0x28223BE20](v82);
  v85 = (&v102 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v86 + 16))(v85, v83);
  v87 = *v85;
  v201[4] = &off_2822DF468;
  v201[3] = v80;
  v201[0] = v87;
  *(v81 + 168) = 0x5472656E69617274;
  *(v81 + 176) = 0xEF6F656469567069;
  *(v81 + 16) = v22;
  *(v81 + 24) = v60;
  sub_20B51CC64(&v208, v81 + 32);
  sub_20B51CC64(&v205, v81 + 72);
  sub_20B51CC64(v201, v81 + 112);
  *(v81 + 152) = v67;
  swift_allocObject();
  swift_unknownObjectRetain_n();

  v88 = sub_20C13A914();
  __swift_destroy_boxed_opaque_existential_1(&v208);
  __swift_destroy_boxed_opaque_existential_1(&v205);
  __swift_destroy_boxed_opaque_existential_1(v201);
  *(v81 + 160) = v88;
  __swift_destroy_boxed_opaque_existential_1(v202);
  swift_getObjectType();
  v120 = v81;
  swift_allocObject();
  swift_weakInit();
  sub_20B52466C();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v208);
  type metadata accessor for FilterPropertyStringBuilder(0);
  swift_allocObject();

  v119 = sub_20B524B24();

  sub_20B524CB4();
  type metadata accessor for WorkoutPlanStringBuilder(0);
  v89 = swift_allocObject();
  v90 = v118;
  (*(v150 + 16))(v118, v157, v151);
  swift_unknownObjectRetain();
  v91 = v122;

  v117 = sub_20B5253C0(v22, v74, v67, v90, v91, v89);
  sub_20B51CC64(&v213, &v208);
  v207 = &off_2822F98B8;
  v206 = v116;
  *&v205 = v131;
  type metadata accessor for ContentAvailabilityFilter();
  v92 = swift_allocObject();
  v118 = v92;
  sub_20B51C710(&v208, v92 + 16);
  sub_20B51C710(&v205, v92 + 56);
  type metadata accessor for MetricMarketingPurchaseTracker();
  swift_allocObject();
  swift_unknownObjectRetain();

  v116 = sub_20B5265AC(v22, v74);
  swift_unknownObjectRelease();
  sub_20C13BAC4();
  sub_20B51CC64(&v213, &v208);
  sub_20B51CC64(v223, &v205);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763E40, &unk_20C16DEE0);
  sub_20C133AA4();
  v115 = sub_20C13BAB4();
  sub_20B51CC64(v212, &v208);
  v207 = MEMORY[0x277D543F0];
  v206 = v123;
  *&v205 = v153;
  sub_20C139614();
  swift_allocObject();
  swift_unknownObjectRetain();

  v123 = sub_20C139604();
  swift_unknownObjectRetain();
  sub_20C133AA4();
  sub_20B51CC64(v217, &v205);
  type metadata accessor for WorkoutAnalyticsReporter(0);
  v93 = swift_allocObject();
  swift_defaultActor_initialize();
  v94 = OBJC_IVAR____TtC9SeymourUI24WorkoutAnalyticsReporter_lock;
  v95 = *MEMORY[0x277D0A920];
  v96 = sub_20C13B7C4();
  (*(*(v96 - 8) + 104))(v93 + v94, v95, v96);
  v97 = OBJC_IVAR____TtC9SeymourUI24WorkoutAnalyticsReporter_state;
  v98 = *MEMORY[0x277D4F258];
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7695A0, &qword_20C16E580);
  (*(*(v99 - 8) + 104))(v93 + v97, v98, v99);
  *(v93 + 112) = v22;
  *(v93 + 120) = v74;
  *(v93 + 128) = v67;
  sub_20B51CC64(&v208, v93 + 136);
  sub_20B51CC64(&v205, v93 + 176);
  swift_allocObject();
  swift_unknownObjectRetain_n();
  *(v93 + 216) = sub_20C13A914();
  swift_getObjectType();
  sub_20C13A7E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A774();

  __swift_destroy_boxed_opaque_existential_1(v202);
  sub_20C13AA24();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A774();

  __swift_destroy_boxed_opaque_existential_1(v202);
  sub_20C13A5E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A774();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v202);
  __swift_destroy_boxed_opaque_existential_1(&v205);
  __swift_destroy_boxed_opaque_existential_1(&v208);
  v195 = v226;
  v194 = v115;
  v158 = v140;
  v159 = v128;
  v160 = v124;
  v161 = v148;
  v162 = v145;
  v163 = v144;
  v164 = v130;
  v165 = v141;
  v166 = v149;
  v167 = v146;
  v168 = v120;
  v169 = v147;
  v170 = v118;
  v171 = v131;
  v172 = v134;
  v173 = v119;
  v174 = v126;
  v175 = v138;
  v176 = v127;
  v177 = v129;
  v100 = v104;
  v178 = v104;
  v179 = v116;
  v180 = v157;
  v181 = v152;
  v182 = v136;
  v183 = v142;
  v184 = v143;
  v185 = v135;
  v186 = v154;
  v187 = v155;
  v188 = v139;
  v189 = v137;
  v190 = v132;
  v191 = v125;
  v192 = v153;
  v193 = v122;
  v196 = v133;
  v197 = v93;
  v198 = v106;
  v199 = v117;
  v200 = v123;
  v121 = sub_20C133A94();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v211);
  __swift_destroy_boxed_opaque_existential_1(v212);
  __swift_destroy_boxed_opaque_existential_1(&v213);
  __swift_destroy_boxed_opaque_existential_1(v216);
  __swift_destroy_boxed_opaque_existential_1(v217);
  __swift_destroy_boxed_opaque_existential_1(v218);
  __swift_destroy_boxed_opaque_existential_1(v219);
  __swift_destroy_boxed_opaque_existential_1(v220);
  __swift_destroy_boxed_opaque_existential_1(v221);
  __swift_destroy_boxed_opaque_existential_1(v222);
  __swift_destroy_boxed_opaque_existential_1(v223);
  __swift_destroy_boxed_opaque_existential_1(v224);
  __swift_destroy_boxed_opaque_existential_1(v225);
  (*(v150 + 8))(v157, v151);
  (*(v112 + 8))(v155, v113);
  (*(v110 + 8))(v154, v111);
  __swift_destroy_boxed_opaque_existential_1(v226);
  return v121;
}

uint64_t sub_20B51C710(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_20B51C728()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B51C768()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B51C7A8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_20B51C88C(uint64_t a1, unint64_t *a2, void *a3)
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

void *sub_20B51C8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762350, &qword_20C16DB10);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19[-1] - v12;
  v21[3] = sub_20C13B8E4();
  v21[4] = MEMORY[0x277D4FAB0];
  v21[0] = a1;
  v20[3] = sub_20C13A504();
  v20[4] = MEMORY[0x277D4DFD8];
  v20[0] = a2;
  a5[15] = 0;
  a5[16] = 0;
  sub_20B51CC64(v21, (a5 + 2));
  sub_20B51CC64(v20, (a5 + 7));
  a5[12] = a3;
  a5[13] = a4;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  a5[14] = sub_20C13A914();
  __swift_project_boxed_opaque_existential_1(a5 + 2, a5[5]);
  sub_20C13B954();

  v14 = sub_20C137CB4();
  v15 = swift_allocObject();
  *(v15 + 16) = sub_20BA15A24;
  *(v15 + 24) = a5;

  v14(sub_20B718F14, v15);

  (*(v11 + 8))(v13, v10);
  v16 = [objc_opt_self() defaultCenter];
  [v16 addObserver:a5 selector:sel_fetchMeContact name:*MEMORY[0x277CBD140] object:0];

  swift_getObjectType();
  sub_20C13B8B4();
  swift_allocObject();
  swift_weakInit();
  sub_20B51CCC8(&qword_281103AC8, MEMORY[0x277D4FAA8], MEMORY[0x277D4FAA0]);

  sub_20C13A7A4();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v19);
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v21);

  return a5;
}

uint64_t sub_20B51CC64(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_20B51CCC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_20B51CE40(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v56 = sub_20C13BB84();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v53 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68[3] = &type metadata for SystemDisplayLayoutMonitorProvider;
  v68[4] = &off_2822E8A68;
  *(a4 + 72) = a1;
  *(a4 + 80) = a2;
  *(a4 + 24) = a3;
  sub_20B51CC64(v68, a4 + 32);
  v9 = objc_opt_self();
  v54 = a1;
  swift_unknownObjectRetain();
  v52 = a3;
  v58 = v9;
  *(a4 + 88) = [v9 mainDisplayLayoutMonitor];
  v10 = sub_20B51D708(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7695A8, &qword_20C168AE8);
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  *(v11 + 16) = v10;
  *(a4 + 16) = v11;
  v12 = [*(a4 + 24) connectedIdentities];
  v13 = sub_20C13CF74();

  v14 = v13 + 56;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 56);
  v18 = (v15 + 63) >> 6;
  v51 = &v62;

  v20 = 0;
  v59 = a4;
  v57 = v13;
  while (v17)
  {
LABEL_10:
    v22 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    sub_20B51D968(*(v13 + 48) + 40 * (v22 | (v20 << 6)), v67);
    sub_20B51D968(v67, &aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7695B0, &qword_20C168AF0);
    if (swift_dynamicCast())
    {
      v23 = v66;
      if ([v66 isExternal])
      {
        v24 = [v58 externalDisplayLayoutMonitorWithIdentity_];
        v25 = v24;
        if (v24)
        {
          v26 = swift_allocObject();
          swift_weakInit();
          v64 = sub_20B523284;
          v65 = v26;
          aBlock = MEMORY[0x277D85DD0];
          v61 = 1107296256;
          v62 = sub_20B51EB6C;
          v63 = &block_descriptor_69;
          v27 = _Block_copy(&aBlock);
          v28 = v25;

          [v28 setTransitionHandler_];
          _Block_release(v27);
        }

        v29 = *(v59 + 16);
        MEMORY[0x28223BE20](v24);
        *(&v51 - 2) = v23;
        *(&v51 - 1) = v30;
        os_unfair_lock_lock(v29 + 6);
        sub_20BA159F8(&v29[4]);
        v31 = v29 + 6;
        a4 = v59;
        os_unfair_lock_unlock(v31);

        swift_unknownObjectRelease();
        result = sub_20B51D9C4(v67);
        v13 = v57;
      }

      else
      {
        sub_20B51D9C4(v67);
        result = swift_unknownObjectRelease();
      }
    }

    else
    {
      result = sub_20B51D9C4(v67);
    }
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      return result;
    }

    if (v21 >= v18)
    {
      break;
    }

    v17 = *(v14 + 8 * v21);
    ++v20;
    if (v17)
    {
      v20 = v21;
      goto LABEL_10;
    }
  }

  v32 = *(a4 + 24);
  v33 = swift_allocObject();
  swift_weakInit();
  v64 = sub_20BA15A14;
  v65 = v33;
  aBlock = MEMORY[0x277D85DD0];
  v61 = 1107296256;
  v62 = sub_20B863940;
  v63 = &block_descriptor_53_0;
  v34 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  [v32 setOnDisplayConnected_];
  _Block_release(v34);
  swift_unknownObjectRelease();
  v35 = *(a4 + 24);
  v36 = swift_allocObject();
  swift_weakInit();
  v64 = sub_20BA15A1C;
  v65 = v36;
  aBlock = MEMORY[0x277D85DD0];
  v61 = 1107296256;
  v62 = sub_20B863940;
  v63 = &block_descriptor_57_2;
  v37 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  [v35 setOnDisplayDisconnected_];
  _Block_release(v37);
  swift_unknownObjectRelease();
  v38 = *(a4 + 88);
  v39 = swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  v64 = sub_20B523284;
  v65 = v39;
  aBlock = MEMORY[0x277D85DD0];
  v61 = 1107296256;
  v62 = sub_20B51EB6C;
  v63 = &block_descriptor_61;
  v40 = _Block_copy(&aBlock);

  [v38 setTransitionHandler_];
  _Block_release(v40);
  swift_unknownObjectRelease();
  v41 = *(a4 + 16);
  os_unfair_lock_lock((v41 + 24));
  v42 = *(*(v41 + 16) + 16);
  os_unfair_lock_unlock((v41 + 24));
  v43 = v53;
  sub_20C13B4A4();

  v44 = sub_20C13BB74();
  v45 = sub_20C13D1F4();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    aBlock = v47;
    *v46 = 136315394;
    v67[0] = *(a4 + 88);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7695B8, &qword_20C168AF8);
    v48 = sub_20C13C9D4();
    v50 = sub_20B51E694(v48, v49, &aBlock);

    *(v46 + 4) = v50;
    *(v46 + 12) = 2048;
    *(v46 + 14) = v42;
    _os_log_impl(&dword_20B517000, v44, v45, "[App Occlusion] Main Monitor: %s, %ld connected displays", v46, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v47);
    MEMORY[0x20F2F6A40](v47, -1, -1);
    MEMORY[0x20F2F6A40](v46, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  (*(v55 + 8))(v43, v56);
  __swift_destroy_boxed_opaque_existential_1(v68);
  return a4;
}

unint64_t sub_20B51D708(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7695C0, &qword_20C154D50);
    v3 = sub_20C13DE84();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      result = sub_20B65B49C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_20B51D848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_20B51D8C8(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_49(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_51(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_52(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_53(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_55(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_56(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_57(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_59(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_61(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_62(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_63(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_65(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_66(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_67(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_69(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_71(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_72(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_73(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_75(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_76(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_77(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_79(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_81(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_82(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_83(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_85(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_86(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_87(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_89(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_91(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_92(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_93(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_95(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_96(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_97(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_99(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_100(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_101(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_102(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_103(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_104(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_105(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_106(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_107(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_108(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_109(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_110(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_111(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_112(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_113(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_114(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_115(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_116(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_117(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_118(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_119(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_120(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_121(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_122(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_123(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_124(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_125(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_126(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_127(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_128(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_129(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_130(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_131(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_132(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_133(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_134(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_135(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_136(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_137(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_138(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_139(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_140(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_141(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_142(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_143(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_144(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_145(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_147(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_148(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_149(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_150(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_151(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_152(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_153(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_154(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_155(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_156(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_157(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_158(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_159(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_160(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_161(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_162(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_163(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_164(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_165(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_166(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_167(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_168(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_169(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_171(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_172(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_173(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_174(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_175(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_176(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_177(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_178(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_179(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_180(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_182(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_183(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_184(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_185(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_186(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_187(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_188(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_189(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_190(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_191(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_192(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_193(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_194(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_195(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_20B51E694(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_20B51E760(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_20B51F1D8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_20B51E760(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_20B94A94C(a5, a6);
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
    result = sub_20C13DD04();
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

uint64_t sub_20B51E890(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v3 = objc_opt_self();
  swift_unknownObjectRetain();
  v4 = [v3 defaultCenter];
  [v4 addObserver:v2 selector:sel_publishAppDidBecomeActive name:*MEMORY[0x277D76E48] object:0];
  [v4 addObserver:v2 selector:sel_publishAppWillEnterForeground name:*MEMORY[0x277D76E80] object:0];
  [v4 addObserver:v2 selector:sel_publishAppWillResignActive name:*MEMORY[0x277D76E78] object:0];
  [v4 addObserver:v2 selector:sel_publishAppDidEnterBackground name:*MEMORY[0x277D76E58] object:0];
  [v4 addObserver:v2 selector:sel_publishSignificantTimeChanged name:*MEMORY[0x277D766F0] object:0];
  [v4 addObserver:v2 selector:sel_publishAppWillTerminate name:*MEMORY[0x277D76770] object:0];

  return v2;
}

uint64_t sub_20B51EA08(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B51EA40(uint64_t a1)
{
  sub_20B51EB14(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20B51EB14(uint64_t a1)
{
  if (!qword_2811025B8[0])
  {
    type metadata accessor for MetricNavigationTracker.Page(255);
    v1 = sub_20C13D914();
    if (!v2)
    {
      atomic_store(v1, qword_2811025B8);
    }
  }
}

uint64_t sub_20B51EB6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7660D0, &qword_20C15BCC8);
  v4 = sub_20C13CC74();

  v5 = swift_unknownObjectRetain();
  v3(v5, v4);

  return swift_unknownObjectRelease();
}

void *sub_20B51EC00(void *a1, uint64_t a2, uint64_t a3)
{
  sub_20B51CC64(a1, v3 + 16);
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  sub_20C13A2B4();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v3 + 72) = sub_20C13A2A4();
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v3 + 80) = sub_20C13A914();
  *(v3 + 88) = 1;
  *(v3 + 96) = 2;
  swift_getObjectType();
  sub_20C137384();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v8);

  return v3;
}

uint64_t sub_20B51ED6C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B51EDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v13 = sub_20C137CB4();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a4;
  v14[5] = a5;

  v13(a9, v14);
}

uint64_t objectdestroy_170Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v7 + 16, v5 | 7);
}

void *sub_20B51EF48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24[3] = sub_20C139494();
  v24[4] = MEMORY[0x277D543C8];
  v24[0] = a4;
  v10 = type metadata accessor for MarketingSubscriptionStatusProvider();
  v23[3] = v10;
  v23[4] = &off_2822DF468;
  v23[0] = a5;
  type metadata accessor for EngagementMessageCoordinator();
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v23, v10);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = (v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15, v13);
  v17 = *v15;
  v22[3] = v10;
  v22[4] = &off_2822DF468;
  v22[0] = v17;
  v11[3] = a1;
  v11[4] = a2;
  v11[5] = a3;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  v18 = a1;
  v11[17] = sub_20C13A914();
  sub_20B51CC64(v22, (v11 + 12));
  sub_20B51CC64(v24, (v11 + 7));
  v11[2] = [objc_allocWithZone(MEMORY[0x277D1B270]) init];
  v19 = [objc_allocWithZone(MEMORY[0x277CEE8F0]) initWithBag_];

  v11[6] = v19;
  swift_getObjectType();
  sub_20C13AC04();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A774();

  __swift_destroy_boxed_opaque_existential_1(v21);
  __swift_destroy_boxed_opaque_existential_1(v24);
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v11;
}

uint64_t sub_20B51F1D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_20B51F234(uint64_t a1)
{
  result = sub_20C1333A4();
  if (v2 <= 0x3F)
  {
    result = sub_20B51F2C0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_20B51F2C0()
{
  result = qword_2811004B0;
  if (!qword_2811004B0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2811004B0);
  }

  return result;
}

char *sub_20B51F310(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC9SeymourUI23MetricNavigationTracker_lastPage;
  v7 = type metadata accessor for MetricNavigationTracker.Page(0);
  v8 = *(*(v7 - 8) + 56);
  v8(&v3[v6], 1, 1, v7);
  v8(&v3[OBJC_IVAR____TtC9SeymourUI23MetricNavigationTracker_presentingPage], 1, 1, v7);
  v3[OBJC_IVAR____TtC9SeymourUI23MetricNavigationTracker_topicRoutingBehaviorForPendingBackNavigation] = 4;
  *(v3 + 2) = a1;
  *(v3 + 3) = a2;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  *(v3 + 4) = sub_20C13A914();
  swift_getObjectType();
  sub_20C1390B4();
  swift_allocObject();
  swift_weakInit();
  sub_20B51F6A4(&qword_281103B40, MEMORY[0x277D54270], MEMORY[0x277D54268]);

  sub_20C13A774();

  __swift_destroy_boxed_opaque_existential_1(v10);
  sub_20C1393E4();
  swift_allocObject();
  swift_weakInit();

  sub_20B51F6A4(&unk_281103B20, MEMORY[0x277D54388], MEMORY[0x277D54380]);
  sub_20C13A774();

  __swift_destroy_boxed_opaque_existential_1(v10);
  return v3;
}

uint64_t sub_20B51F5A0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B51F5EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20C1333A4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20B51F6A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20B51F6EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20B51F948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v13 = sub_20C137CB4();
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a1;
  v14[5] = a2;

  v13(a9, v14);
}

uint64_t type metadata accessor for EngagementPresentationCoordinator(uint64_t a1)
{
  result = qword_2811007F8;
  if (!qword_2811007F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B51FA9C(uint64_t a1)
{
  sub_20B51FB64(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20B51FB64(uint64_t a1)
{
  if (!qword_281103B88)
  {
    sub_20C136624();
    v1 = sub_20C13D914();
    if (!v2)
    {
      atomic_store(v1, &qword_281103B88);
    }
  }
}

void *sub_20B51FBBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v17[3] = type metadata accessor for EngagementMessageCoordinator();
  v17[4] = &off_2822A8590;
  v17[0] = a4;
  v10 = OBJC_IVAR____TtC9SeymourUI33EngagementPresentationCoordinator_engagementBannerRuleInfo;
  v11 = sub_20C136624();
  (*(*(v11 - 8) + 56))(&a5[v10], 1, 1, v11);
  v12 = &a5[OBJC_IVAR____TtC9SeymourUI33EngagementPresentationCoordinator_modalContextProvider];
  *v12 = 0;
  v12[1] = 0;
  a5[OBJC_IVAR____TtC9SeymourUI33EngagementPresentationCoordinator_isActive] = 0;
  sub_20B51CC64(a1, &a5[OBJC_IVAR____TtC9SeymourUI33EngagementPresentationCoordinator_engagementClient]);
  v13 = &a5[OBJC_IVAR____TtC9SeymourUI33EngagementPresentationCoordinator_eventHub];
  *v13 = a2;
  v13[1] = a3;
  sub_20B51CC64(v17, &a5[OBJC_IVAR____TtC9SeymourUI33EngagementPresentationCoordinator_messageCoordinator]);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  *&a5[OBJC_IVAR____TtC9SeymourUI33EngagementPresentationCoordinator_subscriptionToken] = sub_20C13A914();
  v16.receiver = a5;
  v16.super_class = type metadata accessor for EngagementPresentationCoordinator(0);
  v14 = objc_msgSendSuper2(&v16, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v14;
}

Swift::Void __swiftcall EngagementPresentationCoordinator.activate()()
{
  v1 = OBJC_IVAR____TtC9SeymourUI33EngagementPresentationCoordinator_isActive;
  if ((*(v0 + OBJC_IVAR____TtC9SeymourUI33EngagementPresentationCoordinator_isActive) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI33EngagementPresentationCoordinator_messageCoordinator + 24);
    v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI33EngagementPresentationCoordinator_messageCoordinator + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI33EngagementPresentationCoordinator_messageCoordinator), v2);
    *(v0 + v1) = (*(v3 + 8))(v0, v2, v3) & 1;
    swift_getObjectType();
    sub_20C13B154();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_20C13A7A4();

    __swift_destroy_boxed_opaque_existential_1(v4);

    EngagementPresentationCoordinator.updateBannerRuleInfo()();
  }
}

uint64_t sub_20B51FE98()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B51FEF8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = sub_20C13CDF4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v7;
  sub_20B615240(0, 0, v5, &unk_20C15A7F0, v8);

  v9 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F580;
  v11 = *(v1 + 48);
  *(inited + 32) = v11;
  v12 = v11;
  sub_20B5201B8(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_20B52055C();
  sub_20B5205A8();
  v13 = sub_20C13CF64();

  [v9 startWithApplicationContext:a1 messageGroups:v13];

  return 1;
}

uint64_t sub_20B5200E0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B520118()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B520158(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_20B5201B8(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_20C13DB34())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76FD38, &qword_20C181400);
      v3 = sub_20C13DC44();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_20C13DB34();
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

  v3 = MEMORY[0x277D84FA0];
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
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x20F2F5430](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_20C13D5E4();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_20B51C88C(0, &qword_281100570, 0x277D1B278);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_20C13D5F4();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
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
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_20C13D5E4();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_20B51C88C(0, &qword_281100570, 0x277D1B278);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_20C13D5F4();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_20B5204A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20B520600(a1, v4, v5, v6);
}

unint64_t sub_20B52055C()
{
  result = qword_281100570;
  if (!qword_281100570)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281100570);
  }

  return result;
}

unint64_t sub_20B5205A8()
{
  result = qword_281100560;
  if (!qword_281100560)
  {
    sub_20B52055C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281100560);
  }

  return result;
}

uint64_t sub_20B520600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_20B520620, 0, 0);
}

uint64_t sub_20B520620()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_20B52EB0C;

    return sub_20B520714();
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_20B520714()
{
  v1[6] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0, &unk_20C157210);
  v1[7] = swift_task_alloc();
  v2 = sub_20C1388F4();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0, &unk_20C151A00);
  v1[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  v1[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  v1[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0, &unk_20C14D9C0);
  v1[14] = swift_task_alloc();
  v3 = sub_20C1333A4();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764290, &unk_20C152F80);
  v1[19] = v4;
  v1[20] = *(v4 - 8);
  v1[21] = swift_task_alloc();
  v5 = sub_20C139354();
  v1[22] = v5;
  v1[23] = *(v5 - 8);
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B520A18, 0, 0);
}

uint64_t sub_20B520A18()
{
  v1 = v0[21];
  __swift_project_boxed_opaque_existential_1((v0[6] + 96), *(v0[6] + 120));
  sub_20B520B44(v1);
  v2 = swift_task_alloc();
  v0[25] = v2;
  *(v2 + 16) = "SeymourUI/EngagementMessageCoordinator.swift";
  *(v2 + 24) = 44;
  *(v2 + 32) = 2;
  *(v2 + 40) = 56;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[26] = v3;
  *v3 = v0;
  v3[1] = sub_20B5311B0;
  v4 = v0[24];
  v5 = v0[22];

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B521908, v2, v5);
}

uint64_t sub_20B520B44@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230, &unk_20C14FD50);
  v2 = *(v24 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v24);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764290, &unk_20C152F80);
  v8 = *(v26 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v26);
  v25 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = "SeymourUI/MarketingSubscriptionStatusProvider.swift";
  *(v13 + 24) = 51;
  *(v13 + 32) = 2;
  *(v13 + 40) = 27;
  *(v13 + 48) = &unk_20C179780;
  *(v13 + 56) = v1;
  sub_20C135734();

  sub_20C137C94();
  v14 = v24;
  (*(v2 + 16))(v4, v7, v24);
  v15 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v16 = swift_allocObject();
  (*(v2 + 32))(v16 + v15, v4, v14);
  v17 = (v16 + ((v3 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = sub_20B52FA64;
  v17[1] = 0;
  sub_20C139354();
  sub_20C137C94();
  (*(v2 + 8))(v7, v14);
  v19 = v25;
  v18 = v26;
  (*(v8 + 16))(v25, v12, v26);
  v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v21 = swift_allocObject();
  (*(v8 + 32))(v21 + v20, v19, v18);
  v22 = (v21 + ((v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = sub_20BD064FC;
  v22[1] = 0;
  sub_20C137C94();
  return (*(v8 + 8))(v12, v18);
}

uint64_t sub_20B520EF8()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

Swift::Void __swiftcall EngagementPresentationCoordinator.updateBannerRuleInfo()()
{
  v1 = v0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764760, &unk_20C1908B0);
  v2 = *(v39 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v39);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v37 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v8 = *(v41 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v38 = &v37 - v11;
  MEMORY[0x28223BE20](v12);
  v42 = &v37 - v13;
  v37 = v0;
  __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC9SeymourUI33EngagementPresentationCoordinator_engagementClient], *&v0[OBJC_IVAR____TtC9SeymourUI33EngagementPresentationCoordinator_engagementClient + 24]);
  sub_20C1396B4();
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_20C122CCC;
  *(v15 + 24) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_20B7DB918;
  *(v16 + 24) = v15;
  v17 = v39;
  (*(v2 + 16))(v4, v7, v39);
  v18 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v19 = (v3 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v2 + 32))(v20 + v18, v4, v17);
  v21 = (v20 + v19);
  *v21 = sub_20C122CD4;
  v21[1] = v16;
  v22 = v37;
  v23 = v38;
  sub_20C137C94();
  (*(v2 + 8))(v7, v17);
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_20C122CDC;
  *(v25 + 24) = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_20B622D08;
  *(v26 + 24) = v25;
  v28 = v40;
  v27 = v41;
  (*(v8 + 16))(v40, v23, v41);
  v29 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v30 = swift_allocObject();
  (*(v8 + 32))(v30 + v29, v28, v27);
  v31 = (v30 + ((v9 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v31 = sub_20B5DF3D4;
  v31[1] = v26;
  v32 = v22;
  v33 = v42;
  sub_20C137C94();
  v34 = *(v8 + 8);
  v34(v23, v27);
  v35 = sub_20C137CB4();
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  v35(sub_20B52347C, v36);

  v34(v33, v27);
}

uint64_t sub_20B521464()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B52149C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5214FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F820, &unk_20C180420);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764290, &unk_20C152F80);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20B530BC8;
  *(v34 + 24) = v32;

  v33(sub_20B52F238, v34);
}

unint64_t sub_20B521948(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x20F2F6A60](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x20F2F6A60](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20B5219D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20B521AC4(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_20B5221F4(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_20B522248(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20B522338(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20B52AC14;

  return sub_20B523384(a1, v4);
}

uint64_t sub_20B522414@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7643B0, &unk_20C155EB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v12);
  if (*(v1 + 96))
  {
    if (*(v1 + 96) != 1)
    {
      v50 = v16;
      v51 = v13;
      v48 = &v46 - v14;
      v49 = v15;
      v22 = dispatch_group_create();
      dispatch_group_enter(v22);
      v47 = v3;
      MEMORY[0x28223BE20](v23);
      *(&v46 - 2) = v1;
      *(&v46 - 1) = v22;
      v24 = v1;
      v52 = a1;
      sub_20C13A294();
      v25 = *(v1 + 40);
      v46 = v1;
      __swift_project_boxed_opaque_existential_1((v1 + 16), v25);
      sub_20C139D34();
      v26 = swift_allocObject();
      *(v26 + 16) = v24;
      *(v26 + 24) = v22;
      v27 = swift_allocObject();
      *(v27 + 16) = sub_20BF6C3D4;
      *(v27 + 24) = v26;
      v28 = *(v4 + 16);
      v29 = v4;
      v30 = v47;
      v28(v6, v9, v47);
      v31 = (*(v29 + 80) + 16) & ~*(v29 + 80);
      v32 = swift_allocObject();
      (*(v29 + 32))(v32 + v31, v6, v30);
      v33 = (v32 + ((v5 + v31 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v33 = sub_20BD175AC;
      v33[1] = v27;
      v34 = v46;

      v35 = v22;
      v36 = v48;
      sub_20C137C94();
      (*(v29 + 8))(v9, v30);
      v37 = swift_allocObject();
      *(v37 + 16) = v34;
      *(v37 + 24) = v35;
      v38 = swift_allocObject();
      *(v38 + 16) = sub_20BF6C408;
      *(v38 + 24) = v37;
      v39 = v49;
      v40 = v50;
      v41 = v51;
      (*(v49 + 16))(v50, v36, v51);
      v42 = v39;
      v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
      v44 = swift_allocObject();
      (*(v42 + 32))(v44 + v43, v40, v41);
      v45 = (v44 + ((v11 + v43 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v45 = sub_20B5DF204;
      v45[1] = v38;

      sub_20C137C94();
      return (*(v42 + 8))(v36, v41);
    }

    sub_20BF6C2F4();
    v17 = swift_allocError();
    *v18 = 1;
    *(swift_allocObject() + 16) = v17;
  }

  else
  {
    sub_20BF6C2F4();
    v19 = swift_allocError();
    *v20 = 2;
    *(swift_allocObject() + 16) = v19;
  }

  return sub_20C137CA4();
}

uint64_t sub_20B5229AC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5229F8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_20B522A60(void *a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

void sub_20B523294()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 88);
  *(v1 + 88) = v2;
  v4 = *(v1 + 96);
  *(v1 + 96) = 1;
  v5 = v2;
  sub_20B522A60(v3, v4);
}

uint64_t sub_20B523384(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B52AB1C;

  return v6(a1);
}

uint64_t *sub_20B523488(uint64_t *result, uint64_t (*a2)(uint64_t *))
{
  v2 = *(result + 8);
  v3 = *result;
  v4 = v2;
  if (a2)
  {
    return a2(&v3);
  }

  return result;
}

uint64_t objectdestroy_90Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B523510()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9[-1] - v3;
  swift_getObjectType();
  sub_20C13AB84();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A794();

  __swift_destroy_boxed_opaque_existential_1(v9);

  swift_allocObject();
  swift_weakInit();
  sub_20B5237AC();

  sub_20C13A794();

  __swift_destroy_boxed_opaque_existential_1(v9);

  sub_20C13CDC4();
  v5 = sub_20C13CDF4();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v1;

  sub_20B638690(0, 0, v4, &unk_20C187CD8, v6);
}

uint64_t sub_20B52376C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_20B5237AC()
{
  result = qword_281101970;
  if (!qword_281101970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281101970);
  }

  return result;
}

uint64_t sub_20B523804(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20B52AC14;

  return sub_20B523384(a1, v4);
}

uint64_t sub_20B5238BC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20B52A9D4;

  return sub_20B523970(a1);
}

uint64_t sub_20B523970(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20B52A9D4;

  return sub_20B523A0C(a1);
}

uint64_t sub_20B523A0C(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_20C13BB84();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7715E0, &qword_20C187C98);
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B523B4C, v1, 0);
}

uint64_t sub_20B523B4C(uint64_t a1)
{
  v2 = v1[19];
  v3 = v1[12];
  sub_20C13CDC4();
  v4 = sub_20C13CDF4();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  v7 = sub_20B6157D0(0, 0, v2, &unk_20C187CA8, v6);
  v1[20] = v7;
  *(v3 + 176) = v7;

  v8 = swift_task_alloc();
  v1[21] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970, &qword_20C14FC10);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
  *v8 = v1;
  v8[1] = sub_20BFC3574;
  v11 = v1[18];
  v12 = MEMORY[0x277D84950];

  return MEMORY[0x282200440](v11, v7, v9, v10, v12);
}

uint64_t sub_20B523D04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20B523DB8(a1, v4, v5, v6);
}

uint64_t sub_20B523DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 80) = a1;
  *(v4 + 88) = a4;
  return MEMORY[0x2822009F8](sub_20B523DD8, 0, 0);
}

uint64_t sub_20B523DD8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20B51CC64(Strong + 136, (v0 + 2));

    v2 = v0[5];
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_20BFC3A1C;
    v5 = v0[10];

    return MEMORY[0x2821ADE88](v5, v2, v3);
  }

  else
  {
    v6 = v0[10];
    v7 = sub_20C133954();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_20B523F48()
{
  v1 = v0[10];
  v2 = sub_20C133954();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_20B523FF0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_20B524054(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_20C13DC44();
    v8 = 0;
    v9 = v7 + 56;
    v24 = v4;
    v25 = a1 + 32;
    while (2)
    {
      v10 = *(v25 + v8);
      sub_20C13E164();
      a4(v10);
      sub_20C13CA64();

      result = sub_20C13E1B4();
      v12 = ~(-1 << *(v7 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v9 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = a4(*(*(v7 + 48) + i));
        v17 = v16;
        if (v15 == a4(v10) && v17 == v18)
        {

          goto LABEL_4;
        }

        v20 = sub_20C13DFF4();

        if (v20)
        {
          goto LABEL_4;
        }
      }

      *(v9 + 8 * (i >> 6)) = (1 << i) | v14;
      *(*(v7 + 48) + i) = v10;
      v21 = *(v7 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (!v22)
      {
        *(v7 + 16) = v23;
LABEL_4:
        if (++v8 == v24)
        {
          return v7;
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

uint64_t type metadata accessor for MarketingPlacementProvider(uint64_t a1)
{
  result = qword_281101408;
  if (!qword_281101408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B52425C(uint64_t a1)
{
  sub_20B52432C();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20B52432C()
{
  if (!qword_281103AF8)
  {
    v0 = sub_20C13A374();
    if (!v1)
    {
      atomic_store(v0, &qword_281103AF8);
    }
  }
}

id sub_20B52438C(void *a1, uint64_t a2, uint64_t a3, char a4, _BYTE *a5)
{
  ObjectType = swift_getObjectType();
  v11 = sub_20C13A814();
  v12 = MEMORY[0x28223BE20](v11);
  (*(v14 + 104))(&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D4EFF0], v12);
  v24 = 0;
  sub_20C13A384();
  v15 = OBJC_IVAR____TtC9SeymourUI26MarketingPlacementProvider_registry;
  type metadata accessor for MarketingPlacementProvider.Registry();
  v16 = swift_allocObject();
  swift_defaultActor_initialize();
  *&a5[v15] = v16;
  v17 = &a5[OBJC_IVAR____TtC9SeymourUI26MarketingPlacementProvider_serviceType];
  *v17 = 0x7373656E746966;
  v17[1] = 0xE700000000000000;
  v18 = MEMORY[0x277D84F98];
  *(v16 + 112) = MEMORY[0x277D84F98];
  *&a5[OBJC_IVAR____TtC9SeymourUI26MarketingPlacementProvider_marketingLinkCache] = v18;
  v19 = [objc_allocWithZone(MEMORY[0x277CEE498]) initWithBag_];

  *&a5[OBJC_IVAR____TtC9SeymourUI26MarketingPlacementProvider_engagement] = v19;
  v20 = &a5[OBJC_IVAR____TtC9SeymourUI26MarketingPlacementProvider_eventHub];
  *v20 = a2;
  v20[1] = a3;
  a5[OBJC_IVAR____TtC9SeymourUI26MarketingPlacementProvider_platform] = a4;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  *&a5[OBJC_IVAR____TtC9SeymourUI26MarketingPlacementProvider_subscriptionToken] = sub_20C13A914();
  v23.receiver = a5;
  v23.super_class = ObjectType;
  return objc_msgSendSuper2(&v23, sel_init);
}

uint64_t sub_20B5245E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20B52466C()
{
  result = qword_2811017B0[0];
  if (!qword_2811017B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811017B0);
  }

  return result;
}

uint64_t sub_20B5246C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20B52AC14;

  return sub_20B524778(a1, v4);
}

uint64_t sub_20B524778(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B52AB18;

  return v6(a1);
}

uint64_t type metadata accessor for FilterPropertyStringBuilder(uint64_t a1)
{
  result = qword_281101198;
  if (!qword_281101198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B5248BC(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52A9D4;

  return sub_20B524A3C();
}

void sub_20B524970(uint64_t a1)
{
  sub_20B524ACC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B524A3C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52AC14;

  return sub_20B524F54();
}

void sub_20B524ACC(uint64_t a1)
{
  if (!qword_281103BF0)
  {
    sub_20C134104();
    v1 = sub_20C13D914();
    if (!v2)
    {
      atomic_store(v1, &qword_281103BF0);
    }
  }
}

char *sub_20B524B24()
{
  v1 = MEMORY[0x277D84FA0];
  *(v0 + 15) = MEMORY[0x277D84FA0];
  v2 = OBJC_IVAR____TtC9SeymourUI27FilterPropertyStringBuilder_configuration;
  v3 = sub_20C134104();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  *&v0[OBJC_IVAR____TtC9SeymourUI27FilterPropertyStringBuilder_durations] = v1;
  *&v0[OBJC_IVAR____TtC9SeymourUI27FilterPropertyStringBuilder_equipment] = v1;
  *&v0[OBJC_IVAR____TtC9SeymourUI27FilterPropertyStringBuilder_skillLevels] = v1;
  *&v0[OBJC_IVAR____TtC9SeymourUI27FilterPropertyStringBuilder_themes] = v1;
  *&v0[OBJC_IVAR____TtC9SeymourUI27FilterPropertyStringBuilder_trainerReferences] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
  sub_20C133AA4();
  sub_20B51C710(v6, (v0 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60, &unk_20C14DA00);
  sub_20C133AA4();
  sub_20B51C710(v6, (v0 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  v4 = *(&v6[0] + 1);
  *(v0 + 12) = *&v6[0];
  *(v0 + 13) = v4;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v0 + 14) = sub_20C13A914();
  return v0;
}

uint64_t sub_20B524CB4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9[-1] - v3;
  swift_getObjectType();
  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A794();

  __swift_destroy_boxed_opaque_existential_1(v9);

  sub_20C13B014();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A794();

  __swift_destroy_boxed_opaque_existential_1(v9);

  sub_20C13CDD4();
  v5 = sub_20C13CDF4();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v1;

  sub_20B6383D0(0, 0, v4, &unk_20C176758, v6);
}

uint64_t sub_20B524F18()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B524F54()
{
  v1[5] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0, &unk_20C14F3E0);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B52506C, 0, 0);
}

uint64_t type metadata accessor for WorkoutPlanStringBuilder(uint64_t a1)
{
  result = qword_281102028;
  if (!qword_281102028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B52506C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v16 = *(v0 + 40);
  v4 = sub_20C139384();
  v5 = sub_20B526B20(v4);

  *(v0 + 16) = v5;
  v6 = sub_20C1393A4();
  v7 = sub_20B526B20(v6);

  *(v0 + 24) = v7;
  v8 = sub_20C139394();
  v9 = sub_20B526B20(v8);

  *(v0 + 32) = v9;
  (*(v2 + 16))(v1, v16 + OBJC_IVAR____TtC9SeymourUI26MarketingPlacementProvider__fakeUnifiedMessagingPlacements, v3);
  sub_20C13A344();
  (*(v2 + 8))(v1, v3);
  if (*(v0 + 120) == 1)
  {
    if (qword_27C760C90 != -1)
    {
      swift_once();
    }

    v10 = sub_20C09E8E4(qword_27C79CDB0);
    if (qword_27C760C98 != -1)
    {
      swift_once();
    }

    v11 = sub_20C09E8E4(qword_27C79CDB8);
    if (qword_27C760CA0 != -1)
    {
      swift_once();
    }

    v12 = sub_20C09E8E4(qword_27C79CDC0);
    sub_20B8DB710(v10);
    sub_20B8DB710(v11);
    sub_20B8DB710(v12);
    v7 = *(v0 + 24);
    v9 = *(v0 + 32);
    v13 = *(v0 + 16);
  }

  else
  {
    v13 = v5;
  }

  *(v0 + 80) = v9;
  *(v0 + 88) = v7;
  *(v0 + 72) = v13;
  v14 = swift_task_alloc();
  *(v0 + 96) = v14;
  *v14 = v0;
  v14[1] = sub_20C09EC5C;

  return sub_20B52717C(v7, 0);
}

uint64_t sub_20B5252F4(uint64_t a1)
{
  result = sub_20C132D44();
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

uint64_t sub_20B5253C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a5;
  v47 = a2;
  v48 = a4;
  v49 = a3;
  v46 = a1;
  v7 = sub_20C133154();
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x28223BE20](v7);
  v53 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C132FD4();
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x28223BE20](v9);
  v50 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_20C132CB4();
  v44 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_20C132CF4();
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_20C132D24();
  v15 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20C132D44();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v39 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v39 - v26;
  v42 = sub_20C138BF4();
  v57[3] = v42;
  v57[4] = MEMORY[0x277D54168];
  v57[0] = v43;
  *(a6 + 16) = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v43 = OBJC_IVAR____TtC9SeymourUI24WorkoutPlanStringBuilder_completedOnDateFormat;
  MEMORY[0x20F2EA170]();
  sub_20C132CD4();
  sub_20C132D34();
  (*(v15 + 8))(v17, v39);
  v28 = *(v19 + 8);
  v28(v21, v18);
  sub_20C132CC4();
  sub_20C132C94();
  (*(v40 + 8))(v14, v41);
  v28(v24, v18);
  sub_20C132CA4();
  sub_20C132C84();
  (*(v44 + 8))(v12, v45);
  v28(v27, v18);
  type metadata accessor for UnitPreferencesProvider(0);
  v29 = swift_allocObject();
  v30 = swift_unknownObjectRetain();
  v31 = sub_20B525DA4(v30, v47, v48, v29);
  swift_unknownObjectRelease();
  *(a6 + 24) = v31;
  *(a6 + 32) = &off_2822EE5E8;
  *(a6 + 40) = v49;
  sub_20B51CC64(v57, a6 + 48);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();

  *(a6 + 88) = sub_20C13A914();
  sub_20C138CE4();
  v32 = *(a6 + 16);
  v33 = v50;
  sub_20C132EF4();
  v34 = sub_20C132F54();
  (*(v51 + 8))(v33, v52);
  [v32 setLocale_];

  v35 = *(a6 + 16);
  v36 = v53;
  sub_20C133014();
  v37 = sub_20C133094();
  (*(v54 + 8))(v36, v55);
  [v35 setCalendar_];

  swift_getObjectType();
  sub_20C13B014();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v56);
  __swift_destroy_boxed_opaque_existential_1(v57);
  return a6;
}

uint64_t sub_20B525AA0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t type metadata accessor for UnitPreferencesProvider(uint64_t a1)
{
  result = qword_281102370;
  if (!qword_281102370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B525B28(uint64_t a1)
{
  sub_20B525C80(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B525BCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20B525CD8(a1, v4, v5, v6);
}

void sub_20B525C80(uint64_t a1)
{
  if (!qword_281103BC8)
  {
    sub_20C134A94();
    v1 = sub_20C13D914();
    if (!v2)
    {
      atomic_store(v1, &qword_281103BC8);
    }
  }
}

uint64_t sub_20B525CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B526034, 0, 0);
}

uint64_t sub_20B525DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v19 - v9;
  v11 = sub_20C13A2E4();
  v19[3] = v11;
  v19[4] = MEMORY[0x277D4DFA8];
  v19[5] = MEMORY[0x277D4DF90];
  v19[6] = MEMORY[0x277D4DF98];
  v19[7] = MEMORY[0x277D4DFA0];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(v11 - 8) + 32))(boxed_opaque_existential_1, a3, v11);
  v13 = OBJC_IVAR____TtC9SeymourUI23UnitPreferencesProvider_unitPreferences;
  v14 = sub_20C134A94();
  (*(*(v14 - 8) + 56))(a4 + v13, 1, 1, v14);
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  sub_20B523FF0(v19, a4 + 32);
  v15 = sub_20C13CDF4();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a4;
  swift_unknownObjectRetain();

  sub_20B6383D0(0, 0, v10, &unk_20C168AD8, v16);

  v17 = [objc_opt_self() defaultCenter];
  [v17 addObserver:a4 selector:sel_userPreferencesDidChange name:*MEMORY[0x277CCCE80] object:0];

  __swift_destroy_boxed_opaque_existential_1(v19);
  return a4;
}

uint64_t sub_20B525FF4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B526034()
{
  v1 = v0[5];
  __swift_project_boxed_opaque_existential_1((v0[2] + 56), *(v0[2] + 80));
  sub_20C1398D4();
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = "SeymourUI/FilterPropertyStringBuilder.swift";
  *(v2 + 24) = 43;
  *(v2 + 32) = 2;
  *(v2 + 40) = 123;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_20BC9D6C0;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v3, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B526A60, v2, v4);
}

uint64_t sub_20B5261B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F7C0, &qword_20C180390);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69750;
  *(v34 + 24) = v32;

  v33(sub_20B52347C, v34);
}

void *sub_20B5265AC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  v2[4] = sub_20C13A914();
  swift_getObjectType();
  sub_20C139454();
  swift_allocObject();
  swift_weakInit();
  sub_20B526944(&unk_281103B10, MEMORY[0x277D543B0], MEMORY[0x277D543A8]);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2;
}

uint64_t sub_20B5266EC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B526794(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20B5267DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20B526824(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_20B52686C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_20B5268B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20B5268FC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_20B526944(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20B52698C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20B526B20(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  sub_20B526D44(0, v1, 0);
  v2 = v26;
  v25 = a1 + 56;
  result = sub_20C13DAA4();
  v5 = result;
  v6 = 0;
  v24 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v25 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    result = sub_20C1393B4();
    v13 = *(v26 + 16);
    v12 = *(v26 + 24);
    if (v13 >= v12 >> 1)
    {
      v22 = v11;
      v23 = result;
      sub_20B526D44((v12 > 1), v13 + 1, 1);
      v11 = v22;
      result = v23;
    }

    *(v26 + 16) = v13 + 1;
    v14 = v26 + 16 * v13;
    *(v14 + 32) = result;
    *(v14 + 40) = v11;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v15 = *(v25 + 8 * v9);
    if ((v15 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v5 & 0x3F));
    if (v16)
    {
      v7 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v24;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v8 = v24;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v7 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_20B526EA4(v5, v10, 0);
          v7 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_20B526EA4(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

char *sub_20B526D44(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20B526D64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20B526D64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622B0, &qword_20C14FCC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_20B526EA4(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_20B526EB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20B526F64(a1, v4, v5, v6);
}

uint64_t sub_20B526F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_20C13BB84();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AD0, &unk_20C1523D0);
  v4[10] = swift_task_alloc();
  v6 = sub_20C134A94();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B5270B8, 0, 0);
}

uint64_t sub_20B5270B8()
{
  v1 = v0[6];
  v2 = v1[7];
  v3 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v2);
  v4 = swift_task_alloc();
  v0[14] = v4;
  v5 = *(v3 + 8);
  *v4 = v0;
  v4[1] = sub_20B529CF0;
  v6 = v0[13];

  return MEMORY[0x2821AED80](v6, v2, v5);
}

uint64_t sub_20B52717C(uint64_t a1, char a2)
{
  *(v3 + 72) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_20C13BB84();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B527240, 0, 0);
}

void sub_20B527240()
{
  v37 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  v4 = sub_20B527580(v3);
  *(v0 + 56) = v4;

  v5 = v4 + 56;
  v6 = -1;
  v7 = -1 << *(v4 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v4 + 56);
  v32 = OBJC_IVAR____TtC9SeymourUI26MarketingPlacementProvider_engagement;
  v33 = v2;
  v9 = (63 - v7) >> 6;
  v31 = (v1 + 8);
  v35 = v4;

  v10 = 0;
  v34 = v0;
  while (v8)
  {
LABEL_11:
    v16 = (*(v35 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v8)))));
    v17 = *v16;
    v18 = v16[1];

    sub_20C13B424();

    v19 = sub_20C13BB74();
    v20 = sub_20C13D1F4();

    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 48);
    v23 = *(v0 + 32);
    if (v21)
    {
      v30 = v22;
      v24 = swift_slowAlloc();
      v29 = v23;
      v25 = v17;
      v26 = swift_slowAlloc();
      v36 = v26;
      *v24 = 141558274;
      *(v24 + 4) = 1752392040;
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_20B51E694(v25, v18, &v36);
      _os_log_impl(&dword_20B517000, v19, v20, "[UM] Observing placement events for %{mask.hash}s", v24, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x20F2F6A40](v26, -1, -1);
      MEMORY[0x20F2F6A40](v24, -1, -1);

      (*v31)(v30, v29);
    }

    else
    {

      (*v31)(v22, v23);
    }

    v8 &= v8 - 1;
    v0 = v34;
    v11 = *(v34 + 24);
    v12 = *(v33 + v32);
    v13 = sub_20C13C914();

    v14 = sub_20C13C914();
    [v12 addObserver:v11 placement:v13 serviceType:v14];
  }

  while (1)
  {
    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return;
    }

    if (v15 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v15);
    ++v10;
    if (v8)
    {
      v10 = v15;
      goto LABEL_11;
    }
  }

  v27 = swift_task_alloc();
  *(v0 + 64) = v27;
  *v27 = v0;
  v27[1] = sub_20C09F0C4;
  v28 = *(v0 + 72);

  sub_20B52976C(v35, v28);
}

uint64_t sub_20B527580(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x20F2F4740](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_20B527618(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_20B527618(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_20C13E164();
  sub_20C13CA64();
  v8 = sub_20C13E1B4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_20C13DFF4() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_20B527768(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

void sub_20B527768(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_20B6F7A40(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_20B70CBA8();
      goto LABEL_16;
    }

    sub_20B70ECC0(v8 + 1);
  }

  v10 = *v4;
  sub_20C13E164();
  sub_20C13CA64();
  v11 = sub_20C13E1B4();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_20C13DFF4() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_20C13E044();
  __break(1u);
}

uint64_t sub_20B5278E8()
{
  v7 = *(v0 + 320);
  v8 = *(v0 + 336);
  v5 = *(v0 + 288);
  v6 = *(v0 + 304);
  v3 = *(v0 + 256);
  v4 = *(v0 + 272);
  v2 = *(v0 + 224);
  return sub_20B527970(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), v2, *(&v2 + 1), *(v0 + 240), *(v0 + 248), v3, *(&v3 + 1), v4, *(&v4 + 1), v5, *(&v5 + 1), v6, *(&v6 + 1), v7, *(&v7 + 1), v8, *(&v8 + 1), *(v0 + 352));
}

uint64_t sub_20B527970(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, uint64_t a23, void *a24, void *a25, void *a26, void *a27, void *a28, uint64_t a29, uint64_t a30, void *a31, void *a32, void *a33, void *a34, void *a35, void *a36, void *a37, uint64_t a38, void *a39, void *a40, void *a41, void *a42, void *a43)
{
  v119 = sub_20C13B8E4();
  v120 = MEMORY[0x277D4FAB0];
  v117 = a1;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763AF0, &qword_20C154FF0);
  v113 = sub_20B529718(&unk_281103E10, &unk_27C763AF0, &qword_20C154FF0);
  __swift_allocate_boxed_opaque_existential_1(v111);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B00, &unk_20C14FD60);
  sub_20C133324();
  v110 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  v117 = a2;
  v118 = &off_2822FCA78;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B08, &qword_20C154FF8);
  v113 = sub_20B529718(&qword_281103DA0, &qword_27C763B08, &qword_20C154FF8);
  __swift_allocate_boxed_opaque_existential_1(v111);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FBE0, &qword_20C155000);
  sub_20C133324();
  v109 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  v117 = a3;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B10, &qword_20C155008);
  v113 = sub_20B529718(&qword_281103C18, &qword_27C763B10, &qword_20C155008);
  __swift_allocate_boxed_opaque_existential_1(v111);
  v50 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080, &unk_20C14F930);
  sub_20C133324();
  v108 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  v119 = sub_20C13ACE4();
  v120 = MEMORY[0x277D4F348];
  v117 = a4;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763B18, &qword_20C155010);
  v113 = sub_20B529718(&unk_281103C40, &unk_27C763B18, &qword_20C155010);
  __swift_allocate_boxed_opaque_existential_1(v111);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B28, &qword_20C155018);
  sub_20C133324();
  v107 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  v117 = a5;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763B30, &qword_20C155020);
  v113 = sub_20B529718(&unk_281103DD8, &unk_27C763B30, &qword_20C155020);
  __swift_allocate_boxed_opaque_existential_1(v111);
  type metadata accessor for AppOcclusionMonitor();

  sub_20C133324();
  v106 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  v117 = a6;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763B40, &qword_20C155028);
  v113 = sub_20B529718(&qword_281103DF8, &unk_27C763B40, &qword_20C155028);
  __swift_allocate_boxed_opaque_existential_1(v111);
  type metadata accessor for AppStateMonitor();

  sub_20C133324();
  v105 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  v117 = a7;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763B50, &qword_20C155030);
  v113 = sub_20B529718(&qword_281103D00, &unk_27C763B50, &qword_20C155030);
  __swift_allocate_boxed_opaque_existential_1(v111);
  sub_20C138E04();

  sub_20C133324();
  v104 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  v119 = sub_20C138A44();
  v120 = MEMORY[0x277D540F8];
  v117 = a8;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763B60, &qword_20C155038);
  v113 = sub_20B529718(&unk_281103D18, &unk_27C763B60, &qword_20C155038);
  __swift_allocate_boxed_opaque_existential_1(v111);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B70, &unk_20C155A70);
  sub_20C133324();
  v103 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  v117 = a9;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763B78, &qword_20C155040);
  v113 = sub_20B529718(&unk_281103CE0, &unk_27C763B78, &qword_20C155040);
  __swift_allocate_boxed_opaque_existential_1(v111);
  sub_20C138F44();

  sub_20C133324();
  v100 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  v119 = type metadata accessor for AvatarSettingsCoordinator();
  v120 = &protocol witness table for AvatarSettingsCoordinator;
  v117 = a10;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B88, &qword_20C155048);
  v113 = sub_20B529718(&unk_281103D90, &qword_27C763B88, &qword_20C155048);
  __swift_allocate_boxed_opaque_existential_1(v111);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FBF0, &qword_20C180F90);
  sub_20C133324();
  v98 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  v117 = a11;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763B90, &qword_20C155050);
  v113 = sub_20B529718(&qword_281103D88, &unk_27C763B90, &qword_20C155050);
  __swift_allocate_boxed_opaque_existential_1(v111);
  type metadata accessor for CatalogTipUpsellCoordinator();

  sub_20C133324();
  v96 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  v119 = sub_20C13A504();
  v120 = MEMORY[0x277D4DFD8];
  v117 = a12;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763BA0, &qword_20C155058);
  v113 = sub_20B529718(&qword_281103C50, &unk_27C763BA0, &qword_20C155058);
  __swift_allocate_boxed_opaque_existential_1(v111);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BB0, &unk_20C171940);
  sub_20C133324();
  v94 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  v119 = type metadata accessor for ContentAvailabilityFilter();
  v120 = &off_2822C8E88;
  v117 = a13;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BB8, &qword_20C155060);
  v113 = sub_20B529718(&unk_281103D70, &qword_27C763BB8, &qword_20C155060);
  __swift_allocate_boxed_opaque_existential_1(v111);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A980, &qword_20C153E20);
  sub_20C133324();
  v92 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  v119 = type metadata accessor for ContentRatingCache();
  v120 = &off_2822F98B8;
  v117 = a14;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763BC0, &qword_20C155068);
  v113 = sub_20B529718(&unk_281103DC8, &unk_27C763BC0, &qword_20C155068);
  __swift_allocate_boxed_opaque_existential_1(v111);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BD0, &unk_20C1536B0);
  sub_20C133324();
  v91 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  v119 = type metadata accessor for EngagementPresentationCoordinator(0);
  v120 = &protocol witness table for EngagementPresentationCoordinator;
  v117 = a15;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BD8, &qword_20C155070);
  v113 = sub_20B529718(&qword_281103D50, &qword_27C763BD8, &qword_20C155070);
  __swift_allocate_boxed_opaque_existential_1(v111);
  v51 = a15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E900, &qword_20C16DAE0);
  sub_20C133324();
  v90 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  v117 = a16;
  v118 = &off_2822DB528;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763BE0, &qword_20C155078);
  v113 = sub_20B529718(&qword_281103D68, &unk_27C763BE0, &qword_20C155078);
  __swift_allocate_boxed_opaque_existential_1(v111);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BF0, &unk_20C152BE0);
  sub_20C133324();
  v88 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  v119 = sub_20C13AAB4();
  v120 = MEMORY[0x277D4F1E0];
  v117 = a17;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763BF8, &qword_20C155080);
  v113 = sub_20B529718(&qword_281103C60, &unk_27C763BF8, &qword_20C155080);
  __swift_allocate_boxed_opaque_existential_1(v111);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763C08, &qword_20C155088);
  sub_20C133324();
  v87 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  v117 = a18;
  v118 = &off_2822963A0;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763C10, &qword_20C155090);
  v113 = sub_20B529718(&unk_281103DE8, &unk_27C763C10, &qword_20C155090);
  __swift_allocate_boxed_opaque_existential_1(v111);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763C20, &qword_20C155098);
  sub_20C133324();
  v85 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  v119 = sub_20C138D84();
  v120 = MEMORY[0x277D54188];
  v117 = a19;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763C28, &qword_20C1550A0);
  v113 = sub_20B529718(&unk_281103CF0, &qword_27C763C28, &qword_20C1550A0);
  __swift_allocate_boxed_opaque_existential_1(v111);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768650, &unk_20C15C0E0);
  sub_20C133324();
  v83 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  v119 = sub_20C139494();
  v120 = MEMORY[0x277D543C8];
  v117 = a20;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763C30, &qword_20C1550A8);
  v113 = sub_20B529718(&qword_281103C98, &qword_27C763C30, &qword_20C1550A8);
  __swift_allocate_boxed_opaque_existential_1(v111);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762090, &unk_20C14F940);
  sub_20C133324();
  v81 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  v119 = type metadata accessor for MarketingPlacementProvider(0);
  v120 = &off_282305C38;
  v117 = a21;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763C38, &qword_20C1550B0);
  v113 = sub_20B529718(&qword_281103D80, &qword_27C763C38, &qword_20C1550B0);
  __swift_allocate_boxed_opaque_existential_1(v111);
  v52 = a21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FE00, &unk_20C161230);
  sub_20C133324();
  v79 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  v117 = a22;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763C40, &qword_20C1550B8);
  v113 = sub_20B529718(&unk_281103D58, &unk_27C763C40, &qword_20C1550B8);
  __swift_allocate_boxed_opaque_existential_1(v111);
  type metadata accessor for MetricMarketingPurchaseTracker();

  sub_20C133324();
  v77 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  v53 = sub_20C13A2E4();
  v112 = v53;
  v113 = MEMORY[0x277D4DFA8];
  v114 = MEMORY[0x277D4DF90];
  v115 = MEMORY[0x277D4DF98];
  v116 = MEMORY[0x277D4DFA0];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v111);
  (*(*(v53 - 8) + 16))(boxed_opaque_existential_1, a23, v53);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763C50, &qword_20C1550C0);
  v120 = sub_20B529718(&qword_281103C58, &unk_27C763C50, &qword_20C1550C0);
  __swift_allocate_boxed_opaque_existential_1(&v117);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763C60, &unk_20C168BC0);
  sub_20C133324();
  v75 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(&v117);
  v119 = type metadata accessor for MarketingSubscriptionStatusProvider();
  v120 = &off_2822DF468;
  v117 = a24;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769440, &qword_20C1550C8);
  v113 = sub_20B529718(&unk_281103D40, &unk_27C769440, &qword_20C1550C8);
  __swift_allocate_boxed_opaque_existential_1(v111);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769450, &unk_20C1839F0);
  sub_20C133324();
  v76 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  v119 = sub_20C138504();
  v120 = MEMORY[0x277D54018];
  v117 = a25;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763C70, &qword_20C1550D0);
  v113 = sub_20B529718(&qword_281103D38, &qword_27C763C70, &qword_20C1550D0);
  __swift_allocate_boxed_opaque_existential_1(v111);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0, &qword_20C152E60);
  sub_20C133324();
  v78 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  v117 = a26;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763C78, &qword_20C1550D8);
  v113 = sub_20B529718(&qword_281103DC0, &unk_27C763C78, &qword_20C1550D8);
  __swift_allocate_boxed_opaque_existential_1(v111);
  type metadata accessor for MetricNavigationTracker(0);

  sub_20C133324();
  v80 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  v117 = a27;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763C88, &qword_20C1550E0);
  v113 = sub_20B529718(&qword_281103D30, &unk_27C763C88, &qword_20C1550E0);
  __swift_allocate_boxed_opaque_existential_1(v111);
  sub_20C138784();

  sub_20C133324();
  v82 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  v119 = sub_20C1394B4();
  v120 = MEMORY[0x277D543D0];
  v117 = a28;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763C98, &qword_20C1550E8);
  v113 = sub_20B529718(&qword_281103C90, &unk_27C763C98, &qword_20C1550E8);
  __swift_allocate_boxed_opaque_existential_1(v111);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763CA8, &qword_20C1550F0);
  sub_20C133324();
  v84 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  v55 = sub_20C13BA84();
  v119 = v55;
  v120 = MEMORY[0x277D4FB38];
  v56 = __swift_allocate_boxed_opaque_existential_1(&v117);
  (*(*(v55 - 8) + 16))(v56, a29, v55);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763CB0, &qword_20C1550F8);
  v113 = sub_20B529718(&qword_281103E08, &unk_27C763CB0, &qword_20C1550F8);
  __swift_allocate_boxed_opaque_existential_1(v111);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763CC0, &qword_20C155100);
  sub_20C133324();
  v86 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  v57 = sub_20C13AF94();
  v119 = v57;
  v120 = MEMORY[0x277D4F478];
  v58 = __swift_allocate_boxed_opaque_existential_1(&v117);
  v59 = *(*(v57 - 8) + 16);
  v59(v58, a30, v57);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763CC8, &qword_20C155108);
  v113 = sub_20B529718(&unk_281103C20, &qword_27C763CC8, &qword_20C155108);
  __swift_allocate_boxed_opaque_existential_1(v111);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76CFE0, &qword_20C155110);
  sub_20C133324();
  v74 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  v119 = v57;
  v120 = MEMORY[0x277D4F480];
  v60 = __swift_allocate_boxed_opaque_existential_1(&v117);
  v59(v60, a30, v57);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763CD0, &qword_20C155118);
  v113 = sub_20B529718(&qword_281103C38, &qword_27C763CD0, &qword_20C155118);
  __swift_allocate_boxed_opaque_existential_1(v111);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70, &unk_20C14DA10);
  sub_20C133324();
  v73 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  v119 = v57;
  v120 = MEMORY[0x277D4F488];
  v61 = __swift_allocate_boxed_opaque_existential_1(&v117);
  v59(v61, a30, v57);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763CD8, &qword_20C155120);
  v113 = sub_20B529718(&qword_281103C30, &unk_27C763CD8, &qword_20C155120);
  __swift_allocate_boxed_opaque_existential_1(v111);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763CE8, &qword_20C16D960);
  sub_20C133324();
  v89 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  v119 = sub_20C138C94();
  v120 = MEMORY[0x277D54178];
  v117 = a31;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763CF0, &qword_20C155128);
  v113 = sub_20B529718(&qword_281103CD8, &unk_27C763CF0, &qword_20C155128);
  __swift_allocate_boxed_opaque_existential_1(v111);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763D00, &qword_20C155130);
  sub_20C133324();
  v93 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  v119 = sub_20C1390F4();
  v120 = MEMORY[0x277D54290];
  v117 = a32;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769500, &qword_20C155138);
  v113 = sub_20B529718(&unk_281103CB0, &unk_27C769500, &qword_20C155138);
  __swift_allocate_boxed_opaque_existential_1(v111);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133324();
  v95 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  v119 = sub_20C139014();
  v120 = MEMORY[0x277D54238];
  v117 = a33;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763D10, &qword_20C155140);
  v113 = sub_20B529718(&unk_281103CC8, &unk_27C763D10, &qword_20C155140);
  __swift_allocate_boxed_opaque_existential_1(v111);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763D20, &qword_20C184110);
  sub_20C133324();
  v97 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  v117 = a34;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763D28, &qword_20C155148);
  v113 = sub_20B529718(&unk_281103C70, &unk_27C763D28, &qword_20C155148);
  __swift_allocate_boxed_opaque_existential_1(v111);
  sub_20C1395F4();

  sub_20C133324();
  v99 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  v119 = sub_20C1394E4();
  v120 = MEMORY[0x277D543F0];
  v117 = a35;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763D38, &qword_20C155150);
  v113 = sub_20B529718(&unk_281103C80, &qword_27C763D38, &qword_20C155150);
  __swift_allocate_boxed_opaque_existential_1(v111);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76CDC0, &qword_20C155158);
  sub_20C133324();
  v101 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  v119 = sub_20C138BF4();
  v120 = MEMORY[0x277D54168];
  v117 = a36;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763D40, &qword_20C155160);
  v113 = sub_20B529718(&unk_281103D08, &qword_27C763D40, &qword_20C155160);
  __swift_allocate_boxed_opaque_existential_1(v111);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133324();
  v62 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  v119 = sub_20C13BAC4();
  v120 = MEMORY[0x277D4FB50];
  v117 = a37;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763D48, &qword_20C155168);
  v113 = sub_20B529718(&qword_281103E00, &unk_27C763D48, &qword_20C155168);
  __swift_allocate_boxed_opaque_existential_1(v111);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763D58, &unk_20C15FD80);
  sub_20C133324();
  v63 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  sub_20B51CC64(a38, &v117);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763D60, &qword_20C155170);
  v113 = sub_20B529718(&qword_281103D28, &unk_27C763D60, &qword_20C155170);
  __swift_allocate_boxed_opaque_existential_1(v111);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763D70, &qword_20C155178);
  sub_20C133324();
  v64 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  v117 = a39;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763D78, &qword_20C155180);
  v113 = sub_20B529718(&qword_281103CC0, &unk_27C763D78, &qword_20C155180);
  __swift_allocate_boxed_opaque_existential_1(v111);
  sub_20C1391B4();

  sub_20C133324();
  v65 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  v117 = a40;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763D88, &qword_20C155188);
  v113 = sub_20B529718(&unk_281103DB0, &unk_27C763D88, &qword_20C155188);
  __swift_allocate_boxed_opaque_existential_1(v111);
  type metadata accessor for WorkoutAnalyticsReporter(0);

  sub_20C133324();
  v66 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  v119 = sub_20C138C14();
  v120 = MEMORY[0x277D54170];
  v117 = a41;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763D98, &qword_20C155190);
  v113 = sub_20B529718(&unk_281103CA0, &unk_27C763D98, &qword_20C155190);
  __swift_allocate_boxed_opaque_existential_1(v111);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763DA8, &qword_20C155198);
  sub_20C133324();
  v67 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  v117 = a42;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763DB0, &qword_20C1551A0);
  v113 = sub_20B529718(&qword_281103DA8, &unk_27C763DB0, &qword_20C1551A0);
  __swift_allocate_boxed_opaque_existential_1(v111);
  type metadata accessor for WorkoutPlanStringBuilder(0);

  sub_20C133324();
  v68 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  v117 = a43;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763DC0, &qword_20C1551A8);
  v113 = sub_20B529718(&qword_281103C68, &unk_27C763DC0, &qword_20C1551A8);
  __swift_allocate_boxed_opaque_existential_1(v111);

  sub_20C133324();
  v69 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v111);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763DD0, &qword_20C1551B0);
  v70 = swift_allocObject();
  *(v70 + 32) = v110;
  *(v70 + 40) = v109;
  *(v70 + 48) = v108;
  *(v70 + 56) = v107;
  *(v70 + 64) = v106;
  *(v70 + 72) = v105;
  *(v70 + 80) = v104;
  *(v70 + 88) = v103;
  *(v70 + 96) = v100;
  *(v70 + 104) = v98;
  *(v70 + 112) = v96;
  *(v70 + 120) = v94;
  *(v70 + 128) = v92;
  *(v70 + 136) = v91;
  *(v70 + 144) = v90;
  *(v70 + 152) = v88;
  *(v70 + 16) = xmmword_20C154FE0;
  *(v70 + 160) = v87;
  *(v70 + 168) = v85;
  *(v70 + 176) = v83;
  *(v70 + 184) = v81;
  *(v70 + 192) = v79;
  *(v70 + 200) = v77;
  *(v70 + 208) = v75;
  *(v70 + 216) = v76;
  *(v70 + 224) = v78;
  *(v70 + 232) = v80;
  *(v70 + 240) = v82;
  *(v70 + 248) = v84;
  *(v70 + 256) = v86;
  *(v70 + 264) = v74;
  *(v70 + 272) = v73;
  *(v70 + 280) = v89;
  *(v70 + 288) = v93;
  *(v70 + 296) = v95;
  *(v70 + 304) = v97;
  *(v70 + 312) = v99;
  *(v70 + 320) = v101;
  *(v70 + 328) = v62;
  *(v70 + 336) = v63;
  *(v70 + 344) = v64;
  *(v70 + 352) = v65;
  *(v70 + 360) = v66;
  *(v70 + 368) = v67;
  *(v70 + 376) = v68;
  *(v70 + 384) = v69;
  sub_20C136204();

  v71 = sub_20C1361F4();

  return v71;
}

uint64_t sub_20B529718(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20B52976C(uint64_t a1, char a2)
{
  *(v3 + 320) = a2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v2;
  v4 = sub_20C13BB84();
  *(v3 + 200) = v4;
  *(v3 + 208) = *(v4 - 8);
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B529848, 0, 0);
}

uint64_t sub_20B529848(__n128 a1)
{
  v23 = v1;
  sub_20C13B424();

  v2 = sub_20C13BB74();
  v3 = sub_20C13D1F4();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[29];
  v6 = v1[25];
  v7 = v1[26];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315138;
    v10 = sub_20C13CF94();
    v12 = sub_20B51E694(v10, v11, &v22);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_20B517000, v2, v3, "[UM] Performing batch placement fetch: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x20F2F6A40](v9, -1, -1);
    MEMORY[0x20F2F6A40](v8, -1, -1);
  }

  v13 = *(v7 + 8);
  v13(v5, v6);
  v1[30] = v13;
  v14 = v1[24];
  sub_20C09E644(v1[23]);
  v15 = objc_allocWithZone(MEMORY[0x277CEE4A8]);
  v16 = sub_20C13C914();
  sub_20B51C88C(0, &unk_2811004D0, 0x277CEE4C0);
  v17 = sub_20C13CC54();

  v18 = [v15 initWithServiceType:v16 placementInfo:v17];
  v1[31] = v18;

  v19 = [*(v14 + OBJC_IVAR____TtC9SeymourUI26MarketingPlacementProvider_engagement) enqueueMessageEvent_];
  v1[32] = v19;
  v1[2] = v1;
  v1[7] = v1 + 21;
  v1[3] = sub_20C09F1F0;
  v20 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772718, &qword_20C18D788);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_20B532020;
  v1[13] = &block_descriptor_181;
  v1[14] = v20;
  [v19 resultWithCompletion_];

  return MEMORY[0x282200938](v1 + 2);
}

unint64_t sub_20B529B54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767A40, &qword_20C154CA8);
    v3 = sub_20C13DE84();
    v4 = a1 + 32;

    while (1)
    {
      sub_20B52F9E8(v4, v13, &qword_27C76FB40, qword_20C16B4C0);
      result = sub_20B65B190(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_20B6B3B74(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_20B529C90()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);

  return swift_deallocClassInstance();
}

uint64_t sub_20B529CF0()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_20BE47394;
  }

  else
  {
    v2 = sub_20B529F88;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B529E04()
{
  swift_unknownObjectRelease();

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23MetricNavigationTracker_lastPage, &qword_27C76EC38, &unk_20C17C680);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23MetricNavigationTracker_presentingPage, &qword_27C76EC38, &unk_20C17C680);

  return swift_deallocClassInstance();
}

uint64_t sub_20B529ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C1333A4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20B529F88()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  (*(v2 + 16))(v4, v1, v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  sub_20B52A094(v4);
  sub_20B520158(v4, &unk_27C768AD0, &unk_20C1523D0);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_20B52A094(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F600, &unk_20C17F800);
  MEMORY[0x28223BE20](v2);
  v4 = &v41 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AD0, &unk_20C1523D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v52 = &v41 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - v14;
  v16 = sub_20C134A94();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v51 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v41 - v20;
  sub_20B52A694(a1, v15);
  v22 = v17[6];
  if (v22(v15, 1, v16) == 1)
  {
    return sub_20B520158(v15, &unk_27C768AD0, &unk_20C1523D0);
  }

  v47 = v7;
  v41 = v17[4];
  v41(v21, v15, v16);
  v48 = v4;
  v24 = v2;
  v25 = OBJC_IVAR____TtC9SeymourUI23UnitPreferencesProvider_unitPreferences;
  v26 = v53;
  swift_beginAccess();
  v27 = v17[2];
  v50 = v21;
  v45 = v17 + 2;
  v43 = v27;
  v27(v12, v21, v16);
  v49 = v17;
  v28 = v17[7];
  v44 = v17 + 7;
  v42 = v28;
  v28(v12, 0, 1, v16);
  v29 = *(v24 + 48);
  v30 = v48;
  v46 = v25;
  sub_20B52A694(v26 + v25, v48);
  sub_20B52A694(v12, v30 + v29);
  if (v22(v30, 1, v16) == 1)
  {
    sub_20B520158(v12, &unk_27C768AD0, &unk_20C1523D0);
    v31 = v22((v30 + v29), 1, v16);
    v32 = v49;
    if (v31 == 1)
    {
      sub_20B520158(v30, &unk_27C768AD0, &unk_20C1523D0);
      return (v32[1])(v50, v16);
    }

    goto LABEL_8;
  }

  v33 = v52;
  sub_20B52A694(v30, v52);
  if (v22((v30 + v29), 1, v16) == 1)
  {
    sub_20B520158(v12, &unk_27C768AD0, &unk_20C1523D0);
    v32 = v49;
    (v49[1])(v33, v16);
LABEL_8:
    sub_20B520158(v30, &qword_27C76F600, &unk_20C17F800);
LABEL_9:
    v34 = v47;
    v35 = v50;
    v43(v47, v50, v16);
    v42(v34, 0, 1, v16);
    v36 = v53;
    v37 = v46;
    swift_beginAccess();
    sub_20B52A840(v34, v36 + v37);
    swift_endAccess();
    swift_getObjectType();
    sub_20B52A8B0();
    sub_20C13A764();
    return (v32[1])(v35, v16);
  }

  v38 = v51;
  v41(v51, (v30 + v29), v16);
  sub_20BE47818();
  v39 = sub_20C13C894();
  v32 = v49;
  v40 = v49[1];
  v40(v38, v16);
  sub_20B520158(v12, &unk_27C768AD0, &unk_20C1523D0);
  v40(v33, v16);
  sub_20B520158(v30, &unk_27C768AD0, &unk_20C1523D0);
  if ((v39 & 1) == 0)
  {
    goto LABEL_9;
  }

  return (v40)(v50, v16);
}

uint64_t sub_20B52A624()
{

  return swift_deallocClassInstance();
}

uint64_t sub_20B52A65C()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_20B52A694(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AD0, &unk_20C1523D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B52A704()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_20B52A744()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  v1 = OBJC_IVAR____TtC9SeymourUI24WorkoutPlanStringBuilder_completedOnDateFormat;
  v2 = sub_20C132D44();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_20B52A800()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_20B52A840(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AD0, &unk_20C1523D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_20B52A8B0()
{
  result = qword_2811005F0[0];
  if (!qword_2811005F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811005F0);
  }

  return result;
}

uint64_t sub_20B52A908@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C13A9C4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_20B52A97C()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_20B52A9D4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20B52AB1C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20B52B2B8()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23UnitPreferencesProvider_unitPreferences, &unk_27C768AD0, &unk_20C1523D0);

  return swift_deallocClassInstance();
}

uint64_t sub_20B52B40C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B52B494(a1, a2);
  }

  return result;
}

uint64_t sub_20B52B494(uint64_t a1, unint64_t a2)
{
  v88 = a1;
  v94 = a2;
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  v90 = v3;
  v91 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v84[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v89 = &v84[-v8];
  MEMORY[0x28223BE20](v9);
  v11 = &v84[-v10];
  v12 = [objc_opt_self() mainBundle];
  v13 = [v12 bundleIdentifier];

  if (v13)
  {
    v92 = sub_20C13C954();
    v15 = v14;
  }

  else
  {
    v92 = 0;
    v15 = 0;
  }

  v87 = v6;
  v96 = MEMORY[0x277D84F90];
  v16 = v94;
  if (v94 >> 62)
  {
LABEL_91:
    v17 = sub_20C13DB34();
  }

  else
  {
    v17 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = MEMORY[0x277D84F90];
  if (!v17)
  {
    v29 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_92;
    }

    goto LABEL_32;
  }

  v93 = v11;
  v19 = 0;
  v20 = v16 & 0xC000000000000001;
  v21 = v16 & 0xFFFFFFFFFFFFFF8;
  while (!v20)
  {
    if (v19 >= *(v21 + 16))
    {
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v22 = *(v16 + 8 * v19 + 32);
    swift_unknownObjectRetain();
    v2 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_28;
    }

LABEL_13:
    if (([v22 smu_isPictureInPicture] & 1) == 0)
    {
      v23 = [v22 bundleIdentifier];
      if (v23)
      {
        v11 = v15;
        v24 = v23;
        v25 = sub_20C13C954();
        v27 = v26;

        v15 = v11;
        if (v11)
        {
          if (v25 == v92 && v11 == v27)
          {

LABEL_23:
            sub_20C13DD34();
            sub_20C13DD74();
            sub_20C13DD84();
            sub_20C13DD44();
LABEL_25:
            v16 = v94;
            goto LABEL_9;
          }

          v28 = sub_20C13DFF4();

          if (v28)
          {
            goto LABEL_23;
          }
        }

        else
        {
        }
      }

      else if (!v15)
      {
        goto LABEL_23;
      }

      swift_unknownObjectRelease();
      goto LABEL_25;
    }

    swift_unknownObjectRelease();
LABEL_9:
    ++v19;
    if (v2 == v17)
    {
      goto LABEL_29;
    }
  }

  v22 = MEMORY[0x20F2F5430](v19, v16);
  v2 = v19 + 1;
  if (!__OFADD__(v19, 1))
  {
    goto LABEL_13;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  v29 = v96;
  v18 = MEMORY[0x277D84F90];
  v11 = v93;
  if ((v96 & 0x8000000000000000) != 0)
  {
LABEL_92:
    if (!sub_20C13DB34())
    {
      goto LABEL_93;
    }

    goto LABEL_34;
  }

LABEL_32:
  if ((v29 & 0x4000000000000000) != 0)
  {
    goto LABEL_92;
  }

  if (!*(v29 + 16))
  {
LABEL_93:
  }

LABEL_34:
  if ((v29 & 0xC000000000000001) != 0)
  {
    v93 = MEMORY[0x20F2F5430](0, v29);
  }

  else
  {
    if (!*(v29 + 16))
    {
      __break(1u);
      goto LABEL_98;
    }

    v93 = *(v29 + 32);
    swift_unknownObjectRetain();
  }

  v2 = v15;
  sub_20C13B4A4();
  sub_20C13BB64();
  v30 = *(v91 + 8);
  v91 += 8;
  v86 = v30;
  v30(v11, v90);
  v96 = v18;
  if (!v17)
  {
    goto LABEL_50;
  }

  v11 = v18;
  v31 = 0;
  v32 = v16 & 0xC000000000000001;
  v15 = v16 & 0xFFFFFFFFFFFFFF8;
  while (2)
  {
    if (v32)
    {
      MEMORY[0x20F2F5430](v31, v16);
      v33 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      goto LABEL_44;
    }

    if (v31 >= *(v15 + 16))
    {
      goto LABEL_89;
    }

    swift_unknownObjectRetain();
    v33 = v31 + 1;
    if (!__OFADD__(v31, 1))
    {
LABEL_44:
      if (sub_20B52C0CC())
      {
        swift_unknownObjectRelease();
      }

      else
      {
        sub_20C13DD34();
        sub_20C13DD74();
        v16 = v94;
        sub_20C13DD84();
        sub_20C13DD44();
      }

      ++v31;
      if (v33 == v17)
      {
        goto LABEL_49;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_49:
  v18 = v11;
LABEL_50:

  v96 = sub_20B52C308(v34);
  v11 = 0;
  sub_20B52C334(&v96);

  v17 = v96;
  if ((v96 & 0x8000000000000000) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = (v96 >> 62) & 1;
  }

  if (v15 != 1)
  {
    v94 = *(v96 + 16);
    if (v94)
    {
      goto LABEL_55;
    }

LABEL_99:
    if (v2)
    {

      v42 = MEMORY[0x277D84F90];
      if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
      {
        goto LABEL_137;
      }

      goto LABEL_101;
    }

    goto LABEL_105;
  }

LABEL_98:
  v94 = sub_20C13DB34();
  if (!v94)
  {
    goto LABEL_99;
  }

LABEL_55:
  v35 = v17 & 0xC000000000000001;
  if ((v17 & 0xC000000000000001) != 0)
  {
    v36 = MEMORY[0x20F2F5430](0, v17);
  }

  else
  {
    if (!*(v17 + 16))
    {
      __break(1u);
      goto LABEL_140;
    }

    v36 = *(v17 + 32);
    swift_unknownObjectRetain();
  }

  v16 = [v36 smu_isPictureInPicture];
  swift_unknownObjectRelease();
  if (v16)
  {
    v37 = v18;
    goto LABEL_60;
  }

  if (v35)
  {
    v43 = MEMORY[0x20F2F5430](0, v17);
  }

  else
  {
    if (!*(v17 + 16))
    {
      goto LABEL_141;
    }

    v43 = *(v17 + 32);
    swift_unknownObjectRetain();
  }

  v44 = [v43 bundleIdentifier];
  swift_unknownObjectRelease();
  if (!v44)
  {
    if (!v2)
    {
      goto LABEL_105;
    }

    v37 = v18;
    goto LABEL_60;
  }

  v16 = sub_20C13C954();
  v46 = v45;

  if (!v2)
  {
    v37 = v18;
LABEL_60:

    goto LABEL_61;
  }

  if (v16 == v92 && v2 == v46)
  {

    goto LABEL_105;
  }

  v37 = v18;
  v47 = sub_20C13DFF4();

  if (v47)
  {
LABEL_105:
    v11 = 0;
    v50 = 1;
    if (v15)
    {
      goto LABEL_104;
    }

    goto LABEL_106;
  }

LABEL_61:
  v38 = 0;
  v96 = v37;
  v11 = &selRef_setDescriptionTextHighlightColor_;
  while (2)
  {
    if (v35)
    {
      v39 = MEMORY[0x20F2F5430](v38, v17);
      v40 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      goto LABEL_67;
    }

    if (v38 >= *(v17 + 16))
    {
      goto LABEL_90;
    }

    v39 = *(v17 + 8 * v38 + 32);
    swift_unknownObjectRetain();
    v40 = v38 + 1;
    if (!__OFADD__(v38, 1))
    {
LABEL_67:
      v41 = [v39 level];
      if (v41 == [v93 level])
      {
        sub_20C13DD34();
        v16 = *(v96 + 16);
        sub_20C13DD74();
        sub_20C13DD84();
        sub_20C13DD44();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v38;
      if (v40 == v94)
      {
        goto LABEL_72;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_72:
  v42 = v96;
  if ((v96 & 0x8000000000000000) != 0)
  {
LABEL_137:
    v49 = sub_20C13DB34();
    goto LABEL_103;
  }

LABEL_101:
  if ((v42 & 0x4000000000000000) != 0)
  {
    goto LABEL_137;
  }

  v49 = *(v42 + 16);
LABEL_103:

  v50 = 0;
  v11 = v49 > 1;
  if (v15)
  {
LABEL_104:
    v51 = sub_20C13DB34();
    goto LABEL_107;
  }

LABEL_106:
  v51 = *(v17 + 16);
LABEL_107:
  v52 = MEMORY[0x277D84F90];
  if (v51)
  {
    v96 = MEMORY[0x277D84F90];
    sub_20B526D44(0, v51 & ~(v51 >> 63), 0);
    if ((v51 & 0x8000000000000000) == 0)
    {
      v85 = v50;
      LODWORD(v92) = v11;
      v53 = 0;
      v52 = v96;
      do
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v54 = MEMORY[0x20F2F5430](v53, v17);
        }

        else
        {
          v54 = *(v17 + 8 * v53 + 32);
          swift_unknownObjectRetain();
        }

        v55 = [v54 extendedDescription];
        v56 = sub_20C13C954();
        v15 = v57;
        swift_unknownObjectRelease();

        v96 = v52;
        v59 = *(v52 + 16);
        v58 = *(v52 + 24);
        if (v59 >= v58 >> 1)
        {
          sub_20B526D44((v58 > 1), v59 + 1, 1);
          v52 = v96;
        }

        ++v53;
        *(v52 + 16) = v59 + 1;
        v60 = v52 + 16 * v59;
        *(v60 + 32) = v56;
        *(v60 + 40) = v15;
      }

      while (v51 != v53);
      LOBYTE(v11) = v92;
      LOBYTE(v50) = v85;
      goto LABEL_117;
    }

LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_117:
    if (v50 & 1) != 0 || (v11)
    {

      swift_unknownObjectRelease();
    }

    else
    {
      v61 = 0;
      do
      {
        v62 = v61;
        if (v94 == v61)
        {
          break;
        }

        if ((v17 & 0xC000000000000001) != 0)
        {
          v63 = MEMORY[0x20F2F5430](v61, v17);
          if (__OFADD__(v62, 1))
          {
            goto LABEL_129;
          }
        }

        else
        {
          if (v61 >= *(v17 + 16))
          {
            __break(1u);
            goto LABEL_137;
          }

          v63 = *(v17 + 8 * v61 + 32);
          swift_unknownObjectRetain();
          if (__OFADD__(v62, 1))
          {
LABEL_129:
            __break(1u);
            break;
          }
        }

        v64 = [v63 smu_isPictureInPicture];
        swift_unknownObjectRelease();
        v61 = v62 + 1;
      }

      while (!v64);

      v65 = v89;
      sub_20C13B4A4();
      v66 = v88;
      swift_unknownObjectRetain();
      v67 = sub_20C13BB74();
      v68 = sub_20C13D1F4();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v96 = v70;
        *v69 = 136446210;
        v95 = v66;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7660C8, &unk_20C15BCB8);
        v71 = sub_20C13C9D4();
        v73 = sub_20B51E694(v71, v72, &v96);

        *(v69 + 4) = v73;
        _os_log_impl(&dword_20B517000, v67, v68, "[App Occlusion] Occlusion on %{public}s", v69, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v70);
        MEMORY[0x20F2F6A40](v70, -1, -1);
        MEMORY[0x20F2F6A40](v69, -1, -1);
      }

      v86(v65, v90);
      v74 = v87;
      sub_20C13B4A4();

      v75 = sub_20C13BB74();
      v76 = sub_20C13D1F4();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v96 = v78;
        *v77 = 136446210;
        v79 = MEMORY[0x20F2F43F0](v52, MEMORY[0x277D837D0]);
        v81 = v80;

        v82 = sub_20B51E694(v79, v81, &v96);

        *(v77 + 4) = v82;
        _os_log_impl(&dword_20B517000, v75, v76, "[App Occlusion] ⌙ Layout Elements: %{public}s", v77, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v78);
        MEMORY[0x20F2F6A40](v78, -1, -1);
        MEMORY[0x20F2F6A40](v77, -1, -1);
      }

      else
      {
      }

      v86(v74, v90);
      v83 = v94 != v62;
      swift_getObjectType();
      LOBYTE(v96) = v83;
      sub_20B802DE8();
      sub_20C13A764();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_20B52C0CC()
{
  if ([v0 smu_isVolumeHUD] & 1) != 0 || (objc_msgSend(v0, sel_smu_isSystemNotification) & 1) != 0 || (objc_msgSend(v0, sel_smu_isSystemIndicator) & 1) != 0 || (objc_msgSend(v0, sel_smu_isControlCenter) & 1) != 0 || (objc_msgSend(v0, sel_smu_isBrightnessControlHUD))
  {
    return 1;
  }

  else
  {
    return [v0 smu_isSystemOverlay];
  }
}

uint64_t CompletedWorkoutShareItemProvider.init(dependencies:unitPreferencesProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769590, &unk_20C152E50);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
  sub_20C133AA4();
  a4[10] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0, &qword_20C152E60);
  sub_20C133AA4();

  a4[16] = a2;
  a4[17] = a3;
  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_20B52C334(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_20B52C3B0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_20B52C3B4(v6);
  return sub_20C13DD44();
}

uint64_t sub_20B52C3B4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_20C13DF84();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7660D0, &qword_20C15BCC8);
        v6 = sub_20C13CCD4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_20B802484(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_20B52C4C4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_20B52C4C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = result - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v15 = v7;
    v16 = v6;
    while (1)
    {
      v9 = *v6;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v10 = [v8 level];
      v11 = [v9 level];
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      if (v11 >= v10)
      {
LABEL_4:
        ++v4;
        v6 = v16 + 8;
        v7 = v15 - 1;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v12 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v12;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_20B52C814(unint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_20C13DB34();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_20B52C8B8(uint64_t a1)
{
  result = type metadata accessor for CatalogTipPlaybackContent(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for CatalogTipPlaybackContent(uint64_t a1)
{
  result = qword_281101848;
  if (!qword_281101848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B52C96C(uint64_t a1)
{
  sub_20B52CA1C(319);
  if (v1 <= 0x3F)
  {
    sub_20B52CA84();
    if (v2 <= 0x3F)
    {
      sub_20C132C14();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20B52CA1C(uint64_t a1)
{
  if (!qword_281103B70)
  {
    sub_20C137C24();
    v1 = sub_20C13D914();
    if (!v2)
    {
      atomic_store(v1, &qword_281103B70);
    }
  }
}

void sub_20B52CA84()
{
  if (!qword_2811005B8)
  {
    v0 = sub_20C13D914();
    if (!v1)
    {
      atomic_store(v0, &qword_2811005B8);
    }
  }
}

void sub_20B52CAE4(uint64_t a1)
{
  sub_20B52CB58();
  if (v1 <= 0x3F)
  {
    sub_20B52CBA0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_20B52CB58()
{
  if (!qword_281103E30)
  {
    v0 = sub_20C132C14();
    if (!v1)
    {
      atomic_store(v0, &qword_281103E30);
    }
  }
}

void sub_20B52CBA0()
{
  if (!qword_281100558)
  {
    v0 = sub_20B51C88C(0, &qword_281100550, 0x277D75D28);
    if (!v1)
    {
      atomic_store(v0, &qword_281100558);
    }
  }
}

uint64_t type metadata accessor for WorkoutPlanSwappableItem(uint64_t a1)
{
  result = qword_281101B40;
  if (!qword_281101B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B52CC44(uint64_t a1)
{
  sub_20B52CCE0(319);
  if (v1 <= 0x3F)
  {
    sub_20C135C54();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20B52CCE0(uint64_t a1)
{
  if (!qword_281103C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C766C00, &unk_20C15E820);
    v1 = sub_20C13D914();
    if (!v2)
    {
      atomic_store(v1, &qword_281103C00);
    }
  }
}

void sub_20B52CD54(uint64_t a1)
{
  sub_20B52CE30();
  if (v1 <= 0x3F)
  {
    sub_20B52CE80(319, &qword_281103B90, MEMORY[0x277D52AF8]);
    if (v2 <= 0x3F)
    {
      sub_20B52CE80(319, &qword_281103B78, MEMORY[0x277D52CE0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20B52CE30()
{
  if (!qword_281100588)
  {
    v0 = sub_20C13D914();
    if (!v1)
    {
      atomic_store(v0, &qword_281100588);
    }
  }
}

void sub_20B52CE80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *MetricSceneLifecycleTracker.init(dependencies:)(uint64_t a1)
{
  *(v1 + 97) = 0;
  sub_20C13A2B4();
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  swift_allocObject();
  *(v1 + 32) = sub_20C13A2A4();
  *(v1 + 96) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *(v1 + 16) = v5[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763DF0, &qword_20C1551B8);
  sub_20C133AA4();
  sub_20B51C710(v5, v1 + 40);
  type metadata accessor for MetricNavigationTracker(0);
  sub_20C133AA4();
  v2 = *&v5[0];
  v3 = sub_20B52D308(&qword_281102550, type metadata accessor for MetricNavigationTracker, &unk_20C17C610);
  *(v1 + 120) = v2;
  *(v1 + 128) = v3;

  sub_20C133AA4();
  *(v1 + 80) = v5[0];
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v1 + 88) = sub_20C13A914();
  swift_getObjectType();
  type metadata accessor for NavigationWithURLInfoCompleted(0);
  swift_allocObject();
  swift_weakInit();
  sub_20B52D308(qword_2811009E0, type metadata accessor for NavigationWithURLInfoCompleted, &unk_20C18DB20);

  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v5);
  swift_getObjectType();
  sub_20C1395D4();
  swift_allocObject();
  swift_weakInit();
  sub_20B52D308(&qword_281103B00, MEMORY[0x277D54428], MEMORY[0x277D54420]);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v5);
  swift_getObjectType();
  sub_20C1395B4();
  swift_allocObject();
  swift_weakInit();

  sub_20B52D308(&qword_281103B08, MEMORY[0x277D54418], MEMORY[0x277D54410]);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v5);
  return v1;
}

uint64_t sub_20B52D2D0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B52D308(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for NavigationWithURLInfoCompleted(uint64_t a1)
{
  result = qword_2811009A0;
  if (!qword_2811009A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B52D39C(uint64_t a1)
{
  result = type metadata accessor for NavigationSharingURLInfo(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for NavigationSharingURLInfo(uint64_t a1)
{
  result = qword_281102278;
  if (!qword_281102278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B52D478(uint64_t a1)
{
  sub_20C132C14();
  if (v1 <= 0x3F)
  {
    sub_20B52DCE4(319);
    if (v2 <= 0x3F)
    {
      sub_20B52CA84();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

char *AccountButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC9SeymourUI13AccountButton_onLongPressed];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = OBJC_IVAR____TtC9SeymourUI13AccountButton_imageView;
  v11 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v10] = v11;
  v12 = OBJC_IVAR____TtC9SeymourUI13AccountButton_highlightView;
  v13 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  v14 = objc_opt_self();
  v15 = [v14 blackColor];
  [v13 setBackgroundColor_];

  [v13 setAlpha_];
  *&v4[v12] = v13;
  v16 = &v4[OBJC_IVAR____TtC9SeymourUI13AccountButton_layout];
  sub_20C13D514();
  *v16 = v17;
  *(v16 + 1) = v18;
  *&v4[OBJC_IVAR____TtC9SeymourUI13AccountButton_avatarViewController] = 0;
  *&v4[OBJC_IVAR____TtC9SeymourUI13AccountButton_highlightTask] = 0;
  v61.receiver = v4;
  v61.super_class = type metadata accessor for AccountButton();
  v19 = objc_msgSendSuper2(&v61, sel_initWithFrame_, a1, a2, a3, a4);
  [v19 addTarget:v19 action:sel_tappedDown forControlEvents:1];
  [v19 addTarget:v19 action:sel_tappedUp forControlEvents:256];
  [v19 addTarget:v19 action:sel_tappedUp forControlEvents:32];
  [v19 addTarget:v19 action:sel_tappedUp forControlEvents:8];
  [v19 addTarget:v19 action:sel_tappedUp forControlEvents:64];
  [v19 addTarget:v19 action:sel_tappedUp forControlEvents:128];
  v60 = [objc_allocWithZone(MEMORY[0x277D75708]) initWithTarget:v19 action:sel_longPressWithGesture_];
  [v60 setMinimumPressDuration_];
  v20 = v19;
  [v20 addGestureRecognizer_];
  v21 = OBJC_IVAR____TtC9SeymourUI13AccountButton_imageView;
  [*&v20[OBJC_IVAR____TtC9SeymourUI13AccountButton_imageView] setHidden_];
  v22 = *&v20[v21];
  v23 = sub_20B52DD60(0xD000000000000012, 0x800000020C1A58E0);
  [v22 setImage_];

  [*&v20[v21] setContentMode_];
  v24 = *&v20[v21];
  v25 = [v14 whiteColor];
  [v24 setTintColor_];

  [v20 addSubview_];
  v26 = OBJC_IVAR____TtC9SeymourUI13AccountButton_highlightView;
  [*&v20[OBJC_IVAR____TtC9SeymourUI13AccountButton_highlightView] setUserInteractionEnabled_];
  [v20 addSubview_];
  v59 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_20C14FF90;
  v28 = [v20 widthAnchor];

  v29 = &v20[OBJC_IVAR____TtC9SeymourUI13AccountButton_layout];
  v30 = [v28 constraintEqualToConstant_];

  *(v27 + 32) = v30;
  v31 = [v20 heightAnchor];

  v32 = [v31 constraintEqualToConstant_];
  *(v27 + 40) = v32;
  v33 = [*&v20[v21] leadingAnchor];
  v34 = [v20 leadingAnchor];

  v35 = [v33 constraintEqualToAnchor_];
  *(v27 + 48) = v35;
  v36 = [*&v20[v21] trailingAnchor];
  v37 = [v20 trailingAnchor];

  v38 = [v36 constraintEqualToAnchor_];
  *(v27 + 56) = v38;
  v39 = [*&v20[v21] topAnchor];
  v40 = [v20 topAnchor];

  v41 = [v39 constraintEqualToAnchor_];
  *(v27 + 64) = v41;
  v42 = [*&v20[v21] bottomAnchor];
  v43 = [v20 bottomAnchor];

  v44 = [v42 constraintEqualToAnchor_];
  *(v27 + 72) = v44;
  v45 = [*&v20[v26] leadingAnchor];
  v46 = [v20 leadingAnchor];

  v47 = [v45 constraintEqualToAnchor_];
  *(v27 + 80) = v47;
  v48 = [*&v20[v26] trailingAnchor];
  v49 = [v20 trailingAnchor];

  v50 = [v48 constraintEqualToAnchor_];
  *(v27 + 88) = v50;
  v51 = [*&v20[v26] topAnchor];
  v52 = [v20 topAnchor];

  v53 = [v51 constraintEqualToAnchor_];
  *(v27 + 96) = v53;
  v54 = [*&v20[v26] bottomAnchor];
  v55 = [v20 bottomAnchor];

  v56 = [v54 constraintEqualToAnchor_];
  *(v27 + 104) = v56;
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v57 = sub_20C13CC54();

  [v59 activateConstraints_];

  return v20;
}

void sub_20B52DCE4(uint64_t a1)
{
  if (!qword_281103E28)
  {
    sub_20C132C14();
    v1 = sub_20C13D914();
    if (!v2)
    {
      atomic_store(v1, &qword_281103E28);
    }
  }
}

id sub_20B52DD60(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC9SeymourUI13AccountButton_layout) > *(v2 + OBJC_IVAR____TtC9SeymourUI13AccountButton_layout + 8))
  {
    v3 = *(v2 + OBJC_IVAR____TtC9SeymourUI13AccountButton_layout);
  }

  else
  {
    v3 = *(v2 + OBJC_IVAR____TtC9SeymourUI13AccountButton_layout + 8);
  }

  v4 = [objc_opt_self() systemFontOfSize:v3 weight:*MEMORY[0x277D74408]];
  v5 = [objc_opt_self() configurationWithFont_];

  v6 = v5;
  v7 = sub_20C13C914();
  v8 = [objc_opt_self() smm:v7 systemImageNamed:v6 withConfiguration:?];

  v9 = [v8 CGImage];
  if (v9)
  {
    v10 = v9;
    [v8 scale];
    v12 = v11;
    v13 = [v8 imageOrientation];
    v14 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v10 scale:v13 orientation:v12];

    v15 = [v14 imageWithRenderingMode_];
  }

  else
  {

    return 0;
  }

  return v15;
}

char *PictureInPicturePresenter.init(dependencies:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC9SeymourUI25PictureInPicturePresenter_state];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC9SeymourUI25PictureInPicturePresenter_display + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_20C138F44();
  sub_20C133AA4();
  *&v1[OBJC_IVAR____TtC9SeymourUI25PictureInPicturePresenter_audioSessionCoordinator] = *&v11[0];
  *&v1[OBJC_IVAR____TtC9SeymourUI25PictureInPicturePresenter_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768810, &unk_20C1524D0);
  sub_20C133AA4();
  sub_20B52E424(v11, &v1[OBJC_IVAR____TtC9SeymourUI25PictureInPicturePresenter_sessionClient]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  v5 = *(&v11[0] + 1);
  v6 = &v1[OBJC_IVAR____TtC9SeymourUI25PictureInPicturePresenter_eventHub];
  *v6 = *&v11[0];
  *(v6 + 1) = v5;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&v1[OBJC_IVAR____TtC9SeymourUI25PictureInPicturePresenter_subscriptionToken] = sub_20C13A914();
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v10, sel_init);
  swift_getObjectType();
  sub_20C13A614();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = v7;
  swift_unknownObjectRetain();

  sub_20C13A784();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v11);
  swift_getObjectType();
  sub_20C13A6A4();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  sub_20C13A784();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v11);
  swift_getObjectType();
  sub_20C13AA24();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  sub_20C13A784();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v11);
  swift_getObjectType();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  sub_20B52E43C();

  sub_20C13A7A4();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v11);

  return v8;
}

uint64_t sub_20B52E3A0()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t type metadata accessor for WorkoutSessionConfiguration(uint64_t a1)
{
  result = qword_281100ED8;
  if (!qword_281100ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20B52E43C()
{
  result = qword_281100940[0];
  if (!qword_281100940[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281100940);
  }

  return result;
}

uint64_t *sub_20B52E4A0(uint64_t *result)
{
  v2 = *(v1 + 16);
  v3 = *(result + 8);
  v4 = *result;
  v5 = v3;
  if (v2)
  {
    return v2(&v4);
  }

  return result;
}

uint64_t sub_20B52E5B8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10)
{
  v32 = a7;
  v31 = a6;
  v30[2] = a5;
  v33 = a2;
  v13 = a10;
  v34 = a9;
  v14 = sub_20C13BB84();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v18 = sub_20C13BB74();
  v19 = sub_20C13D1F4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v30[1] = a8;
    v21 = v20;
    v22 = swift_slowAlloc();
    v30[0] = a10;
    v23 = v22;
    v35 = v22;
    *v21 = 134218498;
    *(v21 + 4) = a3;
    *(v21 + 12) = 2080;
    v24 = sub_20C13DCA4();
    v26 = sub_20B51E694(v24, v25, &v35);

    *(v21 + 14) = v26;
    *(v21 + 22) = 2048;
    *(v21 + 24) = v32;
    _os_log_impl(&dword_20B517000, v18, v19, "Finished P->A conversion: %ld:%s:%lu", v21, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v23);
    v27 = v23;
    v13 = v30[0];
    MEMORY[0x20F2F6A40](v27, -1, -1);
    MEMORY[0x20F2F6A40](v21, -1, -1);
  }

  (*(v15 + 8))(v17, v14);
  v35 = a1;
  if (v33)
  {
    v28 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(v34, v13);
    return sub_20C13CD44();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(v34, v13);
    return sub_20C13CD54();
  }
}

uint64_t objectdestroy_260Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0, &qword_20C161470);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t objectdestroy_24Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_24Tm_0(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 56) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

unint64_t sub_20B52E97C()
{
  result = qword_281103B68;
  if (!qword_281103B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281103B68);
  }

  return result;
}

uint64_t sub_20B52E9D0()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = v0[18];
  v5 = v0[15];
  v6 = v0[16];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_20B52EB0C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_20B7E761C;
  }

  else
  {

    v2 = sub_20B52EC28;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B52EC54()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  return swift_deallocClassInstance();
}

uint64_t sub_20B52ECBC(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52A9D4;

  return sub_20B52ED70();
}

uint64_t sub_20B52ED70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52A9D4;

  return sub_20B52EE94();
}

uint64_t sub_20B52EE00(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_20B52EE5C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_20B52EE94()
{
  v1[7] = v0;
  sub_20C13CDA4();
  v1[8] = sub_20C13CD94();
  v3 = sub_20C13CD24();
  v1[9] = v3;
  v1[10] = v2;

  return MEMORY[0x2822009F8](sub_20B8AEE0C, v3, v2);
}

void sub_20B52EF60(void *a1)
{
  if (a1)
  {
    v11 = a1;
    sub_20BAAA818();
    v2 = OBJC_IVAR____TtC9SeymourUI13AccountButton_avatarViewController;
    v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI13AccountButton_avatarViewController);
    if (v3)
    {
      [v3 setContact_];
      v4 = *(v1 + v2);
      if (v4)
      {
        v5 = [v4 view];
        [v5 setHidden_];
      }
    }

    [*(v1 + OBJC_IVAR____TtC9SeymourUI13AccountButton_imageView) setHidden_];
  }

  else
  {
    v6 = OBJC_IVAR____TtC9SeymourUI13AccountButton_avatarViewController;
    v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI13AccountButton_avatarViewController);
    if (v7)
    {
      [v7 setContact_];
      v8 = *(v1 + v6);
      if (v8)
      {
        v9 = [v8 view];
        [v9 setHidden_];
      }
    }

    v10 = *(v1 + OBJC_IVAR____TtC9SeymourUI13AccountButton_imageView);

    [v10 setHidden_];
  }
}

void sub_20B52F0BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  if (v0[OBJC_IVAR____TtC9SeymourUI31MarketingPaletteBannerPresenter_state + 8] == 255)
  {
    v4 = sub_20C13CDF4();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    sub_20C13CDA4();
    v5 = v0;
    v6 = sub_20C13CD94();
    v7 = swift_allocObject();
    v8 = MEMORY[0x277D85700];
    v7[2] = v6;
    v7[3] = v8;
    v7[4] = v5;
    sub_20B6383D0(0, 0, v3, &unk_20C161040, v7);
  }
}

uint64_t sub_20B52F204(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (a2)
  {
    return a2(a1);
  }

  return a1;
}

uint64_t get_enum_tag_for_layout_string_9SeymourUI14AvatarSettingsVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void sub_20B52F2A0(void *a1@<X8>)
{
  if (!*(*v1 + 120))
  {
    v2 = a1;
    sub_20B52F700();
    a1 = v2;
  }

  sub_20BCC4384(a1);
}

uint64_t sub_20B52F2D8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 48);
  v11 = *(v4 + 40);
  v12 = v4 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return a4(a1, v7, v8, v9, v11, v10, v12);
}

uint64_t sub_20B52F370(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v24[1] = a3;
  v25 = a2;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764288, &qword_20C180430);
  MEMORY[0x28223BE20](v5);
  v7 = (v24 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764290, &unk_20C152F80);
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v24 - v9;
  v11 = sub_20C135734();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764238, &unk_20C155D70);
  MEMORY[0x28223BE20](v15);
  v17 = (v24 - v16);
  sub_20B52F9E8(v28, v24 - v16, &qword_27C764238, &unk_20C155D70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    *v7 = *v17;
    swift_storeEnumTagMultiPayload();
    v19 = v18;
    v29(v7);

    return sub_20B520158(v7, &qword_27C764288, &qword_20C180430);
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
    v25(v14);
    v21 = v27;
    v22 = sub_20C137CB4();
    v23 = swift_allocObject();
    *(v23 + 16) = v29;
    *(v23 + 24) = v30;

    v22(sub_20B52F234, v23);

    (*(v26 + 8))(v10, v21);
    return (*(v12 + 8))(v14, v11);
  }
}

void sub_20B52F700()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v6 = sub_20C13BB74();
  v7 = sub_20C13D1F4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20B517000, v6, v7, "Fetching Contacts for Avatar Picture.", v8, 2u);
    MEMORY[0x20F2F6A40](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_20C14F580;
  *(v9 + 32) = [objc_opt_self() descriptorForRequiredKeys];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
  v10 = sub_20C13ADB4();

  v11 = v1[15];
  if (v11)
  {
    if (v10)
    {
      sub_20BC5FFE8();
      v12 = v11;
      v13 = v10;
      v14 = sub_20C13D5F4();

      if (v14)
      {

        return;
      }

      v11 = v1[15];
    }
  }

  else
  {
    if (!v10)
    {
      return;
    }

    v11 = 0;
  }

  v1[15] = v10;
  v15 = v10;

  swift_getObjectType();
  sub_20BCC4384(v16);
  sub_20BB2AACC();
  sub_20C13A764();

  sub_20B8FD958(v16[0], v16[1], v16[2], v16[3], v16[4]);
}

uint64_t sub_20B52F9E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_20B52FA64()
{
  v0 = sub_20C132E94();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C139354();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  sub_20C132E84();
  v11 = sub_20C135704();
  (*(v1 + 8))(v3, v0);
  v12 = MEMORY[0x277D54348];
  if ((v11 & 1) == 0)
  {
    v12 = MEMORY[0x277D54350];
  }

  (*(v5 + 104))(v10, *v12, v4);
  (*(v5 + 16))(v7, v10, v4);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  (*(v5 + 32))(v14 + v13, v7, v4);
  sub_20C137CA4();
  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_20B52FCE0()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_20B8DE9FC;
  }

  else
  {
    (*(v2[8] + 8))(v2[9], v2[7]);
    v3 = sub_20B52FE48;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B52FE48()
{
  (*(v0[11] + 104))(v0[12], *MEMORY[0x277D51A28], v0[10]);
  sub_20B530040(&qword_281103BB0, MEMORY[0x277D51A40], MEMORY[0x277D51A50]);
  sub_20C13CC34();
  sub_20C13CC34();
  if (v0[2] == v0[4] && v0[3] == v0[5])
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_20C13DFF4();
  }

  v2 = v0[13];
  v3 = v0[10];
  v4 = *(v0[11] + 8);
  v4(v0[12], v3);
  v4(v2, v3);

  v5 = v0[1];

  return v5(v1 & 1);
}

uint64_t sub_20B530040(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20B530088(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20B5300D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20B53018C(char a1)
{
  *(*v1 + 361) = a1;

  return MEMORY[0x2822009F8](sub_20B53028C, 0, 0);
}

uint64_t sub_20B53028C()
{
  v1 = (v0[13] + OBJC_IVAR____TtC9SeymourUI31MarketingPaletteBannerPresenter_subscriptionCache);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  v0[39] = v4;
  *v4 = v0;
  v4[1] = sub_20B531744;
  v5 = v0[26];

  return MEMORY[0x2821B5670](v5, v2, v3);
}

uint64_t sub_20B530384()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20BCA053C, 0, 0);
  }

  else
  {
    v5 = v2[9];
    v4 = v2[10];
    v6 = v2[8];
    v7 = v2[2];

    (*(v5 + 8))(v4, v6);

    v8 = v3[1];

    return v8(v7);
  }
}

uint64_t sub_20B53052C(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_20B53064C, 0, 0);
}

uint64_t sub_20B53064C()
{
  *(v0[2] + OBJC_IVAR____TtC9SeymourUI27FilterPropertyStringBuilder_trainerReferences) = v0[4];

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B5306C0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_20B530704(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v22[1] = a5;
  v23 = a2;
  v24 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764290, &unk_20C152F80);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764288, &qword_20C180430);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (v22 - v15);
  sub_20B52F9E8(a1, v22 - v15, &qword_27C764288, &qword_20C180430);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    a4(*v16);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B52F238, v19);

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    v21 = sub_20C139354();
    (*(*(v21 - 8) + 32))(v13, v16, v21);
    swift_storeEnumTagMultiPayload();
    v23(v13);
    return sub_20B520158(v13, &qword_27C764288, &qword_20C180430);
  }
}

uint64_t objectdestroy_12Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_52Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_12Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_12Tm_1()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_20B530AA8(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_20B530BF0, 0, 0);
}

uint64_t sub_20B530BF0()
{
  *(v0[2] + OBJC_IVAR____TtC9SeymourUI27FilterPropertyStringBuilder_equipment) = v0[4];

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B530C64()
{

  return MEMORY[0x2822009F8](sub_20B530D60, 0, 0);
}

uint64_t sub_20B530D60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t objectdestroy_270Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t objectdestroy_136Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_11Tm()
{
  v1 = sub_20C139354();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_11Tm_0()
{
  v1 = sub_20C132EE4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_20Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t objectdestroy_4Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_20Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_20B531068()
{
  sub_20B5310C0();

  return swift_deallocClassInstance();
}

void *sub_20B5310C0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  swift_unknownObjectRelease();

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI27FilterPropertyStringBuilder_configuration, &qword_27C761800, &qword_20C14FDA0);

  return v0;
}

uint64_t objectdestroy_13Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B5311B0()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_20B7E7218;
  }

  else
  {
    (*(v2[20] + 8))(v2[21], v2[19]);
    v3 = sub_20B531300;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B531300()
{
  v21 = v0[18];
  v22 = v0[17];
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v23 = v0[15];
  v6 = v0[7];
  v24 = v0[6];
  v7 = *MEMORY[0x277D51828];
  v8 = sub_20C1352F4();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v3, v7, v8);
  (*(v9 + 56))(v3, 0, 1, v8);
  v10 = sub_20C132C14();
  (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
  v11 = sub_20C135ED4();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = sub_20C136914();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  sub_20C133384();
  (*(v1 + 16))(v22, v21, v23);
  sub_20C134F94();
  v13 = sub_20C134FB4();
  (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
  v14 = MEMORY[0x277D84F90];
  sub_20B531620(MEMORY[0x277D84F90]);
  sub_20B531620(v14);
  sub_20C1388E4();
  v15 = v24[10];
  v16 = v24[11];
  __swift_project_boxed_opaque_existential_1(v24 + 7, v15);
  v17 = swift_task_alloc();
  v0[28] = v17;
  *v17 = v0;
  v17[1] = sub_20B7E7104;
  v18 = v0[24];
  v19 = v0[10];

  return MEMORY[0x2821B5790](v19, v18, 0, v15, v16);
}

unint64_t sub_20B531620(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769330, &unk_20C15A800);
    v3 = sub_20C13DE84();
    v4 = a1 + 32;

    while (1)
    {
      sub_20B7E7E84(v4, &v16);
      v5 = v16;
      v6 = v17;
      result = sub_20B65AA60(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_20B531744()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_20B8DF130;
  }

  else
  {
    v2 = sub_20B531858;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B531858(uint64_t a1)
{
  v3 = *(v1 + 200);
  v2 = *(v1 + 208);
  v5 = *(v1 + 184);
  v4 = *(v1 + 192);
  v6 = *(v1 + 168);
  v7 = *(v1 + 176);
  sub_20C132E84();
  v8 = sub_20C135704();
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  *(v1 + 362) = v8 & 1;
  v9 = *(v1 + 256);
  v10 = *(v1 + 264);

  return MEMORY[0x2822009F8](sub_20B8DF198, v9, v10);
}

uint64_t sub_20B5319C4()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20BC9FCBC, 0, 0);
  }

  else
  {
    v5 = v2[9];
    v4 = v2[10];
    v6 = v2[8];
    v7 = v2[2];

    (*(v5 + 8))(v4, v6);

    v8 = v3[1];

    return v8(v7);
  }
}

uint64_t sub_20B531B6C(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_20B531C8C, 0, 0);
}

uint64_t sub_20B531C8C()
{
  *(v0[2] + OBJC_IVAR____TtC9SeymourUI27FilterPropertyStringBuilder_skillLevels) = v0[4];

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B531D00(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_20B531E20, 0, 0);
}

uint64_t sub_20B531E20()
{
  *(v0[2] + OBJC_IVAR____TtC9SeymourUI27FilterPropertyStringBuilder_themes) = v0[4];

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B531E94(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_20B531FB4, 0, 0);
}

uint64_t sub_20B531FB4()
{
  *(v0[2] + 120) = v0[4];

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B532020(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t getEnumTagSinglePayload for SliderView.StyleProvider.Layout(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SliderView.StyleProvider.Layout(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_20B532140(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20B532160(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

BOOL sub_20B532200(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_20B5322D0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void *sub_20B532308@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_20B532334@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_20B5323FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20C13C954();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_DWORD *sub_20B532434@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_20B532444()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B53247C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30, &unk_20C14D9D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B532528()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B53261C()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5326A4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5326DC()
{
  v1 = (type metadata accessor for ButtonAction(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[9];
  type metadata accessor for ButtonAction.ActionType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload > 9)
    {
      if (EnumCaseMultiPayload == 10)
      {
        v13 = sub_20C134284();
        (*(*(v13 - 8) + 8))(v5, v13);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762200, &unk_20C1639C0);

        goto LABEL_44;
      }

      if (EnumCaseMultiPayload != 12)
      {
        if (EnumCaseMultiPayload != 13)
        {
          goto LABEL_44;
        }

        v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762210, &unk_20C169DF0) + 48);
        v9 = sub_20C132C14();
        goto LABEL_43;
      }

      type metadata accessor for StartWorkoutSessionRequest(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
      }

      else
      {
        v26 = sub_20C1344C4();
        (*(*(v26 - 8) + 8))(v5, v26);
      }

      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BAD0, &unk_20C14FBB0);
      v28 = *(v27 + 48);
      v29 = sub_20C135C54();
      v30 = *(v29 - 8);
      if (!(*(v30 + 48))(v5 + v28, 1, v29))
      {
        (*(v30 + 8))(v5 + v28, v29);
      }

      v8 = *(v27 + 64);
    }

    else
    {
      if (EnumCaseMultiPayload != 7)
      {
        if (EnumCaseMultiPayload == 8)
        {

          goto LABEL_44;
        }

        v7 = sub_20C138B94();
        (*(*(v7 - 8) + 8))(v5, v7);
        v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621F8, &unk_20C14FBA0) + 48);
        v9 = sub_20C138894();
        goto LABEL_43;
      }

      type metadata accessor for StartWorkoutSessionRequest(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
      }

      else
      {
        v21 = sub_20C1344C4();
        (*(*(v21 - 8) + 8))(v5, v21);
      }

      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621F0, &unk_20C169DE0);
      v23 = *(v22 + 64);
      v24 = sub_20C135C54();
      v25 = *(v24 - 8);
      if (!(*(v25 + 48))(v5 + v23, 1, v24))
      {
        (*(v25 + 8))(v5 + v23, v24);
      }

      v8 = *(v22 + 80);
    }

    v9 = sub_20C137254();
LABEL_43:
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
    goto LABEL_44;
  }

  if (EnumCaseMultiPayload > 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v12 = sub_20C134014();
        break;
      case 4:
        v12 = sub_20C133954();
        break;
      case 6:
        goto LABEL_14;
      default:
        goto LABEL_44;
    }

    (*(*(v12 - 8) + 8))(v5, v12);
    goto LABEL_44;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_44;
      }

LABEL_14:

      goto LABEL_44;
    }

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E8, &unk_20C14FB90);
    v15 = *(v14 + 48);
    v16 = sub_20C138B94();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v5 + v15, 1, v16))
    {
      (*(v17 + 8))(v5 + v15, v16);
    }

    v18 = *(v14 + 64);
    v19 = sub_20C138894();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v5 + v18, 1, v19))
    {
      (*(v20 + 8))(v5 + v18, v19);
    }
  }

  else
  {
    v10 = sub_20C135814();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v5, 1, v10))
    {
      (*(v11 + 8))(v5, v10);
    }
  }

LABEL_44:

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_20B532D58()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_20B532D90()
{
  v1 = *(v0 + 16);
  if (v1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B532DEC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B532E38()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B532F8C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B533908()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B533940()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B533978()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5339B0()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5339E8()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_20B533A40()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B533A80()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B533AB8()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_20B533B10()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B533B48()
{
  v1 = sub_20C136C64();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B533C24()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B533C5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30, &unk_20C14D9D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B533D08()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B533D48()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B533D8C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B533DF0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B534060()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B5340A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20C138234();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_20B5340CC()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B534104()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B534238()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B5342F8()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B5343D8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B534438()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B534480()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5344B8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5344F4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B53452C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B534568()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5345D0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B53460C()
{
  v1 = sub_20C135AE4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 17, v3 | 7);
}

uint64_t sub_20B534700()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B53473C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B534774()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B534844()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B534884()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5348C8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B53492C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B534964()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5349C8()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B534A08()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B534A40()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B534A84()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B534AC8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B534B28()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B534DE0()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B534E18()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20B534E50()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B534E9C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B534EDC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B534F1C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B534F54()
{
  v1 = sub_20C1361E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B535030()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B535070()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5350A8()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B5351DC()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B53529C()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}