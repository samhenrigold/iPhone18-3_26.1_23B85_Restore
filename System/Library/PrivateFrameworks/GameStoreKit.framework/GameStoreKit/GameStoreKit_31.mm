uint64_t sub_24E913EB4@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BA0, &qword_24F967C98);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v44 - v2;
  *&v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BA8, &qword_24F967CA0);
  MEMORY[0x28223BE20](v44);
  v5 = &v44 - v4;
  *&v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BB0, &qword_24F967CA8);
  MEMORY[0x28223BE20](v46);
  v7 = &v44 - v6;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BB8, &qword_24F967CB0);
  MEMORY[0x28223BE20](v45);
  v47 = &v44 - v8;
  v9 = sub_24F9259C8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F2112F0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v13, qword_27F39E610);
  sub_24E91799C(v16, v15, type metadata accessor for CardLayoutMetrics);
  sub_24F925988();
  sub_24F9258E8();

  (*(v10 + 104))(v12, *MEMORY[0x277CE0A10], v9);
  v17 = sub_24F9259F8();

  (*(v10 + 8))(v12, v9);
  v18 = v13[20];

  *&v15[v18] = v17;
  *&v15[v13[21]] = 4;
  v19 = sub_24F925A08();
  v20 = v13[27];

  *&v15[v20] = v19;
  *&v15[v13[28]] = 4;
  *v3 = sub_24F924C98();
  *(v3 + 1) = 0;
  v3[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BC0, &qword_24F967CB8);
  v22 = v48;
  sub_24E914444(v48, &v3[*(v21 + 44)]);
  sub_24F927628();
  sub_24F9242E8();
  sub_24E6009C8(v3, v5, &qword_27F221BA0, &qword_24F967C98);
  v23 = &v5[*(v44 + 36)];
  v24 = v55;
  *(v23 + 4) = v54;
  *(v23 + 5) = v24;
  *(v23 + 6) = v56;
  v25 = v51;
  *v23 = v50;
  *(v23 + 1) = v25;
  v26 = v53;
  *(v23 + 2) = v52;
  *(v23 + 3) = v26;
  KeyPath = swift_getKeyPath();
  sub_24E6009C8(v5, v7, &qword_27F221BA8, &qword_24F967CA0);
  v28 = &v7[*(v46 + 36)];
  *v28 = KeyPath;
  v28[8] = 0;
  v29 = &v15[v13[14]];
  v30 = *(v29 + 1);
  v46 = *v29;
  v44 = v30;
  v31 = sub_24F925808();
  v32 = v7;
  v33 = v47;
  sub_24E6009C8(v32, v47, &qword_27F221BB0, &qword_24F967CA8);
  v34 = v33 + *(v45 + 36);
  *v34 = v31;
  *(v34 + 24) = v44;
  *(v34 + 8) = v46;
  *(v34 + 40) = 0;
  v35 = sub_24F927618();
  v37 = v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BC8, &unk_24F967CF0);
  v39 = v49;
  v40 = v49 + *(v38 + 36);
  v41 = type metadata accessor for ArcadeUpsellCardExtraLargeView.Footer(0);
  sub_24E925518(11, v22, 4u, (v22 + *(v41 + 24)), *(v22 + *(v41 + 20)), v40);
  sub_24E917A04(v15, type metadata accessor for CardLayoutMetrics);
  v42 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221990, &qword_24F967B08) + 36));
  *v42 = v35;
  v42[1] = v37;
  return sub_24E6009C8(v33, v39, &qword_27F221BB8, &qword_24F967CB0);
}

uint64_t sub_24E914444@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v228 = a2;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221A40, &unk_24F968090);
  v219 = *(v220 - 8);
  MEMORY[0x28223BE20](v220);
  v181 = &v175 - v3;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2219F8, &unk_24F967B50);
  MEMORY[0x28223BE20](v226);
  v227 = &v175 - v4;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221A00, &unk_24F968080);
  MEMORY[0x28223BE20](v218);
  v221 = &v175 - v5;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221A08, &unk_24F967B60);
  MEMORY[0x28223BE20](v224);
  v223 = &v175 - v6;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221A10, &unk_24F9680B0);
  MEMORY[0x28223BE20](v243);
  v225 = &v175 - v7;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221A28, &unk_24F967B80);
  MEMORY[0x28223BE20](v217);
  v222 = &v175 - v8;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2219F0, &unk_24F9680A0);
  MEMORY[0x28223BE20](v242);
  v241 = &v175 - v9;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BD0, &unk_24FA37420);
  MEMORY[0x28223BE20](v210);
  v211 = &v175 - v10;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221AB8, &unk_24F967BC0);
  MEMORY[0x28223BE20](v240);
  v212 = &v175 - v11;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BD8, &unk_24F967D00);
  MEMORY[0x28223BE20](v208);
  v209 = &v175 - v12;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BE0, &unk_24FA37430);
  MEMORY[0x28223BE20](v205);
  v206 = &v175 - v13;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BE8, &unk_24F967D10);
  MEMORY[0x28223BE20](v194);
  v199 = &v175 - v14;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BF0, &qword_24FA37440);
  MEMORY[0x28223BE20](v190);
  v191 = &v175 - v15;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C70, &unk_24F93E7A0);
  MEMORY[0x28223BE20](v193);
  v192 = &v175 - v16;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C60, &unk_24F94FFF0);
  MEMORY[0x28223BE20](v198);
  v197 = &v175 - v17;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C50, &unk_24F93E790);
  MEMORY[0x28223BE20](v203);
  v202 = &v175 - v18;
  v189 = type metadata accessor for CardPrimaryActionButton(0);
  MEMORY[0x28223BE20](v189);
  v201 = &v175 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = type metadata accessor for CommonCardAttributes(0);
  MEMORY[0x28223BE20](v229);
  v230 = &v175 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20, &unk_24F94D670);
  MEMORY[0x28223BE20](v204);
  v207 = &v175 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8, &unk_24F93C010);
  MEMORY[0x28223BE20](v22 - 8);
  v176 = &v175 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v175 = &v175 - v25;
  v234 = sub_24F9259C8();
  v244 = *(v234 - 8);
  MEMORY[0x28223BE20](v234);
  v232 = &v175 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v233);
  v237 = &v175 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v188 = &v175 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221A18, &unk_24F9680C0);
  MEMORY[0x28223BE20](v30 - 8);
  v216 = &v175 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v213 = &v175 - v33;
  MEMORY[0x28223BE20](v34);
  v215 = &v175 - v35;
  MEMORY[0x28223BE20](v36);
  v196 = &v175 - v37;
  MEMORY[0x28223BE20](v38);
  v200 = &v175 - v39;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BF8, &qword_24F967D20);
  MEMORY[0x28223BE20](v231);
  v214 = &v175 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v239 = &v175 - v42;
  MEMORY[0x28223BE20](v43);
  v195 = &v175 - v44;
  MEMORY[0x28223BE20](v45);
  v236 = &v175 - v46;
  MEMORY[0x28223BE20](v47);
  v245 = &v175 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221C00, &qword_24F967D28);
  v50 = v49 - 8;
  MEMORY[0x28223BE20](v49);
  v238 = &v175 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v54 = (&v175 - v53);
  v55 = type metadata accessor for ArcadeUpsellCardExtraLargeView.Footer(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
  sub_24F9237D8();
  v56 = *&v250[0];
  v57 = sub_24F927628();
  v59 = v58;
  v60 = sub_24F9251C8();
  v61 = (v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221C08, &unk_24F967D30) + 36));
  v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10) + 36);
  v63 = *MEMORY[0x277CE13B8];
  v64 = sub_24F927748();
  v65 = *(v64 - 8);
  v66 = *(v65 + 104);
  v180 = v63;
  v67 = v63;
  v68 = a1;
  v179 = v64;
  v178 = v66;
  v177 = v65 + 104;
  (v66)(v61 + v62, v67);
  *v61 = v60;
  *v54 = v56;
  v54[1] = v57;
  v54[2] = v59;
  LOBYTE(v57) = sub_24F925828();
  sub_24F923318();
  v69 = *(v50 + 44);
  v235 = v54;
  v70 = v54 + v69;
  *v70 = v57;
  *(v70 + 1) = v71;
  *(v70 + 2) = v72;
  *(v70 + 3) = v73;
  *(v70 + 4) = v74;
  v70[40] = 0;
  v75 = *(a1 + *(v55 + 20));
  v76 = v245;
  sub_24E925518(7, a1, 4u, (a1 + *(v55 + 24)), v75, v245);
  LOBYTE(v50) = sub_24F925828();
  sub_24F923318();
  v77 = v76 + *(v231 + 36);
  *v77 = v50;
  *(v77 + 8) = v78;
  *(v77 + 16) = v79;
  *(v77 + 24) = v80;
  *(v77 + 32) = v81;
  *(v77 + 40) = 0;
  if (qword_27F2112F0 != -1)
  {
    swift_once();
  }

  v82 = v233;
  v187 = __swift_project_value_buffer(v233, qword_27F39E610);
  v83 = v188;
  sub_24E91799C(v187, v188, type metadata accessor for CardLayoutMetrics);
  sub_24F925988();
  sub_24F9258E8();

  v84 = v244;
  v85 = *(v244 + 104);
  v86 = v232;
  v186 = *MEMORY[0x277CE0A10];
  v87 = v234;
  v185 = v244 + 104;
  v184 = v85;
  v85(v232);
  v88 = sub_24F9259F8();

  v89 = *(v84 + 8);
  v244 = v84 + 8;
  v183 = v89;
  v89(v86, v87);
  v90 = v82[20];

  *(v83 + v90) = v88;
  *(v83 + v82[21]) = 4;
  v91 = sub_24F925A08();
  v92 = v82[27];

  *(v83 + v92) = v91;
  *(v83 + v82[28]) = 4;
  sub_24E917A04(v83, type metadata accessor for CardLayoutMetrics);
  v93 = v68 + *(type metadata accessor for ArcadeUpsellCard(0) + 32);
  v94 = v229;
  v182 = *(v93 + *(v229 + 36));
  if (!v182)
  {
    v95 = v175;
    sub_24E60169C(v93 + *(v229 + 32), v175, &qword_27F213FB8, &unk_24F93C010);
    v96 = type metadata accessor for GSKVideo(0);
    (*(*(v96 - 8) + 48))(v95, 1, v96);
    sub_24E601704(v95, &qword_27F213FB8, &unk_24F93C010);
  }

  v97 = v230;
  sub_24E91799C(v93, v230, type metadata accessor for CommonCardAttributes);
  v98 = v97 + *(v94 + 80);
  v188 = v93;
  v99 = v201;
  sub_24E60169C(v98, v201, &qword_27F21B270, &unk_24F950890);
  sub_24E60169C(v97 + *(v94 + 76), v250, qword_27F24EC90, &unk_24F93C1D0);
  v100 = v189;
  v101 = v99 + *(v189 + 20);
  v102 = v250[1];
  *v101 = v250[0];
  *(v101 + 16) = v102;
  *(v101 + 32) = v251;
  *(v99 + *(v100 + 24)) = sub_24F92CE08() & 1;
  *(v99 + *(v100 + 28)) = v75;
  sub_24E91799C(v99, v191, type metadata accessor for CardPrimaryActionButton);
  swift_storeEnumTagMultiPayload();
  sub_24E916E78(&qword_27F214C78, type metadata accessor for CardPrimaryActionButton, &unk_24F9508C0);

  v103 = v192;
  sub_24F924E28();
  sub_24E60169C(v103, v199, &qword_27F214C70, &unk_24F93E7A0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C88, &unk_24F950000);
  sub_24E63CEC4();
  sub_24E916DC4(&qword_27F214C80, &qword_27F214C88, &unk_24F950000, sub_24E63CF80);
  v104 = v197;
  sub_24F924E28();
  sub_24E601704(v103, &qword_27F214C70, &unk_24F93E7A0);
  sub_24E60169C(v104, v206, &qword_27F214C60, &unk_24F94FFF0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CF0, &unk_24F94BDA0);
  sub_24E63CE0C();
  sub_24E63D208();
  v105 = v202;
  sub_24F924E28();
  sub_24E601704(v104, &qword_27F214C60, &unk_24F94FFF0);
  sub_24E60169C(v105, v209, &qword_27F214C50, &unk_24F93E790);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B10, &unk_24F93E700);
  sub_24E63C31C();
  sub_24E63CD80();
  v106 = v207;
  sub_24F924E28();
  sub_24E601704(v105, &qword_27F214C50, &unk_24F93E790);
  sub_24E917A04(v99, type metadata accessor for CardPrimaryActionButton);
  sub_24E917A04(v230, type metadata accessor for CommonCardAttributes);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B00, &unk_24F94FF80);
  (*(*(v107 - 8) + 56))(v106, 0, 1, v107);
  sub_24E60169C(v106, v211, &qword_27F214A20, &unk_24F94D670);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221AD8, &unk_24FA37150);
  sub_24E916C04();
  sub_24E916D48(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
  v108 = v212;
  sub_24F924E28();
  sub_24E60169C(v108, v241, &qword_27F221AB8, &unk_24F967BC0);
  swift_storeEnumTagMultiPayload();
  v109 = sub_24E916AC0();
  v110 = sub_24E916B4C();
  v111 = v196;
  v230 = v109;
  v211 = v110;
  sub_24F924E28();
  sub_24E601704(v108, &qword_27F221AB8, &unk_24F967BC0);
  sub_24E601704(v106, &qword_27F214A20, &unk_24F94D670);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221B30, &qword_24F967C00);
  v113 = *(v112 - 8);
  v114 = *(v113 + 56);
  v212 = v112;
  v210 = v114;
  v209 = v113 + 56;
  (v114)(v111, 0, 1);
  v115 = v111;
  v116 = v188;
  v117 = v200;
  sub_24E6009C8(v115, v200, &qword_27F221A18, &unk_24F9680C0);
  LOBYTE(v105) = sub_24F925828();
  sub_24F923318();
  v119 = v118;
  v121 = v120;
  v123 = v122;
  v125 = v124;
  v126 = v117;
  v127 = v195;
  sub_24E6009C8(v126, v195, &qword_27F221A18, &unk_24F9680C0);
  v128 = v127 + *(v231 + 36);
  *v128 = v105;
  *(v128 + 8) = v119;
  *(v128 + 16) = v121;
  *(v128 + 24) = v123;
  *(v128 + 32) = v125;
  *(v128 + 40) = 0;
  sub_24E6009C8(v127, v236, &qword_27F221BF8, &qword_24F967D20);
  v129 = v237;
  sub_24E91799C(v187, v237, type metadata accessor for CardLayoutMetrics);
  sub_24F925988();
  sub_24F9258E8();

  v130 = v232;
  v131 = v234;
  v184(v232, v186, v234);
  v132 = sub_24F9259F8();

  v183(v130, v131);
  v133 = v233;
  v134 = v233[20];

  *(v129 + v134) = v132;
  *(v129 + v133[21]) = 4;
  v135 = sub_24F925A08();
  v136 = v133[27];

  *(v129 + v136) = v135;
  *(v129 + v133[28]) = 4;
  v137 = v229;
  if (!v182)
  {
    v138 = v176;
    sub_24E60169C(v116 + *(v229 + 32), v176, &qword_27F213FB8, &unk_24F93C010);
    v139 = type metadata accessor for GSKVideo(0);
    (*(*(v139 - 8) + 48))(v138, 1, v139);
    sub_24E601704(v138, &qword_27F213FB8, &unk_24F93C010);
  }

  v140 = (v116 + *(v137 + 64));
  v141 = v140[1];
  if (!v141)
  {
    goto LABEL_12;
  }

  v142 = *v140;
  v143 = HIBYTE(v141) & 0xF;
  if ((v141 & 0x2000000000000000) == 0)
  {
    v143 = v142 & 0xFFFFFFFFFFFFLL;
  }

  if (v143)
  {
    *&v250[0] = v142;
    *(&v250[0] + 1) = v141;
    sub_24E600AEC();

    v144 = sub_24F925E18();
    v146 = v145;
    v148 = v147;
    v149 = sub_24F925C98();
    v151 = v150;
    v153 = v152;
    v155 = v154;
    sub_24E600B40(v144, v146, v148 & 1);

    KeyPath = swift_getKeyPath();
    LODWORD(v146) = sub_24F9251C8();
    v249 = v153 & 1;
    v248 = 0;
    v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221A50, &unk_24F967B90);
    v158 = v181;
    v178(&v181[*(v157 + 36)], v180, v179);
    *v158 = v149;
    *(v158 + 1) = v151;
    v158[16] = v249;
    *(v158 + 17) = v250[0];
    *(v158 + 5) = *(v250 + 3);
    *(v158 + 3) = v155;
    *(v158 + 4) = KeyPath;
    *(v158 + 5) = 4;
    v158[48] = v248;
    *(v158 + 49) = v246;
    v158[51] = v247;
    *(v158 + 13) = v146;
    v159 = v220;
    *&v158[*(v220 + 36)] = 256;
    v160 = v158;
    v161 = v222;
    sub_24E6009C8(v160, v222, &qword_27F221A40, &unk_24F968090);
    (*(v219 + 56))(v161, 0, 1, v159);
  }

  else
  {
LABEL_12:
    v161 = v222;
    (*(v219 + 56))(v222, 1, 1, v220);
  }

  sub_24E60169C(v161, v221, &qword_27F221A28, &unk_24F967B80);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ArcadeUpsellCardConfiguration.VisualView(0);
  sub_24E916D48(&qword_27F221A30, &qword_27F221A28, &unk_24F967B80, sub_24E9165E0);
  sub_24E916E78(&qword_27F221A68, type metadata accessor for ArcadeUpsellCardConfiguration.VisualView, &unk_24F9681B4);
  v162 = v223;
  sub_24F924E28();
  sub_24E60169C(v162, v227, &qword_27F221A08, &unk_24F967B60);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221A70, &unk_24F9680D0);
  sub_24E9167B0();
  sub_24E9169D8();
  v163 = v225;
  sub_24F924E28();
  sub_24E601704(v162, &qword_27F221A08, &unk_24F967B60);
  sub_24E60169C(v163, v241, &qword_27F221A10, &unk_24F9680B0);
  swift_storeEnumTagMultiPayload();
  v164 = v213;
  sub_24F924E28();
  sub_24E601704(v163, &qword_27F221A10, &unk_24F9680B0);
  sub_24E601704(v161, &qword_27F221A28, &unk_24F967B80);
  v210(v164, 0, 1, v212);
  v165 = v215;
  sub_24E6009C8(v164, v215, &qword_27F221A18, &unk_24F9680C0);
  sub_24E917A04(v237, type metadata accessor for CardLayoutMetrics);
  v166 = v238;
  sub_24E60169C(v235, v238, &qword_27F221C00, &qword_24F967D28);
  v167 = v239;
  sub_24E60169C(v245, v239, &qword_27F221BF8, &qword_24F967D20);
  v168 = v236;
  v169 = v214;
  sub_24E60169C(v236, v214, &qword_27F221BF8, &qword_24F967D20);
  v170 = v216;
  sub_24E60169C(v165, v216, &qword_27F221A18, &unk_24F9680C0);
  v171 = v228;
  *v228 = 0;
  *(v171 + 8) = 0;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221C10, &qword_24F967D40);
  sub_24E60169C(v166, v171 + v172[12], &qword_27F221C00, &qword_24F967D28);
  sub_24E60169C(v167, v171 + v172[16], &qword_27F221BF8, &qword_24F967D20);
  sub_24E60169C(v169, v171 + v172[20], &qword_27F221BF8, &qword_24F967D20);
  sub_24E60169C(v170, v171 + v172[24], &qword_27F221A18, &unk_24F9680C0);
  v173 = v171 + v172[28];
  *v173 = 0;
  v173[8] = 0;
  sub_24E601704(v165, &qword_27F221A18, &unk_24F9680C0);
  sub_24E601704(v168, &qword_27F221BF8, &qword_24F967D20);
  sub_24E601704(v245, &qword_27F221BF8, &qword_24F967D20);
  sub_24E601704(v235, &qword_27F221C00, &qword_24F967D28);
  sub_24E601704(v170, &qword_27F221A18, &unk_24F9680C0);
  sub_24E601704(v169, &qword_27F221BF8, &qword_24F967D20);
  sub_24E601704(v239, &qword_27F221BF8, &qword_24F967D20);
  return sub_24E601704(v238, &qword_27F221C00, &qword_24F967D28);
}

unint64_t sub_24E9161A0()
{
  result = qword_27F2219A0;
  if (!qword_27F2219A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221960, &qword_24F9679C0);
    sub_24E916258();
    sub_24E602068(&qword_27F2219C0, &qword_27F221990, &qword_24F967B08, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2219A0);
  }

  return result;
}

unint64_t sub_24E916258()
{
  result = qword_27F2219A8;
  if (!qword_27F2219A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221980, &qword_24F9679E0);
    sub_24E602068(&qword_27F2219B0, &qword_27F2219B8, &qword_24F967B18, MEMORY[0x277CE1138]);
    sub_24E916E78(&qword_27F217CC0, type metadata accessor for CardHeightViewModifier, &unk_24FA033B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2219A8);
  }

  return result;
}

unint64_t sub_24E916340()
{
  result = qword_27F2219C8;
  if (!qword_27F2219C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221998, &qword_24F967B10);
    sub_24E9163F8();
    sub_24E602068(&qword_27F217098, &qword_27F2170A0, &unk_24F967B30, &unk_24FA0D448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2219C8);
  }

  return result;
}

unint64_t sub_24E9163F8()
{
  result = qword_27F2219D0;
  if (!qword_27F2219D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2219D8, &unk_24F967B20);
    sub_24E9161A0();
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2219D0);
  }

  return result;
}

unint64_t sub_24E9164B0()
{
  result = qword_27F2219E0;
  if (!qword_27F2219E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221968, &qword_24F9679C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221960, &qword_24F9679C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221998, &qword_24F967B10);
    sub_24E9161A0();
    sub_24E6A4C1C();
    sub_24E916340();
    swift_getOpaqueTypeConformance2();
    sub_24E6BC1C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2219E0);
  }

  return result;
}

unint64_t sub_24E9165E0()
{
  result = qword_27F221A38;
  if (!qword_27F221A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221A40, &unk_24F968090);
    sub_24E91666C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221A38);
  }

  return result;
}

unint64_t sub_24E91666C()
{
  result = qword_27F221A48;
  if (!qword_27F221A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221A50, &unk_24F967B90);
    sub_24E9166F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221A48);
  }

  return result;
}

unint64_t sub_24E9166F8()
{
  result = qword_27F221A58;
  if (!qword_27F221A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221A60, &unk_24F9680F0);
    sub_24E67283C();
    sub_24E602068(&qword_27F217388, &qword_27F217390, &unk_24F9454F0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221A58);
  }

  return result;
}

unint64_t sub_24E9167B0()
{
  result = qword_27F221A78;
  if (!qword_27F221A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221A70, &unk_24F9680D0);
    sub_24E916D48(&qword_27F221A80, &qword_27F221A88, &unk_24F967BA0, sub_24E916868);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221A78);
  }

  return result;
}

unint64_t sub_24E916868()
{
  result = qword_27F221A90;
  if (!qword_27F221A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221A98, &unk_24F9680E0);
    sub_24E916920();
    sub_24E602068(&qword_27F214778, &qword_27F214780, &qword_24F93D800, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221A90);
  }

  return result;
}

unint64_t sub_24E916920()
{
  result = qword_27F221AA0;
  if (!qword_27F221AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221AA8, &unk_24F967BB0);
    sub_24E602068(&qword_27F215A40, &qword_27F215A48, &unk_24F958F00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221AA0);
  }

  return result;
}

unint64_t sub_24E9169D8()
{
  result = qword_27F221AB0;
  if (!qword_27F221AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221A08, &unk_24F967B60);
    sub_24E916D48(&qword_27F221A30, &qword_27F221A28, &unk_24F967B80, sub_24E9165E0);
    sub_24E916E78(&qword_27F221A68, type metadata accessor for ArcadeUpsellCardConfiguration.VisualView, &unk_24F9681B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221AB0);
  }

  return result;
}

unint64_t sub_24E916AC0()
{
  result = qword_27F221AC0;
  if (!qword_27F221AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221A10, &unk_24F9680B0);
    sub_24E9167B0();
    sub_24E9169D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221AC0);
  }

  return result;
}

unint64_t sub_24E916B4C()
{
  result = qword_27F221AC8;
  if (!qword_27F221AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221AB8, &unk_24F967BC0);
    sub_24E916C04();
    sub_24E916D48(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221AC8);
  }

  return result;
}

unint64_t sub_24E916C04()
{
  result = qword_27F221AD0;
  if (!qword_27F221AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221AD8, &unk_24FA37150);
    sub_24E916C90();
    sub_24E916EC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221AD0);
  }

  return result;
}

unint64_t sub_24E916C90()
{
  result = qword_27F221AE0;
  if (!qword_27F221AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221AE8, &unk_24F967BD0);
    sub_24E86BC28();
    sub_24E916D48(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221AE0);
  }

  return result;
}

uint64_t sub_24E916D48(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

uint64_t sub_24E916DC4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_24E916E78(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E916E78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24E916EC0()
{
  result = qword_27F221AF0;
  if (!qword_27F221AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221AF8, &unk_24F967BE0);
    sub_24E916F4C();
    sub_24E917008();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221AF0);
  }

  return result;
}

unint64_t sub_24E916F4C()
{
  result = qword_27F221B00;
  if (!qword_27F221B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221B08, &qword_24FA37160);
    sub_24E916E78(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221B00);
  }

  return result;
}

unint64_t sub_24E917008()
{
  result = qword_27F221B10;
  if (!qword_27F221B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221B18, &unk_24F967BF0);
    sub_24E916DC4(&qword_27F221B20, &qword_27F221B28, &qword_24F968040, sub_24E86BC28);
    sub_24E916E78(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221B10);
  }

  return result;
}

uint64_t sub_24E9170F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArcadeUpsellCardExtraLargeView.Footer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E917154()
{
  result = qword_27F221B48;
  if (!qword_27F221B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221B40, &unk_24F967C10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221B50, &unk_24FA3CC60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221B58, &qword_24F967C20);
    sub_24E917264();
    sub_24E6A4C1C();
    sub_24E91734C();
    swift_getOpaqueTypeConformance2();
    sub_24E6BC1C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221B48);
  }

  return result;
}

unint64_t sub_24E917264()
{
  result = qword_27F221B60;
  if (!qword_27F221B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221B50, &unk_24FA3CC60);
    sub_24E602068(&qword_27F221B68, &qword_27F221B70, &qword_24F967C28, MEMORY[0x277CE11A8]);
    sub_24E916E78(&qword_27F217CC0, type metadata accessor for CardHeightViewModifier, &unk_24FA033B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221B60);
  }

  return result;
}

unint64_t sub_24E91734C()
{
  result = qword_27F221B78;
  if (!qword_27F221B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221B58, &qword_24F967C20);
    sub_24E917404();
    sub_24E602068(&qword_27F217098, &qword_27F2170A0, &unk_24F967B30, &unk_24FA0D448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221B78);
  }

  return result;
}

unint64_t sub_24E917404()
{
  result = qword_27F221B80;
  if (!qword_27F221B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221B88, &unk_24F967C30);
    sub_24E917264();
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221B80);
  }

  return result;
}

uint64_t sub_24E9174D0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ArcadeUpsellCard(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_24F923E98();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24E917664(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for ArcadeUpsellCard(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = sub_24F923E98();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

void sub_24E9177E4(uint64_t a1)
{
  type metadata accessor for ArcadeUpsellCard(319);
  if (v1 <= 0x3F)
  {
    sub_24F923E98();
    if (v2 <= 0x3F)
    {
      sub_24E66ED3C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24E917888()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221970, &qword_24F9679D0);
  type metadata accessor for CardSafeArea(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221968, &qword_24F9679C8);
  sub_24E9164B0();
  swift_getOpaqueTypeConformance2();
  sub_24E916E78(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24E91799C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E917A04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24E917A70()
{
  result = qword_27F221C18;
  if (!qword_27F221C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221BC8, &unk_24F967CF0);
    sub_24E917B28();
    sub_24E602068(&qword_27F2219C0, &qword_27F221990, &qword_24F967B08, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221C18);
  }

  return result;
}

unint64_t sub_24E917B28()
{
  result = qword_27F221C20;
  if (!qword_27F221C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221BB8, &qword_24F967CB0);
    sub_24E917BB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221C20);
  }

  return result;
}

unint64_t sub_24E917BB4()
{
  result = qword_27F221C28;
  if (!qword_27F221C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221BB0, &qword_24F967CA8);
    sub_24E917C6C();
    sub_24E602068(&qword_27F2146E0, &qword_27F2146E8, &qword_24F93D5B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221C28);
  }

  return result;
}

unint64_t sub_24E917C6C()
{
  result = qword_27F221C30;
  if (!qword_27F221C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221BA8, &qword_24F967CA0);
    sub_24E602068(&qword_27F221C38, &qword_27F221BA0, &qword_24F967C98, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221C30);
  }

  return result;
}

uint64_t DynamicUIRequestInfo.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  DynamicUIRequestInfo.init(deserializing:using:)(a1, a2);
  return v4;
}

void *DynamicUIRequestInfo.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v38 = a2;
  v3 = sub_24F928388();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40, &unk_24F967D80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v38 - v17;
  v43 = a1;
  sub_24F928398();
  sub_24F9281F8();
  v19 = *(v4 + 8);
  v39 = v3;
  v41 = v19;
  v42 = v4 + 8;
  v19(v12, v3);
  v20 = sub_24F928E68();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  if (v22(v18, 1, v20) == 1)
  {
    sub_24E9182E0(v18);
    v23 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F24E870, &qword_24F967D90);
    v23 = sub_24F928E48();
    (*(v21 + 8))(v18, v20);
  }

  v24 = v40;
  v40[2] = v23;
  sub_24F928398();
  sub_24F9281F8();
  v25 = v9;
  v26 = v39;
  v41(v25, v39);
  if (v22(v15, 1, v20) == 1)
  {
    sub_24E9182E0(v15);
    v27 = 0;
  }

  else
  {
    v27 = sub_24F928E48();
    (*(v21 + 8))(v15, v20);
  }

  v24[3] = v27;
  type metadata accessor for Action(0);
  v28 = v43;
  sub_24F928398();
  v29 = v38;
  v30 = static Action.tryToMakeInstance(byDeserializing:using:)(v6, v38);
  v31 = v41;
  v41(v6, v26);
  v24[4] = v30;
  sub_24F928398();
  v32 = static Action.tryToMakeInstance(byDeserializing:using:)(v6, v29);
  v31(v6, v26);
  v24[5] = v32;
  sub_24F928398();
  v33 = static Action.tryToMakeInstance(byDeserializing:using:)(v6, v29);
  v31(v6, v26);
  v24[6] = v33;
  sub_24F928398();
  v34 = static Action.tryToMakeInstance(byDeserializing:using:)(v6, v29);
  v31(v6, v26);
  v24[7] = v34;
  sub_24F928398();
  v35 = static Action.tryToMakeInstance(byDeserializing:using:)(v6, v29);
  v36 = sub_24F9285B8();
  (*(*(v36 - 8) + 8))(v29, v36);
  v31(v28, v26);
  v31(v6, v26);
  v24[8] = v35;
  return v24;
}

uint64_t sub_24E9182E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40, &unk_24F967D80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *DynamicUIRequestInfo.deinit()
{

  return v0;
}

uint64_t DynamicUIRequestInfo.__deallocating_deinit()
{
  DynamicUIRequestInfo.deinit();

  return swift_deallocClassInstance();
}

void *sub_24E918404@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for DynamicUIRequestInfo();
  v7 = swift_allocObject();
  result = DynamicUIRequestInfo.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24E9184D0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24E918564()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t sub_24E918628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24E91867C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v7 + 88);
  swift_beginAccess();
  (*(v4 + 16))(v6, a1 + v8, a2);
  return sub_24F92B188();
}

uint64_t sub_24E918774(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0x7463657269646E49;
  v13 = 0xE900000000000028;
  v8 = *(*v7 + 88);
  swift_beginAccess();
  (*(v4 + 16))(v6, a1 + v8, a2);
  v9 = sub_24F92B188();
  MEMORY[0x253050C20](v9);

  MEMORY[0x253050C20](41, 0xE100000000000000);
  return v12;
}

uint64_t sub_24E918914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v20[-v11];
  v14 = *(*v13 + 88);
  swift_beginAccess();
  v15 = *(v7 + 16);
  v15(v12, a1 + v14, a3);
  v16 = *(*a2 + 88);
  swift_beginAccess();
  v15(v9, a2 + v16, a3);
  v17 = sub_24F92AFF8();
  v18 = *(v7 + 8);
  v18(v9, a3);
  v18(v12, a3);
  return v17 & 1;
}

uint64_t sub_24E918AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v9 + 88);
  swift_beginAccess();
  (*(v6 + 16))(v8, a2 + v10, a3);
  sub_24F92AEF8();
  return (*(v6 + 8))(v8, a3);
}

uint64_t sub_24E918C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24F92D068();
  sub_24E918AD8(v7, a1, a2, a3);
  return sub_24F92D0B8();
}

uint64_t sub_24E918C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  sub_24F92D068();
  sub_24E918AD8(v7, *v3, *(a2 + 16), v5);
  return sub_24F92D0B8();
}

