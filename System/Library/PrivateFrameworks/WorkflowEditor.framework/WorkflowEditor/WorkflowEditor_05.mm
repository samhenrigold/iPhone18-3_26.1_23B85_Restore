uint64_t sub_27446F174@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_274639ABC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60, &qword_2746515D0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ActionView(0);
  sub_274412C20(v1 + *(v10 + 80), v9, &qword_28094BC60, &qword_2746515D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_27441277C(v9, a1, &qword_28094A610, &qword_2746493F0);
  }

  sub_27463BC0C();
  v12 = sub_27463A2FC();
  sub_274638CEC();

  sub_274639AAC();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

double sub_27446F35C@<D0>(uint64_t a2@<X8>)
{
  type metadata accessor for WorkflowEditorOptions(0);
  OUTLINED_FUNCTION_7_12();
  sub_27447FCA0(v3, v4, &protocol conformance descriptor for WorkflowEditorOptions);
  OUTLINED_FUNCTION_54_1();
  *(a2 + 88) = sub_27463979C();
  *(a2 + 96) = v5;
  type metadata accessor for WorkflowEditorResults(0);
  OUTLINED_FUNCTION_22_4();
  sub_27447FCA0(v6, v7, &protocol conformance descriptor for WorkflowEditorResults);
  OUTLINED_FUNCTION_54_1();
  *(a2 + 104) = sub_27463979C();
  *(a2 + 112) = v8;
  sub_27463ACDC();
  *(a2 + 120) = v15;
  *(a2 + 128) = *(&v15 + 1);
  sub_27463ACDC();
  *(a2 + 136) = v15;
  *(a2 + 144) = *(&v15 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094DF60, &qword_27464D6E0);
  sub_27463ACDC();
  *(a2 + 152) = v15;
  *(a2 + 168) = v16;
  *(a2 + 176) = swift_getKeyPath();
  *(a2 + 184) = 0;
  *(a2 + 192) = swift_getKeyPath();
  *(a2 + 200) = 0;
  *(a2 + 208) = swift_getKeyPath();
  *(a2 + 216) = 0;
  v9 = type metadata accessor for ActionView(0);
  v10 = v9[20];
  *(a2 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60, &qword_2746515D0);
  swift_storeEnumTagMultiPayload();
  *(a2 + v9[21]) = xmmword_27464D540;
  *(a2 + v9[22]) = 0x4018000000000000;
  type metadata accessor for ActionViewModel();
  OUTLINED_FUNCTION_21_5();
  sub_27447FCA0(v11, v12, &protocol conformance descriptor for ActionViewModel);
  *a2 = sub_27463950C();
  *(a2 + 8) = v13;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0x10000;
  return result;
}

uint64_t ActionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v218[0] = a1;
  v3 = sub_2746378EC();
  v4 = OUTLINED_FUNCTION_0_18(v3, &v240);
  v218[1] = v5;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_15_4(v7 - v6);
  v8 = sub_27463A0AC();
  v9 = OUTLINED_FUNCTION_0_18(v8, &v239);
  v215 = v10;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_0();
  v13 = OUTLINED_FUNCTION_15_4(v12 - v11);
  v14 = type metadata accessor for ActionView(v13);
  v15 = OUTLINED_FUNCTION_19_0(v14);
  v221 = v16;
  MEMORY[0x28223BE20](v15);
  v225[0] = &v183 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225[1] = v17;
  v220 = sub_274639C2C();
  OUTLINED_FUNCTION_1();
  v206 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_15_4(v21 - v20);
  v22 = sub_27463A19C();
  v23 = OUTLINED_FUNCTION_0_18(v22, &v227);
  v197 = v24;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3_0();
  v27 = OUTLINED_FUNCTION_15_4(v26 - v25);
  v28 = type metadata accessor for RectangleGroupBoxStyle(v27);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3_0();
  v32 = v31 - v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C300, &qword_27464D590);
  OUTLINED_FUNCTION_0_18(v33, v218);
  v185 = v34;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_75();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C308, &qword_27464D598);
  OUTLINED_FUNCTION_0_18(v36, &v219);
  v189 = v37;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v39);
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C310, &qword_27464D5A0);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v40);
  v42 = &v183 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C318, &qword_27464D5A8);
  OUTLINED_FUNCTION_0_18(v43, v225);
  v193 = v44;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v46);
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C320, &unk_27464D5B0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_26_4();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_26_4();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12_3(v50);
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949418, &qword_274646798);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v52);
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C330, &qword_274646790);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v54);
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809493E8, &unk_274646780);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_40_1();
  v222 = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C340, &qword_274646770);
  OUTLINED_FUNCTION_0_18(v57, &v237);
  v208 = v58;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_40_1();
  v224 = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C348, &qword_27464D5C0);
  OUTLINED_FUNCTION_0_18(v61, &v238);
  v209 = v62;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C350, &qword_27464D5C8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v67);
  v228 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C358, &qword_27464D5D0);
  sub_274470B24();
  v184 = v2;
  sub_27463B07C();
  v68 = sub_274474BB4();
  v226 = v1;
  v69 = *(v1 + 82);
  v212 = v65;
  if (v69 == 2)
  {
    if (qword_280949280 != -1)
    {
      OUTLINED_FUNCTION_5_14(&qword_280949280);
    }

    v70 = qword_280965DC8;
    v71 = sub_27463ABDC();
  }

  else
  {
    v71 = 1;
  }

  v72 = *(v28 + 28);
  *(v32 + v72) = swift_getKeyPath();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D000, &qword_2746487E0);
  swift_storeEnumTagMultiPayload();
  *v32 = 0x403B800000000000;
  *(v32 + 8) = v68;
  *(v32 + 16) = v71;
  sub_27440CA78(&qword_28094C390, &qword_28094C300, &qword_27464D590, MEMORY[0x277CDF118]);
  sub_27447FCA0(&qword_28094C398, type metadata accessor for RectangleGroupBoxStyle, &unk_274649A80);
  v74 = v187;
  v75 = v186;
  v76 = v184;
  sub_27463A73C();
  sub_27447FAAC(v32);
  OUTLINED_FUNCTION_34_2();
  v77(v76, v75);
  v78 = v192;
  v79 = &v42[*(v192 + 36)];
  *v79 = v69;
  *(v79 + 1) = swift_getKeyPath();
  v79[16] = 0;
  v80 = *(type metadata accessor for ActionShadowView(0) + 24);
  *&v79[v80] = swift_getKeyPath();
  v186 = v73;
  swift_storeEnumTagMultiPayload();
  v81 = sub_27463B0CC();
  v83 = v82;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C3A0, &qword_27464D648);
  OUTLINED_FUNCTION_14_1();
  *v84 = v81;
  v84[1] = v83;
  (*(v189 + 32))(v42, v74, v188);
  v85 = v196;
  sub_27463A18C();
  v86 = sub_27447FB28();
  v87 = v191;
  sub_27463A82C();
  OUTLINED_FUNCTION_34_2();
  v88(v85, v198);
  sub_27440CB1C(v42, &qword_28094C310, &qword_27464D5A0);
  if (*(v226 + 81) == 1)
  {
    v89 = v204;
    sub_274639C0C();
    v90 = v220;
  }

  else
  {
    v229[0] = MEMORY[0x277D84F90];
    sub_27447FCA0(&qword_28094C3B8, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C3C0, &qword_27464D650);
    OUTLINED_FUNCTION_19_5();
    sub_27440CA78(v91, v92, &qword_27464D650, v93);
    v89 = v204;
    v90 = v220;
    sub_27463C1EC();
  }

  v229[0] = v78;
  v229[1] = v86;
  swift_getOpaqueTypeConformance2();
  v94 = v195;
  v95 = v194;
  sub_27463A85C();
  OUTLINED_FUNCTION_34_2();
  v96(v89, v90);
  OUTLINED_FUNCTION_34_2();
  v97(v87, v95);
  v98 = *(v226 + 8);
  v99 = sub_2745E2510();
  if (v100)
  {
    v101 = v99;
  }

  else
  {
    v101 = 0;
  }

  if (v100)
  {
    v102 = v100;
  }

  else
  {
    v102 = 0xE000000000000000;
  }

  v229[0] = v101;
  v229[1] = v102;
  sub_274412BBC();
  v103 = v199;
  sub_2746395FC();

  sub_27440CB1C(v94, &unk_28094C320, &unk_27464D5B0);
  v229[0] = 0;
  v229[1] = 0xE000000000000000;
  sub_27463C38C();

  strcpy(v229, "editor.action.");
  HIBYTE(v229[1]) = -18;
  v104 = OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action;
  v105 = [*(v98 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action) identifier];
  v106 = sub_27463B6AC();
  v108 = v107;

  MEMORY[0x277C57EA0](v106, v108);

  v109 = v205;
  sub_27463963C();

  sub_27440CB1C(v103, &unk_28094C320, &unk_27464D5B0);
  v110 = *(v98 + v104);
  v111 = v203;
  v112 = v190;
  sub_274412C20(v109, v190 + *(v203 + 44), &unk_28094C320, &unk_27464D5B0);
  *(v112 + *(v111 + 36)) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for WorkflowEditorOptions(0);
  OUTLINED_FUNCTION_7_12();
  sub_27447FCA0(v113, v114, &protocol conformance descriptor for WorkflowEditorOptions);
  v115 = v110;
  v116 = sub_27463979C();
  v118 = v117;
  sub_27440CB1C(v109, &unk_28094C320, &unk_27464D5B0);
  *v112 = v116;
  v112[1] = v118;
  *(v112 + *(v111 + 40)) = v115;
  v204 = v98;
  v206 = v104;
  v119 = *(v98 + v104);
  KeyPath = swift_getKeyPath();
  v121 = v202;
  sub_27441277C(v112, v202, &qword_280949418, &qword_274646798);
  v122 = (v121 + *(v201 + 36));
  *v122 = KeyPath;
  v122[1] = v119;
  v123 = *(v98 + v104);
  v124 = swift_getKeyPath();
  v125 = v121;
  v126 = v222;
  sub_27441277C(v125, v222, &unk_28094C330, &qword_274646790);
  v127 = v126 + *(v223 + 36);
  *v127 = v123;
  *(v127 + 8) = v124;
  *(v127 + 16) = 0;
  *(v127 + 24) = 0;
  *(v127 + 31) = 0;
  v128 = v226;
  v129 = v225[0];
  v220 = type metadata accessor for ActionView;
  sub_274483F70(v226, v225[0], type metadata accessor for ActionView);
  sub_27463B9CC();
  v130 = v119;
  v131 = v123;
  v132 = sub_27463B9BC();
  v133 = *(v221 + 80);
  v134 = (v133 + 32) & ~v133;
  v135 = swift_allocObject();
  v136 = MEMORY[0x277D85700];
  *(v135 + 16) = v132;
  *(v135 + 24) = v136;
  sub_274480BE8(v129, v135 + v134, type metadata accessor for ActionView);
  sub_274483F70(v128, v129, type metadata accessor for ActionView);
  v137 = sub_27463B9BC();
  v138 = swift_allocObject();
  *(v138 + 16) = v137;
  *(v138 + 24) = MEMORY[0x277D85700];
  v221 = type metadata accessor for ActionView;
  sub_274480BE8(v129, v138 + v134, type metadata accessor for ActionView);
  sub_27463AF0C();
  v139 = v220;
  sub_274483F70(v128, v129, v220);
  v140 = v133;
  v141 = (v133 + 16) & ~v133;
  v201 = v140;
  v142 = swift_allocObject();
  sub_274480BE8(v129, v142 + v141, type metadata accessor for ActionView);
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809493F0, &unk_27464D6B0);
  v203 = sub_27440ABA8();
  v205 = sub_27440AD6C();
  v143 = v223;
  v144 = v222;
  sub_27463A91C();

  sub_27440CB1C(v144, &qword_2809493E8, &unk_274646780);
  v145 = v226;
  v146 = *(v226 + 128);
  LOBYTE(v235) = *(v226 + 120);
  v236 = v146;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D1A0, &qword_27464C120);
  sub_27463AD0C();
  LODWORD(v222) = v230;
  sub_274483F70(v145, v129, v139);
  v147 = swift_allocObject();
  sub_274480BE8(v129, v147 + v141, v221);
  v148 = sub_27463AD3C();
  v149 = v214;
  *v214 = v148;
  v150 = v215;
  v151 = v216;
  (*(v215 + 104))(v149, *MEMORY[0x277CDE248], v216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809493E0, &qword_274646778);
  v229[0] = v143;
  v229[1] = v202;
  v230 = v203;
  v231 = v205;
  swift_getOpaqueTypeConformance2();
  sub_27440ADE8();
  v152 = v210;
  v153 = v207;
  v154 = v224;
  sub_27463A6DC();

  (*(v150 + 8))(v149, v151);
  OUTLINED_FUNCTION_34_2();
  v155(v154, v152);
  v156 = v225[0];
  sub_274483F70(v226, v225[0], v220);
  v157 = v141;
  v158 = swift_allocObject();
  sub_274480BE8(v156, v158 + v157, v221);
  v159 = v213;
  (*(v209 + 32))(v213, v153, v211);
  v160 = (v159 + *(v212 + 36));
  *v160 = sub_27448015C;
  v160[1] = v158;
  v161 = *(v204 + v206);
  v162 = [v161 identifier];
  v163 = sub_27463B6AC();
  v165 = v164;

  v166 = [v161 localizedName];
  v167 = sub_27463B6AC();
  v169 = v168;

  objc_opt_self();
  v170 = 0;
  v171 = 0;
  if (!swift_dynamicCastObjCClass())
  {
    v172 = sub_274452900(v161);
    v171 = v173;
    if (v173)
    {
      v170 = v172;
    }

    else
    {
      v170 = 0;
    }
  }

  v174 = [v161 icon];

  v229[0] = v163;
  v229[1] = v165;
  v230 = v167;
  v231 = v169;
  v232 = v170;
  v233 = v171;
  v234 = v174;
  v235 = MEMORY[0x277D84F90];
  sub_27447FCA0(&qword_28094C408, MEMORY[0x277CB9BD0], MEMORY[0x277CB9BD8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C410, &unk_27464D6C0);
  OUTLINED_FUNCTION_19_5();
  sub_27440CA78(v175, v176, &unk_27464D6C0, v177);
  v178 = v217;
  v179 = v219;
  sub_27463C1EC();
  sub_274480A38();
  sub_274452C2C();
  sub_27463A54C();
  OUTLINED_FUNCTION_34_2();
  v180(v178, v179);
  v181 = v234;

  return sub_27440CB1C(v159, &qword_28094C350, &qword_27464D5C8);
}

uint64_t sub_274470A40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_274639C5C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C840, &qword_27464E360);
  sub_274470C08(a1, (a2 + *(v4 + 44)));
  v5 = *(a1[1] + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
  KeyPath = swift_getKeyPath();
  v7 = v5;
  v8 = sub_27463B0CC();
  v10 = v9;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C358, &qword_27464D5D0);
  v12 = a2 + *(result + 36);
  *v12 = v7;
  *(v12 + 8) = KeyPath;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 34) = 0;
  *(v12 + 40) = v8;
  *(v12 + 48) = v10;
  return result;
}

unint64_t sub_274470B24()
{
  result = qword_28094C360;
  if (!qword_28094C360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C358, &qword_27464D5D0);
    sub_27440CA78(&qword_28094C368, &qword_28094C370, &qword_27464D5D8, MEMORY[0x277CE1198]);
    sub_27440CA78(&qword_28094C378, &unk_28094C380, &qword_27464D5E0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C360);
  }

  return result;
}