uint64_t sub_24E918D88@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, __n128)@<X5>, uint64_t a7@<X8>)
{
  v459 = a5;
  v527 = a4;
  v536 = a3;
  v537 = a1;
  v538 = a7;
  v463 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A10, &unk_24F94BD90);
  MEMORY[0x28223BE20](v463);
  v452 = (&v421 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v430 = (&v421 - v11);
  v425 = type metadata accessor for JSColor(0);
  MEMORY[0x28223BE20](v425);
  v424 = &v421 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v428 = type metadata accessor for CommonCardAttributes.CardBackgroundColor(0);
  v427 = *(v428 - 8);
  MEMORY[0x28223BE20](v428);
  v423 = &v421 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F550, &unk_24F9EC960);
  MEMORY[0x28223BE20](v14 - 8);
  v429 = &v421 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8, &unk_24F94BD70);
  MEMORY[0x28223BE20](v16 - 8);
  v431 = &v421 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v450 = &v421 - v19;
  v461 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221D80, &unk_24F968160);
  MEMORY[0x28223BE20](v461);
  v462 = &v421 - v20;
  v436 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221D88, &unk_24FA046F0);
  MEMORY[0x28223BE20](v436);
  v434 = (&v421 - v21);
  v460 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CA8, &qword_24F950010);
  MEMORY[0x28223BE20](v460);
  v435 = &v421 - v22;
  v493 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221D90, &unk_24F968170);
  MEMORY[0x28223BE20](v493);
  v494 = &v421 - v23;
  v515 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C88, &unk_24F950000);
  MEMORY[0x28223BE20](v515);
  v495 = &v421 - v24;
  v449 = sub_24F924B38();
  v444 = *(v449 - 8);
  MEMORY[0x28223BE20](v449);
  v443 = &v421 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v447 = sub_24F921AF8();
  v446 = *(v447 - 8);
  MEMORY[0x28223BE20](v447);
  v445 = &v421 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v458 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C10, &unk_24F94FFD0);
  v457 = *(v458 - 8);
  MEMORY[0x28223BE20](v458);
  v448 = &v421 - v27;
  v486 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221D98, &qword_24F9D1E60);
  MEMORY[0x28223BE20](v486);
  v487 = &v421 - v28;
  v514 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BB8, &unk_24F93E750);
  MEMORY[0x28223BE20](v514);
  v488 = &v421 - v29;
  v516 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B98, &unk_24F93E740);
  v505 = *(v516 - 8);
  MEMORY[0x28223BE20](v516);
  v469 = &v421 - v30;
  v441 = type metadata accessor for CardElementView.Category(0);
  MEMORY[0x28223BE20](v441);
  v432 = &v421 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v438 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DA0, &unk_24F968180);
  MEMORY[0x28223BE20](v438);
  v440 = &v421 - v32;
  v439 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B60, &unk_24F94FFB0);
  MEMORY[0x28223BE20](v439);
  v433 = &v421 - v33;
  v510 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DA8, &unk_24F97E340);
  MEMORY[0x28223BE20](v510);
  v512 = &v421 - v34;
  v498 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DB0, &qword_24F968190);
  MEMORY[0x28223BE20](v498);
  v499 = &v421 - v35;
  v511 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B30, &unk_24F93E710);
  MEMORY[0x28223BE20](v511);
  v491 = &v421 - v36;
  v526 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B20, &unk_24F94FF90);
  MEMORY[0x28223BE20](v526);
  v513 = &v421 - v37;
  v467 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B50, &unk_24F93E720);
  v466 = *(v467 - 8);
  MEMORY[0x28223BE20](v467);
  v437 = &v421 - v38;
  v490 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C98, &unk_24F93E7B0);
  MEMORY[0x28223BE20](v490);
  v492 = &v421 - v39;
  v489 = type metadata accessor for CardContentBackgroundStyle(0);
  MEMORY[0x28223BE20](v489);
  v455 = &v421 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v456 = &v421 - v42;
  v518 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BE0, &unk_24FA37430);
  MEMORY[0x28223BE20](v518);
  v520 = &v421 - v43;
  v506 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BE8, &unk_24F967D10);
  MEMORY[0x28223BE20](v506);
  v508 = &v421 - v44;
  v481 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BF0, &qword_24FA37440);
  MEMORY[0x28223BE20](v481);
  v471 = &v421 - v45;
  v507 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C70, &unk_24F93E7A0);
  MEMORY[0x28223BE20](v507);
  v485 = &v421 - v46;
  v519 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C60, &unk_24F94FFF0);
  MEMORY[0x28223BE20](v519);
  v509 = &v421 - v47;
  v532 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C50, &unk_24F93E790);
  MEMORY[0x28223BE20](v532);
  v521 = &v421 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B270, &unk_24F950890);
  MEMORY[0x28223BE20](v49 - 8);
  v474 = &v421 - v50;
  v479 = type metadata accessor for CardPrimaryActionButton(0);
  MEMORY[0x28223BE20](v479);
  v454 = &v421 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v484 = &v421 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v54 - 8);
  v451 = &v421 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v426 = &v421 - v57;
  MEMORY[0x28223BE20](v58);
  v60 = &v421 - v59;
  v470 = sub_24F9289E8();
  v468 = *(v470 - 8);
  MEMORY[0x28223BE20](v470);
  v442 = &v421 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  v453 = &v421 - v63;
  v478 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C00, &unk_24F93E770);
  MEMORY[0x28223BE20](v478);
  v483 = &v421 - v64;
  v476 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DB8, &qword_24F968198);
  MEMORY[0x28223BE20](v476);
  v477 = &v421 - v65;
  v503 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BF0, &unk_24F94DAA0);
  MEMORY[0x28223BE20](v503);
  v480 = &v421 - v66;
  v528 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BD8, &unk_24F967D00);
  MEMORY[0x28223BE20](v528);
  v530 = &v421 - v67;
  v522 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DC0, &unk_24F9D1E50);
  MEMORY[0x28223BE20](v522);
  v524 = &v421 - v68;
  v500 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DC8, &qword_24F9681A0);
  MEMORY[0x28223BE20](v500);
  v502 = &v421 - v69;
  v472 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DD0, &unk_24FA04700);
  MEMORY[0x28223BE20](v472);
  v473 = &v421 - v70;
  v501 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BD8, &unk_24F93E760);
  MEMORY[0x28223BE20](v501);
  v475 = &v421 - v71;
  v523 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BC8, &unk_24F94DA90);
  MEMORY[0x28223BE20](v523);
  v504 = &v421 - v72;
  v529 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B10, &unk_24F93E700);
  MEMORY[0x28223BE20](v529);
  v525 = &v421 - v73;
  v74 = type metadata accessor for DefaultCardTitleView(0);
  MEMORY[0x28223BE20](v74);
  v76 = &v421 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v517 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B88, &unk_24F94FFC0);
  MEMORY[0x28223BE20](v517);
  v496 = &v421 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v78);
  v465 = &v421 - v79;
  MEMORY[0x28223BE20](v80);
  v82 = &v421 - v81;
  MEMORY[0x28223BE20](v83);
  v464 = &v421 - v84;
  v482 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B40, &unk_24F94FFA0);
  MEMORY[0x28223BE20](v482);
  v497 = &v421 - v85;
  v535 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B00, &unk_24F94FF80);
  v534 = *(v535 - 8);
  MEMORY[0x28223BE20](v535);
  v531 = &v421 - v86;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20, &unk_24F94D670);
  MEMORY[0x28223BE20](v87 - 8);
  v533 = &v421 - v88;
  v89 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v89);
  v91 = (&v421 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v92);
  v540 = &v421 - v93;
  v94 = type metadata accessor for CommonCardAttributes(0);
  v95 = MEMORY[0x28223BE20](v94);
  v97 = &v421 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = a6(0, v95);
  v99 = a2;
  v100 = a2 + *(v98 + 32);
  v539 = v97;
  v101 = v97;
  v102 = v536;
  sub_24E92CCE0(v100, v101, type metadata accessor for CommonCardAttributes);
  if (v102 > 2u)
  {
    if (v102 == 3)
    {
      sub_24F4E9558(v527, v91);
      goto LABEL_21;
    }

    if (v102 == 4)
    {
      if (qword_27F2112F0 != -1)
      {
        swift_once();
      }

      v103 = qword_27F39E610;
    }

    else
    {
      if (qword_27F211308 != -1)
      {
        swift_once();
      }

      v103 = qword_27F39E658;
    }
  }

  else if (v102)
  {
    if (v102 == 1)
    {
      sub_24F4E9E44(v527, v91);
      goto LABEL_21;
    }

    if (qword_27F2112F8 != -1)
    {
      swift_once();
    }

    v103 = qword_27F39E628;
  }

  else
  {
    if (qword_27F211300 != -1)
    {
      swift_once();
    }

    v103 = qword_27F39E640;
  }

  v104 = __swift_project_value_buffer(v89, v103);
  sub_24E92CCE0(v104, v91, type metadata accessor for CardLayoutMetrics);
LABEL_21:
  sub_24E92C5CC(v91, v540, type metadata accessor for CardLayoutMetrics);
  v105 = v537;
  if (sub_24E92BA60(v537, v99, v102))
  {
    switch(v105)
    {
      case 1:
        LOBYTE(v544) = 0;
        goto LABEL_49;
      case 2:
        swift_storeEnumTagMultiPayload();
        sub_24E92CBAC(&qword_27F214C78, type metadata accessor for CardPrimaryActionButton, &unk_24F9508C0);
        v188 = v485;
        sub_24F924E28();
        sub_24E60169C(v188, v508, &qword_27F214C70, &unk_24F93E7A0);
        swift_storeEnumTagMultiPayload();
        sub_24E63CEC4();
        sub_24E92B93C(&qword_27F214C80, &qword_27F214C88, &unk_24F950000, sub_24E63CF80);
        v189 = v509;
        sub_24F924E28();
        sub_24E601704(v188, &qword_27F214C70, &unk_24F93E7A0);
        sub_24E60169C(v189, v520, &qword_27F214C60, &unk_24F94FFF0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CF0, &unk_24F94BDA0);
        sub_24E63CE0C();
        sub_24E63D208();
        v190 = v521;
        sub_24F924E28();
        sub_24E601704(v189, &qword_27F214C60, &unk_24F94FFF0);
        goto LABEL_51;
      case 3:
        sub_24E60169C(&v539[v94[10]], v60, &qword_27F213FB0, &qword_24F93E6B0);
        v191 = v468;
        v192 = v470;
        if ((*(v468 + 48))(v60, 1, v470) == 1)
        {
          sub_24E601704(v60, &qword_27F213FB0, &qword_24F93E6B0);
          v193 = 1;
          v133 = v538;
          v134 = v535;
          v135 = v534;
          v136 = v533;
          v194 = v458;
          v195 = v457;
          v196 = v483;
        }

        else
        {
          (*(v191 + 32))();
          v422 = v89;
          v322 = v442;
          sub_24F9289C8();
          v323 = *MEMORY[0x277CE0118];
          v324 = v444;
          v537 = *(v444 + 104);
          v325 = v443;
          v326 = v449;
          v537(v443, v323, v449);
          v327 = v445;
          sub_24F9219A8();
          (*(v324 + 8))(v325, v326);
          sub_24E92CBAC(&qword_27F214C28, MEMORY[0x277D21C48], MEMORY[0x277D7EEB8]);
          sub_24E92CBAC(&qword_27F214C30, MEMORY[0x277D7EBE8], MEMORY[0x277D7EBE0]);
          v328 = v448;
          v329 = v447;
          sub_24F925ED8();
          (*(v446 + 8))(v327, v329);
          v330 = *(v191 + 8);
          v330(v322, v192);
          v331 = sub_24F927618();
          v333 = v332;
          v334 = (v328 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C20, &unk_24F93E780) + 36));
          v335 = sub_24F924258();
          v537(&v334[*(v335 + 20)], v323, v326);
          __asm { FMOV            V0.2D, #8.0 }

          *v334 = _Q0;
          v341 = v422;
          v342 = v540;
          v343 = (v540 + v422[32]);
          v344 = *v343;
          v345 = v343[1];
          v346 = v343[2];
          v347 = v343[3];
          v348 = &v334[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A1C8, &unk_24F97E300) + 36)];
          *v348 = v347;
          *(v348 + 1) = v346;
          *(v348 + 2) = v344;
          *(v348 + 3) = v345;
          v349 = &v334[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C40, &unk_24F94FFE0) + 36)];
          *v349 = v331;
          v349[1] = v333;
          v350 = *(v342 + v341[31]);

          sub_24F9278A8();
          v352 = v351;
          v354 = v353;
          v330(v453, v470);
          v194 = v458;
          v355 = (v328 + *(v458 + 36));
          *v355 = v350;
          v355[1] = v352;
          v355[2] = v354;
          v196 = v483;
          sub_24E6009C8(v328, v483, &qword_27F214C10, &unk_24F94FFD0);
          v193 = 0;
          v133 = v538;
          v134 = v535;
          v135 = v534;
          v136 = v533;
          v195 = v457;
        }

        (*(v195 + 56))(v196, v193, 1, v194);
        sub_24E60169C(v196, v477, &qword_27F214C00, &unk_24F93E770);
        swift_storeEnumTagMultiPayload();
        sub_24E92C2CC(&qword_27F214BF8, &qword_27F214C00, &unk_24F93E770, sub_24E63CB8C);
        v356 = v480;
        sub_24F924E28();
        sub_24E60169C(v356, v502, &qword_27F214BF0, &unk_24F94DAA0);
        swift_storeEnumTagMultiPayload();
        sub_24E63C9EC();
        sub_24E63CAD4();
        v357 = v504;
        sub_24F924E28();
        sub_24E601704(v356, &qword_27F214BF0, &unk_24F94DAA0);
        sub_24E60169C(v357, v524, &qword_27F214BC8, &unk_24F94DA90);
        swift_storeEnumTagMultiPayload();
        sub_24E63C3A8();
        sub_24E63C960();
        v358 = v525;
        sub_24F924E28();
        sub_24E601704(v357, &qword_27F214BC8, &unk_24F94DA90);
        sub_24E60169C(v358, v530, &qword_27F214B10, &unk_24F93E700);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v144 = v531;
        sub_24F924E28();
        sub_24E601704(v358, &qword_27F214B10, &unk_24F93E700);
        v359 = v483;
        v360 = &qword_27F214C00;
        v361 = &unk_24F93E770;
        goto LABEL_98;
      case 4:
        v147 = &v539[v94[11]];
        v148 = *(v147 + 1);
        if (!v148)
        {
          goto LABEL_71;
        }

        v149 = *v147;
        v150 = HIBYTE(v148) & 0xF;
        if ((v148 & 0x2000000000000000) == 0)
        {
          v150 = v149 & 0xFFFFFFFFFFFFLL;
        }

        if (v150)
        {
          *&v541 = v149;
          *(&v541 + 1) = v148;
          sub_24E600AEC();

          v151 = sub_24F925E18();
          v153 = v152;
          v155 = v154;
          v156 = v89;
          v157 = v540;
          v158 = sub_24F925C98();
          v160 = v159;
          v162 = v161;
          sub_24E600B40(v151, v153, v155 & 1);

          LODWORD(v541) = sub_24F9251C8();
          v163 = sub_24F925C58();
          v165 = v164;
          v167 = v166;
          v169 = v168;
          sub_24E600B40(v158, v160, v162 & 1);

          v170 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8, &unk_24F94DA80) + 36);
          v171 = *MEMORY[0x277CE13B8];
          v172 = sub_24F927748();
          v173 = v469;
          (*(*(v172 - 8) + 104))(&v469[v170], v171, v172);
          *v173 = v163;
          *(v173 + 8) = v165;
          *(v173 + 16) = v167 & 1;
          *(v173 + 24) = v169;
          v174 = *(v157 + v156[19]);
          KeyPath = swift_getKeyPath();
          v176 = v516;
          v177 = v173 + *(v516 + 36);
          *v177 = KeyPath;
          *(v177 + 8) = v174;
          *(v177 + 16) = 0;
          v178 = v464;
          sub_24E6009C8(v173, v464, &qword_27F214B98, &unk_24F93E740);
          v179 = 0;
          v133 = v538;
          v134 = v535;
          v135 = v534;
        }

        else
        {
LABEL_71:
          v179 = 1;
          v133 = v538;
          v134 = v535;
          v135 = v534;
          v176 = v516;
          v178 = v464;
        }

        (*(v505 + 56))(v178, v179, 1, v176);
        sub_24E60169C(v178, v499, &qword_27F214B88, &unk_24F94FFC0);
        swift_storeEnumTagMultiPayload();
        sub_24E92C2CC(&qword_27F214B38, &qword_27F214B40, &unk_24F94FFA0, sub_24E63C518);
        sub_24E92C2CC(&qword_27F214B80, &qword_27F214B88, &unk_24F94FFC0, sub_24E63C774);
        v302 = v491;
        sub_24F924E28();
        sub_24E60169C(v302, v512, &qword_27F214B30, &unk_24F93E710);
        swift_storeEnumTagMultiPayload();
        sub_24E63C434();
        sub_24E63C8B0();
        v303 = v513;
        sub_24F924E28();
        sub_24E601704(v302, &qword_27F214B30, &unk_24F93E710);
        sub_24E60169C(v303, v524, &qword_27F214B20, &unk_24F94FF90);
        swift_storeEnumTagMultiPayload();
        sub_24E63C3A8();
        sub_24E63C960();
        v304 = v525;
        sub_24F924E28();
        sub_24E601704(v303, &qword_27F214B20, &unk_24F94FF90);
        sub_24E60169C(v304, v530, &qword_27F214B10, &unk_24F93E700);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v144 = v531;
        sub_24F924E28();
        sub_24E601704(v304, &qword_27F214B10, &unk_24F93E700);
        v305 = v178;
        goto LABEL_80;
      case 5:
        v202 = &v539[v94[12]];
        v203 = *(v202 + 1);
        if (!v203)
        {
          goto LABEL_74;
        }

        v204 = *v202;
        v205 = HIBYTE(v203) & 0xF;
        if ((v203 & 0x2000000000000000) == 0)
        {
          v205 = v204 & 0xFFFFFFFFFFFFLL;
        }

        if (v205)
        {
          *&v541 = v204;
          *(&v541 + 1) = v203;
          sub_24E600AEC();

          v206 = sub_24F925E18();
          v208 = v207;
          v210 = v209;
          v422 = v89;
          v211 = v540;
          v212 = sub_24F925C98();
          v214 = v213;
          v216 = v215;
          sub_24E600B40(v206, v208, v210 & 1);

          LODWORD(v541) = sub_24F9251C8();
          v217 = sub_24F925C58();
          v219 = v218;
          v221 = v220;
          v223 = v222;
          sub_24E600B40(v212, v214, v216 & 1);

          v224 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8, &unk_24F94DA80) + 36);
          v225 = *MEMORY[0x277CE13B8];
          v226 = sub_24F927748();
          v227 = v469;
          (*(*(v226 - 8) + 104))(&v469[v224], v225, v226);
          *v227 = v217;
          *(v227 + 8) = v219;
          *(v227 + 16) = v221 & 1;
          *(v227 + 24) = v223;
          v228 = *(v211 + v422[24]);
          v229 = swift_getKeyPath();
          v230 = v516;
          v231 = v227 + *(v516 + 36);
          *v231 = v229;
          *(v231 + 8) = v228;
          *(v231 + 16) = 0;
          sub_24E6009C8(v227, v82, &qword_27F214B98, &unk_24F93E740);
          v232 = 0;
          v133 = v538;
          v135 = v534;
          v136 = v533;
        }

        else
        {
LABEL_74:
          v232 = 1;
          v133 = v538;
          v135 = v534;
          v136 = v533;
          v230 = v516;
        }

        (*(v505 + 56))(v82, v232, 1, v230);
        sub_24E60169C(v82, v487, &qword_27F214B88, &unk_24F94FFC0);
        swift_storeEnumTagMultiPayload();
        sub_24E92C2CC(&qword_27F214B80, &qword_27F214B88, &unk_24F94FFC0, sub_24E63C774);
        v311 = v488;
        sub_24F924E28();
        sub_24E60169C(v311, v512, &qword_27F214BB8, &unk_24F93E750);
        swift_storeEnumTagMultiPayload();
        sub_24E63C434();
        sub_24E63C8B0();
        v312 = v513;
        sub_24F924E28();
        sub_24E601704(v311, &qword_27F214BB8, &unk_24F93E750);
        sub_24E60169C(v312, v524, &qword_27F214B20, &unk_24F94FF90);
        swift_storeEnumTagMultiPayload();
        sub_24E63C3A8();
        sub_24E63C960();
        v313 = v525;
        sub_24F924E28();
        sub_24E601704(v312, &qword_27F214B20, &unk_24F94FF90);
        sub_24E60169C(v313, v530, &qword_27F214B10, &unk_24F93E700);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v144 = v531;
        sub_24F924E28();
        sub_24E601704(v313, &qword_27F214B10, &unk_24F93E700);
        sub_24E601704(v82, &qword_27F214B88, &unk_24F94FFC0);
        v134 = v535;
        goto LABEL_93;
      case 6:
        v235 = &v539[v94[13]];
        v236 = *(v235 + 1);
        if (!v236)
        {
          goto LABEL_76;
        }

        v237 = *v235;
        v238 = HIBYTE(v236) & 0xF;
        if ((v236 & 0x2000000000000000) == 0)
        {
          v238 = v237 & 0xFFFFFFFFFFFFLL;
        }

        if (v238)
        {
          *&v541 = v237;
          *(&v541 + 1) = v236;
          sub_24E600AEC();

          v239 = sub_24F925E18();
          v241 = v240;
          v243 = v242;
          v244 = v540;
          v245 = sub_24F925C98();
          v247 = v246;
          v249 = v248;
          sub_24E600B40(v239, v241, v243 & 1);

          LODWORD(v541) = sub_24F9251C8();
          v250 = sub_24F925C58();
          v252 = v251;
          v254 = v253;
          v256 = v255;
          sub_24E600B40(v245, v247, v249 & 1);

          v257 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8, &unk_24F94DA80) + 36);
          v258 = *MEMORY[0x277CE13B8];
          v259 = sub_24F927748();
          v260 = v469;
          (*(*(v259 - 8) + 104))(&v469[v257], v258, v259);
          *v260 = v250;
          *(v260 + 8) = v252;
          *(v260 + 16) = v254 & 1;
          *(v260 + 24) = v256;
          v261 = *(v244 + v89[26]);
          v262 = swift_getKeyPath();
          v263 = v516;
          v264 = v260 + *(v516 + 36);
          *v264 = v262;
          *(v264 + 8) = v261;
          *(v264 + 16) = 0;
          v265 = v465;
          sub_24E6009C8(v260, v465, &qword_27F214B98, &unk_24F93E740);
          v266 = 0;
          v133 = v538;
          v134 = v535;
          v136 = v533;
        }

        else
        {
LABEL_76:
          v266 = 1;
          v133 = v538;
          v134 = v535;
          v136 = v533;
          v263 = v516;
          v265 = v465;
        }

        (*(v505 + 56))(v265, v266, 1, v263);
        sub_24E60169C(v265, v487, &qword_27F214B88, &unk_24F94FFC0);
        swift_storeEnumTagMultiPayload();
        sub_24E92C2CC(&qword_27F214B80, &qword_27F214B88, &unk_24F94FFC0, sub_24E63C774);
        v314 = v488;
        sub_24F924E28();
        sub_24E60169C(v314, v512, &qword_27F214BB8, &unk_24F93E750);
        swift_storeEnumTagMultiPayload();
        sub_24E63C434();
        sub_24E63C8B0();
        v315 = v513;
        sub_24F924E28();
        sub_24E601704(v314, &qword_27F214BB8, &unk_24F93E750);
        sub_24E60169C(v315, v524, &qword_27F214B20, &unk_24F94FF90);
        swift_storeEnumTagMultiPayload();
        sub_24E63C3A8();
        sub_24E63C960();
        v316 = v525;
        sub_24F924E28();
        sub_24E601704(v315, &qword_27F214B20, &unk_24F94FF90);
        sub_24E60169C(v316, v530, &qword_27F214B10, &unk_24F93E700);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v144 = v531;
        sub_24F924E28();
        sub_24E601704(v316, &qword_27F214B10, &unk_24F93E700);
        sub_24E601704(v265, &qword_27F214B88, &unk_24F94FFC0);
        v135 = v534;
        goto LABEL_93;
      case 7:
        sub_24E92CCE0(v539, v76, type metadata accessor for CommonCardAttributes);
        sub_24E92CCE0(v540, &v76[*(v74 + 20)], type metadata accessor for CardLayoutMetrics);
        v76[*(v74 + 24)] = v102;
        sub_24E92CCE0(v76, v473, type metadata accessor for DefaultCardTitleView);
        swift_storeEnumTagMultiPayload();
        sub_24E92CBAC(&qword_27F214BE0, type metadata accessor for DefaultCardTitleView, &unk_24FA04808);
        sub_24E92C2CC(&qword_27F214B80, &qword_27F214B88, &unk_24F94FFC0, sub_24E63C774);
        v197 = v475;
        sub_24F924E28();
        sub_24E60169C(v197, v502, &qword_27F214BD8, &unk_24F93E760);
        swift_storeEnumTagMultiPayload();
        sub_24E63C9EC();
        sub_24E63CAD4();
        v198 = v504;
        sub_24F924E28();
        sub_24E601704(v197, &qword_27F214BD8, &unk_24F93E760);
        sub_24E60169C(v198, v524, &qword_27F214BC8, &unk_24F94DA90);
        swift_storeEnumTagMultiPayload();
        sub_24E63C3A8();
        sub_24E63C960();
        v199 = v525;
        sub_24F924E28();
        sub_24E601704(v198, &qword_27F214BC8, &unk_24F94DA90);
        sub_24E60169C(v199, v530, &qword_27F214B10, &unk_24F93E700);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v144 = v531;
        sub_24F924E28();
        sub_24E601704(v199, &qword_27F214B10, &unk_24F93E700);
        v145 = type metadata accessor for DefaultCardTitleView;
        v146 = v76;
        goto LABEL_47;
      case 8:
        v270 = &v539[v94[15]];
        v271 = *(v270 + 1);
        if (!v271)
        {
          goto LABEL_78;
        }

        v272 = *v270;
        v273 = HIBYTE(v271) & 0xF;
        if ((v271 & 0x2000000000000000) == 0)
        {
          v273 = v272 & 0xFFFFFFFFFFFFLL;
        }

        if (v273)
        {
          *&v541 = v272;
          *(&v541 + 1) = v271;
          sub_24E600AEC();

          v274 = sub_24F925E18();
          v276 = v275;
          v278 = v277;
          v422 = v89;
          v279 = v540;
          v280 = sub_24F925C98();
          v282 = v281;
          v284 = v283;
          sub_24E600B40(v274, v276, v278 & 1);

          LODWORD(v541) = sub_24F9251C8();
          v285 = sub_24F925C58();
          v287 = v286;
          v289 = v288;
          v291 = v290;
          sub_24E600B40(v280, v282, v284 & 1);

          v292 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8, &unk_24F94DA80) + 36);
          v293 = *MEMORY[0x277CE13B8];
          v294 = sub_24F927748();
          v295 = v469;
          (*(*(v294 - 8) + 104))(&v469[v292], v293, v294);
          *v295 = v285;
          *(v295 + 8) = v287;
          *(v295 + 16) = v289 & 1;
          *(v295 + 24) = v291;
          v296 = *(v279 + v422[28]);
          v297 = swift_getKeyPath();
          v298 = v516;
          v299 = v295 + *(v516 + 36);
          *v299 = v297;
          *(v299 + 8) = v296;
          *(v299 + 16) = 0;
          v300 = v496;
          sub_24E6009C8(v295, v496, &qword_27F214B98, &unk_24F93E740);
          v301 = 0;
          v133 = v538;
          v134 = v535;
          v135 = v534;
        }

        else
        {
LABEL_78:
          v301 = 1;
          v133 = v538;
          v134 = v535;
          v135 = v534;
          v298 = v516;
          v300 = v496;
        }

        (*(v505 + 56))(v300, v301, 1, v298);
        sub_24E60169C(v300, v473, &qword_27F214B88, &unk_24F94FFC0);
        swift_storeEnumTagMultiPayload();
        sub_24E92CBAC(&qword_27F214BE0, type metadata accessor for DefaultCardTitleView, &unk_24FA04808);
        sub_24E92C2CC(&qword_27F214B80, &qword_27F214B88, &unk_24F94FFC0, sub_24E63C774);
        v317 = v475;
        sub_24F924E28();
        sub_24E60169C(v317, v502, &qword_27F214BD8, &unk_24F93E760);
        swift_storeEnumTagMultiPayload();
        sub_24E63C9EC();
        sub_24E63CAD4();
        v318 = v504;
        sub_24F924E28();
        sub_24E601704(v317, &qword_27F214BD8, &unk_24F93E760);
        sub_24E60169C(v318, v524, &qword_27F214BC8, &unk_24F94DA90);
        swift_storeEnumTagMultiPayload();
        sub_24E63C3A8();
        sub_24E63C960();
        v319 = v525;
        sub_24F924E28();
        sub_24E601704(v318, &qword_27F214BC8, &unk_24F94DA90);
        sub_24E60169C(v319, v530, &qword_27F214B10, &unk_24F93E700);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v144 = v531;
        sub_24F924E28();
        sub_24E601704(v319, &qword_27F214B10, &unk_24F93E700);
        v305 = v496;