uint64_t sub_274470C08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v312 = a2;
  v3 = sub_274638C1C();
  v310 = *(v3 - 8);
  v311 = v3;
  MEMORY[0x28223BE20](v3);
  v309 = &v270 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C848, &qword_27464E368);
  MEMORY[0x28223BE20](v5);
  v275 = &v270 - v6;
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C850, &qword_27464E370);
  MEMORY[0x28223BE20](v273);
  v271 = (&v270 - v7);
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C858, &qword_27464E378);
  MEMORY[0x28223BE20](v281);
  v282 = &v270 - v8;
  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C860, &qword_27464E380);
  MEMORY[0x28223BE20](v307);
  v284 = &v270 - v9;
  v331 = type metadata accessor for ActionView(0);
  v278 = *(v331 - 8);
  MEMORY[0x28223BE20](v331);
  v279 = v10;
  v280 = &v270 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C868, &qword_27464E388);
  MEMORY[0x28223BE20](v11 - 8);
  v274 = &v270 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v285 = &v270 - v14;
  v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C870, &qword_27464E390);
  MEMORY[0x28223BE20](v301);
  v303 = &v270 - v15;
  v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C878, &qword_27464E398);
  MEMORY[0x28223BE20](v296);
  v17 = &v270 - v16;
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C880, &qword_27464E3A0);
  MEMORY[0x28223BE20](v291);
  v293 = &v270 - v18;
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C888, &qword_27464E3A8);
  MEMORY[0x28223BE20](v297);
  v294 = &v270 - v19;
  v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C890, &qword_27464E3B0);
  MEMORY[0x28223BE20](v302);
  v299 = &v270 - v20;
  v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C898, &qword_27464E3B8);
  MEMORY[0x28223BE20](v292);
  v290 = &v270 - v21;
  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A8D0, &qword_274649750);
  MEMORY[0x28223BE20](v287);
  v288 = &v270 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v289 = &v270 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C8A0, &qword_27464E3C0);
  MEMORY[0x28223BE20](v25 - 8);
  v308 = &v270 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v333 = &v270 - v28;
  v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C8A8, &qword_27464E3C8);
  MEMORY[0x28223BE20](v326);
  v30 = &v270 - v29;
  v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C8B0, &qword_27464E3D0);
  MEMORY[0x28223BE20](v328);
  v330 = &v270 - v31;
  v329 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C8B8, &qword_27464E3D8);
  MEMORY[0x28223BE20](v329);
  v332 = &v270 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  *&v327 = &v270 - v34;
  MEMORY[0x28223BE20](v35);
  v334 = &v270 - v36;
  v37 = a1[13];
  if (!v37)
  {
    type metadata accessor for WorkflowEditorResults(0);
    sub_27447FCA0(&unk_28094C450, type metadata accessor for WorkflowEditorResults, &protocol conformance descriptor for WorkflowEditorResults);
    goto LABEL_84;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v38 = v37;
  sub_274638FAC();
  v286 = v38;

  v39 = *&v348[0];
  v295 = a1;
  if (!*&v348[0])
  {
    goto LABEL_5;
  }

  v40 = a1[1];
  if (*&v40[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action] != *&v348[0])
  {
    sub_27446E6D4(*&v348[0]);
    a1 = v295;
LABEL_5:
    v40 = a1[1];
    v41 = sub_2745E2614();
    if (v42)
    {
      *&v347[0] = v41;
      *(&v347[0] + 1) = v42;
      LOBYTE(v347[1]) = 1;
      sub_274483044();
      sub_274639DDC();
      v305 = *(&v348[0] + 1);
      v306 = *&v348[0];
      v43 = LOBYTE(v348[1]);
    }

    else
    {
      v305 = 0;
      v306 = 0;
      v43 = 255;
    }

    v304 = v43;
    goto LABEL_10;
  }

  v347[0] = *(v348 + 8);
  LOBYTE(v347[1]) = 0;
  sub_274483044();

  sub_274639DDC();
  sub_27446E6D4(v39);
  v305 = *(&v348[0] + 1);
  v306 = *&v348[0];
  v304 = LOBYTE(v348[1]);
  a1 = v295;
LABEL_10:
  v44 = v40;
  sub_2744754F4();
  if ((v45 & 1) != 0 && (v46 = sub_2745E2510(), v47))
  {
    v324 = v47;
    v325 = v46;
    v323 = *&v44[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_parameterSummaryCoordinator];
    v48 = v323;
    v321 = 0;
    v322 = 0;
    v320 = MEMORY[0x277D84F90];
  }

  else
  {
    v49 = *&v44[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_parameterSummary];
    v50 = *&v44[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_parameterSummary + 16];
    v51 = *&v44[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_parameterSummary + 24];
    v52 = *&v44[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_parameterSummary + 32];
    v53 = *&v44[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_parameterSummary + 40];
    v321 = *&v44[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_parameterSummary + 8];
    v322 = v49;
    v324 = v51;
    v325 = v50;
    v320 = v52;
    v323 = v53;
    sub_27448287C(v49, v321, v50, v51, v52, v53);
  }

  v54 = OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_showMoreParameters;
  if (!sub_274453594() || [*&v44[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action] parameterCollapsingBehavior] == 2 || *&v44[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_resourceError])
  {
    v318 = 0;
    v319 = 0;
    v317 = 0;
  }

  else
  {
    type metadata accessor for ActionViewModel();
    sub_27447FCA0(&qword_28094C460, type metadata accessor for ActionViewModel, &protocol conformance descriptor for ActionViewModel);
    v196 = sub_27463951C();
    swift_getKeyPath();
    sub_27463952C();

    v318 = *(&v348[0] + 1);
    v319 = *&v348[0];
    v317 = LOBYTE(v348[1]);
  }

  v272 = v54;
  v298 = v17;
  v55 = sub_2745E29C8();
  v283 = v5;
  if (v55)
  {
    type metadata accessor for ActionViewModel();
    sub_27447FCA0(&qword_28094C460, type metadata accessor for ActionViewModel, &protocol conformance descriptor for ActionViewModel);
    v56 = sub_27463951C();
    swift_getKeyPath();
    sub_27463952C();

    v315 = *(&v348[0] + 1);
    v316 = *&v348[0];
    v57 = v44;
    v314 = LOBYTE(v348[1]);
  }

  else
  {
    v315 = 0;
    v316 = 0;
    v57 = v44;
    v314 = 0;
  }

  v58 = v326;
  sub_274473224(&v30[*(v326 + 60)]);
  v60 = a1[2];
  v59 = a1[3];
  v61 = a1[18];
  LOBYTE(v348[0]) = *(a1 + 136);
  *(&v348[0] + 1) = v61;
  sub_2744069F0(v60, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D1A0, &qword_27464C120);
  sub_27463ACEC();
  v62 = v347[0];
  v313 = *(a1 + 83);
  v63 = *(a1 + 82);
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  *(v30 + 2) = swift_getKeyPath();
  v30[24] = 0;
  type metadata accessor for ActionViewModel();
  sub_27447FCA0(&qword_28094C460, type metadata accessor for ActionViewModel, &protocol conformance descriptor for ActionViewModel);
  *(v30 + 4) = sub_27463950C();
  *(v30 + 5) = v64;
  v65 = type metadata accessor for WorkflowEditorOptions(0);
  v276 = sub_27447FCA0(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
  v277 = v65;
  *(v30 + 6) = sub_27463979C();
  *(v30 + 7) = v66;
  v67 = v321;
  *(v30 + 8) = v322;
  *(v30 + 9) = v67;
  v68 = v324;
  *(v30 + 10) = v325;
  *(v30 + 11) = v68;
  v69 = v323;
  *(v30 + 12) = v320;
  *(v30 + 13) = v69;
  v70 = v318;
  *(v30 + 14) = v319;
  *(v30 + 15) = v70;
  v30[128] = v317;
  v71 = v315;
  *(v30 + 17) = v316;
  *(v30 + 18) = v71;
  v30[152] = v314;
  v72 = &v30[v58[16]];
  *v72 = v60;
  v72[1] = v59;
  v30[v58[17]] = v62;
  v30[v58[18]] = v313;
  v73 = v63;
  v30[v58[19]] = v63;
  *&v30[v58[20]] = xmmword_27464D540;
  *&v30[v58[21]] = 0x4028000000000000;
  *&v30[v58[22]] = 0x401C000000000000;
  LOBYTE(v58) = sub_27463A33C();
  v74 = a1 + *(v331 + 84);
  sub_2746390AC();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v83 = v330;
  sub_27441277C(v30, v330, &qword_28094C8A8, &qword_27464E3C8);
  v84 = v83 + *(v328 + 36);
  *v84 = v58;
  *(v84 + 8) = v76;
  *(v84 + 16) = v78;
  *(v84 + 24) = v80;
  *(v84 + 32) = v82;
  *(v84 + 40) = 0;
  KeyPath = swift_getKeyPath();
  v86 = sub_27446EEE0();
  v87 = v327;
  sub_27441277C(v83, v327, &qword_28094C8B0, &qword_27464E3D0);
  v88 = (v87 + *(v329 + 36));
  *v88 = KeyPath;
  v88[1] = v86;
  sub_27441277C(v87, v334, &qword_28094C8B8, &qword_27464E3D8);
  v330 = OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action;
  v89 = [*&v57[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action] isMissing];
  i = v57;
  v300 = v57;
  if (!v89)
  {
    v122 = OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_resourceError;
    v123 = *&v57[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_resourceError];
    if (!v123)
    {
      goto LABEL_35;
    }

    v124 = v123;
    v125 = [v124 domain];
    v126 = sub_27463B6AC();
    v128 = v127;

    if (v126 == sub_27463B6AC() && v128 == v129)
    {
    }

    else
    {
      v131 = sub_27463C6BC();

      if ((v131 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    if ([v124 code] == 12)
    {
      v132 = swift_getKeyPath();
      v133 = v124;
      v134 = sub_27463A38C();
      sub_2746390AC();
      LOBYTE(v347[0]) = 0;
      LOBYTE(v346[0]) = 0;
      *&v348[0] = v133;
      *(&v348[0] + 1) = v132;
      LOBYTE(v348[1]) = 0;
      BYTE8(v348[1]) = v134;
      *&v348[2] = v135;
      *(&v348[2] + 1) = v136;
      *&v348[3] = v137;
      *(&v348[3] + 1) = v138;
      LOBYTE(v348[4]) = 0;
      memcpy(v293, v348, 0x41uLL);
      swift_storeEnumTagMultiPayload();
      v139 = &qword_27464E508;
      sub_274412C20(v348, v347, &unk_280954810, &qword_27464E508);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280954810, &qword_27464E508);
      sub_27440CA78(&qword_28094C928, &qword_28094C898, &qword_27464E3B8, MEMORY[0x277CE14C0]);
      sub_274482C24();
      v140 = v294;
      sub_274639DDC();
      sub_274412C20(v140, v298, &qword_28094C888, &qword_27464E3A8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C950, &qword_27464E510);
      sub_274482B6C();
      sub_274482D04();
      v141 = v299;
      sub_274639DDC();
      sub_27440CB1C(v140, &qword_28094C888, &qword_27464E3A8);
      sub_274412C20(v141, v303, &qword_28094C890, &qword_27464E3B0);
      swift_storeEnumTagMultiPayload();
      sub_274482AE0();
      sub_274482EF4();
      sub_274639DDC();
      v142 = v348;
      v143 = &unk_280954810;
LABEL_38:
      sub_27440CB1C(v142, v143, v139);

      v119 = v141;
      v120 = &qword_28094C890;
      v121 = &qword_27464E3B0;
      goto LABEL_39;
    }

LABEL_33:

    v144 = *&v57[v122];
    if (v144)
    {
      v133 = v144;
      v145 = sub_27463A31C();
      sub_2746390AC();
      v147 = v146;
      v149 = v148;
      v151 = v150;
      v153 = v152;
      v154 = sub_27463A38C();
      sub_2746390AC();
      LOBYTE(v348[0]) = 0;
      *&v346[0] = v133;
      BYTE8(v346[0]) = v145;
      *&v346[1] = v147;
      *(&v346[1] + 1) = v149;
      *&v346[2] = v151;
      *(&v346[2] + 1) = v153;
      LOBYTE(v346[3]) = 0;
      BYTE8(v346[3]) = v154;
      *&v346[4] = v155;
      *(&v346[4] + 1) = v156;
      *&v346[5] = v157;
      *(&v346[5] + 1) = v158;
      LOBYTE(v346[6]) = 0;
      memcpy(v347, v346, 0x61uLL);
      LOBYTE(v345[0]) = 0;
      BYTE1(v347[6]) = 0;
LABEL_37:
      v139 = &qword_27464E518;
      sub_274412C20(v346, v348, &qword_28094C960, &qword_27464E518);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C960, &qword_27464E518);
      sub_274482D88();
      sub_274639DDC();
      memcpy(v298, v348, 0x62uLL);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C950, &qword_27464E510);
      sub_274482B6C();
      sub_274482D04();
      v141 = v299;
      sub_274639DDC();
      sub_274412C20(v141, v303, &qword_28094C890, &qword_27464E3B0);
      swift_storeEnumTagMultiPayload();
      sub_274482AE0();
      sub_274482EF4();
      sub_274639DDC();
      v142 = v346;
      v143 = &qword_28094C960;
      goto LABEL_38;
    }

LABEL_35:
    sub_2745E27D4();
    if (v159)
    {
      v133 = v159;
      v160 = sub_27463A31C();
      sub_2746390AC();
      v162 = v161;
      v164 = v163;
      v166 = v165;
      v168 = v167;
      v169 = sub_27463A38C();
      sub_2746390AC();
      LOBYTE(v348[0]) = 0;
      *&v346[0] = v133;
      BYTE8(v346[0]) = v160;
      *&v346[1] = v162;
      *(&v346[1] + 1) = v164;
      *&v346[2] = v166;
      *(&v346[2] + 1) = v168;
      LOBYTE(v346[3]) = 0;
      BYTE8(v346[3]) = v169;
      *&v346[4] = v170;
      *(&v346[4] + 1) = v171;
      *&v346[5] = v172;
      *(&v346[5] + 1) = v173;
      LOBYTE(v346[6]) = 0;
      memcpy(v347, v346, 0x61uLL);
      LOBYTE(v345[0]) = 1;
      BYTE1(v347[6]) = 1;
      goto LABEL_37;
    }

    v197 = v295[11];
    if (v197)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v198 = v197;
      sub_274638FAC();

      if (*&v348[0])
      {
        v328 = *&v348[0];
        v329 = *&v348[1];
        *&v327 = *(&v348[0] + 1);
        v199 = *&v57[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_visibleParameters];
        *&v346[0] = MEMORY[0x277D84F90];
        v200 = sub_274453594();
        v331 = v199 & 0xC000000000000001;
        v201 = *MEMORY[0x277D7CE48];

        for (i = 0; ; ++i)
        {
          if (v200 == i)
          {

            v212 = *&v346[0];
            v213 = v280;
            sub_274483F70(v295, v280, type metadata accessor for ActionView);
            v214 = (*(v278 + 80) + 32) & ~*(v278 + 80);
            v215 = swift_allocObject();
            v216 = v329;
            *(v215 + 16) = v327;
            *(v215 + 24) = v216;
            sub_274480BE8(v213, v215 + v214, type metadata accessor for ActionView);

            v217 = sub_27463979C();
            v219 = v218;
            v220 = sub_27463A33C();
            sub_2746390AC();
            LOBYTE(v338) = 0;
            *&v348[0] = v212;
            *(&v348[0] + 1) = v328;
            *&v348[1] = sub_274482FEC;
            *(&v348[1] + 1) = v215;
            *&v348[2] = v217;
            *(&v348[2] + 1) = v219;
            LOBYTE(v348[3]) = v220;
            *(&v348[3] + 1) = v345[0];
            DWORD1(v348[3]) = *(v345 + 3);
            *(&v348[3] + 1) = v221;
            *&v348[4] = v222;
            *(&v348[4] + 1) = v223;
            *&v348[5] = v224;
            BYTE8(v348[5]) = 0;
            memcpy(v282, v348, 0x59uLL);
            swift_storeEnumTagMultiPayload();
            sub_274412C20(v348, v347, &qword_28094C8F8, &qword_27464E500);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C8F8, &qword_27464E500);
            sub_274482A00();
            sub_27440CA78(&qword_28094C910, &qword_28094C848, &qword_27464E368, MEMORY[0x277CE14C0]);
            v225 = v284;
            sub_274639DDC();
            sub_274412C20(v225, v303, &qword_28094C860, &qword_27464E380);
            swift_storeEnumTagMultiPayload();
            sub_274482AE0();
            sub_274482EF4();
            sub_274639DDC();
            sub_27440CB1C(v348, &qword_28094C8F8, &qword_27464E500);

            sub_27440CB1C(v225, &qword_28094C860, &qword_27464E380);
            goto LABEL_40;
          }

          if (v331)
          {
            v202 = MEMORY[0x277C58B20](i, v199);
          }

          else
          {
            if (i >= *((v199 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_81;
            }

            v202 = *(v199 + 8 * i + 32);
          }

          v203 = v202;
          if (__OFADD__(i, 1))
          {
            break;
          }

          v204 = [v202 importQuestionBehavior];
          v205 = sub_27463B6AC();
          v207 = v206;

          v208 = sub_27463B6AC();
          v74 = v209;
          if (v205 == v208 && v207 == v209)
          {
          }

          else
          {
            v211 = sub_27463C6BC();

            if (v211)
            {
            }

            else
            {
              sub_27463C41C();
              sub_27463C46C();
              sub_27463C47C();
              sub_27463C42C();
            }
          }
        }

        __break(1u);
LABEL_81:
        __break(1u);
      }

      else
      {
        v226 = OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_additionalParameterSummaries;
        if (*(*&v57[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_additionalParameterSummaries] + 16))
        {
          v227 = sub_274639C6C();
          v228 = v271;
          *v271 = v227;
          *(v228 + 8) = 0;
          *(v228 + 16) = 0;
          v329 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C8C0, &qword_27464E4C8) + 44);
          *&v348[0] = *&v57[v226];
          swift_getKeyPath();
          v229 = v280;
          sub_274483F70(v295, v280, type metadata accessor for ActionView);
          v230 = (*(v278 + 80) + 16) & ~*(v278 + 80);
          v231 = swift_allocObject();
          sub_274480BE8(v229, v231 + v230, type metadata accessor for ActionView);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C8C8, &qword_27464E4E8);
          sub_27440CA78(&unk_28094C8D0, &qword_28094C8C8, &qword_27464E4E8, MEMORY[0x277D83980]);
          sub_274482950();
          sub_2744829A4();
          sub_27463AF7C();
          v232 = sub_27463A33C();
          sub_2746390AC();
          v233 = v273;
          v234 = v228 + *(v273 + 36);
          *v234 = v232;
          *(v234 + 8) = v235;
          *(v234 + 16) = v236;
          *(v234 + 24) = v237;
          *(v234 + 32) = v238;
          *(v234 + 40) = 0;
          v239 = v285;
          sub_27441277C(v228, v285, &qword_28094C850, &qword_27464E370);
          v240 = 0;
        }

        else
        {
          v240 = 1;
          v239 = v285;
          v233 = v273;
        }

        v199 = v272;
        __swift_storeEnumTagSinglePayload(v239, v240, 1, v233);
        sub_27463B0CC();
        sub_2746392FC();
        v74 = v352;
        v241 = v354;
        v242 = v356;
        v329 = v357;
        v351 = 1;
        v350 = v353;
        v349 = v355;
        v243 = sub_274474A0C();
        v331 = v241;
        v328 = v242;
        if ((v243 & 1) == 0 && (!sub_274453594() || [*(i + v330) parameterCollapsingBehavior] != 2))
        {
          sub_2744829F8(v348);
LABEL_79:
          v259 = v282;
          v260 = v274;
          sub_274412C20(v285, v274, &qword_28094C868, &qword_27464E388);
          v261 = v351;
          v262 = v350;
          v263 = v349;
          memcpy(v345, v348, 0xC9uLL);
          v264 = v275;
          sub_274412C20(v260, v275, &qword_28094C868, &qword_27464E388);
          v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C8E8, &qword_27464E4F0);
          v266 = v264 + *(v265 + 48);
          *v266 = 0;
          *(v266 + 8) = v261;
          *(v266 + 16) = v74;
          *(v266 + 24) = v262;
          *(v266 + 32) = v331;
          *(v266 + 40) = v263;
          v267 = v329;
          *(v266 + 48) = v328;
          *(v266 + 56) = v267;
          v268 = *(v265 + 64);
          memcpy(v346, v345, 0xC9uLL);
          memcpy((v264 + v268), v345, 0xC9uLL);
          memcpy(v347, v345, 0xC9uLL);
          sub_274412C20(v348, &v338, &qword_28094C8F0, &qword_27464E4F8);
          sub_274412C20(v346, &v338, &qword_28094C8F0, &qword_27464E4F8);
          sub_27440CB1C(v347, &qword_28094C8F0, &qword_27464E4F8);
          sub_27440CB1C(v260, &qword_28094C868, &qword_27464E388);
          sub_274412C20(v264, v259, &qword_28094C848, &qword_27464E368);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C8F8, &qword_27464E500);
          sub_274482A00();
          sub_27440CA78(&qword_28094C910, &qword_28094C848, &qword_27464E368, MEMORY[0x277CE14C0]);
          v269 = v284;
          sub_274639DDC();
          sub_274412C20(v269, v303, &qword_28094C860, &qword_27464E380);
          swift_storeEnumTagMultiPayload();
          sub_274482AE0();
          sub_274482EF4();
          sub_274639DDC();
          sub_27440CB1C(v348, &qword_28094C8F0, &qword_27464E4F8);
          sub_27440CB1C(v269, &qword_28094C860, &qword_27464E380);
          sub_27440CB1C(v264, &qword_28094C848, &qword_27464E368);
          v119 = v285;
          v120 = &qword_28094C868;
          v121 = &qword_27464E388;
          goto LABEL_39;
        }

        v201 = v337;
        if (v73 != 2)
        {
          v246 = [objc_opt_self() tertiarySystemFillColor];
          v245 = sub_27463AB0C();
          goto LABEL_78;
        }

        if (qword_280949280 == -1)
        {
LABEL_75:
          v244 = qword_280965DC8;
          v245 = sub_27463ABDC();
LABEL_78:
          v247 = v245;
          sub_27463B0CC();
          sub_2746392FC();
          v248 = v359;
          *(v201 + 11) = v358;
          *(v201 + 13) = v248;
          *(v201 + 15) = v360;
          v249 = *(i + v199);
          v250 = i;

          sub_274474AB8(v250, v249, v336);
          LOBYTE(v249) = sub_27463A34C();
          sub_2746390AC();
          v252 = v251;
          v254 = v253;
          v256 = v255;
          v258 = v257;
          LOBYTE(v348[0]) = 0;
          v337[0] = v247;
          LOWORD(v337[1]) = 256;
          *(v201 + 10) = *(v201 + 82);
          *(v201 + 26) = *(v201 + 98);
          *(v201 + 42) = *(v201 + 114);
          v337[7] = v201[16];
          v327 = xmmword_27464D550;
          *(v201 + 4) = xmmword_27464D550;
          memcpy(v335, v337, 0x50uLL);
          memcpy(v345, v336, 0x50uLL);
          LOBYTE(v345[5]) = v249;
          *(&v345[5] + 1) = v252;
          *&v345[6] = v254;
          *(&v345[6] + 1) = v256;
          *&v345[7] = v258;
          BYTE8(v345[7]) = 0;
          memcpy(&v335[80], v345, 0x79uLL);
          memcpy(v346, v336, 0x50uLL);
          LOBYTE(v346[5]) = v249;
          *(&v346[5] + 1) = v252;
          *&v346[6] = v254;
          *(&v346[6] + 1) = v256;
          *&v346[7] = v258;
          BYTE8(v346[7]) = 0;
          sub_274412C20(v337, v348, &qword_28094C998, &qword_27465FF20);
          sub_274412C20(v345, v348, &qword_28094C9A0, &qword_27464E540);
          sub_27440CB1C(v346, &qword_28094C9A0, &qword_27464E540);
          v338 = v247;
          v339 = 256;
          *(v201 + 146) = *(v201 + 82);
          *(v201 + 162) = *(v201 + 98);
          *(v201 + 178) = *(v201 + 114);
          v343 = v201[16];
          v344 = v327;
          sub_27440CB1C(&v338, &qword_28094C998, &qword_27465FF20);
          memcpy(v347, v335, 0xC9uLL);
          CGSizeMake();
          memcpy(v348, v347, 0xC9uLL);
          goto LABEL_79;
        }
      }

      swift_once();
      goto LABEL_75;
    }

    while (1)
    {
LABEL_84:
      sub_27463978C();
      __break(1u);
    }
  }

  v91 = v289;
  sub_27463AF5C();
  v92 = sub_27463A33C();
  sub_2746390AC();
  v93 = v91 + *(v287 + 36);
  *v93 = v92;
  *(v93 + 8) = v94;
  *(v93 + 16) = v95;
  *(v93 + 24) = v96;
  *(v93 + 32) = v97;
  *(v93 + 40) = 0;
  v98 = *&v57[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_resourceError];
  v99 = v98;
  v100 = sub_27463A31C();
  sub_2746390AC();
  v102 = v101;
  v104 = v103;
  v106 = v105;
  v108 = v107;
  v109 = sub_27463A38C();
  sub_2746390AC();
  LOBYTE(v348[0]) = 0;
  *&v346[0] = v98;
  BYTE8(v346[0]) = v100;
  *&v346[1] = v102;
  *(&v346[1] + 1) = v104;
  *&v346[2] = v106;
  *(&v346[2] + 1) = v108;
  LOBYTE(v346[3]) = 0;
  BYTE8(v346[3]) = v109;
  *&v346[4] = v110;
  *(&v346[4] + 1) = v111;
  *&v346[5] = v112;
  *(&v346[5] + 1) = v113;
  LOBYTE(v346[6]) = 0;
  v114 = v288;
  sub_274412C20(v91, v288, &qword_28094A8D0, &qword_274649750);
  memcpy(v345, v346, 0x61uLL);
  v115 = v290;
  sub_274412C20(v114, v290, &qword_28094A8D0, &qword_274649750);
  v116 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9A8, &qword_27464E548) + 48);
  memcpy(v347, v345, 0x61uLL);
  memcpy((v115 + v116), v345, 0x61uLL);
  memcpy(v348, v345, 0x61uLL);
  sub_274412C20(v346, &v338, &unk_28094C9B0, &qword_27464E550);
  sub_274412C20(v347, &v338, &unk_28094C9B0, &qword_27464E550);
  sub_27440CB1C(v348, &unk_28094C9B0, &qword_27464E550);
  sub_27440CB1C(v114, &qword_28094A8D0, &qword_274649750);
  sub_274412C20(v115, v293, &qword_28094C898, &qword_27464E3B8);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280954810, &qword_27464E508);
  sub_27440CA78(&qword_28094C928, &qword_28094C898, &qword_27464E3B8, MEMORY[0x277CE14C0]);
  sub_274482C24();
  v117 = v294;
  sub_274639DDC();
  sub_274412C20(v117, v298, &qword_28094C888, &qword_27464E3A8);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C950, &qword_27464E510);
  sub_274482B6C();
  sub_274482D04();
  v118 = v299;
  sub_274639DDC();
  sub_27440CB1C(v117, &qword_28094C888, &qword_27464E3A8);
  sub_274412C20(v118, v303, &qword_28094C890, &qword_27464E3B0);
  swift_storeEnumTagMultiPayload();
  sub_274482AE0();
  sub_274482EF4();
  sub_274639DDC();
  sub_27440CB1C(v346, &unk_28094C9B0, &qword_27464E550);
  sub_27440CB1C(v118, &qword_28094C890, &qword_27464E3B0);
  sub_27440CB1C(v115, &qword_28094C898, &qword_27464E3B8);
  v119 = v91;
  v120 = &qword_28094A8D0;
  v121 = &qword_274649750;
LABEL_39:
  sub_27440CB1C(v119, v120, v121);
LABEL_40:
  v175 = v309;
  v174 = v310;
  v176 = v311;
  (*(v310 + 104))(v309, *MEMORY[0x277D79BE8], v311);
  v177 = sub_274638C0C();
  (*(v174 + 8))(v175, v176);
  v178 = v300;
  if ((v177 & 1) != 0 && (v179 = OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_showOutput, swift_beginAccess(), v178[v179] == 1))
  {
    v180 = [*&v178[v330] output];
    v181 = v286;
    v182 = sub_27443A0F0();

    if (v182)
    {
    }

    sub_27463B0CC();
    sub_2746392FC();
    LOBYTE(v347[0]) = v339;
    LOBYTE(v346[0]) = v341;
    *&v348[0] = v180;
    BYTE8(v348[0]) = v182 != 0;
    *&v348[1] = v338;
    BYTE8(v348[1]) = v339;
    *&v348[2] = v340;
    BYTE8(v348[2]) = v341;
    v348[3] = v342;
    v183 = v180;
  }

  else
  {
    *(v348 + 8) = 0u;
    *(&v348[1] + 8) = 0u;
    *(&v348[2] + 8) = 0u;
    *&v348[0] = 1;
    *(&v348[3] + 1) = 0;
  }

  v184 = v332;
  sub_274412C20(v334, v332, &qword_28094C8B8, &qword_27464E3D8);
  v185 = v333;
  v186 = v308;
  sub_274412C20(v333, v308, &qword_28094C8A0, &qword_27464E3C0);
  v345[0] = v348[0];
  v345[1] = v348[1];
  v345[2] = v348[2];
  v345[3] = v348[3];
  v187 = v312;
  v189 = v305;
  v188 = v306;
  *v312 = v306;
  v187[1] = v189;
  v190 = v304;
  *(v187 + 16) = v304;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C988, &qword_27464E528);
  sub_274412C20(v184, v187 + v191[12], &qword_28094C8B8, &qword_27464E3D8);
  sub_274412C20(v186, v187 + v191[16], &qword_28094C8A0, &qword_27464E3C0);
  v192 = (v187 + v191[20]);
  v346[0] = v345[0];
  v346[1] = v345[1];
  v346[2] = v345[2];
  v346[3] = v345[3];
  sub_274482FAC(v188, v189, v190);
  sub_274412C20(v346, v347, &qword_28094C990, &unk_27464E530);
  sub_27440CB1C(v348, &qword_28094C990, &unk_27464E530);
  v193 = v346[1];
  *v192 = v346[0];
  v192[1] = v193;
  v194 = v346[3];
  v192[2] = v346[2];
  v192[3] = v194;
  sub_27440CB1C(v185, &qword_28094C8A0, &qword_27464E3C0);
  sub_27440CB1C(v334, &qword_28094C8B8, &qword_27464E3D8);
  v347[0] = v345[0];
  v347[1] = v345[1];
  v347[2] = v345[2];
  v347[3] = v345[3];
  sub_27440CB1C(v347, &qword_28094C990, &unk_27464E530);
  sub_27440CB1C(v186, &qword_28094C8A0, &qword_27464E3C0);
  sub_27440CB1C(v332, &qword_28094C8B8, &qword_27464E3D8);
  return sub_274482FCC(v188, v189, v190);
}

uint64_t sub_274473224@<X0>(uint64_t a1@<X8>)
{
  v155 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C9C0, &qword_27464E5A8);
  MEMORY[0x28223BE20](v2 - 8);
  v153 = &v145 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E150, &qword_27464E5B0);
  MEMORY[0x28223BE20](v4 - 8);
  v156 = &v145 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v176 = &v145 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C9D0, &qword_27464E5B8);
  MEMORY[0x28223BE20](v8 - 8);
  v170 = &v145 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v168 = &v145 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094E140, &unk_27464E5C0);
  MEMORY[0x28223BE20](v12 - 8);
  v169 = &v145 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v177 = &v145 - v15;
  v157 = sub_27463AF6C();
  v159 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v165 = &v145 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v166 = &v145 - v18;
  MEMORY[0x28223BE20](v19);
  v158 = &v145 - v20;
  MEMORY[0x28223BE20](v21);
  v174 = &v145 - v22;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9E0, &qword_274651840);
  *&v151 = *(v152 - 1);
  MEMORY[0x28223BE20](v152);
  v150 = &v145 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9E8, &unk_27464E5D0);
  MEMORY[0x28223BE20](v24 - 8);
  v167 = &v145 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v179[0] = &v145 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C9F0, &unk_274651C20);
  MEMORY[0x28223BE20](v28 - 8);
  v164 = &v145 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v163 = &v145 - v31;
  MEMORY[0x28223BE20](v32);
  v175 = &v145 - v33;
  MEMORY[0x28223BE20](v34);
  v178 = &v145 - v35;
  v36 = type metadata accessor for ActionView(0);
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CD90, &unk_27464E5E0);
  v173 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v149 = &v145 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v172 = &v145 - v41;
  MEMORY[0x28223BE20](v42);
  v44 = &v145 - v43;
  sub_274483F70(v1, &v145 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActionView);
  v45 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v46 = swift_allocObject();
  sub_274480BE8(&v145 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0), v46 + v45, type metadata accessor for ActionView);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CA00, &qword_27464ED50);
  v48 = sub_27440CA78(&unk_28094CDA0, &unk_28094CA00, &qword_27464ED50, MEMORY[0x277CDEFF0]);
  v162 = v44;
  v49 = v47;
  v50 = v1;
  v154 = v48;
  sub_27463AD5C();
  v161 = *(v1 + 8);
  v160 = OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action;
  if ([*(v161 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action) isDeletable])
  {
    sub_274483F70(v1, &v145 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActionView);
    v51 = swift_allocObject();
    v52 = sub_274480BE8(&v145 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0), v51 + v45, type metadata accessor for ActionView);
    MEMORY[0x28223BE20](v52);
    *(&v145 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CA28, &qword_27464E650);
    sub_274483150();
    v53 = v178;
    sub_27463AD5C();
    v54 = 0;
  }

  else
  {
    v54 = 1;
    v53 = v178;
  }

  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CA10, &qword_27464E5F0);
  v56 = 1;
  __swift_storeEnumTagSinglePayload(v53, v54, 1, v55);
  v57 = *(v50 + 72);
  v58 = v175;
  if (v57)
  {
    v59 = *(v50 + 64);
    v60 = *(v50 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = v59;
    *(v61 + 24) = v57;
    *(v61 + 32) = v60 & 1;
    MEMORY[0x28223BE20](v61);
    *(&v145 - 4) = v59;
    *(&v145 - 3) = v57;
    *(&v145 - 16) = v62;
    sub_274483110(v59, v57);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CA28, &qword_27464E650);
    sub_274483150();
    sub_27463AD5C();

    v56 = 0;
  }

  v63 = v161;
  v64 = v160;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CA10, &qword_27464E5F0);
  __swift_storeEnumTagSinglePayload(v58, v56, 1, v65);
  v66 = *(v50 + 88);
  if (!v66)
  {
LABEL_69:
    type metadata accessor for WorkflowEditorOptions(0);
    sub_27447FCA0(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
    result = sub_27463978C();
    __break(1u);
    return result;
  }

  v67 = v66 + OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_editorDelegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_27;
  }

  v69 = Strong;
  v70 = *(v67 + 8);
  v71 = *(v63 + v64);
  sub_2746383BC();
  if (!swift_dynamicCastClass() || (objc_opt_self(), (v72 = swift_dynamicCastObjCClass()) == 0))
  {
    swift_unknownObjectRelease();
    goto LABEL_27;
  }

  v147 = v72;
  v73 = v71;
  if (!sub_27446EEE0())
  {
    swift_unknownObjectRelease();

    goto LABEL_27;
  }

  v146 = v70;
  v148 = v73;
  swift_getKeyPath();
  swift_getKeyPath();
  v74 = v150;
  sub_274638FAC();

  v179[1] = *(v63 + v64);
  v75 = v152;
  sub_27463837C();
  (*(v151 + 8))(v74, v75);
  if (!v180)
  {
    swift_unknownObjectRelease();
    v112 = v179;
LABEL_44:

    goto LABEL_27;
  }

  v152 = v180;
  v151 = v181;
  if (!sub_27446EEE0())
  {
    swift_unknownObjectRelease();

    v112 = v182;
    goto LABEL_44;
  }

  v76 = v152;
  v180 = v152;
  v181 = v151;
  v77 = sub_27451FB04(&v180);

  if (v77)
  {
    v145 = v69;
    *&v151 = v50;
    v150 = v49;
    v78 = MEMORY[0x277D84F90];
    v180 = MEMORY[0x277D84F90];
    v79 = sub_274453594();
    v80 = 0;
    while (v79 != v80)
    {
      if ((v77 & 0xC000000000000001) != 0)
      {
        v81 = MEMORY[0x277C58B20](v80, v77);
      }

      else
      {
        if (v80 >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_64;
        }

        v81 = *(v77 + 8 * v80 + 32);
      }

      v82 = v81;
      if (__OFADD__(v80, 1))
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        MEMORY[0x277C57F30]();
        if (*((v180 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v180 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_27463B85C();
        }

        sub_27463B8AC();
        v78 = v180;
        ++v80;
      }

      else
      {

        ++v80;
      }
    }

    v113 = sub_274453594();
    v114 = 0;
    v115 = v78 & 0xC000000000000001;
    v58 = v175;
    while (v113 != v114)
    {
      if (v115)
      {
        v116 = MEMORY[0x277C58B20](v114, v78);
      }

      else
      {
        if (v114 >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_66;
        }

        v116 = *(v78 + 8 * v114 + 32);
      }

      v117 = v116;
      if (__OFADD__(v114, 1))
      {
        goto LABEL_65;
      }

      v118 = [v116 mode];

      ++v114;
      if (v118 == 1)
      {
        goto LABEL_55;
      }
    }

    for (i = 0; v113 != i; ++i)
    {
      if (v115)
      {
        v120 = MEMORY[0x277C58B20](i, v78);
      }

      else
      {
        if (i >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_68;
        }

        v120 = *(v78 + 8 * i + 32);
      }

      v121 = v120;
      if (__OFADD__(i, 1))
      {
        goto LABEL_67;
      }

      if ([v120 mode] == 2)
      {

        v122 = sub_27446EEE0();
        if (!v122)
        {
          swift_unknownObjectRelease();

          goto LABEL_56;
        }

        v123 = *(v122 + 24);

        v124 = [v123 actions];

        sub_274412734(0, &qword_28094E040, 0x277D7C098);
        sub_27463B81C();

        sub_2744B2A9C();
        v126 = v125;
        v128 = v127;

        v129 = v148;
        if (v128)
        {
          swift_unknownObjectRelease();

          v83 = 1;
        }

        else
        {
          v130 = v174;
          sub_27463AF5C();
          v131 = swift_allocObject();
          *(v131 + 24) = v146;
          swift_unknownObjectWeakInit();
          v132 = swift_allocObject();
          v132[2] = v147;
          v132[3] = v131;
          v132[4] = v126;
          v148 = v129;

          v133 = v172;
          sub_27463AD5C();

          v134 = *(v159 + 16);
          v135 = v158;
          v136 = v130;
          v137 = v157;
          v134(v158, v136, v157);
          v138 = *(v173 + 16);
          v139 = v149;
          v140 = v171;
          v138(v149, v133, v171);
          v141 = v179[0];
          v134(v179[0], v135, v137);
          v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CA20, &qword_27464E648);
          v138((v141 + *(v142 + 48)), v139, v140);
          swift_unknownObjectRelease();

          v58 = v175;
          v143 = *(v173 + 8);
          v143(v172, v140);
          v144 = *(v159 + 8);
          v144(v174, v137);
          v143(v139, v140);
          v144(v158, v137);
          v83 = 0;
        }

        goto LABEL_57;
      }
    }

LABEL_55:
    swift_unknownObjectRelease();

LABEL_56:
    v83 = 1;
LABEL_57:
    v50 = v151;
    v63 = v161;
    v64 = v160;
    goto LABEL_28;
  }

  swift_unknownObjectRelease();

LABEL_27:
  v83 = 1;
LABEL_28:
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CA18, &qword_27464E5F8);
  v85 = 1;
  __swift_storeEnumTagSinglePayload(v179[0], v83, 1, v84);
  sub_2744764D0(v50, v177);
  sub_27463AF5C();
  sub_27447731C(v50, v168);
  sub_27463AF5C();
  if ([*(v63 + v64) isDeletable])
  {
    v86 = *(v50 + 16);
    if (v86)
    {
      v87 = *(v50 + 24);

      v88 = v153;
      sub_27463904C();
      v89 = sub_27463905C();
      __swift_storeEnumTagSinglePayload(v88, 0, 1, v89);
      v90 = swift_allocObject();
      *(v90 + 16) = v86;
      *(v90 + 24) = v87;

      sub_27463AD4C();
      sub_274406A94(v86, v87);
      v85 = 0;
    }
  }

  v91 = v171;
  __swift_storeEnumTagSinglePayload(v176, v85, 1, v171);
  v92 = v172;
  (*(v173 + 16))(v172, v162, v91);
  v180 = v92;
  v93 = v163;
  sub_274412C20(v178, v163, &unk_28094C9F0, &unk_274651C20);
  *&v181 = v93;
  v94 = v164;
  sub_274412C20(v58, v164, &unk_28094C9F0, &unk_274651C20);
  *(&v181 + 1) = v94;
  v95 = v167;
  sub_274412C20(v179[0], v167, &qword_28094C9E8, &unk_27464E5D0);
  v182[0] = v95;
  v96 = v169;
  sub_274412C20(v177, v169, &unk_28094E140, &unk_27464E5C0);
  v182[1] = v96;
  v97 = v159;
  v98 = *(v159 + 16);
  v99 = v174;
  v100 = v166;
  v101 = v157;
  v98(v174, v166, v157);
  v182[2] = v99;
  v102 = v168;
  v103 = v170;
  sub_274412C20(v168, v170, &unk_28094C9D0, &qword_27464E5B8);
  v182[3] = v103;
  v104 = v158;
  v105 = v165;
  v98(v158, v165, v101);
  v182[4] = v104;
  v106 = v176;
  v107 = v156;
  sub_274412C20(v176, v156, &qword_28094E150, &qword_27464E5B0);
  v182[5] = v107;
  sub_2744B2260();
  sub_27440CB1C(v106, &qword_28094E150, &qword_27464E5B0);
  v108 = *(v97 + 8);
  v108(v105, v101);
  sub_27440CB1C(v102, &unk_28094C9D0, &qword_27464E5B8);
  v108(v100, v101);
  sub_27440CB1C(v177, &unk_28094E140, &unk_27464E5C0);
  sub_27440CB1C(v179[0], &qword_28094C9E8, &unk_27464E5D0);
  sub_27440CB1C(v175, &unk_28094C9F0, &unk_274651C20);
  sub_27440CB1C(v178, &unk_28094C9F0, &unk_274651C20);
  v109 = *(v173 + 8);
  v110 = v171;
  v109(v162, v171);
  sub_27440CB1C(v107, &qword_28094E150, &qword_27464E5B0);
  v108(v104, v101);
  sub_27440CB1C(v170, &unk_28094C9D0, &qword_27464E5B8);
  v108(v174, v101);
  sub_27440CB1C(v169, &unk_28094E140, &unk_27464E5C0);
  sub_27440CB1C(v167, &qword_28094C9E8, &unk_27464E5D0);
  sub_27440CB1C(v164, &unk_28094C9F0, &unk_274651C20);
  sub_27440CB1C(v163, &unk_28094C9F0, &unk_274651C20);
  return (v109)(v172, v110);
}

void sub_274474848(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v5 = *(*(a4 + 8) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
  a2();
}

uint64_t sub_2744748BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[3];
  v17 = a1[2];
  v7 = a1[4];
  v8 = a1[5];
  v9 = *(a2 + 8);
  v10 = *(a2 + *(type metadata accessor for ActionView(0) + 84)) + 2.0;
  KeyPath = swift_getKeyPath();
  type metadata accessor for ActionViewModel();
  sub_27447FCA0(&qword_28094C460, type metadata accessor for ActionViewModel, &protocol conformance descriptor for ActionViewModel);
  v12 = v9;

  v13 = v8;
  result = sub_27463950C();
  *a3 = result;
  *(a3 + 8) = v15;
  *(a3 + 16) = v5;
  *(a3 + 24) = v4;
  *(a3 + 32) = v17;
  *(a3 + 40) = v6;
  *(a3 + 48) = v7;
  *(a3 + 56) = v13;
  *(a3 + 64) = v10;
  v16 = MEMORY[0x277D84F90];
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a3 + 72) = v16;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = KeyPath;
  *(a3 + 136) = 0;
  return result;
}

uint64_t sub_274474A0C()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_showMoreParameters);
  if (v2 >> 62)
  {
    result = sub_27463C27C();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ([*(v1 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action) parameterCollapsingBehavior] == 2 || *(v1 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_resourceError))
  {
    return 0;
  }

  else
  {
    return *(v1 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_isExpanded);
  }
}

uint64_t sub_274474AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for WorkflowEditorOptions(0);
  sub_27447FCA0(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
  v6 = sub_27463979C();
  v8 = v7;
  KeyPath = swift_getKeyPath();
  v10 = swift_getKeyPath();
  result = swift_getKeyPath();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = v6;
  *(a3 + 24) = v8;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = 0;
  *(a3 + 48) = v10;
  *(a3 + 56) = 0;
  *(a3 + 64) = result;
  *(a3 + 72) = 0;
  return result;
}

uint64_t sub_274474BB4()
{
  v1 = v0;
  v2 = *(v0 + 88);
  if (v2)
  {
    v3 = v2;
    v4 = sub_27443B4C4();

    if ((v4 & 1) != 0 || (*(v1 + 81) & 1) == 0)
    {
      return 0;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_27447FCA0(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

void sub_274474C6C(BOOL *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C830, &qword_27464E358);
  sub_27463ACEC();
  if (v2)
  {
  }

  *a1 = v2 != 0;
}

_BYTE *sub_274474CDC(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*result & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C830, &qword_27464E358);
    return sub_27463ACFC();
  }

  return result;
}

void sub_274474D44(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C830, &qword_27464E358);
  sub_27463ACEC();
  if (v4)
  {
    ObjectType = swift_getObjectType();
    v3 = (*(v5 + 8))(ObjectType);
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
}

double sub_274474DE4@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v3 = sub_274474EA4(a2);
  WFActionDetailsViewController.contentSizeThatFits(_:)(__PAIR128__(0x7FEFFFFFFFFFFFFFLL, 0x4079000000000000));

  sub_27463B0CC();
  sub_2746392FC();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  result = *&v9;
  *(a1 + 40) = v9;
  return result;
}

uint64_t sub_274474EA4(uint64_t a1)
{
  v2 = type metadata accessor for ActionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_2746381FC();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27463851C();
  sub_27463850C();
  v8 = *(*(a1 + 8) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
  sub_2746384FC();

  sub_274483F70(a1, &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActionView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_274480BE8(&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for ActionView);
  v11 = objc_allocWithZone(type metadata accessor for WFActionDetailsViewController(0));
  WFActionDetailsViewController.init(action:showCloseButton:appendActionHandler:)(v7, 0, sub_27448275C, v10);
  v13 = v12;
  sub_274483F70(a1, &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActionView);
  v14 = swift_allocObject();
  sub_274480BE8(&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v9, type metadata accessor for ActionView);
  v15 = (v13 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_dismissalHandler);
  swift_beginAccess();
  v16 = *v15;
  v17 = v15[1];
  *v15 = sub_274482788;
  v15[1] = v14;
  sub_274406A94(v16, v17);
  return v13;
}

uint64_t sub_274475108(uint64_t a1)
{
  v2 = sub_274639ABC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 192);
  v7 = *(a1 + 200);

  if ((v7 & 1) == 0)
  {
    sub_27463BC0C();
    v9 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    j__swift_release(v6);
    result = (*(v3 + 8))(v5, v2);
    v6 = v22[0];
  }

  if (v6)
  {
    v10 = *(v6 + 24);

    v11 = [v10 actions];

    sub_274412734(0, &qword_28094E040, 0x277D7C098);
    sub_27463B81C();

    v12 = sub_274453594();

    v13 = *(a1 + 88);
    if (v13)
    {
      v14 = v13 + OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_editorDelegate;
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v15 = *(v14 + 8);
        ObjectType = swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820, &unk_27464AF60);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_274648560;
        v18 = *(*(a1 + 8) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F500, &unk_27464ADC0);
        v19 = sub_27463B4DC();
        v20 = sub_2745942EC(v19, v18);

        *(v17 + 32) = v20;
        (*(v15 + 32))(v17, v12, ObjectType, v15);

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      type metadata accessor for WorkflowEditorOptions(0);
      sub_27447FCA0(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
      result = sub_27463978C();
      __break(1u);
    }
  }

  return result;
}

void sub_2744754F4()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    sub_274638FAC();

    if (v5)
    {
    }

    else
    {
      v3 = *(v0 + 8);
      if (!sub_2745E2570() && [*(v3 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action) displaysParameterSummary] && *(v3 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_parameterSummary + 24) && !*(v3 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_resourceError))
      {
        sub_2745E27D4();
        if (v4)
        {
        }
      }
    }
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_27447FCA0(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
    sub_27463978C();
    __break(1u);
  }
}

void sub_274475654(uint64_t a1)
{
  v2 = sub_274639FEC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094BC50, &qword_2746517C0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A610, &qword_2746493F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  v30 = a1;
  sub_27446F174(&v28 - v16);
  (*(v3 + 104))(v14, *MEMORY[0x277CE0560], v2);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v2);
  v18 = *(v6 + 56);
  sub_274412C20(v17, v8, &qword_28094A610, &qword_2746493F0);
  sub_274412C20(v14, &v8[v18], &qword_28094A610, &qword_2746493F0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v2) == 1)
  {
    sub_27440CB1C(v14, &qword_28094A610, &qword_2746493F0);
    sub_27440CB1C(v17, &qword_28094A610, &qword_2746493F0);
    if (__swift_getEnumTagSinglePayload(&v8[v18], 1, v2) == 1)
    {
      sub_27440CB1C(v8, &qword_28094A610, &qword_2746493F0);
LABEL_10:
      v27 = *(v30 + 128);
      v32 = *(v30 + 120);
      v33 = v27;
      v31 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D1A0, &qword_27464C120);
      sub_27463ACFC();
      return;
    }

    goto LABEL_6;
  }

  sub_274412C20(v8, v11, &qword_28094A610, &qword_2746493F0);
  if (__swift_getEnumTagSinglePayload(&v8[v18], 1, v2) == 1)
  {
    sub_27440CB1C(v14, &qword_28094A610, &qword_2746493F0);
    sub_27440CB1C(v17, &qword_28094A610, &qword_2746493F0);
    (*(v3 + 8))(v11, v2);
LABEL_6:
    sub_27440CB1C(v8, &unk_28094BC50, &qword_2746517C0);
    goto LABEL_7;
  }

  v23 = &v8[v18];
  v24 = v29;
  (*(v3 + 32))(v29, v23, v2);
  sub_27447FCA0(&unk_28094BC90, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v25 = sub_27463B5BC();
  v26 = *(v3 + 8);
  v26(v24, v2);
  sub_27440CB1C(v14, &qword_28094A610, &qword_2746493F0);
  sub_27440CB1C(v17, &qword_28094A610, &qword_2746493F0);
  v26(v11, v2);
  sub_27440CB1C(v8, &qword_28094A610, &qword_2746493F0);
  if (v25)
  {
    goto LABEL_10;
  }

LABEL_7:
  v19 = *(v30 + 88);
  if (v19)
  {
    v20 = *(*(v30 + 8) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
    v21 = v19;
    v22 = v20;
    sub_27443E144(v22);
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_27447FCA0(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
    sub_27463978C();
    __break(1u);
  }
}

uint64_t sub_274475BB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CA38, &qword_27464E658);
  MEMORY[0x28223BE20](v2);
  v4 = v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CA00, &qword_27464ED50);
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = v18 - v8;
  if (*(*(a1 + 8) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_isFavorite) == 1)
  {
    sub_27463B70C("Unpin", 5, v7);
    if (qword_2809492C0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_27463B70C("Pin", 3, v7);
  if (qword_2809492C0 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v10 = qword_28094BB00;
  v11 = sub_27463B66C();
  v12 = sub_27463B66C();

  v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

  v14 = sub_27463B6AC();
  v16 = v15;

  v18[0] = v14;
  v18[1] = v16;
  sub_274412BBC();
  sub_27463ACCC();
  (*(v6 + 16))(v4, v9, v5);
  swift_storeEnumTagMultiPayload();
  sub_27440CA78(&unk_28094CDA0, &unk_28094CA00, &qword_27464ED50, MEMORY[0x277CDEFF0]);
  sub_274639DDC();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_274475F68(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950E20, &qword_27464D880);
  MEMORY[0x277C575F0](&v4);
  return sub_27463AEBC();
}

uint64_t sub_274475FFC(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CA38, &qword_27464E658);
  MEMORY[0x28223BE20](v6);
  v8 = &v22[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CA00, &qword_27464ED50);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22[-v11];
  v24 = a1;
  v25 = a2;
  v26 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950E20, &qword_27464D880);
  MEMORY[0x277C575F0](&v23, v13);
  if (v23 == 1)
  {
    sub_27463B70C("Expand", 6);
    if (qword_2809492C0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_27463B70C("Collapse", 8);
  if (qword_2809492C0 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v14 = qword_28094BB00;
  v15 = sub_27463B66C();
  v16 = sub_27463B66C();

  v17 = [v14 localizedStringForKey:v15 value:v16 table:0];

  v18 = sub_27463B6AC();
  v20 = v19;

  v24 = v18;
  v25 = v20;
  sub_274412BBC();
  sub_27463ACCC();
  (*(v10 + 16))(v8, v12, v9);
  swift_storeEnumTagMultiPayload();
  sub_27440CA78(&unk_28094CDA0, &unk_28094CA00, &qword_27464ED50, MEMORY[0x277CDEFF0]);
  sub_274639DDC();
  return (*(v10 + 8))(v12, v9);
}

void sub_2744763E4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 createAccompanyingActionWithMode_];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 24))(v5, a3, ObjectType, v6);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_2744764D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CA68, &qword_27464E688);
  MEMORY[0x28223BE20](v4);
  v6 = &v47 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CA70, &qword_27464E690);
  v53 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v63 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v62 = &v47 - v10;
  v11 = type metadata accessor for ActionView(0);
  v51 = *(v11 - 8);
  v12 = *(v51 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CA78, &qword_27464E698);
  v52 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v64 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v57 = &v47 - v15;
  v16 = sub_27463AF6C();
  v59 = *(v16 - 8);
  v60 = v16;
  MEMORY[0x28223BE20](v16);
  v58 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - v19;
  v21 = *(a1 + 8);
  v22 = OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_accessResourcesAllowingMultipleAccounts;
  if ((sub_274453594() || sub_274453594()) && (v23 = sub_27446F024()) != 0)
  {
    v54 = v20;
    v55 = v23;
    sub_27463AF5C();
    v65 = *(v21 + v22);
    KeyPath = swift_getKeyPath();
    sub_274483F70(a1, &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActionView);
    v24 = (*(v51 + 80) + 16) & ~*(v51 + 80);
    v25 = swift_allocObject();
    v49 = v7;
    sub_274480BE8(&v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for ActionView);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CA80, &qword_27464E6B8);
    v50 = a2;
    v56 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CD90, &unk_27464E5E0);
    v51 = v4;
    sub_27440CA78(&qword_28094CA88, &qword_28094CA80, &qword_27464E6B8, MEMORY[0x277D83980]);
    sub_274482214(&unk_28094CA90, &unk_2809542B0, 0x277D7C090);
    sub_27440CA78(&qword_28094CAA0, &unk_28094CD90, &unk_27464E5E0, MEMORY[0x277CDF028]);
    v26 = v57;
    sub_27463AF7C();
    v65 = *(v21 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_accessResourcesThatCanLogOut);
    swift_getKeyPath();
    *(swift_allocObject() + 16) = v55;

    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CAA8, &qword_27464E6C0);
    sub_27448336C();
    v27 = v62;
    sub_27463AF7C();
    v28 = v58;
    v29 = *(v59 + 16);
    v30 = v60;
    v29(v58, v54, v60);
    v31 = v52;
    KeyPath = *(v52 + 16);
    KeyPath(v64, v26, v61);
    v32 = v53;
    v47 = *(v53 + 16);
    v33 = v27;
    v34 = v49;
    v47(v63, v33, v49);
    v35 = v56;
    v29(v56, v28, v30);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CAB8, &qword_27464E6C8);
    v37 = v61;
    KeyPath((v35 + *(v36 + 48)), v64, v61);
    v38 = v63;
    v47((v35 + *(v36 + 64)), v63, v34);
    swift_unknownObjectRelease();
    v39 = *(v32 + 8);
    v40 = v34;
    v39(v62, v34);
    v41 = *(v31 + 8);
    v42 = v37;
    v41(v57, v37);
    v43 = v60;
    v44 = *(v59 + 8);
    v44(v54, v60);
    v39(v38, v40);
    v41(v64, v42);
    v44(v58, v43);
    v45 = v50;
    sub_27441277C(v56, v50, &qword_28094CA68, &qword_27464E688);
    return __swift_storeEnumTagSinglePayload(v45, 0, 1, v51);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

uint64_t sub_274476C64(void **a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = *a1;
  sub_274483F70(a2, &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActionView);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_274480BE8(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for ActionView);
  *(v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CA00, &qword_27464ED50);
  sub_27440CA78(&unk_28094CDA0, &unk_28094CA00, &qword_27464ED50, MEMORY[0x277CDEFF0]);
  return sub_27463AD5C();
}

uint64_t sub_274476E14(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(a2, ObjectType, &protocol descriptor for AccountConfigurableAccessResource))
  {
    v4 = a2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C830, &qword_27464E358);
  return sub_27463ACFC();
}

uint64_t sub_274476EE0(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CAC0, &unk_27464E6D0);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CD90, &unk_27464E5E0);
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v11 = &v17 - v10;
  v12 = *a1;
  if ([v12 isAvailable])
  {
    *(swift_allocObject() + 16) = v12;
    v13 = v12;
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = a2;
    v15 = v12;
    swift_unknownObjectRetain();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CA00, &qword_27464ED50);
  sub_27440CA78(&unk_28094CDA0, &unk_28094CA00, &qword_27464ED50, MEMORY[0x277CDEFF0]);
  sub_27463AD5C();
  (*(v8 + 16))(v6, v11, v7);
  swift_storeEnumTagMultiPayload();
  sub_27440CA78(&qword_28094CAA0, &unk_28094CD90, &unk_27464E5E0, MEMORY[0x277CDF028]);
  sub_274639DDC();
  return (*(v8 + 8))(v11, v7);
}

void sub_27447723C(void *a1, uint64_t a2)
{
  v5[4] = CGSizeMake;
  v5[5] = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2744458C4;
  v5[3] = &block_descriptor_7;
  v4 = _Block_copy(v5);
  [a1 makeAvailableWithUserInterface:a2 completionHandler:v4];
  _Block_release(v4);
}

uint64_t sub_27447731C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CA40, &qword_27464E660);
  MEMORY[0x28223BE20](v69);
  v66 = &v64 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CA48, &qword_27464E668);
  MEMORY[0x28223BE20](v4 - 8);
  v70 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v73 = &v64 - v7;
  v8 = type metadata accessor for ActionView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CD90, &unk_27464E5E0);
  v11 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v65 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v68 = &v64 - v14;
  MEMORY[0x28223BE20](v15);
  v64 = &v64 - v16;
  MEMORY[0x28223BE20](v17);
  v77 = &v64 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v64 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E150, &qword_27464E5B0);
  MEMORY[0x28223BE20](v22 - 8);
  v76 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v64 - v25;
  v27 = *(a1 + 48);
  v28 = *(a1 + 56);
  v78 = &v64 - v25;
  v72 = a1;
  v74 = v21;
  v75 = v11;
  v67 = v28;
  if (v27)
  {
    sub_274483F70(a1, &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActionView);
    v29 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v30 = swift_allocObject();
    sub_274480BE8(&v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29, type metadata accessor for ActionView);
    v31 = (v30 + ((v10 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = v27;
    v31[1] = v28;
    sub_2744069F0(v27, v28);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CA00, &qword_27464ED50);
    a1 = v72;
    sub_27440CA78(&unk_28094CDA0, &unk_28094CA00, &qword_27464ED50, MEMORY[0x277CDEFF0]);
    v26 = v78;
    sub_27463AD5C();
    sub_274406A94(v27, v28);
    (*(v75 + 32))(v26, v21, v79);
    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  v33 = 1;
  __swift_storeEnumTagSinglePayload(v26, v32, 1, v79);
  sub_274483F70(a1, &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActionView);
  v34 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v35 = swift_allocObject();
  sub_274480BE8(&v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v35 + v34, type metadata accessor for ActionView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CA00, &qword_27464ED50);
  sub_27440CA78(&unk_28094CDA0, &unk_28094CA00, &qword_27464ED50, MEMORY[0x277CDEFF0]);
  sub_27463AD5C();
  sub_274412734(0, &qword_28094E040, 0x277D7C098);
  v36 = sub_2744F3CC8();
  if (v27)
  {
    if (v36)
    {
      v37 = *(v72 + 32);
      if (v37)
      {
        v38 = *(v72 + 40);
        v39 = swift_allocObject();
        *(v39 + 16) = v37;
        *(v39 + 24) = v38;
        v72 = v38;
        sub_2744069F0(v37, v38);
        v40 = v67;
        sub_2744069F0(v27, v67);
        sub_2744069F0(v37, v38);
        v41 = v74;
        sub_27463AD5C();
        v42 = swift_allocObject();
        *(v42 + 16) = v27;
        *(v42 + 24) = v40;

        v43 = v64;
        sub_27463AD5C();
        v44 = v75;
        v45 = *(v75 + 16);
        v46 = v68;
        v47 = v79;
        v45(v68, v41, v79);
        v48 = v65;
        v45(v65, v43, v47);
        v49 = v66;
        v45(v66, v46, v47);
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CA58, &qword_27464E678);
        v45((v49 + *(v50 + 48)), v48, v47);
        sub_274406A94(v27, v67);
        sub_274406A94(v37, v72);
        v51 = *(v44 + 8);
        v51(v43, v47);
        v51(v74, v47);
        v51(v48, v47);
        v51(v68, v47);
        sub_27441277C(v49, v73, &qword_28094CA40, &qword_27464E660);
        v33 = 0;
      }
    }
  }

  v52 = v79;
  v53 = v73;
  __swift_storeEnumTagSinglePayload(v73, v33, 1, v69);
  v54 = v76;
  sub_274412C20(v78, v76, &qword_28094E150, &qword_27464E5B0);
  v56 = v74;
  v55 = v75;
  v57 = *(v75 + 16);
  v58 = v77;
  v57(v74, v77, v52);
  v59 = v70;
  sub_274412C20(v53, v70, &qword_28094CA48, &qword_27464E668);
  v60 = v71;
  sub_274412C20(v54, v71, &qword_28094E150, &qword_27464E5B0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CA50, &qword_27464E670);
  v57((v60 + *(v61 + 48)), v56, v52);
  sub_274412C20(v59, v60 + *(v61 + 64), &qword_28094CA48, &qword_27464E668);
  sub_27440CB1C(v53, &qword_28094CA48, &qword_27464E668);
  v62 = *(v55 + 8);
  v62(v58, v52);
  sub_27440CB1C(v78, &qword_28094E150, &qword_27464E5B0);
  sub_27440CB1C(v59, &qword_28094CA48, &qword_27464E668);
  v62(v56, v52);
  return sub_27440CB1C(v76, &qword_28094E150, &qword_27464E5B0);
}

uint64_t sub_274477C6C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v29 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9E0, &qword_274651840);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  v9 = sub_274639ABC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 192);
  v14 = *(a1 + 200);

  if ((v14 & 1) == 0)
  {
    sub_27463BC0C();
    v16 = sub_27463A2FC();
    v28 = a1;
    v17 = v5;
    v18 = v6;
    v19 = a2;
    v20 = v16;
    sub_274638CEC();

    a2 = v19;
    v6 = v18;
    v5 = v17;
    a1 = v28;
    sub_274639AAC();
    swift_getAtKeyPath();
    j__swift_release(v13);
    result = (*(v10 + 8))(v12, v9);
    v13 = v31;
  }

  if (v13)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_274638FAC();

    v30 = *(*(a1 + 8) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
    sub_27463837C();
    (*(v6 + 8))(v8, v5);
    v21 = v31;
    if (v31)
    {
      v23 = v32;
      v22 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CA60, &qword_27464E680);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_274648570;
      *(inited + 32) = v21;
      *(inited + 40) = v23;
      *(inited + 48) = v22;
      v25 = v21;
      v26 = sub_27451FC40(inited, 0);
      swift_setDeallocating();
      sub_2744EBBEC();
      a2(v26);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_274477F90()
{
  sub_27463B70C("Duplicate", 9);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v0 = qword_28094BB00;
  v1 = sub_27463B66C();
  v2 = sub_27463B66C();

  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  sub_27463B6AC();
  sub_274412BBC();
  return sub_27463ACCC();
}

uint64_t sub_2744780BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9E0, &qword_274651840);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v20 - v4;
  v6 = sub_274639ABC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 192);
  v11 = *(a1 + 200);

  if ((v11 & 1) == 0)
  {
    sub_27463BC0C();
    v13 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    j__swift_release(v10);
    result = (*(v7 + 8))(v9, v6);
    v10 = v21;
  }

  if (v10)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_274638FAC();

    v20[8] = *(*(a1 + 8) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
    sub_27463837C();
    (*(v3 + 8))(v5, v2);
    v14 = v21;
    if (v21)
    {
      v16 = v22;
      v15 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CA60, &qword_27464E680);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_274648570;
      *(inited + 32) = v14;
      *(inited + 40) = v16;
      *(inited + 48) = v15;
      v18 = v14;
      v19 = sub_27451FC40(inited, 1);
      swift_setDeallocating();
      sub_2744EBBEC();
      sub_274412734(0, &qword_28094E040, 0x277D7C098);
      sub_2744F3BB4(v19);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_274478420(void (*a1)(void))
{
  sub_274412734(0, &qword_28094E040, 0x277D7C098);
  sub_2744F3DF0(v2);
  a1();
}

uint64_t sub_2744784EC(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_27463B70C(a1, a2);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v4 = qword_28094BB00;
  v5 = sub_27463B66C();
  v6 = sub_27463B66C();

  v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

  sub_27463B6AC();
  sub_274412BBC();
  return sub_27463ACCC();
}

uint64_t sub_274478610@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_274639C5C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C628, &qword_27464E0C8);
  v8 = sub_274547588(v2[1]);
  swift_getKeyPath();
  v4 = swift_allocObject();
  memcpy((v4 + 16), v2, 0x49uLL);
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2744821A4;
  *(v5 + 24) = v4;
  sub_2744821DC(v2, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C630, &qword_27464E0F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C638, &qword_27464E0F8);
  sub_27440CA78(&qword_28094C640, &qword_28094C630, &qword_27464E0F0, MEMORY[0x277D83980]);
  sub_274482214(&qword_28094BD48, qword_28094AE40, 0x277D7C6D8);
  sub_27440CA78(&qword_28094C648, &qword_28094C638, &qword_27464E0F8, MEMORY[0x277CE1198]);
  return sub_27463AF7C();
}