LABEL_80:
        v320 = &qword_27F214B88;
        v321 = &unk_24F94FFC0;
        goto LABEL_91;
      case 9:
        v544 = 256;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D00, &unk_24F93E7E0);
        sub_24E63D294();
        goto LABEL_50;
      case 10:
        swift_storeEnumTagMultiPayload();
        sub_24E92C2CC(&qword_27F214BF8, &qword_27F214C00, &unk_24F93E770, sub_24E63CB8C);
        v267 = v480;
        sub_24F924E28();
        sub_24E60169C(v267, v502, &qword_27F214BF0, &unk_24F94DAA0);
        swift_storeEnumTagMultiPayload();
        sub_24E63C9EC();
        sub_24E63CAD4();
        v268 = v504;
        sub_24F924E28();
        sub_24E601704(v267, &qword_27F214BF0, &unk_24F94DAA0);
        sub_24E60169C(v268, v524, &qword_27F214BC8, &unk_24F94DA90);
        swift_storeEnumTagMultiPayload();
        sub_24E63C3A8();
        sub_24E63C960();
        v269 = v525;
        sub_24F924E28();
        sub_24E601704(v268, &qword_27F214BC8, &unk_24F94DA90);
        sub_24E60169C(v269, v530, &qword_27F214B10, &unk_24F93E700);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v144 = v531;
        sub_24F924E28();
        sub_24E601704(v269, &qword_27F214B10, &unk_24F93E700);
        goto LABEL_52;
      case 11:
        if (v102 == 1)
        {
          v137 = 2;
        }

        else
        {
          v137 = 1;
        }

        v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
        v139 = v455;
        (*(*(v138 - 8) + 56))(v455, v137, 5, v138);
        v140 = v456;
        sub_24E92C5CC(v139, v456, type metadata accessor for CardContentBackgroundStyle);
        sub_24E92CCE0(v140, v494, type metadata accessor for CardContentBackgroundStyle);
        swift_storeEnumTagMultiPayload();
        sub_24E92CBAC(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
        sub_24E63CF80();
        v141 = v495;
        sub_24F924E28();
        sub_24E60169C(v141, v508, &qword_27F214C88, &unk_24F950000);
        swift_storeEnumTagMultiPayload();
        sub_24E63CEC4();
        sub_24E92B93C(&qword_27F214C80, &qword_27F214C88, &unk_24F950000, sub_24E63CF80);
        v142 = v509;
        sub_24F924E28();
        sub_24E601704(v141, &qword_27F214C88, &unk_24F950000);
        sub_24E60169C(v142, v520, &qword_27F214C60, &unk_24F94FFF0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CF0, &unk_24F94BDA0);
        sub_24E63CE0C();
        sub_24E63D208();
        v143 = v521;
        sub_24F924E28();
        sub_24E601704(v142, &qword_27F214C60, &unk_24F94FFF0);
        sub_24E60169C(v143, v530, &qword_27F214C50, &unk_24F93E790);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v144 = v531;
        sub_24F924E28();
        sub_24E601704(v143, &qword_27F214C50, &unk_24F93E790);
        v145 = type metadata accessor for CardContentBackgroundStyle;
        v146 = v140;
LABEL_47:
        sub_24E92BA00(v146, v145);
        goto LABEL_52;
      case 12:
        v180 = v102;
        if (v102 - 2 < 4)
        {
          v181 = sub_24F926C98();
          v182 = v451;
          sub_24E60169C(v100 + v94[10], v451, &qword_27F213FB0, &qword_24F93E6B0);
          v183 = v452;
          sub_24F6C4E24(v182, v180 != 5, v181, v452);

          sub_24E601704(v182, &qword_27F213FB0, &qword_24F93E6B0);
          sub_24E60169C(v183, v462, &qword_27F214A10, &unk_24F94BD90);
          swift_storeEnumTagMultiPayload();
          sub_24E63D00C();
          sub_24E63D150();
          v184 = v492;
          sub_24F924E28();
          v185 = v183;
          v186 = &qword_27F214A10;
          v187 = &unk_24F94BD90;
LABEL_89:
          sub_24E601704(v185, v186, v187);
          v133 = v538;
          v134 = v535;
          v135 = v534;
          goto LABEL_90;
        }

        if (!v102)
        {
          v363 = sub_24F926C98();
          v364 = sub_24F925808();
          v365 = v434;
          *v434 = v363;
          *(v365 + 8) = v364;
          swift_storeEnumTagMultiPayload();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CB8, &unk_24F93E7C0);
          sub_24E63D098();
          sub_24E63D150();
          v366 = v435;
          sub_24F924E28();
          sub_24E60169C(v366, v462, &qword_27F214CA8, &qword_24F950010);
          swift_storeEnumTagMultiPayload();
          sub_24E63D00C();
          v184 = v492;
          sub_24F924E28();

          v185 = v366;
          v186 = &qword_27F214CA8;
          v187 = &qword_24F950010;
          goto LABEL_89;
        }

        v381 = v429;
        sub_24E60169C(v100 + v94[17], v429, &qword_27F21F550, &unk_24F9EC960);
        v382 = (*(v427 + 48))(v381, 1, v428);
        v134 = v535;
        v135 = v534;
        if (v382 == 1)
        {
          sub_24E601704(v381, &qword_27F21F550, &unk_24F9EC960);
          v383 = type metadata accessor for ColorGroup(0);
          v384 = v431;
          (*(*(v383 - 8) + 56))(v431, 1, 1, v383);
        }

        else
        {
          v395 = v423;
          sub_24E92CCE0(v381, v423, type metadata accessor for CommonCardAttributes.CardBackgroundColor);
          v396 = v395;
          v397 = v424;
          sub_24E92C5CC(v396, v424, type metadata accessor for JSColor);
          v384 = v431;
          if (qword_27F20FEE0 != -1)
          {
            swift_once();
          }

          ColorGrouping.colorGroup(for:)(*(v397 + *(v425 + 24)));
          sub_24E92BA00(v397, type metadata accessor for JSColor);
          sub_24E92BA00(v381, type metadata accessor for CommonCardAttributes.CardBackgroundColor);
          v398 = type metadata accessor for ColorGroup(0);
          v399 = *(v398 - 8);
          if ((*(v399 + 48))(v384, 1, v398) != 1)
          {
            v409 = v450;
            sub_24E92C5CC(v384, v450, type metadata accessor for ColorGroup);
            (*(v399 + 56))(v409, 0, 1, v398);
            v133 = v538;
            goto LABEL_118;
          }
        }

        v400 = v426;
        sub_24E60169C(v100 + v94[10], v426, &qword_27F213FB0, &qword_24F93E6B0);
        v401 = v468;
        v402 = v470;
        if ((*(v468 + 48))(v400, 1, v470) == 1)
        {
          sub_24E601704(v400, &qword_27F213FB0, &qword_24F93E6B0);
          v403 = type metadata accessor for ColorGroup(0);
          (*(*(v403 - 8) + 56))(v450, 1, 1, v403);
          v133 = v538;
        }

        else
        {
          v404 = sub_24F9289A8();
          if (v404)
          {
            v405 = qword_27F20FEE0;
            v406 = v404;
            v133 = v538;
            if (v405 != -1)
            {
              v420 = v406;
              swift_once();
              v406 = v420;
            }

            v407 = v406;
            v408 = sub_24F926BD8();
            ColorGrouping.colorGroup(for:)(v408);

            v400 = v426;
          }

          else
          {
            v410 = type metadata accessor for ColorGroup(0);
            (*(*(v410 - 8) + 56))(v450, 1, 1, v410);
            v133 = v538;
          }

          (*(v401 + 8))(v400, v402);
        }

        v411 = type metadata accessor for ColorGroup(0);
        if ((*(*(v411 - 8) + 48))(v384, 1, v411) != 1)
        {
          sub_24E601704(v384, &qword_27F2190D8, &unk_24F94BD70);
        }

LABEL_118:
        v412 = sub_24F926C98();
        v413 = sub_24F927618();
        v415 = v414;
        v416 = v430;
        v417 = v430 + *(v463 + 36);
        sub_24F594764(v450, 1, v417);
        v418 = (v417 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CE0, &unk_24F93E7D0) + 36));
        *v418 = v413;
        v418[1] = v415;
        *v416 = v412;
        sub_24E60169C(v416, v434, &qword_27F214A10, &unk_24F94BD90);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CB8, &unk_24F93E7C0);
        sub_24E63D098();
        sub_24E63D150();
        v419 = v435;
        sub_24F924E28();
        sub_24E60169C(v419, v462, &qword_27F214CA8, &qword_24F950010);
        swift_storeEnumTagMultiPayload();
        sub_24E63D00C();
        v184 = v492;
        sub_24F924E28();
        sub_24E601704(v419, &qword_27F214CA8, &qword_24F950010);
        sub_24E601704(v416, &qword_27F214A10, &unk_24F94BD90);
        sub_24E601704(v450, &qword_27F2190D8, &unk_24F94BD70);
LABEL_90:
        sub_24E60169C(v184, v494, &qword_27F214C98, &unk_24F93E7B0);
        swift_storeEnumTagMultiPayload();
        sub_24E92CBAC(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
        sub_24E63CF80();
        v367 = v495;
        sub_24F924E28();
        sub_24E60169C(v367, v508, &qword_27F214C88, &unk_24F950000);
        swift_storeEnumTagMultiPayload();
        sub_24E63CEC4();
        sub_24E92B93C(&qword_27F214C80, &qword_27F214C88, &unk_24F950000, sub_24E63CF80);
        v368 = v509;
        sub_24F924E28();
        sub_24E601704(v367, &qword_27F214C88, &unk_24F950000);
        sub_24E60169C(v368, v520, &qword_27F214C60, &unk_24F94FFF0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CF0, &unk_24F94BDA0);
        sub_24E63CE0C();
        sub_24E63D208();
        v369 = v521;
        sub_24F924E28();
        sub_24E601704(v368, &qword_27F214C60, &unk_24F94FFF0);
        sub_24E60169C(v369, v530, &qword_27F214C50, &unk_24F93E790);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v144 = v531;
        sub_24F924E28();
        sub_24E601704(v369, &qword_27F214C50, &unk_24F93E790);
        v305 = v492;
        v320 = &qword_27F214C98;
        v321 = &unk_24F93E7B0;
LABEL_91:
        sub_24E601704(v305, v320, v321);
LABEL_92:
        v136 = v533;
        goto LABEL_93;
      case 13:
        v233 = v539;
        sub_24E60169C(&v539[v94[20]], v474, &qword_27F21B270, &unk_24F950890);
        sub_24E60169C(v233 + v94[19], &v541, qword_27F24EC90, &unk_24F93C1D0);
        if (v102 <= 2u)
        {
          v144 = v531;
          v234 = v459;
LABEL_101:
          v133 = v538;
          v134 = v535;
          v135 = v534;
          v136 = v533;
          v362 = v471;
          goto LABEL_102;
        }

        v144 = v531;
        v234 = v459;
        if (v102 == 3)
        {
          goto LABEL_101;
        }

        v133 = v538;
        v134 = v535;
        v135 = v534;
        v136 = v533;
        v362 = v471;
        if (v102 != 4)
        {
          v394 = 1;
          goto LABEL_103;
        }

LABEL_102:
        v394 = sub_24F92CE08();
LABEL_103:

        v385 = v454;
        sub_24E6009C8(v474, v454, &qword_27F21B270, &unk_24F950890);
        v386 = v479;
        v387 = v385 + *(v479 + 20);
        v388 = v542;
        *v387 = v541;
        *(v387 + 16) = v388;
        *(v387 + 32) = v543;
        *(v385 + *(v386 + 24)) = v394 & 1;
        *(v385 + *(v386 + 28)) = v234;
        v389 = v385;
        v390 = v484;
        sub_24E92C5CC(v389, v484, type metadata accessor for CardPrimaryActionButton);
        sub_24E92CCE0(v390, v362, type metadata accessor for CardPrimaryActionButton);
        swift_storeEnumTagMultiPayload();
        sub_24E92CBAC(&qword_27F214C78, type metadata accessor for CardPrimaryActionButton, &unk_24F9508C0);

        v391 = v485;
        sub_24F924E28();
        sub_24E60169C(v391, v508, &qword_27F214C70, &unk_24F93E7A0);
        swift_storeEnumTagMultiPayload();
        sub_24E63CEC4();
        sub_24E92B93C(&qword_27F214C80, &qword_27F214C88, &unk_24F950000, sub_24E63CF80);
        v392 = v509;
        sub_24F924E28();
        sub_24E601704(v391, &qword_27F214C70, &unk_24F93E7A0);
        sub_24E60169C(v392, v520, &qword_27F214C60, &unk_24F94FFF0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CF0, &unk_24F94BDA0);
        sub_24E63CE0C();
        sub_24E63D208();
        v393 = v521;
        sub_24F924E28();
        sub_24E601704(v392, &qword_27F214C60, &unk_24F94FFF0);
        sub_24E60169C(v393, v530, &qword_27F214C50, &unk_24F93E790);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        sub_24F924E28();
        sub_24E601704(v393, &qword_27F214C50, &unk_24F93E790);
        sub_24E92BA00(v484, type metadata accessor for CardPrimaryActionButton);
LABEL_93:
        sub_24E92BA00(v539, type metadata accessor for CommonCardAttributes);
        sub_24E6009C8(v144, v136, &qword_27F214B00, &unk_24F94FF80);
        v132 = 0;
        break;
      case 14:
        LOBYTE(v544) = 1;
LABEL_49:
        sub_24F924E28();
        v544 = v541;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D00, &unk_24F93E7E0);
        sub_24E63D294();
LABEL_50:
        sub_24F924E28();
        v200 = BYTE1(v541);
        v201 = v520;
        *v520 = v541;
        v201[1] = v200;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CF0, &unk_24F94BDA0);
        sub_24E63CE0C();
        sub_24E63D208();
        v190 = v521;
        sub_24F924E28();
LABEL_51:
        sub_24E60169C(v190, v530, &qword_27F214C50, &unk_24F93E790);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v144 = v531;
        sub_24F924E28();
        sub_24E601704(v190, &qword_27F214C50, &unk_24F93E790);
LABEL_52:
        v133 = v538;
        v134 = v535;
        v135 = v534;
        goto LABEL_92;
      default:
        v106 = *(v539 + 2);
        if (!v106)
        {
          goto LABEL_73;
        }

        v107 = v102;
        v108 = *(v539 + 1);
        v109 = HIBYTE(v106) & 0xF;
        if ((v106 & 0x2000000000000000) == 0)
        {
          v109 = v108 & 0xFFFFFFFFFFFFLL;
        }

        if (v109)
        {
          if (v107 == 1)
          {
            *&v541 = *(v539 + 1);
            *(&v541 + 1) = v106;
            sub_24E600AEC();

            v110 = sub_24F925E18();
            v112 = v111;
            v114 = v113;
            v115 = v540;
            v116 = sub_24F925C98();
            v118 = v117;
            v120 = v119;
            v122 = v121;
            sub_24E600B40(v110, v112, v114 & 1);

            *&v541 = v116;
            *(&v541 + 1) = v118;
            LOBYTE(v110) = v120 & 1;
            LOBYTE(v542) = v120 & 1;
            *(&v542 + 1) = v122;
            v123 = v433;
            sub_24F9268B8();
            sub_24E600B40(v116, v118, v110);

            v124 = *(v115 + v89[7]);
            v125 = swift_getKeyPath();
            v126 = v123 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B70, &unk_24F93E730) + 36);
            *v126 = v125;
            *(v126 + 8) = v124;
            *(v126 + 16) = 0;
            LODWORD(v125) = sub_24F9251C8();
            v127 = (v123 + *(v439 + 36));
            v128 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10) + 36);
            v129 = *MEMORY[0x277CE13B8];
            v130 = sub_24F927748();
            (*(*(v130 - 8) + 104))(&v127[v128], v129, v130);
            *v127 = v125;
            sub_24E60169C(v123, v440, &qword_27F214B60, &unk_24F94FFB0);
            swift_storeEnumTagMultiPayload();
            sub_24E63C5D4();
            sub_24E92CBAC(&qword_27F214B78, type metadata accessor for CardElementView.Category, &unk_24FA04858);
            v131 = v437;
            sub_24F924E28();
            sub_24E601704(v123, &qword_27F214B60, &unk_24F94FFB0);
          }

          else
          {
            v371 = v94[6];
            v372 = v441;
            v373 = v432;
            sub_24E60169C(&v539[v371], &v432[*(v441 + 20)], &qword_27F213FB0, &qword_24F93E6B0);
            v374 = *(v540 + v89[9]);
            v375 = *(v540 + v89[10]);
            v376 = *(v540 + v89[8]);
            v377 = *(v540 + v89[6]);
            *v373 = v108;
            v373[1] = v106;
            *(v373 + v372[6]) = v374;
            *(v373 + v372[7]) = v375;
            *(v373 + v372[8]) = v376;
            *(v373 + v372[9]) = v377;
            *&v541 = 0x4034000000000000;
            sub_24E66ED98();

            sub_24F9237C8();
            *&v541 = 0x4008000000000000;
            sub_24F9237C8();
            *&v541 = 0x4018000000000000;
            sub_24F9237C8();
            *&v541 = 0x4010000000000000;
            sub_24F9237C8();
            sub_24E92CCE0(v373, v440, type metadata accessor for CardElementView.Category);
            swift_storeEnumTagMultiPayload();
            sub_24E63C5D4();
            sub_24E92CBAC(&qword_27F214B78, type metadata accessor for CardElementView.Category, &unk_24FA04858);
            v131 = v437;
            sub_24F924E28();
            sub_24E92BA00(v373, type metadata accessor for CardElementView.Category);
          }

          v133 = v538;
          v134 = v535;
          v135 = v534;
          v136 = v533;
          v310 = v497;
          sub_24E6009C8(v131, v497, &qword_27F214B50, &unk_24F93E720);
          v306 = 0;
          v307 = v499;
          v308 = v467;
          v309 = v466;
        }

        else
        {
LABEL_73:
          v306 = 1;
          v133 = v538;
          v134 = v535;
          v135 = v534;
          v136 = v533;
          v307 = v499;
          v308 = v467;
          v309 = v466;
          v310 = v497;
        }

        (*(v309 + 56))(v310, v306, 1, v308);
        sub_24E60169C(v310, v307, &qword_27F214B40, &unk_24F94FFA0);
        swift_storeEnumTagMultiPayload();
        sub_24E92C2CC(&qword_27F214B38, &qword_27F214B40, &unk_24F94FFA0, sub_24E63C518);
        sub_24E92C2CC(&qword_27F214B80, &qword_27F214B88, &unk_24F94FFC0, sub_24E63C774);
        v378 = v491;
        sub_24F924E28();
        sub_24E60169C(v378, v512, &qword_27F214B30, &unk_24F93E710);
        swift_storeEnumTagMultiPayload();
        sub_24E63C434();
        sub_24E63C8B0();
        v379 = v513;
        sub_24F924E28();
        sub_24E601704(v378, &qword_27F214B30, &unk_24F93E710);
        sub_24E60169C(v379, v524, &qword_27F214B20, &unk_24F94FF90);
        swift_storeEnumTagMultiPayload();
        sub_24E63C3A8();
        sub_24E63C960();
        v380 = v525;
        sub_24F924E28();
        sub_24E601704(v379, &qword_27F214B20, &unk_24F94FF90);
        sub_24E60169C(v380, v530, &qword_27F214B10, &unk_24F93E700);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v144 = v531;
        sub_24F924E28();
        sub_24E601704(v380, &qword_27F214B10, &unk_24F93E700);
        v359 = v497;
        v360 = &qword_27F214B40;
        v361 = &unk_24F94FFA0;
LABEL_98:
        sub_24E601704(v359, v360, v361);
        goto LABEL_93;
    }
  }

  else
  {
    sub_24E92BA00(v539, type metadata accessor for CommonCardAttributes);
    v132 = 1;
    v133 = v538;
    v134 = v535;
    v135 = v534;
    v136 = v533;
  }

  (*(v135 + 56))(v136, v132, 1, v134);
  sub_24E6009C8(v136, v133, &qword_27F214A20, &unk_24F94D670);
  return sub_24E92BA00(v540, type metadata accessor for CardLayoutMetrics);
}

uint64_t sub_24E91E3AC@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v459 = a5;
  v526 = a4;
  v535 = a3;
  v536 = a1;
  v537 = a6;
  v463 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A10, &unk_24F94BD90);
  MEMORY[0x28223BE20](v463);
  v451 = (&v420 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v429 = (&v420 - v9);
  v424 = type metadata accessor for JSColor(0);
  MEMORY[0x28223BE20](v424);
  v423 = &v420 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v427 = type metadata accessor for CommonCardAttributes.CardBackgroundColor(0);
  v426 = *(v427 - 8);
  MEMORY[0x28223BE20](v427);
  v422 = &v420 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F550, &unk_24F9EC960);
  MEMORY[0x28223BE20](v12 - 8);
  v428 = &v420 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8, &unk_24F94BD70);
  MEMORY[0x28223BE20](v14 - 8);
  v430 = &v420 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v449 = &v420 - v17;
  v461 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221D80, &unk_24F968160);
  MEMORY[0x28223BE20](v461);
  v462 = &v420 - v18;
  v433 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221D88, &unk_24FA046F0);
  MEMORY[0x28223BE20](v433);
  v434 = (&v420 - v19);
  v460 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CA8, &qword_24F950010);
  MEMORY[0x28223BE20](v460);
  v435 = &v420 - v20;
  v492 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221D90, &unk_24F968170);
  MEMORY[0x28223BE20](v492);
  v493 = &v420 - v21;
  v514 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C88, &unk_24F950000);
  MEMORY[0x28223BE20](v514);
  v494 = &v420 - v22;
  v448 = sub_24F924B38();
  v443 = *(v448 - 8);
  MEMORY[0x28223BE20](v448);
  v442 = &v420 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v446 = sub_24F921AF8();
  v445 = *(v446 - 8);
  MEMORY[0x28223BE20](v446);
  v444 = &v420 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v458 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C10, &unk_24F94FFD0);
  v457 = *(v458 - 8);
  MEMORY[0x28223BE20](v458);
  v447 = &v420 - v25;
  v485 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221D98, &qword_24F9D1E60);
  MEMORY[0x28223BE20](v485);
  v486 = &v420 - v26;
  v513 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BB8, &unk_24F93E750);
  MEMORY[0x28223BE20](v513);
  v487 = &v420 - v27;
  v515 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B98, &unk_24F93E740);
  v504 = *(v515 - 8);
  MEMORY[0x28223BE20](v515);
  v469 = &v420 - v28;
  v440 = type metadata accessor for CardElementView.Category(0);
  MEMORY[0x28223BE20](v440);
  v431 = &v420 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v437 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DA0, &unk_24F968180);
  MEMORY[0x28223BE20](v437);
  v439 = &v420 - v30;
  v438 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B60, &unk_24F94FFB0);
  MEMORY[0x28223BE20](v438);
  v432 = &v420 - v31;
  v509 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DA8, &unk_24F97E340);
  MEMORY[0x28223BE20](v509);
  v511 = &v420 - v32;
  v497 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DB0, &qword_24F968190);
  MEMORY[0x28223BE20](v497);
  v498 = &v420 - v33;
  v510 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B30, &unk_24F93E710);
  MEMORY[0x28223BE20](v510);
  v490 = &v420 - v34;
  v525 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B20, &unk_24F94FF90);
  MEMORY[0x28223BE20](v525);
  v512 = &v420 - v35;
  v467 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B50, &unk_24F93E720);
  v466 = *(v467 - 8);
  MEMORY[0x28223BE20](v467);
  v436 = &v420 - v36;
  v489 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C98, &unk_24F93E7B0);
  MEMORY[0x28223BE20](v489);
  v491 = &v420 - v37;
  v488 = type metadata accessor for CardContentBackgroundStyle(0);
  MEMORY[0x28223BE20](v488);
  v455 = &v420 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v456 = &v420 - v40;
  v517 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BE0, &unk_24FA37430);
  MEMORY[0x28223BE20](v517);
  v519 = &v420 - v41;
  v505 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BE8, &unk_24F967D10);
  MEMORY[0x28223BE20](v505);
  v507 = &v420 - v42;
  v479 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BF0, &qword_24FA37440);
  MEMORY[0x28223BE20](v479);
  v482 = &v420 - v43;
  v506 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C70, &unk_24F93E7A0);
  MEMORY[0x28223BE20](v506);
  v484 = &v420 - v44;
  v518 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C60, &unk_24F94FFF0);
  MEMORY[0x28223BE20](v518);
  v508 = &v420 - v45;
  v531 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C50, &unk_24F93E790);
  MEMORY[0x28223BE20](v531);
  v520 = &v420 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B270, &unk_24F950890);
  MEMORY[0x28223BE20](v47 - 8);
  v453 = &v420 - v48;
  v477 = type metadata accessor for CardPrimaryActionButton(0);
  MEMORY[0x28223BE20](v477);
  v454 = &v420 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v483 = &v420 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v52 - 8);
  v450 = &v420 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v425 = &v420 - v55;
  MEMORY[0x28223BE20](v56);
  v58 = &v420 - v57;
  v470 = sub_24F9289E8();
  v468 = *(v470 - 8);
  MEMORY[0x28223BE20](v470);
  v441 = &v420 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v452 = &v420 - v61;
  v476 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C00, &unk_24F93E770);
  MEMORY[0x28223BE20](v476);
  v481 = &v420 - v62;
  v474 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DB8, &qword_24F968198);
  MEMORY[0x28223BE20](v474);
  v475 = &v420 - v63;
  v502 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BF0, &unk_24F94DAA0);
  MEMORY[0x28223BE20](v502);
  v478 = &v420 - v64;
  v527 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BD8, &unk_24F967D00);
  MEMORY[0x28223BE20](v527);
  v529 = &v420 - v65;
  v521 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DC0, &unk_24F9D1E50);
  MEMORY[0x28223BE20](v521);
  v523 = &v420 - v66;
  v499 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DC8, &qword_24F9681A0);
  MEMORY[0x28223BE20](v499);
  v501 = &v420 - v67;
  v471 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DD0, &unk_24FA04700);
  MEMORY[0x28223BE20](v471);
  v472 = &v420 - v68;
  v500 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BD8, &unk_24F93E760);
  MEMORY[0x28223BE20](v500);
  v473 = &v420 - v69;
  v522 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BC8, &unk_24F94DA90);
  MEMORY[0x28223BE20](v522);
  v503 = &v420 - v70;
  v528 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B10, &unk_24F93E700);
  MEMORY[0x28223BE20](v528);
  v524 = &v420 - v71;
  v72 = type metadata accessor for DefaultCardTitleView(0);
  MEMORY[0x28223BE20](v72);
  v74 = &v420 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v516 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B88, &unk_24F94FFC0);
  MEMORY[0x28223BE20](v516);
  v495 = &v420 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v76);
  v465 = &v420 - v77;
  MEMORY[0x28223BE20](v78);
  v80 = &v420 - v79;
  MEMORY[0x28223BE20](v81);
  v464 = &v420 - v82;
  v480 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B40, &unk_24F94FFA0);
  MEMORY[0x28223BE20](v480);
  v496 = &v420 - v83;
  v534 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B00, &unk_24F94FF80);
  v533 = *(v534 - 8);
  MEMORY[0x28223BE20](v534);
  v530 = &v420 - v84;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20, &unk_24F94D670);
  MEMORY[0x28223BE20](v85 - 8);
  v532 = &v420 - v86;
  v87 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v87);
  v89 = (&v420 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v90);
  v539 = &v420 - v91;
  v92 = type metadata accessor for CommonCardAttributes(0);
  MEMORY[0x28223BE20](v92);
  v94 = &v420 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = a2;
  v96 = a2 + *(type metadata accessor for DebugErrorCard(0) + 36);
  v538 = v94;
  v97 = v94;
  v98 = v535;
  sub_24E92CCE0(v96, v97, type metadata accessor for CommonCardAttributes);
  if (v98 > 2u)
  {
    if (v98 == 3)
    {
      sub_24F4E9558(v526, v89);
      goto LABEL_21;
    }

    if (v98 == 4)
    {
      if (qword_27F2112F0 != -1)
      {
        swift_once();
      }

      v99 = qword_27F39E610;
    }

    else
    {
      if (qword_27F211308 != -1)
      {
        swift_once();
      }

      v99 = qword_27F39E658;
    }
  }

  else if (v98)
  {
    if (v98 == 1)
    {
      sub_24F4E9E44(v526, v89);
      goto LABEL_21;
    }

    if (qword_27F2112F8 != -1)
    {
      swift_once();
    }

    v99 = qword_27F39E628;
  }

  else
  {
    if (qword_27F211300 != -1)
    {
      swift_once();
    }

    v99 = qword_27F39E640;
  }

  v100 = __swift_project_value_buffer(v87, v99);
  sub_24E92CCE0(v100, v89, type metadata accessor for CardLayoutMetrics);