uint64_t sub_2744787EC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = sub_274639C5C();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C650, &qword_27464E100);
  return sub_274478858(a1, a2, a3, a4 + *(v8 + 44));
}

uint64_t sub_274478858@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v71 = a4;
  v74 = sub_274639ABC();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for ParameterRowView(0);
  MEMORY[0x28223BE20](v65);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C658, &qword_27464E108);
  MEMORY[0x28223BE20](v68);
  v12 = &v65 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C660, &qword_27464E110);
  MEMORY[0x28223BE20](v13 - 8);
  v70 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v69 = &v65 - v16;
  v17 = sub_27463AF6C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C668, &qword_27464E118);
  MEMORY[0x28223BE20](v21 - 8);
  v67 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v65 - v24;
  if (a1)
  {
    sub_27463AF5C();
    (*(v18 + 32))(v25, v20, v17);
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  __swift_storeEnumTagSinglePayload(v25, v26, 1, v17);
  v27 = *(*a3 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
  v80 = *(a3 + 32);
  v81 = *(a3 + 40);
  v73 = v27;
  v66 = v25;
  if (v81 == 1)
  {
    v28 = v27;
    v29 = a2;
    sub_274412C20(&v80, v75, &unk_28094C670, &unk_27464E120);
  }

  else
  {
    v30 = v27;
    v31 = a2;
    sub_274412C20(&v80, v75, &unk_28094C670, &unk_27464E120);
    sub_27463BC0C();
    v32 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_27440CB1C(&v80, &unk_28094C670, &unk_27464E120);
    (*(v72 + 8))(v8, v74);
  }

  type metadata accessor for ParameterStateStore();
  v33 = ParameterStateStore.__allocating_init(action:parameter:undoManager:)();
  v34 = *(a3 + 64);
  v78 = v34;
  v79 = *(a3 + 72);
  if (v79 != 1)
  {

    sub_27463BC0C();
    v35 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_27440CB1C(&v78, &qword_28094CD80, &qword_27464ED40);
    (*(v72 + 8))(v8, v74);
    LOBYTE(v34) = v75[0];
  }

  v77 = *(a3 + 56);
  v76 = *(a3 + 48);
  if (v77 == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_27463BC0C();
    v36 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_27440CB1C(&v76, &unk_28094C680, &qword_27464E130);
    (*(v72 + 8))(v8, v74);
  }

  v37 = *(a3 + 16);
  if (v37)
  {
    swift_unknownObjectWeakInit();
    v38 = v37;
    v10[56] = sub_2746390EC() & 1;
    *(v10 + 8) = v39;
    v10[72] = v40 & 1;
    v41 = v65;
    v42 = *(v65 + 52);
    *&v10[v42] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140, &qword_27464E160);
    swift_storeEnumTagMultiPayload();
    v43 = &v10[*(v41 + 56)];
    *v43 = swift_getKeyPath();
    v43[8] = 0;
    *v10 = a2;
    *(v10 + 1) = v33;
    v10[16] = v34 & 1;
    v10[17] = 0;
    *(v10 + 3) = 0;
    *(v10 + 16) = 1;
    swift_unknownObjectWeakAssign();
    v44 = a2;
    swift_unknownObjectRelease();
    *(v10 + 6) = v38;
    type metadata accessor for WorkflowEditorOptions(0);
    sub_27447FCA0(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
    v45 = sub_27463979C();
    v47 = v46;
    KeyPath = swift_getKeyPath();
    sub_274480BE8(v10, v12, type metadata accessor for ParameterRowView);
    v49 = &v12[*(v68 + 36)];
    *v49 = v45;
    *(v49 + 1) = v47;
    *(v49 + 2) = KeyPath;
    v49[24] = 0;
    v75[0] = 0;
    v75[1] = 0xE000000000000000;
    sub_27463C38C();

    strcpy(v75, "editor.action.");
    HIBYTE(v75[1]) = -18;
    v50 = [v73 identifier];
    v51 = sub_27463B6AC();
    v53 = v52;

    MEMORY[0x277C57EA0](v51, v53);

    MEMORY[0x277C57EA0](46, 0xE100000000000000);
    v54 = [v44 key];
    v55 = sub_27463B6AC();
    v57 = v56;

    MEMORY[0x277C57EA0](v55, v57);

    sub_274482264();
    v58 = v69;
    sub_27463A86C();

    sub_27440CB1C(v12, &qword_28094C658, &qword_27464E108);
    v60 = v66;
    v59 = v67;
    sub_274412C20(v66, v67, &qword_28094C668, &qword_27464E118);
    v61 = v70;
    sub_274412C20(v58, v70, &qword_28094C660, &qword_27464E110);
    v62 = v71;
    sub_274412C20(v59, v71, &qword_28094C668, &qword_27464E118);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C6A8, &qword_27464E1B8);
    sub_274412C20(v61, v62 + *(v63 + 48), &qword_28094C660, &qword_27464E110);
    sub_27440CB1C(v58, &qword_28094C660, &qword_27464E110);
    sub_27440CB1C(v60, &qword_28094C668, &qword_27464E118);
    sub_27440CB1C(v61, &qword_28094C660, &qword_27464E110);
    return sub_27440CB1C(v59, &qword_28094C668, &qword_27464E118);
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_27447FCA0(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_274479204@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_274639C5C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C6B0, &unk_27464E1C0);
  v11 = sub_274547588(*v2);
  swift_getKeyPath();
  v13 = *(v2 + 8);
  v12 = *(v2 + 32);
  v4 = swift_allocObject();
  v5 = *(v2 + 16);
  v4[1] = *v2;
  v4[2] = v5;
  v4[3] = *(v2 + 32);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_274482374;
  *(v6 + 24) = v4;

  sub_274412C20(&v13, v10, &qword_28094C6B8, &qword_274654B40);

  sub_274412C20(&v12, v10, &qword_28094C6C0, &qword_27464E1D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C630, &qword_27464E0F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C6C8, &qword_27464E1D8);
  sub_27440CA78(&qword_28094C640, &qword_28094C630, &qword_27464E0F0, MEMORY[0x277D83980]);
  sub_274482214(&qword_28094BD48, qword_28094AE40, 0x277D7C6D8);
  OUTLINED_FUNCTION_20_5();
  sub_27440CA78(v7, &qword_28094C6C8, &qword_27464E1D8, v8);
  return sub_27463AF7C();
}

uint64_t sub_274479420@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v97 = a3;
  v106 = a4;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C6D8, &qword_27464E1E0);
  v95 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v94 = &v93 - v6;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C6E0, &qword_27464E1E8);
  v96 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v98 = &v93 - v7;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C6E8, &qword_27464E1F0);
  MEMORY[0x28223BE20](v99);
  v100 = (&v93 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C6F0, &qword_27464E1F8);
  MEMORY[0x28223BE20](v9);
  v102 = &v93 - v10;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C6F8, &qword_27464E200);
  MEMORY[0x28223BE20](v104);
  v12 = (&v93 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C700, &unk_27464E208);
  MEMORY[0x28223BE20](v13 - 8);
  v105 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v93 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A8D0, &qword_274649750);
  MEMORY[0x28223BE20](v18);
  v20 = &v93 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C710, &qword_27464E218);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v93 - v25;
  v27 = 1;
  if (a1)
  {
    sub_27463AF5C();
    v28 = sub_27463A35C();
    v29 = &v20[*(v18 + 36)];
    *v29 = v28;
    *(v29 + 8) = 0u;
    *(v29 + 24) = 0u;
    v29[40] = 1;
    sub_27441277C(v20, v26, &qword_28094A8D0, &qword_274649750);
    v27 = 0;
  }

  __swift_storeEnumTagSinglePayload(v26, v27, 1, v18);
  v30 = [a2 importQuestionBehavior];
  v31 = sub_27463B6AC();
  v33 = v32;
  if (v31 == sub_27463B6AC() && v33 == v34)
  {

    goto LABEL_10;
  }

  v36 = sub_27463C6BC();

  if (v36)
  {

LABEL_10:
    LOBYTE(v117) = 0;
    v113 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C730, &unk_27464E220);
    sub_27448247C();
    sub_274639DDC();
    v37 = v115;
    *v12 = v114;
    v12[1] = v37;
    v12[2] = v116[0];
    *(v12 + 41) = *(v116 + 9);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C750, &qword_27464E230);
    sub_274482534();
    sub_2744825C0();
    sub_274639DDC();
    goto LABEL_11;
  }

  v93 = v9;
  v42 = sub_27463B6AC();
  v44 = v43;
  v45 = sub_27463B6AC();
  v47 = v46;

  if (v42 == v45 && v44 == v47)
  {
  }

  else
  {
    v49 = sub_27463C6BC();

    if ((v49 & 1) == 0)
    {
      v51 = v97;
      v52 = *(v97 + 8);
      *&v114 = a2;
      MEMORY[0x28223BE20](v50);
      *(&v93 - 2) = &v114;
      sub_27446EE0C(sub_2744823A0, (&v93 - 4), v52);
      if (v53)
      {
        v54 = [a2 localizedLabel];
        v55 = sub_27463B6AC();
        v57 = v56;

        sub_27463B70C("Already In Use", 14);
        if (qword_2809492C0 != -1)
        {
          swift_once();
        }

        v58 = qword_28094BB00;
        v59 = sub_27463B66C();
        v60 = sub_27463B66C();

        v61 = [v58 localizedStringForKey:v59 value:v60 table:0];

        v62 = sub_27463B6AC();
        v64 = v63;

        KeyPath = swift_getKeyPath();
        v66 = swift_allocObject();
        *(v66 + 16) = 1;
        v67 = v100;
        *v100 = v55;
        v67[1] = v57;
        v67[2] = v62;
        v67[3] = v64;
        v67[4] = KeyPath;
        v67[5] = sub_2744826D8;
        v67[6] = v66;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C730, &unk_27464E220);
        sub_27448247C();
        v68 = sub_27440CA78(&qword_28094C720, &qword_28094C6D8, &qword_27464E1E0, MEMORY[0x277CDF028]);
        v69 = sub_274482428();
        *&v114 = v101;
        *(&v114 + 1) = &type metadata for ParameterRowButtonStyle;
        *&v115 = v68;
        *(&v115 + 1) = v69;
        swift_getOpaqueTypeConformance2();
        v70 = v102;
        sub_274639DDC();
      }

      else
      {
        v117 = *v51;
        v107 = *(v51 + 32);
        v84 = swift_allocObject();
        v85 = *(v51 + 16);
        *(v84 + 16) = *v51;
        *(v84 + 32) = v85;
        *(v84 + 48) = *(v51 + 32);
        *(v84 + 64) = a2;
        MEMORY[0x28223BE20](v84);
        *(&v93 - 2) = a2;
        *(&v93 - 1) = v51;
        sub_274412C20(&v117, &v114, &qword_28094C6B8, &qword_274654B40);

        sub_274412C20(&v107, &v114, &qword_28094C6C0, &qword_27464E1D0);
        sub_2744823D4();
        v86 = a2;
        v87 = v94;
        sub_27463AD5C();
        v97 = sub_27440CA78(&qword_28094C720, &qword_28094C6D8, &qword_27464E1E0, MEMORY[0x277CDF028]);
        v88 = sub_274482428();
        v89 = v98;
        v90 = v101;
        sub_27463A6AC();
        (*(v95 + 8))(v87, v90);
        v91 = v96;
        v92 = v103;
        (*(v96 + 16))(v100, v89, v103);
        swift_storeEnumTagMultiPayload();
        v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C730, &unk_27464E220);
        sub_27448247C();
        *&v114 = v90;
        *(&v114 + 1) = &type metadata for ParameterRowButtonStyle;
        *&v115 = v97;
        *(&v115 + 1) = v88;
        swift_getOpaqueTypeConformance2();
        v70 = v102;
        sub_274639DDC();
        (*(v91 + 8))(v98, v92);
      }

      sub_274412C20(v70, v12, &qword_28094C6F0, &qword_27464E1F8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C750, &qword_27464E230);
      sub_274482534();
      sub_2744825C0();
      sub_274639DDC();
      sub_27440CB1C(v70, &qword_28094C6F0, &qword_27464E1F8);
      goto LABEL_11;
    }
  }

  v71 = [a2 localizedLabel];
  v103 = sub_27463B6AC();
  v73 = v72;

  sub_27463B70C("Not Supported for Questions", 27);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v74 = qword_28094BB00;
  v75 = sub_27463B66C();
  v76 = sub_27463B66C();

  v77 = [v74 localizedStringForKey:v75 value:v76 table:0];

  v78 = sub_27463B6AC();
  v80 = v79;

  v81 = swift_getKeyPath();
  v82 = swift_allocObject();
  *(v82 + 16) = 1;
  LOBYTE(v117) = 1;
  *&v107 = v103;
  *(&v107 + 1) = v73;
  v108 = v78;
  v109 = v80;
  v110 = v81;
  v111 = sub_274484B38;
  v112 = v82;
  v113 = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C730, &unk_27464E220);
  sub_27448247C();
  sub_274639DDC();
  v83 = v115;
  *v12 = v114;
  v12[1] = v83;
  v12[2] = v116[0];
  *(v12 + 41) = *(v116 + 9);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C750, &qword_27464E230);
  sub_274482534();
  sub_2744825C0();
  sub_274639DDC();

LABEL_11:
  sub_274412C20(v26, v23, &qword_28094C710, &qword_27464E218);
  v38 = v105;
  sub_274412C20(v17, v105, &unk_28094C700, &unk_27464E208);
  v39 = v106;
  sub_274412C20(v23, v106, &qword_28094C710, &qword_27464E218);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C768, &qword_27464E238);
  sub_274412C20(v38, v39 + *(v40 + 48), &unk_28094C700, &unk_27464E208);
  sub_27440CB1C(v17, &unk_28094C700, &unk_27464E208);
  sub_27440CB1C(v26, &qword_28094C710, &qword_27464E218);
  sub_27440CB1C(v38, &unk_28094C700, &unk_27464E208);
  return sub_27440CB1C(v23, &qword_28094C710, &qword_27464E218);
}

void sub_27447A2D8(uint64_t a1, uint64_t a2)
{
  (*(a1 + 16))(a2);
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = 0uLL;
    v6 = 0;
    v4 = v3;
    sub_27443D214(&v5);
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_27447FCA0(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
    sub_27463978C();
    __break(1u);
  }
}

void sub_27447A3A8(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 localizedLabel];
  v4 = sub_27463B6AC();
  v6 = v5;

  sub_27463B70C("Tap to Choose", 13);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v7 = qword_28094BB00;
  v8 = sub_27463B66C();
  v9 = sub_27463B66C();

  v10 = [v7 localizedStringForKey:v8 value:v9 table:0];

  v11 = sub_27463B6AC();
  v13 = v12;

  *a2 = v4;
  a2[1] = v6;
  a2[2] = v11;
  a2[3] = v13;
}

void *sub_27447A4D0@<X0>(uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v7 = sub_274639C5C();
  LOBYTE(__src[0]) = 1;
  sub_27447A630(a2, v21);
  *&v18[7] = v21[0];
  *&v18[23] = v21[1];
  *&v18[39] = v21[2];
  *&v18[55] = v21[3];
  v8 = sub_27463A38C();
  sub_2746390AC();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_27463B0CC();
  sub_27463973C();
  memcpy(&v19[7], __src, 0x70uLL);
  *a5 = v7;
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  memcpy((a5 + 17), v18, 0x47uLL);
  *(a5 + 88) = v8;
  *(a5 + 96) = v10;
  *(a5 + 104) = v12;
  *(a5 + 112) = v14;
  *(a5 + 120) = v16;
  *(a5 + 128) = 0;
  return memcpy((a5 + 129), v19, 0x77uLL);
}

uint64_t sub_27447A630@<X0>(uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  if (a2)
  {
    sub_274412BBC();
    swift_bridgeObjectRetain_n();
    v6 = sub_27463A53C();
    v8 = v7;
    v10 = v9;
    sub_27463A46C();
    v11 = sub_27463A50C();
    v36 = v12;
    v37 = v11;
    v14 = v13;
    v35 = v15;

    sub_274412C10(v6, v8, v10 & 1);

    v34 = v14 & 1;
  }

  else
  {
    v36 = 0;
    v37 = 0;
    v34 = 0;
    v35 = 0;
  }

  sub_274412BBC();

  v16 = sub_27463A53C();
  v18 = v17;
  v20 = v19;
  sub_27463A39C();
  v21 = sub_27463A50C();
  v23 = v22;
  v25 = v24;

  sub_274412C10(v16, v18, v20 & 1);

  sub_27463ABCC();
  v26 = sub_27463A4DC();
  v28 = v27;
  v30 = v29;
  v32 = v31;

  sub_274412C10(v21, v23, v25 & 1);

  *a5 = v37;
  *(a5 + 8) = v36;
  *(a5 + 16) = v34;
  *(a5 + 24) = v35;
  *(a5 + 32) = v26;
  *(a5 + 40) = v28;
  *(a5 + 48) = v30 & 1;
  *(a5 + 56) = v32;
  sub_274483EE8(v37, v36, v34, v35);
  sub_27440B094(v26, v28, v30 & 1);

  sub_274412C10(v26, v28, v30 & 1);

  return sub_274483F2C(v37, v36, v34, v35);
}

uint64_t sub_27447A880@<X0>(uint64_t a3@<X8>)
{
  v31 = sub_274639B2C();
  v38 = 0;
  sub_27447AA3C(v32);
  v29 = v32[1];
  v30 = v32[0];
  v8 = v33;
  v27 = v34;
  v28 = v32[2];
  v26 = v35;
  v9 = v36;
  LOBYTE(v32[0]) = v33;
  v37 = v36;
  v10 = v38;
  v11 = sub_27463AB4C();
  KeyPath = swift_getKeyPath();
  v13 = sub_27463A31C();
  sub_2746390AC();
  OUTLINED_FUNCTION_6_6();
  v38 = 0;
  v14 = sub_27463A38C();
  sub_2746390AC();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  LOBYTE(v32[0]) = 0;
  if (qword_280949280 != -1)
  {
    OUTLINED_FUNCTION_5_14(&qword_280949280);
  }

  v23 = qword_280965DC8;
  v24 = sub_27463ABDC();
  result = sub_27463A32C();
  *a3 = v31;
  *(a3 + 8) = 0x4018000000000000;
  *(a3 + 16) = v10;
  *(a3 + 24) = v30;
  *(a3 + 32) = v29;
  *(a3 + 40) = v28;
  *(a3 + 48) = v8;
  *(a3 + 56) = v27;
  *(a3 + 64) = v26;
  *(a3 + 72) = v9;
  *(a3 + 80) = KeyPath;
  *(a3 + 88) = v11;
  *(a3 + 96) = v13;
  *(a3 + 104) = v3;
  *(a3 + 112) = v4;
  *(a3 + 120) = v5;
  *(a3 + 128) = v6;
  *(a3 + 136) = 0;
  *(a3 + 144) = v14;
  *(a3 + 152) = v16;
  *(a3 + 160) = v18;
  *(a3 + 168) = v20;
  *(a3 + 176) = v22;
  *(a3 + 184) = 0;
  *(a3 + 192) = v24;
  *(a3 + 200) = result;
  return result;
}

uint64_t sub_27447AA3C@<X0>(uint64_t a3@<X8>)
{
  v17 = sub_27463AC2C();
  sub_274412BBC();

  v4 = sub_27463A53C();
  v6 = v5;
  v8 = v7;
  sub_27463A45C();
  v9 = sub_27463A50C();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_274412C10(v4, v6, v8 & 1);

  *a3 = v17;
  *(a3 + 8) = v9;
  *(a3 + 16) = v11;
  *(a3 + 24) = v13 & 1;
  *(a3 + 32) = v15;
  *(a3 + 40) = 0;
  *(a3 + 48) = 1;

  sub_27440B094(v9, v11, v13 & 1);

  sub_274412C10(v9, v11, v13 & 1);
}

void sub_27447AB98(uint64_t a2@<X8>)
{
  *a2 = sub_274639B2C();
  *(a2 + 8) = 0x4018000000000000;
  *(a2 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CC10, &qword_27464EA00);
  sub_27447AD14(a2 + *(v3 + 44));
  v4 = sub_27463AB4C();
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CC18, &qword_27464EA08);
  OUTLINED_FUNCTION_14_1();
  *v6 = KeyPath;
  v6[1] = v4;
  LOBYTE(v4) = sub_27463A31C();
  sub_2746390AC();
  OUTLINED_FUNCTION_6_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CC20, &qword_27464EA10);
  OUTLINED_FUNCTION_14_1();
  *v7 = v4;
  OUTLINED_FUNCTION_10_10(v7);
  LOBYTE(v4) = sub_27463A38C();
  sub_2746390AC();
  OUTLINED_FUNCTION_6_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CC28, &qword_27464EA18);
  OUTLINED_FUNCTION_14_1();
  *v8 = v4;
  OUTLINED_FUNCTION_10_10(v8);
  if (qword_280949280 != -1)
  {
    OUTLINED_FUNCTION_5_14(&qword_280949280);
  }

  v9 = qword_280965DC8;
  v10 = sub_27463ABDC();
  v11 = sub_27463A32C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CC30, &qword_27464EA20);
  OUTLINED_FUNCTION_14_1();
  *v12 = v10;
  *(v12 + 8) = v11;
}

uint64_t sub_27447AD14@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_27463A1FC();
  v3 = *(v2 - 8);
  v44 = v2;
  v45 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CC38, &qword_27464EA28);
  MEMORY[0x28223BE20](v41);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CC40, &qword_27464EA30);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v43 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v42 = sub_27463AC2C();
  v14 = [objc_opt_self() localizedHomeUpdateRequiredTitle];
  v15 = sub_27463B6AC();
  v17 = v16;

  v46 = v15;
  v47 = v17;
  sub_274412BBC();
  v18 = sub_27463A53C();
  v20 = v19;
  LOBYTE(v14) = v21;
  sub_27463A45C();
  v22 = sub_27463A50C();
  v37 = v23;
  v38 = v22;
  v39 = v24;
  v40 = v25;

  sub_274412C10(v18, v20, v14 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CC48, &qword_27464EA38);
  sub_274484214();
  sub_27463AD5C();
  v26 = sub_27463AB4C();
  KeyPath = swift_getKeyPath();
  v46 = v26;
  v28 = sub_27463930C();
  v29 = &v7[*(v41 + 36)];
  *v29 = KeyPath;
  v29[1] = v28;
  sub_27463A1EC();
  sub_274484408();
  sub_27447FCA0(&qword_28094CCB0, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
  v30 = v44;
  sub_27463A69C();
  (*(v45 + 8))(v5, v30);
  sub_27440CB1C(v7, &qword_28094CC38, &qword_27464EA28);
  v31 = &v13[*(v9 + 44)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CCB8, &qword_27464EA98);
  sub_27463974C();
  *v31 = swift_getKeyPath();
  v32 = v43;
  sub_274412C20(v13, v43, &qword_28094CC40, &qword_27464EA30);
  v34 = v37;
  v33 = v38;
  *a1 = v42;
  *(a1 + 8) = v33;
  *(a1 + 16) = v34;
  LOBYTE(v31) = v39 & 1;
  *(a1 + 24) = v39 & 1;
  *(a1 + 32) = v40;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CCC0, &qword_27464EAD0);
  sub_274412C20(v32, a1 + *(v35 + 80), &qword_28094CC40, &qword_27464EA30);

  sub_27440B094(v33, v34, v31);

  sub_27440CB1C(v13, &qword_28094CC40, &qword_27464EA30);
  sub_27440CB1C(v32, &qword_28094CC40, &qword_27464EA30);
  sub_274412C10(v33, v34, v31);
}

id sub_27447B1B4()
{
  v0 = sub_274638DAC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274638C2C();
  v4 = sub_274638D9C();
  v5 = sub_27463BC1C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2743F0000, v4, v5, "Attempting migration to HH2", v6, 2u);
    MEMORY[0x277C5A270](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return [objc_opt_self() updateHomeToHH2];
}

uint64_t sub_27447B30C@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() localizedHomeUpdateRequiredButtonLabel];
  sub_27463B6AC();

  sub_274412BBC();
  v3 = sub_27463A53C();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_27463A45C();
  KeyPath = swift_getKeyPath();
  v12 = v7 & 1;
  v13 = sub_27463AB8C();
  result = swift_getKeyPath();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v12;
  *(a1 + 24) = v9;
  *(a1 + 32) = 257;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = v10;
  *(a1 + 56) = result;
  *(a1 + 64) = v13;
  return result;
}

void sub_27447B400(uint64_t a1)
{
  OUTLINED_FUNCTION_45_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C7E0, &qword_27464E318);
  OUTLINED_FUNCTION_53_0(v5);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v6);
  v8 = v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C7E8, &qword_27464E320) - 8;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v10);
  v12 = v24 - v11;
  *v8 = sub_274639C5C();
  *(v8 + 1) = 0x4030000000000000;
  v8[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C7F0, &qword_27464E328);
  sub_27447B594(v2, &v8[*(v13 + 44)]);
  sub_27463B0CC();
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_27_3(v14, v15, v16, v17, v18, v19, v20, v21, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5]);
  sub_27441277C(v8, v12, &qword_28094C7E0, &qword_27464E318);
  memcpy(&v12[*(v9 + 44)], v24, 0x70uLL);
  v22 = sub_27463A32C();
  sub_2746390AC();
  OUTLINED_FUNCTION_6_6();
  sub_27441277C(v12, v4, &qword_28094C7E8, &qword_27464E320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C7F8, &unk_27464E330);
  OUTLINED_FUNCTION_14_1();
  *v23 = v22;
  OUTLINED_FUNCTION_10_10(v23);
  OUTLINED_FUNCTION_44_1();
}

uint64_t sub_27447B594@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v54 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809493A0, &unk_274646750);
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v49 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C808, &qword_27464E340);
  MEMORY[0x28223BE20](v4 - 8);
  v53 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v55 = &v49 - v8;
  if (!a1)
  {
    sub_27463B70C("This action could not be found in this version of Shortcuts.", 60, v7);
    if (qword_2809492C0 != -1)
    {
      swift_once();
    }

    v15 = qword_28094BB00;
    v16 = sub_27463B66C();
    v17 = sub_27463B66C();

    v9 = [v15 localizedStringForKey:v16 value:v17 table:0];

    v18 = sub_27463B6AC();
LABEL_8:
    v12 = v18;
    v14 = v19;

    goto LABEL_9;
  }

  v9 = a1;
  v10 = [v9 wf:0 localizedErrorStringWithActionName:?];
  if (v10)
  {
    v11 = v10;
    v12 = sub_27463B6AC();
    v14 = v13;

    goto LABEL_9;
  }

  v18 = sub_2744A089C(v9);
  if (v19)
  {
    goto LABEL_8;
  }

  v47 = [v9 localizedDescription];
  v12 = sub_27463B6AC();
  v14 = v48;

LABEL_9:
  v57 = v12;
  v58 = v14;
  sub_274412BBC();
  v20 = sub_27463A53C();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  KeyPath = swift_getKeyPath();
  v27 = sub_27463A31C();
  sub_2746390AC();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = v24 & 1;
  v70 = v24 & 1;
  v69 = 0;
  v37 = 1;
  v38 = v52;
  if (!a1)
  {
    v39 = v49;
    sub_27463AD5C();
    (*(v50 + 32))(v55, v39, v38);
    v37 = 0;
  }

  v40 = v55;
  __swift_storeEnumTagSinglePayload(v55, v37, 1, v38);
  v41 = v53;
  sub_274412C20(v40, v53, &qword_28094C808, &qword_27464E340);
  __src[0] = v20;
  __src[1] = v22;
  LOBYTE(__src[2]) = v36;
  __src[3] = v26;
  v42 = KeyPath;
  __src[4] = KeyPath;
  LOBYTE(__src[5]) = 1;
  LODWORD(v52) = v36;
  v43 = v27;
  LOBYTE(__src[6]) = v27;
  __src[7] = v29;
  __src[8] = v31;
  __src[9] = v33;
  __src[10] = v35;
  LOBYTE(__src[11]) = 0;
  v44 = v54;
  memcpy(v54, __src, 0x59uLL);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C810, &qword_27464E348);
  sub_274412C20(v41, v44 + *(v45 + 48), &qword_28094C808, &qword_27464E340);
  sub_274412C20(__src, &v57, &qword_28094C818, &qword_27464E350);
  sub_27440CB1C(v40, &qword_28094C808, &qword_27464E340);
  sub_27440CB1C(v41, &qword_28094C808, &qword_27464E340);
  v57 = v20;
  v58 = v22;
  v59 = v52;
  v60 = v26;
  v61 = v42;
  v62 = 1;
  v63 = v43;
  v64 = v29;
  v65 = v31;
  v66 = v33;
  v67 = v35;
  v68 = 0;
  return sub_27440CB1C(&v57, &qword_28094C818, &qword_27464E350);
}

void sub_27447BAB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949E10, &unk_274648610);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = [objc_opt_self() sharedContext];
  sub_27463B6AC();
  sub_274637E1C();

  v4 = sub_274637E2C();
  if (__swift_getEnumTagSinglePayload(v2, 1, v4) == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = sub_274637DFC();
    (*(*(v4 - 8) + 8))(v2, v4);
    sub_2744820AC(v5, 0xD000000000000015, 0x800000027468A110, 0, 0, v3);
  }
}

uint64_t sub_27447BC00@<X0>(uint64_t a1@<X8>)
{
  sub_27463B70C("Update Shortcuts", 16);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v2 = qword_28094BB00;
  v3 = sub_27463B66C();
  v4 = sub_27463B66C();

  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  sub_27463B6AC();
  sub_274412BBC();
  result = sub_27463A53C();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

void sub_27447BD28(uint64_t a1)
{
  OUTLINED_FUNCTION_45_1();
  v56 = v1;
  v60 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C770, &qword_27464E270);
  OUTLINED_FUNCTION_53_0(v3);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v50 - v5;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C778, &qword_27464E278) - 8;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v8);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C780, &qword_27464E280) - 8;
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_0();
  v59 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_26_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_15_4(v12);
  v13 = sub_27463AF6C();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_0();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A8D0, &qword_274649750);
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_26_4();
  MEMORY[0x28223BE20](v22);
  v24 = &v50 - v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12_3(v26);
  sub_27463AF5C();
  v27 = sub_27463A33C();
  v28 = [objc_opt_self() systemShortcutsUserDefaults];
  v29 = sub_27463B66C();
  [v28 BOOLForKey_];

  sub_2746390AC();
  OUTLINED_FUNCTION_6_6();
  (*(v15 + 32))(v24, v19, v13);
  v30 = &v24[*(v21 + 44)];
  *v30 = v27;
  OUTLINED_FUNCTION_10_10(v30);
  v31 = v51;
  sub_27441277C(v24, v51, &qword_28094A8D0, &qword_274649750);
  *v6 = sub_274639C5C();
  *(v6 + 1) = 0x4030000000000000;
  v6[16] = 0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C788, &qword_27464E288);
  sub_27447C218(v56, &v6[*(v32 + 44)]);
  sub_27463B0CC();
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_27_3(v33, v34, v35, v36, v37, v38, v39, v40, v50, v51, v52, v53, v54, v55);
  v41 = v54;
  sub_27441277C(v6, v54, &qword_28094C770, &qword_27464E270);
  memcpy((v41 + *(v57 + 44)), v61, 0x70uLL);
  LOBYTE(v6) = sub_27463A32C();
  sub_2746390AC();
  OUTLINED_FUNCTION_6_6();
  v42 = v41;
  v43 = v53;
  sub_27441277C(v42, v53, &qword_28094C778, &qword_27464E278);
  v44 = (v43 + *(v58 + 44));
  *v44 = v6;
  OUTLINED_FUNCTION_10_10(v44);
  v45 = v55;
  sub_27441277C(v43, v55, &qword_28094C780, &qword_27464E280);
  v46 = v52;
  sub_274412C20(v31, v52, &qword_28094A8D0, &qword_274649750);
  v47 = v59;
  sub_274412C20(v45, v59, &qword_28094C780, &qword_27464E280);
  v48 = v60;
  sub_274412C20(v46, v60, &qword_28094A8D0, &qword_274649750);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C790, &qword_27464E290);
  sub_274412C20(v47, v48 + *(v49 + 48), &qword_28094C780, &qword_27464E280);
  sub_27440CB1C(v45, &qword_28094C780, &qword_27464E280);
  sub_27440CB1C(v31, &qword_28094A8D0, &qword_274649750);
  sub_27440CB1C(v47, &qword_28094C780, &qword_27464E280);
  sub_27440CB1C(v46, &qword_28094A8D0, &qword_274649750);
  OUTLINED_FUNCTION_44_1();
}

uint64_t sub_27447C218@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C798, &qword_27464E298);
  MEMORY[0x28223BE20](v3 - 8);
  v55 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v8 = &v44 - v7;
  if (![a1 wf_isUnsupportedOnPlatformError])
  {
    v14 = sub_2744A089C(a1);
    if (v15)
    {
      v11 = v14;
      v13 = v15;
      goto LABEL_6;
    }

LABEL_7:
    v53 = 0;
    v52 = 0;
    v51 = 0;
    KeyPath = 0;
    v49 = 0;
    v30 = 0;
    v20 = 0;
    v70 = 0;
    v23 = 0;
    v25 = 0;
    v27 = 0;
    v29 = 0;
    goto LABEL_8;
  }

  v9 = [a1 wf:0 localizedErrorStringWithActionName:?];
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = v9;
  v11 = sub_27463B6AC();
  v13 = v12;

LABEL_6:
  v57 = v11;
  v58 = v13;
  sub_274412BBC();

  v53 = sub_27463A53C();
  v52 = v16;
  v18 = v17;
  v51 = v19;
  KeyPath = swift_getKeyPath();
  LOBYTE(v57) = v18 & 1;
  v20 = v18 & 1;
  v21 = sub_27463A31C();
  sub_2746390AC();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v70 = 0;
  v49 = v21;
  v30 = 1;
LABEL_8:
  v46 = v20;
  v48 = v30 << 8;
  v31 = v30;
  v47 = v30;
  *v8 = sub_274639B2C();
  *(v8 + 1) = 0x4024000000000000;
  v8[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C7A0, &unk_27464E2A0);
  v32 = v8;
  v57 = sub_27447C718(a1);
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a1;
  v33 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C7A8, &qword_27464E2C8);
  type metadata accessor for ActionResourceErrorButton(0);
  sub_27440CA78(&qword_28094C7B0, &qword_28094C7A8, &qword_27464E2C8, MEMORY[0x277D83980]);
  sub_274482708();
  sub_27447FCA0(&qword_28094C7C0, type metadata accessor for ActionResourceErrorButton, &unk_27464E8E0);
  v45 = v8;
  sub_27463AF7C();
  v34 = v55;
  sub_274412C20(v32, v55, &qword_28094C798, &qword_27464E298);
  v35 = v53;
  __src[0] = v53;
  v36 = v52;
  __src[1] = v52;
  __src[2] = v20;
  v37 = v51;
  __src[3] = v51;
  v38 = v48;
  __src[4] = v48;
  v39 = KeyPath;
  __src[5] = KeyPath;
  __src[6] = v31;
  v40 = v49;
  __src[7] = v49;
  __src[8] = v23;
  __src[9] = v25;
  __src[10] = v27;
  __src[11] = v29;
  LOBYTE(__src[12]) = 0;
  v41 = v54;
  memcpy(v54, __src, 0x61uLL);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C7C8, &qword_27464E2D0);
  sub_274412C20(v34, v41 + *(v42 + 48), &qword_28094C798, &qword_27464E298);
  sub_274412C20(__src, &v57, &qword_28094C7D0, &qword_27464E2D8);
  sub_27440CB1C(v45, &qword_28094C798, &qword_27464E298);
  sub_27440CB1C(v34, &qword_28094C798, &qword_27464E298);
  v57 = v35;
  v58 = v36;
  v59 = v46;
  v60 = v37;
  v61 = v38;
  v62 = v39;
  v63 = v47;
  v64 = v40;
  v65 = v23;
  v66 = v25;
  v67 = v27;
  v68 = v29;
  v69 = 0;
  return sub_27440CB1C(&v57, &qword_28094C7D0, &qword_27464E2D8);
}

uint64_t sub_27447C718(void *a1)
{
  v1 = sub_274482140(a1);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v3 = *(v2 + 16);
  if (v3)
  {
    v15 = MEMORY[0x277D84F90];
    result = sub_2744513FC(0, v3, 0);
    v5 = 0;
    v6 = v15;
    v14 = *(v2 + 16);
    v7 = (v2 + 40);
    while (v14 != v5)
    {
      if (v5 >= *(v2 + 16))
      {
        goto LABEL_15;
      }

      v8 = v3;
      v10 = *(v7 - 1);
      v9 = *v7;
      v12 = *(v15 + 16);
      v11 = *(v15 + 24);

      if (v12 >= v11 >> 1)
      {
        result = sub_2744513FC((v11 > 1), v12 + 1, 1);
      }

      *(v15 + 16) = v12 + 1;
      v13 = (v15 + 24 * v12);
      v13[4] = v10;
      v13[5] = v9;
      v13[6] = v5++;
      v7 += 2;
      v3 = v8;
      if (v8 == v5)
      {

        return v6;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

double sub_27447C854@<D0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C7D8, &qword_27464E310);
  MEMORY[0x28223BE20](v6);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v23 - v10;
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  *a3 = a2;
  *(a3 + 8) = v12;
  *(a3 + 16) = v13;
  *(a3 + 24) = v14;
  *(a3 + 32) = swift_getKeyPath();
  *(a3 + 40) = 0;
  type metadata accessor for WorkflowEditorOptions(0);
  sub_27447FCA0(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
  v15 = a2;

  *(a3 + 48) = sub_27463979C();
  *(a3 + 56) = v16;
  v17 = type metadata accessor for ActionResourceErrorButton(0);
  v18 = sub_2746386EC();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v18);
  sub_274412C20(v11, v8, &qword_28094C7D8, &qword_27464E310);
  sub_27463ACDC();
  sub_27440CB1C(v11, &qword_28094C7D8, &qword_27464E310);
  v19 = a3 + *(v17 + 36);
  type metadata accessor for CGRect(0);
  memset(v23, 0, sizeof(v23));
  sub_27463ACDC();
  v20 = v26;
  result = *&v24;
  v22 = v25;
  *v19 = v24;
  *(v19 + 16) = v22;
  *(v19 + 32) = v20;
  return result;
}

BOOL sub_27447CA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4 && a2 == a5)
  {
    return a3 == a6;
  }

  v9 = sub_27463C6BC();
  result = 0;
  if (v9)
  {
    return a3 == a6;
  }

  return result;
}

uint64_t sub_27447CAC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_27463C74C();
  sub_27463B71C();
  MEMORY[0x277C58EA0](a3);
  return sub_27463C7AC();
}

uint64_t sub_27447CB44(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_27463C74C();
  sub_27463B71C();
  MEMORY[0x277C58EA0](v2);
  return sub_27463C7AC();
}

uint64_t sub_27447CBC8@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CBC8, &qword_27464E9C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v38 - v3;
  v5 = type metadata accessor for ActionResourceErrorButton(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809493A0, &unk_274646750);
  v9 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CBD0, &qword_27464E9C8);
  v39 = *(v12 - 8);
  v40 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  sub_274483F70(v1, &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActionResourceErrorButton);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_274480BE8(&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for ActionResourceErrorButton);
  v42 = v1;
  sub_27463AD5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CAC8, &unk_27464E770);
  sub_27463AD0C();
  sub_2746386EC();
  sub_27440CA78(&unk_2809493B0, &unk_2809493A0, &unk_274646750, MEMORY[0x277CDF028]);
  sub_27447FCA0(&unk_28094CBE0, MEMORY[0x277D7D2C8], MEMORY[0x277D7D2D0]);
  v17 = v38;
  sub_27463A8EC();
  sub_27440CB1C(v4, &qword_28094CBC8, &qword_27464E9C0);
  (*(v9 + 8))(v11, v17);
  v18 = v1 + *(v6 + 44);
  v19 = *(v18 + 32);
  v20 = *(v18 + 16);
  v43 = *v18;
  v44 = v20;
  v45 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280950E40, &qword_27464E9D0);
  sub_27463AD0C();
  v21 = *(v1 + 48);
  if (v21)
  {
    v22 = v21 + OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_coordinateSpaceDelegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v23 = *(v22 + 8);
      ObjectType = swift_getObjectType();
      v25 = (*(v23 + 8))(ObjectType, v23);
      v27 = v26;
      swift_unknownObjectRelease();
    }

    else
    {
      v25 = 0;
      v27 = 0xE000000000000000;
    }

    v28 = swift_allocObject();
    *(v28 + 16) = v25;
    *(v28 + 24) = v27;
    v29 = sub_27463B0CC();
    v31 = v30;
    v32 = v41;
    (*(v39 + 32))(v41, v14, v40);
    v33 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CBF0, &qword_27464E9D8) + 36));
    *v33 = sub_274484000;
    v33[1] = v28;
    v33[2] = v29;
    v33[3] = v31;
    v34 = swift_allocObject();
    v35 = v47;
    v34[1] = v46;
    v34[2] = v35;
    v34[3] = v48;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CBF8, qword_27464E9E0);
    v37 = (v32 + *(result + 36));
    *v37 = sub_274484054;
    v37[1] = v34;
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_27447FCA0(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_27447D198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v42 = a3;
  v5 = type metadata accessor for ActionResourceErrorButton(0);
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_274639ABC();
  v40 = *(v7 - 8);
  *&v8 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v4;
  v12 = [*v4 userInfo];
  v13 = sub_27463B4CC();

  v14 = sub_27463B6AC();
  sub_27452F288(v14, v15, v13, &aBlock);

  if (!*(&v44 + 1))
  {
    return sub_27440CB1C(&aBlock, &unk_28094A230, &qword_27464D1B0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CC08, &qword_27464E9F8);
  result = swift_dynamicCast();
  if (result)
  {
    v17 = *(v4 + 48);
    if (v17)
    {
      v18 = v47;
      v19 = v17 + OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_coordinateSpaceDelegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v39 = v18;
        v20 = *(v19 + 8);
        ObjectType = swift_getObjectType();
        v22 = v4 + *(v5 + 36);
        v23 = *(v22 + 32);
        v24 = *(v22 + 16);
        aBlock = *v22;
        v44 = v24;
        v45 = v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280950E40, &qword_27464E9D0);
        sub_27463ACEC();
        v25 = (*(v20 + 16))(ObjectType, v20, v47, v48, v49, v50);
        v27 = v26;
        v29 = v28;
        v31 = v30;
        swift_unknownObjectRelease();
        v32 = sub_27447D850(v11, v25, v27, v29, v31);
        v33 = sub_274637D5C();
        v34 = *(v4 + 32);
        if (*(v4 + 40) == 1)
        {
          swift_unknownObjectRetain();
        }

        else
        {

          sub_27463BC0C();
          v35 = sub_27463A2FC();
          sub_274638CEC();

          sub_274639AAC();
          swift_getAtKeyPath();
          sub_274482198(v34, 0);
          (*(v40 + 8))(v10, v7);
          v34 = aBlock;
        }

        sub_274483F70(v4, &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActionResourceErrorButton);
        v36 = (*(v41 + 80) + 16) & ~*(v41 + 80);
        v37 = swift_allocObject();
        sub_274480BE8(&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v37 + v36, type metadata accessor for ActionResourceErrorButton);
        v45 = sub_27448419C;
        v46 = v37;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v44 = sub_2744458C4;
        *(&v44 + 1) = &block_descriptor_300;
        v38 = _Block_copy(&aBlock);

        [*&v39 attemptRecoveryFromError:v33 optionIndex:v42 userInterface:v34 completionHandler:v38];
        _Block_release(v38);
        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }

    else
    {
      type metadata accessor for WorkflowEditorOptions(0);
      sub_27447FCA0(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
      result = sub_27463978C();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_27447D6C0@<X0>(uint64_t a2@<X8>)
{
  sub_274412BBC();

  v3 = sub_27463A53C();
  v5 = v4;
  v7 = v6;
  v8 = sub_27463A4FC();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_274412C10(v3, v5, v7 & 1);

  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  return result;
}

uint64_t sub_27447D784(uint64_t a1)
{
  v2 = sub_2746386EC();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_27463AADC();
}

id sub_27447D850(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = [a1 userInfo];
  v11 = MEMORY[0x277D837D0];
  v12 = sub_27463B4CC();

  sub_27463B6AC();
  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  v13 = NSStringFromCGRect(v28);
  v14 = sub_27463B6AC();
  v16 = v15;

  v27 = v11;
  *&v26 = v14;
  *(&v26 + 1) = v16;
  sub_274464A50(&v26, &v25);
  swift_isUniquelyReferenced_nonNull_native();
  sub_2745FC4FC();

  v17 = v12;
  v18 = [a1 domain];
  v19 = sub_27463B6AC();
  v21 = v20;

  v22 = [a1 code];
  v23 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  return sub_274480674(v19, v21, v22, v17);
}

uint64_t sub_27447D9E8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C7D8, &qword_27464E310);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  if (a2)
  {
    sub_274637D5C();
    sub_2746386FC();
    v9 = sub_2746386EC();
    v10 = 0;
  }

  else
  {
    v9 = sub_2746386EC();
    v10 = 1;
  }

  __swift_storeEnumTagSinglePayload(v8, v10, 1, v9);
  type metadata accessor for ActionResourceErrorButton(0);
  sub_274412C20(v8, v5, &qword_28094C7D8, &qword_27464E310);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CAC8, &unk_27464E770);
  sub_27463ACFC();
  return sub_27440CB1C(v8, &qword_28094C7D8, &qword_27464E310);
}

uint64_t sub_27447DB38()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_27463983C();
  *v0 = result;
  return result;
}