LABEL_21:
  sub_24E92C5CC(v89, v539, type metadata accessor for CardLayoutMetrics);
  v101 = v536;
  if (sub_24E92BA60(v536, v95, v98))
  {
    switch(v101)
    {
      case 1:
        LOBYTE(v543) = 0;
        goto LABEL_49;
      case 2:
        swift_storeEnumTagMultiPayload();
        sub_24E92CBAC(&qword_27F214C78, type metadata accessor for CardPrimaryActionButton, &unk_24F9508C0);
        v184 = v484;
        sub_24F924E28();
        sub_24E60169C(v184, v507, &qword_27F214C70, &unk_24F93E7A0);
        swift_storeEnumTagMultiPayload();
        sub_24E63CEC4();
        sub_24E92B93C(&qword_27F214C80, &qword_27F214C88, &unk_24F950000, sub_24E63CF80);
        v185 = v508;
        sub_24F924E28();
        sub_24E601704(v184, &qword_27F214C70, &unk_24F93E7A0);
        sub_24E60169C(v185, v519, &qword_27F214C60, &unk_24F94FFF0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CF0, &unk_24F94BDA0);
        sub_24E63CE0C();
        sub_24E63D208();
        v186 = v520;
        sub_24F924E28();
        sub_24E601704(v185, &qword_27F214C60, &unk_24F94FFF0);
        goto LABEL_51;
      case 3:
        sub_24E60169C(&v538[v92[10]], v58, &qword_27F213FB0, &qword_24F93E6B0);
        v187 = v468;
        v188 = v470;
        if ((*(v468 + 48))(v58, 1, v470) == 1)
        {
          sub_24E601704(v58, &qword_27F213FB0, &qword_24F93E6B0);
          v189 = 1;
          v128 = v537;
          v129 = v534;
          v130 = v533;
          v131 = v532;
          v190 = v458;
          v191 = v457;
          v192 = v481;
        }

        else
        {
          (*(v187 + 32))();
          v421 = v87;
          v321 = v441;
          sub_24F9289C8();
          v322 = *MEMORY[0x277CE0118];
          v323 = v443;
          v536 = *(v443 + 104);
          v324 = v442;
          v325 = v448;
          v536(v442, v322, v448);
          v326 = v187;
          v327 = v444;
          sub_24F9219A8();
          (*(v323 + 8))(v324, v325);
          sub_24E92CBAC(&qword_27F214C28, MEMORY[0x277D21C48], MEMORY[0x277D7EEB8]);
          sub_24E92CBAC(&qword_27F214C30, MEMORY[0x277D7EBE8], MEMORY[0x277D7EBE0]);
          v328 = v447;
          v329 = v446;
          sub_24F925ED8();
          (*(v445 + 8))(v327, v329);
          v330 = *(v326 + 8);
          v330(v321, v188);
          v331 = sub_24F927618();
          v333 = v332;
          v334 = (v328 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C20, &unk_24F93E780) + 36));
          v335 = sub_24F924258();
          v536(&v334[*(v335 + 20)], v322, v325);
          __asm { FMOV            V0.2D, #8.0 }

          *v334 = _Q0;
          v341 = v421;
          v342 = v539;
          v343 = (v539 + v421[32]);
          v344 = *v343;
          v345 = v343[1];
          v346 = v343[2];
          v347 = v343[3];
          v348 = &v334[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A1C8, &unk_24F97E300) + 36)];
          *v348 = v347;
          *(v348 + 1) = v346;
          *(v348 + 2) = v344;
          *(v348 + 3) = v345;
          v349 = &v334[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C40, &unk_24F94FFE0) + 36)];
          *v349 = v331;
          v349[1] = v333;
          v350 = *(v342 + v341[31]);

          sub_24F9278A8();
          v352 = v351;
          v354 = v353;
          v330(v452, v470);
          v190 = v458;
          v355 = (v328 + *(v458 + 36));
          *v355 = v350;
          v355[1] = v352;
          v355[2] = v354;
          v192 = v481;
          sub_24E6009C8(v328, v481, &qword_27F214C10, &unk_24F94FFD0);
          v189 = 0;
          v128 = v537;
          v129 = v534;
          v130 = v533;
          v131 = v532;
          v191 = v457;
        }

        (*(v191 + 56))(v192, v189, 1, v190);
        sub_24E60169C(v192, v475, &qword_27F214C00, &unk_24F93E770);
        swift_storeEnumTagMultiPayload();
        sub_24E92C2CC(&qword_27F214BF8, &qword_27F214C00, &unk_24F93E770, sub_24E63CB8C);
        v356 = v478;
        sub_24F924E28();
        sub_24E60169C(v356, v501, &qword_27F214BF0, &unk_24F94DAA0);
        swift_storeEnumTagMultiPayload();
        sub_24E63C9EC();
        sub_24E63CAD4();
        v357 = v503;
        sub_24F924E28();
        sub_24E601704(v356, &qword_27F214BF0, &unk_24F94DAA0);
        sub_24E60169C(v357, v523, &qword_27F214BC8, &unk_24F94DA90);
        swift_storeEnumTagMultiPayload();
        sub_24E63C3A8();
        sub_24E63C960();
        v358 = v524;
        sub_24F924E28();
        sub_24E601704(v357, &qword_27F214BC8, &unk_24F94DA90);
        sub_24E60169C(v358, v529, &qword_27F214B10, &unk_24F93E700);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v139 = v530;
        sub_24F924E28();
        sub_24E601704(v358, &qword_27F214B10, &unk_24F93E700);
        v359 = v481;
        v360 = &qword_27F214C00;
        v361 = &unk_24F93E770;
        goto LABEL_99;
      case 4:
        v142 = &v538[v92[11]];
        v143 = *(v142 + 1);
        if (!v143)
        {
          goto LABEL_72;
        }

        v144 = *v142;
        v145 = HIBYTE(v143) & 0xF;
        if ((v143 & 0x2000000000000000) == 0)
        {
          v145 = v144 & 0xFFFFFFFFFFFFLL;
        }

        if (v145)
        {
          *&v540 = v144;
          *(&v540 + 1) = v143;
          sub_24E600AEC();

          v146 = sub_24F925E18();
          v148 = v147;
          v150 = v149;
          v151 = v87;
          v152 = v539;
          v153 = sub_24F925C98();
          v155 = v154;
          v157 = v156;
          sub_24E600B40(v146, v148, v150 & 1);

          LODWORD(v540) = sub_24F9251C8();
          v158 = sub_24F925C58();
          v160 = v159;
          v162 = v161;
          v164 = v163;
          sub_24E600B40(v153, v155, v157 & 1);

          v165 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8, &unk_24F94DA80) + 36);
          v166 = *MEMORY[0x277CE13B8];
          v167 = sub_24F927748();
          v168 = v469;
          (*(*(v167 - 8) + 104))(&v469[v165], v166, v167);
          *v168 = v158;
          *(v168 + 8) = v160;
          *(v168 + 16) = v162 & 1;
          *(v168 + 24) = v164;
          v169 = *(v152 + v151[19]);
          KeyPath = swift_getKeyPath();
          v171 = v515;
          v172 = v168 + *(v515 + 36);
          *v172 = KeyPath;
          *(v172 + 8) = v169;
          *(v172 + 16) = 0;
          v173 = v464;
          sub_24E6009C8(v168, v464, &qword_27F214B98, &unk_24F93E740);
          v174 = 0;
          v128 = v537;
          v129 = v534;
          v130 = v533;
        }

        else
        {
LABEL_72:
          v174 = 1;
          v128 = v537;
          v129 = v534;
          v130 = v533;
          v171 = v515;
          v173 = v464;
        }

        (*(v504 + 56))(v173, v174, 1, v171);
        sub_24E60169C(v173, v498, &qword_27F214B88, &unk_24F94FFC0);
        swift_storeEnumTagMultiPayload();
        sub_24E92C2CC(&qword_27F214B38, &qword_27F214B40, &unk_24F94FFA0, sub_24E63C518);
        sub_24E92C2CC(&qword_27F214B80, &qword_27F214B88, &unk_24F94FFC0, sub_24E63C774);
        v301 = v490;
        sub_24F924E28();
        sub_24E60169C(v301, v511, &qword_27F214B30, &unk_24F93E710);
        swift_storeEnumTagMultiPayload();
        sub_24E63C434();
        sub_24E63C8B0();
        v302 = v512;
        sub_24F924E28();
        sub_24E601704(v301, &qword_27F214B30, &unk_24F93E710);
        sub_24E60169C(v302, v523, &qword_27F214B20, &unk_24F94FF90);
        swift_storeEnumTagMultiPayload();
        sub_24E63C3A8();
        sub_24E63C960();
        v303 = v524;
        sub_24F924E28();
        sub_24E601704(v302, &qword_27F214B20, &unk_24F94FF90);
        sub_24E60169C(v303, v529, &qword_27F214B10, &unk_24F93E700);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v139 = v530;
        sub_24F924E28();
        sub_24E601704(v303, &qword_27F214B10, &unk_24F93E700);
        v304 = v173;
        goto LABEL_81;
      case 5:
        v198 = &v538[v92[12]];
        v199 = *(v198 + 1);
        if (!v199)
        {
          goto LABEL_75;
        }

        v200 = *v198;
        v201 = HIBYTE(v199) & 0xF;
        if ((v199 & 0x2000000000000000) == 0)
        {
          v201 = v200 & 0xFFFFFFFFFFFFLL;
        }

        if (v201)
        {
          *&v540 = v200;
          *(&v540 + 1) = v199;
          sub_24E600AEC();

          v202 = sub_24F925E18();
          v204 = v203;
          v206 = v205;
          v421 = v87;
          v207 = v539;
          v208 = sub_24F925C98();
          v210 = v209;
          v212 = v211;
          sub_24E600B40(v202, v204, v206 & 1);

          LODWORD(v540) = sub_24F9251C8();
          v213 = sub_24F925C58();
          v215 = v214;
          v217 = v216;
          v219 = v218;
          sub_24E600B40(v208, v210, v212 & 1);

          v220 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8, &unk_24F94DA80) + 36);
          v221 = *MEMORY[0x277CE13B8];
          v222 = sub_24F927748();
          v223 = v469;
          (*(*(v222 - 8) + 104))(&v469[v220], v221, v222);
          *v223 = v213;
          *(v223 + 8) = v215;
          *(v223 + 16) = v217 & 1;
          *(v223 + 24) = v219;
          v224 = *(v207 + v421[24]);
          v225 = swift_getKeyPath();
          v226 = v515;
          v227 = v223 + *(v515 + 36);
          *v227 = v225;
          *(v227 + 8) = v224;
          *(v227 + 16) = 0;
          sub_24E6009C8(v223, v80, &qword_27F214B98, &unk_24F93E740);
          v228 = 0;
          v128 = v537;
          v130 = v533;
          v131 = v532;
        }

        else
        {
LABEL_75:
          v228 = 1;
          v128 = v537;
          v130 = v533;
          v131 = v532;
          v226 = v515;
        }

        (*(v504 + 56))(v80, v228, 1, v226);
        sub_24E60169C(v80, v486, &qword_27F214B88, &unk_24F94FFC0);
        swift_storeEnumTagMultiPayload();
        sub_24E92C2CC(&qword_27F214B80, &qword_27F214B88, &unk_24F94FFC0, sub_24E63C774);
        v310 = v487;
        sub_24F924E28();
        sub_24E60169C(v310, v511, &qword_27F214BB8, &unk_24F93E750);
        swift_storeEnumTagMultiPayload();
        sub_24E63C434();
        sub_24E63C8B0();
        v311 = v512;
        sub_24F924E28();
        sub_24E601704(v310, &qword_27F214BB8, &unk_24F93E750);
        sub_24E60169C(v311, v523, &qword_27F214B20, &unk_24F94FF90);
        swift_storeEnumTagMultiPayload();
        sub_24E63C3A8();
        sub_24E63C960();
        v312 = v524;
        sub_24F924E28();
        sub_24E601704(v311, &qword_27F214B20, &unk_24F94FF90);
        sub_24E60169C(v312, v529, &qword_27F214B10, &unk_24F93E700);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v139 = v530;
        sub_24F924E28();
        sub_24E601704(v312, &qword_27F214B10, &unk_24F93E700);
        sub_24E601704(v80, &qword_27F214B88, &unk_24F94FFC0);
        v129 = v534;
        goto LABEL_94;
      case 6:
        v234 = &v538[v92[13]];
        v235 = *(v234 + 1);
        if (!v235)
        {
          goto LABEL_77;
        }

        v236 = *v234;
        v237 = HIBYTE(v235) & 0xF;
        if ((v235 & 0x2000000000000000) == 0)
        {
          v237 = v236 & 0xFFFFFFFFFFFFLL;
        }

        if (v237)
        {
          *&v540 = v236;
          *(&v540 + 1) = v235;
          sub_24E600AEC();

          v238 = sub_24F925E18();
          v240 = v239;
          v242 = v241;
          v243 = v539;
          v244 = sub_24F925C98();
          v246 = v245;
          v248 = v247;
          sub_24E600B40(v238, v240, v242 & 1);

          LODWORD(v540) = sub_24F9251C8();
          v249 = sub_24F925C58();
          v251 = v250;
          v253 = v252;
          v255 = v254;
          sub_24E600B40(v244, v246, v248 & 1);

          v256 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8, &unk_24F94DA80) + 36);
          v257 = *MEMORY[0x277CE13B8];
          v258 = sub_24F927748();
          v259 = v469;
          (*(*(v258 - 8) + 104))(&v469[v256], v257, v258);
          *v259 = v249;
          *(v259 + 8) = v251;
          *(v259 + 16) = v253 & 1;
          *(v259 + 24) = v255;
          v260 = *(v243 + v87[26]);
          v261 = swift_getKeyPath();
          v262 = v515;
          v263 = v259 + *(v515 + 36);
          *v263 = v261;
          *(v263 + 8) = v260;
          *(v263 + 16) = 0;
          v264 = v465;
          sub_24E6009C8(v259, v465, &qword_27F214B98, &unk_24F93E740);
          v265 = 0;
          v128 = v537;
          v129 = v534;
          v131 = v532;
        }

        else
        {
LABEL_77:
          v265 = 1;
          v128 = v537;
          v129 = v534;
          v131 = v532;
          v262 = v515;
          v264 = v465;
        }

        (*(v504 + 56))(v264, v265, 1, v262);
        sub_24E60169C(v264, v486, &qword_27F214B88, &unk_24F94FFC0);
        swift_storeEnumTagMultiPayload();
        sub_24E92C2CC(&qword_27F214B80, &qword_27F214B88, &unk_24F94FFC0, sub_24E63C774);
        v313 = v487;
        sub_24F924E28();
        sub_24E60169C(v313, v511, &qword_27F214BB8, &unk_24F93E750);
        swift_storeEnumTagMultiPayload();
        sub_24E63C434();
        sub_24E63C8B0();
        v314 = v512;
        sub_24F924E28();
        sub_24E601704(v313, &qword_27F214BB8, &unk_24F93E750);
        sub_24E60169C(v314, v523, &qword_27F214B20, &unk_24F94FF90);
        swift_storeEnumTagMultiPayload();
        sub_24E63C3A8();
        sub_24E63C960();
        v315 = v524;
        sub_24F924E28();
        sub_24E601704(v314, &qword_27F214B20, &unk_24F94FF90);
        sub_24E60169C(v315, v529, &qword_27F214B10, &unk_24F93E700);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v139 = v530;
        sub_24F924E28();
        sub_24E601704(v315, &qword_27F214B10, &unk_24F93E700);
        sub_24E601704(v264, &qword_27F214B88, &unk_24F94FFC0);
        v130 = v533;
        goto LABEL_94;
      case 7:
        sub_24E92CCE0(v538, v74, type metadata accessor for CommonCardAttributes);
        sub_24E92CCE0(v539, &v74[*(v72 + 20)], type metadata accessor for CardLayoutMetrics);
        v74[*(v72 + 24)] = v98;
        sub_24E92CCE0(v74, v472, type metadata accessor for DefaultCardTitleView);
        swift_storeEnumTagMultiPayload();
        sub_24E92CBAC(&qword_27F214BE0, type metadata accessor for DefaultCardTitleView, &unk_24FA04808);
        sub_24E92C2CC(&qword_27F214B80, &qword_27F214B88, &unk_24F94FFC0, sub_24E63C774);
        v193 = v473;
        sub_24F924E28();
        sub_24E60169C(v193, v501, &qword_27F214BD8, &unk_24F93E760);
        swift_storeEnumTagMultiPayload();
        sub_24E63C9EC();
        sub_24E63CAD4();
        v194 = v503;
        sub_24F924E28();
        sub_24E601704(v193, &qword_27F214BD8, &unk_24F93E760);
        sub_24E60169C(v194, v523, &qword_27F214BC8, &unk_24F94DA90);
        swift_storeEnumTagMultiPayload();
        sub_24E63C3A8();
        sub_24E63C960();
        v195 = v524;
        sub_24F924E28();
        sub_24E601704(v194, &qword_27F214BC8, &unk_24F94DA90);
        sub_24E60169C(v195, v529, &qword_27F214B10, &unk_24F93E700);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v139 = v530;
        sub_24F924E28();
        sub_24E601704(v195, &qword_27F214B10, &unk_24F93E700);
        v140 = type metadata accessor for DefaultCardTitleView;
        v141 = v74;
        goto LABEL_47;
      case 8:
        v269 = &v538[v92[15]];
        v270 = *(v269 + 1);
        if (!v270)
        {
          goto LABEL_79;
        }

        v271 = *v269;
        v272 = HIBYTE(v270) & 0xF;
        if ((v270 & 0x2000000000000000) == 0)
        {
          v272 = v271 & 0xFFFFFFFFFFFFLL;
        }

        if (v272)
        {
          *&v540 = v271;
          *(&v540 + 1) = v270;
          sub_24E600AEC();

          v273 = sub_24F925E18();
          v275 = v274;
          v277 = v276;
          v421 = v87;
          v278 = v539;
          v279 = sub_24F925C98();
          v281 = v280;
          v283 = v282;
          sub_24E600B40(v273, v275, v277 & 1);

          LODWORD(v540) = sub_24F9251C8();
          v284 = sub_24F925C58();
          v286 = v285;
          v288 = v287;
          v290 = v289;
          sub_24E600B40(v279, v281, v283 & 1);

          v291 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8, &unk_24F94DA80) + 36);
          v292 = *MEMORY[0x277CE13B8];
          v293 = sub_24F927748();
          v294 = v469;
          (*(*(v293 - 8) + 104))(&v469[v291], v292, v293);
          *v294 = v284;
          *(v294 + 8) = v286;
          *(v294 + 16) = v288 & 1;
          *(v294 + 24) = v290;
          v295 = *(v278 + v421[28]);
          v296 = swift_getKeyPath();
          v297 = v515;
          v298 = v294 + *(v515 + 36);
          *v298 = v296;
          *(v298 + 8) = v295;
          *(v298 + 16) = 0;
          v299 = v495;
          sub_24E6009C8(v294, v495, &qword_27F214B98, &unk_24F93E740);
          v300 = 0;
          v128 = v537;
          v129 = v534;
          v130 = v533;
        }

        else
        {
LABEL_79:
          v300 = 1;
          v128 = v537;
          v129 = v534;
          v130 = v533;
          v297 = v515;
          v299 = v495;
        }

        (*(v504 + 56))(v299, v300, 1, v297);
        sub_24E60169C(v299, v472, &qword_27F214B88, &unk_24F94FFC0);
        swift_storeEnumTagMultiPayload();
        sub_24E92CBAC(&qword_27F214BE0, type metadata accessor for DefaultCardTitleView, &unk_24FA04808);
        sub_24E92C2CC(&qword_27F214B80, &qword_27F214B88, &unk_24F94FFC0, sub_24E63C774);
        v316 = v473;
        sub_24F924E28();
        sub_24E60169C(v316, v501, &qword_27F214BD8, &unk_24F93E760);
        swift_storeEnumTagMultiPayload();
        sub_24E63C9EC();
        sub_24E63CAD4();
        v317 = v503;
        sub_24F924E28();
        sub_24E601704(v316, &qword_27F214BD8, &unk_24F93E760);
        sub_24E60169C(v317, v523, &qword_27F214BC8, &unk_24F94DA90);
        swift_storeEnumTagMultiPayload();
        sub_24E63C3A8();
        sub_24E63C960();
        v318 = v524;
        sub_24F924E28();
        sub_24E601704(v317, &qword_27F214BC8, &unk_24F94DA90);
        sub_24E60169C(v318, v529, &qword_27F214B10, &unk_24F93E700);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v139 = v530;
        sub_24F924E28();
        sub_24E601704(v318, &qword_27F214B10, &unk_24F93E700);
        v304 = v495;
LABEL_81:
        v319 = &qword_27F214B88;
        v320 = &unk_24F94FFC0;
        goto LABEL_92;
      case 9:
        v543 = 256;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D00, &unk_24F93E7E0);
        sub_24E63D294();
        goto LABEL_50;
      case 10:
        swift_storeEnumTagMultiPayload();
        sub_24E92C2CC(&qword_27F214BF8, &qword_27F214C00, &unk_24F93E770, sub_24E63CB8C);
        v266 = v478;
        sub_24F924E28();
        sub_24E60169C(v266, v501, &qword_27F214BF0, &unk_24F94DAA0);
        swift_storeEnumTagMultiPayload();
        sub_24E63C9EC();
        sub_24E63CAD4();
        v267 = v503;
        sub_24F924E28();
        sub_24E601704(v266, &qword_27F214BF0, &unk_24F94DAA0);
        sub_24E60169C(v267, v523, &qword_27F214BC8, &unk_24F94DA90);
        swift_storeEnumTagMultiPayload();
        sub_24E63C3A8();
        sub_24E63C960();
        v268 = v524;
        sub_24F924E28();
        sub_24E601704(v267, &qword_27F214BC8, &unk_24F94DA90);
        sub_24E60169C(v268, v529, &qword_27F214B10, &unk_24F93E700);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v139 = v530;
        sub_24F924E28();
        sub_24E601704(v268, &qword_27F214B10, &unk_24F93E700);
        goto LABEL_52;
      case 11:
        if (v98 == 1)
        {
          v132 = 2;
        }

        else
        {
          v132 = 1;
        }

        v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
        v134 = v455;
        (*(*(v133 - 8) + 56))(v455, v132, 5, v133);
        v135 = v456;
        sub_24E92C5CC(v134, v456, type metadata accessor for CardContentBackgroundStyle);
        sub_24E92CCE0(v135, v493, type metadata accessor for CardContentBackgroundStyle);
        swift_storeEnumTagMultiPayload();
        sub_24E92CBAC(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
        sub_24E63CF80();
        v136 = v494;
        sub_24F924E28();
        sub_24E60169C(v136, v507, &qword_27F214C88, &unk_24F950000);
        swift_storeEnumTagMultiPayload();
        sub_24E63CEC4();
        sub_24E92B93C(&qword_27F214C80, &qword_27F214C88, &unk_24F950000, sub_24E63CF80);
        v137 = v508;
        sub_24F924E28();
        sub_24E601704(v136, &qword_27F214C88, &unk_24F950000);
        sub_24E60169C(v137, v519, &qword_27F214C60, &unk_24F94FFF0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CF0, &unk_24F94BDA0);
        sub_24E63CE0C();
        sub_24E63D208();
        v138 = v520;
        sub_24F924E28();
        sub_24E601704(v137, &qword_27F214C60, &unk_24F94FFF0);
        sub_24E60169C(v138, v529, &qword_27F214C50, &unk_24F93E790);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v139 = v530;
        sub_24F924E28();
        sub_24E601704(v138, &qword_27F214C50, &unk_24F93E790);
        v140 = type metadata accessor for CardContentBackgroundStyle;
        v141 = v135;
LABEL_47:
        sub_24E92BA00(v141, v140);
        goto LABEL_52;
      case 12:
        v175 = v98;
        if (v98 - 2 < 4)
        {
          v176 = sub_24F926C98();
          v177 = v96 + v92[10];
          v178 = v450;
          sub_24E60169C(v177, v450, &qword_27F213FB0, &qword_24F93E6B0);
          v179 = v451;
          sub_24F6C4E24(v178, v175 != 5, v176, v451);

          sub_24E601704(v178, &qword_27F213FB0, &qword_24F93E6B0);
          sub_24E60169C(v179, v462, &qword_27F214A10, &unk_24F94BD90);
          swift_storeEnumTagMultiPayload();
          sub_24E63D00C();
          sub_24E63D150();
          v180 = v491;
          sub_24F924E28();
          v181 = v179;
          v182 = &qword_27F214A10;
          v183 = &unk_24F94BD90;
LABEL_90:
          sub_24E601704(v181, v182, v183);
          v128 = v537;
          v129 = v534;
          v130 = v533;
          goto LABEL_91;
        }

        if (!v98)
        {
          v362 = sub_24F926C98();
          v363 = sub_24F925808();
          v364 = v434;
          *v434 = v362;
          *(v364 + 8) = v363;
          swift_storeEnumTagMultiPayload();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CB8, &unk_24F93E7C0);
          sub_24E63D098();
          sub_24E63D150();
          v365 = v435;
          sub_24F924E28();
          sub_24E60169C(v365, v462, &qword_27F214CA8, &qword_24F950010);
          swift_storeEnumTagMultiPayload();
          sub_24E63D00C();
          v180 = v491;
          sub_24F924E28();

          v181 = v365;
          v182 = &qword_27F214CA8;
          v183 = &qword_24F950010;
          goto LABEL_90;
        }

        v379 = v428;
        sub_24E60169C(v96 + v92[17], v428, &qword_27F21F550, &unk_24F9EC960);
        v380 = (*(v426 + 48))(v379, 1, v427);
        v129 = v534;
        v130 = v533;
        if (v380 == 1)
        {
          sub_24E601704(v379, &qword_27F21F550, &unk_24F9EC960);
          v381 = type metadata accessor for ColorGroup(0);
          v382 = v430;
          (*(*(v381 - 8) + 56))(v430, 1, 1, v381);
          v383 = v468;
        }

        else
        {
          v394 = v422;
          sub_24E92CCE0(v379, v422, type metadata accessor for CommonCardAttributes.CardBackgroundColor);
          v395 = v394;
          v396 = v423;
          sub_24E92C5CC(v395, v423, type metadata accessor for JSColor);
          v382 = v430;
          v383 = v468;
          if (qword_27F20FEE0 != -1)
          {
            swift_once();
          }

          ColorGrouping.colorGroup(for:)(*(v396 + *(v424 + 24)));
          sub_24E92BA00(v396, type metadata accessor for JSColor);
          sub_24E92BA00(v379, type metadata accessor for CommonCardAttributes.CardBackgroundColor);
          v397 = type metadata accessor for ColorGroup(0);
          v398 = *(v397 - 8);
          if ((*(v398 + 48))(v382, 1, v397) != 1)
          {
            v408 = v449;
            sub_24E92C5CC(v382, v449, type metadata accessor for ColorGroup);
            (*(v398 + 56))(v408, 0, 1, v397);
            v128 = v537;
            goto LABEL_119;
          }
        }

        v399 = v96 + v92[10];
        v400 = v425;
        sub_24E60169C(v399, v425, &qword_27F213FB0, &qword_24F93E6B0);
        v401 = v470;
        if ((*(v383 + 48))(v400, 1, v470) == 1)
        {
          sub_24E601704(v400, &qword_27F213FB0, &qword_24F93E6B0);
          v402 = type metadata accessor for ColorGroup(0);
          (*(*(v402 - 8) + 56))(v449, 1, 1, v402);
          v128 = v537;
        }

        else
        {
          v403 = sub_24F9289A8();
          if (v403)
          {
            v404 = qword_27F20FEE0;
            v405 = v403;
            v128 = v537;
            if (v404 != -1)
            {
              v419 = v405;
              swift_once();
              v405 = v419;
            }

            v406 = v405;
            v407 = sub_24F926BD8();
            ColorGrouping.colorGroup(for:)(v407);
          }

          else
          {
            v409 = type metadata accessor for ColorGroup(0);
            (*(*(v409 - 8) + 56))(v449, 1, 1, v409);
            v128 = v537;
          }

          (*(v383 + 8))(v400, v401);
        }

        v410 = type metadata accessor for ColorGroup(0);
        if ((*(*(v410 - 8) + 48))(v382, 1, v410) != 1)
        {
          sub_24E601704(v382, &qword_27F2190D8, &unk_24F94BD70);
        }

LABEL_119:
        v411 = sub_24F926C98();
        v412 = sub_24F927618();
        v414 = v413;
        v415 = v429;
        v416 = v429 + *(v463 + 36);
        sub_24F594764(v449, 1, v416);
        v417 = (v416 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CE0, &unk_24F93E7D0) + 36));
        *v417 = v412;
        v417[1] = v414;
        *v415 = v411;
        sub_24E60169C(v415, v434, &qword_27F214A10, &unk_24F94BD90);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CB8, &unk_24F93E7C0);
        sub_24E63D098();
        sub_24E63D150();
        v418 = v435;
        sub_24F924E28();
        sub_24E60169C(v418, v462, &qword_27F214CA8, &qword_24F950010);
        swift_storeEnumTagMultiPayload();
        sub_24E63D00C();
        v180 = v491;
        sub_24F924E28();
        sub_24E601704(v418, &qword_27F214CA8, &qword_24F950010);
        sub_24E601704(v415, &qword_27F214A10, &unk_24F94BD90);
        sub_24E601704(v449, &qword_27F2190D8, &unk_24F94BD70);
LABEL_91:
        sub_24E60169C(v180, v493, &qword_27F214C98, &unk_24F93E7B0);
        swift_storeEnumTagMultiPayload();
        sub_24E92CBAC(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
        sub_24E63CF80();
        v366 = v494;
        sub_24F924E28();
        sub_24E60169C(v366, v507, &qword_27F214C88, &unk_24F950000);
        swift_storeEnumTagMultiPayload();
        sub_24E63CEC4();
        sub_24E92B93C(&qword_27F214C80, &qword_27F214C88, &unk_24F950000, sub_24E63CF80);
        v367 = v508;
        sub_24F924E28();
        sub_24E601704(v366, &qword_27F214C88, &unk_24F950000);
        sub_24E60169C(v367, v519, &qword_27F214C60, &unk_24F94FFF0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CF0, &unk_24F94BDA0);
        sub_24E63CE0C();
        sub_24E63D208();
        v368 = v520;
        sub_24F924E28();
        sub_24E601704(v367, &qword_27F214C60, &unk_24F94FFF0);
        sub_24E60169C(v368, v529, &qword_27F214C50, &unk_24F93E790);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v139 = v530;
        sub_24F924E28();
        sub_24E601704(v368, &qword_27F214C50, &unk_24F93E790);
        v304 = v491;
        v319 = &qword_27F214C98;
        v320 = &unk_24F93E7B0;
LABEL_92:
        sub_24E601704(v304, v319, v320);
LABEL_93:
        v131 = v532;
        goto LABEL_94;
      case 13:
        v229 = v538;
        v230 = v453;
        sub_24E60169C(&v538[v92[20]], v453, &qword_27F21B270, &unk_24F950890);
        sub_24E60169C(v229 + v92[19], &v540, qword_27F24EC90, &unk_24F93C1D0);
        v231 = v98;
        if (v98 <= 2u)
        {
          v139 = v530;
          v232 = v459;
          if (v231)
          {
            v233 = v482;
            v128 = v537;
            v129 = v534;
            v130 = v533;
            v131 = v532;
            goto LABEL_103;
          }

          goto LABEL_102;
        }

        v139 = v530;
        v232 = v459;
        if (v231 == 3)
        {
LABEL_102:
          v128 = v537;
          v129 = v534;
          v130 = v533;
          v131 = v532;
          v233 = v482;
          goto LABEL_103;
        }

        v128 = v537;
        v129 = v534;
        v130 = v533;
        v131 = v532;
        v233 = v482;
        if (v231 != 4)
        {
          v393 = 1;
          goto LABEL_104;
        }

LABEL_103:
        v393 = sub_24F92CE08();
LABEL_104:

        v384 = v454;
        sub_24E6009C8(v230, v454, &qword_27F21B270, &unk_24F950890);
        v385 = v477;
        v386 = v384 + *(v477 + 20);
        v387 = v541;
        *v386 = v540;
        *(v386 + 16) = v387;
        *(v386 + 32) = v542;
        *(v384 + *(v385 + 24)) = v393 & 1;
        *(v384 + *(v385 + 28)) = v232;
        v388 = v384;
        v389 = v483;
        sub_24E92C5CC(v388, v483, type metadata accessor for CardPrimaryActionButton);
        sub_24E92CCE0(v389, v233, type metadata accessor for CardPrimaryActionButton);
        swift_storeEnumTagMultiPayload();
        sub_24E92CBAC(&qword_27F214C78, type metadata accessor for CardPrimaryActionButton, &unk_24F9508C0);

        v390 = v484;
        sub_24F924E28();
        sub_24E60169C(v390, v507, &qword_27F214C70, &unk_24F93E7A0);
        swift_storeEnumTagMultiPayload();
        sub_24E63CEC4();
        sub_24E92B93C(&qword_27F214C80, &qword_27F214C88, &unk_24F950000, sub_24E63CF80);
        v391 = v508;
        sub_24F924E28();
        sub_24E601704(v390, &qword_27F214C70, &unk_24F93E7A0);
        sub_24E60169C(v391, v519, &qword_27F214C60, &unk_24F94FFF0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CF0, &unk_24F94BDA0);
        sub_24E63CE0C();
        sub_24E63D208();
        v392 = v520;
        sub_24F924E28();
        sub_24E601704(v391, &qword_27F214C60, &unk_24F94FFF0);
        sub_24E60169C(v392, v529, &qword_27F214C50, &unk_24F93E790);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        sub_24F924E28();
        sub_24E601704(v392, &qword_27F214C50, &unk_24F93E790);
        sub_24E92BA00(v483, type metadata accessor for CardPrimaryActionButton);
LABEL_94:
        sub_24E92BA00(v538, type metadata accessor for CommonCardAttributes);
        sub_24E6009C8(v139, v131, &qword_27F214B00, &unk_24F94FF80);
        v127 = 0;
        break;
      case 14:
        LOBYTE(v543) = 1;
LABEL_49:
        sub_24F924E28();
        v543 = v540;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D00, &unk_24F93E7E0);
        sub_24E63D294();
LABEL_50:
        sub_24F924E28();
        v196 = BYTE1(v540);
        v197 = v519;
        *v519 = v540;
        v197[1] = v196;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CF0, &unk_24F94BDA0);
        sub_24E63CE0C();
        sub_24E63D208();
        v186 = v520;
        sub_24F924E28();
LABEL_51:
        sub_24E60169C(v186, v529, &qword_27F214C50, &unk_24F93E790);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v139 = v530;
        sub_24F924E28();
        sub_24E601704(v186, &qword_27F214C50, &unk_24F93E790);
LABEL_52:
        v128 = v537;
        v129 = v534;
        v130 = v533;
        goto LABEL_93;
      default:
        v102 = *(v538 + 2);
        if (!v102)
        {
          goto LABEL_74;
        }

        v103 = *(v538 + 1);
        v104 = HIBYTE(v102) & 0xF;
        if ((v102 & 0x2000000000000000) == 0)
        {
          v104 = v103 & 0xFFFFFFFFFFFFLL;
        }

        if (v104)
        {
          if (v98 == 1)
          {
            *&v540 = *(v538 + 1);
            *(&v540 + 1) = v102;
            sub_24E600AEC();

            v105 = sub_24F925E18();
            v107 = v106;
            v109 = v108;
            v110 = v539;
            v111 = sub_24F925C98();
            v113 = v112;
            v115 = v114;
            v117 = v116;
            sub_24E600B40(v105, v107, v109 & 1);

            *&v540 = v111;
            *(&v540 + 1) = v113;
            LOBYTE(v105) = v115 & 1;
            LOBYTE(v541) = v115 & 1;
            *(&v541 + 1) = v117;
            v118 = v432;
            sub_24F9268B8();
            sub_24E600B40(v111, v113, v105);

            v119 = *(v110 + v87[7]);
            v120 = swift_getKeyPath();
            v121 = v118 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B70, &unk_24F93E730) + 36);
            *v121 = v120;
            *(v121 + 8) = v119;
            *(v121 + 16) = 0;
            LODWORD(v120) = sub_24F9251C8();
            v122 = (v118 + *(v438 + 36));
            v123 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10) + 36);
            v124 = *MEMORY[0x277CE13B8];
            v125 = sub_24F927748();
            (*(*(v125 - 8) + 104))(&v122[v123], v124, v125);
            *v122 = v120;
            sub_24E60169C(v118, v439, &qword_27F214B60, &unk_24F94FFB0);
            swift_storeEnumTagMultiPayload();
            sub_24E63C5D4();
            sub_24E92CBAC(&qword_27F214B78, type metadata accessor for CardElementView.Category, &unk_24FA04858);
            v126 = v436;
            sub_24F924E28();
            sub_24E601704(v118, &qword_27F214B60, &unk_24F94FFB0);
          }

          else
          {
            v370 = v440;
            v371 = v431;
            sub_24E60169C(&v538[v92[6]], &v431[*(v440 + 20)], &qword_27F213FB0, &qword_24F93E6B0);
            v372 = *(v539 + v87[9]);
            v373 = *(v539 + v87[10]);
            v374 = *(v539 + v87[8]);
            v375 = *(v539 + v87[6]);
            *v371 = v103;
            v371[1] = v102;
            *(v371 + v370[6]) = v372;
            *(v371 + v370[7]) = v373;
            *(v371 + v370[8]) = v374;
            *(v371 + v370[9]) = v375;
            *&v540 = 0x4034000000000000;
            sub_24E66ED98();

            sub_24F9237C8();
            *&v540 = 0x4008000000000000;
            sub_24F9237C8();
            *&v540 = 0x4018000000000000;
            sub_24F9237C8();
            *&v540 = 0x4010000000000000;
            sub_24F9237C8();
            sub_24E92CCE0(v371, v439, type metadata accessor for CardElementView.Category);
            swift_storeEnumTagMultiPayload();
            sub_24E63C5D4();
            sub_24E92CBAC(&qword_27F214B78, type metadata accessor for CardElementView.Category, &unk_24FA04858);
            v126 = v436;
            sub_24F924E28();
            sub_24E92BA00(v371, type metadata accessor for CardElementView.Category);
          }

          v128 = v537;
          v129 = v534;
          v130 = v533;
          v131 = v532;
          v309 = v496;
          sub_24E6009C8(v126, v496, &qword_27F214B50, &unk_24F93E720);
          v305 = 0;
          v306 = v498;
          v307 = v467;
          v308 = v466;
        }

        else
        {
LABEL_74:
          v305 = 1;
          v128 = v537;
          v129 = v534;
          v130 = v533;
          v131 = v532;
          v306 = v498;
          v307 = v467;
          v308 = v466;
          v309 = v496;
        }

        (*(v308 + 56))(v309, v305, 1, v307);
        sub_24E60169C(v309, v306, &qword_27F214B40, &unk_24F94FFA0);
        swift_storeEnumTagMultiPayload();
        sub_24E92C2CC(&qword_27F214B38, &qword_27F214B40, &unk_24F94FFA0, sub_24E63C518);
        sub_24E92C2CC(&qword_27F214B80, &qword_27F214B88, &unk_24F94FFC0, sub_24E63C774);
        v376 = v490;
        sub_24F924E28();
        sub_24E60169C(v376, v511, &qword_27F214B30, &unk_24F93E710);
        swift_storeEnumTagMultiPayload();
        sub_24E63C434();
        sub_24E63C8B0();
        v377 = v512;
        sub_24F924E28();
        sub_24E601704(v376, &qword_27F214B30, &unk_24F93E710);
        sub_24E60169C(v377, v523, &qword_27F214B20, &unk_24F94FF90);
        swift_storeEnumTagMultiPayload();
        sub_24E63C3A8();
        sub_24E63C960();
        v378 = v524;
        sub_24F924E28();
        sub_24E601704(v377, &qword_27F214B20, &unk_24F94FF90);
        sub_24E60169C(v378, v529, &qword_27F214B10, &unk_24F93E700);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v139 = v530;
        sub_24F924E28();
        sub_24E601704(v378, &qword_27F214B10, &unk_24F93E700);
        v359 = v496;
        v360 = &qword_27F214B40;
        v361 = &unk_24F94FFA0;
LABEL_99:
        sub_24E601704(v359, v360, v361);
        goto LABEL_94;
    }
  }

  else
  {
    sub_24E92BA00(v538, type metadata accessor for CommonCardAttributes);
    v127 = 1;
    v128 = v537;
    v129 = v534;
    v130 = v533;
    v131 = v532;
  }

  (*(v130 + 56))(v131, v127, 1, v129);
  sub_24E6009C8(v131, v128, &qword_27F214A20, &unk_24F94D670);
  return sub_24E92BA00(v539, type metadata accessor for CardLayoutMetrics);
}