uint64_t sub_27447DB90@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v5 = sub_274639ABC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D000, &qword_2746487E0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_274412C20(v2 + *(a2 + 36), &v15 - v10, &qword_28094D000, &qword_2746487E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_27463918C();
    return (*(*(v12 - 8) + 32))(a1, v11, v12);
  }

  else
  {
    sub_27463BC0C();
    v14 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_27447DD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v4 = sub_27463918C();
  v102 = *(v4 - 8);
  v103 = v4;
  MEMORY[0x28223BE20](v4);
  v101 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v100 = &v91 - v7;
  v99 = sub_27463970C();
  MEMORY[0x28223BE20](v99);
  v105 = (&v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C5C8, &qword_27464E020);
  MEMORY[0x28223BE20](v107);
  v106 = &v91 - v9;
  v10 = *(a1 + 16);
  v11 = *(v10 - 8);
  v115 = a1;
  v116 = v11;
  MEMORY[0x28223BE20](v12);
  v110 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v114 = &v91 - v15;
  MEMORY[0x28223BE20](v16);
  v111 = &v91 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C5D0, &qword_27464E028);
  v18 = sub_27463965C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v109 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v104 = &v91 - v22;
  MEMORY[0x28223BE20](v23);
  v108 = &v91 - v24;
  v25 = sub_27463965C();
  v98 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v91 - v29;
  v123 = v31;
  v121 = v18;
  v32 = sub_274639DEC();
  v113 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v34 = &v91 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v112 = &v91 - v36;
  v119 = v37;
  v124 = v10;
  v120 = sub_274639DEC();
  MEMORY[0x28223BE20](v120);
  v117 = &v91 - v39;
  v40 = *v2;
  if (*v2)
  {
    v118 = v38;
    swift_getKeyPath();
    swift_getKeyPath();
    v41 = v40;
    sub_274638FAC();

    v42 = v153;
    v43 = MEMORY[0x277CDF760];
    if (v159 == 1)
    {
      v92 = v19;
      v93 = v34;
      v94 = v158;
      v95 = v157;
      v96 = v156;
      v110 = v155;
      v114 = v154;
      sub_274412734(0, &qword_28094C5E0, 0x277D82BB8);
      v44 = v115;
      v45 = sub_27463BF7C();
      v46 = *(v44 + 44);
      v97 = v42;
      if (v45)
      {
        sub_27463AB6C();
        sub_27463ABAC();

        v47 = *(v44 + 24);
        sub_27463A98C();

        v127 = v47;
        v128 = MEMORY[0x277CDF760];
        v48 = v123;
        swift_getWitnessTable();
        sub_2744E9688();
        v49 = *(v98 + 8);
        v49(v27, v48);
        sub_2744E9688();
        v50 = sub_27440CA78(&qword_28094C5D8, &qword_28094C5D0, &qword_27464E028, MEMORY[0x277CDFC88]);
        v125 = v47;
        v126 = v50;
        swift_getWitnessTable();
        v51 = v112;
        sub_27456E7CC();
        v49(v27, v48);
        v49(v30, v48);
      }

      else
      {
        (*(v116 + 16))(v111, v2 + v46, v124);
        v59 = *(v99 + 20);
        v60 = *MEMORY[0x277CE0118];
        v61 = sub_274639BFC();
        v62 = v105;
        (*(*(v61 - 8) + 104))(&v105->i8[v59], v60, v61);
        *v62 = vdupq_n_s64(0x403B800000000000uLL);
        v63 = v100;
        sub_27447DB90(v100, v44);
        v65 = v101;
        v64 = v102;
        v66 = v103;
        (*(v102 + 104))(v101, *MEMORY[0x277CDF3D0], v103);
        LOBYTE(v60) = sub_27463917C();
        v67 = *(v64 + 8);
        v67(v65, v66);
        v67(v63, v66);
        if (v60)
        {
          sub_27463AB8C();
        }

        else
        {
          sub_27463AB6C();
        }

        v68 = sub_27463ABAC();
        v69 = v121;

        KeyPath = swift_getKeyPath();
        v71 = v106;
        sub_274480BE8(v62, v106, MEMORY[0x277CDFC08]);
        v72 = (v71 + *(v107 + 36));
        *v72 = KeyPath;
        v72[1] = v68;
        v47 = *(v44 + 24);
        sub_274481F68();
        sub_27463B0CC();
        v73 = v104;
        v74 = v124;
        v75 = v111;
        sub_27463A9CC();
        sub_27440CB1C(v71, &qword_28094C5C8, &qword_27464E020);
        (*(v116 + 8))(v75, v74);
        v76 = sub_27440CA78(&qword_28094C5D8, &qword_28094C5D0, &qword_27464E028, MEMORY[0x277CDFC88]);
        v137 = v47;
        v138 = v76;
        swift_getWitnessTable();
        v77 = v108;
        sub_2744E9688();
        v78 = *(v92 + 8);
        v78(v73, v69);
        v79 = v109;
        sub_2744E9688();
        v135 = v47;
        v136 = MEMORY[0x277CDF760];
        swift_getWitnessTable();
        v51 = v112;
        sub_27456E878();
        v78(v79, v69);
        v78(v77, v69);
      }

      v57 = v117;
      v133 = v47;
      v134 = MEMORY[0x277CDF760];
      WitnessTable = swift_getWitnessTable();
      v81 = sub_27440CA78(&qword_28094C5D8, &qword_28094C5D0, &qword_27464E028, MEMORY[0x277CDFC88]);
      v131 = v47;
      v132 = v81;
      v82 = swift_getWitnessTable();
      v129 = WitnessTable;
      v130 = v82;
      v83 = v119;
      swift_getWitnessTable();
      v84 = v93;
      sub_2744E9688();
      sub_27456E7CC();
      sub_27443C9D4(v97, v114, v110, v96, v95, v94, 1);
      v85 = *(v113 + 8);
      v85(v84, v83);
      v85(v51, v83);
      v43 = MEMORY[0x277CDF760];
    }

    else
    {
      sub_27443C9D4(v153, v154, v155, v156, v157, v158, v159);
      v47 = *(v115 + 24);
      v52 = v124;
      sub_2744E9688();
      v53 = v110;
      sub_2744E9688();
      v151 = v47;
      v152 = v43;
      v54 = swift_getWitnessTable();
      v55 = sub_27440CA78(&qword_28094C5D8, &qword_28094C5D0, &qword_27464E028, MEMORY[0x277CDFC88]);
      v149 = v47;
      v150 = v55;
      v56 = swift_getWitnessTable();
      v147 = v54;
      v148 = v56;
      swift_getWitnessTable();
      v57 = v117;
      sub_27456E878();
      v58 = *(v116 + 8);
      v58(v53, v52);
      v58(v114, v52);
    }

    v145 = v47;
    v146 = v43;
    v86 = swift_getWitnessTable();
    v87 = sub_27440CA78(&qword_28094C5D8, &qword_28094C5D0, &qword_27464E028, MEMORY[0x277CDFC88]);
    v143 = v47;
    v144 = v87;
    v88 = swift_getWitnessTable();
    v141 = v86;
    v142 = v88;
    v139 = swift_getWitnessTable();
    v140 = v47;
    v89 = v120;
    swift_getWitnessTable();
    sub_2744E9688();
    return (*(v118 + 8))(v57, v89);
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_27447FCA0(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_27447EB8C()
{
  sub_274482828();
  sub_274639ACC();
  return v1;
}

uint64_t sub_27447EC04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_274639ABC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  KeyPath = swift_getKeyPath();
  *(v20 + 11) = *(v2 + 19);
  v20[0] = *(v2 + 8);
  if (BYTE10(v20[1]) == 1)
  {
    v10 = *(&v20[0] + 1);
    v11 = *(&v20[0] + 1);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  else
  {

    sub_27463BC0C();
    v12 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_27440CB1C(v20, &qword_28094C608, &qword_27464E0B0);
    (*(v6 + 8))(v8, v5);
    v10 = v19;
    if (!v19)
    {
LABEL_7:
      v14 = 0;
      goto LABEL_8;
    }
  }

  sub_274412734(0, &qword_28094C5E0, 0x277D82BB8);
  v13 = sub_27463BF7C();

  if ((v13 & 1) == 0)
  {
    goto LABEL_7;
  }

  v14 = 1;
LABEL_8:
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C610, &qword_27464E0B8);
  (*(*(v15 - 8) + 16))(a2, a1, v15);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C618, &qword_27464E0C0);
  v17 = a2 + *(result + 36);
  *v17 = KeyPath;
  *(v17 + 8) = v14;
  return result;
}

uint64_t sub_27447EE50()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_27447EB8C();
  *v0 = result & 1;
  return result;
}

uint64_t sub_27447EEA4()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_27452F63C();
  *v0 = result;
  *(v0 + 8) = v2;
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  return result;
}

uint64_t sub_27447EED4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = *(a1 + 12);
  v5 = v2;
  return sub_27452F680(v1, v2, v3, v4);
}

uint64_t sub_27447EF64@<X0>(uint64_t (**a1)()@<X8>)
{
  v2 = sub_27447EFC8();
  if (v3)
  {
    v4 = 0;
    result = 0;
  }

  else
  {
    v6 = v2;
    result = swift_allocObject();
    *(result + 16) = v6;
    v4 = sub_2744820A4;
  }

  *a1 = v4;
  a1[1] = result;
  return result;
}

uint64_t sub_27447EFC8()
{
  v1 = sub_274639ABC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v17 + 11) = *(v0 + 19);
  v17[0] = *(v0 + 8);
  if (BYTE10(v17[1]) != 1)
  {

    sub_27463BC0C();
    v12 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_27440CB1C(v17, &qword_28094C608, &qword_27464E0B0);
    (*(v2 + 8))(v4, v1);
    v5 = v14;
    v6 = v15;
    v7 = v16;
    if (v14)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v5 = *(&v17[0] + 1);
  v6 = *&v17[1];
  v7 = BYTE8(v17[1]);
  v8 = *(&v17[0] + 1);
  if (!v5)
  {
    return 0;
  }

LABEL_3:
  v9 = *v0;

  v10 = 0x3FF0000000000000;
  if (!v6)
  {
    v10 = 0;
  }

  if ((v7 & 1) == 0)
  {
    v10 = v6;
  }

  if (v9 == v5)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

__n128 sub_27447F180@<Q0>(uint64_t a1@<X8>)
{
  if (qword_280949280 != -1)
  {
    swift_once();
  }

  v3 = qword_280965DC8;
  v4 = sub_27463ABDC();
  sub_2746393BC();
  sub_27463B0CC();
  sub_2746392FC();
  *&v6[6] = v7;
  *&v6[22] = v8;
  *&v6[38] = v9;
  *(a1 + 10) = *v6;
  *a1 = v4;
  *(a1 + 8) = 256;
  *(a1 + 26) = *&v6[16];
  result = *&v6[32];
  *(a1 + 42) = *&v6[32];
  *(a1 + 56) = *(&v9 + 1);
  return result;
}

uint64_t sub_27447F28C()
{
  v1 = sub_274639ABC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 8);
  if (*(v0 + 16) != 1)
  {

    sub_27463BC0C();
    v6 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_27447F3D4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_274639ABC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D000, &qword_2746487E0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ActionShadowView(0);
  sub_274412C20(v1 + *(v10 + 24), v9, &qword_28094D000, &qword_2746487E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_27463918C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_27463BC0C();
    v13 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void ActionShadowView.body.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_45_1();
  v39 = v3;
  v36 = sub_27463918C();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19();
  v11 = v10;
  v12 = sub_27463970C();
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_0();
  v16 = (v15 - v14);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E400, &qword_274652600);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_75();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C440, &qword_27464D6D0);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v18);
  v20 = &v36 - v19;
  v21 = *(v13 + 28);
  v22 = *MEMORY[0x277CE0118];
  sub_274639BFC();
  OUTLINED_FUNCTION_7();
  v24 = (*(v23 + 104))(&v16->i8[v21], v22);
  *v16 = vdupq_n_s64(0x403B800000000000uLL);
  sub_27447F988(v24);
  sub_27463AB7C();
  LOBYTE(v21) = sub_27463AB3C();

  if (v21)
  {
    v25 = sub_27463AB7C();
  }

  else
  {
    sub_27447F3D4(v11);
    v26 = v36;
    (*(v5 + 104))(v8, *MEMORY[0x277CDF3D0], v36);
    v27 = sub_27463917C();
    v28 = *(v5 + 8);
    v28(v8, v26);
    v28(v11, v26);
    if (v27)
    {
      v25 = sub_27463AB8C();
    }

    else
    {
      v25 = sub_27463AB6C();
    }
  }

  v29 = v25;
  sub_274480BE8(v16, v2, MEMORY[0x277CDFC08]);
  v30 = v37;
  *(v2 + *(v37 + 52)) = v29;
  *(v2 + *(v30 + 56)) = 256;
  LOBYTE(v29) = sub_27463A32C();
  sub_2746390AC();
  OUTLINED_FUNCTION_6_6();
  sub_27441277C(v2, v20, &qword_28094E400, &qword_274652600);
  v31 = &v20[*(v38 + 36)];
  *v31 = v29;
  OUTLINED_FUNCTION_10_10(v31);
  v33 = sub_27447F988(v32);
  v34 = v39;
  sub_27441277C(v20, v39, &qword_28094C440, &qword_27464D6D0);
  v35 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C448, &qword_27464D6D8) + 36);
  *v35 = v33;
  *(v35 + 8) = xmmword_27464D560;
  *(v35 + 24) = 0x4010000000000000;
  OUTLINED_FUNCTION_44_1();
}

uint64_t sub_27447F988(uint64_t a1)
{
  if (*v1 == 1)
  {

    return sub_27463AB7C();
  }

  else
  {
    if (sub_27447F28C())
    {
      if (qword_280949280 != -1)
      {
        OUTLINED_FUNCTION_5_14(&qword_280949280);
      }

      v3 = qword_280965DC8;
      sub_27463ABDC();
    }

    else
    {
      sub_27463AB6C();
    }

    v4 = sub_27463ABAC();

    return v4;
  }
}

uint64_t sub_27447FAAC(uint64_t a1)
{
  v2 = type metadata accessor for RectangleGroupBoxStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27447FB28()
{
  result = qword_28094C3A8;
  if (!qword_28094C3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C310, &qword_27464D5A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C300, &qword_27464D590);
    type metadata accessor for RectangleGroupBoxStyle(255);
    sub_27440CA78(&qword_28094C390, &qword_28094C300, &qword_27464D590, MEMORY[0x277CDF118]);
    sub_27447FCA0(&qword_28094C398, type metadata accessor for RectangleGroupBoxStyle, &unk_274649A80);
    swift_getOpaqueTypeConformance2();
    sub_27440CA78(&qword_28094C3B0, &qword_28094C3A0, &qword_27464D648, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C3A8);
  }

  return result;
}

uint64_t sub_27447FCA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_27447FCE8(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_27447FCF4(BOOL *a1@<X8>)
{
  OUTLINED_FUNCTION_8_7();

  sub_274474C6C(a1);
}

uint64_t objectdestroyTm_0()
{
  OUTLINED_FUNCTION_55_1();
  type metadata accessor for ActionView(0);
  OUTLINED_FUNCTION_3_14();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_47_1();
  if (*(v0 + 16))
  {
  }

  if (*(v0 + 32))
  {
  }

  if (*(v0 + 48))
  {
  }

  if (*(v0 + 72))
  {
  }

  OUTLINED_FUNCTION_2_11();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60, &qword_2746515D0);
  if (OUTLINED_FUNCTION_46_1(v1) == 1)
  {
    v2 = sub_274639FEC();
    if (!OUTLINED_FUNCTION_14_7(v2))
    {
      OUTLINED_FUNCTION_25_0();
      v3 = OUTLINED_FUNCTION_42_2();
      v4(v3);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_56_0();

  return swift_deallocObject();
}

_BYTE *sub_27447FED4()
{
  OUTLINED_FUNCTION_8_7();
  v0 = OUTLINED_FUNCTION_40_2();

  return sub_274474CDC(v0, v1, v2, v3);
}

void sub_27447FF2C(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_30_2();

  sub_274474D44(a1);
}

uint64_t objectdestroy_19Tm()
{
  OUTLINED_FUNCTION_55_1();
  type metadata accessor for ActionView(0);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_47_1();
  if (*(v0 + 16))
  {
  }

  if (*(v0 + 32))
  {
  }

  if (*(v0 + 48))
  {
  }

  if (*(v0 + 72))
  {
  }

  OUTLINED_FUNCTION_2_11();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60, &qword_2746515D0);
  if (OUTLINED_FUNCTION_46_1(v1) == 1)
  {
    v2 = sub_274639FEC();
    if (!OUTLINED_FUNCTION_14_7(v2))
    {
      OUTLINED_FUNCTION_25_0();
      v3 = OUTLINED_FUNCTION_42_2();
      v4(v3);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_56_0();

  return swift_deallocObject();
}

double sub_2744800FC@<D0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_30_2();

  return sub_274474DE4(a1, v1 + v3);
}

uint64_t sub_27448015C(char a1)
{
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_30_2();

  return sub_274475498(a1, v1 + v3);
}

uint64_t sub_2744801D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274482050();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_27448023C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274482050();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2744802A0(uint64_t a1)
{
  sub_274482050();
  sub_27463A26C();
  __break(1u);
}

void ActionView.init(viewModel:onDelete:isChildrenCollapsed:isSelected:isDragPlaceholder:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  type metadata accessor for WorkflowEditorOptions(0);
  OUTLINED_FUNCTION_7_12();
  sub_27447FCA0(v17, v18, &protocol conformance descriptor for WorkflowEditorOptions);
  *(a9 + 88) = sub_27463979C();
  *(a9 + 96) = v19;
  type metadata accessor for WorkflowEditorResults(0);
  OUTLINED_FUNCTION_22_4();
  sub_27447FCA0(v20, v21, &protocol conformance descriptor for WorkflowEditorResults);
  *(a9 + 104) = sub_27463979C();
  *(a9 + 112) = v22;
  sub_27463ACDC();
  *(a9 + 120) = v32;
  *(a9 + 128) = *(&v32 + 1);
  sub_27463ACDC();
  *(a9 + 136) = v32;
  *(a9 + 144) = *(&v32 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094DF60, &qword_27464D6E0);
  sub_27463ACDC();
  *(a9 + 152) = v32;
  *(a9 + 168) = v33;
  *(a9 + 176) = swift_getKeyPath();
  *(a9 + 184) = 0;
  *(a9 + 192) = swift_getKeyPath();
  *(a9 + 200) = 0;
  *(a9 + 208) = swift_getKeyPath();
  *(a9 + 216) = 0;
  v23 = type metadata accessor for ActionView(0);
  v24 = v23[20];
  *(a9 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60, &qword_2746515D0);
  swift_storeEnumTagMultiPayload();
  *(a9 + v23[21]) = xmmword_27464D540;
  *(a9 + v23[22]) = 0x4018000000000000;
  type metadata accessor for ActionViewModel();
  OUTLINED_FUNCTION_21_5();
  sub_27447FCA0(v25, v26, &protocol conformance descriptor for ActionViewModel);
  v27 = a1;
  *a9 = sub_27463950C();
  *(a9 + 8) = v28;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = 0u;
  *(a9 + 48) = 0u;
  *(a9 + 64) = a4;
  *(a9 + 72) = a5;
  *(a9 + 80) = a6;
  *(a9 + 81) = a7;
  v29 = *&v27[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action];

  objc_opt_self();
  v30 = swift_dynamicCastObjCClass() != 0;

  *(a9 + 82) = 2 * v30;
  *(a9 + 83) = a8;
}

uint64_t sub_274480588()
{
  OUTLINED_FUNCTION_5_3();
  result = MEMORY[0x277C55F30]();
  *v0 = result;
  return result;
}

uint64_t sub_2744805D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A610, &qword_2746493F0);
  OUTLINED_FUNCTION_53_0(v2);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v3);
  sub_274412C20(a1, &v6 - v4, &qword_28094A610, &qword_2746493F0);
  return sub_27463996C();
}

id sub_274480674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_27463B66C();

  if (a4)
  {
    v8 = sub_27463B4BC();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

uint64_t sub_274480724(uint64_t a1, uint64_t a2)
{
  v2 = sub_27463B6AC();
  v4 = v3;
  if (v2 == sub_27463B6AC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_27463C6BC();
  }

  return v7 & 1;
}

uint64_t sub_2744807B0()
{
  OUTLINED_FUNCTION_16_6();
  sub_274412734(0, &qword_28094A4D8, 0x277D75D18);
  return OUTLINED_FUNCTION_31_3() & 1;
}

uint64_t sub_274480848()
{
  OUTLINED_FUNCTION_16_6();
  type metadata accessor for WFEditorCell();
  return OUTLINED_FUNCTION_31_3() & 1;
}

uint64_t sub_274480934()
{
  OUTLINED_FUNCTION_16_6();
  sub_274412734(0, &qword_28094E040, 0x277D7C098);
  return OUTLINED_FUNCTION_31_3() & 1;
}

uint64_t sub_274480980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(uint64_t))
{
  a5(0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_75();
  (*(v10 + 16))(v6, a1);
  return a6(v6);
}

unint64_t sub_274480A38()
{
  result = qword_28094C420;
  if (!qword_28094C420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C350, &qword_27464D5C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C340, &qword_274646770);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809493E0, &qword_274646778);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809493E8, &unk_274646780);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2809493F0, &unk_27464D6B0);
    sub_27440ABA8();
    sub_27440AD6C();
    swift_getOpaqueTypeConformance2();
    sub_27440ADE8();
    swift_getOpaqueTypeConformance2();
    sub_274480B94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C420);
  }

  return result;
}

unint64_t sub_274480B94()
{
  result = qword_28094C428;
  if (!qword_28094C428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C428);
  }

  return result;
}

uint64_t sub_274480BE8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  v4 = OUTLINED_FUNCTION_5_0();
  v5(v4);
  return a2;
}

void sub_274480CA4(uint64_t a1)
{
  sub_274480F90(319);
  if (v1 <= 0x3F)
  {
    sub_274483760(319, &unk_28094C480, &unk_2809540F0, ">%", MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_274483760(319, &unk_28094C490, &qword_280950E20, &qword_27464D880, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_274481024(319);
        if (v4 <= 0x3F)
        {
          sub_2744810B8(319);
          if (v5 <= 0x3F)
          {
            sub_274481254(319, &qword_28094BBF0, MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              sub_274483760(319, &qword_28094C4B8, &unk_28094DF60, &qword_27464D6E0, MEMORY[0x277CE10B8]);
              if (v7 <= 0x3F)
              {
                sub_274483760(319, &qword_28094C4C0, &qword_28094C4C8, &qword_27464D888, MEMORY[0x277CDF468]);
                if (v8 <= 0x3F)
                {
                  sub_274483760(319, &qword_28094C4D0, &qword_28094C4D8, &qword_27464D890, MEMORY[0x277CDF468]);
                  if (v9 <= 0x3F)
                  {
                    sub_274483760(319, &qword_28094C4E0, &qword_28094C4E8, &qword_27464D898, MEMORY[0x277CDF468]);
                    if (v10 <= 0x3F)
                    {
                      sub_274483760(319, &qword_28094BC00, &qword_28094A610, &qword_2746493F0, MEMORY[0x277CDF468]);
                      if (v11 <= 0x3F)
                      {
                        type metadata accessor for CGPoint(319);
                        if (v12 <= 0x3F)
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
      }
    }
  }
}

void sub_274480F90(uint64_t a1)
{
  if (!qword_28094C478)
  {
    type metadata accessor for ActionViewModel();
    sub_27447FCA0(&qword_28094C460, type metadata accessor for ActionViewModel, &protocol conformance descriptor for ActionViewModel);
    v1 = sub_27463953C();
    if (!v2)
    {
      atomic_store(v1, &qword_28094C478);
    }
  }
}

void sub_274481024(uint64_t a1)
{
  if (!qword_28094C4A0)
  {
    type metadata accessor for WorkflowEditorOptions(255);
    sub_27447FCA0(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
    v1 = sub_2746397AC();
    if (!v2)
    {
      atomic_store(v1, &qword_28094C4A0);
    }
  }
}

void sub_2744810B8(uint64_t a1)
{
  if (!qword_28094C4A8)
  {
    type metadata accessor for WorkflowEditorResults(255);
    sub_27447FCA0(&unk_28094C450, type metadata accessor for WorkflowEditorResults, &protocol conformance descriptor for WorkflowEditorResults);
    v1 = sub_2746397AC();
    if (!v2)
    {
      atomic_store(v1, &qword_28094C4A8);
    }
  }
}

void sub_274481174(uint64_t a1)
{
  sub_274481254(319, &qword_28094C510, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_2744837C0(319, &qword_280949EF8, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_274481254(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2744812A8()
{
  result = qword_28094C520;
  if (!qword_28094C520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C448, &qword_27464D6D8);
    sub_274481334();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C520);
  }

  return result;
}

unint64_t sub_274481334()
{
  result = qword_28094C528;
  if (!qword_28094C528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C440, &qword_27464D6D0);
    sub_27440CA78(qword_28094C530, &qword_28094E400, &qword_274652600, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C528);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ActionView.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy35_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_274481508(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 35))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_274481548(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2744815A8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2744815E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27448164C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27448168C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2744816F8(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_27448174C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_2744817BC(uint64_t a1)
{
  sub_274481024(319);
  if (v1 <= 0x3F)
  {
    sub_2744837C0(319, &qword_280949EF8, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_274412734(319, &qword_28094E040, 0x277D7C098);
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2744818B4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_27463918C() - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v6 + 80);
  v13 = *(v9 + 80);
  v14 = *(v9 + 64);
  if (!a2)
  {
    return 0;
  }

  v15 = v12 & 0xF8;
  v16 = v15 | 7;
  v17 = v7 + 8;
  v18 = v13 + 8;
  if (a2 <= v11)
  {
    goto LABEL_28;
  }

  v19 = ((v18 + ((v17 + ((v15 + 23) & ~v16)) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + v14;
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v23 = ((a2 - v11 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    if (v23 < 2)
    {
LABEL_28:
      v27 = ((v17 + ((a1 + v16 + 16) & ~v16)) & 0xFFFFFFFFFFFFFFF8);
      if ((v10 & 0x80000000) != 0)
      {

        return __swift_getEnumTagSinglePayload((v27 + v18) & ~v13, v10, v8);
      }

      else
      {
        v28 = *v27;
        if (*v27 >= 0xFFFFFFFF)
        {
          LODWORD(v28) = -1;
        }

        return (v28 + 1);
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_28;
  }

LABEL_18:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v25 = v19;
    }

    else
    {
      v25 = 4;
    }

    switch(v25)
    {
      case 2:
        v26 = *a1;
        break;
      case 3:
        v26 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v26 = *a1;
        break;
      default:
        v26 = *a1;
        break;
    }
  }

  else
  {
    v26 = 0;
  }

  return v11 + (v26 | v24) + 1;
}

void sub_274481B0C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_27463918C() - 8);
  v9 = 8;
  if (*(v8 + 64) > 8uLL)
  {
    v9 = *(v8 + 64);
  }

  v10 = *(a4 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(v8 + 80) & 0xF8;
  v15 = v9 + 8;
  v16 = *(v11 + 80);
  v17 = ((v16 + 8 + ((v15 + ((v14 + 23) & ~(v14 | 7))) & 0xFFFFFFFFFFFFFFF8)) & ~v16) + *(v11 + 64);
  v18 = 8 * v17;
  if (a3 <= v13)
  {
    v19 = 0;
  }

  else if (v17 <= 3)
  {
    v22 = ((a3 - v13 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v13 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v17] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v17] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_47:
        __break(1u);
        break;
      case 4:
        *&a1[v17] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          v25 = ((v15 + (&a1[(v14 | 7) + 16] & ~(v14 | 7))) & 0xFFFFFFFFFFFFFFF8);
          if ((v12 & 0x80000000) != 0)
          {

            __swift_storeEnumTagSinglePayload((v25 + v16 + 8) & ~v16, a2, v12, v10);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v26 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v26 = (a2 - 1);
            }

            *v25 = v26;
          }
        }

        break;
    }
  }

  else
  {
    v20 = ~v13 + a2;
    if (v17 < 4)
    {
      v21 = (v20 >> v18) + 1;
      if (v17)
      {
        v24 = v20 & ~(-1 << v18);
        bzero(a1, v17);
        if (v17 == 3)
        {
          *a1 = v24;
          a1[2] = BYTE2(v24);
        }

        else if (v17 == 2)
        {
          *a1 = v24;
        }

        else
        {
          *a1 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        a1[v17] = v21;
        break;
      case 2:
        *&a1[v17] = v21;
        break;
      case 3:
        goto LABEL_47;
      case 4:
        *&a1[v17] = v21;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_274481EB4()
{
  result = qword_28094C5C0;
  if (!qword_28094C5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C5C0);
  }

  return result;
}

unint64_t sub_274481F68()
{
  result = qword_28094C5E8;
  if (!qword_28094C5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C5C8, &qword_27464E020);
    sub_27447FCA0(&unk_28094C5F0, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE8]);
    sub_27440CA78(&unk_28094D180, &qword_28094C600, &qword_27464FD90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C5E8);
  }

  return result;
}

unint64_t sub_274482050()
{
  result = qword_28094C620;
  if (!qword_28094C620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C620);
  }

  return result;
}

void sub_2744820AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = sub_27463B66C();

  [a6 openURL:a1 withBundleIdentifier:v10 userInterface:a4 completionHandler:a5];
}

uint64_t sub_274482140(void *a1)
{
  v1 = [a1 localizedRecoveryOptions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_27463B81C();

  return v3;
}

uint64_t sub_274482198(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_274482214(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_274412734(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_274482264()
{
  result = qword_28094C690;
  if (!qword_28094C690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C658, &qword_27464E108);
    sub_27447FCA0(&qword_28094C698, type metadata accessor for ParameterRowView, &protocol conformance descriptor for ParameterRowView);
    sub_274482320();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C690);
  }

  return result;
}

unint64_t sub_274482320()
{
  result = qword_28094C6A0;
  if (!qword_28094C6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C6A0);
  }

  return result;
}

unint64_t sub_2744823D4()
{
  result = qword_28094C718;
  if (!qword_28094C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C718);
  }

  return result;
}

unint64_t sub_274482428()
{
  result = qword_28094C728;
  if (!qword_28094C728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C728);
  }

  return result;
}

unint64_t sub_27448247C()
{
  result = qword_28094C738;
  if (!qword_28094C738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C730, &unk_27464E220);
    sub_2744823D4();
    sub_27440CA78(&unk_28094C740, &qword_280949FC0, &qword_274648838, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C738);
  }

  return result;
}

unint64_t sub_274482534()
{
  result = qword_28094C758;
  if (!qword_28094C758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C750, &qword_27464E230);
    sub_27448247C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C758);
  }

  return result;
}

unint64_t sub_2744825C0()
{
  result = qword_28094C760;
  if (!qword_28094C760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C6F0, &qword_27464E1F8);
    sub_27448247C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C6D8, &qword_27464E1E0);
    sub_27440CA78(&qword_28094C720, &qword_28094C6D8, &qword_27464E1E0, MEMORY[0x277CDF028]);
    sub_274482428();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C760);
  }

  return result;
}

unint64_t sub_274482708()
{
  result = qword_28094C7B8;
  if (!qword_28094C7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C7B8);
  }

  return result;
}

uint64_t sub_2744827B4(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = a1(0);
  OUTLINED_FUNCTION_53_0(v3);
  OUTLINED_FUNCTION_30_2();

  return a2(v2 + v4);
}

unint64_t sub_274482828()
{
  result = qword_28094C838;
  if (!qword_28094C838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C838);
  }

  return result;
}

void sub_27448287C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a4)
  {

    v6 = a6;
  }
}

uint64_t sub_2744828E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_30_2();

  return sub_2744748BC(a1, v2 + v5, a2);
}

unint64_t sub_274482950()
{
  result = qword_280954750;
  if (!qword_280954750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280954750);
  }

  return result;
}

unint64_t sub_2744829A4()
{
  result = qword_28094C8E0;
  if (!qword_28094C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C8E0);
  }

  return result;
}