uint64_t sub_24E923A50(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221E10, &qword_24F968220);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219398, &qword_24F94C038);
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - v10;
  if (a1)
  {
    sub_24E615E00(a2, &v11[*(v9 + 36)]);
    sub_24E60169C(v3, v11, &qword_27F219238, &qword_24F94BF58);
    sub_24E60169C(v11, v8, &qword_27F219398, &qword_24F94C038);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219238, &qword_24F94BF58);
    sub_24E703918();
    sub_24E7039A4();
    sub_24F924E28();
    return sub_24E601704(v11, &qword_27F219398, &qword_24F94C038);
  }

  else
  {
    sub_24E60169C(v3, v8, &qword_27F219238, &qword_24F94BF58);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219238, &qword_24F94BF58);
    sub_24E703918();
    sub_24E7039A4();
    return sub_24F924E28();
  }
}

uint64_t sub_24E923C6C(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221E00, &qword_24F968210);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2192A8, &unk_24F94BFE0);
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - v10;
  if (a1)
  {
    sub_24E615E00(a2, &v11[*(v9 + 36)]);
    sub_24E60169C(v3, v11, &qword_27F219220, &unk_24F94BF40);
    sub_24E60169C(v11, v8, &qword_27F2192A8, &unk_24F94BFE0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219220, &unk_24F94BF40);
    sub_24E702E44();
    sub_24E702ED0();
    sub_24F924E28();
    return sub_24E601704(v11, &qword_27F2192A8, &unk_24F94BFE0);
  }

  else
  {
    sub_24E60169C(v3, v8, &qword_27F219220, &unk_24F94BF40);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219220, &unk_24F94BF40);
    sub_24E702E44();
    sub_24E702ED0();
    return sub_24F924E28();
  }
}

uint64_t sub_24E923E88(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DF8, &qword_24F968208);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2192E8, &unk_24F94BFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - v10;
  if (a1)
  {
    sub_24E615E00(a2, &v11[*(v9 + 36)]);
    sub_24E60169C(v3, v11, &qword_27F2191F8, &unk_24F950190);
    sub_24E60169C(v11, v8, &qword_27F2192E8, &unk_24F94BFF0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2191F8, &unk_24F950190);
    sub_24E7030D0();
    sub_24E70315C();
    sub_24F924E28();
    return sub_24E601704(v11, &qword_27F2192E8, &unk_24F94BFF0);
  }

  else
  {
    sub_24E60169C(v3, v8, &qword_27F2191F8, &unk_24F950190);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2191F8, &unk_24F950190);
    sub_24E7030D0();
    sub_24E70315C();
    return sub_24F924E28();
  }
}

uint64_t sub_24E9240A4(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221E20, &qword_24F9682F0);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2193B0, &qword_24F94C040);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  if (a1)
  {
    v10 = &v9[*(v7 + 36)];
    *v10 = swift_getKeyPath();
    v10[8] = 0;
    v11 = type metadata accessor for HeroMediaBlurModifier(0);
    v12 = *(v11 + 20);
    *&v10[v12] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
    swift_storeEnumTagMultiPayload();
    v13 = &v10[*(v11 + 24)];
    type metadata accessor for HeroSafeAreaMetrics(0);
    sub_24E92CBAC(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);
    *v13 = sub_24F923598();
    v13[8] = v14 & 1;
    sub_24E60169C(v2, v9, &qword_27F219230, &qword_24F94BF50);
    sub_24E60169C(v9, v6, &qword_27F2193B0, &qword_24F94C040);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219230, &qword_24F94BF50);
    sub_24E7464B8();
    sub_24E703A5C();
    sub_24F924E28();
    return sub_24E601704(v9, &qword_27F2193B0, &qword_24F94C040);
  }

  else
  {
    sub_24E60169C(v2, v6, &qword_27F219230, &qword_24F94BF50);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219230, &qword_24F94BF50);
    sub_24E7464B8();
    sub_24E703A5C();
    return sub_24F924E28();
  }
}

uint64_t sub_24E924370(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221E28, &qword_24F968358);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2192C0, &qword_24F950260);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  if (a1)
  {
    v10 = &v9[*(v7 + 36)];
    *v10 = swift_getKeyPath();
    v10[8] = 0;
    v11 = type metadata accessor for HeroMediaBlurModifier(0);
    v12 = *(v11 + 20);
    *&v10[v12] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
    swift_storeEnumTagMultiPayload();
    v13 = &v10[*(v11 + 24)];
    type metadata accessor for HeroSafeAreaMetrics(0);
    sub_24E92CBAC(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);
    *v13 = sub_24F923598();
    v13[8] = v14 & 1;
    sub_24E60169C(v2, v9, &qword_27F219218, &unk_24F9501A0);
    sub_24E60169C(v9, v6, &qword_27F2192C0, &qword_24F950260);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219218, &unk_24F9501A0);
    sub_24E746574();
    sub_24E702F88();
    sub_24F924E28();
    return sub_24E601704(v9, &qword_27F2192C0, &qword_24F950260);
  }

  else
  {
    sub_24E60169C(v2, v6, &qword_27F219218, &unk_24F9501A0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219218, &unk_24F9501A0);
    sub_24E746574();
    sub_24E702F88();
    return sub_24F924E28();
  }
}

uint64_t sub_24E92463C(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221E30, &qword_24F968360);
  MEMORY[0x28223BE20](v3);
  v5 = (&v17 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219300, &unk_24F950250);
  MEMORY[0x28223BE20](v6);
  v8 = (&v17 - v7);
  if (a1)
  {
    v9 = v8 + *(v6 + 36);
    *v9 = swift_getKeyPath();
    v9[8] = 0;
    v10 = type metadata accessor for HeroMediaBlurModifier(0);
    v11 = *(v10 + 20);
    *&v9[v11] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
    swift_storeEnumTagMultiPayload();
    v12 = &v9[*(v10 + 24)];
    type metadata accessor for HeroSafeAreaMetrics(0);
    sub_24E92CBAC(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);
    *v12 = sub_24F923598();
    v12[8] = v13 & 1;
    *(v8 + 41) = *(v1 + 41);
    v14 = v1[2];
    v8[1] = v1[1];
    v8[2] = v14;
    *v8 = *v1;
    sub_24E60169C(v8, v5, &qword_27F219300, &unk_24F950250);
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219310, &unk_24F94C000);
    sub_24E7462E4();
    sub_24E7032C8();
    sub_24F924E28();
    return sub_24E601704(v8, &qword_27F219300, &unk_24F950250);
  }

  else
  {
    v16 = v1[1];
    *v5 = *v1;
    v5[1] = v16;
    v5[2] = v1[2];
    *(v5 + 41) = *(v1 + 41);
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219310, &unk_24F94C000);
    sub_24E7462E4();
    sub_24E7032C8();
    return sub_24F924E28();
  }
}

uint64_t sub_24E92490C(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221E38, &qword_24F968368);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221E40, &qword_24F968370);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  if (a1)
  {
    v10 = &v9[*(v7 + 36)];
    *v10 = swift_getKeyPath();
    v10[8] = 0;
    v11 = type metadata accessor for HeroMediaBlurModifier(0);
    v12 = *(v11 + 20);
    *&v10[v12] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
    swift_storeEnumTagMultiPayload();
    v13 = &v10[*(v11 + 24)];
    type metadata accessor for HeroSafeAreaMetrics(0);
    sub_24E92CBAC(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);
    *v13 = sub_24F923598();
    v13[8] = v14 & 1;
    sub_24E60169C(v2, v9, &qword_27F221E48, &qword_24F968378);
    sub_24E60169C(v9, v6, &qword_27F221E40, &qword_24F968370);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221E48, &qword_24F968378);
    sub_24E92C644();
    sub_24E92C700();
    sub_24F924E28();
    return sub_24E601704(v9, &qword_27F221E40, &qword_24F968370);
  }

  else
  {
    sub_24E60169C(v2, v6, &qword_27F221E48, &qword_24F968378);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221E48, &qword_24F968378);
    sub_24E92C644();
    sub_24E92C700();
    return sub_24F924E28();
  }
}

uint64_t sub_24E924BD8(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221ED0, &qword_24F9683B8);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221ED8, &qword_24F9683C0);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  if (a1)
  {
    v10 = &v9[*(v7 + 36)];
    *v10 = swift_getKeyPath();
    v10[8] = 0;
    v11 = type metadata accessor for HeroMediaBlurModifier(0);
    v12 = *(v11 + 20);
    *&v10[v12] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
    swift_storeEnumTagMultiPayload();
    v13 = &v10[*(v11 + 24)];
    type metadata accessor for HeroSafeAreaMetrics(0);
    sub_24E92CBAC(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);
    *v13 = sub_24F923598();
    v13[8] = v14 & 1;
    sub_24E92CCE0(v2, v9, type metadata accessor for CardElementView.PrimaryMixedMediaView);
    sub_24E60169C(v9, v6, &qword_27F221ED8, &qword_24F9683C0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for CardElementView.PrimaryMixedMediaView(0);
    sub_24E92CBF4();
    sub_24E92CBAC(&qword_27F2193C0, type metadata accessor for CardElementView.PrimaryMixedMediaView, &unk_24FA04A98);
    sub_24F924E28();
    return sub_24E601704(v9, &qword_27F221ED8, &qword_24F9683C0);
  }

  else
  {
    sub_24E92CCE0(v2, v6, type metadata accessor for CardElementView.PrimaryMixedMediaView);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for CardElementView.PrimaryMixedMediaView(0);
    sub_24E92CBF4();
    sub_24E92CBAC(&qword_27F2193C0, type metadata accessor for CardElementView.PrimaryMixedMediaView, &unk_24FA04A98);
    return sub_24F924E28();
  }
}

uint64_t sub_24E924EF4(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221EE8, &qword_24F9683C8);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221EF0, &qword_24F9683D0);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  if (a1)
  {
    v10 = &v9[*(v7 + 36)];
    *v10 = swift_getKeyPath();
    v10[8] = 0;
    v11 = type metadata accessor for HeroMediaBlurModifier(0);
    v12 = *(v11 + 20);
    *&v10[v12] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
    swift_storeEnumTagMultiPayload();
    v13 = &v10[*(v11 + 24)];
    type metadata accessor for HeroSafeAreaMetrics(0);
    sub_24E92CBAC(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);
    *v13 = sub_24F923598();
    v13[8] = v14 & 1;
    sub_24E92CCE0(v2, v9, type metadata accessor for GSKVideoView);
    sub_24E60169C(v9, v6, &qword_27F221EF0, &qword_24F9683D0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for GSKVideoView(0);
    sub_24E92CD48();
    sub_24E92CBAC(&qword_27F2141D8, type metadata accessor for GSKVideoView, &unk_24F949084);
    sub_24F924E28();
    return sub_24E601704(v9, &qword_27F221EF0, &qword_24F9683D0);
  }

  else
  {
    sub_24E92CCE0(v2, v6, type metadata accessor for GSKVideoView);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for GSKVideoView(0);
    sub_24E92CD48();
    sub_24E92CBAC(&qword_27F2141D8, type metadata accessor for GSKVideoView, &unk_24F949084);
    return sub_24F924E28();
  }
}

uint64_t sub_24E925210(char a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221F00, &qword_24F9683D8);
  MEMORY[0x28223BE20](v6);
  v8 = (&v18 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221F08, &qword_24F9683E0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v18 - v10);
  if (a1)
  {
    v12 = v11 + *(v9 + 36);
    *v12 = swift_getKeyPath();
    v12[8] = 0;
    v13 = type metadata accessor for HeroMediaBlurModifier(0);
    v14 = *(v13 + 20);
    *&v12[v14] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
    swift_storeEnumTagMultiPayload();
    v15 = &v12[*(v13 + 24)];
    type metadata accessor for HeroSafeAreaMetrics(0);
    sub_24E92CBAC(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);
    *v15 = sub_24F923598();
    v15[8] = v16 & 1;
    *v11 = a2;
    v11[1] = a3;
    sub_24E60169C(v11, v8, &qword_27F221F08, &qword_24F9683E0);
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2141C0, &qword_24F93C5B0);
    sub_24E92CE34();
    sub_24E602068(&qword_27F2141B8, &qword_27F2141C0, &qword_24F93C5B0, MEMORY[0x277CDF7D8]);
    sub_24F924E28();
    return sub_24E601704(v11, &qword_27F221F08, &qword_24F9683E0);
  }

  else
  {
    *v8 = a2;
    v8[1] = a3;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2141C0, &qword_24F93C5B0);
    sub_24E92CE34();
    sub_24E602068(&qword_27F2141B8, &qword_27F2141C0, &qword_24F93C5B0, MEMORY[0x277CDF7D8]);
    return sub_24F924E28();
  }
}

uint64_t sub_24E925518@<X0>(int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v266 = a5;
  v287 = a4;
  v295 = a2;
  LODWORD(v300) = a1;
  v298 = a6;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221D50, &qword_24F968030);
  MEMORY[0x28223BE20](v239);
  v242 = &v232 - v7;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221D58, &qword_24F968038);
  MEMORY[0x28223BE20](v236);
  v237 = (&v232 - v8);
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221B28, &qword_24F968040);
  MEMORY[0x28223BE20](v240);
  v238 = &v232 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8, &unk_24F94BD70);
  MEMORY[0x28223BE20](v10 - 8);
  v233 = &v232 - v11;
  v12 = type metadata accessor for ColorGroup(0);
  v234 = *(v12 - 8);
  v235 = v12;
  MEMORY[0x28223BE20](v12);
  v232 = &v232 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221B18, &unk_24F967BF0);
  MEMORY[0x28223BE20](v262);
  v241 = &v232 - v14;
  v258 = type metadata accessor for CardContentBackgroundStyle(0);
  MEMORY[0x28223BE20](v258);
  v243 = &v232 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221D60, &qword_24F968048);
  MEMORY[0x28223BE20](v259);
  v261 = &v232 - v16;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221D68, &unk_24F968050);
  MEMORY[0x28223BE20](v248);
  v249 = (&v232 - v17);
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221B08, &qword_24FA37160);
  MEMORY[0x28223BE20](v260);
  v250 = &v232 - v18;
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221AF8, &unk_24F967BE0);
  MEMORY[0x28223BE20](v277);
  v263 = &v232 - v19;
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BD0, &unk_24FA37420);
  MEMORY[0x28223BE20](v280);
  v279 = &v232 - v20;
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221D70, &unk_24F968060);
  MEMORY[0x28223BE20](v276);
  v274 = &v232 - v21;
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221AD8, &unk_24FA37150);
  MEMORY[0x28223BE20](v281);
  v275 = &v232 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221AB8, &unk_24F967BC0);
  MEMORY[0x28223BE20](v23);
  v282 = &v232 - v24;
  v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20, &unk_24F94D670);
  MEMORY[0x28223BE20](v288);
  v265 = &v232 - v25;
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221D78, &unk_24F968070);
  MEMORY[0x28223BE20](v255);
  v256 = (&v232 - v26);
  v27 = type metadata accessor for JSColor(0);
  v28 = *(v27 - 8);
  v246 = v27;
  v247 = v28;
  MEMORY[0x28223BE20](v27);
  v267 = &v232 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v245 = &v232 - v31;
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221AE8, &unk_24F967BD0);
  MEMORY[0x28223BE20](v273);
  v257 = &v232 - v32;
  v271 = type metadata accessor for ArcadeUpsellCardConfiguration.VisualView(0);
  MEMORY[0x28223BE20](v271);
  v253 = (&v232 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221A00, &unk_24F968080);
  MEMORY[0x28223BE20](v269);
  v270 = &v232 - v34;
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221A08, &unk_24F967B60);
  MEMORY[0x28223BE20](v285);
  v272 = &v232 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221A40, &unk_24F968090);
  v251 = *(v36 - 8);
  v252 = v36;
  MEMORY[0x28223BE20](v36);
  v244 = &v232 - v37;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221A28, &unk_24F967B80);
  MEMORY[0x28223BE20](v268);
  v254 = &v232 - v38;
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2219F0, &unk_24F9680A0);
  MEMORY[0x28223BE20](v289);
  v40 = &v232 - v39;
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2219F8, &unk_24F967B50);
  MEMORY[0x28223BE20](v283);
  v284 = &v232 - v41;
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221A10, &unk_24F9680B0);
  MEMORY[0x28223BE20](v290);
  v286 = &v232 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v43 - 8);
  v264 = &v232 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221B30, &qword_24F967C00);
  v297 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v292 = &v232 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8, &unk_24F93C010);
  MEMORY[0x28223BE20](v47 - 8);
  v278 = &v232 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221A18, &unk_24F9680C0);
  MEMORY[0x28223BE20](v49 - 8);
  v296 = &v232 - v50;
  v51 = sub_24F9259C8();
  v52 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v54 = &v232 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v294 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v294);
  v56 = (&v232 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v57);
  v59 = &v232 - v58;
  MEMORY[0x28223BE20](v60);
  v301 = &v232 - v61;
  v299 = a3;
  v62 = a3;
  v293 = v23;
  v291 = v40;
  if (a3 > 2u)
  {
    if (a3 == 3)
    {
      sub_24F4E9558(v287, v56);
      sub_24E92C5CC(v56, v59, type metadata accessor for CardLayoutMetrics);
      sub_24F925898();
      v72 = sub_24F9258E8();

      v73 = v294;
      v74 = v294[20];

      *&v59[v74] = v72;
      *&v59[v73[21]] = 2;
      v75 = sub_24F925A08();
      v76 = v73[27];

      *&v59[v76] = v75;
      *&v59[v73[28]] = 4;
      v63 = v295;
    }

    else if (a3 == 4)
    {
      v63 = v295;
      if (qword_27F2112F0 != -1)
      {
        swift_once();
      }

      v65 = v294;
      v66 = __swift_project_value_buffer(v294, qword_27F39E610);
      sub_24E92CCE0(v66, v59, type metadata accessor for CardLayoutMetrics);
      sub_24F925988();
      sub_24F9258E8();

      (*(v52 + 104))(v54, *MEMORY[0x277CE0A10], v51);
      v67 = sub_24F9259F8();

      (*(v52 + 8))(v54, v51);
      v68 = v65[20];

      *&v59[v68] = v67;
      *&v59[v65[21]] = 4;
      v69 = sub_24F925A08();
      v70 = v65[27];

      *&v59[v70] = v69;
      *&v59[v65[28]] = 4;
    }

    else
    {
      v63 = v295;
      if (qword_27F211308 != -1)
      {
        swift_once();
      }

      v78 = v294;
      v79 = __swift_project_value_buffer(v294, qword_27F39E658);
      sub_24E92CCE0(v79, v59, type metadata accessor for CardLayoutMetrics);
      sub_24F925988();
      sub_24F9258E8();

      (*(v52 + 104))(v54, *MEMORY[0x277CE0A10], v51);
      v80 = sub_24F9259F8();

      (*(v52 + 8))(v54, v51);
      v81 = v78[20];

      *&v59[v81] = v80;
      *&v59[v78[21]] = 3;
      v82 = sub_24F925A18();
      v83 = v78[27];

      *&v59[v83] = v82;
      *&v59[v78[28]] = 4;
    }

    v64 = v300;
  }

  else
  {
    if (a3)
    {
      v63 = v295;
      v64 = v300;
      if (v62 == 1)
      {
        sub_24F4E9E44(v287, v56);
        sub_24E92C5CC(v56, v59, type metadata accessor for CardLayoutMetrics);
        goto LABEL_22;
      }

      if (qword_27F2112F8 != -1)
      {
        swift_once();
      }

      v71 = qword_27F39E628;
    }

    else
    {
      v63 = v295;
      v64 = v300;
      if (qword_27F211300 != -1)
      {
        swift_once();
      }

      v71 = qword_27F39E640;
    }

    v77 = __swift_project_value_buffer(v294, v71);
    sub_24E92CCE0(v77, v59, type metadata accessor for CardLayoutMetrics);
  }

LABEL_22:
  sub_24E92C5CC(v59, v301, type metadata accessor for CardLayoutMetrics);
  if (v64 == 9)
  {
    goto LABEL_32;
  }

  if (v64 == 12)
  {
    if (v299 <= 2u && !v299)
    {

      goto LABEL_32;
    }

    v84 = sub_24F92CE08();

    if (v84)
    {
LABEL_32:
      v295 = v45;
      v85 = type metadata accessor for ArcadeUpsellCard(0);
      v86 = v63 + *(v85 + 32);
      v87 = type metadata accessor for CommonCardAttributes(0);
      v88 = v87;
      v89 = (v86 + *(v87 + 36));
      v90 = *v89;
      v91 = v89[1];
      if (*v89)
      {
        v92 = 1;
      }

      else
      {
        v94 = v89[1];
        v95 = v85;
        v96 = v63;
        v97 = v278;
        sub_24E60169C(v86 + *(v87 + 32), v278, &qword_27F213FB8, &unk_24F93C010);
        v98 = type metadata accessor for GSKVideo(0);
        v99 = (*(*(v98 - 8) + 48))(v97, 1, v98);
        v100 = v97;
        v63 = v96;
        v85 = v95;
        v91 = v94;
        sub_24E601704(v100, &qword_27F213FB8, &unk_24F93C010);
        v92 = 1;
        v101 = v99 == 1;
        v64 = v300;
        if (v101)
        {
          v102 = v264;
          sub_24E60169C(v86 + v88[7], v264, &qword_27F213FB0, &qword_24F93E6B0);
          v103 = sub_24F9289E8();
          v92 = (*(*(v103 - 8) + 48))(v102, 1, v103) != 1;
          v64 = v300;
          sub_24E601704(v102, &qword_27F213FB0, &qword_24F93E6B0);
        }
      }

      if (v64 <= 8u)
      {
        if (v64 != 2)
        {
          if (v64 == 7)
          {
            v157 = (v86 + v88[14]);
            v158 = v157[1];
            if (!v158)
            {
              goto LABEL_76;
            }

            v159 = *v157;
            v160 = HIBYTE(v158) & 0xF;
            if ((v158 & 0x2000000000000000) == 0)
            {
              v160 = v159 & 0xFFFFFFFFFFFFLL;
            }

            if (v160)
            {
              v161 = v301;
              v162 = (v301 + v294[22]);
              v163 = v162[4];
              v288 = v162[3];
              v300 = v163;
              v287 = __swift_project_boxed_opaque_existential_1(v162, v288);
              *&v313 = v159;
              *(&v313 + 1) = v158;
              sub_24E600AEC();

              v164 = sub_24F925E18();
              v166 = v165;
              v168 = v167;
              v169 = sub_24F925C98();
              v171 = v170;
              v173 = v172;
              sub_24E600B40(v164, v166, v168 & 1);

              v174 = sub_24F925C58();
              v176 = v175;
              v178 = v177;
              v180 = v179;
              sub_24E600B40(v169, v171, v173 & 1);

              if (v299 == 4)
              {
                v181 = 0.65;
              }

              else
              {
                v181 = 0.7;
              }

              KeyPath = swift_getKeyPath();
              v183 = *(v161 + v294[21]);
              v184 = swift_getKeyPath();
              LOBYTE(v313) = v178 & 1;
              LOBYTE(v307) = 0;
              *&v302 = v174;
              *(&v302 + 1) = v176;
              LOBYTE(v303) = v178 & 1;
              *(&v303 + 1) = v180;
              *&v304 = KeyPath;
              *(&v304 + 1) = v181;
              *&v305 = v184;
              *(&v305 + 1) = v183;
              v306 = 0;
            }

            else
            {
LABEL_76:
              v306 = 0;
              v304 = 0u;
              v305 = 0u;
              v302 = 0u;
              v303 = 0u;
            }

            v309 = v304;
            v310 = v305;
            v311 = v306;
            v307 = v302;
            v308 = v303;
            v318 = 0;
            v312 = 0;
            sub_24E60169C(&v302, &v313, &qword_27F221A88, &unk_24F967BA0);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221A88, &unk_24F967BA0);
            sub_24E92C2CC(&qword_27F221A80, &qword_27F221A88, &unk_24F967BA0, sub_24E916868);
            sub_24F924E28();
            v195 = v316;
            v196 = v284;
            *(v284 + 32) = v315;
            *(v196 + 48) = v195;
            *(v196 + 64) = v317;
            v197 = v314;
            *v196 = v313;
            *(v196 + 16) = v197;
            swift_storeEnumTagMultiPayload();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221A70, &unk_24F9680D0);
            sub_24E9167B0();
            sub_24E9169D8();
            v198 = v286;
            sub_24F924E28();
            sub_24E60169C(v198, v291, &qword_27F221A10, &unk_24F9680B0);
            swift_storeEnumTagMultiPayload();
            sub_24E916AC0();
            sub_24E916B4C();
            v104 = v292;
            sub_24F924E28();
            sub_24E601704(&v302, &qword_27F221A88, &unk_24F967BA0);
            sub_24E601704(v198, &qword_27F221A10, &unk_24F9680B0);
            goto LABEL_81;
          }

          v104 = v292;
          if (v64 == 8)
          {
            LOBYTE(v302) = 1;
            v312 = 1;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221A88, &unk_24F967BA0);
            sub_24E92C2CC(&qword_27F221A80, &qword_27F221A88, &unk_24F967BA0, sub_24E916868);
            sub_24F924E28();
            v105 = v316;
            v106 = v284;
            *(v284 + 32) = v315;
            *(v106 + 48) = v105;
            *(v106 + 64) = v317;
            v107 = v314;
            *v106 = v313;
            *(v106 + 16) = v107;
            swift_storeEnumTagMultiPayload();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221A70, &unk_24F9680D0);
            sub_24E9167B0();
            sub_24E9169D8();
            v108 = v286;
            sub_24F924E28();
            v109 = &unk_24F9680B0;
            sub_24E60169C(v108, v291, &qword_27F221A10, &unk_24F9680B0);
            swift_storeEnumTagMultiPayload();
            sub_24E916AC0();
            sub_24E916B4C();
            sub_24F924E28();
            v110 = v108;
            v111 = &qword_27F221A10;
LABEL_75:
            sub_24E601704(v110, v111, v109);
            goto LABEL_81;
          }

          goto LABEL_60;
        }

        v121 = v271;
        v122 = v253;
        sub_24E60169C(v86 + v88[8], v253 + *(v271 + 20), &qword_27F213FB8, &unk_24F93C010);
        sub_24E60169C(v86 + v88[7], v122 + v121[6], &qword_27F213FB0, &qword_24F93E6B0);
        *v122 = v90;
        v122[1] = v91;
        *(v122 + v121[7]) = v299;
        v123 = v122 + v121[8];
        type metadata accessor for CardSafeArea(0);
        sub_24E701D04(v90, v91);
        sub_24E92CBAC(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
        *v123 = sub_24F923598();
        v123[8] = v124 & 1;
        sub_24E92CCE0(v122, v270, type metadata accessor for ArcadeUpsellCardConfiguration.VisualView);
        swift_storeEnumTagMultiPayload();
        sub_24E92C2CC(&qword_27F221A30, &qword_27F221A28, &unk_24F967B80, sub_24E9165E0);
        sub_24E92CBAC(&qword_27F221A68, type metadata accessor for ArcadeUpsellCardConfiguration.VisualView, &unk_24F9681B4);
        v125 = v272;
        sub_24F924E28();
        sub_24E60169C(v125, v284, &qword_27F221A08, &unk_24F967B60);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221A70, &unk_24F9680D0);
        sub_24E9167B0();
        sub_24E9169D8();
        v126 = v286;
        sub_24F924E28();
        sub_24E601704(v125, &qword_27F221A08, &unk_24F967B60);
        sub_24E60169C(v126, v291, &qword_27F221A10, &unk_24F9680B0);
        swift_storeEnumTagMultiPayload();
        sub_24E916AC0();
        sub_24E916B4C();
        v104 = v292;
        sub_24F924E28();
        sub_24E601704(v126, &qword_27F221A10, &unk_24F9680B0);
        sub_24E92BA00(v122, type metadata accessor for ArcadeUpsellCardConfiguration.VisualView);
LABEL_81:
        v202 = v297;
        v93 = v296;
        sub_24E6009C8(v104, v296, &qword_27F221B30, &qword_24F967C00);
        (*(v202 + 56))(v93, 0, 1, v295);
        goto LABEL_82;
      }

      if (v64 == 9)
      {
        v127 = (v86 + v88[16]);
        v128 = v127[1];
        if (!v128)
        {
          goto LABEL_73;
        }

        v129 = *v127;
        v130 = HIBYTE(v128) & 0xF;
        if ((v128 & 0x2000000000000000) == 0)
        {
          v130 = v129 & 0xFFFFFFFFFFFFLL;
        }

        if (v130)
        {
          *&v313 = v129;
          *(&v313 + 1) = v128;
          sub_24E600AEC();

          v131 = sub_24F925E18();
          v133 = v132;
          v135 = v134;
          v136 = v294;
          v137 = v301;
          v138 = sub_24F925C98();
          v140 = v139;
          v142 = v141;
          v300 = v143;
          sub_24E600B40(v131, v133, v135 & 1);

          v144 = *(v137 + v136[28]);
          v145 = swift_getKeyPath();
          LODWORD(v131) = sub_24F9251C8();
          LOBYTE(v302) = v142 & 1;
          v318 = 0;
          v146 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221A50, &unk_24F967B90) + 36);
          v147 = *MEMORY[0x277CE13B8];
          v148 = sub_24F927748();
          v149 = v244;
          (*(*(v148 - 8) + 104))(&v244[v146], v147, v148);
          *v149 = v138;
          *(v149 + 8) = v140;
          *(v149 + 16) = v302;
          *(v149 + 17) = v313;
          *(v149 + 20) = *(&v313 + 3);
          *(v149 + 24) = v300;
          *(v149 + 32) = v145;
          *(v149 + 40) = v144;
          *(v149 + 48) = v318;
          *(v149 + 49) = v307;
          *(v149 + 51) = BYTE2(v307);
          *(v149 + 52) = v131;
          v150 = v252;
          *(v149 + *(v252 + 36)) = 256;
          v151 = v254;
          sub_24E6009C8(v149, v254, &qword_27F221A40, &unk_24F968090);
          (*(v251 + 56))(v151, 0, 1, v150);
        }

        else
        {
LABEL_73:
          v151 = v254;
          (*(v251 + 56))(v254, 1, 1, v252);
        }

        v109 = &unk_24F967B80;
        sub_24E60169C(v151, v270, &qword_27F221A28, &unk_24F967B80);
        swift_storeEnumTagMultiPayload();
        sub_24E92C2CC(&qword_27F221A30, &qword_27F221A28, &unk_24F967B80, sub_24E9165E0);
        sub_24E92CBAC(&qword_27F221A68, type metadata accessor for ArcadeUpsellCardConfiguration.VisualView, &unk_24F9681B4);
        v193 = v272;
        sub_24F924E28();
        sub_24E60169C(v193, v284, &qword_27F221A08, &unk_24F967B60);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221A70, &unk_24F9680D0);
        sub_24E9167B0();
        sub_24E9169D8();
        v194 = v286;
        sub_24F924E28();
        sub_24E601704(v193, &qword_27F221A08, &unk_24F967B60);
        sub_24E60169C(v194, v291, &qword_27F221A10, &unk_24F9680B0);
        swift_storeEnumTagMultiPayload();
        sub_24E916AC0();
        sub_24E916B4C();
        v104 = v292;
        sub_24F924E28();
        sub_24E601704(v194, &qword_27F221A10, &unk_24F9680B0);
        v110 = v151;
        v111 = &qword_27F221A28;
        goto LABEL_75;
      }

      v104 = v292;
      if (v64 != 11)
      {
        if (v64 == 12)
        {
          v112 = *(v63 + *(v85 + 36));
          if (v112)
          {
            v113 = MEMORY[0x277D84F90];
            *&v313 = MEMORY[0x277D84F90];
            v114 = *(v112 + 16);
            if (v114)
            {
              v115 = *(v246 + 24);
              v116 = v112 + ((*(v247 + 80) + 32) & ~*(v247 + 80));
              v117 = *(v247 + 72);
              v118 = v245;
              do
              {
                sub_24E92CCE0(v116, v118, type metadata accessor for JSColor);
                v119 = *(v118 + v115);

                v120 = sub_24E92BA00(v118, type metadata accessor for JSColor);
                if (v119)
                {
                  MEMORY[0x253050F00](v120);
                  if (*(v313 + 16) >= *(v313 + 24) >> 1)
                  {
                    sub_24F92B5E8();
                    v104 = v292;
                  }

                  sub_24F92B638();
                  v113 = v313;
                }

                v116 += v117;
                --v114;
              }

              while (v114);
            }

            sub_24F927878();
            sub_24F927898();
            MEMORY[0x25304CD70](v113);
            sub_24F923BD8();
            v190 = v314;
            v191 = v256;
            *v256 = v313;
            v191[1] = v190;
            *(v191 + 4) = v315;
            swift_storeEnumTagMultiPayload();
            sub_24E86BC28();
            sub_24E92C2CC(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
            v192 = v257;
            sub_24F924E28();
          }

          else
          {
            v199 = v265;
            sub_24E918D88(0xC, v63, v299, v287, v266, type metadata accessor for ArcadeUpsellCard, v265);
            sub_24E60169C(v199, v256, &qword_27F214A20, &unk_24F94D670);
            swift_storeEnumTagMultiPayload();
            sub_24E86BC28();
            sub_24E92C2CC(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
            v192 = v257;
            sub_24F924E28();
            sub_24E601704(v199, &qword_27F214A20, &unk_24F94D670);
          }

          sub_24E60169C(v192, v274, &qword_27F221AE8, &unk_24F967BD0);
          swift_storeEnumTagMultiPayload();
          sub_24E916C90();
          sub_24E916EC0();
          v200 = v275;
          sub_24F924E28();
          sub_24E60169C(v200, v279, &qword_27F221AD8, &unk_24FA37150);
          swift_storeEnumTagMultiPayload();
          sub_24E916C04();
          sub_24E92C2CC(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
          v201 = v282;
          sub_24F924E28();
          sub_24E601704(v200, &qword_27F221AD8, &unk_24FA37150);
          sub_24E60169C(v201, v291, &qword_27F221AB8, &unk_24F967BC0);
          swift_storeEnumTagMultiPayload();
          sub_24E916AC0();
          sub_24E916B4C();
          sub_24F924E28();
          sub_24E601704(v201, &qword_27F221AB8, &unk_24F967BC0);
          v154 = v192;
          v155 = &qword_27F221AE8;
          v156 = &unk_24F967BD0;
          goto LABEL_80;
        }

LABEL_60:
        v152 = v265;
        sub_24E918D88(v64, v63, v299, v287, v266, type metadata accessor for ArcadeUpsellCard, v265);
        sub_24E60169C(v152, v279, &qword_27F214A20, &unk_24F94D670);
        swift_storeEnumTagMultiPayload();
        sub_24E916C04();
        sub_24E92C2CC(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
        v153 = v282;
        sub_24F924E28();
        sub_24E60169C(v153, v291, &qword_27F221AB8, &unk_24F967BC0);
        swift_storeEnumTagMultiPayload();
        sub_24E916AC0();
        sub_24E916B4C();
        sub_24F924E28();
        sub_24E601704(v153, &qword_27F221AB8, &unk_24F967BC0);
        v154 = v152;
        v155 = &qword_27F214A20;
        v156 = &unk_24F94D670;
LABEL_80:
        sub_24E601704(v154, v155, v156);
        goto LABEL_81;
      }

      if (((1 << v299) & 0x2D) != 0)
      {
        *v249 = sub_24F926C98();
        swift_storeEnumTagMultiPayload();
        sub_24E92CBAC(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);

        v185 = v250;
        sub_24F924E28();
        sub_24E60169C(v185, v261, &qword_27F221B08, &qword_24FA37160);
        swift_storeEnumTagMultiPayload();
        sub_24E916F4C();
        sub_24E917008();
        v186 = v263;
        sub_24F924E28();

        sub_24E601704(v185, &qword_27F221B08, &qword_24FA37160);
LABEL_71:
        sub_24E60169C(v186, v274, &qword_27F221AF8, &unk_24F967BE0);
        swift_storeEnumTagMultiPayload();
        sub_24E916C90();
        sub_24E916EC0();
        v187 = v186;
        v188 = v275;
        sub_24F924E28();
        sub_24E60169C(v188, v279, &qword_27F221AD8, &unk_24FA37150);
        swift_storeEnumTagMultiPayload();
        sub_24E916C04();
        sub_24E92C2CC(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
        v189 = v282;
        sub_24F924E28();
        sub_24E601704(v188, &qword_27F221AD8, &unk_24FA37150);
        sub_24E60169C(v189, v291, &qword_27F221AB8, &unk_24F967BC0);
        swift_storeEnumTagMultiPayload();
        sub_24E916AC0();
        sub_24E916B4C();
        sub_24F924E28();
        sub_24E601704(v189, &qword_27F221AB8, &unk_24F967BC0);
        sub_24E601704(v187, &qword_27F221AF8, &unk_24F967BE0);
        goto LABEL_81;
      }

      if (v299 == 1)
      {
        v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
        v205 = v243;
        (*(*(v204 - 8) + 56))(v243, 2, 5, v204);
        sub_24E92CCE0(v205, v249, type metadata accessor for CardContentBackgroundStyle);
        swift_storeEnumTagMultiPayload();
        sub_24E92CBAC(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
        v206 = v250;
        sub_24F924E28();
        sub_24E60169C(v206, v261, &qword_27F221B08, &qword_24FA37160);
        swift_storeEnumTagMultiPayload();
        sub_24E916F4C();
        sub_24E917008();
        v186 = v263;
        sub_24F924E28();
        sub_24E601704(v206, &qword_27F221B08, &qword_24FA37160);
        sub_24E92BA00(v205, type metadata accessor for CardContentBackgroundStyle);
        goto LABEL_71;
      }

      if (v92)
      {
        v207 = v233;
        sub_24E9288A4(v63, v233);
        v209 = v234;
        v208 = v235;
        if ((*(v234 + 48))(v207, 1, v235) != 1)
        {
          v227 = v232;
          sub_24E92C5CC(v207, v232, type metadata accessor for ColorGroup);
          v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
          v229 = *(v228 + 48);
          v230 = v243;
          sub_24E92CCE0(v227, v243, type metadata accessor for ColorGroup);
          (*(v209 + 56))(v230, 0, 1, v208);
          *(v230 + v229) = 1;
          (*(*(v228 - 8) + 56))(v230, 0, 5, v228);
          sub_24E92CCE0(v230, v237, type metadata accessor for CardContentBackgroundStyle);
          swift_storeEnumTagMultiPayload();
          sub_24E92CBAC(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
          sub_24E86BC28();
          v231 = v238;
          sub_24F924E28();
          sub_24E60169C(v231, v242, &qword_27F221B28, &qword_24F968040);
          swift_storeEnumTagMultiPayload();
          sub_24E92B93C(&qword_27F221B20, &qword_27F221B28, &qword_24F968040, sub_24E86BC28);
          v222 = v241;
          sub_24F924E28();
          sub_24E601704(v231, &qword_27F221B28, &qword_24F968040);
          sub_24E92BA00(v230, type metadata accessor for CardContentBackgroundStyle);
          v225 = type metadata accessor for ColorGroup;
          v226 = v227;
          goto LABEL_99;
        }

        sub_24E601704(v207, &qword_27F2190D8, &unk_24F94BD70);
      }

      v210 = *(v63 + *(v85 + 36));
      if (v210)
      {
        v211 = MEMORY[0x277D84F90];
        *&v313 = MEMORY[0x277D84F90];
        v212 = *(v210 + 16);
        v186 = v263;
        if (v212)
        {
          v213 = *(v246 + 24);
          v214 = v210 + ((*(v247 + 80) + 32) & ~*(v247 + 80));
          v215 = *(v247 + 72);
          v216 = v267;
          do
          {
            sub_24E92CCE0(v214, v216, type metadata accessor for JSColor);
            v217 = *(v216 + v213);

            v218 = sub_24E92BA00(v216, type metadata accessor for JSColor);
            if (v217)
            {
              MEMORY[0x253050F00](v218);
              if (*(v313 + 16) >= *(v313 + 24) >> 1)
              {
                sub_24F92B5E8();
                v104 = v292;
              }

              sub_24F92B638();
              v211 = v313;
            }

            v214 += v215;
            --v212;
          }

          while (v212);
        }

        sub_24F927878();
        sub_24F927898();
        MEMORY[0x25304CD70](v211);
        sub_24F923BD8();
        v219 = v314;
        v220 = v237;
        *v237 = v313;
        v220[1] = v219;
        *(v220 + 4) = v315;
        swift_storeEnumTagMultiPayload();
        sub_24E92CBAC(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
        sub_24E86BC28();
        v221 = v238;
        sub_24F924E28();
        sub_24E60169C(v221, v242, &qword_27F221B28, &qword_24F968040);
        swift_storeEnumTagMultiPayload();
        sub_24E92B93C(&qword_27F221B20, &qword_27F221B28, &qword_24F968040, sub_24E86BC28);
        v222 = v241;
        sub_24F924E28();
        sub_24E601704(v221, &qword_27F221B28, &qword_24F968040);
        goto LABEL_100;
      }

      v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
      v224 = v243;
      (*(*(v223 - 8) + 56))(v243, 4, 5, v223);
      sub_24E92CCE0(v224, v242, type metadata accessor for CardContentBackgroundStyle);
      swift_storeEnumTagMultiPayload();
      sub_24E92B93C(&qword_27F221B20, &qword_27F221B28, &qword_24F968040, sub_24E86BC28);
      sub_24E92CBAC(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
      v222 = v241;
      sub_24F924E28();
      v225 = type metadata accessor for CardContentBackgroundStyle;
      v226 = v224;
LABEL_99:
      sub_24E92BA00(v226, v225);
      v186 = v263;
LABEL_100:
      sub_24E60169C(v222, v261, &qword_27F221B18, &unk_24F967BF0);
      swift_storeEnumTagMultiPayload();
      sub_24E916F4C();
      sub_24E917008();
      sub_24F924E28();
      sub_24E601704(v222, &qword_27F221B18, &unk_24F967BF0);
      goto LABEL_71;
    }
  }

  else if (sub_24E92BA60(v64, v63, v299))
  {
    goto LABEL_32;
  }

  v93 = v296;
  (*(v297 + 56))(v296, 1, 1, v45);
LABEL_82:
  sub_24E6009C8(v93, v298, &qword_27F221A18, &unk_24F9680C0);
  return sub_24E92BA00(v301, type metadata accessor for CardLayoutMetrics);
}

void sub_24E9283A4(unsigned __int8 a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_24F9259C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v10);
  v13 = (&v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        sub_24F4E9E44(a2, v13);
LABEL_18:
        sub_24E92C5CC(v13, a3, type metadata accessor for CardLayoutMetrics);
        return;
      }

      if (qword_27F2112F8 != -1)
      {
        v36 = v11;
        swift_once();
        v11 = v36;
      }

      v20 = qword_27F39E628;
    }

    else
    {
      if (qword_27F211300 != -1)
      {
        v34 = v11;
        swift_once();
        v11 = v34;
      }

      v20 = qword_27F39E640;
    }

    v27 = __swift_project_value_buffer(v11, v20);
    sub_24E92CCE0(v27, v13, type metadata accessor for CardLayoutMetrics);
    goto LABEL_18;
  }

  if (a1 == 3)
  {
    v21 = v11;
    sub_24F4E9558(a2, v13);
    sub_24E92C5CC(v13, a3, type metadata accessor for CardLayoutMetrics);
    sub_24F925898();
    v22 = sub_24F9258E8();

    v23 = v21[20];

    *(a3 + v23) = v22;
    *(a3 + v21[21]) = 2;
    v24 = sub_24F925A08();
    v25 = v21[27];

    *(a3 + v25) = v24;
    v26 = v21[28];
LABEL_22:
    *(a3 + v26) = 4;
    return;
  }

  if (a1 != 4)
  {
    if (qword_27F211308 != -1)
    {
      v37 = v11;
      swift_once();
      v11 = v37;
    }

    v28 = v11;
    v29 = __swift_project_value_buffer(v11, qword_27F39E658);
    sub_24E92CCE0(v29, v13, type metadata accessor for CardLayoutMetrics);
    sub_24E92C5CC(v13, a3, type metadata accessor for CardLayoutMetrics);
    sub_24F925988();
    sub_24F9258E8();

    (*(v7 + 104))(v9, *MEMORY[0x277CE0A10], v6);
    v30 = sub_24F9259F8();

    (*(v7 + 8))(v9, v6);
    v31 = v28[20];

    *(a3 + v31) = v30;
    *(a3 + v28[21]) = 3;
    v32 = sub_24F925A18();
    v33 = v28[27];

    *(a3 + v33) = v32;
    v26 = v28[28];
    goto LABEL_22;
  }

  if (qword_27F2112F0 != -1)
  {
    v35 = v11;
    swift_once();
    v11 = v35;
  }

  v14 = v11;
  v15 = __swift_project_value_buffer(v11, qword_27F39E610);
  sub_24E92CCE0(v15, v13, type metadata accessor for CardLayoutMetrics);
  sub_24E92C5CC(v13, a3, type metadata accessor for CardLayoutMetrics);
  sub_24F925988();
  sub_24F9258E8();

  (*(v7 + 104))(v9, *MEMORY[0x277CE0A10], v6);
  v16 = sub_24F9259F8();

  (*(v7 + 8))(v9, v6);
  v17 = v14[20];

  *(a3 + v17) = v16;
  *(a3 + v14[21]) = 4;
  v18 = sub_24F925A08();
  v19 = v14[27];

  *(a3 + v19) = v18;
  *(a3 + v14[28]) = 4;
}

uint64_t sub_24E9288A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v3 - 8);
  v77 = &v72 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8, &unk_24F93C010);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v72 - v6;
  v80 = type metadata accessor for GSKVideo(0);
  v8 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v76 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v73 = &v72 - v11;
  v12 = sub_24F9289E8();
  v78 = *(v12 - 8);
  v79 = v12;
  MEMORY[0x28223BE20](v12);
  v75 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v72 = &v72 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8, &unk_24F94BD70);
  MEMORY[0x28223BE20](v16 - 8);
  v74 = &v72 - v17;
  v18 = type metadata accessor for MixedMediaItem.ContentType(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v72 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v72 - v26;
  v28 = a1 + *(type metadata accessor for ArcadeUpsellCard(0) + 32);
  v29 = type metadata accessor for CommonCardAttributes(0);
  v30 = (v28 + v29[9]);
  if (*v30)
  {
    v31 = v30[1];
    if (*(v31 + 16))
    {
      v32 = sub_24E76DCB8(0);
      if (v33)
      {
        sub_24E92CCE0(*(v31 + 56) + *(v19 + 72) * v32, v24, type metadata accessor for MixedMediaItem.ContentType);
        sub_24E92C5CC(v24, v27, type metadata accessor for MixedMediaItem.ContentType);
        sub_24E92CCE0(v27, v21, type metadata accessor for MixedMediaItem.ContentType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v34 = v73;
          sub_24E92C5CC(v21, v73, type metadata accessor for GSKVideo);
          v35 = sub_24F9289A8();
          v36 = v74;
          if (v35)
          {
            v37 = qword_27F20FEE0;
            v38 = v35;
            if (v37 != -1)
            {
              v70 = v38;
              swift_once();
              v38 = v70;
            }

            v39 = v38;
            v40 = sub_24F926BD8();
            ColorGrouping.colorGroup(for:)(v40);

            sub_24E92BA00(v34, type metadata accessor for GSKVideo);
LABEL_25:
            sub_24E92BA00(v27, type metadata accessor for MixedMediaItem.ContentType);
            return sub_24E6009C8(v36, v81, &qword_27F2190D8, &unk_24F94BD70);
          }

          sub_24E92BA00(v34, type metadata accessor for GSKVideo);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F219128, &qword_24F94BDF0);

          v59 = v78;
          v58 = v79;
          v60 = v72;
          (*(v78 + 32))(v72, v21, v79);
          v61 = sub_24F9289A8();
          v36 = v74;
          if (v61)
          {
            v62 = qword_27F20FEE0;
            v63 = v61;
            if (v62 != -1)
            {
              v71 = v63;
              swift_once();
              v63 = v71;
            }

            v64 = v63;
            v65 = sub_24F926BD8();
            ColorGrouping.colorGroup(for:)(v65);

            (*(v59 + 8))(v60, v58);
            goto LABEL_25;
          }

          (*(v59 + 8))(v60, v58);
        }

        sub_24E92BA00(v27, type metadata accessor for MixedMediaItem.ContentType);
        v67 = type metadata accessor for ColorGroup(0);
        (*(*(v67 - 8) + 56))(v36, 1, 1, v67);
        return sub_24E6009C8(v36, v81, &qword_27F2190D8, &unk_24F94BD70);
      }
    }
  }

  sub_24E60169C(v28 + v29[8], v7, &qword_27F213FB8, &unk_24F93C010);
  if ((*(v8 + 48))(v7, 1, v80) == 1)
  {
    sub_24E601704(v7, &qword_27F213FB8, &unk_24F93C010);
    v41 = v77;
    sub_24E60169C(v28 + v29[7], v77, &qword_27F213FB0, &qword_24F93E6B0);
    v43 = v78;
    v42 = v79;
    if ((*(v78 + 48))(v41, 1, v79) == 1)
    {
      sub_24E601704(v41, &qword_27F213FB0, &qword_24F93E6B0);
LABEL_27:
      v66 = type metadata accessor for ColorGroup(0);
      return (*(*(v66 - 8) + 56))(v81, 1, 1, v66);
    }

    v52 = v75;
    (*(v43 + 32))(v75, v41, v42);
    v53 = sub_24F9289A8();
    if (!v53)
    {
      (*(v43 + 8))(v52, v42);
      goto LABEL_27;
    }

    v54 = qword_27F20FEE0;
    v55 = v53;
    if (v54 != -1)
    {
      v69 = v55;
      swift_once();
      v55 = v69;
    }

    v56 = v55;
    v57 = sub_24F926BD8();
    ColorGrouping.colorGroup(for:)(v57);

    return (*(v43 + 8))(v52, v42);
  }

  else
  {
    v44 = v7;
    v45 = v76;
    sub_24E92C5CC(v44, v76, type metadata accessor for GSKVideo);
    v46 = sub_24F9289A8();
    if (!v46)
    {
      sub_24E92BA00(v45, type metadata accessor for GSKVideo);
      goto LABEL_27;
    }

    v47 = qword_27F20FEE0;
    v48 = v46;
    if (v47 != -1)
    {
      v68 = v48;
      swift_once();
      v48 = v68;
    }

    v49 = v48;
    v50 = sub_24F926BD8();
    ColorGrouping.colorGroup(for:)(v50);

    return sub_24E92BA00(v45, type metadata accessor for GSKVideo);
  }
}

uint64_t sub_24E929200@<X0>(uint64_t a1@<X8>)
{
  v212 = a1;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DF8, &qword_24F968208);
  MEMORY[0x28223BE20](v173);
  v175 = &v166 - v2;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2192E8, &unk_24F94BFF0);
  MEMORY[0x28223BE20](v174);
  v171 = &v166 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148, &qword_24F93C520);
  v169 = *(v4 - 8);
  v5 = *(v169 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v168 = &v166 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v166 = &v166 - v7;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2191F8, &unk_24F950190);
  MEMORY[0x28223BE20](v170);
  v183 = &v166 - v8;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219200, &qword_24F94BF20);
  MEMORY[0x28223BE20](v210);
  v172 = &v166 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v10 - 8);
  v189 = &v166 - v11;
  v191 = sub_24F9289E8();
  v184 = *(v191 - 8);
  v12 = *(v184 + 64);
  MEMORY[0x28223BE20](v191);
  v167 = &v166 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v182 = &v166 - v14;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221E00, &qword_24F968210);
  MEMORY[0x28223BE20](v185);
  v181 = &v166 - v15;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2192A8, &unk_24F94BFE0);
  MEMORY[0x28223BE20](v177);
  v176 = &v166 - v16;
  v188 = type metadata accessor for GSKVideoView(0);
  MEMORY[0x28223BE20](v188);
  v190 = &v166 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219218, &unk_24F9501A0);
  MEMORY[0x28223BE20](v178);
  v179 = &v166 - v18;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219220, &unk_24F94BF40);
  MEMORY[0x28223BE20](v180);
  v192 = &v166 - v19;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219228, &qword_24F9501B0);
  MEMORY[0x28223BE20](v206);
  v21 = &v166 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8, &unk_24F93C010);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v166 - v23;
  v25 = type metadata accessor for GSKVideo(0);
  v187 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = (&v166 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221E08, &qword_24F968218);
  MEMORY[0x28223BE20](v208);
  v207 = &v166 - v28;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B0C0, &qword_24F9501C0);
  MEMORY[0x28223BE20](v203);
  v204 = &v166 - v29;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B0C8, &unk_24F9501C8);
  MEMORY[0x28223BE20](v209);
  v205 = &v166 - v30;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221E10, &qword_24F968220);
  MEMORY[0x28223BE20](v199);
  v201 = &v166 - v31;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219398, &qword_24F94C038);
  MEMORY[0x28223BE20](v200);
  v186 = &v166 - v32;
  v195 = sub_24F924848();
  v194 = *(v195 - 8);
  MEMORY[0x28223BE20](v195);
  v193 = &v166 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for CardElementView.PrimaryMixedMediaView(0);
  MEMORY[0x28223BE20](v34);
  v36 = &v166 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219230, &qword_24F94BF50);
  MEMORY[0x28223BE20](v196);
  v197 = &v166 - v37;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219238, &qword_24F94BF58);
  MEMORY[0x28223BE20](v198);
  v211 = (&v166 - v38);
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219240, &qword_24F94BF60);
  MEMORY[0x28223BE20](v202);
  v40 = &v166 - v39;
  v41 = *v1;
  if (!*v1)
  {
    v50 = v188;
    v51 = v189;
    v199 = v12;
    v200 = v5;
    v211 = v27;
    v201 = v21;
    v52 = type metadata accessor for ArcadeUpsellCardConfiguration.VisualView(0);
    sub_24E60169C(v1 + v52[5], v24, &qword_27F213FB8, &unk_24F93C010);
    v53 = v1;
    if ((*(v187 + 48))(v24, 1, v25) == 1)
    {
      sub_24E601704(v24, &qword_27F213FB8, &unk_24F93C010);
      v54 = v51;
      sub_24E60169C(v1 + v52[6], v51, &qword_27F213FB0, &qword_24F93E6B0);
      v55 = v184;
      v56 = v51;
      v57 = v191;
      if ((*(v184 + 48))(v56, 1, v191) == 1)
      {
        sub_24E601704(v54, &qword_27F213FB0, &qword_24F93E6B0);
        v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221E18, &qword_24F968228);
        return (*(*(v58 - 8) + 56))(v212, 1, 1, v58);
      }

      v211 = *(v55 + 32);
      v85 = v182;
      (v211)(v182, v54, v57);
      v86 = sub_24F922348();
      v87 = v166;
      (*(*(v86 - 8) + 56))(v166, 1, 1, v86);
      v88 = v1;
      v206 = *MEMORY[0x277CEE240];
      v89 = v55 + 16;
      v90 = v167;
      (*(v55 + 16))(v167, v85, v57);
      v91 = v168;
      sub_24E6009C8(v87, v168, &qword_27F214148, &qword_24F93C520);
      v92 = (*(v89 + 64) + 16) & ~*(v89 + 64);
      v93 = (v199 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
      v94 = (*(v169 + 80) + v93 + 8) & ~*(v169 + 80);
      v95 = v94 + v200;
      v96 = swift_allocObject();
      (v211)(v96 + v92, v90, v191);
      v97 = v206;
      *(v96 + v93) = v206;
      sub_24E6009C8(v91, v96 + v94, &qword_27F214148, &qword_24F93C520);
      v98 = v96;
      *(v96 + v95) = 1;
      v99 = v88 + v52[8];
      v100 = *v99;
      LOBYTE(v95) = v99[8];
      v101 = v97;

      v102 = v52;
      if ((v95 & 1) == 0)
      {
        sub_24F92BDC8();
        v103 = sub_24F9257A8();
        sub_24F921FD8();

        v104 = v193;
        sub_24F924838();
        swift_getAtKeyPath();

        (*(v194 + 8))(v104, v195);
        v100 = v217[0];
      }

      swift_getKeyPath();
      v217[0] = v100;
      sub_24E92CBAC(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
      sub_24F91FD88();

      v105 = *(v100 + 16);

      v106 = *(v88 + v52[7]);
      v107 = v172;
      v108 = v171;
      if (*(v88 + v102[7]) > 2u)
      {
        v109 = v212;
        if (v106 == 3)
        {

          v132 = sub_24F925868();
          goto LABEL_64;
        }
      }

      else
      {
        v109 = v212;
      }

      v133 = sub_24F92CE08();

      if (v133)
      {
        v132 = sub_24F925868();
        goto LABEL_64;
      }

      if (v106 > 4)
      {
      }

      else
      {
        v152 = sub_24F92CE08();

        if ((v152 & 1) == 0)
        {
          v132 = sub_24F925818();
          goto LABEL_64;
        }
      }

      v132 = sub_24F925808();
LABEL_64:
      v153 = sub_24EA91914(v132, v105);
      v155 = v154;
      v157 = v156;
      v159 = v158;
      v160 = sub_24F925808();
      if (v106 > 4)
      {
        v161 = 1;
      }

      else
      {
        v161 = sub_24F92CE08();
      }

      v216 = 0;
      v217[0] = sub_24E623C20;
      v217[1] = v98;
      v218 = v160;
      v219 = *&v153;
      v220 = v155;
      v221 = v157;
      v222 = v159;
      v223 = 0;
      sub_24E92463C(v161 & 1);

      if (v106 > 2)
      {
        v162 = v175;
        if (v106 != 3 && v106 != 4)
        {

          v214 = sub_24F925048();
          v215 = MEMORY[0x277CE0420];
          __swift_allocate_boxed_opaque_existential_1(&v213);
          sub_24F925258();
          v163 = v174;
          goto LABEL_76;
        }
      }

      else
      {
        v162 = v175;
      }

      v163 = v174;
      v164 = sub_24F92CE08();

      v214 = sub_24F925048();
      v215 = MEMORY[0x277CE0420];
      __swift_allocate_boxed_opaque_existential_1(&v213);
      sub_24F925258();
      if ((v164 & 1) == 0)
      {
        v165 = v183;
        sub_24E60169C(v183, v162, &qword_27F2191F8, &unk_24F950190);
        swift_storeEnumTagMultiPayload();
        sub_24E7030D0();
        sub_24E70315C();
        sub_24F924E28();
LABEL_77:
        sub_24E601704(v165, &qword_27F2191F8, &unk_24F950190);
        __swift_destroy_boxed_opaque_existential_1(&v213);
        sub_24E60169C(v107, v207, &qword_27F219200, &qword_24F94BF20);
        swift_storeEnumTagMultiPayload();
        sub_24E74642C();
        sub_24E703044();
        sub_24F924E28();
        sub_24E601704(v107, &qword_27F219200, &qword_24F94BF20);
        (*(v184 + 8))(v182, v191);
        v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221E18, &qword_24F968228);
        v150 = *(*(v149 - 8) + 56);
        v151 = v109;
        return v150(v151, 0, 1, v149);
      }

LABEL_76:
      sub_24E615E00(&v213, v108 + *(v163 + 36));
      v165 = v183;
      sub_24E60169C(v183, v108, &qword_27F2191F8, &unk_24F950190);
      sub_24E60169C(v108, v162, &qword_27F2192E8, &unk_24F94BFF0);
      swift_storeEnumTagMultiPayload();
      sub_24E7030D0();
      sub_24E70315C();
      sub_24F924E28();
      sub_24E601704(v108, &qword_27F2192E8, &unk_24F94BFF0);
      goto LABEL_77;
    }

    v65 = v211;
    sub_24E92C5CC(v24, v211, type metadata accessor for GSKVideo);
    v66 = v190;
    sub_24E92CCE0(v65, v190, type metadata accessor for GSKVideo);
    v67 = v50[5];
    v68 = type metadata accessor for VideoConfiguration(0);
    (*(*(v68 - 8) + 56))(v66 + v67, 1, 1, v68);
    v69 = sub_24F9238D8();
    v70 = (v66 + v50[12]);
    type metadata accessor for GSKVideoPlaybackCoordinator(0);
    sub_24E92CBAC(&qword_27F2141F0, type metadata accessor for GSKVideoPlaybackCoordinator, &unk_24F95FAB8);
    *v70 = sub_24F9243D8();
    v70[1] = v71;
    *(v66 + v50[9]) = 1;
    *(v66 + v50[10]) = v69;
    *(v66 + v50[11]) = 0;
    *(v66 + v50[6]) = 0x3FE8000000000000;
    *(v66 + v50[7]) = 0x3FE0000000000000;
    v72 = v66 + v50[8];
    *(v72 + 32) = 0u;
    *(v72 + 48) = 0u;
    *v72 = 0u;
    *(v72 + 16) = 0u;
    *(v72 + 64) = 5;
    v73 = v1 + v52[8];
    v74 = *v73;
    LOBYTE(v69) = v73[8];

    if ((v69 & 1) == 0)
    {
      sub_24F92BDC8();
      v75 = sub_24F9257A8();
      sub_24F921FD8();

      v76 = v193;
      sub_24F924838();
      swift_getAtKeyPath();

      (*(v194 + 8))(v76, v195);
      v74 = v217[0];
    }

    swift_getKeyPath();
    v217[0] = v74;
    sub_24E92CBAC(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
    sub_24F91FD88();

    v77 = *(v74 + 16);

    v78 = *(v53 + v52[7]);
    v79 = v212;
    v80 = v201;
    v81 = v192;
    if (v78 > 2)
    {
      v82 = v177;
      if (v78 == 3)
      {

        v128 = v181;
        v129 = v179;
        goto LABEL_42;
      }
    }

    else
    {
      v82 = v177;
    }

    v128 = v181;
    v129 = v179;
    v130 = sub_24F92CE08();

    if ((v130 & 1) == 0)
    {
      if (v78 > 4)
      {
      }

      else
      {
        v134 = sub_24F92CE08();

        if ((v134 & 1) == 0)
        {
          v131 = sub_24F925818();
          goto LABEL_52;
        }
      }

      v131 = sub_24F925808();
LABEL_52:
      v135 = sub_24EA91914(v131, v77);
      v137 = v136;
      v139 = v138;
      v141 = v140;
      v142 = sub_24F925808();
      sub_24E92C5CC(v190, v129, type metadata accessor for GSKVideoView);
      v143 = v129 + *(v178 + 36);
      *v143 = v142;
      *(v143 + 8) = v135;
      *(v143 + 16) = v137;
      *(v143 + 24) = v139;
      *(v143 + 32) = v141;
      *(v143 + 40) = 0;
      if (v78 > 4)
      {

        sub_24E924370(1);
        sub_24E601704(v129, &qword_27F219218, &unk_24F9501A0);

        v219 = sub_24F925048();
        v220 = MEMORY[0x277CE0420];
        __swift_allocate_boxed_opaque_existential_1(v217);
        sub_24F925258();
      }

      else
      {
        v144 = sub_24F92CE08();

        sub_24E924370(v144 & 1);
        sub_24E601704(v129, &qword_27F219218, &unk_24F9501A0);
        v145 = sub_24F92CE08();

        v219 = sub_24F925048();
        v220 = MEMORY[0x277CE0420];
        __swift_allocate_boxed_opaque_existential_1(v217);
        sub_24F925258();
        if ((v145 & 1) == 0)
        {
          sub_24E60169C(v81, v128, &qword_27F219220, &unk_24F94BF40);
          swift_storeEnumTagMultiPayload();
          sub_24E702E44();
          sub_24E702ED0();
          sub_24F924E28();
LABEL_57:
          sub_24E601704(v81, &qword_27F219220, &unk_24F94BF40);
          __swift_destroy_boxed_opaque_existential_1(v217);
          sub_24E60169C(v80, v204, &qword_27F219228, &qword_24F9501B0);
          swift_storeEnumTagMultiPayload();
          sub_24E70388C();
          sub_24E702DB8();
          v148 = v205;
          sub_24F924E28();
          sub_24E60169C(v148, v207, &qword_27F21B0C8, &unk_24F9501C8);
          swift_storeEnumTagMultiPayload();
          sub_24E74642C();
          sub_24E703044();
          sub_24F924E28();
          sub_24E601704(v148, &qword_27F21B0C8, &unk_24F9501C8);
          sub_24E601704(v80, &qword_27F219228, &qword_24F9501B0);
          sub_24E92BA00(v211, type metadata accessor for GSKVideo);
          goto LABEL_58;
        }
      }

      v146 = v176;
      sub_24E615E00(v217, &v176[*(v82 + 36)]);
      sub_24E60169C(v192, v146, &qword_27F219220, &unk_24F94BF40);
      sub_24E60169C(v146, v128, &qword_27F2192A8, &unk_24F94BFE0);
      swift_storeEnumTagMultiPayload();
      sub_24E702E44();
      sub_24E702ED0();
      sub_24F924E28();
      v147 = v146;
      v81 = v192;
      sub_24E601704(v147, &qword_27F2192A8, &unk_24F94BFE0);
      goto LABEL_57;
    }

LABEL_42:
    v131 = sub_24F925868();
    goto LABEL_52;
  }

  v192 = v40;
  v42 = v1;
  v43 = v1[1];
  v44 = type metadata accessor for ArcadeUpsellCardConfiguration.VisualView(0);
  v45 = *(v42 + *(v44 + 28));
  *v36 = v41;
  *(v36 + 1) = v43;
  v36[16] = v45;
  v46 = v34[6];
  *&v36[v46] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  v47 = v34[7];
  *&v36[v47] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v48 = &v36[v34[8]];
  *v48 = swift_getKeyPath();
  v48[8] = 0;
  v49 = v42 + *(v44 + 32);
  if (v49[8] == 1)
  {
    v217[0] = *v49;
    sub_24E701D04(v41, v43);
  }

  else
  {
    sub_24E701D04(v41, v43);

    sub_24F92BDC8();
    v60 = sub_24F9257A8();
    sub_24F921FD8();

    v61 = v193;
    sub_24F924838();
    swift_getAtKeyPath();

    (*(v194 + 8))(v61, v195);
  }

  v62 = v211;
  v63 = v217[0];
  swift_getKeyPath();
  v217[0] = v63;
  sub_24E92CBAC(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
  sub_24F91FD88();

  v64 = *(v63 + 16);

  if (v45 == 3)
  {

    v83 = sub_24F925868();
    goto LABEL_32;
  }

  v84 = sub_24F92CE08();

  if (v84)
  {
    v83 = sub_24F925868();
    goto LABEL_32;
  }

  if (v45 <= 2 || v45 == 4)
  {
    v110 = sub_24F92CE08();

    if ((v110 & 1) == 0)
    {
      v83 = sub_24F925818();
      goto LABEL_32;
    }
  }

  else
  {
  }

  v83 = sub_24F925808();
LABEL_32:
  v111 = sub_24EA91914(v83, v64);
  v113 = v112;
  v115 = v114;
  v117 = v116;
  v118 = sub_24F925808();
  v119 = v36;
  v120 = v197;
  sub_24E92C5CC(v119, v197, type metadata accessor for CardElementView.PrimaryMixedMediaView);
  v121 = v120 + *(v196 + 36);
  *v121 = v118;
  *(v121 + 8) = v111;
  *(v121 + 16) = v113;
  *(v121 + 24) = v115;
  *(v121 + 32) = v117;
  *(v121 + 40) = 0;
  if (v45 > 4)
  {

    sub_24E9240A4(1);
    sub_24E601704(v120, &qword_27F219230, &qword_24F94BF50);

    v219 = sub_24F925048();
    v220 = MEMORY[0x277CE0420];
    __swift_allocate_boxed_opaque_existential_1(v217);
    sub_24F925258();
    v79 = v212;
    v123 = v207;
    goto LABEL_36;
  }

  v122 = sub_24F92CE08();

  sub_24E9240A4(v122 & 1);
  sub_24E601704(v120, &qword_27F219230, &qword_24F94BF50);
  v79 = v212;
  v123 = v207;
  v124 = sub_24F92CE08();

  v219 = sub_24F925048();
  v220 = MEMORY[0x277CE0420];
  __swift_allocate_boxed_opaque_existential_1(v217);
  sub_24F925258();
  if (v124)
  {
LABEL_36:
    v126 = v186;
    sub_24E615E00(v217, &v186[*(v200 + 36)]);
    sub_24E60169C(v62, v126, &qword_27F219238, &qword_24F94BF58);
    sub_24E60169C(v126, v201, &qword_27F219398, &qword_24F94C038);
    swift_storeEnumTagMultiPayload();
    sub_24E703918();
    sub_24E7039A4();
    v125 = v192;
    v62 = v211;
    sub_24F924E28();
    sub_24E601704(v126, &qword_27F219398, &qword_24F94C038);
    goto LABEL_37;
  }

  sub_24E60169C(v62, v201, &qword_27F219238, &qword_24F94BF58);
  swift_storeEnumTagMultiPayload();
  sub_24E703918();
  sub_24E7039A4();
  v125 = v192;
  sub_24F924E28();
LABEL_37:
  sub_24E601704(v62, &qword_27F219238, &qword_24F94BF58);
  __swift_destroy_boxed_opaque_existential_1(v217);
  sub_24E60169C(v125, v204, &qword_27F219240, &qword_24F94BF60);
  swift_storeEnumTagMultiPayload();
  sub_24E70388C();
  sub_24E702DB8();
  v127 = v205;
  sub_24F924E28();
  sub_24E60169C(v127, v123, &qword_27F21B0C8, &unk_24F9501C8);
  swift_storeEnumTagMultiPayload();
  sub_24E74642C();
  sub_24E703044();
  sub_24F924E28();
  sub_24E601704(v127, &qword_27F21B0C8, &unk_24F9501C8);
  sub_24E601704(v125, &qword_27F219240, &qword_24F94BF60);
LABEL_58:
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221E18, &qword_24F968228);
  v150 = *(*(v149 - 8) + 56);
  v151 = v79;
  return v150(v151, 0, 1, v149);
}