unint64_t sub_274482A00()
{
  result = qword_28094C900;
  if (!qword_28094C900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C8F8, &qword_27464E500);
    sub_274482A8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C900);
  }

  return result;
}

unint64_t sub_274482A8C()
{
  result = qword_280954890;
  if (!qword_280954890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280954890);
  }

  return result;
}

unint64_t sub_274482AE0()
{
  result = qword_28094C918;
  if (!qword_28094C918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C890, &qword_27464E3B0);
    sub_274482B6C();
    sub_274482D04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C918);
  }

  return result;
}

unint64_t sub_274482B6C()
{
  result = qword_28094C920;
  if (!qword_28094C920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C888, &qword_27464E3A8);
    sub_27440CA78(&qword_28094C928, &qword_28094C898, &qword_27464E3B8, MEMORY[0x277CE14C0]);
    sub_274482C24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C920);
  }

  return result;
}

unint64_t sub_274482C24()
{
  result = qword_28094C930;
  if (!qword_28094C930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280954810, &qword_27464E508);
    sub_274482CB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C930);
  }

  return result;
}

unint64_t sub_274482CB0()
{
  result = qword_28094C940;
  if (!qword_28094C940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C940);
  }

  return result;
}

unint64_t sub_274482D04()
{
  result = qword_28094C948;
  if (!qword_28094C948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094C950, &qword_27464E510);
    sub_274482D88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C948);
  }

  return result;
}

unint64_t sub_274482D88()
{
  result = qword_280954820;
  if (!qword_280954820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C960, &qword_27464E518);
    sub_274482E14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280954820);
  }

  return result;
}

unint64_t sub_274482E14()
{
  result = qword_28094C968;
  if (!qword_28094C968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C970, &qword_27464E520);
    sub_274482EA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C968);
  }

  return result;
}

unint64_t sub_274482EA0()
{
  result = qword_28094C978;
  if (!qword_28094C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C978);
  }

  return result;
}

unint64_t sub_274482EF4()
{
  result = qword_28094C980;
  if (!qword_28094C980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C860, &qword_27464E380);
    sub_274482A00();
    sub_27440CA78(&qword_28094C910, &qword_28094C848, &qword_27464E368, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C980);
  }

  return result;
}

uint64_t sub_274482FAC(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_274482FC4(result, a2);
  }

  return result;
}

uint64_t sub_274482FCC(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_274482FE4();
  }

  return v3;
}

void sub_274482FEC()
{
  OUTLINED_FUNCTION_8_7();
  v0 = OUTLINED_FUNCTION_40_2();

  sub_274474848(v0, v1, v2, v3);
}

unint64_t sub_274483044()
{
  result = qword_2809505E0;
  if (!qword_2809505E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809505E0);
  }

  return result;
}

uint64_t sub_274483110(uint64_t result, uint64_t a2)
{
  if (a2)
  {
  }

  return v2;
}

unint64_t sub_274483150()
{
  result = qword_28094CA30;
  if (!qword_28094CA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CA28, &qword_27464E650);
    sub_27440CA78(&unk_28094CDA0, &unk_28094CA00, &qword_27464ED50, MEMORY[0x277CDEFF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CA30);
  }

  return result;
}

uint64_t sub_27448327C()
{
  v1 = type metadata accessor for ActionView(0);
  OUTLINED_FUNCTION_19_0(v1);
  OUTLINED_FUNCTION_43_1();
  v4 = v0 + v3;
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_274477C6C(v0 + v2, v5, v6);
}

uint64_t sub_2744832F4(void **a1)
{
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_30_2();

  return sub_274476C64(a1, v1 + v3);
}

unint64_t sub_27448336C()
{
  result = qword_28094CAB0;
  if (!qword_28094CAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CAA8, &qword_27464E6C0);
    sub_27440CA78(&qword_28094CAA0, &unk_28094CD90, &unk_27464E5E0, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CAB0);
  }

  return result;
}

uint64_t objectdestroy_221Tm(void (*a1)(void))
{
  a1(*(v1 + 24));

  return swift_deallocObject();
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2744834A8()
{
  v1 = type metadata accessor for ActionView(0);
  OUTLINED_FUNCTION_19_0(v1);
  OUTLINED_FUNCTION_43_1();
  v4 = *(v0 + v3);

  return sub_274476E14(v0 + v2, v4);
}

uint64_t sub_27448353C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27448357C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2744835F4(uint64_t a1)
{
  sub_274412734(319, &unk_28094C2B0, 0x277CCA9B8);
  if (v1 <= 0x3F)
  {
    sub_274483760(319, &qword_28094C4E0, &qword_28094C4E8, &qword_27464D898, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_274481024(319);
      if (v3 <= 0x3F)
      {
        sub_274483760(319, &qword_28094CAF0, &qword_28094C7D8, &qword_27464E310, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_2744837C0(319, &qword_28094A880, type metadata accessor for CGRect, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_274483760(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v7 = OUTLINED_FUNCTION_54_1();
    v8 = a5(v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2744837C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v6 = OUTLINED_FUNCTION_54_1();
    v7 = a4(v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_274483820(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_274483860(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2744838B0()
{
  result = qword_28094CAF8;
  if (!qword_28094CAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C618, &qword_27464E0C0);
    sub_27440CA78(&qword_28094CB00, &qword_28094C610, &qword_27464E0B8, MEMORY[0x277CE04B0]);
    sub_27440CA78(&unk_280954AE0, &unk_28094AD60, &qword_27464E7D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CAF8);
  }

  return result;
}

unint64_t sub_274483994()
{
  result = qword_28094CB08;
  if (!qword_28094CB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CB10, &qword_27464E7D8);
    sub_27440CA78(&qword_28094CB18, &qword_28094CB20, &qword_27464E7E0, MEMORY[0x277CDF7D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CB08);
  }

  return result;
}

unint64_t sub_274483A44()
{
  result = qword_28094CB58;
  if (!qword_28094CB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094C7F8, &unk_27464E330);
    sub_274483AD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CB58);
  }

  return result;
}

unint64_t sub_274483AD0()
{
  result = qword_28094CB60;
  if (!qword_28094CB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C7E8, &qword_27464E320);
    sub_27440CA78(&qword_28094CB68, &qword_28094C7E0, &qword_27464E318, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CB60);
  }

  return result;
}

unint64_t sub_274483B88()
{
  result = qword_28094CB70;
  if (!qword_28094CB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CB78, &qword_27464E800);
    sub_274483C40();
    sub_27440CA78(&qword_28094A710, &qword_280951400, &unk_2746528C0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CB70);
  }

  return result;
}

unint64_t sub_274483C40()
{
  result = qword_28094CB80;
  if (!qword_28094CB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CB88, &qword_27464E808);
    sub_274483CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CB80);
  }

  return result;
}

unint64_t sub_274483CCC()
{
  result = qword_28094CB90;
  if (!qword_28094CB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CB98, &qword_27464E810);
    sub_274483D58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CB90);
  }

  return result;
}

unint64_t sub_274483D58()
{
  result = qword_28094CBA0;
  if (!qword_28094CBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CBA8, &qword_27464E818);
    sub_27440CA78(&qword_28094CBB0, &qword_28094CBB8, &unk_27464E820, MEMORY[0x277CE1138]);
    sub_27440CA78(&unk_28094D180, &qword_28094C600, &qword_27464FD90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CBA0);
  }

  return result;
}

unint64_t sub_274483E78()
{
  result = qword_28094CBC0;
  if (!qword_28094CBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CBC0);
  }

  return result;
}

uint64_t sub_274483EE8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_27440B094(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_274483F2C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_274412C10(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_274483F70(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  v4 = OUTLINED_FUNCTION_5_0();
  v5(v4);
  return a2;
}

uint64_t objectdestroy_224Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_287Tm()
{
  OUTLINED_FUNCTION_55_1();
  type metadata accessor for ActionResourceErrorButton(0);
  OUTLINED_FUNCTION_3_14();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  sub_274482198(*(v3 + 32), *(v3 + 40));

  v4 = v3 + *(v0 + 32);
  v5 = sub_2746386EC();
  if (!__swift_getEnumTagSinglePayload(v4, 1, v5))
  {
    OUTLINED_FUNCTION_25_0();
    (*(v6 + 8))(v4, v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CAC8, &unk_27464E770);

  OUTLINED_FUNCTION_56_0();

  return swift_deallocObject();
}

uint64_t sub_27448419C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionResourceErrorButton(0);
  OUTLINED_FUNCTION_53_0(v4);
  OUTLINED_FUNCTION_30_2();

  return sub_27447D9E8(a1, a2);
}

unint64_t sub_274484214()
{
  result = qword_28094CC50;
  if (!qword_28094CC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CC48, &qword_27464EA38);
    sub_2744842CC();
    sub_27440CA78(&unk_28094D180, &qword_28094C600, &qword_27464FD90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CC50);
  }

  return result;
}

unint64_t sub_2744842CC()
{
  result = qword_28094CC58;
  if (!qword_28094CC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CC60, &qword_27464EA40);
    sub_274484384();
    sub_27440CA78(&unk_28094AA00, &qword_28094CC80, &qword_27464EA50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CC58);
  }

  return result;
}

unint64_t sub_274484384()
{
  result = qword_28094CC68;
  if (!qword_28094CC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094CC70, &qword_27464EA48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CC68);
  }

  return result;
}

unint64_t sub_274484408()
{
  result = qword_28094CC88;
  if (!qword_28094CC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CC38, &qword_27464EA28);
    sub_27440CA78(&qword_28094CC90, &qword_28094CC98, &qword_27464EA88, MEMORY[0x277CDF028]);
    sub_27440CA78(&unk_28094CCA0, &unk_280954AC0, &qword_27464EA90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CC88);
  }

  return result;
}

unint64_t sub_2744844EC()
{
  result = qword_28094CCC8;
  if (!qword_28094CCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CCD0, &qword_27464EB08);
    sub_274484578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CCC8);
  }

  return result;
}

unint64_t sub_274484578()
{
  result = qword_28094CCD8;
  if (!qword_28094CCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CCE0, &qword_27464EB10);
    sub_27440CA78(&qword_28094CCE8, &qword_28094CCF0, &qword_27464EB18, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CCD8);
  }

  return result;
}

unint64_t sub_274484630()
{
  result = qword_28094CCF8;
  if (!qword_28094CCF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094CBF8, qword_27464E9E0);
    sub_2744846E8();
    sub_27440CA78(&qword_28094CD18, &qword_28094CD20, &qword_27464EB28, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CCF8);
  }

  return result;
}

unint64_t sub_2744846E8()
{
  result = qword_28094CD00;
  if (!qword_28094CD00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CBF0, &qword_27464E9D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2809493A0, &unk_274646750);
    sub_2746386EC();
    sub_27440CA78(&unk_2809493B0, &unk_2809493A0, &unk_274646750, MEMORY[0x277CDF028]);
    sub_27447FCA0(&unk_28094CBE0, MEMORY[0x277D7D2C8], MEMORY[0x277D7D2D0]);
    swift_getOpaqueTypeConformance2();
    sub_27440CA78(&qword_28094CD08, &qword_28094CD10, &qword_27464EB20, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CD00);
  }

  return result;
}

unint64_t sub_274484860()
{
  result = qword_28094CD28;
  if (!qword_28094CD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CC30, &qword_27464EA20);
    sub_274484918();
    sub_27440CA78(&qword_28094A710, &qword_280951400, &unk_2746528C0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CD28);
  }

  return result;
}

unint64_t sub_274484918()
{
  result = qword_28094CD30;
  if (!qword_28094CD30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CC28, &qword_27464EA18);
    sub_2744849A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CD30);
  }

  return result;
}

unint64_t sub_2744849A4()
{
  result = qword_28094CD38;
  if (!qword_28094CD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CC20, &qword_27464EA10);
    sub_274484A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CD38);
  }

  return result;
}

unint64_t sub_274484A30()
{
  result = qword_28094CD40;
  if (!qword_28094CD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CC18, &qword_27464EA08);
    sub_27440CA78(&qword_28094CD48, &unk_28094CD50, &unk_27464EB30, MEMORY[0x277CE1138]);
    sub_27440CA78(&unk_28094D180, &qword_28094C600, &qword_27464FD90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CD40);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_11()
{
  sub_27447FCE8(*(v0 + 176), *(v0 + 184));
  j__swift_release(*(v0 + 192));
  return sub_274482198(*(v0 + 208), *(v0 + 216));
}

uint64_t OUTLINED_FUNCTION_5_14(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_10_10(uint64_t a1@<X8>)
{
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = 0;
}

uint64_t OUTLINED_FUNCTION_14_7(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_25_5(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277CE1198];

  return sub_27440CA78(a1, a2, a3, v4);
}

void *OUTLINED_FUNCTION_27_3(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void x6_0, void a8, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{

  return sub_27463973C();
}

uint64_t OUTLINED_FUNCTION_31_3()
{

  return sub_27463BF7C();
}

uint64_t OUTLINED_FUNCTION_46_1(uint64_t a1)
{

  return swift_getEnumCaseMultiPayload();
}

void OUTLINED_FUNCTION_47_1()
{
  v3 = *(v0 + v1 + 8);
}

uint64_t OUTLINED_FUNCTION_53_1@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_274484EDC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 49))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_274484EFC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = (a2 - 1);
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

  *(result + 49) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for VelocityFilter(uint64_t a1, int a2)
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

uint64_t sub_274484F78()
{
  v1 = v0;
  v2 = sub_274639ABC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 40);
  if (v6)
  {
    v7 = type metadata accessor for ActionOutputProvider();
    v8 = objc_allocWithZone(v7);
    *&v8[OBJC_IVAR____TtC14WorkflowEditorP33_23FAE8DFB59B376283EF5C63F037C7FD20ActionOutputProvider_editorOptions] = v6;
    v26.receiver = v8;
    v26.super_class = v7;
    v9 = v6;
    v10 = objc_msgSendSuper2(&v26, sel_init);
    v11 = *(*(v1 + 8) + qword_28094A100);
    v23 = *(v1 + 16);
    v24 = *(v1 + 32);
    v12 = v11;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CDB0, &qword_27464C480);
    MEMORY[0x277C575F0](aBlock, v13);
    v14 = aBlock[0];
    v15 = *(v1 + 56);
    v27 = v15;
    v28 = *(v1 + 64);
    if (v28 == 1)
    {
      swift_unknownObjectRetain();
    }

    else
    {

      sub_27463BC0C();
      v16 = sub_27463A2FC();
      sub_274638CEC();

      sub_274639AAC();
      swift_getAtKeyPath();
      sub_274415174(&v27, &unk_28094C680, &qword_27464E130);
      (*(v3 + 8))(v5, v2);
      v15 = v23;
    }

    v17 = swift_allocObject();
    memcpy((v17 + 16), v1, 0x51uLL);
    aBlock[4] = sub_274487A70;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_274486F8C;
    aBlock[3] = &block_descriptor_8;
    v18 = _Block_copy(aBlock);
    v19 = v10;
    sub_2744879C8(v1, &v23);

    v20 = [v12 variableMenuElementsWithVariable:v14 parameterState:0 variableProvider:v15 variableUIDelegate:v19 setVariableHandler:v18];
    _Block_release(v18);

    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E80, &unk_274648620);
    v21 = sub_27463B81C();

    return v21;
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_274487E9C(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_274485304(void *a1, uint64_t a2)
{
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CDB0, &qword_27464C480);
  return sub_27463AEBC();
}

uint64_t sub_274485364@<X0>(uint64_t *a1@<X8>)
{
  v32 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CD70, &qword_27464ED30);
  OUTLINED_FUNCTION_1();
  v30 = v3;
  MEMORY[0x28223BE20](v4);
  v29 = &v28 - v5;
  v6 = sub_274639ABC();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CD78, &qword_27464ED38);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  v18 = sub_274484F78();
  v19 = v18;
  v20 = *(v1 + 72);
  v34 = v20;
  v35 = *(v1 + 80);
  v31 = v2;
  if (v35 != 1)
  {

    sub_27463BC0C();
    v23 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_274415174(&v34, &qword_28094CD80, &qword_27464ED40);
    v18 = (*(v8 + 8))(v11, v6);
    if (v33 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    MEMORY[0x28223BE20](v18);
    *(&v28 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CD90, &unk_27464E5E0);
    sub_27440CA78(&qword_28094CAA0, &unk_28094CD90, &unk_27464E5E0, MEMORY[0x277CDF028]);
    v24 = v29;
    sub_27463AFCC();
    v22 = v31;
    (*(v30 + 32))(v17, v24, v31);
    v21 = 0;
    goto LABEL_6;
  }

  if (v20)
  {
    goto LABEL_5;
  }

LABEL_3:
  v21 = 1;
  v22 = v31;
LABEL_6:
  __swift_storeEnumTagSinglePayload(v17, v21, 1, v22);
  sub_274439BF0(v17, v14, &qword_28094CD78, &qword_27464ED38);
  v25 = v32;
  *v32 = v19;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CD88, &qword_27464ED48);
  sub_274439BF0(v14, v25 + *(v26 + 48), &qword_28094CD78, &qword_27464ED38);

  sub_274415174(v17, &qword_28094CD78, &qword_27464ED38);
  sub_274415174(v14, &qword_28094CD78, &qword_27464ED38);
}

uint64_t sub_274485730@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C9C0, &qword_27464E5A8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  *&v7 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v9 = &v22[-v8 - 8];
  sub_27463B70C("Clear Variable (Variable Editor)", 32, v7, v21);
  sub_27463B70C("Clear Variable", 14);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v10 = qword_28094BB00;
  v11 = sub_27463B66C();

  v12 = sub_27463B66C();

  v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

  v14 = sub_27463B6AC();
  v16 = v15;

  sub_27463904C();
  v17 = sub_27463905C();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v17);
  v18 = swift_allocObject();
  memcpy((v18 + 16), a1, 0x51uLL);
  v23[0] = v14;
  v23[1] = v16;
  v19 = sub_274439BF0(v9, v5, &unk_28094C9C0, &qword_27464E5A8);
  MEMORY[0x28223BE20](v19);
  *(&v21 - 4) = v23;
  *(&v21 - 3) = 0x6B72616D78;
  *(&v21 - 2) = 0xE500000000000000;
  sub_2744879C8(a1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CA00, &qword_27464ED50);
  sub_27440CA78(&unk_28094CDA0, &unk_28094CA00, &qword_27464ED50, MEMORY[0x277CDEFF0]);
  sub_27463AD4C();
  sub_274415174(v9, &unk_28094C9C0, &qword_27464E5A8);
}

uint64_t sub_274485AD0(uint64_t a1)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (!result)
      {
        swift_unknownObjectRelease();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_274485B6C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_274638DAC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CE08, &qword_27464EE28);
  sub_27463ACDC();
  v7 = v33;
  v31 = v34;
  v32 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CE10, &qword_27464EE30);
  sub_27463ACDC();
  v9 = v33;
  v8 = v34;
  v10 = swift_unknownObjectRetain();
  v11 = sub_274485AD0(v10);
  if (v12 == 0xFF)
  {
    v30 = v4;
    sub_274638C2C();
    swift_unknownObjectRetain();
    v18 = sub_274638D9C();
    v19 = sub_27463BC0C();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v27 = v20;
      v28 = swift_slowAlloc();
      v33 = v28;
      *v20 = 136315138;
      swift_getObjectType();
      v21 = sub_27463C7EC();
      v29 = v3;
      LOBYTE(v20) = v19;
      v23 = sub_2745E7980(v21, v22, &v33);

      v24 = v27;
      *(v27 + 1) = v23;
      v25 = v24;
      _os_log_impl(&dword_2743F0000, v18, v20, "Unknown WFMenuElement type %s", v24, 0xCu);
      v26 = v28;
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x277C5A270](v26, -1, -1);
      MEMORY[0x277C5A270](v25, -1, -1);
      swift_unknownObjectRelease();

      result = (*(v30 + 8))(v6, v29);
    }

    else
    {

      swift_unknownObjectRelease();

      result = (*(v30 + 8))(v6, v3);
    }

    v13 = 0;
    v16 = 0;
    v7 = 0;
    v17 = 0;
    v9 = 0;
    v8 = 0;
  }

  else
  {
    v13 = v11;
    v14 = v12;
    result = swift_unknownObjectRelease();
    v16 = v14;
    v17 = v31;
  }

  *a2 = v13;
  a2[1] = v16;
  a2[2] = v7;
  a2[3] = v17;
  a2[4] = v9;
  a2[5] = v8;
  return result;
}

uint64_t sub_274485E6C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CE28, &qword_27464EF48);
  MEMORY[0x28223BE20](v4);
  v6 = (v41 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CE30, &qword_27464EF50);
  MEMORY[0x28223BE20](v7);
  v9 = (v41 - v8);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CE38, &qword_27464EF58);
  MEMORY[0x28223BE20](v47);
  v11 = v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CE40, &qword_27464EF60);
  MEMORY[0x28223BE20](v12);
  v15 = v41 - v14;
  v16 = *v1;
  if (!*(v1 + 8))
  {
    v43 = v13;
    v23 = swift_allocObject();
    v46 = v4;
    v41[1] = v41;
    *(v23 + 16) = v16;
    MEMORY[0x28223BE20](v23);
    v44 = v11;
    v41[-2] = v16;
    v41[-1] = v1;
    v42 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CEA0, &qword_27464EF90);
    v45 = a1;
    sub_27440CA78(&unk_28094CEA8, &qword_28094CEA0, &qword_27464EF90, MEMORY[0x277CDEFF0]);
    sub_27463AD5C();
    v24 = &v15[*(v43 + 36)];
    sub_27463945C();
    sub_27463B9DC();
    v25 = *(v1 + 24);
    v49[0] = *(v1 + 16);
    v26 = *(v1 + 40);
    v51 = *(v1 + 32);
    v52 = v25;
    v50 = v26;
    v27 = swift_allocObject();
    v28 = v42;
    *(v27 + 16) = v42;
    v29 = *(v1 + 16);
    *(v27 + 24) = *v1;
    *(v27 + 40) = v29;
    *(v27 + 56) = *(v1 + 32);
    *v24 = &unk_27464EFA0;
    *(v24 + 1) = v27;
    sub_274439BF0(v15, v9, &qword_28094CE40, &qword_27464EF60);
    swift_storeEnumTagMultiPayload();
    v30 = v28;
    sub_274439BF0(v49, v48, &qword_28094CE08, &qword_27464EE28);
    sub_274439BF0(&v52, v48, &qword_28094CE50, &qword_27464EF70);
    sub_274439BF0(&v51, v48, &qword_28094CE10, &qword_27464EE30);
    sub_274439BF0(&v50, v48, &qword_28094CE58, &qword_27464EF78);
    sub_274487DB4();
    sub_274487EE4();
    v31 = v44;
    sub_274639DDC();
    sub_274439BF0(v31, v6, &qword_28094CE38, &qword_27464EF58);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CE60, &qword_27464EF80);
    sub_274487D28();
    sub_274487F38();
    sub_274639DDC();

    sub_274415174(v31, &qword_28094CE38, &qword_27464EF58);
    v20 = v15;
    v21 = &qword_28094CE40;
    v22 = &qword_27464EF60;
    return sub_274415174(v20, v21, v22);
  }

  if (*(v1 + 8) == 1)
  {
    v17 = v16;
    v18 = [v17 menuElements];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E80, &unk_274648620);
    v19 = sub_27463B81C();

    *v9 = v19;
    swift_storeEnumTagMultiPayload();
    sub_274487DB4();
    sub_274487EE4();
    sub_274639DDC();
    sub_274439BF0(v11, v6, &qword_28094CE38, &qword_27464EF58);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CE60, &qword_27464EF80);
    sub_274487D28();
    sub_274487F38();
    sub_274639DDC();

    v20 = v11;
    v21 = &qword_28094CE38;
    v22 = &qword_27464EF58;
    return sub_274415174(v20, v21, v22);
  }

  v34 = *(v1 + 40);
  v49[0] = *(v1 + 32);
  v33 = v49[0];
  v49[1] = v34;
  v35 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CE48, &qword_27464EF68);
  sub_27463ACEC();
  v36 = v52;
  v37 = *(v2 + 16);
  v50 = *(v2 + 24);
  v51 = v37;
  v52 = v33;
  v49[0] = v34;
  v38 = swift_allocObject();
  v39 = *(v2 + 16);
  *(v38 + 24) = *v2;
  *(v38 + 16) = v35;
  *(v38 + 40) = v39;
  *(v38 + 56) = *(v2 + 32);
  *v6 = v36;
  v6[1] = sub_274487D1C;
  v6[2] = v38;
  v6[3] = 0;
  v6[4] = 0;
  swift_storeEnumTagMultiPayload();
  v40 = v35;
  sub_274439BF0(&v51, v48, &qword_28094CE08, &qword_27464EE28);
  sub_274439BF0(&v50, v48, &qword_28094CE50, &qword_27464EF70);
  sub_274439BF0(&v52, v48, &qword_28094CE10, &qword_27464EE30);
  sub_274439BF0(v49, v48, &qword_28094CE58, &qword_27464EF78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CE60, &qword_27464EF80);
  sub_274487D28();
  sub_274487F38();
  return sub_274639DDC();
}