uint64_t type metadata accessor for ArcadeUpsellCardConfiguration.VisualView(uint64_t a1)
{
  result = qword_27F221DD8;
  if (!qword_27F221DD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E92B93C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_24E92CBAC(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E92BA00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E92BA60(unsigned __int8 a1, uint64_t a2, unsigned __int8 a3)
{
  if (a1 > 8u)
  {
    if (a1 <= 0xBu)
    {
      if (a1 != 9)
      {
        if (a1 == 10)
        {
          if (a3 != 2)
          {
            v6 = sub_24F92CE08();

            return v6 & 1;
          }

          goto LABEL_11;
        }

        if (a3 > 2u)
        {
          v4 = a3;
        }

        else
        {
          if (!a3)
          {
            goto LABEL_23;
          }

          v4 = a3;
        }

        v5 = sub_24F92CE08();

        if ((v5 & 1) == 0)
        {
          if (v4 <= 4u)
          {
            goto LABEL_25;
          }

          goto LABEL_23;
        }
      }

      v3 = 0;
      return v3 & 1;
    }

LABEL_11:
    v3 = 1;
    return v3 & 1;
  }

  if (a1 > 2u || !a1)
  {
    goto LABEL_11;
  }

  if (a1 != 1)
  {
    if (a3)
    {
LABEL_25:
      v8 = sub_24F92CE08();

      v3 = v8 ^ 1;
      return v3 & 1;
    }

LABEL_23:

    v3 = 0;
    return v3 & 1;
  }

  v3 = a3 > 2u;
  return v3 & 1;
}

uint64_t sub_24E92BDF0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8, &unk_24F93C010);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_24E92BF4C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8, &unk_24F93C010);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24E92C088(uint64_t a1)
{
  sub_24E92C1D4();
  if (v1 <= 0x3F)
  {
    sub_24E92C224(319, &qword_27F213FD8, type metadata accessor for GSKVideo, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_24E92C224(319, &qword_27F213FD0, MEMORY[0x277D21C48], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_24E92C224(319, &qword_27F214D30, type metadata accessor for CardSafeArea, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24E92C1D4()
{
  if (!qword_27F2191D0)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F2191D0);
    }
  }
}

void sub_24E92C224(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24E92C2CC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_24E92C348()
{
  result = qword_27F221DF0;
  if (!qword_27F221DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221B30, &qword_24F967C00);
    sub_24E916AC0();
    sub_24E916B4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221DF0);
  }

  return result;
}

uint64_t sub_24E92C3F0()
{
  v1 = sub_24F9289E8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148, &qword_24F93C520) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  (*(v2 + 8))(v0 + v3, v1);

  v7 = sub_24F922348();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_24E92C5CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24E92C644()
{
  result = qword_27F221E50;
  if (!qword_27F221E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221E40, &qword_24F968370);
    sub_24E92C700();
    sub_24E92CBAC(&qword_27F2192D0, type metadata accessor for HeroMediaBlurModifier, &unk_24F9B5F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221E50);
  }

  return result;
}

unint64_t sub_24E92C700()
{
  result = qword_27F221E58;
  if (!qword_27F221E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221E48, &qword_24F968378);
    sub_24E92C7B8();
    sub_24E602068(&qword_27F221EC0, &qword_27F221EC8, &qword_24F9683B0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221E58);
  }

  return result;
}

unint64_t sub_24E92C7B8()
{
  result = qword_27F221E60;
  if (!qword_27F221E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221E68, &qword_24F968380);
    sub_24E92C844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221E60);
  }

  return result;
}

unint64_t sub_24E92C844()
{
  result = qword_27F221E70;
  if (!qword_27F221E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221E78, &qword_24F968388);
    sub_24E92C8C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221E70);
  }

  return result;
}

unint64_t sub_24E92C8C8()
{
  result = qword_27F221E80;
  if (!qword_27F221E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221E88, &qword_24F968390);
    sub_24E92C94C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221E80);
  }

  return result;
}

unint64_t sub_24E92C94C()
{
  result = qword_27F221E90;
  if (!qword_27F221E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221E98, &qword_24F968398);
    sub_24E92C9D8();
    sub_24E92CAC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221E90);
  }

  return result;
}

unint64_t sub_24E92C9D8()
{
  result = qword_27F221EA0;
  if (!qword_27F221EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221EA8, &qword_24F9683A0);
    sub_24E92CBAC(&qword_27F214C28, MEMORY[0x277D21C48], MEMORY[0x277D7EEB8]);
    sub_24E92CBAC(&qword_27F2193C0, type metadata accessor for CardElementView.PrimaryMixedMediaView, &unk_24FA04A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221EA0);
  }

  return result;
}

unint64_t sub_24E92CAC4()
{
  result = qword_27F221EB0;
  if (!qword_27F221EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221EB8, &qword_24F9683A8);
    sub_24E92CBAC(&qword_27F219ED8, type metadata accessor for CardCompactAvatarView, &unk_24F9B7498);
    sub_24E602068(&qword_27F2141B8, &qword_27F2141C0, &qword_24F93C5B0, MEMORY[0x277CDF7D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221EB0);
  }

  return result;
}

uint64_t sub_24E92CBAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24E92CBF4()
{
  result = qword_27F221EE0;
  if (!qword_27F221EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221ED8, &qword_24F9683C0);
    sub_24E92CBAC(&qword_27F2193C0, type metadata accessor for CardElementView.PrimaryMixedMediaView, &unk_24FA04A98);
    sub_24E92CBAC(&qword_27F2192D0, type metadata accessor for HeroMediaBlurModifier, &unk_24F9B5F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221EE0);
  }

  return result;
}

uint64_t sub_24E92CCE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24E92CD48()
{
  result = qword_27F221EF8;
  if (!qword_27F221EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221EF0, &qword_24F9683D0);
    sub_24E92CBAC(&qword_27F2141D8, type metadata accessor for GSKVideoView, &unk_24F949084);
    sub_24E92CBAC(&qword_27F2192D0, type metadata accessor for HeroMediaBlurModifier, &unk_24F9B5F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221EF8);
  }

  return result;
}

unint64_t sub_24E92CE34()
{
  result = qword_27F221F10;
  if (!qword_27F221F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221F08, &qword_24F9683E0);
    sub_24E602068(&qword_27F2141B8, &qword_27F2141C0, &qword_24F93C5B0, MEMORY[0x277CDF7D8]);
    sub_24E92CBAC(&qword_27F2192D0, type metadata accessor for HeroMediaBlurModifier, &unk_24F9B5F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221F10);
  }

  return result;
}

unint64_t sub_24E92CF20()
{
  result = qword_27F221F18;
  if (!qword_27F221F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221F20, &qword_24F9683E8);
    sub_24E92CFA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221F18);
  }

  return result;
}

unint64_t sub_24E92CFA4()
{
  result = qword_27F221F28;
  if (!qword_27F221F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221E18, &qword_24F968228);
    sub_24E74642C();
    sub_24E703044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221F28);
  }

  return result;
}

uint64_t sub_24E92D048(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for GameSource(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for Player(0);
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
      if (*(*(v14 - 8) + 84) != a2)
      {
        v16 = *(a1 + a3[7]);
        if (v16 >= 2)
        {
          return ((v16 + 2147483646) & 0x7FFFFFFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      v8 = v14;
      v12 = *(v14 - 8);
      v13 = a3[6];
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_24E92D1CC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for GameSource(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for Player(0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = a2 + 1;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for FriendsPlayingPageIntent(uint64_t a1)
{
  result = qword_27F221F30;
  if (!qword_27F221F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E92D374(uint64_t a1)
{
  type metadata accessor for GameSource(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Player(319);
    if (v2 <= 0x3F)
    {
      sub_24E7D231C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24E92D418@<X0>(void *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93FC20;
  *(inited + 32) = 0x72756F53656D6167;
  *(inited + 40) = 0xEA00000000006563;
  *(inited + 72) = type metadata accessor for GameSource(0);
  *(inited + 80) = sub_24E92E1C8(&qword_27F221F68, type metadata accessor for GameSource, &protocol conformance descriptor for GameSource);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E92E160(v2, boxed_opaque_existential_1, type metadata accessor for GameSource);
  *(inited + 88) = 0x726579616C70;
  *(inited + 96) = 0xE600000000000000;
  v6 = type metadata accessor for FriendsPlayingPageIntent(0);
  v7 = v6[5];
  *(inited + 128) = type metadata accessor for Player(0);
  *(inited + 136) = sub_24E92E1C8(&qword_27F215388, type metadata accessor for Player, &protocol conformance descriptor for Player);
  v8 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E92E160(v2 + v7, v8, type metadata accessor for Player);
  *(inited + 144) = 0x756F72676B636162;
  *(inited + 152) = 0xEA0000000000646ELL;
  v9 = v6[6];
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  *(inited + 192) = sub_24E7D17FC();
  v10 = __swift_allocate_boxed_opaque_existential_1((inited + 160));
  sub_24E7D14D8(v2 + v9, v10);
  *(inited + 200) = 0xD000000000000010;
  *(inited + 208) = 0x800000024FA46670;
  v11 = *(v2 + v6[7]);
  v12 = MEMORY[0x277D22598];
  *(inited + 240) = MEMORY[0x277D839B0];
  *(inited + 248) = v12;
  *(inited + 216) = v11;
  v13 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v14 = sub_24E80FFAC(v13);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v14;
  return result;
}

uint64_t sub_24E92D6B4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221F58, &unk_24F9684F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E92E044();
  sub_24F92D128();
  v8[15] = 0;
  type metadata accessor for GameSource(0);
  sub_24E92E1C8(&qword_27F221F60, type metadata accessor for GameSource, &protocol conformance descriptor for GameSource);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for FriendsPlayingPageIntent(0);
    v8[14] = 1;
    type metadata accessor for Player(0);
    sub_24E92E1C8(&qword_27F213E28, type metadata accessor for Player, &protocol conformance descriptor for Player);
    sub_24F92CD48();
    v8[13] = 2;
    type metadata accessor for Page.Background(0);
    sub_24E92E1C8(&qword_27F21D920, type metadata accessor for Page.Background, &protocol conformance descriptor for Page.Background);
    sub_24F92CCF8();
    v8[12] = 3;
    sub_24F92CD18();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24E92D958@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  MEMORY[0x28223BE20](v3 - 8);
  v23 = &v22 - v4;
  v24 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v24);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GameSource(0);
  MEMORY[0x28223BE20](v7);
  v25 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221F40, &qword_24F9684E8);
  v26 = *(v9 - 8);
  v27 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = type metadata accessor for FriendsPlayingPageIntent(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E92E044();
  v28 = v11;
  v15 = v29;
  sub_24F92D108();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v14;
  v33 = 0;
  sub_24E92E1C8(&qword_27F221F50, type metadata accessor for GameSource, &protocol conformance descriptor for GameSource);
  v17 = v25;
  sub_24F92CC68();
  v18 = v16;
  sub_24E92E098(v17, v16, type metadata accessor for GameSource);
  v32 = 1;
  sub_24E92E1C8(&qword_27F213E38, type metadata accessor for Player, &protocol conformance descriptor for Player);
  sub_24F92CC68();
  sub_24E92E098(v6, v16 + v12[5], type metadata accessor for Player);
  type metadata accessor for Page.Background(0);
  v31 = 2;
  sub_24E92E1C8(&qword_27F21D930, type metadata accessor for Page.Background, &protocol conformance descriptor for Page.Background);
  v19 = v23;
  sub_24F92CC18();
  sub_24E7DF71C(v19, v18 + v12[6]);
  v30 = 3;
  v20 = sub_24F92CC38();
  (*(v26 + 8))(v28, v27);
  *(v18 + v12[7]) = v20 & 1;
  sub_24E92E160(v18, v22, type metadata accessor for FriendsPlayingPageIntent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24E92E100(v18, type metadata accessor for FriendsPlayingPageIntent);
}

unint64_t sub_24E92DEBC()
{
  v1 = 0x72756F53656D6167;
  v2 = 0x756F72676B636162;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x726579616C70;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24E92DF3C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24E92E328(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24E92DF64(uint64_t a1)
{
  v2 = sub_24E92E044();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E92DFA0(uint64_t a1)
{
  v2 = sub_24E92E044();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24E92E044()
{
  result = qword_27F221F48;
  if (!qword_27F221F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221F48);
  }

  return result;
}

uint64_t sub_24E92E098(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E92E100(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E92E160(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E92E1C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24E92E224()
{
  result = qword_27F221F70;
  if (!qword_27F221F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221F70);
  }

  return result;
}

unint64_t sub_24E92E27C()
{
  result = qword_27F221F78;
  if (!qword_27F221F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221F78);
  }

  return result;
}

unint64_t sub_24E92E2D4()
{
  result = qword_27F221F80;
  if (!qword_27F221F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221F80);
  }

  return result;
}

uint64_t sub_24E92E328(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x72756F53656D6167 && a2 == 0xEA00000000006563 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA46670 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_24F92CE08();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t InAppPurchaseSearchResultLayout.init(metrics:inAppPurchaseText:titleText:subtitleText:offerButton:inAppPurchaseIcon:inAppPurchaseDescription:inAppPurchaseBackgroundView:)@<X0>(double *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>)
{
  v17 = type metadata accessor for InAppPurchaseSearchResultLayout(0);
  sub_24E92E5E8(a1, a9 + *(v17 + 44));
  sub_24E615E00(a2, a9);
  sub_24E615E00(a3, a9 + 40);
  sub_24E615E00(a4, a9 + 80);
  __swift_project_boxed_opaque_existential_1(a5, a5[3]);
  sub_24F922268();
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  sub_24E92E66C(a1);
  sub_24E612C80(a6, a9 + 160);
  sub_24E612C80(a7, a9 + 200);
  sub_24E612C80(a8, a9 + 240);

  return __swift_destroy_boxed_opaque_existential_1(a5);
}

uint64_t sub_24E92E5E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InAppPurchaseSearchResultLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E92E66C(uint64_t a1)
{
  v2 = type metadata accessor for InAppPurchaseSearchResultLayout.Metrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t InAppPurchaseSearchResultLayout.Metrics.init(offerButtonSize:offerButtonMargin:inAppPurchaseTextSpace:titleTextSpace:subtitleTextSpace:descriptionTextSpace:detailsBottomMargin:accessibilityDetailsBottomMargin:preferredMainArtworkWidth:regularLockupAreaAspectRatio:compactLockupAreaAspectRatio:regularBodySideEdgeInsetPercentage:regularBodyHorizontalComponentSpacingPercentage:compactBodySideEdgeInsetPercentage:compactBodyHorizontalComponentSpacingPercentage:inAppIconBottomMargin:bodyVerticalPadding:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, double *a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, uint64_t a13, __int128 *a14, __int128 *a15, __int128 *a16, __int128 *a17, __int128 *a18, __int128 *a19)
{
  *a9 = a10;
  a9[1] = a11;
  sub_24E612C80(a1, (a9 + 2));
  sub_24E612C80(a2, (a9 + 7));
  sub_24E612C80(a3, (a9 + 12));
  sub_24E612C80(a4, (a9 + 17));
  sub_24E612C80(a5, (a9 + 22));
  sub_24E612C80(a6, (a9 + 27));
  sub_24E612C80(a7, (a9 + 32));
  sub_24E612C80(a8, (a9 + 37));
  v27 = type metadata accessor for InAppPurchaseSearchResultLayout.Metrics(0);
  v28 = v27[13];
  v29 = sub_24F922348();
  v30 = *(*(v29 - 8) + 32);
  v30(a9 + v28, a12, v29);
  v30(a9 + v27[14], a13, v29);
  sub_24E612C80(a14, a9 + v27[15]);
  sub_24E612C80(a15, a9 + v27[16]);
  sub_24E612C80(a16, a9 + v27[17]);
  sub_24E612C80(a17, a9 + v27[18]);
  sub_24E612C80(a18, a9 + v27[19]);
  v31 = a9 + v27[20];

  return sub_24E612C80(a19, v31);
}

uint64_t InAppPurchaseSearchResultLayout.Metrics.offerButtonMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));

  return sub_24E612C80(a1, v1 + 16);
}

uint64_t InAppPurchaseSearchResultLayout.Metrics.inAppPurchaseTextSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 56));

  return sub_24E612C80(a1, v1 + 56);
}

uint64_t InAppPurchaseSearchResultLayout.Metrics.titleTextSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 96));

  return sub_24E612C80(a1, v1 + 96);
}

uint64_t InAppPurchaseSearchResultLayout.Metrics.subtitleTextSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 136));

  return sub_24E612C80(a1, v1 + 136);
}

uint64_t InAppPurchaseSearchResultLayout.Metrics.descriptionTextSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 176));

  return sub_24E612C80(a1, v1 + 176);
}

uint64_t InAppPurchaseSearchResultLayout.Metrics.detailsBottomMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 216));

  return sub_24E612C80(a1, v1 + 216);
}

uint64_t InAppPurchaseSearchResultLayout.Metrics.accessibilityDetailsBottomMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 256));

  return sub_24E612C80(a1, v1 + 256);
}

uint64_t InAppPurchaseSearchResultLayout.Metrics.preferredMainArtworkWidth.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 296));

  return sub_24E612C80(a1, v1 + 296);
}

uint64_t InAppPurchaseSearchResultLayout.Metrics.regularLockupAreaAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InAppPurchaseSearchResultLayout.Metrics(0) + 52);
  v4 = sub_24F922348();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InAppPurchaseSearchResultLayout.Metrics.regularLockupAreaAspectRatio.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InAppPurchaseSearchResultLayout.Metrics(0) + 52);
  v4 = sub_24F922348();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InAppPurchaseSearchResultLayout.Metrics.compactLockupAreaAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InAppPurchaseSearchResultLayout.Metrics(0) + 56);
  v4 = sub_24F922348();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InAppPurchaseSearchResultLayout.Metrics.compactLockupAreaAspectRatio.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InAppPurchaseSearchResultLayout.Metrics(0) + 56);
  v4 = sub_24F922348();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InAppPurchaseSearchResultLayout.Metrics.regularBodySideEdgeInsetPercentage.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for InAppPurchaseSearchResultLayout.Metrics(0) + 60);
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));

  return sub_24E612C80(a1, v1 + v3);
}

uint64_t InAppPurchaseSearchResultLayout.Metrics.regularBodyHorizontalComponentSpacingPercentage.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for InAppPurchaseSearchResultLayout.Metrics(0) + 64);
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));

  return sub_24E612C80(a1, v1 + v3);
}

uint64_t InAppPurchaseSearchResultLayout.Metrics.compactBodySideEdgeInsetPercentage.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for InAppPurchaseSearchResultLayout.Metrics(0) + 68);
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));

  return sub_24E612C80(a1, v1 + v3);
}

uint64_t InAppPurchaseSearchResultLayout.Metrics.compactBodyHorizontalComponentSpacingPercentage.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for InAppPurchaseSearchResultLayout.Metrics(0) + 72);
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));

  return sub_24E612C80(a1, v1 + v3);
}

uint64_t InAppPurchaseSearchResultLayout.Metrics.inAppIconBottomMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for InAppPurchaseSearchResultLayout.Metrics(0) + 76);
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));

  return sub_24E612C80(a1, v1 + v3);
}

uint64_t InAppPurchaseSearchResultLayout.Metrics.bodyVerticalPadding.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for InAppPurchaseSearchResultLayout.Metrics(0) + 80);
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));

  return sub_24E612C80(a1, v1 + v3);
}

uint64_t sub_24E92F528(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InAppPurchaseSearchResultLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t InAppPurchaseSearchResultLayout.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for InAppPurchaseSearchResultLayout(0) + 44);

  return sub_24E92E5E8(v3, a1);
}

uint64_t InAppPurchaseSearchResultLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v201 = a2;
  v11 = sub_24F922348();
  v191 = *(v11 - 8);
  v192 = v11;
  MEMORY[0x28223BE20](v11);
  v190 = &v183 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_24F922938();
  v184 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v185 = &v183 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v183 = &v183 - v15;
  v16 = sub_24F922998();
  v188 = *(v16 - 8);
  v189 = v16;
  MEMORY[0x28223BE20](v16);
  v187 = &v183 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = sub_24F92CDB8();
  v216 = *(v221 - 8);
  MEMORY[0x28223BE20](v221);
  *&v220 = &v183 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24F9221D8();
  v203 = *(v19 - 8);
  v204 = v19;
  MEMORY[0x28223BE20](v19);
  v202 = &v183 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24F9227F8();
  v222 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v183 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = COERCE_DOUBLE(sub_24F922838());
  v223 = *(*&v214 - 8);
  MEMORY[0x28223BE20](*&v214);
  v25 = &v183 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_24F922868();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v183 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = v29;
  v30 = sub_24F922888();
  v205 = *(v30 - 8);
  v206 = v30;
  *&v31 = MEMORY[0x28223BE20](v30).n128_u64[0];
  v219 = &v183 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = [a1 traitCollection];
  LODWORD(v215) = sub_24F92BF98();

  v226 = a3;
  v240.origin.x = a3;
  v228 = a4;
  v240.origin.y = a4;
  v240.size.width = a5;
  v224 = a6;
  v240.size.height = a6;
  Width = CGRectGetWidth(v240);
  v217 = a1;
  v35 = [a1 traitCollection];
  v200 = [v35 horizontalSizeClass];

  (*(v27 + 104))(v29, *MEMORY[0x277D22868], v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235740, &unk_24F965BC0);
  v36 = *(sub_24F922848() - 8);
  v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v195 = *(v36 + 72);
  v196 = 2 * v195;
  v38 = swift_allocObject();
  v198 = v38;
  *(v38 + 16) = xmmword_24F9479A0;
  v207 = v38 + v37;
  v39 = v225[3];
  v40 = v225[4];
  v41 = v225;
  v42 = __swift_project_boxed_opaque_existential_1(v225, v39);
  v238 = v39;
  v239 = *(v40 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v237);
  (*(*(v39 - 8) + 16))(boxed_opaque_existential_1, v42, v39);
  *&v227 = v41 + *(type metadata accessor for InAppPurchaseSearchResultLayout(0) + 44);
  LODWORD(v213) = *MEMORY[0x277D22848];
  v44 = v223;
  v45 = *(*&v223 + 104);
  v211 = *&v223 + 104;
  v212 = v45;
  v46 = v214;
  v45(v25);
  *&v234 = MEMORY[0x277D84F90];
  v210 = sub_24E931580(&qword_27F22B210, MEMORY[0x277D22838], MEMORY[0x277D22840]);
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235750, &qword_24F98AA50);
  v208 = sub_24E8EF568();
  sub_24F92C6A8();
  v47 = v25;
  v48 = v23;
  sub_24F922818();
  v49 = *(*&v222 + 8);
  *&v222 += 8;
  v49(v23, v21);
  v193 = *(*&v44 + 8);
  v194 = v49;
  *&v223 = *&v44 + 8;
  v50 = v25;
  v51 = v46;
  v193(v50, *&v46);
  __swift_destroy_boxed_opaque_existential_1(v237);
  v52 = v225;
  v53 = v225[8];
  v54 = v225[9];
  v55 = __swift_project_boxed_opaque_existential_1(v225 + 5, v53);
  v238 = v53;
  v239 = *(v54 + 8);
  v56 = __swift_allocate_boxed_opaque_existential_1(v237);
  (*(*(v53 - 8) + 16))(v56, v55, v53);
  v212(v47, v213, *&v51);
  *&v234 = MEMORY[0x277D84F90];
  sub_24F92C6A8();
  sub_24F922818();
  v49(v48, v21);
  v57 = v193;
  v193(v47, *&v51);
  __swift_destroy_boxed_opaque_existential_1(v237);
  v58 = v52[13];
  v59 = v52[14];
  v60 = __swift_project_boxed_opaque_existential_1(v52 + 10, v58);
  v238 = v58;
  v239 = *(v59 + 8);
  v61 = __swift_allocate_boxed_opaque_existential_1(v237);
  (*(*(v58 - 8) + 16))(v61, v60, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B260, &qword_24F965BD0);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_24F93DE60;
  sub_24F9227E8();
  *&v234 = v62;
  sub_24F92C6A8();
  v63 = v214;
  v212(v47, v213, *&v214);
  sub_24F922818();
  v57(v47, *&v63);
  v64 = v21;
  v65 = v219;
  v194(v48, v64);
  __swift_destroy_boxed_opaque_existential_1(v237);
  v66 = sub_24F922418();
  v67 = MEMORY[0x277D226F0];
  v238 = v66;
  v239 = MEMORY[0x277D226F0];
  __swift_allocate_boxed_opaque_existential_1(v237);
  sub_24F922408();
  sub_24F922878();
  __swift_project_boxed_opaque_existential_1(v52 + 5, v52[8]);
  sub_24F922478();
  __swift_project_boxed_opaque_existential_1(v52 + 5, v52[8]);
  sub_24F922458();
  __swift_project_boxed_opaque_existential_1(v52 + 10, v52[13]);
  sub_24F922478();
  __swift_project_boxed_opaque_existential_1(v52 + 10, v52[13]);
  sub_24F922458();
  v218 = Width;
  v213 = v66;
  if (LOBYTE(v215))
  {
    v68 = v202;
    v69 = v226;
    v70 = v228;
    v71 = v224;
    sub_24F9227D8();
    sub_24F922158();
    v73 = v72;
    (*(v203 + 8))(v68, v204);
    v74 = v227;
    v75 = *(*&v227 + 280);
    __swift_project_boxed_opaque_existential_1((*&v227 + 256), v75);
    v76 = v220;
    sub_24E8ED7D8(v75);
    v77 = sub_24F9223A8();
    v78 = *(*&v216 + 8);
    v79 = v221;
    v78(*&v76, v221);
    v80 = v73 + v77;
    v223 = v80;
    v241.origin.x = v69;
    v241.origin.y = v70;
    v241.size.width = a5;
    v241.size.height = v71;
    MinX = CGRectGetMinX(v241);
    v242.origin.x = v69;
    v242.origin.y = v70;
    v242.size.width = Width;
    v242.size.height = v80;
    MaxY = CGRectGetMaxY(v242);
    v83 = a5;
    v84 = MaxY;
    v85 = v83;
    v86 = **&v74;
    v87 = *(*&v74 + 8);
    __swift_project_boxed_opaque_existential_1(v225 + 15, v225[18]);
    sub_24F92C1D8();
    sub_24F922228();
    v243.origin.x = MinX;
    v243.origin.y = v84;
    v243.size.width = v86;
    a5 = v85;
    v88 = v218;
    v243.size.height = v87;
    v89 = v223 + CGRectGetHeight(v243);
    v90 = *(*&v74 + 280);
    __swift_project_boxed_opaque_existential_1((*&v74 + 256), v90);
    sub_24E8ED7D8(v90);
    v91 = sub_24F9223A8();
    v222 = *&v78;
    v78(*&v76, v79);
    v92 = v89 + v91;
  }

  else
  {
    v93 = v206;
    sub_24F922288();
    v238 = v93;
    v239 = MEMORY[0x277D22878];
    v94 = __swift_allocate_boxed_opaque_existential_1(v237);
    (*(v205 + 16))(v94, v65, v93);
    v236 = 0;
    v234 = 0u;
    v235 = 0u;
    *(&v232 + 1) = v66;
    v233 = v67;
    __swift_allocate_boxed_opaque_existential_1(&v231);
    sub_24F922408();
    v95 = v225;
    sub_24E615E00((v225 + 15), &v230);
    v96 = v227;
    sub_24E615E00(*&v227 + 16, &v229);
    v97 = *(v184 + 104);
    v98 = v186;
    v97(v183, *MEMORY[0x277D228C0], v186);
    v97(v185, *MEMORY[0x277D228C8], v98);
    v99 = v187;
    sub_24F922978();
    v100 = v202;
    sub_24F922958();
    sub_24F922158();
    v102 = v101;
    (*(v203 + 8))(v100, v204);
    v103 = v102 + 0.0;
    v104 = *(*&v96 + 240);
    __swift_project_boxed_opaque_existential_1((*&v96 + 216), v104);
    v105 = v220;
    sub_24E8ED7D8(v104);
    v106 = sub_24F9223A8();
    v222 = *(*&v216 + 8);
    (*&v222)(*&v105, v221);
    __swift_project_boxed_opaque_existential_1(v95 + 15, v95[18]);
    v107 = sub_24F922208();
    v92 = v103 + v106;
    *(v108 + 24) = v103 + v106;
    v107(v237, 0);
    (*(v188 + 8))(v99, v189);
    v88 = Width;
  }

  v109 = type metadata accessor for InAppPurchaseSearchResultLayout.Metrics(0);
  v110 = v109;
  v111 = v200;
  v112 = 60;
  if (v200 == 1)
  {
    v112 = 68;
    v113 = 72;
  }

  else
  {
    v113 = 64;
  }

  v114 = v227;
  __swift_project_boxed_opaque_existential_1((*&v227 + *(v109 + v112)), *(*&v227 + *(v109 + v112) + 24));
  sub_24F922388();
  v214 = v115;
  __swift_project_boxed_opaque_existential_1((*&v114 + *(v110 + v113)), *(*&v114 + *(v110 + v113) + 24));
  sub_24F922388();
  v212 = v116;
  v117 = *(*&v114 + 320);
  __swift_project_boxed_opaque_existential_1((*&v114 + 296), v117);
  v118 = v220;
  sub_24E8ED7D8(v117);
  v119 = sub_24F9223A8();
  (*&v222)(*&v118, v221);
  v120 = floor(v119 / 30.0);
  v121 = v120 * 4.0 + v120 * 4.0;
  if (v119 >= 30.0)
  {
    v122 = v121;
  }

  else
  {
    v122 = 8.0;
  }

  v123 = v226;
  v244.origin.x = v226;
  v124 = v228;
  v244.origin.y = v228;
  v125 = a5;
  v244.size.width = a5;
  v244.size.height = v224;
  Height = CGRectGetHeight(v244);
  v245.origin.x = v123;
  v245.origin.y = v124;
  v245.size.width = v88;
  v245.size.height = v92;
  v127 = Height - CGRectGetHeight(v245);
  v223 = v92;
  v197 = v125;
  if (LOBYTE(v215))
  {
    v128 = v88;
    v129 = v127;
    v130 = v226;
    v246.origin.x = v226;
    v131 = v228;
    v246.origin.y = v228;
    v246.size.width = v125;
    v132 = v224;
    v246.size.height = v224;
    v133 = CGRectGetMinX(v246);
    v215 = v133;
    v247.origin.x = v130;
    v247.origin.y = v131;
    v247.size.width = v128;
    v247.size.height = v92;
    v134 = CGRectGetMaxY(v247);
    v248.origin.x = v130;
    v248.origin.y = v131;
    v248.size.width = v125;
    v248.size.height = v132;
    v135 = CGRectGetWidth(v248);
    v249.origin.x = v133;
    v249.origin.y = v134;
    v249.size.width = v135;
    v249.size.height = v129;
    CGRectGetWidth(v249);
    v136 = (*&v227 + *(v110 + 80));
    v137 = v136[3];
    __swift_project_boxed_opaque_existential_1(v136, v137);
    v138 = v220;
    sub_24E8ED7D8(v137);
    v216 = sub_24F9223A8();
    v139 = v221;
    v140 = v222;
    (*&v222)(*&v138, v221);
    v141 = v136[3];
    __swift_project_boxed_opaque_existential_1(v136, v141);
    sub_24E8ED7D8(v141);
    v214 = sub_24F9223A8();
    (*&v140)(*&v138, v139);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213C50, &unk_24F9AFC90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93A400;
    v143 = v213;
    v238 = v213;
    v239 = MEMORY[0x277D226F0];
    __swift_allocate_boxed_opaque_existential_1(v237);
    sub_24F922408();
    v144 = (*&v227 + *(v110 + 76));
    v145 = v144[3];
    __swift_project_boxed_opaque_existential_1(v144, v145);
    sub_24E8ED7D8(v145);
    v146 = sub_24F9223A8();
    (*&v140)(*&v138, v139);
    *(&v235 + 1) = MEMORY[0x277D85048];
    v236 = MEMORY[0x277D225F8];
    *&v234 = v146;
    v147 = v225;
    sub_24E615E00((v225 + 20), inited + 32);
    sub_24E615E00(v237, inited + 80);
    sub_24E930DFC(&v234, inited + 120);
    *(inited + 72) = 1;
    *(inited + 160) = 8;
    sub_24E930E6C(&v234);
    __swift_destroy_boxed_opaque_existential_1(v237);
    v148 = v147[28];
    v149 = v147[29];
    v150 = __swift_project_boxed_opaque_existential_1(v147 + 25, v148);
    v238 = v148;
    v239 = *(v149 + 8);
    v151 = __swift_allocate_boxed_opaque_existential_1(v237);
    (*(*(v148 - 8) + 16))(v151, v150, v148);
    *(&v235 + 1) = v143;
    v236 = MEMORY[0x277D226F0];
    __swift_allocate_boxed_opaque_existential_1(&v234);
    sub_24F922408();
    v233 = 0;
    v231 = 0u;
    v232 = 0u;
    sub_24E615E00(v237, inited + 168);
    sub_24E615E00(&v234, inited + 216);
    sub_24E930DFC(&v231, inited + 256);
    *(inited + 208) = 1;
    *(inited + 296) = 8;
    sub_24E930E6C(&v231);
    __swift_destroy_boxed_opaque_existential_1(&v234);
    __swift_destroy_boxed_opaque_existential_1(v237);
    LOBYTE(v237[0]) = 1;
    v237[1] = inited;
    sub_24F92C1C8();
    v152 = v202;
    _VerticalFlowLayout.placeChildren(relativeTo:in:)(v202, v153, v154, v155, v156);
    (*(v203 + 8))(v152, v204);

    __swift_project_boxed_opaque_existential_1(v147 + 30, v147[33]);
    sub_24F92C1D8();
    sub_24F922228();
  }

  else
  {
    v157 = v125;
    v220 = v119 + v122;
    v159 = v190;
    v158 = v191;
    v160 = 52;
    if (v111 == 1)
    {
      v160 = 56;
    }

    v161 = v192;
    (*(v191 + 16))(v190, *&v227 + *(v110 + v160), v192);
    v162 = v127;
    sub_24F9222F8();
    v164 = v163;
    v165 = v226;
    v250.origin.x = v226;
    v166 = v228;
    v250.origin.y = v228;
    v250.size.width = v125;
    v167 = v224;
    v250.size.height = v224;
    CGRectGetWidth(v250);
    sub_24F922308();
    v169 = v168;
    v251.origin.x = v165;
    v251.origin.y = v166;
    v170 = v157;
    v251.size.width = v157;
    v251.size.height = v167;
    if (CGRectGetWidth(v251) < v164)
    {
      v252.origin.x = v226;
      v252.origin.y = v228;
      v252.size.width = v157;
      v252.size.height = v224;
      v164 = CGRectGetWidth(v252);
      v162 = v169;
    }

    v171 = v226;
    v253.origin.x = v226;
    v172 = v228;
    v253.origin.y = v228;
    v253.size.width = v170;
    v253.size.height = v224;
    v173 = CGRectGetMinX(v253);
    v221 = *&v173;
    v254.origin.x = v171;
    v254.origin.y = v172;
    v254.size.width = v218;
    v254.size.height = v223;
    v174 = CGRectGetMaxY(v254);
    v227 = v174;
    v175 = v214 * v164;
    v255.origin.x = v173;
    v255.origin.y = v174;
    v255.size.width = v164;
    v255.size.height = v162;
    v222 = v162;
    v176 = v175 + CGRectGetMinX(v255);
    v256.origin.x = v173;
    v256.origin.y = v174;
    v256.size.width = v164;
    v256.size.height = v162;
    MidY = CGRectGetMidY(v256);
    v178 = v220;
    v216 = MidY - v220 * 0.5;
    v179 = v225;
    __swift_project_boxed_opaque_existential_1(v225 + 20, v225[23]);
    sub_24F92C1D8();
    sub_24F922228();
    __swift_project_boxed_opaque_existential_1(v179 + 25, v179[28]);
    sub_24F922298();
    v257.origin.x = v176;
    v257.origin.y = v216;
    v257.size.width = v178;
    v257.size.height = v178;
    CGRectGetMaxX(v257);
    *&v258.origin.x = v221;
    v258.size.height = v222;
    v258.origin.y = v227;
    v258.size.width = v164;
    CGRectGetMidY(v258);
    __swift_project_boxed_opaque_existential_1(v179 + 25, v179[28]);
    sub_24F92C1D8();
    sub_24F922228();
    __swift_project_boxed_opaque_existential_1(v179 + 30, v179[33]);
    sub_24F92C1D8();
    sub_24F922228();
    (*(v158 + 8))(v159, v161);
  }

  v181 = v205;
  v180 = v206;
  __swift_project_boxed_opaque_existential_1(v225 + 30, v225[33]);
  sub_24F922218();
  v260.size.height = v223 + CGRectGetHeight(v259);
  v260.origin.x = v226;
  v260.origin.y = v228;
  v260.size.width = v218;
  CGRectIntegral(v260);
  sub_24F922128();
  return (*(v181 + 8))(v219, v180);
}