void sub_274486570(void *a1)
{
  v1 = [a1 handler];
  if (v1)
  {
    v2 = v1;
    (*(v1 + 2))();

    _Block_release(v2);
  }
}

uint64_t sub_2744865D4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CEC0, &qword_27464EFC8);
  sub_2744881FC(&qword_28094CEC8, &qword_28094CEC0, &qword_27464EFC8, sub_274488278);
  return sub_27463ACAC();
}

uint64_t sub_2744866A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 title];
  sub_27463B6AC();

  sub_274412BBC();
  result = sub_27463A53C();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

void sub_274486728(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CEB8, &qword_27464EFC0);
  sub_27463ACEC();
  if (v10)
  {
    v5 = v10;
    sub_27463AC5C();

    sub_274639DDC();
  }

  else
  {
    v6 = [a2 icon];
    if (!v6)
    {
      v8 = 0;
      v9 = -1;
      goto LABEL_6;
    }

    v5 = v6;
    v7 = [objc_opt_self() platformImageForIcon_];
    sub_27463AC5C();
    swift_retain_n();
    sub_274639DDC();
  }

  v8 = v11;
  v9 = BYTE8(v11);
LABEL_6:
  *a3 = v8;
  *(a3 + 8) = v9;
}

uint64_t sub_274486888(uint64_t a1, uint64_t a2)
{
  v2[16] = a1;
  v2[17] = a2;
  sub_27463B9CC();
  v2[18] = sub_27463B9BC();
  v4 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_274486920, v4, v3);
}

uint64_t sub_274486920()
{
  v1 = *(v0 + 128);

  v2 = [v1 icon];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      v6 = [v4 bundleIdentifier];
      if (!v6)
      {
        sub_27463B6AC();
        v6 = sub_27463B66C();
      }

      v7 = objc_opt_self();
      v8 = [v7 applicationIconImageForBundleIdentifier_];

      if (!v8)
      {
        v8 = [v5 bundleIdentifier];
        if (!v8)
        {
          sub_27463B6AC();
          v8 = sub_27463B66C();
        }

        v9 = *(v0 + 136);
        v10 = [objc_opt_self() currentDevice];
        [v10 screenScale];
        v12 = v11;

        v13 = *v9;
        *(v0 + 72) = *(v9 + 8);
        *(v0 + 64) = v13;
        *(v0 + 96) = *(v9 + 1);
        *(v0 + 112) = *(v9 + 2);
        v14 = swift_allocObject();
        *(v14 + 16) = vdupq_n_s64(0x404A000000000000uLL);
        v16 = *(v9 + 1);
        v15 = *(v9 + 2);
        *(v14 + 32) = *v9;
        *(v14 + 48) = v16;
        *(v14 + 64) = v15;
        *(v0 + 48) = sub_2744880CC;
        *(v0 + 56) = v14;
        *(v0 + 16) = MEMORY[0x277D85DD0];
        *(v0 + 24) = 1107296256;
        *(v0 + 32) = sub_274486F8C;
        *(v0 + 40) = &block_descriptor_42_0;
        v17 = _Block_copy((v0 + 16));
        sub_2744880D8(v0 + 64, v0 + 80);
        sub_274439BF0(v0 + 96, v0 + 80, &qword_28094CE08, &qword_27464EE28);
        sub_274439BF0(v0 + 104, v0 + 80, &qword_28094CE50, &qword_27464EF70);
        sub_274439BF0(v0 + 112, v0 + 80, &qword_28094CE10, &qword_27464EE30);
        sub_274439BF0(v0 + 120, v0 + 80, &qword_28094CE58, &qword_27464EF78);

        [v7 applicationIconImageForBundleIdentifier:v8 length:v17 scale:52.0 completionHandler:v12];
        _Block_release(v17);
      }
    }
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_274486C20(void *a1, uint64_t *a2, double a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A480, &qword_27464D1D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22[-v9];
  v11 = a4 * 0.95 * *MEMORY[0x277D7A390];
  v12 = sub_27463B9FC();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v12);
  v13 = *a2;
  v28 = *(a2 + 8);
  v14 = a2[3];
  v26 = a2[2];
  v27 = v13;
  v15 = a2[5];
  v24 = a2[4];
  v25 = v14;
  v23 = v15;
  sub_27463B9CC();
  sub_2744880D8(&v27, v22);
  sub_274439BF0(&v26, v22, &qword_28094CE08, &qword_27464EE28);
  sub_274439BF0(&v25, v22, &qword_28094CE50, &qword_27464EF70);
  sub_274439BF0(&v24, v22, &qword_28094CE10, &qword_27464EE30);
  sub_274439BF0(&v23, v22, &qword_28094CE58, &qword_27464EF78);
  v16 = a1;
  v17 = sub_27463B9BC();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  v20 = *(a2 + 1);
  *(v18 + 32) = *a2;
  *(v18 + 48) = v20;
  *(v18 + 64) = *(a2 + 2);
  *(v18 + 80) = a1;
  *(v18 + 88) = v11;
  *(v18 + 96) = a3;
  *(v18 + 104) = a4;
  sub_274512004();
}

uint64_t sub_274486E0C(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = a2;
  *(v8 + 72) = a3;
  *(v8 + 56) = a1;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  sub_27463B9CC();
  *(v8 + 80) = sub_27463B9BC();
  v10 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_274486EAC, v10, v9);
}

uint64_t sub_274486EAC()
{
  v1 = *(v0 + 48);

  if (v1)
  {
    v2 = [*(v0 + 48) roundedWithContinuousCornerRadius:*(v0 + 56) size:{*(v0 + 64), *(v0 + 72)}];
    v1 = [v2 platformImage];
  }

  *(v0 + 16) = *(*(v0 + 40) + 16);
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CEB8, &qword_27464EFC0);
  sub_27463ACFC();
  v3 = *(v0 + 8);

  return v3();
}

void sub_274486F8C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_274486FF8(void *a1, uint64_t *a2)
{
  v3 = [a1 itemProvider];
  v4 = *a2;
  v19 = *(a2 + 8);
  v5 = a2[3];
  v17 = a2[2];
  v18 = v4;
  v6 = a2[5];
  v15 = a2[4];
  v16 = v5;
  v14 = v6;
  v7 = swift_allocObject();
  v8 = *(a2 + 1);
  v7[1] = *a2;
  v7[2] = v8;
  v7[3] = *(a2 + 2);
  aBlock[4] = sub_2744882F4;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2744871AC;
  aBlock[3] = &block_descriptor_52_0;
  v9 = _Block_copy(aBlock);
  sub_2744880D8(&v18, v12);
  sub_274439BF0(&v17, v12, &qword_28094CE08, &qword_27464EE28);
  sub_274439BF0(&v16, v12, &qword_28094CE50, &qword_27464EF70);
  sub_274439BF0(&v15, v12, &qword_28094CE10, &qword_27464EE30);
  sub_274439BF0(&v14, v12, &qword_28094CE58, &qword_27464EF78);
  v10 = v3[2];

  v10(v3, v9);
  _Block_release(v3);

  _Block_release(v9);
}

uint64_t sub_2744871AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E80, &unk_274648620);
  v3 = sub_27463B81C();

  v2(v3);
}

uint64_t sub_27448722C(uint64_t a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CE48, &qword_27464EF68);
  return sub_27463ACFC();
}

uint64_t sub_2744872C0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CDD0, &qword_27464EDF0);
  sub_274487AC4();
  return sub_27463AFCC();
}

uint64_t sub_274487330(uint64_t a1)
{
  sub_2745475B0(a1);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CDF8, &qword_27464EE20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CDE8, &qword_27464EDF8);
  sub_27440CA78(&qword_28094CE00, &qword_28094CDF8, &qword_27464EE20, MEMORY[0x277D83980]);
  sub_2744881FC(&qword_28094CDE0, &qword_28094CDE8, &qword_27464EDF8, sub_274487B74);
  return sub_27463AF7C();
}

double sub_27448745C@<D0>(_OWORD *a2@<X8>)
{
  swift_unknownObjectRetain();
  sub_274485B6C(v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

double sub_2744874A4@<D0>(_OWORD *a2@<X8>)
{
  sub_27448745C(v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

uint64_t sub_2744874F4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v5 = a2;
  *(&v5 + 1) = a1 & 1;
  v6 = a3;
  v7 = a4;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  swift_unknownObjectRetain();

  return sub_27443CA58(&v5);
}

uint64_t sub_27448776C()
{
  v4 = v0;
  v5 = v1;
  sub_274406A94(v3, v2);
}

uint64_t sub_274487854(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 81))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_274487894(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_274487928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_274412BBC();

  return sub_27463ACCC();
}

uint64_t objectdestroy_15Tm()
{

  sub_274482198(*(v0 + 72), *(v0 + 80));
  sub_2743F45E8(*(v0 + 88), *(v0 + 96));

  return swift_deallocObject();
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_274487AC4()
{
  result = qword_28094CDD8;
  if (!qword_28094CDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CDD0, &qword_27464EDF0);
    sub_2744881FC(&qword_28094CDE0, &qword_28094CDE8, &qword_27464EDF8, sub_274487B74);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CDD8);
  }

  return result;
}

unint64_t sub_274487B74()
{
  result = qword_28094CDF0;
  if (!qword_28094CDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CDF0);
  }

  return result;
}

uint64_t sub_274487BD4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_274487C14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_274487C70()
{
  result = qword_28094CE18;
  if (!qword_28094CE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CE20, &qword_27464EEF0);
    sub_274487AC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CE18);
  }

  return result;
}

unint64_t sub_274487D28()
{
  result = qword_28094CE68;
  if (!qword_28094CE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CE38, &qword_27464EF58);
    sub_274487DB4();
    sub_274487EE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CE68);
  }

  return result;
}

unint64_t sub_274487DB4()
{
  result = qword_28094CE70;
  if (!qword_28094CE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CE40, &qword_27464EF60);
    sub_27440CA78(&qword_28094CE78, &qword_28094CE80, &qword_27464EF88, MEMORY[0x277CDF028]);
    sub_274487E9C(&qword_28094CE88, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CE70);
  }

  return result;
}

uint64_t sub_274487E9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_274487EE4()
{
  result = qword_28094CE90;
  if (!qword_28094CE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CE90);
  }

  return result;
}

unint64_t sub_274487F38()
{
  result = qword_28094CE98;
  if (!qword_28094CE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CE60, &qword_27464EF80);
    sub_274487EE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CE98);
  }

  return result;
}

uint64_t objectdestroy_28Tm()
{

  return swift_deallocObject();
}

uint64_t sub_274488034()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_27440F0F4;

  return sub_274486888(v2, v0 + 24);
}

uint64_t sub_274488110(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 10);
  v7 = v1[11];
  v8 = v1[12];
  v9 = v1[13];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_27448842C;

  return sub_274486E0C(v7, v8, v9, a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_2744881FC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_274488278()
{
  result = qword_28094CED0;
  if (!qword_28094CED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CED8, &qword_27464EFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CED0);
  }

  return result;
}

uint64_t sub_2744882FC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27448833C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_274488398()
{
  result = qword_28094CEE0;
  if (!qword_28094CEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CEE8, &qword_27464F070);
    sub_274487D28();
    sub_274487F38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CEE0);
  }

  return result;
}

id static WFVariableString.attributedString(variable:)(uint64_t a1)
{
  v1 = [objc_opt_self() attributedStringWithVariable_];

  return v1;
}

void WFVariableString.init(attributedString:)(void *a1)
{
  [objc_allocWithZone(MEMORY[0x277D7CA28]) initWithAttributedString_];
  sub_27463821C();
}

id WFVariableString.attributedString.getter()
{
  v0 = sub_27463822C();
  v1 = [v0 attributedString];

  return v1;
}

void WFVariableString.replacingCharacters(in:with:)()
{
  v3 = OUTLINED_FUNCTION_0_19();
  v4 = [v3 stringByReplacingCharactersInRange:v2 withVariable:{v1, v0}];

  sub_27463827C();
}

{
  v2 = OUTLINED_FUNCTION_0_19();
  v3 = sub_27463822C();
  v4 = [v2 stringByReplacingCharactersInRange:v1 withVariableString:{v0, v3}];

  sub_27463827C();
}

void WFVariableString.substring(with:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_27463822C();
  v5 = [v4 substringWithRange_];

  sub_27463827C();
}

NSAttributedString __swiftcall WFVariableString.attributedString(byAddingTypingAttributes:)(Swift::OpaquePointer byAddingTypingAttributes)
{
  v1 = sub_27463822C();
  v2 = sub_27463B4BC();
  v3 = [v1 attributedStringByAddingTypingAttributes_];

  return v3;
}

uint64_t OUTLINED_FUNCTION_0_19()
{

  return sub_27463822C();
}

id sub_274488774(void *a1)
{
  sub_274638DAC();
  OUTLINED_FUNCTION_1();
  v93 = v3;
  v94 = v2;
  MEMORY[0x28223BE20](v2);
  v5 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v92 = &v88 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CEF8, &unk_27464F110);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v88 - v9;
  v11 = sub_274637C3C();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = MEMORY[0x28223BE20](v17).n128_u64[0];
  v20 = &v88 - v19;
  v21 = [a1 userInfo];
  v22 = sub_27463B4CC();

  v23 = sub_274637BBC();
  sub_27452F288(v23, v24, v22, &v98);

  if (!v99)
  {
    sub_274415174(&v98, &unk_28094A230, &qword_27464D1B0);
    goto LABEL_6;
  }

  v25 = MEMORY[0x277D837D0];
  if (swift_dynamicCast())
  {
    sub_274637C2C();
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
    {
      sub_274415174(v10, &qword_28094CEF8, &unk_27464F110);
      goto LABEL_6;
    }

    (*(v13 + 32))(v20, v10, v11);
    (*(v13 + 104))(v16, *MEMORY[0x277CFC140], v11);
    v43 = sub_2745E14FC(v20, v16);
    v45 = v13 + 8;
    v44 = *(v13 + 8);
    v44(v16, v11);
    if ((v43 & 1) == 0)
    {
      v44(v20, v11);
      goto LABEL_6;
    }

    v89 = v11;
    v90 = v44;
    v91 = v45;
    v46 = v92;
    sub_274638C2C();
    v47 = a1;
    v48 = sub_274638D9C();
    v49 = sub_27463BBEC();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 138412290;
      *(v50 + 4) = v47;
      *v51 = v47;
      v52 = v47;
      _os_log_impl(&dword_2743F0000, v48, v49, "Presenting customized error alert for rate limit error: %@", v50, 0xCu);
      sub_274415174(v51, &qword_280950E00, &qword_27464C680);
      OUTLINED_FUNCTION_14_6();
      OUTLINED_FUNCTION_14_6();
    }

    (*(v93 + 8))(v46, v94);
    sub_274412734(0, &qword_280952750, 0x277CFC218);
    v53 = v47;
    v41 = sub_27458824C(v47, v54);
    v94 = [objc_allocWithZone(sub_274637C9C()) init];
    v55 = sub_274637C7C();
    if (v56)
    {
      v57 = v55;
    }

    else
    {
      v57 = 0x54504774616843;
    }

    if (v56)
    {
      v58 = v56;
    }

    else
    {
      v58 = 0xE700000000000000;
    }

    sub_27463B70C("Daily Limit Reached", 19);
    if (qword_2809492C0 != -1)
    {
      swift_once();
    }

    v59 = qword_28094BB00;
    v60 = sub_27463B66C();
    v61 = sub_27463B66C();

    v63 = OUTLINED_FUNCTION_1_12(v62, sel_localizedStringForKey_value_table_);

    v64 = sub_27463B6AC();
    v66 = v65;

    sub_274489640(v64, v66, v41, &selRef_setTitle_);
    sub_27463B70C("You've reached your daily limit for %@. Using %@ in Shortcuts will be limited for up to 24 hours.", 97);
    v67 = sub_27463B66C();
    v68 = sub_27463B66C();

    v69 = [v59 localizedStringForKey:v67 value:v68 table:0];

    sub_27463B6AC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E90, &qword_274648630);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_2746486A0;
    *(v70 + 56) = v25;
    v71 = sub_27440F250();
    *(v70 + 32) = v57;
    *(v70 + 40) = v58;
    *(v70 + 96) = v25;
    *(v70 + 104) = v71;
    *(v70 + 64) = v71;
    *(v70 + 72) = v57;
    *(v70 + 80) = v58;
    swift_bridgeObjectRetain_n();
    v72 = sub_27463B67C();
    v74 = v73;

    sub_274489640(v72, v74, v41, &selRef_setMessage_);
    if (v57 == 0x54504774616843 && v58 == 0xE700000000000000)
    {
    }

    else
    {
      v76 = sub_27463C6BC();

      if ((v76 & 1) == 0)
      {
        sub_27463B70C("Open Settings", 13);
LABEL_34:
        v77 = sub_27463B66C();
        v78 = sub_27463B66C();

        v80 = OUTLINED_FUNCTION_1_12(v79, sel_localizedStringForKey_value_table_);

        v81 = sub_27463B6AC();
        v83 = v82;

        sub_274412734(0, &unk_28094FE60, 0x277CFC220);
        v84 = swift_allocObject();
        v85 = v94;
        *(v84 + 16) = v94;
        v86 = v85;
        v87 = sub_274489360(v81, v83, 0, 0, sub_2744896AC, v84);
        [v41 addButton_];

        v90(v20, v89);
        return v41;
      }
    }

    sub_27463B70C("Upgrade to ChatGPT Plus", 23);
    goto LABEL_34;
  }

LABEL_6:
  sub_274638C2C();
  v26 = a1;
  v27 = sub_274638D9C();
  v28 = sub_27463BC1C();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v97 = v30;
    *v29 = 136315138;
    v31 = [v26 userInfo];
    v32 = sub_27463B4CC();

    v33 = sub_274637BBC();
    sub_27452F288(v33, v34, v32, &v98);

    if (v99)
    {
      v35 = swift_dynamicCast();
      v36 = v95;
      v37 = v96;
      if (!v35)
      {
        v36 = 0;
        v37 = 0;
      }
    }

    else
    {
      sub_274415174(&v98, &unk_28094A230, &qword_27464D1B0);
      v36 = 0;
      v37 = 0;
    }

    *&v98 = v36;
    *(&v98 + 1) = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C298, &qword_27464F120);
    v38 = sub_27463B6BC();
    v40 = sub_2745E7980(v38, v39, &v97);

    *(v29 + 4) = v40;
    _os_log_impl(&dword_2743F0000, v27, v28, "Not presenting customized rate limit error for model %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_14_6();
    OUTLINED_FUNCTION_14_6();
  }

  (*(v93 + 8))(v5, v94);
  return 0;
}

void sub_274489124()
{
  v0 = sub_274637E2C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_274638DAC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274638C2C();
  v8 = sub_274638D9C();
  v9 = sub_27463BBEC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2743F0000, v8, v9, "Opening upsell accountUpgradeURL", v10, 2u);
    MEMORY[0x277C5A270](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v11 = [objc_opt_self() sharedContext];
  sub_274637C4C();
  v12 = sub_274637DFC();
  (*(v1 + 8))(v3, v0);
  [v11 openURL_];
}

id sub_274489360(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_27463B66C();

  if (a5)
  {
    v14[4] = a5;
    v14[5] = a6;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_27443E0E8;
    v14[3] = &block_descriptor_9;
    v11 = _Block_copy(v14);
  }

  else
  {
    v11 = 0;
  }

  v12 = [swift_getObjCClassFromMetadata() buttonWithTitle:v10 style:a3 preferred:a4 & 1 handler:v11];
  _Block_release(v11);

  return v12;
}

unint64_t sub_274489478()
{
  result = qword_28094CEF0;
  if (!qword_28094CEF0)
  {
    sub_274412734(255, &qword_280954130, 0x277D75D28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CEF0);
  }

  return result;
}

void sub_2744894E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();

  JUMPOUT(0x277C57A20);
}

void sub_274489550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();

  JUMPOUT(0x277C57A30);
}

void sub_2744895BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();

  JUMPOUT(0x277C57A10);
}

void sub_274489640(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_27463B66C();

  [a3 *a4];
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id OUTLINED_FUNCTION_1_12(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

BOOL sub_2744896FC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_27463B6AC();
  v4 = v3;
  sub_27463C74C();
  sub_27463B71C();
  v5 = sub_27463C7AC();

  v6 = ~(-1 << *(a2 + 32));
  do
  {
    v7 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
    v8 = v7 != 0;
    if (!v7)
    {
      break;
    }

    v9 = sub_27463B6AC();
    OUTLINED_FUNCTION_8_8();
    v10 = sub_27463B6AC();
    if (v9 == v10 && v4 == v11)
    {

      return 1;
    }

    v13 = OUTLINED_FUNCTION_6_7(v9, v11, v10);

    v5 = (v5 & v6) + 1;
  }

  while ((v13 & 1) == 0);
  return v8;
}

uint64_t sub_27448983C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    sub_27463C74C();
    MEMORY[0x277C58EA0](a1);
    v5 = sub_27463C7AC();
    v6 = ~(-1 << *(a2 + 32));
    do
    {
      v7 = v5 & v6;
      v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = v7 + 1;
    }

    while (*(*(a2 + 48) + 8 * v7) != a1);
  }

  return v2;
}

BOOL sub_2744898EC(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3[2])
  {
    return 0;
  }

  sub_27463C74C();
  sub_27463B71C();
  sub_27463C7AC();
  OUTLINED_FUNCTION_3_15();
  do
  {
    v10 = v9 & v4;
    v11 = (v5 << (v9 & v4)) & *(v3 + (((v9 & v4) >> 3) & 0xFFFFFFFFFFFFFF8));
    v12 = v11 != 0;
    if (!v11)
    {
      break;
    }

    v13 = (a3[6] + 16 * v10);
    if (*v13 == a1 && v13[1] == a2)
    {
      break;
    }

    v15 = sub_27463C6BC();
    v9 = v10 + 1;
  }

  while ((v15 & 1) == 0);
  return v12;
}

BOOL sub_2744899C4(uint64_t a1, void *a2)
{
  if (!a2[2])
  {
    return 0;
  }

  sub_27463C2EC();
  OUTLINED_FUNCTION_3_15();
  do
  {
    v8 = v7 & v3;
    v9 = (v4 << (v7 & v3)) & *(v2 + (((v7 & v3) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    sub_27448E108(a2[6] + 40 * v8, v13);
    v11 = MEMORY[0x277C58A40](v13, a1);
    sub_274430664(v13);
    v7 = v8 + 1;
  }

  while ((v11 & 1) == 0);
  return v10;
}

uint64_t WFNumberFieldParameter.view(with:)(uint64_t a1)
{
  sub_274489AE4(v1, a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CF00, &qword_27464F180);
  sub_274489D2C();
  return sub_27463AE9C();
}

void *sub_274489AE4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_274489DB8();
    sub_274489E0C();
  }

  else
  {
    type metadata accessor for ParameterStateStore();
    sub_27448E730(&qword_28094B550, 255, type metadata accessor for ParameterStateStore, &protocol conformance descriptor for ParameterStateStore);

    sub_27463950C();
    v6 = swift_allocObject();
    *(v6 + 16) = sub_27448E244;
    *(v6 + 24) = a2;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_274458A90;
    *(v7 + 24) = a2;
    __src[0] = 0;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_274489DB8();
    sub_274489E0C();
    swift_retain_n();
  }

  v8 = a1;
  sub_274639DDC();
  return memcpy(a3, __src, 0x52uLL);
}

unint64_t sub_274489D2C()
{
  result = qword_28094CF08;
  if (!qword_28094CF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CF00, &qword_27464F180);
    sub_274489DB8();
    sub_274489E0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CF08);
  }

  return result;
}

unint64_t sub_274489DB8()
{
  result = qword_28094CF10;
  if (!qword_28094CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CF10);
  }

  return result;
}

unint64_t sub_274489E0C()
{
  result = qword_28094CF18;
  if (!qword_28094CF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CF18);
  }

  return result;
}

uint64_t sub_274489E64()
{
  result = sub_27463B66C();
  qword_280965E70 = result;
  return result;
}

id WFNumberFieldParameter.moduleSummarySlot(for:)(uint64_t a1)
{
  sub_274412734(0, &qword_28094BD80, 0x277D7D7B0);
  v3 = [v1 localizedLabel];
  v4 = sub_27463B6AC();
  v6 = v5;

  v7 = sub_27444C12C(v1);
  v9 = v8;
  if (qword_2809492C8 != -1)
  {
    swift_once();
  }

  v10 = sub_27444AEE4(v4, v6, v7, v9, qword_280965E70);
  [v10 setPrefersNoWrapping_];
  if (a1)
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      swift_unknownObjectRetain();
      v13 = [v12 variable];
      if (v13)
      {
        v14 = v13;
        [v10 populateWith_];
      }

      else
      {
        v15 = [v12 value];
        if (!v15)
        {
LABEL_10:
          swift_unknownObjectRelease();
          return v10;
        }

        v14 = v15;
        [v10 populateWithString_];
      }

      goto LABEL_10;
    }
  }

  return v10;
}