uint64_t sub_24E930D4C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_24E931580(&qword_27F221FB0, type metadata accessor for InAppPurchaseSearchResultLayout, &protocol conformance descriptor for InAppPurchaseSearchResultLayout);
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return MEMORY[0x282180FC8](a1, a2, v10, a3, v11, v12);
}

uint64_t sub_24E930DFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F780, &qword_24F968620);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E930E6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F780, &qword_24F968620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double _s12GameStoreKit31InAppPurchaseSearchResultLayoutV21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(char *a1, void *a2, double a3)
{
  v6 = sub_24F922348();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x28223BE20](v6);
  v39 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F92CDB8();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a2 traitCollection];
  v14 = sub_24F92BF98();

  v15 = *(a1 + 10);
  __swift_project_boxed_opaque_existential_1(a1 + 7, v15);
  sub_24E8ED7D8(v15);
  sub_24F9223A8();
  v16 = *(v9 + 8);
  v16(v12, v8);
  v17 = *(a1 + 15);
  __swift_project_boxed_opaque_existential_1(a1 + 12, v17);
  sub_24E8ED7D8(v17);
  sub_24F9223A8();
  v16(v12, v8);
  v18 = *(a1 + 20);
  __swift_project_boxed_opaque_existential_1(a1 + 17, v18);
  sub_24E8ED7D8(v18);
  sub_24F9223A8();
  v42 = v8;
  v16(v12, v8);
  if (v14)
  {
    v19 = *(a1 + 35);
    __swift_project_boxed_opaque_existential_1(a1 + 32, v19);
    sub_24E8ED7D8(v19);
    sub_24F9223A8();
    v20 = v42;
    v16(v12, v42);
    v21 = *(a1 + 35);
    __swift_project_boxed_opaque_existential_1(a1 + 32, v21);
    sub_24E8ED7D8(v21);
    sub_24F9223A8();
    v16(v12, v20);
    v41 = type metadata accessor for InAppPurchaseSearchResultLayout.Metrics(0);
    v22 = &a1[*(v41 + 80)];
    v23 = *(v22 + 3);
    __swift_project_boxed_opaque_existential_1(v22, v23);
    sub_24E8ED7D8(v23);
    sub_24F9223A8();
    v16(v12, v20);
    v24 = *(a1 + 40);
    __swift_project_boxed_opaque_existential_1(a1 + 37, v24);
    sub_24E8ED7D8(v24);
    sub_24F9223A8();
    v16(v12, v20);
    v25 = &a1[*(v41 + 76)];
    v26 = *(v25 + 3);
    __swift_project_boxed_opaque_existential_1(v25, v26);
    sub_24E8ED7D8(v26);
    sub_24F9223A8();
    v27 = v42;
    v16(v12, v42);
    v28 = *(a1 + 25);
    __swift_project_boxed_opaque_existential_1(a1 + 22, v28);
    sub_24E8ED7D8(v28);
    sub_24F9223A8();
    v16(v12, v27);
    v29 = *(v22 + 3);
    __swift_project_boxed_opaque_existential_1(v22, v29);
    sub_24E8ED7D8(v29);
    sub_24F9223A8();
    v16(v12, v27);
  }

  else
  {
    v30 = *(a1 + 30);
    __swift_project_boxed_opaque_existential_1(a1 + 27, v30);
    sub_24E8ED7D8(v30);
    sub_24F9223A8();
    v16(v12, v42);
    v31 = [a2 traitCollection];
    v32 = [v31 horizontalSizeClass];

    v33 = type metadata accessor for InAppPurchaseSearchResultLayout.Metrics(0);
    v35 = v40;
    v34 = v41;
    v36 = 52;
    if (v32 == 1)
    {
      v36 = 56;
    }

    v37 = v39;
    (*(v40 + 16))(v39, &a1[*(v33 + v36)], v41);
    sub_24F922308();
    (*(v35 + 8))(v37, v34);
  }

  return a3;
}

uint64_t sub_24E931580(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E9315DC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for InAppPurchaseSearchResultLayout.Metrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E93169C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for InAppPurchaseSearchResultLayout.Metrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24E931740(uint64_t a1)
{
  result = sub_24E8EFB54(319, &qword_27F2297C0, MEMORY[0x277D226F8]);
  if (v2 <= 0x3F)
  {
    result = sub_24E8EFB54(319, &qword_27F237A20, MEMORY[0x277D22640]);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for InAppPurchaseSearchResultLayout.Metrics(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_24E931820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24F922348();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E9318E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F922348();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24E931984(uint64_t a1)
{
  type metadata accessor for CGSize(319);
  if (v1 <= 0x3F)
  {
    sub_24E8EFB54(319, &qword_27F237A40, MEMORY[0x277D226C0]);
    if (v2 <= 0x3F)
    {
      sub_24F922348();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t LockupsResponse.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  LockupsResponse.init(deserializing:using:)(a1, a2);
  return v4;
}

void *LockupsResponse.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v64 = a2;
  v61 = v4;
  v56 = *v4;
  v57 = v3;
  v65 = sub_24F9285B8();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v54 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v7 - 8);
  v58 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v49 - v10;
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v53 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - v16;
  v18 = sub_24F92AC28();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v52 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v49 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v49 - v25;
  v60 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v27 = v12;
  v29 = *(v13 + 8);
  v28 = v13 + 8;
  v62 = v29;
  v29(v17, v12);
  v59 = v19;
  v30 = *(v19 + 48);
  if (v30(v11, 1, v18) == 1)
  {
    sub_24E8F2EE8(v11);
    v31 = sub_24F92AC38();
    sub_24E9321A0(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v32 = 0x7370756B636F6CLL;
    v33 = v56;
    v32[1] = 0xE700000000000000;
    v32[2] = v33;
    (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D22530], v31);
    swift_willThrow();
    (*(v63 + 8))(v64, v65);
    v62(v60, v27);
    v34 = v61;
    swift_deallocPartialClassInstance();
    return v34;
  }

  v55 = v28;
  v35 = v59;
  v50 = *(v59 + 32);
  v51 = v59 + 32;
  v50(v26, v11, v18);
  (*(v35 + 16))(v23, v26, v18);
  (*(v63 + 16))(v54, v64, v65);
  type metadata accessor for Lockup(0);
  sub_24E9321A0(&qword_27F221FB8, type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);
  v36 = sub_24F92B6A8();
  v37 = v60;
  v34 = v61;
  v61[2] = v36;
  v38 = v53;
  v54 = v27;
  sub_24F928398();
  v39 = v58;
  sub_24F9282B8();
  v40 = v54;
  v62(v38, v54);
  if (v30(v39, 1, v18) == 1)
  {
    sub_24E8F2EE8(v58);
    (*(v63 + 8))(v64, v65);
    v62(v37, v40);
    (*(v59 + 8))(v26, v18);
    v34[3] = MEMORY[0x277D84F90];
    return v34;
  }

  v53 = v26;
  v41 = v63;
  v42 = v37;
  v43 = v52;
  v50(v52, v58, v18);
  v44 = v57;
  v45 = sub_24F92ABB8();
  if (!v44)
  {
    v46 = v45;
    (*(v41 + 8))(v64, v65);
    v62(v42, v54);
    v47 = *(v59 + 8);
    v47(v43, v18);
    v47(v53, v18);
    v34[3] = v46;
    return v34;
  }

  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_24E9321A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t LockupsResponse.__allocating_init(lockups:missingIds:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t LockupsResponse.init(lockups:missingIds:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t LockupsResponse.subscript.getter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 16);
  if (v4 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v6 = 0;
    while ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x253052270](v6, v4);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_16;
      }

LABEL_7:
      v9 = *(v7 + 16) == v2 && *(v7 + 24) == v3;
      if (v9 || (sub_24F92CE08() & 1) != 0)
      {
        return v7;
      }

      ++v6;
      if (v8 == i)
      {
        return 0;
      }
    }

    if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    v7 = *(v4 + 8 * v6 + 32);

    v8 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_7;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return 0;
}

uint64_t LockupsResponse.subscript.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  if (v5 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v7 = 0;
    while ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x253052270](v7, v5);
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_17;
      }

LABEL_8:
      v10 = *(v8 + 40);
      if (v10)
      {
        v11 = *(v8 + 32) == a1 && v10 == a2;
        if (v11 || (sub_24F92CE08() & 1) != 0)
        {
          return v8;
        }
      }

      ++v7;
      if (v9 == i)
      {
        return 0;
      }
    }

    if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    v8 = *(v5 + 8 * v7 + 32);

    v9 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_8;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return 0;
}

uint64_t LockupsResponse.deinit()
{

  return v0;
}

uint64_t LockupsResponse.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_24E9324CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = LockupsResponse.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t AchievementDetails.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AchievementDetails(0) + 48);
  v4 = sub_24F928818();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for AchievementDetails(uint64_t a1)
{
  result = qword_27F221FF8;
  if (!qword_27F221FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24E932674(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x7274654D65676170;
    if (a1 != 8)
    {
      v5 = 0xD000000000000013;
    }

    if (a1 == 7)
    {
      v5 = 0xD000000000000011;
    }

    v6 = 0xD000000000000018;
    if (a1 != 5)
    {
      v6 = 0x756F72676B636162;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6144726564616568;
    v2 = 0x6F43797469726172;
    v3 = 0x6F4C726579616C70;
    if (a1 != 3)
    {
      v3 = 0xD00000000000001ELL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6B636F4C656D6167;
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

uint64_t sub_24E9327E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24E933D0C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24E932808(uint64_t a1)
{
  v2 = sub_24E933244();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E932844(uint64_t a1)
{
  v2 = sub_24E933244();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AchievementDetails.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_24F928818();
  v4 = *(v3 - 8);
  v44 = v3;
  v45 = v4;
  MEMORY[0x28223BE20](v3);
  v43 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  MEMORY[0x28223BE20](v6 - 8);
  v47 = v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221FC0, &unk_24F9CF930);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v41 - v9;
  v11 = type metadata accessor for AchievementDetailsHeader(0);
  MEMORY[0x28223BE20](v11);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221FC8, &unk_24F968810);
  v46 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v15 = v41 - v14;
  v16 = type metadata accessor for AchievementDetails(0);
  MEMORY[0x28223BE20](v16);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_24E933244();
  v48 = v15;
  v20 = v50;
  sub_24F92D108();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  v22 = v46;
  v21 = v47;
  v50 = v16;
  LOBYTE(v52) = 0;
  sub_24E933468(&qword_27F221FD8, type metadata accessor for AchievementDetailsHeader, &protocol conformance descriptor for AchievementDetailsHeader);
  sub_24F92CC68();
  sub_24E9332FC(v13, v18);
  type metadata accessor for GameLockup(0);
  LOBYTE(v52) = 1;
  sub_24E933468(&qword_27F21CB68, type metadata accessor for GameLockup, &unk_24F943780);
  sub_24F92CC18();
  v23 = v50;
  sub_24E6009C8(v10, &v18[v50[5]], &qword_27F221FC0, &unk_24F9CF930);
  LOBYTE(v52) = 2;
  v41[1] = 0;
  v24 = sub_24F92CC28();
  v25 = &v18[v23[6]];
  *v25 = v24;
  v25[1] = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2150E8, &qword_24F93F6E0);
  v55 = 3;
  sub_24E933360();
  sub_24F92CC18();
  *&v18[v23[7]] = v52;
  LOBYTE(v52) = 4;
  v27 = sub_24F92CC28();
  v28 = &v18[v23[8]];
  *v28 = v27;
  v28[1] = v29;
  LOBYTE(v52) = 5;
  v30 = sub_24F92CC28();
  v31 = &v18[v23[9]];
  *v31 = v30;
  v31[1] = v32;
  type metadata accessor for Page.Background(0);
  LOBYTE(v52) = 6;
  sub_24E933468(&qword_27F21D930, type metadata accessor for Page.Background, &protocol conformance descriptor for Page.Background);
  sub_24F92CC18();
  sub_24E6009C8(v21, &v18[v23[10]], &qword_27F21D8F8, &qword_24F95ADB0);
  v55 = 7;
  sub_24E933414();
  v47 = 0;
  sub_24F92CC18();
  v33 = v44;
  v34 = v54;
  v35 = &v18[v23[11]];
  v36 = v53;
  *v35 = v52;
  *(v35 + 1) = v36;
  v35[32] = v34;
  LOBYTE(v52) = 8;
  sub_24E933468(&qword_27F21F8C8, MEMORY[0x277D21BF8], MEMORY[0x277D21C08]);
  v37 = v43;
  sub_24F92CC68();
  (*(v45 + 32))(&v18[v23[12]], v37, v33);
  v55 = 9;
  sub_24E688020();
  sub_24F92CC18();
  (*(v22 + 8))(v48, v49);
  v38 = &v18[v50[13]];
  v39 = v53;
  *v38 = v52;
  *(v38 + 1) = v39;
  *(v38 + 2) = v54;
  sub_24E9334B0(v18, v42);
  __swift_destroy_boxed_opaque_existential_1(v51);
  return sub_24E933514(v18, type metadata accessor for AchievementDetails);
}

unint64_t sub_24E933244()
{
  result = qword_27F221FD0;
  if (!qword_27F221FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221FD0);
  }

  return result;
}

uint64_t sub_24E933298(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_24E9332FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AchievementDetailsHeader(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E933360()
{
  result = qword_27F221FE0;
  if (!qword_27F221FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2150E8, &qword_24F93F6E0);
    sub_24E933468(&qword_27F221FE8, type metadata accessor for PlayerLockup, &protocol conformance descriptor for PlayerLockup);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221FE0);
  }

  return result;
}

unint64_t sub_24E933414()
{
  result = qword_27F221FF0;
  if (!qword_27F221FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221FF0);
  }

  return result;
}

uint64_t sub_24E933468(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E9334B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AchievementDetails(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E933514(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E93358C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_24F928818();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24E933614(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for AchievementDetailsHeader(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221FC0, &unk_24F9CF930);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[6] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[10];
      goto LABEL_5;
    }

    v17 = sub_24F928818();
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[12];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_24E933800(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for AchievementDetailsHeader(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221FC0, &unk_24F9CF930);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[10];
    goto LABEL_5;
  }

  v17 = sub_24F928818();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[12];

  return v18(v19, a2, a2, v17);
}

void sub_24E9339D8(uint64_t a1)
{
  type metadata accessor for AchievementDetailsHeader(319);
  if (v1 <= 0x3F)
  {
    sub_24E933BA0(319, &qword_27F222008, type metadata accessor for GameLockup);
    if (v2 <= 0x3F)
    {
      sub_24E933B3C(319);
      if (v3 <= 0x3F)
      {
        sub_24E933BA0(319, &qword_27F21D948, type metadata accessor for Page.Background);
        if (v4 <= 0x3F)
        {
          sub_24E66ECF0(319, &qword_27F222018, &type metadata for PageToolbarItemGroups);
          if (v5 <= 0x3F)
          {
            sub_24F928818();
            if (v6 <= 0x3F)
            {
              sub_24E66ECF0(319, &qword_27F2169A8, &type metadata for ReleaseStateDetails);
              if (v7 <= 0x3F)
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

void sub_24E933B3C(uint64_t a1)
{
  if (!qword_27F222010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2150E8, &qword_24F93F6E0);
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F222010);
    }
  }
}

void sub_24E933BA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24E933C08()
{
  result = qword_27F222020;
  if (!qword_27F222020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222020);
  }

  return result;
}

unint64_t sub_24E933C60()
{
  result = qword_27F222028;
  if (!qword_27F222028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222028);
  }

  return result;
}

unint64_t sub_24E933CB8()
{
  result = qword_27F222030;
  if (!qword_27F222030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222030);
  }

  return result;
}

uint64_t sub_24E933D0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6144726564616568 && a2 == 0xEA00000000006174;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B636F4C656D6167 && a2 == 0xEA00000000007075 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F43797469726172 && a2 == 0xEA00000000007970 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F4C726579616C70 && a2 == 0xED00007370756B63 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000024FA4A040 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024FA4A060 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA4A080 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7274654D65676170 && a2 == 0xEB00000000736369 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA459C0 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_24F92CE08();

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

_BYTE *DynamicTypeTextField.__allocating_init(useCase:directionalTextAlignment:)(uint64_t a1, _BYTE *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038, &unk_24F9689B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  LOBYTE(a2) = *a2;
  v9 = [objc_allocWithZone(v3) initWithFrame_];
  v10 = OBJC_IVAR____TtC12GameStoreKit20DynamicTypeTextField_directionalTextAlignment;
  swift_beginAccess();
  v9[v10] = a2;
  v11 = sub_24F922378();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v8, a1, v11);
  (*(v12 + 56))(v8, 0, 1, v11);
  v13 = OBJC_IVAR____TtC12GameStoreKit20DynamicTypeTextField_fontUseCase;
  swift_beginAccess();
  v14 = v9;
  sub_24E934304(v8, &v9[v13]);
  swift_endAccess();
  sub_24E6C065C();
  v15 = [v14 traitCollection];
  v16 = MEMORY[0x253051BF0](a1, v15);

  v17 = type metadata accessor for DynamicTypeTextField(0);
  v27.receiver = v14;
  v27.super_class = v17;
  objc_msgSendSuper2(&v27, sel_setFont_, v16);

  if (v9[v10])
  {
    if (v9[v10] == 1)
    {
      v18 = [v14 traitCollection];
      v19 = sub_24F92BF88();

      if (v19)
      {
        v20 = 2;
      }

      else
      {
        v20 = 0;
      }

      objc_msgSendSuper2(&v25, sel_setTextAlignment_, v20, v14, v17, v26.receiver, v26.super_class);
    }

    else
    {
      v21 = [v14 traitCollection];
      v22 = sub_24F92BF88();

      if (v22)
      {
        v23 = 0;
      }

      else
      {
        v23 = 2;
      }

      objc_msgSendSuper2(&v26, sel_setTextAlignment_, v23, v25.receiver, v25.super_class, v14, v17);
    }
  }

  (*(v12 + 8))(a1, v11);
  return v14;
}

uint64_t sub_24E934304(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038, &unk_24F9689B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for DynamicTypeTextField(uint64_t a1)
{
  result = qword_27F222040;
  if (!qword_27F222040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E9343C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038, &unk_24F9689B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_24E934D5C(a1, &v6 - v3);
  return sub_24E9344AC(v4);
}

uint64_t sub_24E934454@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit20DynamicTypeTextField_fontUseCase;
  swift_beginAccess();
  return sub_24E934D5C(v1 + v3, a1);
}

uint64_t sub_24E9344AC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038, &unk_24F9689B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_24F922378();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC12GameStoreKit20DynamicTypeTextField_fontUseCase;
  swift_beginAccess();
  sub_24E934DCC(a1, v1 + v10);
  swift_endAccess();
  sub_24E934D5C(v1 + v10, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_24E934E3C(a1);
    return sub_24E934E3C(v5);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    sub_24E6C065C();
    v12 = [v1 traitCollection];
    v13 = v1;
    v14 = MEMORY[0x253051BF0](v9, v12);

    v15 = type metadata accessor for DynamicTypeTextField(0);
    v17.receiver = v13;
    v17.super_class = v15;
    objc_msgSendSuper2(&v17, sel_setFont_, v14);

    sub_24E934E3C(a1);
    return (*(v7 + 8))(v9, v6);
  }
}

void (*sub_24E9346D0(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 40) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038, &unk_24F9689B0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[6] = v7;
  v8 = sub_24F922378();
  v5[7] = v8;
  v9 = *(v8 - 8);
  v5[8] = v9;
  if (v3)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  v11 = OBJC_IVAR____TtC12GameStoreKit20DynamicTypeTextField_fontUseCase;
  v5[9] = v10;
  v5[10] = v11;
  swift_beginAccess();
  return sub_24E934800;
}

void sub_24E934800(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3 + 56);
    v5 = *(v3 + 64);
    v6 = *(v3 + 48);
    sub_24E934D5C(*(v3 + 40) + *(v3 + 80), v6);
    if ((*(v5 + 48))(v6, 1, v4) == 1)
    {
      sub_24E934E3C(*(v3 + 48));
    }

    else
    {
      v8 = *(v3 + 64);
      v7 = *(v3 + 72);
      v9 = *(v3 + 56);
      v10 = *(v3 + 40);
      (*(v8 + 32))(v7, *(v3 + 48), v9);
      sub_24E6C065C();
      v11 = [v10 traitCollection];
      v12 = MEMORY[0x253051BF0](v7, v11);

      v13 = type metadata accessor for DynamicTypeTextField(0);
      *(v3 + 24) = v10;
      *(v3 + 32) = v13;
      objc_msgSendSuper2((v3 + 24), sel_setFont_, v12);

      (*(v8 + 8))(v7, v9);
    }
  }

  v14 = *(v3 + 48);
  free(*(v3 + 72));
  free(v14);

  free(v3);
}

id sub_24E934B8C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit20DynamicTypeTextField_directionalTextAlignment;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v7 = v5;
  return sub_24E934BF0(&v7);
}

id sub_24E934BF0(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12GameStoreKit20DynamicTypeTextField_directionalTextAlignment;
  result = swift_beginAccess();
  v5 = v1[v3];
  if (v5 != v2 && v5 != 0)
  {
    if (v5 == 1)
    {
      v7 = [v1 traitCollection];
      v8 = v1;
      v9 = sub_24F92BF88();

      if (v9)
      {
        v10 = 2;
      }

      else
      {
        v10 = 0;
      }

      v15.receiver = v8;
      v15.super_class = type metadata accessor for DynamicTypeTextField(0);
      return objc_msgSendSuper2(&v15, sel_setTextAlignment_, v10);
    }

    else
    {
      v11 = [v1 traitCollection];
      v12 = v1;
      v13 = sub_24F92BF88();

      if (v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = 2;
      }

      v16.receiver = v12;
      v16.super_class = type metadata accessor for DynamicTypeTextField(0);
      return objc_msgSendSuper2(&v16, sel_setTextAlignment_, v14);
    }
  }

  return result;
}

uint64_t sub_24E934D08@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit20DynamicTypeTextField_directionalTextAlignment;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_24E934D5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038, &unk_24F9689B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E934DCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038, &unk_24F9689B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E934E3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038, &unk_24F9689B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_24E934EA4(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12GameStoreKit20DynamicTypeTextField_directionalTextAlignment;
  result = swift_beginAccess();
  v5 = v1[v3];
  v1[v3] = v2;
  if (v2 != v5 && v2 != 0)
  {
    if (v2 == 1)
    {
      v7 = [v1 traitCollection];
      v8 = v1;
      v9 = sub_24F92BF88();

      if (v9)
      {
        v10 = 2;
      }

      else
      {
        v10 = 0;
      }

      v15.receiver = v8;
      v15.super_class = type metadata accessor for DynamicTypeTextField(0);
      return objc_msgSendSuper2(&v15, sel_setTextAlignment_, v10);
    }

    else
    {
      v11 = [v1 traitCollection];
      v12 = v1;
      v13 = sub_24F92BF88();

      if (v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = 2;
      }

      v16.receiver = v12;
      v16.super_class = type metadata accessor for DynamicTypeTextField(0);
      return objc_msgSendSuper2(&v16, sel_setTextAlignment_, v14);
    }
  }

  return result;
}

void (*sub_24E934FBC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit20DynamicTypeTextField_directionalTextAlignment;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_24E935050;
}

void sub_24E935050(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(v4 + v3);
  *(v4 + v3) = *(*a1 + 40);
  if (a2)
  {
    v7 = v5;
    v6 = &v7;
  }

  else
  {
    v8 = v5;
    v6 = &v8;
  }

  sub_24E934BF0(v6);

  free(v2);
}

uint64_t sub_24E9350C0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038, &unk_24F9689B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - v5;
  v7 = sub_24F922378();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DynamicTypeTextField(0);
  v28.receiver = v2;
  v28.super_class = v11;
  objc_msgSendSuper2(&v28, sel_traitCollectionDidChange_, a1);
  v12 = [v2 traitCollection];
  v13 = [v12 layoutDirection];

  if (!a1 || v13 != [a1 layoutDirection])
  {
    v14 = OBJC_IVAR____TtC12GameStoreKit20DynamicTypeTextField_directionalTextAlignment;
    swift_beginAccess();
    if (*(v2 + v14))
    {
      if (*(v2 + v14) == 1)
      {
        v15 = [v2 traitCollection];
        v16 = sub_24F92BF88();

        if (v16)
        {
          v17 = 2;
        }

        else
        {
          v17 = 0;
        }

        objc_msgSendSuper2(&v25, sel_setTextAlignment_, v17, v2, v11);
      }

      else
      {
        v18 = [v2 traitCollection];
        v19 = sub_24F92BF88();

        if (v19)
        {
          v20 = 0;
        }

        else
        {
          v20 = 2;
        }

        v27.receiver = v2;
        v27.super_class = v11;
        objc_msgSendSuper2(&v27, sel_setTextAlignment_, v20, v25.receiver, v25.super_class);
      }
    }
  }

  v21 = OBJC_IVAR____TtC12GameStoreKit20DynamicTypeTextField_fontUseCase;
  swift_beginAccess();
  sub_24E934D5C(v2 + v21, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_24E934E3C(v6);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_24E6C065C();
  v23 = [v2 traitCollection];
  v24 = MEMORY[0x253051BF0](v10, v23);

  v26.receiver = v2;
  v26.super_class = v11;
  objc_msgSendSuper2(&v26, sel_setFont_, v24);

  return (*(v8 + 8))(v10, v7);
}

id DynamicTypeTextField.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DynamicTypeTextField.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC12GameStoreKit20DynamicTypeTextField_fontUseCase;
  v10 = sub_24F922378();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v4[OBJC_IVAR____TtC12GameStoreKit20DynamicTypeTextField_directionalTextAlignment] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for DynamicTypeTextField(0);
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

id DynamicTypeTextField.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DynamicTypeTextField.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit20DynamicTypeTextField_fontUseCase;
  v4 = sub_24F922378();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v1[OBJC_IVAR____TtC12GameStoreKit20DynamicTypeTextField_directionalTextAlignment] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for DynamicTypeTextField(0);
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}