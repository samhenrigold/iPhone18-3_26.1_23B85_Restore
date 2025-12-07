void sub_217948E00()
{
  if (!qword_27CB8EF58[0])
  {
    v0 = sub_217967C4C();
    if (!v1)
    {
      atomic_store(v0, qword_27CB8EF58);
    }
  }
}

uint64_t sub_217948E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_217948EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v238 = a2;
  sub_217966CEC();
  OUTLINED_FUNCTION_0_1();
  v236 = v4;
  v237 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_0();
  v235 = v5;
  OUTLINED_FUNCTION_0_1();
  v247 = v6;
  v244 = *(v7 + 64);
  MEMORY[0x28223BE20](v8);
  v243 = v180 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21796738C();
  OUTLINED_FUNCTION_0_1();
  v233 = v11;
  v234 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_0();
  v232 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C148, &unk_217972DC0);
  OUTLINED_FUNCTION_48(v13);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_45_0();
  v231 = v15;
  sub_217966FEC();
  OUTLINED_FUNCTION_0_1();
  v227 = v17;
  v228 = v16;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_0();
  v226 = v18;
  sub_217966FFC();
  OUTLINED_FUNCTION_0_1();
  v229 = v20;
  v230 = v19;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4_0();
  v225 = v21;
  v22 = *(a1 + 16);
  v248 = *(a1 + 32);
  v23 = a1;
  v24 = sub_21796810C();
  v245 = v23;
  v249 = *(v23 + 24);
  *&v25 = v22;
  *(&v25 + 1) = v249;
  v242 = v25;
  v251 = *(v23 + 40);
  OUTLINED_FUNCTION_36();
  v246 = v22;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v273 = v242;
  v274 = v251;
  _s13ItemShelfCellVMa(255, &v273);
  v27 = MEMORY[0x277CDF928];
  v28 = sub_21796698C();
  OUTLINED_FUNCTION_46_4(v28);
  OUTLINED_FUNCTION_7_15();
  WitnessTable = swift_getWitnessTable();
  v30 = MEMORY[0x277CDF918];
  v278 = WitnessTable;
  v279 = MEMORY[0x277CDF918];
  *&v242 = MEMORY[0x277CDFAD8];
  v276 = swift_getWitnessTable();
  v277 = v30;
  v31 = swift_getWitnessTable();
  *&v273 = v27;
  *(&v273 + 1) = v31;
  OUTLINED_FUNCTION_11_13();
  swift_getOpaqueTypeMetadata2();
  sub_21796732C();
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  OUTLINED_FUNCTION_9();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8();
  v32 = sub_217967E9C();
  OUTLINED_FUNCTION_6_1();
  v33 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v273 = v24;
  *(&v273 + 1) = AssociatedTypeWitness;
  *&v274 = v32;
  *(&v274 + 1) = v33;
  v275 = AssociatedConformanceWitness;
  sub_217967D9C();
  sub_21796944C();
  OUTLINED_FUNCTION_6_12();
  v272 = swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  v271 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  v35 = sub_21796665C();
  OUTLINED_FUNCTION_23_8(v35, v36, v37);
  OUTLINED_FUNCTION_9();
  v38 = sub_21796666C();
  OUTLINED_FUNCTION_22_6(v38, v39, v40);
  OUTLINED_FUNCTION_9();
  v41 = sub_21796686C();
  OUTLINED_FUNCTION_19();
  v42 = swift_getWitnessTable();
  v239 = sub_217873C34(v42, v43, v44);
  *&v273 = v41;
  *(&v273 + 1) = MEMORY[0x277D837D0];
  v186 = v41;
  *&v274 = v42;
  *(&v274 + 1) = v239;
  v191 = v42;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_1();
  v219 = v45;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_45_0();
  v209 = v47;
  v48 = *(&v251 + 1);
  v204 = *(&v251 + 1);
  v50 = _s18NavigationBarStyleVMa(255, v249, *(&v251 + 1), v49);
  v51 = sub_21796698C();
  OUTLINED_FUNCTION_0_1();
  v220 = v52;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_45_0();
  v206 = v54;
  v55 = OUTLINED_FUNCTION_36();
  done = _s15DoneToolbarItemVMa(v55, v56, v48, v57);
  OUTLINED_FUNCTION_16();
  v59 = swift_getWitnessTable();
  *&v273 = done;
  *(&v273 + 1) = v59;
  v60 = swift_getOpaqueTypeMetadata2();
  *&v273 = v41;
  *(&v273 + 1) = MEMORY[0x277D837D0];
  *&v274 = v42;
  v61 = v239;
  *(&v274 + 1) = v239;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v187 = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_17();
  v63 = swift_getWitnessTable();
  v269 = OpaqueTypeConformance2;
  v270 = v63;
  v64 = swift_getWitnessTable();
  *&v273 = done;
  *(&v273 + 1) = v59;
  v65 = swift_getOpaqueTypeConformance2();
  *&v273 = v51;
  *(&v273 + 1) = v60;
  v180[1] = v60;
  v180[2] = v51;
  *&v274 = v64;
  *(&v274 + 1) = v65;
  v182 = v65;
  v183 = v64;
  v66 = v65;
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_38_4();
  OUTLINED_FUNCTION_0_1();
  v218 = v67;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_45_0();
  v181 = v69;
  *&v273 = v51;
  *(&v273 + 1) = v60;
  *&v274 = v64;
  *(&v274 + 1) = v66;
  v70 = OUTLINED_FUNCTION_26_6();
  *&v273 = v50;
  v197 = v50;
  v71 = MEMORY[0x277D837D0];
  *(&v273 + 1) = MEMORY[0x277D837D0];
  *&v274 = v70;
  v72 = v70;
  v190 = v70;
  *(&v274 + 1) = v61;
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_38_4();
  OUTLINED_FUNCTION_0_1();
  v217 = v73;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_45_0();
  v195 = v75;
  *&v273 = v50;
  *(&v273 + 1) = v71;
  *&v274 = v72;
  *(&v274 + 1) = v61;
  v76 = OUTLINED_FUNCTION_26_6();
  v199 = v50;
  v200 = v76;
  *&v273 = v50;
  *(&v273 + 1) = v76;
  v77 = v76;
  OUTLINED_FUNCTION_16_11();
  v78 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_1();
  v210 = v79;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_45_0();
  v198 = v81;
  *&v273 = v50;
  *(&v273 + 1) = v77;
  v82 = OUTLINED_FUNCTION_26_6();
  v193 = v78;
  v194 = v82;
  *&v273 = v78;
  *(&v273 + 1) = v82;
  v83 = v82;
  OUTLINED_FUNCTION_15_12();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_38_4();
  OUTLINED_FUNCTION_0_1();
  v205 = v84;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_45_0();
  v192 = v86;
  *&v273 = v78;
  *(&v273 + 1) = v83;
  v87 = OUTLINED_FUNCTION_26_6();
  v184 = v50;
  v185 = v87;
  *&v273 = v50;
  *(&v273 + 1) = v87;
  v88 = v87;
  OUTLINED_FUNCTION_14_8();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_38_4();
  OUTLINED_FUNCTION_0_1();
  v216 = v89;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_45_0();
  v240 = v91;
  *&v273 = v50;
  *(&v273 + 1) = v88;
  v92 = OUTLINED_FUNCTION_26_6();
  *&v273 = v50;
  *(&v273 + 1) = v71;
  v189 = v50;
  *&v274 = v92;
  *(&v274 + 1) = MEMORY[0x277D837F8];
  v93 = v92;
  v188 = v92;
  v94 = MEMORY[0x277D837F8];
  OUTLINED_FUNCTION_13_12();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_38_4();
  v203 = v95;
  OUTLINED_FUNCTION_0_1();
  v212 = v96;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_45_0();
  v196 = v98;
  *&v273 = v50;
  *(&v273 + 1) = v71;
  *&v274 = v93;
  *(&v274 + 1) = v94;
  v201 = OUTLINED_FUNCTION_26_6();
  *&v273 = v50;
  *(&v273 + 1) = v201;
  v213 = MEMORY[0x277CDED18];
  v207 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_1();
  v215 = v99;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_45_0();
  v241 = v101;
  v211 = sub_21796698C();
  OUTLINED_FUNCTION_0_1();
  v223 = v102;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_45_0();
  v202 = v104;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8EFE0, &unk_217972DD0);
  v222 = sub_21796698C();
  OUTLINED_FUNCTION_0_1();
  v224 = v105;
  v107 = MEMORY[0x28223BE20](v106);
  v214 = v180 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v107);
  v221 = v180 - v109;
  v110 = v245;
  v111 = v250;
  sub_21794A304(v245, &v273);
  v265 = v273;
  v112 = v111[1];
  v267 = *v111;
  v268 = v112;
  swift_checkMetadataState();
  sub_2179677EC();

  v113 = OpaqueTypeMetadata2;
  v114 = v249;
  v115 = v187;
  v116 = v204;
  v117 = j__OUTLINED_FUNCTION_59();
  sub_21792D7FC(v117 & 1, v114, v113, v114, v115, v116);
  v118 = OUTLINED_FUNCTION_153();
  v119(v118);
  v257 = v246;
  v258 = v114;
  v259 = v248;
  v260 = v251;
  swift_checkMetadataState();
  v120 = v181;
  sub_217967A1C();
  v121 = OUTLINED_FUNCTION_140();
  v122(v121);
  v123 = (v111 + *(v110 + 84));
  v124 = *v123;
  v219 = v123[1];
  v220 = v124;
  v209 = v123[2];
  *&v265 = v124;
  *(&v265 + 1) = v219;
  v266 = v209;
  OpaqueTypeMetadata2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8EFE8, &unk_2179739E0);
  sub_217967C3C();
  v125 = v226;
  sub_217966FDC();
  v126 = v225;
  sub_217966FBC();
  (*(v227 + 8))(v125, v228);
  v127 = (v111 + *(v110 + 104));
  v128 = v127[1];
  *&v273 = *v127;
  *(&v273 + 1) = v128;

  v129 = v195;
  v130 = v197;
  sub_2179676DC();

  (*(v229 + 8))(v126, v230);
  (*(v218 + 8))(v120, v130);
  v131 = v231;
  sub_21796726C();
  v132 = sub_21796727C();
  __swift_storeEnumTagSinglePayload(v131, 0, 1, v132);
  v134 = v198;
  v133 = v199;
  sub_21796793C();
  sub_2178653BC(v131, &qword_27CB8C148, &unk_217972DC0);
  (*(v217 + 8))(v129, v133);
  v135 = v232;
  sub_21796737C();
  v137 = v192;
  v136 = v193;
  sub_21796795C();
  (*(v233 + 8))(v135, v234);
  (*(v210 + 8))(v134, v136);
  v138 = v184;
  MEMORY[0x21CEA6830](1, v184, v185);
  (*(v205 + 8))(v137, v138);
  *&v273 = v220;
  *(&v273 + 1) = v219;
  *&v274 = v209;
  sub_217967C1C();
  v273 = v265;
  v139 = v247;
  v239 = *(v247 + 16);
  v140 = v243;
  v141 = v245;
  v239(v243, v250, v245);
  v142 = *(v139 + 80);
  v233 = (v142 + 56) & ~v142;
  v143 = swift_allocObject();
  v144 = v249;
  *(v143 + 16) = v246;
  *(v143 + 24) = v144;
  *(v143 + 32) = v248;
  *(v143 + 40) = v251;
  v145 = *(v139 + 32);
  v247 = v139 + 32;
  v234 = v145;
  v145(v143 + ((v142 + 56) & ~v142), v140, v141);
  v146 = v189;
  sub_217862E84();
  v147 = v196;
  v148 = v240;
  sub_217967A6C();

  (*(v216 + 8))(v148, v146);
  v150 = v235;
  v149 = v236;
  v151 = v237;
  (*(v236 + 104))(v235, *MEMORY[0x277CDDDC0], v237);
  v152 = v203;
  v153 = v201;
  sub_21796794C();
  (*(v149 + 8))(v150, v151);
  v154 = v152;
  (*(v212 + 8))(v147, v152);
  v155 = v243;
  v156 = v245;
  v239(v243, v250, v245);
  v157 = v233;
  v158 = swift_allocObject();
  v159 = v246;
  v160 = v249;
  *(v158 + 16) = v246;
  *(v158 + 24) = v160;
  v161 = v248;
  *(v158 + 32) = v248;
  *(v158 + 40) = v251;
  v234(v158 + v157, v155, v156);
  *&v273 = v154;
  *(&v273 + 1) = v153;
  v162 = swift_getOpaqueTypeConformance2();
  v163 = v202;
  v164 = v207;
  v165 = v241;
  sub_2178D0790(sub_21794F9D4, v158, v207, v162);

  (*(v215 + 8))(v165, v164);
  sub_217967E3C();
  v252 = v159;
  v253 = v160;
  v254 = v161;
  v255 = v251;
  v256 = v250;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8EFF0, &unk_217972DE0);
  v169 = sub_217864644(v166, v167, v168);
  v263 = v162;
  v264 = v169;
  v170 = v211;
  v171 = swift_getWitnessTable();
  sub_2179504C0(&qword_27CB8EFF8, &qword_27CB8EFF0, &unk_217972DE0, sub_21794FAB8);
  v172 = v214;
  sub_2179679DC();
  (*(v223 + 8))(v163, v170);
  OUTLINED_FUNCTION_13_2();
  v175 = sub_217864B2C(v173, &qword_27CB8EFE0, &unk_217972DD0, v174);
  v261 = v171;
  v262 = v175;
  v176 = v222;
  swift_getWitnessTable();
  v177 = v221;
  sub_2179560E4();
  v178 = *(v224 + 8);
  v178(v172, v176);
  sub_2179560E4();
  return (v178)(v177, v176);
}

double sub_21794A304@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v19 = *(a1 + 16);
  *(v6 + 16) = v19;
  *(v6 + 32) = *(a1 + 32);
  v18 = *(a1 + 40);
  *(v6 + 40) = v18;
  (*(v3 + 32))(v6 + v5, &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v7 = sub_21796810C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = v18;
  v24 = v19;
  _s13ItemShelfCellVMa(255, &v24);
  sub_21796698C();
  v9 = sub_21796698C();
  WitnessTable = swift_getWitnessTable();
  v11 = MEMORY[0x277CDF918];
  v29 = WitnessTable;
  v30 = MEMORY[0x277CDF918];
  v27 = swift_getWitnessTable();
  v28 = v11;
  v12 = swift_getWitnessTable();
  *&v24 = v9;
  *(&v24 + 1) = v12;
  swift_getOpaqueTypeMetadata2();
  sub_21796732C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  swift_getTupleTypeMetadata2();
  v13 = sub_217967E9C();
  v14 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v24 = v7;
  *(&v24 + 1) = AssociatedTypeWitness;
  *&v25 = v13;
  *(&v25 + 1) = v14;
  v26 = AssociatedConformanceWitness;
  sub_217967D9C();
  sub_21796944C();
  v23 = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21796665C();
  swift_getWitnessTable();
  sub_21796666C();
  swift_getWitnessTable();
  *&v21 = sub_21796685C();
  *(&v21 + 1) = v16;
  sub_21796686C();
  swift_getWitnessTable();
  sub_2179560E4();

  v21 = v24;
  sub_2179560E4();

  return result;
}

double sub_21794A784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v12 = sub_2178C3764(a2, a5, a3, a4);
  *(&v12 + 1) = v7;
  done = _s15DoneToolbarItemVMa(0, a2, a5, v8);
  WitnessTable = swift_getWitnessTable();
  sub_2178B9358(&v12, done, &v13);

  v12 = v13;
  MEMORY[0x21CEA6000](&v12, done, WitnessTable);

  return result;
}

double sub_21794A848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v49 = a2;
  *(&v49 + 1) = a3;
  v42 = a3;
  v50 = a4;
  v51 = a5;
  v44 = a5;
  v45 = a6;
  v52 = a6;
  v9 = _s25LibrarySectionContentViewVMa(0, &v49);
  v10 = *(v9 - 8);
  v38 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v40 = &v38 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  MEMORY[0x28223BE20](v12 - 8);
  v39 = &v38 - v13;
  v43 = a4;
  v41 = a2;
  v14 = sub_21796810C();
  v15 = sub_21796944C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v38 - v20;
  v22 = *(v9 + 84);
  v46 = a1;
  v23 = (a1 + v22);
  v24 = *v23;
  v25 = *(v23 + 2);
  v49 = v24;
  v50 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8EFE8, &unk_2179739E0);
  sub_217967C1C();
  v26 = v47;
  v27 = v48;

  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (!v28)
  {
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v14);
    (*(v16 + 16))(v19, v21, v15);
    sub_217967C4C();
    sub_217967C2C();
    (*(v16 + 8))(v21, v15);
  }

  v29 = sub_21796923C();
  __swift_storeEnumTagSinglePayload(v39, 1, 1, v29);
  v30 = v40;
  (*(v10 + 16))(v40, v46, v9);
  sub_21796920C();
  v31 = sub_2179691FC();
  v32 = (*(v10 + 80) + 72) & ~*(v10 + 80);
  v33 = swift_allocObject();
  v34 = MEMORY[0x277D85700];
  *(v33 + 2) = v31;
  *(v33 + 3) = v34;
  v35 = v42;
  *(v33 + 4) = v41;
  *(v33 + 5) = v35;
  v36 = v44;
  *(v33 + 6) = v43;
  *(v33 + 7) = v36;
  *(v33 + 8) = v45;
  (*(v10 + 32))(&v33[v32], v30, v9);
  sub_2178D207C();

  return result;
}

uint64_t sub_21794ABEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a8;
  v8[17] = v13;
  v8[14] = a6;
  v8[15] = a7;
  v8[12] = a4;
  v8[13] = a5;
  sub_21796920C();
  v8[18] = sub_2179691FC();
  v10 = sub_2179691BC();
  v8[19] = v10;
  v8[20] = v9;

  return MEMORY[0x2822009F8](sub_21794AC94, v10, v9);
}

uint64_t sub_21794AC94()
{
  *(v0 + 16) = *(v0 + 104);
  v1 = *(v0 + 136);
  *(v0 + 32) = *(v0 + 120);
  *(v0 + 48) = v1;
  v2 = _s25LibrarySectionContentViewVMa(0, v0 + 16);
  if (sub_217948EC0(v2) && (v3 = (*(v0 + 96) + *(v2 + 84)), v4 = *v3, v5 = *(v3 + 2), *(v0 + 56) = v4, *(v0 + 72) = v5, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8EFE8, &unk_2179739E0), sub_217967C1C(), , OUTLINED_FUNCTION_40_2(), v6))
  {

    sub_21794AF64(v2);
    OUTLINED_FUNCTION_39();

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    *(v0 + 168) = v9;
    *v9 = v0;
    v9[1] = sub_21794ADF8;

    return sub_21794B458(v2);
  }
}

uint64_t sub_21794ADF8()
{
  OUTLINED_FUNCTION_62();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_6();
  *v3 = v2;

  v4 = *(v1 + 160);
  v5 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_21794AF0C, v5, v4);
}

uint64_t sub_21794AF0C()
{
  OUTLINED_FUNCTION_62();

  OUTLINED_FUNCTION_39();

  return v0();
}

uint64_t sub_21794AF64(uint64_t a1)
{
  v3 = *(a1 + 16);
  v47 = *(a1 + 32);
  v51 = *(v47 + 8);
  v52 = v3;
  v4 = sub_21796810C();
  v45 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v46 = &v44 - v5;
  v54 = v6;
  v53 = sub_21796944C();
  v50 = *(v53 - 8);
  v7 = MEMORY[0x28223BE20](v53);
  v49 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v48 = &v44 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - v11;
  v13 = sub_2179655BC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a1;
  v56 = v1;
  v17 = (v1 + *(a1 + 84));
  v18 = *v17;
  v19 = v17[1];
  v20 = v17[2];
  v59 = *v17;
  v60 = v19;
  v61 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8EFE8, &unk_2179739E0);
  sub_217967C1C();
  v22 = v57;
  v21 = v58;

  v24 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v24 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    v59 = v18;
    v60 = v19;
    v61 = v20;
    sub_217967C1C();
    v59 = v57;
    v60 = v58;
    v25 = sub_21796559C();
    sub_217873C34(v25, v26, v27);
    v28 = sub_21796947C();
    v30 = v29;
    (*(v14 + 8))(v16, v13);

    v31 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v31 = v28 & 0xFFFFFFFFFFFFLL;
    }

    if (v31)
    {
      v32 = v55;
      v33 = v53;
      v34 = sub_217967C4C();
      v35 = v56;
      v44 = v34;
      sub_217967C1C();
      v36 = v54;
      if (__swift_getEnumTagSinglePayload(v12, 1, v54))
      {
        v37 = v50;
        v38 = *(v50 + 8);
        v38(v12, v33);
      }

      else
      {
        (*(v45 + 16))(v46, v12, v36);
        v40 = v50;
        v38 = *(v50 + 8);
        v41 = (v38)(v12, v33);
        MEMORY[0x28223BE20](v41);
        v42 = *(v32 + 24);
        *(&v44 - 6) = v52;
        *(&v44 - 5) = v42;
        *(&v44 - 4) = v47;
        *(&v44 - 3) = *(v32 + 40);
        *(&v44 - 1) = v35;
        swift_getWitnessTable();
        v39 = sub_21796908C();
        v37 = v40;
        if (v39)
        {
          goto LABEL_11;
        }
      }

      v39 = sub_21796911C();
LABEL_11:
      v59 = v39;
      sub_21796919C();
      swift_getWitnessTable();
      v43 = v48;
      sub_21796811C();
      __swift_storeEnumTagSinglePayload(v43, 0, 1, v36);
      (*(v37 + 16))(v49, v43, v33);
      sub_217967C2C();
      return (v38)(v43, v33);
    }
  }

  return result;
}

uint64_t sub_21794B458(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v2[22] = *(a1 + 16);
  v2[23] = sub_21796810C();
  v3 = sub_21796944C();
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v4 = sub_21796824C();
  v2[28] = v4;
  v2[29] = *(v4 - 8);
  v2[30] = swift_task_alloc();
  v5 = sub_2179655BC();
  v2[31] = v5;
  v2[32] = *(v5 - 8);
  v2[33] = swift_task_alloc();
  v6 = sub_21796821C();
  v2[34] = v6;
  v2[35] = *(v6 - 8);
  v2[36] = swift_task_alloc();
  sub_21796920C();
  v2[37] = sub_2179691FC();
  v8 = sub_2179691BC();
  v2[38] = v8;
  v2[39] = v7;

  return MEMORY[0x2822009F8](sub_21794B6AC, v8, v7);
}

uint64_t sub_21794B6AC()
{
  v1 = v0[20];
  (*(v0[35] + 16))(v0[36], v0[21] + *(v1 + 72), v0[34]);
  if (!sub_217948EC0(v1))
  {
    v2 = (v0[21] + *(v0[20] + 84));
    v3 = *v2;
    v4 = v2[1];
    v5 = v2[2];
    v0[2] = *v2;
    v0[3] = v4;
    v0[4] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8EFE8, &unk_2179739E0);
    sub_217967C1C();

    OUTLINED_FUNCTION_40_2();
    if (v6)
    {
      v8 = v0[32];
      v7 = v0[33];
      v21 = v0[31];
      v0[5] = v3;
      v0[6] = v4;
      v0[7] = v5;
      sub_217967C1C();
      v9 = v0[14];
      v0[15] = v0[13];
      v0[16] = v9;
      v10 = sub_21796559C();
      sub_217873C34(v10, v11, v12);
      v13 = sub_21796947C();
      v15 = v14;
      (*(v8 + 8))(v7, v21);

      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = v13 & 0xFFFFFFFFFFFFLL;
      }

      if (v16)
      {
        v0[8] = v3;
        v0[9] = v4;
        v0[10] = v5;
        sub_217967C1C();
        sub_2179681DC();
      }
    }
  }

  v17 = swift_task_alloc();
  v0[40] = v17;
  *v17 = v0;
  v17[1] = sub_21794B8B4;
  OUTLINED_FUNCTION_102();

  return MEMORY[0x282124698](v18);
}

uint64_t sub_21794B8B4()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  v3 = *(v2 + 312);
  v4 = *(v2 + 304);
  if (v0)
  {
    v5 = sub_21794BBB8;
  }

  else
  {
    v5 = sub_21794B9F0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21794B9F0()
{
  v16 = v0[34];
  v17 = v0[36];
  v14 = v0[29];
  v15 = v0[35];
  v1 = v0[27];
  v12 = v0[30];
  v13 = v0[28];
  v2 = v0[25];
  v4 = v0[23];
  v3 = v0[24];

  sub_21796823C();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v4);
  OUTLINED_FUNCTION_41_4();
  v6(v5);
  sub_217967C4C();
  sub_217967C2C();
  v7 = *(v2 + 8);
  v7(v1, v3);
  sub_217967C1C();
  OUTLINED_FUNCTION_41_4();
  v9(v8);
  sub_217967C2C();
  v7(v1, v3);
  (*(v14 + 8))(v12, v13);
  (*(v15 + 8))(v17, v16);
  OUTLINED_FUNCTION_48_2();

  OUTLINED_FUNCTION_39();

  return v10();
}

uint64_t sub_21794BBB8()
{
  v23 = v0;
  v1 = v0[36];
  v2 = v0[34];
  v3 = v0[35];

  (*(v3 + 8))(v1, v2);
  if (qword_27CB8A480 != -1)
  {
    swift_once();
  }

  v4 = v0[41];
  v5 = sub_21796653C();
  __swift_project_value_buffer(v5, qword_27CB97B00);
  v6 = v4;
  v7 = sub_21796651C();
  v8 = sub_21796937C();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[41];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136446466;
    v13 = sub_2179697DC();
    v15 = sub_217957F4C(v13, v14, &v22);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    v0[19] = v10;
    v16 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A750, &unk_21796A930);
    v17 = sub_217968F8C();
    v19 = sub_217957F4C(v17, v18, &v22);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_217846000, v7, v8, "Failed to request items of type %{public}s from the user's music library. Error = %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA8ED0](v12, -1, -1);
    MEMORY[0x21CEA8ED0](v11, -1, -1);
  }

  else
  {
  }

  OUTLINED_FUNCTION_48_2();

  OUTLINED_FUNCTION_39();

  return v20();
}

double sub_21794BE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a2;
  v50 = a4;
  v55[0] = a2;
  v55[1] = a3;
  v55[2] = a4;
  v56 = a5;
  v46 = a5;
  v57 = a6;
  v9 = _s25LibrarySectionContentViewVMa(0, v55);
  v47 = *(v9 - 8);
  v44 = *(v47 + 64);
  MEMORY[0x28223BE20](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  MEMORY[0x28223BE20](v11 - 8);
  v43 = &v42 - v12;
  v13 = type metadata accessor for MusicPicker.Click.ControlID(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v9;
  sub_217956100();
  v16 = v56;
  if (v56)
  {
    v17 = v57;
    __swift_project_boxed_opaque_existential_1(v55, v56);
    *v15 = *(a1 + 32);
    swift_storeEnumTagMultiPayload();
    v19 = *(a1 + 48);
    v18 = *(a1 + 56);
    v20 = *(a1 + 64);
    v51[0] = *(a1 + 40);
    v52 = v19;
    v53 = v18;
    v54 = v20;
    v21 = *(v17 + 16);

    sub_217863EC4(v20);
    v21(v15, v51, v16, v17);
    v22 = v54;

    sub_2178643E0(v22);
    sub_21792C198(v15);
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  else
  {
    sub_2178653BC(v55, &qword_27CB8A630, qword_21796A7B0);
  }

  v24 = v48;
  _s9ViewModelCMa(0, a3, a6, v23);
  swift_getWitnessTable();
  sub_217966A9C();
  sub_2178D839C(*(a1 + 32) == 4, v25, v26, v27, v28, v29, v30, v31, v42, v43, v44, v45, v46, v47, SWORD2(v47), SBYTE6(v47), SHIBYTE(v47), v48, v49, v50, *v51, v52, v53, v54, v55[0]);

  v32 = sub_21796923C();
  __swift_storeEnumTagSinglePayload(v43, 1, 1, v32);
  v33 = v47;
  v34 = v45;
  (*(v47 + 16))(v45, a1, v24);
  sub_21796920C();
  v35 = sub_2179691FC();
  v36 = (*(v33 + 80) + 72) & ~*(v33 + 80);
  v37 = swift_allocObject();
  v38 = MEMORY[0x277D85700];
  *(v37 + 2) = v35;
  *(v37 + 3) = v38;
  v39 = v50;
  *(v37 + 4) = v49;
  *(v37 + 5) = a3;
  v40 = v46;
  *(v37 + 6) = v39;
  *(v37 + 7) = v40;
  *(v37 + 8) = a6;
  (*(v33 + 32))(&v37[v36], v34, v24);
  sub_2178D207C();

  return result;
}

uint64_t sub_21794C1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = sub_21796920C();
  v8[8] = sub_2179691FC();
  v13 = swift_task_alloc();
  v8[9] = v13;
  v8[2] = a5;
  v8[3] = a6;
  v8[4] = a7;
  v8[5] = a8;
  v8[6] = v17;
  v14 = _s25LibrarySectionContentViewVMa(0, (v8 + 2));
  *v13 = v8;
  v13[1] = sub_21794C2B8;

  return sub_21794C440(v14);
}

uint64_t sub_21794C2B8()
{
  OUTLINED_FUNCTION_62();
  v1 = *v0;
  OUTLINED_FUNCTION_6();
  *v2 = v1;

  v4 = sub_2179691BC();

  return MEMORY[0x2822009F8](sub_21794C3E8, v4, v3);
}

uint64_t sub_21794C3E8()
{
  OUTLINED_FUNCTION_62();

  OUTLINED_FUNCTION_39();

  return v0();
}

uint64_t sub_21794C440(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = sub_21796920C();
  v2[10] = sub_2179691FC();
  v4 = swift_task_alloc();
  v2[11] = v4;
  *v4 = v2;
  v4[1] = sub_21794C500;

  return sub_21794B458(a1);
}

uint64_t sub_21794C500()
{
  OUTLINED_FUNCTION_62();
  v1 = *v0;
  OUTLINED_FUNCTION_6();
  *v2 = v1;

  v4 = sub_2179691BC();

  return MEMORY[0x2822009F8](sub_21794C630, v4, v3);
}

uint64_t sub_21794C630()
{
  v9 = v0;

  sub_217956100();
  v1 = v0[5];
  if (v1)
  {
    v3 = v0[7];
    v2 = v0[8];
    v4 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v8 = *(v2 + *(v3 + 96));
    v5 = *(v4 + 8);
    sub_217863EC4(v8);
    v5(&v8, v1, v4);
    sub_2178643E0(v8);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  else
  {
    sub_2178653BC((v0 + 2), &qword_27CB8A630, qword_21796A7B0);
  }

  OUTLINED_FUNCTION_39();

  return v6();
}

uint64_t sub_21794C72C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v68 = a7;
  v69 = a6;
  v66 = a1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F018, &unk_217973A00);
  v58 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v57 = &v52 - v11;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F028, &qword_217972DF0);
  MEMORY[0x28223BE20](v61);
  v63 = &v52 - v12;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B880, &qword_21796C6A0);
  v60 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v59 = &v52 - v13;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F008, &unk_2179739F0);
  MEMORY[0x28223BE20](v67);
  v62 = &v52 - v14;
  v15 = sub_21796810C();
  v16 = sub_21796944C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v52 - v19;
  v21 = *(v15 - 8);
  MEMORY[0x28223BE20](v18);
  v23 = &v52 - v22;
  v53 = a2;
  *&v72 = a2;
  *(&v72 + 1) = a3;
  v54 = a3;
  v55 = a4;
  v73 = a4;
  v74 = a5;
  v56 = a5;
  v75 = v69;
  v24 = _s25LibrarySectionContentViewVMa(0, &v72);
  sub_217967C4C();
  v25 = v66;
  sub_217967C1C();
  if (__swift_getEnumTagSinglePayload(v20, 1, v15) == 1)
  {
    (*(v17 + 8))(v20, v16);
LABEL_9:
    v39 = 1;
    v40 = v68;
    return __swift_storeEnumTagSinglePayload(v40, v39, 1, v67);
  }

  (*(v21 + 32))(v23, v20, v15);
  swift_getWitnessTable();
  if ((sub_21796932C() & 1) == 0)
  {
    (*(v21 + 8))(v23, v15);
    goto LABEL_9;
  }

  v26 = v21;
  v27 = v25 + *(v24 + 84);
  v28 = *v27;
  v29 = *(v27 + 16);
  v72 = v28;
  v73 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8EFE8, &unk_2179739E0);
  sub_217967C1C();
  v31 = v70;
  v30 = v71;

  v33 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v33 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (v33)
  {
    v34 = v59;
    sub_2179670DC();
    v35 = v60;
    v36 = v64;
    (*(v60 + 16))(v63, v34, v64);
    swift_storeEnumTagMultiPayload();
    v37 = MEMORY[0x277CDE158];
    sub_217864B2C(&qword_27CB8B878, &qword_27CB8B880, &qword_21796C6A0, MEMORY[0x277CDE158]);
    sub_217864B2C(&qword_27CB8F010, &qword_27CB8F018, &unk_217973A00, v37);
    v38 = v62;
    sub_217966F8C();
    (*(v35 + 8))(v34, v36);
  }

  else
  {
    MEMORY[0x28223BE20](v32);
    v41 = v54;
    *(&v52 - 6) = v53;
    *(&v52 - 5) = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F030, &unk_217973A10);
    v42 = sub_217864B2C(qword_27CB8F038, &qword_27CB8F030, &unk_217973A10, MEMORY[0x277CDEFF0]);
    v50 = MEMORY[0x277CE0BC8];
    v51 = MEMORY[0x277CE1410];
    v48 = MEMORY[0x277CE1428];
    v49 = v42;
    v43 = v57;
    sub_2179670CC();
    v44 = v58;
    v45 = v65;
    (*(v58 + 16))(v63, v43, v65);
    swift_storeEnumTagMultiPayload();
    v46 = MEMORY[0x277CDE158];
    sub_217864B2C(&qword_27CB8B878, &qword_27CB8B880, &qword_21796C6A0, MEMORY[0x277CDE158]);
    sub_217864B2C(&qword_27CB8F010, &qword_27CB8F018, &unk_217973A00, v46);
    v38 = v62;
    sub_217966F8C();
    (*(v44 + 8))(v43, v45);
  }

  (*(v26 + 8))(v23, v15);
  v40 = v68;
  sub_21789A7AC(v38, v68, &qword_27CB8F008, &unk_2179739F0);
  v39 = 0;
  return __swift_storeEnumTagSinglePayload(v40, v39, 1, v67);
}

uint64_t sub_21794CF00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_217967BAC();
  *a1 = result;
  return result;
}

uint64_t sub_21794CF38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_217873C34(a1, a2, a3);

  result = sub_21796763C();
  *a4 = result;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7 & 1;
  *(a4 + 24) = v8;
  return result;
}

uint64_t sub_21794CFA4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v29 = a6;
  v30 = a4;
  v31 = a1;
  v32 = a7;
  v11 = sub_21796810C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = a2;
  v42 = a3;
  v43 = a5;
  v44 = a6;
  _s13ItemShelfCellVMa(255, &v41);
  sub_21796698C();
  v13 = sub_21796698C();
  WitnessTable = swift_getWitnessTable();
  v15 = MEMORY[0x277CDF918];
  v48 = WitnessTable;
  v49 = MEMORY[0x277CDF918];
  v46 = swift_getWitnessTable();
  v47 = v15;
  v16 = swift_getWitnessTable();
  v41 = v13;
  v42 = v16;
  swift_getOpaqueTypeMetadata2();
  sub_21796732C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  swift_getTupleTypeMetadata2();
  v17 = sub_217967E9C();
  v18 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v41 = v11;
  v42 = AssociatedTypeWitness;
  v43 = v17;
  v44 = v18;
  v45 = AssociatedConformanceWitness;
  sub_217967D9C();
  sub_21796944C();
  v40 = swift_getWitnessTable();
  v39 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21796665C();
  swift_getWitnessTable();
  v20 = sub_21796666C();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v29 - v25;
  sub_2179673DC();
  v33 = a2;
  v34 = a3;
  v35 = v30;
  v36 = a5;
  v37 = v29;
  v38 = v31;
  sub_21796667C();
  swift_getWitnessTable();
  sub_2179560E4();
  v27 = *(v21 + 8);
  v27(v24, v20);
  sub_2179560E4();
  return (v27)(v26, v20);
}

uint64_t sub_21794D3DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v39 = a6;
  v38 = a5;
  v40 = a4;
  v42 = a1;
  v43 = a7;
  v11 = sub_21796708C();
  MEMORY[0x28223BE20](v11 - 8);
  v41 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21796810C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = a2;
  v53 = a3;
  v54 = a5;
  v55 = a6;
  _s13ItemShelfCellVMa(255, &v52);
  sub_21796698C();
  v15 = sub_21796698C();
  WitnessTable = swift_getWitnessTable();
  v17 = MEMORY[0x277CDF918];
  v59 = WitnessTable;
  v60 = MEMORY[0x277CDF918];
  v57 = swift_getWitnessTable();
  v58 = v17;
  v18 = swift_getWitnessTable();
  v52 = v15;
  v53 = v18;
  swift_getOpaqueTypeMetadata2();
  sub_21796732C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  swift_getTupleTypeMetadata2();
  v19 = sub_217967E9C();
  v20 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v52 = v13;
  v53 = AssociatedTypeWitness;
  v54 = v19;
  v55 = v20;
  v56 = AssociatedConformanceWitness;
  sub_217967D9C();
  v22 = sub_21796944C();
  v51 = swift_getWitnessTable();
  v50 = swift_getWitnessTable();
  v37[3] = v22;
  v37[2] = swift_getWitnessTable();
  v23 = sub_21796665C();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = v37 - v28;
  v37[1] = sub_217966E6C();
  v30 = a2;
  v52 = a2;
  v53 = a3;
  v31 = a3;
  v32 = v40;
  v33 = v38;
  v54 = v40;
  v55 = v38;
  v34 = v39;
  v56 = v39;
  _s25LibrarySectionContentViewVMa(0, &v52);
  v44 = v30;
  v45 = v31;
  v46 = v32;
  v47 = v33;
  v48 = v34;
  v49 = v42;
  sub_21789A9E0();
  sub_21796664C();
  swift_getWitnessTable();
  sub_2179560E4();
  v35 = *(v24 + 8);
  v35(v27, v23);
  sub_2179560E4();
  return (v35)(v29, v23);
}

uint64_t sub_21794D8BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v88 = a1;
  v91 = a7;
  v101 = a2;
  v102 = a3;
  v103 = a4;
  v104 = a5;
  v105 = a6;
  v92 = _s25LibrarySectionContentViewVMa(0, &v101);
  v78 = *(v92 - 8);
  v74 = *(v78 + 64);
  MEMORY[0x28223BE20](v92);
  v75 = &v65 - v12;
  v81 = a4;
  v13 = sub_21796810C();
  v14 = *(a5 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v101 = a2;
  v102 = a3;
  v80 = a3;
  v82 = a5;
  v103 = a5;
  v104 = a6;
  v83 = a6;
  _s13ItemShelfCellVMa(255, &v101);
  sub_21796698C();
  v16 = sub_21796698C();
  WitnessTable = swift_getWitnessTable();
  v18 = MEMORY[0x277CDF918];
  v99 = WitnessTable;
  v100 = MEMORY[0x277CDF918];
  v97 = swift_getWitnessTable();
  v98 = v18;
  v19 = swift_getWitnessTable();
  v101 = v16;
  v102 = v19;
  swift_getOpaqueTypeMetadata2();
  sub_21796732C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  swift_getTupleTypeMetadata2();
  v20 = sub_217967E9C();
  v21 = swift_getWitnessTable();
  v77 = v14;
  v79 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v101 = v13;
  v102 = AssociatedTypeWitness;
  v76 = AssociatedTypeWitness;
  v90 = v20;
  v103 = v20;
  v104 = v21;
  v70 = v21;
  v105 = AssociatedConformanceWitness;
  v23 = sub_217967D9C();
  v73 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v72 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v71 = &v65 - v26;
  v27 = sub_21796944C();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v65 - v30;
  v69 = *(v13 - 8);
  v32 = *(v69 + 64);
  v33 = MEMORY[0x28223BE20](v29);
  v84 = &v65 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v33);
  v85 = &v65 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = &v65 - v36;
  v38 = sub_21796944C();
  v89 = *(v38 - 8);
  v39 = MEMORY[0x28223BE20](v38);
  v86 = &v65 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v87 = &v65 - v41;
  sub_217967C4C();
  v42 = v88;
  sub_217967C1C();
  if (__swift_getEnumTagSinglePayload(v31, 1, v13) == 1)
  {
    (*(v28 + 8))(v31, v27);
    v43 = v86;
    __swift_storeEnumTagSinglePayload(v86, 1, 1, v23);
    v96 = swift_getWitnessTable();
    swift_getWitnessTable();
  }

  else
  {
    v44 = v69;
    v67 = v23;
    v65 = *(v69 + 32);
    v45 = v37;
    v65(v37, v31, v13);
    v46 = *(v44 + 16);
    v66 = v37;
    v46(v85, v37, v13);
    v68 = v38;
    v47 = v78;
    v48 = v75;
    v49 = v42;
    v50 = v92;
    (*(v78 + 16))(v75, v49, v92);
    v46(v84, v45, v13);
    v51 = (*(v47 + 80) + 56) & ~*(v47 + 80);
    v52 = (v74 + v51 + *(v44 + 80)) & ~*(v44 + 80);
    v53 = swift_allocObject();
    v54 = v80;
    *(v53 + 2) = v79;
    *(v53 + 3) = v54;
    v55 = v82;
    *(v53 + 4) = v81;
    *(v53 + 5) = v55;
    *(v53 + 6) = v83;
    (*(v47 + 32))(&v53[v51], v48, v50);
    v38 = v68;
    v65(&v53[v52], v84, v13);
    v56 = v67;
    v57 = swift_getWitnessTable();
    v58 = v72;
    sub_217967D8C();
    (*(v44 + 8))(v66, v13);
    v93 = v57;
    swift_getWitnessTable();
    v59 = v71;
    sub_2179560E4();
    v60 = v73;
    v61 = *(v73 + 8);
    v61(v58, v56);
    sub_2179560E4();
    v61(v59, v56);
    v43 = v86;
    (*(v60 + 32))(v86, v58, v56);
    __swift_storeEnumTagSinglePayload(v43, 0, 1, v56);
  }

  v62 = v87;
  sub_2178AEE20(v43, v87);
  v63 = *(v89 + 8);
  v63(v43, v38);
  v95 = swift_getWitnessTable();
  v94 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2179560E4();
  return (v63)(v62, v38);
}

uint64_t sub_21794E290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(char *, uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v150 = a7;
  v157 = a6;
  v144 = a3;
  v155 = a2;
  v164 = a1;
  v149 = a9;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A780, &qword_21796C770);
  MEMORY[0x28223BE20](v148);
  v124 = &v121 - v13;
  v14 = sub_21796944C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v123 = *(TupleTypeMetadata2 - 8);
  v15 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v163 = &v121 - v16;
  v143 = v14;
  v142 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v122 = &v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v153 = &v121 - v20;
  MEMORY[0x28223BE20](v19);
  v154 = &v121 - v21;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v22 = MEMORY[0x28223BE20](v145);
  v147 = &v121 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v146 = &v121 - v24;
  v137 = sub_21796722C();
  v136 = *(v137 - 8);
  v25 = MEMORY[0x28223BE20](v137);
  v135 = &v121 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = *(a4 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v121 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v168 = a4;
  *(&v168 + 1) = a5;
  v169 = a7;
  v170 = a8;
  v29 = _s13ItemShelfCellVMa(0, &v168);
  v134 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v131 = &v121 - v30;
  v126 = v29;
  v31 = sub_21796698C();
  v133 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v130 = &v121 - v32;
  v128 = v31;
  v33 = sub_21796698C();
  v132 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v129 = &v121 - v34;
  WitnessTable = swift_getWitnessTable();
  v35 = MEMORY[0x277CDF918];
  v174 = WitnessTable;
  v175 = MEMORY[0x277CDF918];
  v127 = swift_getWitnessTable();
  v172 = v127;
  v173 = v35;
  v156 = swift_getWitnessTable();
  *&v168 = v33;
  *(&v168 + 1) = v156;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v140 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v38 = &v121 - v37;
  sub_21796732C();
  v141 = OpaqueTypeMetadata2;
  v162 = sub_21796698C();
  v158 = *(v162 - 8);
  v39 = MEMORY[0x28223BE20](v162);
  v161 = &v121 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v159 = &v121 - v41;
  v42 = *(v151 + 16);
  v43 = v28;
  v139 = v151 + 16;
  v138 = v42;
  v42(v28, v164, a4);
  *&v168 = a4;
  *(&v168 + 1) = a5;
  v44 = v150;
  v169 = v157;
  v170 = v150;
  v171 = a8;
  v45 = _s25LibrarySectionContentViewVMa(0, &v168);
  v46 = v155 + *(v45 + 100);
  v48 = *(v46 + 8);
  v47 = *(v46 + 16);
  v49 = *(v46 + 24);
  LOBYTE(v168) = *v46;
  *(&v168 + 1) = v48;
  v169 = v47;
  v170 = v49;

  sub_217863EC4(v49);
  v50 = sub_2178AA2C4();
  v120 = a5;
  v160 = a4;
  v119 = a5;
  v51 = v131;
  v121 = v43;
  sub_21791B630(v43, &v168, 0, 0, 11, 0, 1, v50, v131, v52, v53, v119, a4, v120, v44, a8);
  sub_21796742C();
  v54 = v130;
  v55 = v126;
  sub_217967A0C();
  (*(v134 + 8))(v51, v55);
  sub_21796743C();
  v134 = v45;
  v56 = v129;
  v57 = v128;
  sub_217967A0C();
  (*(v133 + 8))(v54, v57);
  v58 = v135;
  sub_21796720C();
  sub_2179678AC();
  (*(v136 + 8))(v58, v137);
  (*(v132 + 8))(v56, v33);
  if (qword_27CB8A3E8 != -1)
  {
    swift_once();
  }

  v59 = xmmword_27CB979C8;
  v60 = qword_27CB979D8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7E8, &unk_21796A990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21796A340;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;

  v62 = v160;
  v63 = sub_21796849C();
  *(inited + 72) = MEMORY[0x277CD7E90];
  *(inited + 48) = v63;
  *(inited + 56) = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7F0, &unk_21796B180);
  v65 = sub_217968EAC();
  v168 = v59;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](1819043139, 0xE400000000000000);

  sub_2178ED924(v65, v168, *(&v168 + 1), v60);
  v67 = v66;
  v69 = v68;
  v71 = v70;

  *&v168 = v33;
  *(&v168 + 1) = v156;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v73 = v161;
  v74 = v67;
  v75 = v141;
  sub_2178ED854(v74, v69, v71, v141, OpaqueTypeConformance2);

  (*(v140 + 8))(v38, v75);
  v76 = sub_21792C55C(&qword_27CB8A710, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v167[2] = OpaqueTypeConformance2;
  v167[3] = v76;
  v77 = v162;
  v156 = swift_getWitnessTable();
  sub_2179560E4();
  v157 = *(v158 + 8);
  v141 = v158 + 8;
  v157(v73, v77);
  v78 = v154;
  v79 = v164;
  v138(v154, v164, v62);
  __swift_storeEnumTagSinglePayload(v78, 0, 1, v62);
  sub_21796810C();
  swift_getWitnessTable();
  v80 = v153;
  sub_217968EEC();
  v81 = *(TupleTypeMetadata2 + 48);
  v82 = v142;
  v83 = *(v142 + 16);
  v84 = v163;
  v85 = v143;
  v83(v163, v78, v143);
  v83((v84 + v81), v80, v85);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v84, 1, v62);
  v87 = v82;
  if (EnumTagSinglePayload != 1)
  {
    v97 = v122;
    v98 = v163;
    v83(v122, v163, v85);
    v99 = v160;
    v100 = __swift_getEnumTagSinglePayload(&v98[v81], 1, v160);
    v89 = v98;
    v101 = v99;
    if (v100 != 1)
    {
      v115 = v151;
      v116 = v121;
      (*(v151 + 32))(v121, &v89[v81], v101);
      LODWORD(TupleTypeMetadata2) = sub_217968F1C();
      v117 = *(v115 + 8);
      v117(v116, v101);
      v118 = *(v87 + 8);
      v118(v153, v85);
      v118(v154, v85);
      v117(v97, v101);
      v118(v89, v85);
      v91 = v162;
      v96 = v161;
      v92 = v158;
      if (TupleTypeMetadata2)
      {
        v93 = 1;
        v94 = v148;
        v95 = v146;
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v102 = *(v87 + 8);
    v102(v153, v85);
    v102(v154, v85);
    (*(v151 + 8))(v97, v99);
    v91 = v162;
    v92 = v158;
LABEL_8:
    (*(v123 + 8))(v89, TupleTypeMetadata2);
    v96 = v161;
LABEL_9:
    v103 = v124;
    sub_217967D6C();
    v104 = sub_21796742C();
    sub_21794F40C(v79, v134);
    sub_21796660C();
    v94 = v148;
    v105 = &v103[*(v148 + 36)];
    *v105 = v104;
    *(v105 + 1) = v106;
    *(v105 + 2) = v107;
    *(v105 + 3) = v108;
    *(v105 + 4) = v109;
    v105[40] = 0;
    v110 = v103;
    v95 = v146;
    sub_21789A7AC(v110, v146, &qword_27CB8A780, &qword_21796C770);
    v93 = 0;
    goto LABEL_10;
  }

  v88 = *(v82 + 8);
  v88(v80, v85);
  v88(v78, v85);
  v89 = v163;
  v90 = __swift_getEnumTagSinglePayload(&v163[v81], 1, v160);
  v91 = v162;
  v92 = v158;
  if (v90 != 1)
  {
    goto LABEL_8;
  }

  v88(v89, v85);
  v93 = 1;
  v94 = v148;
  v95 = v146;
  v96 = v161;
LABEL_10:
  v111 = v159;
  __swift_storeEnumTagSinglePayload(v95, v93, 1, v94);
  (*(v92 + 16))(v96, v111, v91);
  *&v168 = v96;
  v112 = v147;
  sub_2178D0634(v95, v147);
  *(&v168 + 1) = v112;
  v167[0] = v91;
  v167[1] = v145;
  v165 = v156;
  v166 = sub_2179504C0(&qword_27CB8A7B8, &qword_27CB8A6E0, &qword_21796A8E0, sub_217864C64);
  sub_2178B9390(&v168, 2, v167);
  sub_2178653BC(v95, &qword_27CB8A6E0, &qword_21796A8E0);
  v113 = v157;
  v157(v111, v91);
  sub_2178653BC(v112, &qword_27CB8A6E0, &qword_21796A8E0);
  return v113(v96, v91);
}

double sub_21794F40C(uint64_t a1, uint64_t a2)
{
  sub_217938234();
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v6 = (*(v5 + 104))(v4, v5) * 48.0;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6 + *(v2 + *(a2 + 108));
}

uint64_t sub_21794F4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BB68, &qword_21796C930);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v42 - v15;
  *&v44 = a3;
  *(&v44 + 1) = a4;
  v45 = a5;
  v46 = a6;
  v47 = a7;
  v17 = (a2 + *(_s25LibrarySectionContentViewVMa(0, &v44) + 84));
  v18 = *v17;
  v19 = *(v17 + 2);
  v44 = v18;
  v45 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8EFE8, &unk_2179739E0);
  sub_217967C1C();
  v44 = v43;
  sub_21796580C();
  v20 = sub_21796581C();
  v21 = __swift_storeEnumTagSinglePayload(v16, 0, 1, v20);
  sub_217873C34(v21, v22, v23);
  v48 = sub_21796948C();
  v25 = v24;
  sub_2178653BC(v16, &qword_27CB8BB68, &qword_21796C930);

  v26 = *(a6 + 64);
  v42[1] = a1;
  v27 = v26(a3, a6);
  if (v28 && (*&v44 = v27, *(&v44 + 1) = v28, sub_21796580C(), __swift_storeEnumTagSinglePayload(v16, 0, 1, v20), v42[0] = a3, v29 = sub_21796948C(), v30 = v20, v31 = v25, v33 = v32, sub_2178653BC(v16, &qword_27CB8BB68, &qword_21796C930), , *&v44 = v29, *(&v44 + 1) = v33, *&v43 = v48, *(&v43 + 1) = v31, a3 = v42[0], LOBYTE(v29) = sub_21796949C(), v25 = v31, v20 = v30, , (v29 & 1) != 0))
  {

    v34 = 1;
  }

  else
  {
    v35 = v48;
    v36 = (*(a6 + 72))(a3, a6);
    if (v37)
    {
      *&v44 = v36;
      *(&v44 + 1) = v37;
      sub_21796580C();
      __swift_storeEnumTagSinglePayload(v16, 0, 1, v20);
      v38 = sub_21796948C();
      v40 = v39;
      sub_2178653BC(v16, &qword_27CB8BB68, &qword_21796C930);

      *&v44 = v38;
      *(&v44 + 1) = v40;
      *&v43 = v35;
      *(&v43 + 1) = v25;
      v34 = sub_21796949C();
    }

    else
    {

      v34 = 0;
    }
  }

  return v34 & 1;
}

uint64_t sub_21794F804(double a1, double a2, double a3, double a4)
{
  sub_21796973C();
  sub_2178D12D0(a1, a2, a3, a4);
  return sub_21796977C();
}

uint64_t sub_21794F908(uint64_t a1)
{
  sub_21796973C();
  sub_2178D12D0(*v1, v1[1], v1[2], v1[3]);
  return sub_21796977C();
}

uint64_t sub_21794F9EC(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v12[0] = v1[2];
  v2 = v12[0];
  v12[1] = v3;
  v12[2] = v4;
  v12[3] = v5;
  v12[4] = v6;
  v7 = _s25LibrarySectionContentViewVMa(0, v12);
  OUTLINED_FUNCTION_48(v7);
  v9 = v1 + ((*(v8 + 80) + 56) & ~*(v8 + 80));

  return a1(v9, v2, v3, v4, v5, v6);
}

unint64_t sub_21794FAB8()
{
  result = qword_27CB8F000;
  if (!qword_27CB8F000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F008, &unk_2179739F0);
    v1 = MEMORY[0x277CDE158];
    sub_217864B2C(&qword_27CB8B878, &qword_27CB8B880, &qword_21796C6A0, MEMORY[0x277CDE158]);
    sub_217864B2C(&qword_27CB8F010, &qword_27CB8F018, &unk_217973A00, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8F000);
  }

  return result;
}

uint64_t sub_21794FBA8()
{
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v1[2] = v0[4];
  v1[3] = v2;
  v1[4] = v3;
  v1[5] = v4;
  v1[6] = v5;
  v6 = _s25LibrarySectionContentViewVMa(0, (v1 + 2));
  OUTLINED_FUNCTION_48(v6);
  v7 = swift_task_alloc();
  v1[7] = v7;
  *v7 = v1;
  OUTLINED_FUNCTION_19_8(v7);
  OUTLINED_FUNCTION_102();

  return sub_21794C1C0(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t objectdestroy_22Tm()
{
  v3 = *(v1 + 64);
  v22 = *(v1 + 48);
  v24[0] = *(v1 + 32);
  v23 = *&v24[0];
  v24[1] = v22;
  v25 = v3;
  _s25LibrarySectionContentViewVMa(0, v24);
  OUTLINED_FUNCTION_13();
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  swift_unknownObjectRelease();

  v6 = sub_2178643E0(*(v1 + v5 + 64));
  OUTLINED_FUNCTION_32_4(v6, v7, v8, v9, v10, v11, v12, v13, v22, *(&v22 + 1), v23);
  OUTLINED_FUNCTION_3();
  (*(v14 + 8))(v1 + v5 + v2);

  v15 = v1 + v5 + *(v0 + 80);
  if (*(v15 + 40))
  {
    if (*(v15 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v15);
    }
  }

  else
  {
  }

  v16 = OUTLINED_FUNCTION_39_6();
  if (!OUTLINED_FUNCTION_33_1())
  {
    OUTLINED_FUNCTION_10();
    v17 = OUTLINED_FUNCTION_140();
    v18(v17);
  }

  OUTLINED_FUNCTION_48_0();
  sub_21796944C();
  OUTLINED_FUNCTION_95_0();
  sub_217967C4C();

  if (!OUTLINED_FUNCTION_33_1())
  {
    OUTLINED_FUNCTION_10();
    v19 = OUTLINED_FUNCTION_140();
    v20(v19);
  }

  OUTLINED_FUNCTION_49_5();
  sub_2178643E0(*(v16 + 24));

  return swift_deallocObject();
}

uint64_t sub_21794FEBC()
{
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v1[2] = v0[4];
  v1[3] = v2;
  v1[4] = v3;
  v1[5] = v4;
  v1[6] = v5;
  v6 = _s25LibrarySectionContentViewVMa(0, (v1 + 2));
  OUTLINED_FUNCTION_48(v6);
  v7 = swift_task_alloc();
  v1[7] = v7;
  *v7 = v1;
  OUTLINED_FUNCTION_19_8(v7);
  OUTLINED_FUNCTION_102();

  return sub_21794ABEC(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_21794FFBC()
{
  OUTLINED_FUNCTION_62();
  v1 = *v0;
  OUTLINED_FUNCTION_6();
  *v2 = v1;

  OUTLINED_FUNCTION_39();

  return v3();
}

uint64_t objectdestroy_16Tm()
{
  v3 = *(v1 + 48);
  v22 = *(v1 + 32);
  v24[0] = *(v1 + 16);
  v23 = *&v24[0];
  v24[1] = v22;
  v25 = v3;
  _s25LibrarySectionContentViewVMa(0, v24);
  OUTLINED_FUNCTION_13();
  v5 = v1 + ((*(v4 + 80) + 56) & ~*(v4 + 80));

  v6 = sub_2178643E0(*(v5 + 64));
  OUTLINED_FUNCTION_32_4(v6, v7, v8, v9, v10, v11, v12, v13, v22, *(&v22 + 1), v23);
  OUTLINED_FUNCTION_3();
  (*(v14 + 8))(v5 + v2);

  v15 = v5 + *(v0 + 80);
  if (*(v15 + 40))
  {
    if (*(v15 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v15);
    }
  }

  else
  {
  }

  v16 = OUTLINED_FUNCTION_39_6();
  if (!OUTLINED_FUNCTION_33_1())
  {
    OUTLINED_FUNCTION_10();
    v17 = OUTLINED_FUNCTION_140();
    v18(v17);
  }

  OUTLINED_FUNCTION_48_0();
  sub_21796944C();
  OUTLINED_FUNCTION_95_0();
  sub_217967C4C();

  if (!OUTLINED_FUNCTION_33_1())
  {
    OUTLINED_FUNCTION_10();
    v19 = OUTLINED_FUNCTION_140();
    v20(v19);
  }

  OUTLINED_FUNCTION_49_5();
  sub_2178643E0(*(v16 + 24));

  return swift_deallocObject();
}

uint64_t sub_2179502D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = OUTLINED_FUNCTION_27_7(a1, a2, a3, a4, a5, a6, a7, a8, v19, v20, v21, v22, v23, v24);
  OUTLINED_FUNCTION_48(v15);
  v17 = v8 + ((*(v16 + 80) + 56) & ~*(v16 + 80));

  return sub_21794CFA4(v17, v10, v11, v12, v13, v14, v9);
}

uint64_t sub_2179503B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(OUTLINED_FUNCTION_27_7(a1, a2, a3, a4, a5, a6, a7, a8, v23, v24, v25, v26, v27, v28) - 8);
  v17 = (*(v16 + 80) + 56) & ~*(v16 + 80);
  v18 = v17 + *(v16 + 64);
  v19 = sub_21796810C();
  OUTLINED_FUNCTION_48(v19);
  v21 = v9 + ((v18 + *(v20 + 80)) & ~*(v20 + 80));

  return sub_21794E290(v8, v9 + v17, v21, v11, v12, v13, v14, v15, v10);
}

uint64_t sub_2179504C0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    OUTLINED_FUNCTION_0_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_19_8(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v3 + 16) = v2;
  return *(v3 + 24);
}

uint64_t OUTLINED_FUNCTION_22_6(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_23_8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_26_6()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_27_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = v14[3];
  v17 = v14[4];
  v18 = v14[5];
  v19 = v14[6];
  a10 = v14[2];
  a11 = v16;
  a12 = v17;
  a13 = v18;
  a14 = v19;

  return _s25LibrarySectionContentViewVMa(0, &a10);
}

uint64_t OUTLINED_FUNCTION_28_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_32_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return sub_21796821C();
}

uint64_t OUTLINED_FUNCTION_33_1()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_36_6()
{
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v3);

  return sub_217948B28(v0, v1, v4, v2);
}

uint64_t OUTLINED_FUNCTION_39_6()
{

  return sub_21796810C();
}

uint64_t OUTLINED_FUNCTION_46_4(uint64_t a1)
{

  return sub_21796698C();
}

uint64_t OUTLINED_FUNCTION_47_5@<X0>(uint64_t a1@<X8>)
{

  return __swift_getEnumTagSinglePayload(v2 + a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_48_2()
{
}

uint64_t OUTLINED_FUNCTION_49_5()
{
  sub_2178643E0(*(v1 + *(v0 + 96)));
}

void *sub_217950850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char *a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, const void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v20 = *a6;
  v28 = *(a6 + 8);
  v21 = *(a6 + 3);
  v33[0] = a13;
  v33[1] = a14;
  v33[2] = a15;
  v33[3] = a16;
  v22 = _s12ItemShelfRowVMa(0, v33);
  v23 = v22[13];
  sub_21796810C();
  OUTLINED_FUNCTION_3();
  (*(v24 + 32))(&a9[v23], a1);
  v25 = &a9[v22[14]];
  *v25 = a2;
  *(v25 + 1) = a3;
  *(v25 + 2) = a4;
  a9[v22[15]] = a5;
  v26 = &a9[v22[16]];
  *v26 = v20;
  *(v26 + 8) = v28;
  *(v26 + 3) = v21;
  a9[v22[17]] = a7;
  result = memcpy(&a9[v22[18]], a12, 0x58uLL);
  *a9 = a8;
  *(a9 + 1) = a10;
  *(a9 + 2) = a11;
  return result;
}

void sub_2179509C0(void *a1)
{
  sub_2178BFC6C(319, qword_27CB8DA00, MEMORY[0x277D83B88], MEMORY[0x277CE11F8]);
  if (v3 <= 0x3F)
  {
    v20 = 0;
    v26 = v2;
    v4 = a1[2];
    v5 = a1[4];
    v6 = sub_21796810C();
    if (v7 <= 0x3F)
    {
      v21 = 0;
      v27 = v6;
      v8 = a1[3];
      v9 = a1[5];
      v16 = v4;
      v17 = v8;
      v18 = v5;
      v19 = v9;
      v10 = _s9ItemShelfV12ColumnLayoutVMa(319, &v16);
      if (v11 <= 0x3F)
      {
        v22 = 0;
        v28 = v10;
        sub_2178BFC6C(319, &qword_27CB8ACD0, &_s8ModuleIDON, MEMORY[0x277D83D88]);
        if (v13 <= 0x3F)
        {
          v23 = 0;
          v29 = v12;
          v30 = &type metadata for MusicPicker.Click.SourceContext;
          v24 = 0;
          v31 = MEMORY[0x277D839B0];
          v16 = v4;
          v17 = v8;
          v18 = v5;
          v19 = v9;
          v14 = _s9ItemShelfV9ConstantsVMa(319, &v16);
          if (v15 <= 0x3F)
          {
            v25 = 0;
            v32 = v14;
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_217950B98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8DA88, &qword_2179709E8);
  sub_217967D3C();
  return v1;
}

uint64_t sub_217950BF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_2179669FC();
  OUTLINED_FUNCTION_0_1();
  v43 = v4;
  MEMORY[0x28223BE20](v5);
  v42 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8DD38, &qword_217970EF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v36 = a1;
  v8 = a1[2];
  v39 = a1[3];
  v40 = v8;
  v9 = a1[4];
  v37 = a1[5];
  v38 = v9;
  v51 = v8;
  v52 = v39;
  v53 = v9;
  v54 = v37;
  _s13ItemShelfCellVMa(255, &v51);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F0C0, &unk_217972EA0);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BB08, &qword_21796C8C0);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  OUTLINED_FUNCTION_9();
  swift_getTupleTypeMetadata2();
  v10 = sub_217967E9C();
  v11 = sub_217926268();
  v51 = v7;
  v52 = MEMORY[0x277D83B88];
  v53 = v10;
  v54 = v11;
  v55 = MEMORY[0x277D83B98];
  sub_217967D9C();
  OUTLINED_FUNCTION_19_0();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  swift_getWitnessTable();
  v12 = sub_217967CDC();
  OUTLINED_FUNCTION_0_1();
  v35 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  OUTLINED_FUNCTION_7_1();
  v17 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_17();
  v20 = sub_217952480(v18, v19, MEMORY[0x277CDDB08]);
  v51 = v12;
  v52 = v3;
  v21 = v3;
  v53 = v17;
  v54 = v20;
  v33 = MEMORY[0x277CDE668];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_1();
  v34 = v23;
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v33 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v33 - v28;
  sub_217966E6C();
  v45 = v40;
  v46 = v39;
  v47 = v38;
  v48 = v37;
  v49 = v41;
  sub_217967CCC();
  v30 = v42;
  sub_2179669EC();
  sub_2179676FC();
  (*(v43 + 8))(v30, v21);
  (*(v35 + 8))(v16, v12);
  v51 = v12;
  v52 = v21;
  v53 = v17;
  v54 = v20;
  swift_getOpaqueTypeConformance2();
  sub_2179560E4();
  v31 = *(v34 + 8);
  v31(v27, OpaqueTypeMetadata2);
  sub_2179560E4();
  return (v31)(v29, OpaqueTypeMetadata2);
}

uint64_t sub_217951088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a1;
  v41 = a6;
  v43 = a2;
  v44 = a3;
  v36 = a2;
  v37 = a3;
  v45 = a4;
  v46 = a5;
  v38 = a4;
  v39 = a5;
  v10 = _s12ItemShelfRowVMa(0, &v43);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v35 = &KeyPath - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8DD38, &qword_217970EF0);
  v34 = v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v43 = a2;
  v44 = a3;
  v45 = a4;
  v46 = a5;
  _s13ItemShelfCellVMa(255, &v43);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F0C0, &unk_217972EA0);
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BB08, &qword_21796C8C0);
  sub_21796698C();
  swift_getTupleTypeMetadata2();
  v14 = sub_217967E9C();
  v33 = sub_217926268();
  v43 = v13;
  v44 = MEMORY[0x277D83B88];
  v45 = v14;
  v46 = v33;
  v47 = MEMORY[0x277D83B98];
  v15 = sub_217967D9C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &KeyPath - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &KeyPath - v20;
  v22 = v40;
  v23 = *(*(v40 + *(v10 + 56)) + 16);
  v43 = 0;
  v44 = v23;
  KeyPath = swift_getKeyPath();
  v24 = v35;
  (*(v11 + 16))(v35, v22, v10);
  v25 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v26 = swift_allocObject();
  v27 = v37;
  *(v26 + 2) = v36;
  *(v26 + 3) = v27;
  v28 = v39;
  *(v26 + 4) = v38;
  *(v26 + 5) = v28;
  (*(v11 + 32))(&v26[v25], v24, v10);
  WitnessTable = swift_getWitnessTable();
  sub_217967D7C();
  v42 = WitnessTable;
  swift_getWitnessTable();
  sub_2179560E4();
  v29 = *(v16 + 8);
  v29(v19, v15);
  sub_2179560E4();
  return (v29)(v21, v15);
}

int *sub_217951464@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v122 = a7;
  v123 = a2;
  v120 = sub_217966A2C();
  MEMORY[0x28223BE20](v120);
  v13 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_217967E0C();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v103 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B2A8, &qword_21796B988);
  v15 = MEMORY[0x28223BE20](v115);
  v116 = &v95 - v16;
  v102 = *(a3 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v101 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v125 = &v95 - v19;
  v129 = a3;
  v130 = a4;
  v131 = a5;
  v132 = a6;
  v20 = _s13ItemShelfCellVMa(0, &v129);
  v108 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v106 = &v95 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F0C0, &unk_217972EA0);
  v109 = v20;
  v22 = sub_21796698C();
  v113 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v111 = &v95 - v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BB08, &qword_21796C8C0);
  v114 = v22;
  v121 = sub_21796698C();
  v117 = *(v121 - 8);
  v24 = MEMORY[0x28223BE20](v121);
  v119 = &v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v110 = &v95 - v27;
  MEMORY[0x28223BE20](v26);
  v118 = &v95 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A780, &qword_21796C770);
  MEMORY[0x28223BE20](v29);
  v31 = &v95 - v30;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v32 = MEMORY[0x28223BE20](v107);
  v112 = &v95 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = &v95 - v34;
  v36 = *a1;
  v124 = &v95 - v34;
  if (v36)
  {
    sub_217967D6C();
    v37 = sub_21796742C();
    v129 = a3;
    v130 = a4;
    v131 = a5;
    v132 = a6;
    _s12ItemShelfRowVMa(0, &v129);
    v38 = a5;
    v39 = v123;
    sub_21796660C();
    v40 = &v31[*(v29 + 36)];
    *v40 = v37;
    v35 = v124;
    *(v40 + 1) = v41;
    *(v40 + 2) = v42;
    *(v40 + 3) = v43;
    *(v40 + 4) = v44;
    v40[40] = 0;
    sub_2178D05C4(v31, v35);
    v45 = 0;
  }

  else
  {
    v38 = a5;
    v39 = v123;
    v45 = 1;
  }

  __swift_storeEnumTagSinglePayload(v35, v45, 1, v29);
  v129 = a3;
  v130 = a4;
  v131 = v38;
  v132 = a6;
  v123 = a6;
  result = _s12ItemShelfRowVMa(0, &v129);
  if ((v36 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v47 = result;
  v100 = v13;
  v48 = v39 + result[14];
  v49 = *v48;
  if (v36 >= *(*v48 + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v50 = v39;
  v98 = v39 + result[14];
  v99 = a4;
  sub_21796810C();
  v97 = v38;
  sub_21796812C();
  v51 = v39 + v47[16];
  v52 = *(v51 + 8);
  result = *(v51 + 16);
  v53 = *(v51 + 24);
  LOBYTE(v129) = *v51;
  v130 = v52;
  v131 = result;
  v132 = v53;
  if (v36 >= *(v49 + 16))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_217863EC4(v53);
  v54 = v101;
  sub_21796812C();
  v55 = v99;
  v56 = a3;
  v57 = v97;
  v58 = v123;
  v96 = sub_217951FEC(v54, *(v50 + v47[17]), a3);
  v60 = v59;
  (*(v102 + 8))(v54, v56);
  v61 = *(v98 + 16);
  v62 = *(v50 + v47[15]);
  v63 = sub_217950B98();
  v94 = v58;
  v64 = v106;
  sub_21791B630(v125, &v129, v96, v60, v62, v61, 0, v63, v106, v65, v66, v55, v56, v55, v57, v94);
  v67 = v103;
  sub_217967DFC();
  v68 = v50 + v47[18];
  if (*(v68 + 56))
  {
    v69 = 1.0;
  }

  else
  {
    v69 = 0.0;
  }

  v70 = v116;
  (*(v104 + 32))(v116, v67, v105);
  *(v70 + *(v115 + 36)) = v69;
  v71 = *(v68 + 72);
  v72 = *(v120 + 20);
  v73 = *MEMORY[0x277CE0118];
  v74 = sub_217966DAC();
  v75 = v100;
  (*(*(v74 - 8) + 104))(v100 + v72, v73, v74);
  *v75 = v71;
  v75[1] = v71;
  v76 = v109;
  WitnessTable = swift_getWitnessTable();
  sub_217864B2C(&qword_27CB8F0C8, &qword_27CB8B2A8, &qword_21796B988, MEMORY[0x277CE01D8]);
  sub_217952480(&qword_27CB8F0D0, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE0]);
  v78 = v111;
  sub_21796769C();
  sub_21788D5F4(v75);
  sub_2178653BC(v70, &qword_27CB8B2A8, &qword_21796B988);
  (*(v108 + 8))(v64, v76);
  v79 = sub_217864B2C(&qword_27CB8F0D8, &qword_27CB8F0C0, &unk_217972EA0, MEMORY[0x277CE08B0]);
  v128[4] = WitnessTable;
  v128[5] = v79;
  v80 = v114;
  v81 = swift_getWitnessTable();
  sub_2178FD854(v81, v82, v83);
  sub_217862E84();
  v84 = v110;
  sub_21796779C();
  (*(v113 + 8))(v78, v80);
  v85 = sub_217864B2C(&qword_27CB8BB00, &qword_27CB8BB08, &qword_21796C8C0, MEMORY[0x277CE0470]);
  v128[2] = v81;
  v128[3] = v85;
  v86 = v121;
  v87 = swift_getWitnessTable();
  v88 = v118;
  sub_2179560E4();
  v89 = v117;
  v90 = *(v117 + 8);
  v90(v84, v86);
  v91 = v124;
  v92 = v112;
  sub_2178D0634(v124, v112);
  v129 = v92;
  v93 = v119;
  (*(v89 + 16))(v119, v88, v86);
  v130 = v93;
  v128[0] = v107;
  v128[1] = v86;
  v126 = sub_2178D06A4();
  v127 = v87;
  sub_2178B9390(&v129, 2, v128);
  v90(v88, v86);
  sub_2178653BC(v91, &qword_27CB8A6E0, &qword_21796A8E0);
  v90(v93, v86);
  return sub_2178653BC(v92, &qword_27CB8A6E0, &qword_21796A8E0);
}

uint64_t sub_217951FEC(uint64_t a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CA28, &unk_21796F610);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v33 - v8;
  v10 = *(a3 - 8);
  MEMORY[0x28223BE20](v7);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2179688CC();
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  if ((a2 & 1) == 0)
  {
    return v17;
  }

  v18 = v14;
  (*(v10 + 16))(v12, a1, a3);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v13);
    sub_2178653BC(v9, &qword_27CB8CA28, &unk_21796F610);
    return 0;
  }

  __swift_storeEnumTagSinglePayload(v9, 0, 1, v13);
  (*(v18 + 32))(v16, v9, v13);
  v19 = sub_21796883C();
  if (!v20)
  {
    (*(v18 + 8))(v16, v13);
    return 0;
  }

  v21 = v19;
  v22 = v20;
  sub_217884BBC();
  v25 = v24;
  if (v24)
  {
    v34 = v23;
    if (qword_27CB8A380 != -1)
    {
      swift_once();
    }

    sub_21796560C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A758, &unk_21796B1B0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_21796B330;
    v27 = MEMORY[0x277D837D0];
    *(v26 + 56) = MEMORY[0x277D837D0];
    v30 = sub_21788C964(v26, v28, v29);
    *(v26 + 32) = v21;
    *(v26 + 40) = v22;
    *(v26 + 96) = v27;
    *(v26 + 104) = v30;
    v31 = v34;
    *(v26 + 64) = v30;
    *(v26 + 72) = v31;
    *(v26 + 80) = v25;
    v17 = sub_217968F7C();

    (*(v18 + 8))(v16, v13);
  }

  else
  {
    (*(v18 + 8))(v16, v13);

    return 0;
  }

  return v17;
}

int *sub_2179523C4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v9 = *(_s12ItemShelfRowVMa(0, v12) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_217951464(a1, v10, v5, v6, v7, v8, a2);
}

uint64_t sub_217952480(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2179524E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  _s9ViewModelCMa(0, a4, a5, a4);
  OUTLINED_FUNCTION_23();
  swift_getWitnessTable();
  *a6 = sub_217966ACC();
  a6[1] = v12;
  v14 = _s11ColumnsViewVMa(0, a4, a5, v13);
  v15 = a6 + *(v14 + 36);
  *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8F0E0, &qword_217972EC8) + 28)] = 0;
  result = sub_2178A909C(a1, v15);
  v17 = (a6 + *(v14 + 40));
  *v17 = a2;
  v17[1] = a3;
  return result;
}

void sub_2179525C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s9ViewModelCMa(255, *(a1 + 16), *(a1 + 24), a4);
  swift_getWitnessTable();
  sub_217966ADC();
  if (v4 <= 0x3F)
  {
    sub_2179526BC(319);
    if (v5 <= 0x3F)
    {
      sub_217875494();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2179526BC(uint64_t a1)
{
  if (!qword_27CB8F168)
  {
    _s12SearchColumnVMa(255);
    v1 = sub_217967C4C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CB8F168);
    }
  }
}

uint64_t sub_217952758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v72 = a2;
  v4 = a1 - 8;
  v69 = *(a1 - 8);
  v70 = a1;
  MEMORY[0x28223BE20](a1);
  v66 = v5;
  v67 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s12SearchColumnVMa(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v7);
  v71 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AFA8, &qword_21796B6C0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v9);
  v11 = &v56 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F170, &qword_217972F40);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F178, &qword_217972F48);
  OUTLINED_FUNCTION_2();
  v15 = v14;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v16);
  v18 = &v56 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F180, &qword_217972F50);
  OUTLINED_FUNCTION_2();
  v63 = v20;
  v64 = v19;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v21);
  v23 = &v56 - v22;
  v24 = *(v4 + 44);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8F0E0, &qword_217972EC8);
  v59 = v24;
  sub_217967C3C();
  v65 = v3;
  v25 = *(v4 + 24);
  v60 = *(v4 + 32);
  v61 = v25;
  _s9ViewModelCMa(0, v25, v60, v26);
  OUTLINED_FUNCTION_23();
  swift_getWitnessTable();
  sub_217966A9C();
  sub_2178D2C28();

  OUTLINED_FUNCTION_0_21();
  sub_217952E40(v27, v28, &unk_21796D680);
  v68 = v6;
  sub_2179658BC();
  v29 = *MEMORY[0x277CDFA10];
  v30 = sub_21796695C();
  OUTLINED_FUNCTION_3();
  (*(v31 + 104))(v11, v29, v30);
  sub_217952E40(&qword_27CB8B010, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_217968F1C();
  if (result)
  {
    OUTLINED_FUNCTION_2_18();
    v37 = sub_217864B2C(v33, v34, v35, v36);
    OUTLINED_FUNCTION_4_21();
    v42 = sub_217864B2C(v38, v39, v40, v41);
    v57 = v23;
    v43 = v62;
    sub_2179677CC();
    sub_217952D3C(v11);
    (*(v15 + 8))(v18, v13);
    v44 = v65;
    v45 = v71;
    sub_217967C1C();
    v47 = v69;
    v46 = v70;
    v48 = v67;
    (*(v69 + 16))(v67, v44, v70);
    v49 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v50 = swift_allocObject();
    v51 = v60;
    *(v50 + 16) = v61;
    *(v50 + 24) = v51;
    (*(v47 + 32))(v50 + v49, v48, v46);
    v73 = v13;
    v74 = v43;
    v75 = v37;
    v76 = v42;
    OUTLINED_FUNCTION_3_27();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_0_21();
    sub_217952E40(v52, v53, &unk_21796D658);
    v54 = v64;
    v55 = v57;
    sub_217967A5C();

    sub_2178C07DC(v45);
    return (*(v63 + 8))(v55, v54);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_217952D3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AFA8, &qword_21796B6C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217952DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(_s11ColumnsViewVMa(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_217952CE4(a1, a2, v10, v7, v8);
}

uint64_t sub_217952E40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_217952EE8()
{
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v2);
  (*(*(v0 - 8) + 16))(&v5 - v3, v1, v0);
  swift_storeEnumTagMultiPayload();
  return OUTLINED_FUNCTION_6_13();
}

void *sub_217952FA4()
{
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v2);
  (*(*(v0 - 8) + 16))(&v5 - v3, v1, v0);
  swift_storeEnumTagMultiPayload();
  return OUTLINED_FUNCTION_6_13();
}

uint64_t sub_21795305C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  _s9ViewModelCMa(0, a7, a8, a4);
  swift_getWitnessTable();
  *(a9 + 48) = sub_217966ACC();
  *(a9 + 56) = v12;
  *(a9 + 64) = swift_getKeyPath();
  *(a9 + 104) = 0;
  *(a9 + 112) = swift_getKeyPath();
  *(a9 + 120) = 0;
  v14 = *(_s11ContentViewVMa(0, a7, a8, v13) + 52);
  *(a9 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F198, &dword_217972FE0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2179531B4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v6 = *(v0 + 24);
  v7 = v1;
  v8 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C448, &unk_21796DB30);
  MEMORY[0x21CEA6C70](&v5, v3);
  return v5;
}

uint64_t sub_21795320C@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  OUTLINED_FUNCTION_0_1();
  v72 = v2;
  v78 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v77 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  v9 = v5;
  v73 = v7;
  _s17SearchResultsViewVMa(255, v8, v7, v10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6D8, &unk_21796AF80);
  OUTLINED_FUNCTION_9();
  v11 = sub_21796698C();
  v60 = v8;
  _s15LandingPageViewVMa(255, v8, v7, v12);
  sub_21796732C();
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  v13 = sub_217966F9C();
  OUTLINED_FUNCTION_0_1();
  v74 = v14;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v15);
  v17 = &v58 - v16;
  v59 = &v58 - v16;
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  v19 = sub_21795427C();
  v87 = WitnessTable;
  v88 = v19;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_22();
  v20 = swift_getWitnessTable();
  v21 = sub_2178BD980();
  v85 = v20;
  v86 = v21;
  v22 = swift_getWitnessTable();
  v83 = v11;
  v84 = v22;
  OUTLINED_FUNCTION_20();
  v23 = swift_getWitnessTable();
  v79 = v13;
  v80 = MEMORY[0x277D839B0];
  v62 = v13;
  v24 = MEMORY[0x277D839B0];
  v81 = v23;
  v82 = MEMORY[0x277D839C8];
  v63 = v23;
  v25 = MEMORY[0x277D839C8];
  v68 = MEMORY[0x277CE0E30];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v67 = OpaqueTypeMetadata2;
  OUTLINED_FUNCTION_0_1();
  v71 = v27;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v28);
  v76 = &v58 - v29;
  v79 = v13;
  v80 = v24;
  v81 = v23;
  v82 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v79 = OpaqueTypeMetadata2;
  v80 = v24;
  v81 = OpaqueTypeConformance2;
  v82 = v25;
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_1();
  v69 = v30;
  v70 = v31;
  v32 = MEMORY[0x28223BE20](v30);
  v64 = &v58 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v65 = &v58 - v34;
  v35 = v17;
  v36 = v9;
  sub_217953868(v9, v37, v35);
  v38 = v1;
  LOBYTE(v79) = sub_217956760(*(v1 + 112), *(v1 + 120)) & 1;
  v39 = v72;
  v61 = *(v72 + 16);
  v40 = v77;
  v61(v77, v1, v9);
  v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = v8;
  v43 = v73;
  *(v42 + 24) = v73;
  v72 = *(v39 + 32);
  (v72)(v42 + v41, v40, v36);
  v44 = v62;
  v45 = v59;
  sub_217967A5C();

  (*(v74 + 8))(v45, v44);
  LOBYTE(v79) = sub_2179531B4() & 1;
  v46 = v77;
  v61(v77, v38, v36);
  v47 = swift_allocObject();
  *(v47 + 16) = v60;
  *(v47 + 24) = v43;
  (v72)(v47 + v41, v46, v36);
  v48 = v64;
  v49 = v67;
  v50 = MEMORY[0x277D839B0];
  v51 = OpaqueTypeConformance2;
  v52 = MEMORY[0x277D839C8];
  v53 = v76;
  sub_217967A5C();

  (*(v71 + 8))(v53, v49);
  v79 = v49;
  v80 = v50;
  v81 = v51;
  v82 = v52;
  swift_getOpaqueTypeConformance2();
  v54 = v65;
  v55 = v69;
  sub_2179560E4();
  v56 = *(v70 + 8);
  v56(v48, v55);
  sub_2179560E4();
  return (v56)(v54, v55);
}

uint64_t sub_217953868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = _s15LandingPageViewVMa(255, v6, v7, a2);
  sub_21796732C();
  v52 = v8;
  v9 = sub_21796698C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v46 - v14;
  v17 = _s17SearchResultsViewVMa(255, v6, v7, v16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6D8, &unk_21796AF80);
  v47 = sub_21796698C();
  v18 = sub_217966F9C();
  v49 = *(v18 - 8);
  v50 = v18;
  MEMORY[0x28223BE20](v18);
  v48 = v46 - v19;
  v20 = sub_217956760(*(v4 + 112), *(v4 + 120));
  v51 = a3;
  if (v20)
  {
    sub_21789AA78(v59, v6, v7, v21);
    if (qword_27CB8A340 != -1)
    {
      swift_once();
    }

    v57 = qword_27CB977B8;

    WitnessTable = swift_getWitnessTable();
    sub_2179673FC();
    sub_21796768C();

    (*(*(v17 - 8) + 8))(v59, v17);
    v23 = sub_21795427C();
    v55 = WitnessTable;
    v56 = v23;
    v24 = v47;
    swift_getWitnessTable();
    sub_2179560E4();
    v25 = *(*(v24 - 8) + 8);
    v25(v58, v24);
    sub_2179560E4();
    v26 = swift_getWitnessTable();
    v27 = sub_2178BD980();
    v53 = v26;
    v54 = v27;
    swift_getWitnessTable();
    v28 = v48;
    sub_217952EE8();
    v25(v58, v24);
    v25(v59, v24);
  }

  else
  {
    v46[0] = v10;
    v46[1] = v17;
    sub_2178AE628(v59, v6, v7, v21);
    if (qword_27CB8A3B8 != -1)
    {
      swift_once();
    }

    v29 = qword_27CB97938;
    v30 = unk_27CB97940;
    v31 = qword_27CB97948;
    v32 = v52;
    v33 = swift_getWitnessTable();
    sub_2178ED854(v29, v30, v31, v32, v33);
    (*(*(v32 - 8) + 8))(v59, v32);
    v34 = sub_2178BD980();
    v59[49] = v33;
    v59[50] = v34;
    swift_getWitnessTable();
    sub_2179560E4();
    v35 = *(v46[0] + 8);
    v35(v13, v9);
    sub_2179560E4();
    v36 = swift_getWitnessTable();
    v37 = sub_21795427C();
    v59[47] = v36;
    v59[48] = v37;
    swift_getWitnessTable();
    v28 = v48;
    sub_217952FA4();
    v35(v13, v9);
    v35(v15, v9);
  }

  v38 = swift_getWitnessTable();
  v39 = sub_21795427C();
  v59[45] = v38;
  v59[46] = v39;
  v40 = swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  v42 = sub_2178BD980();
  v59[43] = v41;
  v59[44] = v42;
  v43 = swift_getWitnessTable();
  v59[41] = v40;
  v59[42] = v43;
  v44 = v50;
  swift_getWitnessTable();
  sub_2179560E4();
  return (*(v49 + 8))(v28, v44);
}

uint64_t sub_217953F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_217966E4C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s11ContentViewVMa(0, a4, a5, v11);
  sub_2179568EC();
  sub_217966E3C();
  return (*(v8 + 8))(v10, v7);
}

void sub_217954028(uint64_t a1)
{
  sub_217954188(319, &qword_27CB8C280, MEMORY[0x277CE11F8]);
  if (v3 <= 0x3F)
  {
    _s9ViewModelCMa(255, *(a1 + 16), *(a1 + 24), v2);
    swift_getWitnessTable();
    sub_217966ADC();
    if (v4 <= 0x3F)
    {
      sub_21788C1DC(319);
      if (v5 <= 0x3F)
      {
        sub_217954188(319, &qword_27CB8F228, MEMORY[0x277CDF468]);
        if (v6 <= 0x3F)
        {
          sub_2179541DC(319);
          if (v7 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_217954188(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
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

void sub_2179541DC(uint64_t a1)
{
  if (!qword_27CB8F230)
  {
    sub_217966E4C();
    v1 = sub_2179666CC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CB8F230);
    }
  }
}

unint64_t sub_21795427C()
{
  result = qword_27CB8A7A0;
  if (!qword_27CB8A7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6D8, &unk_21796AF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8A7A0);
  }

  return result;
}

double sub_2179542E0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t objectdestroyTm_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = _s11ContentViewVMa(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = v4 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80));

  if (*(v6 + 104))
  {
    if (*(v6 + 88))
    {
      __swift_destroy_boxed_opaque_existential_1((v6 + 64));
    }
  }

  else
  {
  }

  sub_2179542E0(*(v6 + 112), *(v6 + 120));
  v7 = *(v5 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F198, &dword_217972FE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217966E4C();
    OUTLINED_FUNCTION_3();
    (*(v8 + 8))(v6 + v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_217954488(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(_s11ContentViewVMa(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return a3(a1, a2, v10, v7, v8);
}

uint64_t OUTLINED_FUNCTION_4_22()
{

  return MEMORY[0x282131EE8](0);
}

void *OUTLINED_FUNCTION_6_13()
{

  return sub_217966F8C();
}

uint64_t _s8MenuCellVMa(uint64_t a1)
{
  result = qword_27CB8F240;
  if (!qword_27CB8F240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_217954634(uint64_t a1)
{
  sub_2179546C4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2179546C4(uint64_t a1)
{
  if (!qword_27CB8F250)
  {
    sub_217966E2C();
    v1 = sub_2179666CC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CB8F250);
    }
  }
}

unint64_t sub_217954730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8F258;
  if (!qword_27CB8F258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8F258);
  }

  return result;
}

uint64_t sub_217954784@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F260, &qword_217973158);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = __src - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F268, &qword_217973160);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v8);
  v10 = __src - v9;
  *v6 = sub_217966D1C();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F270, &qword_217973168);
  sub_217954A28(v1, &v6[*(v11 + 44)]);
  v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F278, &qword_217973170) + 36)] = 0;
  v12 = sub_21796744C();
  sub_21796660C();
  v13 = &v6[*(v4 + 44)];
  *v13 = v12;
  *(v13 + 1) = v14;
  *(v13 + 2) = v15;
  *(v13 + 3) = v16;
  *(v13 + 4) = v17;
  v13[40] = 0;
  sub_217967E3C();
  sub_217966A6C();
  sub_217864D20(v6, v10, &qword_27CB8F260, &qword_217973158);
  memcpy(&v10[*(v7 + 36)], __src, 0x70uLL);
  LOBYTE(v6) = sub_2179673EC();
  sub_21796660C();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_217864D20(v10, a1, &qword_27CB8F268, &qword_217973160);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F280, &qword_217973178);
  v27 = a1 + *(result + 36);
  *v27 = v6;
  *(v27 + 8) = v19;
  *(v27 + 16) = v21;
  *(v27 + 24) = v23;
  *(v27 + 32) = v25;
  *(v27 + 40) = 0;
  return result;
}

uint64_t sub_217954A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F288, &qword_217973180);
  MEMORY[0x28223BE20](v49);
  v48 = &v47 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F290, &qword_217973188);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v53 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v52 = &v47 - v7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F298, &qword_217973190);
  v8 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v10 = &v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F2A0, &unk_217973198);
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v51 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v47 - v15;
  v50 = a1;
  v56 = a1;
  v55 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B600, &unk_21796BED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F2A8, &qword_2179731A8);
  sub_2179554DC(&qword_27CB8B618, &qword_27CB8B600, &unk_21796BED0, MEMORY[0x277CE0BC8]);
  sub_2179554DC(&qword_27CB8F2B0, &qword_27CB8F2A8, &qword_2179731A8, MEMORY[0x277CE1078]);
  sub_217967BEC();
  v17 = sub_217864B2C(&qword_27CB8F2B8, &qword_27CB8F298, &qword_217973190, MEMORY[0x277CDEFF0]);
  sub_217955554(v17, v18, v19);
  v20 = v47;
  sub_2179676BC();
  (*(v8 + 8))(v10, v20);
  v21 = v48;
  sub_217967E4C();
  sub_2179667FC();
  v22 = &v16[*(v12 + 44)];
  v23 = v60;
  *v22 = v59;
  *(v22 + 1) = v23;
  *(v22 + 2) = v61;
  v24 = sub_217967B8C();
  v25 = sub_21796747C();
  KeyPath = swift_getKeyPath();
  *&v62 = v24;
  *(&v62 + 1) = KeyPath;
  *&v63 = v25;
  sub_21796750C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B4D0, &qword_21796BD50);
  sub_2178981D0();
  v27 = v49;
  sub_2179676AC();

  v28 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F2C8, &unk_2179731E0) + 36));
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B4F0, &qword_21796BD60) + 28);
  v30 = *MEMORY[0x277CE1050];
  v31 = sub_217967BCC();
  (*(*(v31 - 8) + 104))(v28 + v29, v30, v31);
  *v28 = swift_getKeyPath();
  LODWORD(v30) = sub_2179670EC();
  *(v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F2D0, &qword_217973220) + 36)) = v30;
  sub_217967E5C();
  sub_2179667FC();
  v32 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F2D8, &qword_217973228) + 36));
  v33 = v63;
  *v32 = v62;
  v32[1] = v33;
  v32[2] = v64;
  LOBYTE(v30) = sub_2179673EC();
  sub_21796660C();
  v34 = v21 + *(v27 + 36);
  *v34 = v30;
  *(v34 + 8) = v35;
  *(v34 + 16) = v36;
  *(v34 + 24) = v37;
  *(v34 + 32) = v38;
  *(v34 + 40) = 0;
  if (qword_27CB8A408 != -1)
  {
    swift_once();
  }

  v39 = qword_27CB97A38;
  v57 = qword_27CB97A28;
  v58 = unk_27CB97A30;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](0x64726177726F66, 0xE700000000000000);

  sub_2178EE0A8(v57, v58, v39);

  sub_2179555A8();
  v40 = v52;
  sub_21796790C();

  sub_2178653BC(v21, &qword_27CB8F288, &qword_217973180);
  v41 = v51;
  sub_217864D70(v16, v51, &qword_27CB8F2A0, &unk_217973198);
  v42 = v53;
  sub_217864D70(v40, v53, &qword_27CB8F290, &qword_217973188);
  v43 = v54;
  sub_217864D70(v41, v54, &qword_27CB8F2A0, &unk_217973198);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F300, &qword_217973238);
  v45 = v43 + *(v44 + 48);
  *v45 = 0;
  *(v45 + 8) = 1;
  sub_217864D70(v42, v43 + *(v44 + 64), &qword_27CB8F290, &qword_217973188);
  sub_2178653BC(v40, &qword_27CB8F290, &qword_217973188);
  sub_2178653BC(v16, &qword_27CB8F2A0, &unk_217973198);
  sub_2178653BC(v42, &qword_27CB8F290, &qword_217973188);
  return sub_2178653BC(v41, &qword_27CB8F2A0, &unk_217973198);
}

uint64_t sub_2179551BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_217873C34(a1, a2, a3);

  v3 = sub_21796763C();
  v5 = v4;
  v7 = v6;
  if (qword_27CB8A408 != -1)
  {
    swift_once();
  }

  v8 = qword_27CB97A38;
  v10 = qword_27CB97A28;
  v11 = unk_27CB97A30;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](0x656C746974, 0xE500000000000000);

  sub_2178EE0A8(v10, v11, v8);

  sub_21796790C();
  sub_21788C9B8(v3, v5, v7 & 1);
}

double sub_217955350(uint64_t a1)
{
  v1 = *(a1 + 32);

  if (v1 == 1)
  {
    sub_217967BAC();
  }

  else
  {
    sub_217967B8C();
  }

  if (qword_27CB8A408 != -1)
  {
    swift_once();
  }

  v2 = qword_27CB97A38;
  v4 = qword_27CB97A28;
  v5 = unk_27CB97A30;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](0x6567616D69, 0xE500000000000000);

  sub_2178EE0A8(v4, v5, v2);

  sub_21796790C();

  return result;
}

uint64_t sub_2179554DC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_2178BD980();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217955554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8F2C0;
  if (!qword_27CB8F2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8F2C0);
  }

  return result;
}

unint64_t sub_2179555A8()
{
  result = qword_27CB8F2E0;
  if (!qword_27CB8F2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F288, &qword_217973180);
    sub_217955634();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8F2E0);
  }

  return result;
}

unint64_t sub_217955634()
{
  result = qword_27CB8F2E8;
  if (!qword_27CB8F2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F2D8, &qword_217973228);
    sub_2179556C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8F2E8);
  }

  return result;
}

unint64_t sub_2179556C0()
{
  result = qword_27CB8F2F0;
  if (!qword_27CB8F2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F2D0, &qword_217973220);
    sub_217955778();
    sub_217864B2C(&qword_27CB8B548, &qword_27CB8B550, &qword_217973230, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8F2F0);
  }

  return result;
}

unint64_t sub_217955778()
{
  result = qword_27CB8F2F8;
  if (!qword_27CB8F2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F2C8, &unk_2179731E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B4D0, &qword_21796BD50);
    sub_2178981D0();
    swift_getOpaqueTypeConformance2();
    sub_217864B2C(&qword_27CB8B4E8, &qword_27CB8B4F0, &qword_21796BD60, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8F2F8);
  }

  return result;
}

unint64_t sub_21795586C()
{
  result = qword_27CB8F308;
  if (!qword_27CB8F308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F280, &qword_217973178);
    sub_2179558F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8F308);
  }

  return result;
}

unint64_t sub_2179558F8()
{
  result = qword_27CB8F310;
  if (!qword_27CB8F310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F268, &qword_217973160);
    sub_217955984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8F310);
  }

  return result;
}

unint64_t sub_217955984()
{
  result = qword_27CB8F318;
  if (!qword_27CB8F318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F260, &qword_217973158);
    sub_217955A10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8F318);
  }

  return result;
}

unint64_t sub_217955A10()
{
  result = qword_27CB8F320;
  if (!qword_27CB8F320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F278, &qword_217973170);
    sub_217864B2C(&qword_27CB8F328, qword_27CB8F330, &unk_217973240, MEMORY[0x277CE1138]);
    sub_217864B2C(&qword_27CB8BB00, &qword_27CB8BB08, &qword_21796C8C0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8F320);
  }

  return result;
}

uint64_t ArtworkImageReader.init(content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t ArtworkImageReader.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v17 = *(a1 + 16);
  v4 = sub_2179664CC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  v16 = *v2;
  v11 = swift_allocObject();
  v12 = v16;
  *(v11 + 16) = v17;
  *(v11 + 32) = v12;

  sub_2179664BC();
  OUTLINED_FUNCTION_0_23();
  swift_getWitnessTable();
  v13 = *(v5 + 16);
  v13(v10, v8, v4);
  v14 = *(v5 + 8);
  v14(v8, v4);
  v13(a2, v10, v4);
  return (v14)(v10, v4);
}

uint64_t sub_217955CB4@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F3B8, &qword_217973300);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F3C0, &qword_217973308);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v38 - v13;
  v15 = *(a3 - 8);
  v16 = MEMORY[0x28223BE20](v12);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v38 - v19;
  sub_217956074(a1, v10);
  v21 = sub_2179663FC();
  if (__swift_getEnumTagSinglePayload(v10, 1, v21) == 1)
  {
    sub_217875F0C(v10, &qword_27CB8F3B8, &qword_217973300);
    v22 = type metadata accessor for ArtworkImage.Proxy(0);
    v23 = v14;
    v24 = 1;
  }

  else
  {
    sub_2179663EC();
    sub_2179663CC();
    v26 = v25;
    v28 = v27;
    v29 = sub_2179663DC();
    v38 = a3;
    v30 = a4;
    v31 = v29;
    v32 = type metadata accessor for ArtworkImage.Proxy(0);
    v39 = a2;
    v33 = v32;
    v34 = &v14[*(v32 + 20)];
    *v34 = v26;
    *(v34 + 1) = v28;
    *&v14[*(v32 + 24)] = v31;
    a4 = v30;
    a3 = v38;
    (*(*(v21 - 8) + 8))(v10, v21);
    v23 = v14;
    v24 = 0;
    v22 = v33;
    a2 = v39;
  }

  __swift_storeEnumTagSinglePayload(v23, v24, 1, v22);
  a2(v14);
  sub_217875F0C(v14, &qword_27CB8F3C0, &qword_217973308);
  v35 = *(v15 + 16);
  v35(v20, v18, a3);
  v36 = *(v15 + 8);
  v36(v18, a3);
  v35(a4, v20, a3);
  return (v36)(v20, a3);
}

uint64_t sub_217956020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_217956074(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F3B8, &qword_217973300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_217956100()
{
  OUTLINED_FUNCTION_81();
  v4 = v3;
  sub_217966CBC();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_25();
  sub_2178AEC6C(v0, v13, qword_27CB8F400, &unk_2179735E0);
  if (v15 == 1)
  {
    v6 = v13[1];
    *v4 = v13[0];
    *(v4 + 16) = v6;
    *(v4 + 32) = v14;
  }

  else
  {
    sub_21796938C();
    v7 = sub_2179673BC();
    if (OUTLINED_FUNCTION_14_9(v7))
    {
      OUTLINED_FUNCTION_186();
      v12 = OUTLINED_FUNCTION_88_0();
      *v2 = 136315138;
      *(v2 + 4) = sub_217957F4C(0xD00000000000002BLL, 0x8000000217976DF0, &v12);
      OUTLINED_FUNCTION_5_15(&dword_217846000, v8, v9, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.");
      OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_104();
    }

    sub_217966CAC();
    OUTLINED_FUNCTION_9_17();

    v10 = OUTLINED_FUNCTION_6_14();
    v11(v10);
  }

  OUTLINED_FUNCTION_80();
}

void sub_21795626C()
{
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_10_11();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_25();
  OUTLINED_FUNCTION_20_7();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_28(v3, v12);
  if (OUTLINED_FUNCTION_21_8() == 1)
  {
    sub_2179666BC();
    OUTLINED_FUNCTION_3();
    v4 = OUTLINED_FUNCTION_73_0();
    v5(v4);
  }

  else
  {
    sub_21796938C();
    v6 = sub_2179673BC();
    if (OUTLINED_FUNCTION_14_9(v6))
    {
      OUTLINED_FUNCTION_186();
      v7 = OUTLINED_FUNCTION_88_0();
      OUTLINED_FUNCTION_17_11(v7);
      LODWORD(dword_21796B7F0) = 136315138;
      unk_21796B7F4 = sub_217957F4C(0x686353726F6C6F43, 0xEB00000000656D65, &v13);
      OUTLINED_FUNCTION_5_15(&dword_217846000, v8, v9, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.");
      OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_104();
    }

    sub_217966CAC();
    OUTLINED_FUNCTION_9_17();

    v10 = OUTLINED_FUNCTION_6_14();
    v11(v10);
  }

  OUTLINED_FUNCTION_80();
}

void sub_217956410()
{
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_10_11();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_25();
  OUTLINED_FUNCTION_20_7();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_28(v3, v12);
  if (OUTLINED_FUNCTION_21_8() == 1)
  {
    sub_21796695C();
    OUTLINED_FUNCTION_3();
    v4 = OUTLINED_FUNCTION_73_0();
    v5(v4);
  }

  else
  {
    sub_21796938C();
    v6 = sub_2179673BC();
    if (OUTLINED_FUNCTION_14_9(v6))
    {
      OUTLINED_FUNCTION_186();
      v7 = OUTLINED_FUNCTION_88_0();
      OUTLINED_FUNCTION_17_11(v7);
      LODWORD(dword_21796C0C8) = 136315138;
      unk_21796C0CC = sub_217957F4C(0x5463696D616E7944, 0xEF657A6953657079, &v13);
      OUTLINED_FUNCTION_5_15(&dword_217846000, v8, v9, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.");
      OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_104();
    }

    sub_217966CAC();
    OUTLINED_FUNCTION_9_17();

    v10 = OUTLINED_FUNCTION_6_14();
    v11(v10);
  }

  OUTLINED_FUNCTION_80();
}

void sub_2179565B8()
{
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_10_11();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_25();
  OUTLINED_FUNCTION_20_7();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_28(v3, v12);
  if (OUTLINED_FUNCTION_21_8() == 1)
  {
    sub_21796697C();
    OUTLINED_FUNCTION_3();
    v4 = OUTLINED_FUNCTION_73_0();
    v5(v4);
  }

  else
  {
    sub_21796938C();
    v6 = sub_2179673BC();
    if (OUTLINED_FUNCTION_14_9(v6))
    {
      OUTLINED_FUNCTION_186();
      v7 = OUTLINED_FUNCTION_88_0();
      OUTLINED_FUNCTION_17_11(v7);
      LODWORD(dword_2179735F0) = 136315138;
      unk_2179735F4 = sub_217957F4C(0x694474756F79614CLL, 0xEF6E6F6974636572, &v13);
      OUTLINED_FUNCTION_5_15(&dword_217846000, v8, v9, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.");
      OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_104();
    }

    sub_217966CAC();
    OUTLINED_FUNCTION_9_17();

    v10 = OUTLINED_FUNCTION_6_14();
    v11(v10);
  }

  OUTLINED_FUNCTION_80();
}

uint64_t sub_217956760(uint64_t a1, char a2)
{
  sub_217966CBC();
  OUTLINED_FUNCTION_0_24();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_25();
  if ((a2 & 1) == 0)
  {

    v9 = sub_21796938C();
    v10 = sub_2179673BC();
    if (os_log_type_enabled(v10, v9))
    {
      v11 = OUTLINED_FUNCTION_186();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_217957F4C(1819242306, 0xE400000000000000, &v15);
      _os_log_impl(&dword_217846000, v10, v9, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      OUTLINED_FUNCTION_104();
      MEMORY[0x21CEA8ED0](v11, -1, -1);
    }

    sub_217966CAC();
    swift_getAtKeyPath();
    v13 = sub_2179542E0(a1, 0);
    (*(v7 + 8))(v3, v2, v13);
    LOBYTE(a1) = v16;
  }

  return a1 & 1;
}

void sub_2179568EC()
{
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_10_11();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_25();
  OUTLINED_FUNCTION_20_7();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_28(v3, v12);
  if (OUTLINED_FUNCTION_21_8() == 1)
  {
    sub_217966E4C();
    OUTLINED_FUNCTION_3();
    v4 = OUTLINED_FUNCTION_73_0();
    v5(v4);
  }

  else
  {
    sub_21796938C();
    v6 = sub_2179673BC();
    if (OUTLINED_FUNCTION_14_9(v6))
    {
      OUTLINED_FUNCTION_186();
      v7 = OUTLINED_FUNCTION_88_0();
      OUTLINED_FUNCTION_17_11(v7);
      LODWORD(dword_217972FE0) = 136315138;
      unk_217972FE4 = sub_217957F4C(0xD000000000000013, 0x8000000217976DD0, &v13);
      OUTLINED_FUNCTION_5_15(&dword_217846000, v8, v9, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.");
      OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_104();
    }

    sub_217966CAC();
    OUTLINED_FUNCTION_9_17();

    v10 = OUTLINED_FUNCTION_6_14();
    v11(v10);
  }

  OUTLINED_FUNCTION_80();
}

void *sub_217956A8C(uint64_t a1, char a2)
{
  v4 = sub_217966CBC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    v8 = sub_21796938C();
    v9 = sub_2179673BC();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v15 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_217957F4C(0x6C616E6F6974704FLL, 0xEE003E65646F4E3CLL, &v15);
      _os_log_impl(&dword_217846000, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x21CEA8ED0](v11, -1, -1);
      MEMORY[0x21CEA8ED0](v10, -1, -1);
    }

    sub_217966CAC();
    swift_getAtKeyPath();
    v12 = j__swift_release();
    (*(v5 + 8))(v7, v4, v12);
    return v15;
  }

  return a1;
}

uint64_t sub_217956C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_217958510(a1, a2, a3);
  sub_217966CCC();
  return v4;
}

uint64_t sub_217956C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_217958510(a1, a2, a3);
  result = sub_217966CCC();
  if (v8)
  {
    if (a1)
    {
      swift_unknownObjectRelease();
      if (v8 == a1)
      {
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
    }

LABEL_8:
    swift_unknownObjectRetain();
    v5 = sub_217966CDC();
    sub_21795705C(v5, v6, v7);
    return swift_unknownObjectRelease();
  }

  if (a1)
  {
    goto LABEL_8;
  }

  return result;
}

void sub_217956D60(uint64_t a1, uint64_t a2)
{
  sub_2179664FC();
  sub_2179585B8();
  if (swift_dynamicCast())
  {
    if (a2)
    {

      sub_2179626CC();

      v3 = sub_217968F2C();

      [v4 setCacheIdentifier:v3 forCacheReference:a2];
    }
  }

  else
  {
    v5[0] = 0;
    v5[1] = 0xE000000000000000;
    sub_21796950C();
    MEMORY[0x21CEA7F50](0xD000000000000028, 0x8000000217976DA0);
    sub_2179664FC();
    sub_21796958C();
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x21CEA7F50](46, 0xE100000000000000);
    sub_21796959C();
    __break(1u);
  }
}

uint64_t sub_217956F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_217957D00();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_217956F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2179584BC(a1, a2, a3);
  OUTLINED_FUNCTION_16_12();
  sub_217966CCC();
  return v4;
}

double sub_217956FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2179584BC(a1, a2, a3);
  OUTLINED_FUNCTION_16_12();
  sub_217966CCC();
  if (v8)
  {
    if (a1)
    {

      if (v8 == a1)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

LABEL_8:

    v5 = sub_217966CDC();
    sub_21795705C(v5, v6, v7);
LABEL_9:

    return result;
  }

  if (a1)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_21795705C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_217958510(a1, a2, a3);
  OUTLINED_FUNCTION_16_12();
  v3 = sub_217966CCC();
  if (v31)
  {
    ObjectType = swift_getObjectType();
    v7 = sub_2178B4378(ObjectType, v32);
    v10 = sub_217958564(v7, v8, v9);
    OUTLINED_FUNCTION_19_9(v10, v11, v12, v13, v14, v15, v16, v17, v30, v31, v32, v33, &type metadata for ArtworkCachingConfigurationHandler, v34);
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_2179584BC(v3, v4, v5);
    OUTLINED_FUNCTION_16_12();
    v19 = sub_217966CCC();
    v22 = sub_217958564(v19, v20, v21);
    return OUTLINED_FUNCTION_19_9(v22, v23, v24, v25, v26, v27, v28, v29, v30, 0, v32, v33, &type metadata for ArtworkCachingConfigurationHandler, v34);
  }
}

uint64_t *sub_217957144(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  _s4NodeCMa(0);
  swift_allocObject();

  return sub_217962BC4(a1, a2, a3, a4 & 1);
}

uint64_t sub_2179571E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v40 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F3C8, &qword_2179734C8);
  v36 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F3D0, &qword_2179734D0);
  v9 = *(v8 - 8);
  v38 = v8;
  v39 = v9;
  MEMORY[0x28223BE20](v8);
  v41 = v33 - v10;
  KeyPath = swift_getKeyPath();
  v12 = *(v3 + 4);
  v13 = *(v3 + 5);
  v14 = v3[48];
  _s4NodeCMa(0);
  sub_217957DA0(&qword_2811AD410, &unk_217973D80);
  v15 = sub_2179666FC();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F3D8, &qword_2179734D8);
  (*(*(v16 - 8) + 16))(v7, a1, v16);
  v17 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F3E0, &qword_2179734E0) + 36)];
  *v17 = KeyPath;
  v17[1] = v15;
  *v44 = *v3;
  *&v44[9] = *(v3 + 9);
  v18 = *(v3 + 7);
  LOBYTE(a1) = v3[64];
  v19 = swift_allocObject();
  memcpy((v19 + 16), v3, 0x41uLL);
  v20 = &v7[*(v5 + 36)];
  *v20 = sub_217957B18;
  v20[1] = v19;
  v20[2] = 0;
  v20[3] = 0;
  v37 = *&v44[8];
  sub_217957B20(v44, v42);
  v34 = v13;
  v35 = v12;
  v33[3] = v14;
  sub_217957B7C(v12, v13);
  j__swift_retain(v18);
  *&v43[0] = sub_217956A8C(v18, a1);
  v21 = swift_allocObject();
  memcpy((v21 + 16), v3, 0x41uLL);
  sub_217957B20(v44, v42);
  sub_217957B7C(v12, v13);
  j__swift_retain(v18);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F3E8, &qword_2179734E8);
  v23 = sub_217957B90();
  v24 = sub_217957D00();
  v25 = v36;
  sub_217967A5C();

  sub_217957DE4(v7);
  v43[0] = *v44;
  *(v43 + 9) = *&v44[9];
  v26 = swift_allocObject();
  memcpy((v26 + 16), v3, 0x41uLL);

  sub_217957B20(v44, v42);
  sub_217957B7C(v35, v34);
  j__swift_retain(v18);
  v42[0] = v25;
  v42[1] = v22;
  v42[2] = v23;
  v42[3] = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_217957EA4(OpaqueTypeConformance2, v28, v29);
  v30 = v41;
  v31 = v38;
  sub_217967A5C();

  sub_217957EF8(v44);
  return (*(v39 + 8))(v30, v31);
}

double sub_21795765C(uint64_t a1)
{
  _s4NodeCMa(0);
  sub_217957DA0(&qword_2811AD410, &unk_217973D80);
  sub_2179666FC();
  v2 = sub_217956A8C(*(a1 + 56), *(a1 + 64));
  sub_217962848(v2);

  return result;
}

double sub_217957700(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  _s4NodeCMa(0);
  sub_217957DA0(&qword_2811AD410, &unk_217973D80);
  sub_2179666FC();

  sub_217962848(v3);

  return result;
}

double sub_2179577A0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v6 = *(a2 + 24);
  _s4NodeCMa(0);
  sub_217957DA0(&qword_2811AD410, &unk_217973D80);
  v7 = sub_2179666FC();
  *(v7 + 16) = v4;
  *(v7 + 24) = v3;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;

  sub_217963388();

  return result;
}

double View.artworkCaching(id:limit:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  KeyPath = swift_getKeyPath();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4 & 1;
  v24 = a4 & 1;
  v23 = 0;
  v22 = 0;
  v15[0] = a1;
  v15[1] = a2;
  v15[2] = a3;
  v16 = a4 & 1;
  v17 = sub_2179579C0;
  v18 = v13;
  v19 = 0;
  v20 = KeyPath;
  v21 = 0;

  MEMORY[0x21CEA69A0](v15, a5, &_s7CachingV8ModifierVN, a6);

  return result;
}

unint64_t sub_2179579D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2811AD320;
  if (!qword_2811AD320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AD320);
  }

  return result;
}

uint64_t sub_217957A44(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_217957A84(uint64_t result, int a2, int a3)
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

unint64_t sub_217957B90()
{
  result = qword_2811AD468;
  if (!qword_2811AD468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F3C8, &qword_2179734C8);
    sub_217957C1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AD468);
  }

  return result;
}

unint64_t sub_217957C1C()
{
  result = qword_2811AD470;
  if (!qword_2811AD470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F3E0, &qword_2179734E0);
    sub_217864B2C(&qword_2811AD458, &qword_27CB8F3D8, &qword_2179734D8, MEMORY[0x277CE04B0]);
    sub_217864B2C(&qword_2811AD448, &qword_27CB8F3F0, &qword_2179734F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AD470);
  }

  return result;
}

unint64_t sub_217957D00()
{
  result = qword_2811AD330;
  if (!qword_2811AD330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F3E8, &qword_2179734E8);
    sub_217957DA0(&qword_2811AD408, &unk_217973D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AD330);
  }

  return result;
}

uint64_t sub_217957DA0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _s4NodeCMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217957DE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F3C8, &qword_2179734C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_3Tm()
{

  sub_217873C88(*(v0 + 48), *(v0 + 56));
  j__swift_release();

  return swift_deallocObject();
}

unint64_t sub_217957EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2811AD328;
  if (!qword_2811AD328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AD328);
  }

  return result;
}

unint64_t sub_217957F4C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_217958010(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2178C2C84(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_217958010(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_217958110(a5, a6);
    *a1 = v9;
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
    result = sub_21796953C();
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

uint64_t sub_217958110(uint64_t a1, unint64_t a2)
{
  v3 = sub_21795815C(a1, a2);
  sub_217958274(&unk_28298C998);
  return v3;
}

uint64_t sub_21795815C(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_217968FFC())
  {
    result = sub_217958358(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2179694FC();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_21796953C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_217958274(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_2179583C8(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_217958358(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F3F8, &qword_2179734F8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2179583C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F3F8, &qword_2179734F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_2179584BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2811AD430;
  if (!qword_2811AD430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AD430);
  }

  return result;
}

unint64_t sub_217958510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2811AD438;
  if (!qword_2811AD438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AD438);
  }

  return result;
}

unint64_t sub_217958564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2811AD498;
  if (!qword_2811AD498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AD498);
  }

  return result;
}

unint64_t sub_2179585B8()
{
  result = qword_2811AD300;
  if (!qword_2811AD300)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811AD300);
  }

  return result;
}

uint64_t sub_2179585FC(uint64_t *a1, unsigned int a2)
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

uint64_t sub_217958650(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_3_28@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_2178AEC6C(v2, &a2 - a1, v3, v4);
}

void OUTLINED_FUNCTION_5_15(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void *OUTLINED_FUNCTION_9_17()
{

  return swift_getAtKeyPath();
}

uint64_t OUTLINED_FUNCTION_10_11()
{

  return sub_217966CBC();
}

BOOL OUTLINED_FUNCTION_14_9(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

uint64_t OUTLINED_FUNCTION_19_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a14 = a1;
  a10 = v14;

  return MEMORY[0x282137170](&a10);
}

uint64_t OUTLINED_FUNCTION_20_7()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_21_8()
{

  return swift_getEnumCaseMultiPayload();
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_217958828(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_217958868(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2179588BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_21796969C(), result = 0, (v13 & 1) != 0))
  {
    if (a4)
    {
      if ((a8 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((a8 & 1) != 0 || a3 != a7)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t sub_21795893C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_217968FCC();
  if (a5)
  {
    return sub_21796975C();
  }

  sub_21796975C();
  return MEMORY[0x21CEA86B0](a4);
}

uint64_t sub_217958990(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_21796973C();
  sub_217968FCC();
  sub_21796975C();
  if ((a4 & 1) == 0)
  {
    MEMORY[0x21CEA86B0](a3);
  }

  return sub_21796977C();
}

uint64_t sub_217958A60(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_21796973C();
  sub_217968FCC();
  sub_21796975C();
  if (v3 != 1)
  {
    MEMORY[0x21CEA86B0](v2);
  }

  return sub_21796977C();
}

double sub_217958AE8@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

unint64_t sub_217958AF8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  MEMORY[0x21CEA7F50](a1, a2);
  MEMORY[0x21CEA7F50](34, 0xE100000000000000);
  MEMORY[0x21CEA7F50](0x22203A6469, 0xE500000000000000);

  if ((a4 & 1) == 0)
  {
    v5 = sub_21796966C();
    MEMORY[0x21CEA7F50](v5);

    MEMORY[0x21CEA7F50](0x3A74696D696C202CLL, 0xE900000000000020);
  }

  MEMORY[0x21CEA7F50](41, 0xE100000000000000);
  return 0xD000000000000017;
}

uint64_t sub_217958C18(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_217958C90(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_22;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_22;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        switch(v9)
        {
          case 2:
            LODWORD(v9) = *a1;
            break;
          case 3:
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            LODWORD(v9) = *a1;
            break;
          default:
            LODWORD(v9) = *a1;
            break;
        }
      }

      v16 = v7 + (v9 | v13);
      return (v16 + 1);
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_22:
  if (v5 >= 0xFE)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  v16 = (v15 + 2147483646) & 0x7FFFFFFF;
  return (v16 + 1);
}

void sub_217958DFC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v10 <= 3)
    {
      v17 = ((v13 + ~(-1 << v11)) >> v11) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v7 < 0xFE)
          {
            a1[v9] = a2 + 1;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    if (v10 < 4)
    {
      v16 = (v15 >> v11) + 1;
      if (v9 != -1)
      {
        v19 = v15 & ~(-1 << v11);
        bzero(a1, v9 + 1);
        if (v10 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v10 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v15;
        }
      }
    }

    else
    {
      bzero(a1, v9 + 1);
      *a1 = v15;
      v16 = 1;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_217959084(uint64_t a1)
{
  v3 = sub_2179659BC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  if (*(v1 + *(a1 + 36)))
  {
    goto LABEL_5;
  }

  sub_217938234();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C508, &unk_217973820);
  if (!swift_dynamicCast())
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_217875F0C(v13, &qword_27CB8C510, &qword_21796DC70);
LABEL_5:
    v10 = 0;
    return v10 & 1;
  }

  sub_21784A7D4(v13, v15);
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  sub_21796590C();
  (*(v4 + 104))(v7, *MEMORY[0x277D2A4B0], v3);
  v10 = sub_2179659AC();
  v11 = *(v4 + 8);
  v11(v7, v3);
  v11(v9, v3);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v10 & 1;
}

uint64_t sub_217959288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AEC0, &qword_21796B610);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B4C0, &qword_217973770);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = (&v23 - v9);
  v11 = sub_217967B8C();
  v12 = sub_2179674BC();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  sub_21796751C();
  sub_217875F0C(v6, &qword_27CB8AEC0, &qword_21796B610);
  v13 = sub_21796748C();

  KeyPath = swift_getKeyPath();
  v15 = (v10 + *(v8 + 44));
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B4F0, &qword_21796BD60) + 28);
  v17 = *MEMORY[0x277CE1058];
  v18 = sub_217967BCC();
  (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = swift_getKeyPath();
  *v10 = v11;
  v10[1] = KeyPath;
  v10[2] = v13;
  if (sub_217959084(a1))
  {
    if (qword_27CB8A350 != -1)
    {
      swift_once();
    }

    v19 = qword_27CB977C8;
  }

  else
  {
    v19 = sub_217967B0C();
  }

  v20 = swift_getKeyPath();
  sub_217959514(v10, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C2E8, &unk_217973810);
  v22 = (a2 + *(result + 36));
  *v22 = v20;
  v22[1] = v19;
  return result;
}

uint64_t sub_217959514(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B4C0, &qword_217973770);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_217959584@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, uint64_t a5@<X4>, uint64_t a6@<X5>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F488, &qword_217973850);
  OUTLINED_FUNCTION_48(v12);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - v14;
  v16 = *a2;
  v18 = *(a2 + 1);
  v17 = *(a2 + 2);
  v19 = *(a2 + 3);
  v21 = _s24PlaylistFolderDetailViewVMa(0, a5, a6, v20);
  v22 = a4 + v21[11];
  *v22 = swift_getKeyPath();
  *(v22 + 40) = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F490, &qword_217973880);
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v23);
  sub_2179598B0(v15);
  v24 = (a4 + v21[13]);
  *v24 = sub_217948AEC(0, 0xE000000000000000);
  v24[1] = v25;
  v24[2] = v26;
  v27 = (a4 + v21[19]);
  *v27 = xmmword_217973830;
  v27[1] = xmmword_217973840;
  v28 = sub_217968D2C();
  OUTLINED_FUNCTION_1_1();
  v30 = v29;
  v31 = OUTLINED_FUNCTION_63_0();
  v32(v31);
  v33 = a4 + v21[9];
  *v33 = v16;
  *(v33 + 8) = v18;
  *(v33 + 16) = v17;
  *(v33 + 24) = v19;
  *(a4 + v21[10]) = a3;
  v34 = swift_allocObject();
  *(v34 + 16) = v16;
  *(v34 + 24) = v18;
  *(v34 + 32) = v17;
  *(v34 + 40) = v19;
  v35 = v34 | 0x4000000000000000;
  *(a4 + v21[14]) = v34 | 0x4000000000000000;
  v36 = a4 + v21[15];
  *v36 = 1;
  *(v36 + 8) = 0;
  *(v36 + 16) = 0;
  *(v36 + 24) = v34 | 0x4000000000000000;

  sub_217863EC4(v19);
  sub_217863EC4(v35);
  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_28_6();
  v37 = sub_21796560C();
  v38 = (a4 + v21[16]);
  *v38 = v37;
  v38[1] = v39;
  OUTLINED_FUNCTION_28_6();
  v40 = sub_21796560C();
  v42 = v41;
  result = (*(v30 + 8))(a1, v28);
  v44 = (a4 + v21[17]);
  *v44 = v40;
  v44[1] = v42;
  *(a4 + v21[18]) = 0x4054000000000000;
  return result;
}

uint64_t sub_2179598B0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F488, &qword_217973850);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v2);
  sub_21788D484(a1, &v5 - v3, &qword_27CB8F488, &qword_217973850);
  sub_217967C0C();
  return sub_2178653BC(a1, &qword_27CB8F488, &qword_217973850);
}

void sub_21795996C(uint64_t a1)
{
  sub_217968D2C();
  if (v2 <= 0x3F)
  {
    sub_2178F0E2C(319, &qword_27CB8A628, &qword_27CB8A630, qword_21796A7B0, MEMORY[0x277CDF468]);
    if (v3 <= 0x3F)
    {
      sub_2178F0E2C(319, qword_27CB8F520, &qword_27CB8F488, &qword_217973850, MEMORY[0x277CE10B8]);
      if (v4 <= 0x3F)
      {
        sub_217948E00();
        if (v6 <= 0x3F)
        {
          _s24PlaylistFolderDetailViewV9ConstantsVMa(319, *(a1 + 16), *(a1 + 24), v5);
          if (v7 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_217959B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_217959B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v287 = a1;
  v279 = a2;
  v4 = sub_217966CEC();
  v5 = OUTLINED_FUNCTION_8_5(v4, v301);
  v277 = v6;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_52(v7);
  v8 = sub_21796738C();
  v9 = OUTLINED_FUNCTION_8_5(v8, &v298);
  v274 = v10;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_52(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C148, &unk_217972DC0);
  OUTLINED_FUNCTION_48(v12);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v14);
  v15 = sub_217966FEC();
  v16 = OUTLINED_FUNCTION_8_5(v15, &v296);
  v268 = v17;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_52(v18);
  v19 = sub_217966FFC();
  v20 = OUTLINED_FUNCTION_8_5(v19, v297);
  v270 = v21;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_52(v22);
  v23 = sub_21796923C();
  v24 = OUTLINED_FUNCTION_8_5(v23, &v294);
  v263 = v25;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_52(v26);
  OUTLINED_FUNCTION_0_1();
  v290 = v27;
  v289 = *(v28 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_52(v224 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8CC80, &qword_21796F110);
  OUTLINED_FUNCTION_33();
  v31 = sub_217968CFC();
  v32 = *(a1 + 16);
  OUTLINED_FUNCTION_4_23();
  v35 = sub_21795F794(v33, v34, &unk_2179714C0);
  v36 = *(a1 + 24);
  v302 = v31;
  v303 = v32;
  v37 = v32;
  v304 = v35;
  v305 = v36;
  v38 = v36;
  _s13ItemShelfCellVMa(255, &v302);
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  OUTLINED_FUNCTION_9();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8();
  v39 = sub_217967E9C();
  OUTLINED_FUNCTION_24();
  v42 = sub_217864B2C(v40, &qword_27CB8CC80, &qword_21796F110, v41);
  v45 = sub_21786438C(v42, v43, v44);
  v302 = v2;
  v303 = MEMORY[0x277CD7E90];
  v304 = v39;
  v305 = v42;
  v306 = v45;
  sub_217967D9C();
  OUTLINED_FUNCTION_33();
  sub_21796944C();
  OUTLINED_FUNCTION_19_0();
  v301[5] = swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  v301[4] = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  v46 = sub_21796665C();
  OUTLINED_FUNCTION_21_9(v46, v47, v48);
  OUTLINED_FUNCTION_9();
  v49 = sub_21796666C();
  OUTLINED_FUNCTION_28(v49, v50, v51);
  OUTLINED_FUNCTION_9();
  v52 = sub_21796686C();
  OUTLINED_FUNCTION_19();
  WitnessTable = swift_getWitnessTable();
  v56 = sub_217873C34(WitnessTable, v54, v55);
  v302 = v52;
  v303 = MEMORY[0x277D837D0];
  v57 = v52;
  v226 = v52;
  v58 = MEMORY[0x277D837D0];
  v304 = WitnessTable;
  v305 = v56;
  v281 = WitnessTable;
  v59 = v56;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_2();
  v283 = v61;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v63);
  v285 = v37;
  v64 = v38;
  v286 = v38;
  _s18NavigationBarStyleVMa(255, v37, v38, v65);
  v66 = sub_21796698C();
  OUTLINED_FUNCTION_2();
  v259 = v67;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v69);
  v302 = v57;
  v303 = v58;
  v304 = WitnessTable;
  v305 = v59;
  v70 = OUTLINED_FUNCTION_10_12();
  v280 = v70;
  OUTLINED_FUNCTION_17();
  v71 = swift_getWitnessTable();
  v301[2] = v70;
  v301[3] = v71;
  v265 = MEMORY[0x277CDFAD8];
  v72 = swift_getWitnessTable();
  v302 = v66;
  v303 = v72;
  v224[0] = v66;
  v225 = v72;
  v73 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_1();
  v255 = v74;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v76);
  done = _s15DoneToolbarItemVMa(255, v37, v64, v77);
  OUTLINED_FUNCTION_16();
  v79 = swift_getWitnessTable();
  v302 = done;
  v303 = v79;
  v80 = swift_getOpaqueTypeMetadata2();
  v302 = v66;
  v303 = v72;
  v81 = OUTLINED_FUNCTION_10_12();
  v302 = done;
  v303 = v79;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v227 = v73;
  v302 = v73;
  v303 = v80;
  v224[1] = v80;
  v304 = v81;
  v305 = OpaqueTypeConformance2;
  v229 = v81;
  v83 = OpaqueTypeConformance2;
  v228 = OpaqueTypeConformance2;
  v84 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_1();
  v257 = v85;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v87);
  v302 = v73;
  v303 = v80;
  v304 = v81;
  v305 = v83;
  v88 = OUTLINED_FUNCTION_10_12();
  v302 = v84;
  v89 = v84;
  v240 = v84;
  v90 = MEMORY[0x277D837D0];
  v303 = MEMORY[0x277D837D0];
  v304 = v88;
  v91 = v88;
  v235 = v88;
  v284 = v59;
  v305 = v59;
  v92 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_1();
  v256 = v93;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v95);
  v302 = v89;
  v303 = v90;
  v304 = v91;
  v305 = v59;
  v96 = OUTLINED_FUNCTION_10_12();
  v241 = v92;
  v302 = v92;
  v303 = v96;
  v97 = v96;
  v242 = v96;
  v98 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_1();
  v252 = v99;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v101);
  v302 = v92;
  v303 = v97;
  v102 = OUTLINED_FUNCTION_10_12();
  v236 = v98;
  v302 = v98;
  v303 = v102;
  v103 = v102;
  v237 = v102;
  v104 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_1();
  v246 = v105;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v107);
  v302 = v98;
  v303 = v103;
  v108 = OUTLINED_FUNCTION_10_12();
  v302 = v104;
  v303 = v108;
  v109 = v104;
  v230 = v104;
  v110 = v108;
  v231 = v108;
  v111 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_1();
  v254 = v112;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v114);
  v302 = v109;
  v303 = v110;
  v115 = OUTLINED_FUNCTION_10_12();
  v302 = v111;
  v303 = v90;
  v116 = v111;
  v233 = v111;
  v304 = v115;
  v305 = MEMORY[0x277D837F8];
  v117 = v115;
  v232 = v115;
  v118 = MEMORY[0x277D837F8];
  v119 = swift_getOpaqueTypeMetadata2();
  v245 = v119;
  OUTLINED_FUNCTION_0_1();
  v250 = v120;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v121);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v122);
  v302 = v116;
  v303 = v90;
  v304 = v117;
  v305 = v118;
  v244 = OUTLINED_FUNCTION_10_12();
  v302 = v119;
  v303 = v244;
  v249 = MEMORY[0x277CDED18];
  v247 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_1();
  v253 = v123;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v124);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v125);
  v248 = sub_21796698C();
  OUTLINED_FUNCTION_0_1();
  v260 = v126;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v127);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v128);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8EFE0, &unk_217972DD0);
  v129 = sub_21796698C();
  v130 = OUTLINED_FUNCTION_8_5(v129, &v290);
  v261 = v131;
  v132 = MEMORY[0x28223BE20](v130);
  v251 = v224 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v132);
  OUTLINED_FUNCTION_52(v224 - v134);
  v135 = v287;
  v136 = v291;
  sub_21795B388(v287);
  v298 = v302;
  v299 = v303;
  v301[0] = sub_217968D0C();
  v301[1] = v137;
  swift_checkMetadataState();
  OUTLINED_FUNCTION_149();
  sub_2179677EC();

  v138 = v285;
  v139 = v280;
  v140 = v286;
  v141 = j__OUTLINED_FUNCTION_59();
  v142 = v239;
  sub_21792D7FC(v141 & 1, v138, OpaqueTypeMetadata2, v138, v139, v140);
  OUTLINED_FUNCTION_54();
  v143(v118, OpaqueTypeMetadata2);
  v226 = " any playlists in this folder.";
  v144 = v290;
  v145 = *(v290 + 16);
  v282 = v290 + 16;
  v283 = v145;
  v146 = v288;
  v147 = v135;
  v145(v288, v136, v135);
  sub_21796920C();
  v148 = sub_2179691FC();
  v280 = *(v144 + 80);
  v149 = v144;
  v150 = (v280 + 48) & ~v280;
  v151 = swift_allocObject();
  v152 = MEMORY[0x277D85700];
  v151[2] = v148;
  v151[3] = v152;
  v151[4] = v138;
  v151[5] = v140;
  v153 = *(v149 + 32);
  v290 = v149 + 32;
  v281 = v153;
  v153(v151 + v150, v146, v147);
  v154 = v262;
  v155 = v224[0];
  v156 = v225;
  sub_21785BFCC(v224[0]);
  OUTLINED_FUNCTION_149();
  sub_21785C01C(0, 0, v154, 0xD00000000000003ELL, v157, 66, v158, v151, v155, v156);
  OUTLINED_FUNCTION_54();
  v159(v154, v264);
  OUTLINED_FUNCTION_54();
  v160(v142, v155);
  v295 = v138;
  v296 = v140;
  swift_checkMetadataState();
  OUTLINED_FUNCTION_37_5();
  sub_217967A1C();
  OUTLINED_FUNCTION_54();
  v161 = OUTLINED_FUNCTION_39_7();
  v162(v161);
  v163 = v291;
  v164 = (v291 + *(v147 + 52));
  v264 = *v164;
  v166 = v164[1];
  v165 = v164[2];
  v263 = v166;
  v262 = v165;
  v298 = v264;
  v299 = v166;
  v300 = v165;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8EFE8, &unk_2179739E0);
  sub_217967C3C();
  v167 = v267;
  sub_217966FDC();
  v168 = v266;
  sub_217966FBC();
  OUTLINED_FUNCTION_54();
  v169(v167, v269);
  v170 = (v163 + *(v147 + 64));
  v171 = v170[1];
  v302 = *v170;
  v303 = v171;

  OUTLINED_FUNCTION_149();
  v172 = v240;
  sub_2179676DC();

  OUTLINED_FUNCTION_54();
  v173(v168, v271);
  OUTLINED_FUNCTION_54();
  v174(v155, v172);
  v175 = v272;
  sub_21796726C();
  v176 = sub_21796727C();
  __swift_storeEnumTagSinglePayload(v175, 0, 1, v176);
  OUTLINED_FUNCTION_37_5();
  sub_21796793C();
  sub_2178653BC(v175, &qword_27CB8C148, &unk_217972DC0);
  OUTLINED_FUNCTION_54();
  v177 = OUTLINED_FUNCTION_39_7();
  v178(v177);
  v179 = v273;
  sub_21796737C();
  OUTLINED_FUNCTION_149();
  v180 = v236;
  sub_21796795C();
  OUTLINED_FUNCTION_54();
  v181(v179, v275);
  OUTLINED_FUNCTION_54();
  v182(v155, v180);
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x21CEA6830](1, v230, v231);
  OUTLINED_FUNCTION_54();
  v183 = OUTLINED_FUNCTION_39_7();
  v184(v183);
  v302 = v264;
  v303 = v263;
  v304 = v262;
  sub_217967C1C();
  v185 = v299;
  v302 = v298;
  v303 = v299;
  OUTLINED_FUNCTION_42_3();
  v186();
  v187 = swift_allocObject();
  v188 = v286;
  *(v187 + 16) = v285;
  *(v187 + 24) = v188;
  OUTLINED_FUNCTION_35_4();
  v189();
  v190 = v233;
  sub_217862E84();
  v191 = v238;
  sub_217967A6C();

  OUTLINED_FUNCTION_54();
  v192(v155, v190);
  OUTLINED_FUNCTION_149();
  v194 = v276;
  v195 = v278;
  (*(v193 + 104))(v276);
  v196 = v234;
  v197 = v245;
  v198 = v244;
  sub_21796794C();
  (*(v185 + 8))(v194, v195);
  OUTLINED_FUNCTION_54();
  v199(v191, v197);
  OUTLINED_FUNCTION_42_3();
  v200();
  v201 = swift_allocObject();
  v202 = v285;
  v203 = v286;
  *(v201 + 16) = v285;
  *(v201 + 24) = v203;
  OUTLINED_FUNCTION_35_4();
  v204();
  v302 = v197;
  v303 = v198;
  v205 = swift_getOpaqueTypeConformance2();
  v206 = v243;
  v207 = v247;
  sub_2178D0790(sub_21795F14C, v201, v247, v205);

  OUTLINED_FUNCTION_54();
  v208(v196, v207);
  sub_217967E3C();
  v292 = v202;
  v293 = v203;
  v294 = v291;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8EFF0, &unk_217972DE0);
  v212 = sub_217864644(v209, v210, v211);
  v297[2] = v205;
  v297[3] = v212;
  v213 = v265;
  v214 = v248;
  v215 = swift_getWitnessTable();
  sub_2179504C0(&qword_27CB8EFF8, &qword_27CB8EFF0, &unk_217972DE0, sub_21794FAB8);
  v216 = v251;
  OUTLINED_FUNCTION_63_0();
  sub_2179679DC();
  OUTLINED_FUNCTION_54();
  v217(v206, v214);
  OUTLINED_FUNCTION_13_2();
  v220 = sub_217864B2C(v218, &qword_27CB8EFE0, &unk_217972DD0, v219);
  v297[0] = v215;
  v297[1] = v220;
  v221 = v258;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_37_5();
  sub_2179560E4();
  v222 = *(v261 + 8);
  v222(v216, v221);
  sub_2179560E4();
  return (v222)(v213, v221);
}

double sub_21795B388(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v2 + 16))(&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  *(v5 + 16) = v6;
  *(v5 + 24) = v7;
  (*(v2 + 32))(v5 + v4, &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8CC80, &qword_21796F110);
  v9 = sub_217968CFC();
  v10 = sub_21795F794(&qword_27CB8BFA0, MEMORY[0x277D2B358], &unk_2179714C0);
  v23 = v9;
  v24 = v6;
  v25 = v10;
  v26 = v7;
  _s13ItemShelfCellVMa(255, &v23);
  sub_21796698C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  swift_getTupleTypeMetadata2();
  v11 = sub_217967E9C();
  v12 = sub_217864B2C(&qword_27CB8F5A8, &qword_27CB8CC80, &qword_21796F110, MEMORY[0x277CD7CB0]);
  v15 = sub_21786438C(v12, v13, v14);
  v23 = v8;
  v24 = MEMORY[0x277CD7E90];
  v25 = v11;
  v26 = v12;
  v27 = v15;
  sub_217967D9C();
  sub_21796944C();
  WitnessTable = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21796665C();
  swift_getWitnessTable();
  sub_21796666C();
  swift_getWitnessTable();
  v19 = sub_21796685C();
  v20 = v16;
  sub_21796686C();
  swift_getWitnessTable();
  sub_2179560E4();

  v19 = v23;
  v20 = v24;
  sub_2179560E4();

  return result;
}

uint64_t sub_21795B748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_21796920C();
  v5[3] = sub_2179691FC();
  v8 = swift_task_alloc();
  v5[4] = v8;
  v10 = _s24PlaylistFolderDetailViewVMa(0, a4, a5, v9);
  *v8 = v5;
  v8[1] = sub_21795B818;

  return sub_21795B93C(v10);
}

uint64_t sub_21795B818()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_64_2();
  v1 = *v0;
  OUTLINED_FUNCTION_6();
  *v2 = v1;

  sub_2179691BC();
  v3 = OUTLINED_FUNCTION_31_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_21795B93C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = sub_21796920C();
  v2[10] = sub_2179691FC();
  v4 = swift_task_alloc();
  v2[11] = v4;
  *v4 = v2;
  v4[1] = sub_21795B9FC;

  return sub_21795C138(a1);
}

uint64_t sub_21795B9FC()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_64_2();
  v1 = *v0;
  OUTLINED_FUNCTION_6();
  *v2 = v1;

  sub_2179691BC();
  v3 = OUTLINED_FUNCTION_31_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_21795BB20()
{

  sub_217956100();
  if (v0[5])
  {
    v2 = v0[7];
    v1 = v0[8];
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v7 = *(v1 + *(v2 + 56));
    v4 = *(v3 + 8);
    sub_217863EC4(v7);
    OUTLINED_FUNCTION_45();
    v4();
    sub_2178643E0(v7);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  else
  {
    sub_2178653BC((v0 + 2), &qword_27CB8A630, qword_21796A7B0);
  }

  OUTLINED_FUNCTION_39();

  return v5();
}

double sub_21795BC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a2;
  v34 = a3;
  v5 = _s24PlaylistFolderDetailViewVMa(0, a2, a3, a4);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F488, &qword_217973850);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  v18 = (a1 + *(v5 + 52));
  v19 = *v18;
  v20 = *(v18 + 2);
  v37 = v19;
  v38 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8EFE8, &unk_2179739E0);
  sub_217967C1C();
  v22 = v35;
  v21 = v36;

  v23 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v23 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F490, &qword_217973880);
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v24);
    sub_21788D484(v17, v15, &qword_27CB8F488, &qword_217973850);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8F498, &qword_217973888);
    sub_217967C2C();
    sub_2178653BC(v17, &qword_27CB8F488, &qword_217973850);
  }

  v25 = sub_21796923C();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v25);
  (*(v6 + 16))(v8, a1, v5);
  sub_21796920C();
  v26 = sub_2179691FC();
  v27 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v28 = swift_allocObject();
  v29 = MEMORY[0x277D85700];
  *(v28 + 2) = v26;
  *(v28 + 3) = v29;
  v30 = v34;
  *(v28 + 4) = v33;
  *(v28 + 5) = v30;
  (*(v6 + 32))(&v28[v27], v8, v5);
  sub_2178D207C();

  return result;
}

uint64_t sub_21795BF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_21796920C();
  v6[3] = sub_2179691FC();
  v9 = swift_task_alloc();
  v6[4] = v9;
  v11 = _s24PlaylistFolderDetailViewVMa(0, a5, a6, v10);
  *v9 = v6;
  v9[1] = sub_21795C014;

  return sub_21795C138(v11);
}

uint64_t sub_21795C014()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_64_2();
  v1 = *v0;
  OUTLINED_FUNCTION_6();
  *v2 = v1;

  sub_2179691BC();
  v3 = OUTLINED_FUNCTION_31_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_21795C138(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v4 = sub_217968D2C();
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = *(a1 - 8);
  v2[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F488, &qword_217973850);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F490, &qword_217973880);
  v2[29] = v5;
  v2[30] = *(v5 - 8);
  v2[31] = swift_task_alloc();
  v6 = sub_2179655BC();
  v2[32] = v6;
  v2[33] = *(v6 - 8);
  v2[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F5B0, &qword_217973A38);
  v2[35] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BFC0, &qword_217973A40);
  v2[36] = v7;
  v2[37] = *(v7 - 8);
  v2[38] = swift_task_alloc();
  sub_21796920C();
  v2[39] = sub_2179691FC();
  v9 = sub_2179691BC();
  v2[40] = v9;
  v2[41] = v8;

  return MEMORY[0x2822009F8](sub_21795C428, v9, v8);
}

uint64_t sub_21795C428()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[22];
  v4 = v0[23];
  v6 = v0[20];
  v5 = v0[21];
  sub_217968CFC();
  OUTLINED_FUNCTION_4_23();
  sub_21795F794(v7, v8, MEMORY[0x277D2B340]);
  sub_21796820C();
  KeyPath = swift_getKeyPath();
  v0[42] = *(v4 + 16);
  v0[43] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10 = OUTLINED_FUNCTION_39_7();
  v11(v10);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v3);
  OUTLINED_FUNCTION_15_13();
  v14 = sub_21795F794(v12, v13, MEMORY[0x277D2B388]);
  MEMORY[0x21CEA7150](KeyPath, v1, v2, v14);

  sub_2178653BC(v1, &qword_27CB8F5B0, &qword_217973A38);
  v15 = (v5 + *(v6 + 52));
  v16 = v15[1];
  v17 = v15[2];
  v34 = *v15;
  v0[2] = *v15;
  v0[3] = v16;
  v0[4] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8EFE8, &unk_2179739E0);
  sub_217967C1C();
  v19 = v0[11];
  v18 = v0[12];

  v20 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v22 = v0[33];
    v21 = v0[34];
    v33 = v0[32];
    v0[5] = v34;
    v0[6] = v16;
    v0[7] = v17;
    sub_217967C1C();
    v0[15] = v0[13];
    v0[16] = v0[14];
    v23 = sub_21796559C();
    sub_217873C34(v23, v24, v25);
    v26 = sub_21796947C();
    v28 = v27;
    (*(v22 + 8))(v21, v33);

    v29 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v29 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {
      v0[8] = v34;
      v0[9] = v16;
      v0[10] = v17;
      sub_217967C1C();
      sub_2179681DC();
    }
  }

  v30 = swift_task_alloc();
  v0[44] = v30;
  *v30 = v0;
  v30[1] = sub_21795C71C;
  v31 = v0[31];

  return MEMORY[0x282124698](v31);
}

uint64_t sub_21795C71C()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 328);
  v4 = *(v2 + 320);
  if (v0)
  {
    v5 = sub_21795C9EC;
  }

  else
  {
    v5 = sub_21795C858;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21795C858()
{
  v1 = v0[37];
  v9 = v0[36];
  v10 = v0[38];
  v2 = v0[30];
  v3 = v0[31];
  v5 = v0[28];
  v4 = v0[29];
  v6 = v0[27];

  (*(v2 + 16))(v5, v3, v4);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v4);
  sub_21788D484(v5, v6, &qword_27CB8F488, &qword_217973850);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8F498, &qword_217973888);
  sub_217967C2C();
  sub_2178653BC(v5, &qword_27CB8F488, &qword_217973850);
  (*(v2 + 8))(v3, v4);
  (*(v1 + 8))(v10, v9);
  OUTLINED_FUNCTION_27_8();

  OUTLINED_FUNCTION_39();

  return v7();
}

uint64_t sub_21795C9EC()
{
  v40 = v0;
  v1 = v0[38];
  v2 = v0[36];
  v3 = v0[37];

  (*(v3 + 8))(v1, v2);
  if (qword_27CB8A480 != -1)
  {
    swift_once();
  }

  v4 = v0[45];
  v6 = v0[25];
  v5 = v0[26];
  v8 = v0[20];
  v7 = v0[21];
  v9 = sub_21796653C();
  __swift_project_value_buffer(v9, qword_27CB97B00);
  (*(v6 + 16))(v5, v7, v8);
  v10 = v4;
  v11 = sub_21796651C();
  v12 = sub_21796937C();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[45];
  if (v13)
  {
    v38 = v12;
    v15 = v0[42];
    v35 = v0[45];
    v16 = v0[25];
    v17 = v0[26];
    log = v11;
    v19 = v0[23];
    v18 = v0[24];
    v20 = v0[22];
    v21 = v0[20];
    v22 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v39 = v36;
    *v22 = 136446466;
    v15(v18, v17, v20);
    (*(v16 + 8))(v17, v21);
    OUTLINED_FUNCTION_15_13();
    sub_21795F794(v23, v24, MEMORY[0x277D2B3C8]);
    v25 = sub_21796966C();
    v27 = v26;
    (*(v19 + 8))(v18, v20);
    v28 = sub_217957F4C(v25, v27, &v39);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2082;
    v0[19] = v35;
    v29 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A750, &unk_21796A930);
    v30 = sub_217968F8C();
    v32 = sub_217957F4C(v30, v31, &v39);

    *(v22 + 14) = v32;
    _os_log_impl(&dword_217846000, log, v38, "Failed to load content for %{public}s. Error = %{public}s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA8ED0](v36, -1, -1);
    MEMORY[0x21CEA8ED0](v22, -1, -1);
  }

  else
  {
    (*(v0[25] + 8))(v0[26], v0[20]);
  }

  OUTLINED_FUNCTION_27_8();

  OUTLINED_FUNCTION_39();

  return v33();
}

uint64_t sub_21795CD40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MusicPicker.Click.ControlID(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = _s24PlaylistFolderDetailViewVMa(0, a2, a3, v9);
  sub_217956100();
  v11 = v26;
  if (!v26)
  {
    return sub_2178653BC(v25, &qword_27CB8A630, qword_21796A7B0);
  }

  v12 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  swift_storeEnumTagMultiPayload();
  v13 = a1 + *(v10 + 36);
  v15 = *(v13 + 8);
  v14 = *(v13 + 16);
  v16 = *(v13 + 24);
  v21[0] = *v13;
  v22 = v15;
  v23 = v14;
  v24 = v16;
  v17 = *(v12 + 16);

  sub_217863EC4(v16);
  v17(v8, v21, v11, v12);
  v18 = v24;

  sub_2178643E0(v18);
  sub_21792C198(v8);
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_21795CEB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v65 = a4;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F018, &unk_217973A00);
  v53 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v52 = v50 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F028, &qword_217972DF0);
  MEMORY[0x28223BE20](v56);
  v58 = v50 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B880, &qword_21796C6A0);
  v55 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v54 = v50 - v9;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F008, &unk_2179739F0);
  MEMORY[0x28223BE20](v64);
  v57 = v50 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F490, &qword_217973880);
  v63 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F488, &qword_217973850);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v50 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CC80, &qword_21796F110);
  v18 = *(v17 - 8);
  v61 = v17;
  v62 = v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v50 - v22;
  v25 = _s24PlaylistFolderDetailViewVMa(0, a2, a3, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8F498, &qword_217973888);
  sub_217967C1C();
  if (__swift_getEnumTagSinglePayload(v16, 1, v11))
  {
    sub_2178653BC(v16, &qword_27CB8F488, &qword_217973850);
LABEL_9:
    v41 = 1;
    v42 = v65;
    return __swift_storeEnumTagSinglePayload(v42, v41, 1, v64);
  }

  v50[1] = a2;
  v50[2] = a3;
  v51 = a1;
  v26 = v63;
  (*(v63 + 16))(v13, v16, v11);
  sub_2178653BC(v16, &qword_27CB8F488, &qword_217973850);
  sub_21796823C();
  (*(v26 + 8))(v13, v11);
  v27 = v61;
  v28 = v62;
  (*(v62 + 32))(v23, v21, v61);
  if (!sub_2178D2C0C())
  {
    (*(v28 + 8))(v23, v27);
    goto LABEL_9;
  }

  v29 = v51 + *(v25 + 52);
  v30 = *v29;
  v31 = *(v29 + 16);
  v68 = v30;
  v69 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8EFE8, &unk_2179739E0);
  sub_217967C1C();
  v33 = v66;
  v32 = v67;

  v35 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v35 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (v35)
  {
    v36 = v54;
    sub_2179670DC();
    v37 = v55;
    v38 = v59;
    (*(v55 + 16))(v58, v36, v59);
    swift_storeEnumTagMultiPayload();
    v39 = MEMORY[0x277CDE158];
    sub_217864B2C(&qword_27CB8B878, &qword_27CB8B880, &qword_21796C6A0, MEMORY[0x277CDE158]);
    sub_217864B2C(&qword_27CB8F010, &qword_27CB8F018, &unk_217973A00, v39);
    v40 = v57;
    sub_217966F8C();
    (*(v37 + 8))(v36, v38);
  }

  else
  {
    MEMORY[0x28223BE20](v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F030, &unk_217973A10);
    sub_217864B2C(qword_27CB8F038, &qword_27CB8F030, &unk_217973A10, MEMORY[0x277CDEFF0]);
    v44 = v27;
    v45 = v52;
    sub_2179670CC();
    v46 = v53;
    v47 = v60;
    (*(v53 + 16))(v58, v45, v60);
    swift_storeEnumTagMultiPayload();
    v48 = MEMORY[0x277CDE158];
    sub_217864B2C(&qword_27CB8B878, &qword_27CB8B880, &qword_21796C6A0, MEMORY[0x277CDE158]);
    sub_217864B2C(&qword_27CB8F010, &qword_27CB8F018, &unk_217973A00, v48);
    v40 = v57;
    sub_217966F8C();
    v49 = v45;
    v27 = v44;
    (*(v46 + 8))(v49, v47);
  }

  (*(v28 + 8))(v23, v27);
  v42 = v65;
  sub_217898E78(v40, v65, &qword_27CB8F008, &unk_2179739F0);
  v41 = 0;
  return __swift_storeEnumTagSinglePayload(v42, v41, 1, v64);
}

uint64_t sub_21795D6AC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = _s24PlaylistFolderDetailViewVMa(0, a2, a3, a4);
  sub_217873C34(v6, v7, v8);

  result = sub_21796763C();
  *a5 = result;
  *(a5 + 8) = v10;
  *(a5 + 16) = v11 & 1;
  *(a5 + 24) = v12;
  return result;
}

uint64_t sub_21795D72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8CC80, &qword_21796F110);
  v28 = sub_217968CFC();
  v29 = a3;
  v30 = sub_21795F794(&qword_27CB8BFA0, MEMORY[0x277D2B358], &unk_2179714C0);
  v31 = a4;
  _s13ItemShelfCellVMa(255, &v28);
  sub_21796698C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  swift_getTupleTypeMetadata2();
  v8 = sub_217967E9C();
  v9 = sub_217864B2C(&qword_27CB8F5A8, &qword_27CB8CC80, &qword_21796F110, MEMORY[0x277CD7CB0]);
  v12 = sub_21786438C(v9, v10, v11);
  v28 = v7;
  v29 = MEMORY[0x277CD7E90];
  v30 = v8;
  v31 = v9;
  v32 = v12;
  sub_217967D9C();
  sub_21796944C();
  WitnessTable = swift_getWitnessTable();
  v26 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21796665C();
  swift_getWitnessTable();
  v13 = sub_21796666C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v19 = &v22[-v18];
  sub_2179673DC();
  v23 = a3;
  v24 = a4;
  v25 = a2;
  sub_21796667C();
  swift_getWitnessTable();
  sub_2179560E4();
  v20 = *(v14 + 8);
  v20(v17, v13);
  sub_2179560E4();
  return (v20)(v19, v13);
}

uint64_t sub_21795DAA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27[1] = a4;
  v7 = sub_21796708C();
  MEMORY[0x28223BE20](v7 - 8);
  v27[0] = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8CC80, &qword_21796F110);
  v10 = sub_217968CFC();
  v11 = sub_21795F794(&qword_27CB8BFA0, MEMORY[0x277D2B358], &unk_2179714C0);
  v28 = v10;
  v29 = a2;
  v30 = v11;
  v31 = a3;
  _s13ItemShelfCellVMa(255, &v28);
  sub_21796698C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  swift_getTupleTypeMetadata2();
  v12 = sub_217967E9C();
  v13 = sub_217864B2C(&qword_27CB8F5A8, &qword_27CB8CC80, &qword_21796F110, MEMORY[0x277CD7CB0]);
  v16 = sub_21786438C(v13, v14, v15);
  v28 = v9;
  v29 = MEMORY[0x277CD7E90];
  v30 = v12;
  v31 = v13;
  v32 = v16;
  sub_217967D9C();
  sub_21796944C();
  v27[8] = swift_getWitnessTable();
  v27[7] = swift_getWitnessTable();
  swift_getWitnessTable();
  v17 = sub_21796665C();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v27 - v22;
  sub_217966E6C();
  _s24PlaylistFolderDetailViewVMa(0, a2, a3, v24);
  v27[4] = a2;
  v27[5] = a3;
  v27[6] = a1;
  sub_21789A9E0();
  sub_21796664C();
  swift_getWitnessTable();
  sub_2179560E4();
  v25 = *(v18 + 8);
  v25(v21, v17);
  sub_2179560E4();
  return (v25)(v23, v17);
}

uint64_t sub_21795DE78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v78 = a5;
  v79 = a1;
  v7 = _s24PlaylistFolderDetailViewVMa(0, a2, a3, a4);
  v69 = *(v7 - 8);
  v68 = *(v69 + 64);
  MEMORY[0x28223BE20](v7);
  v63 = &v60 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8CC80, &qword_21796F110);
  v10 = sub_217968CFC();
  v11 = sub_21795F794(&qword_27CB8BFA0, MEMORY[0x277D2B358], &unk_2179714C0);
  v84 = v10;
  v85 = a2;
  v71 = a2;
  v72 = a3;
  v86 = v11;
  v87 = a3;
  _s13ItemShelfCellVMa(255, &v84);
  sub_21796698C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  swift_getTupleTypeMetadata2();
  v12 = sub_217967E9C();
  v13 = sub_217864B2C(&qword_27CB8F5A8, &qword_27CB8CC80, &qword_21796F110, MEMORY[0x277CD7CB0]);
  v16 = sub_21786438C(v13, v14, v15);
  v84 = v9;
  v85 = MEMORY[0x277CD7E90];
  v77 = v12;
  v86 = v12;
  v87 = v13;
  v64 = v13;
  v88 = v16;
  v17 = sub_217967D9C();
  v67 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v66 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v65 = &v60 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F490, &qword_217973880);
  v61 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v60 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F488, &qword_217973850);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v27 = &v60 - v26;
  v75 = v9;
  v62 = *(v9 - 8);
  v28 = MEMORY[0x28223BE20](v25);
  v74 = &v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v60 - v31;
  MEMORY[0x28223BE20](v30);
  v73 = &v60 - v33;
  v34 = sub_21796944C();
  v76 = *(v34 - 8);
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v60 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = &v60 - v38;
  v70 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8F498, &qword_217973888);
  sub_217967C1C();
  if (__swift_getEnumTagSinglePayload(v27, 1, v21))
  {
    sub_2178653BC(v27, &qword_27CB8F488, &qword_217973850);
    __swift_storeEnumTagSinglePayload(v37, 1, 1, v17);
    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
  }

  else
  {
    v40 = v61;
    (*(v61 + 16))(v23, v27, v21);
    sub_2178653BC(v27, &qword_27CB8F488, &qword_217973850);
    sub_21796823C();
    (*(v40 + 8))(v23, v21);
    v41 = v62;
    v42 = v73;
    v43 = v75;
    (*(v62 + 32))(v73, v32, v75);
    (*(v41 + 16))(v74, v42, v43);
    v45 = v69;
    v44 = v70;
    v46 = v63;
    (*(v69 + 16))(v63, v79, v70);
    v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v48 = swift_allocObject();
    v49 = v72;
    *(v48 + 16) = v71;
    *(v48 + 24) = v49;
    (*(v45 + 32))(v48 + v47, v46, v44);
    v50 = swift_getWitnessTable();
    sub_21795F794(&qword_27CB8E148, MEMORY[0x277D2B358], MEMORY[0x277D2B378]);
    v51 = v66;
    v52 = v75;
    sub_217967D8C();
    (*(v41 + 8))(v73, v52);
    v80 = v50;
    swift_getWitnessTable();
    v79 = v34;
    v53 = v39;
    v54 = v65;
    sub_2179560E4();
    v55 = v67;
    v56 = *(v67 + 8);
    v56(v51, v17);
    sub_2179560E4();
    v57 = v54;
    v39 = v53;
    v34 = v79;
    v56(v57, v17);
    (*(v55 + 32))(v37, v51, v17);
    __swift_storeEnumTagSinglePayload(v37, 0, 1, v17);
  }

  sub_2178AEE20(v37, v39);
  v58 = *(v76 + 8);
  v58(v37, v34);
  v82 = swift_getWitnessTable();
  v81 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2179560E4();
  return (v58)(v39, v34);
}

uint64_t sub_21795E780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v63 = a2;
  v60 = a1;
  v69 = a5;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A780, &qword_21796C770);
  MEMORY[0x28223BE20](v66);
  v65 = &v56 - v7;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v8 = MEMORY[0x28223BE20](v68);
  v67 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v64 = &v56 - v10;
  v11 = sub_217968CFC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_21795F794(&qword_27CB8BFA0, MEMORY[0x277D2B358], &unk_2179714C0);
  v74 = v11;
  v75 = a3;
  v76 = v56;
  v77 = a4;
  v15 = _s13ItemShelfCellVMa(0, &v74);
  v58 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v56 - v16;
  v18 = sub_21796698C();
  v61 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v56 - v19;
  v59 = sub_21796698C();
  v62 = *(v59 - 8);
  v21 = MEMORY[0x28223BE20](v59);
  v70 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v57 = &v56 - v23;
  (*(v12 + 16))(v14, v60, v11);
  v60 = _s24PlaylistFolderDetailViewVMa(0, a3, a4, v24);
  v25 = v63 + *(v60 + 60);
  v27 = *(v25 + 8);
  v26 = *(v25 + 16);
  v28 = *(v25 + 24);
  LOBYTE(v74) = *v25;
  v75 = v27;
  v76 = v26;
  v77 = v28;

  sub_217863EC4(v28);
  v29 = a3;
  v30 = v56;
  v31 = sub_2178AA2C4();
  sub_21791B630(v14, &v74, 0, 0, 11, 0, 1, v31, v17, v32, v33, v29, v11, v29, v30, a4);
  sub_21796742C();
  WitnessTable = swift_getWitnessTable();
  sub_217967A0C();
  (*(v58 + 8))(v17, v15);
  sub_21796743C();
  v35 = MEMORY[0x277CDF918];
  v73[4] = WitnessTable;
  v73[5] = MEMORY[0x277CDF918];
  v36 = swift_getWitnessTable();
  v37 = v70;
  sub_217967A0C();
  (*(v61 + 8))(v20, v18);
  v73[2] = v36;
  v73[3] = v35;
  v38 = v59;
  v39 = swift_getWitnessTable();
  v40 = v57;
  v41 = v37;
  sub_2179560E4();
  v42 = v62;
  v43 = *(v62 + 8);
  v43(v41, v38);
  v44 = v65;
  sub_217967D6C();
  LOBYTE(v41) = sub_21796742C();
  sub_21796660C();
  v45 = v66;
  v46 = v44 + *(v66 + 36);
  *v46 = v41;
  *(v46 + 8) = v47;
  *(v46 + 16) = v48;
  *(v46 + 24) = v49;
  *(v46 + 32) = v50;
  *(v46 + 40) = 0;
  v51 = v64;
  sub_217898E78(v44, v64, &qword_27CB8A780, &qword_21796C770);
  __swift_storeEnumTagSinglePayload(v51, 0, 1, v45);
  v52 = *(v42 + 16);
  v53 = v70;
  v52(v70, v40, v38);
  v74 = v53;
  v54 = v67;
  sub_21788D484(v51, v67, &qword_27CB8A6E0, &qword_21796A8E0);
  v75 = v54;
  v73[0] = v38;
  v73[1] = v68;
  v71 = v39;
  v72 = sub_2179504C0(&qword_27CB8A7B8, &qword_27CB8A6E0, &qword_21796A8E0, sub_217864C64);
  sub_2178B9390(&v74, 2, v73);
  sub_2178653BC(v51, &qword_27CB8A6E0, &qword_21796A8E0);
  v43(v40, v38);
  sub_2178653BC(v54, &qword_27CB8A6E0, &qword_21796A8E0);
  return (v43)(v53, v38);
}

uint64_t sub_21795EEF0(double a1, double a2, double a3, double a4)
{
  sub_21796973C();
  sub_2178D12D0(a1, a2, a3, a4);
  return sub_21796977C();
}

uint64_t sub_21795EFB0(uint64_t a1)
{
  sub_21796973C();
  sub_2178D12D0(*v1, v1[1], v1[2], v1[3]);
  return sub_21796977C();
}

uint64_t sub_21795F044()
{
  v2 = v0[4];
  v3 = v0[5];
  OUTLINED_FUNCTION_45();
  v8 = _s24PlaylistFolderDetailViewVMa(v4, v5, v6, v7);
  OUTLINED_FUNCTION_48(v8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = v0[2];
  v12 = v0[3];
  v13 = swift_task_alloc();
  *(v1 + 16) = v13;
  *v13 = v1;
  v13[1] = sub_2178EB854;

  return sub_21795B748(v11, v12, v0 + v10, v2, v3);
}

uint64_t sub_21795F164(uint64_t (*a1)(void))
{
  OUTLINED_FUNCTION_45();
  v5 = _s24PlaylistFolderDetailViewVMa(v1, v2, v3, v4);
  OUTLINED_FUNCTION_48(v5);
  OUTLINED_FUNCTION_45();

  return a1();
}

uint64_t objectdestroy_16Tm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s24PlaylistFolderDetailViewVMa(0, *(v5 + 32), *(v5 + 40), a4);
  OUTLINED_FUNCTION_13();
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  swift_unknownObjectRelease();
  v10 = v5 + v9;
  sub_217968D2C();
  OUTLINED_FUNCTION_3();
  (*(v11 + 8))(v5 + v9);
  OUTLINED_FUNCTION_74();
  sub_2178643E0(*(v6 + 24));
  v12 = v5 + v9 + v4[11];
  if (*(v12 + 40))
  {
    if (*(v12 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v12);
    }
  }

  else
  {
  }

  v13 = v10 + v4[12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F490, &qword_217973880);
  if (!OUTLINED_FUNCTION_71(v14))
  {
    (*(*(v7 - 8) + 8))(v13, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8F498, &qword_217973888);

  v15 = v10 + v4[13];

  sub_2178643E0(*(v10 + v4[14]));
  OUTLINED_FUNCTION_74();
  sub_2178643E0(*(v15 + 24));
  OUTLINED_FUNCTION_45_4();
  OUTLINED_FUNCTION_45_4();

  return swift_deallocObject();
}

uint64_t sub_21795F3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[4];
  v8 = v4[5];
  v9 = _s24PlaylistFolderDetailViewVMa(0, v7, v8, a4);
  OUTLINED_FUNCTION_48(v9);
  v11 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v12 = v4[2];
  v13 = v4[3];
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  *v14 = v5;
  v14[1] = sub_2178EC8F0;

  return sub_21795BF44(a1, v12, v13, v4 + v11, v7, v8);
}

uint64_t objectdestroy_20Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s24PlaylistFolderDetailViewVMa(0, *(v5 + 16), *(v5 + 24), a4);
  OUTLINED_FUNCTION_13();
  v9 = v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  sub_217968D2C();
  OUTLINED_FUNCTION_3();
  (*(v10 + 8))(v9);
  OUTLINED_FUNCTION_74();
  sub_2178643E0(*(v6 + 24));
  v11 = v9 + v4[11];
  if (*(v11 + 40))
  {
    if (*(v11 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v11);
    }
  }

  else
  {
  }

  v12 = v9 + v4[12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F490, &qword_217973880);
  if (!OUTLINED_FUNCTION_71(v13))
  {
    (*(*(v7 - 8) + 8))(v12, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8F498, &qword_217973888);

  v14 = v9 + v4[13];

  sub_2178643E0(*(v9 + v4[14]));
  OUTLINED_FUNCTION_74();
  sub_2178643E0(*(v14 + 24));
  OUTLINED_FUNCTION_45_4();
  OUTLINED_FUNCTION_45_4();

  return swift_deallocObject();
}

uint64_t sub_21795F6E8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = _s24PlaylistFolderDetailViewVMa(0, v6, v7, a4);
  OUTLINED_FUNCTION_48(v8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return a2(a1, v10, v6, v7);
}

uint64_t sub_21795F794(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_10_12()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_21_9(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_22_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_27_8()
{
}

uint64_t OUTLINED_FUNCTION_45_4()
{
}

uint64_t sub_21795F90C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_217968B0C();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_217968B1C();
  OUTLINED_FUNCTION_2();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, v2, v10);
  result = (*(v12 + 88))(v15, v10);
  if (result == *MEMORY[0x277CE4428])
  {
    v17 = OUTLINED_FUNCTION_1_26();
    result = v18(v17);
    v19 = 0;
    v20 = *v15;
LABEL_11:
    *a1 = v20;
    *(a1 + 8) = v19;
    return result;
  }

  if (result == *MEMORY[0x277CE4418])
  {
    v21 = OUTLINED_FUNCTION_1_26();
    v22(v21);
    v20 = *v15;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C2E0, &unk_21796D6E0);
    (*(v6 + 32))(v9, &v15[*(v23 + 48)], v4);
    result = (*(v6 + 88))(v9, v4);
    if (result != *MEMORY[0x277CE4400])
    {
      result = (*(v6 + 8))(v9, v4);
    }

    v19 = 1;
    goto LABEL_11;
  }

  if (result == *MEMORY[0x277CE4430])
  {
    v24 = OUTLINED_FUNCTION_1_26();
    result = v25(v24);
    v20 = *v15;
    v19 = 2;
    goto LABEL_11;
  }

  if (result == *MEMORY[0x277CE4420])
  {
    v20 = 0;
    v19 = 3;
    goto LABEL_11;
  }

  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  sub_21796950C();
  MEMORY[0x21CEA7F50](0xD00000000000002BLL, 0x8000000217976F90);
  sub_21796958C();
  MEMORY[0x21CEA7F50](46, 0xE100000000000000);
  result = sub_21796959C();
  __break(1u);
  return result;
}

BOOL static Artwork.LoadingStatus.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  switch(*(a1 + 8))
  {
    case 1:
      if (v2 != 1)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    case 3:
      if (v2 != 3 || *a2 != 0)
      {
        goto LABEL_14;
      }

      result = 1;
      break;
    default:
      if (*(a2 + 8))
      {
LABEL_14:
        result = 0;
      }

      else
      {
LABEL_13:
        result = *a1 == *a2;
      }

      break;
  }

  return result;
}

uint64_t Artwork.LoadingStatus.hash(into:)()
{
  v1 = *v0;
  switch(*(v0 + 8))
  {
    case 1:
      MEMORY[0x21CEA86B0](2);
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v3 = v1;
      }

      else
      {
        v3 = 0;
      }

      MEMORY[0x21CEA86D0](v3);
      return MEMORY[0x21CEA86B0](0);
    case 2:
      v2 = 3;
      goto LABEL_9;
    case 3:
      return MEMORY[0x21CEA86B0](0);
    default:
      v2 = 1;
LABEL_9:
      MEMORY[0x21CEA86B0](v2);
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v5 = v1;
      }

      else
      {
        v5 = 0;
      }

      return MEMORY[0x21CEA86D0](v5);
  }
}

uint64_t Artwork.LoadingStatus.hashValue.getter()
{
  sub_21796973C();
  Artwork.LoadingStatus.hash(into:)();
  return sub_21796977C();
}

uint64_t sub_21795FDA0(uint64_t a1)
{
  sub_21796973C();
  Artwork.LoadingStatus.hash(into:)();
  return sub_21796977C();
}

uint64_t Artwork.LoadingStatus.description.getter()
{
  result = 0x646574726174732ELL;
  switch(*(v0 + 8))
  {
    case 1:
      OUTLINED_FUNCTION_0_25();
      sub_21796950C();
      MEMORY[0x21CEA7F50](0xD000000000000012, 0x8000000217976F10);
      sub_21796928C();
      MEMORY[0x21CEA7F50](0x3A726F727265202CLL, 0xE900000000000020);
      MEMORY[0x21CEA7F50](0x6E776F6E6B6E752ELL, 0xE800000000000000);
      goto LABEL_6;
    case 2:
      OUTLINED_FUNCTION_0_25();
      sub_21796950C();
      v2 = "PlaylistFolderDetailView.swift";
      v3 = 0xD000000000000015;
      goto LABEL_5;
    case 3:
      return result;
    default:
      OUTLINED_FUNCTION_0_25();
      sub_21796950C();
      v2 = ".failed(duration: ";
      v3 = 0xD000000000000014;
LABEL_5:
      MEMORY[0x21CEA7F50](v3, v2 | 0x8000000000000000);
      sub_21796928C();
LABEL_6:
      MEMORY[0x21CEA7F50](41, 0xE100000000000000);
      return v4;
  }
}

unint64_t sub_21795FFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8F5C8[0];
  if (!qword_27CB8F5C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CB8F5C8);
  }

  return result;
}

uint64_t sub_21796001C(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

double sub_217960068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = sub_217960114(a1, a3, a5, a4);
  v14[1] = v9;
  v15 = v10 & 1;
  v16 = v11;
  v12 = _s20DismissAlertModifierVMa(0, a3, a5, v11);
  MEMORY[0x21CEA69A0](v14, a2, v12, a4);

  return result;
}

uint64_t sub_217960114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s9ViewModelCMa(0, a2, a3, a4);
  OUTLINED_FUNCTION_23();
  swift_getWitnessTable();
  v4 = sub_217966ACC();
  sub_21785853C(1);
  return v4;
}

uint64_t sub_21796018C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21796020C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v131 = a3;
  v130 = a2;
  v139 = a1;
  v147 = a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A788, &qword_21796A960);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v13);
  v148 = a7;
  _s20DismissAlertModifierVMa(255, a6, a7, v14);
  OUTLINED_FUNCTION_9_18();
  swift_getWitnessTable();
  v15 = sub_2179670BC();
  v16 = sub_21796919C();
  OUTLINED_FUNCTION_45_2();
  WitnessTable = swift_getWitnessTable();
  v165 = *(*(a7 + 16) + 8);
  OUTLINED_FUNCTION_6_15();
  v18 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v132 = v15;
  v133 = v16;
  v136 = WitnessTable;
  v163 = WitnessTable;
  v164 = v18;
  v135 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v161 = OpaqueTypeMetadata2;
  v162 = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_7_16();
  v21 = swift_getOpaqueTypeMetadata2();
  _s20FailureAlertModifierVMa(255);
  v22 = sub_21796698C();
  OUTLINED_FUNCTION_2();
  v123 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_88();
  v122 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_52(&v117 - v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A578, &qword_21796A750);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v30);
  swift_checkMetadataState();
  OUTLINED_FUNCTION_2();
  v128 = v31;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v33);
  v138 = *(v21 - 8);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v35);
  v129 = v36;
  v161 = v36;
  v162 = OpaqueTypeConformance2;
  v134 = OpaqueTypeConformance2;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = sub_217930878();
  v150 = v21;
  v151 = v28;
  v161 = v21;
  v162 = v28;
  v145 = v37;
  v163 = v37;
  v164 = v38;
  v141 = v38;
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_2();
  v120 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_88();
  v117 = v41;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_52(&v117 - v43);
  v140 = v44;
  v146 = v22;
  v144 = sub_217966F9C();
  OUTLINED_FUNCTION_2();
  v143 = v45;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v47);
  v149 = a4 & 1;
  LOBYTE(v161) = a4;
  v48 = a5;
  v162 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A740, &unk_21796B560);
  sub_217967C1C();
  LODWORD(v28) = v160;
  v49 = a6;
  v50 = v148;
  _s9ViewModelCMa(0, a6, v148, v51);
  OUTLINED_FUNCTION_23();
  v52 = swift_getWitnessTable();
  v53 = v130;
  v54 = v131;
  v126 = v52;
  v55 = sub_217966A9C();
  sub_2178D759C(v55, v56, v57, v58, v59, v60, v61, v62, v117, v118, v119, v120, v121, v122);
  v64 = v63;

  v125 = v49;
  v161 = v64;
  OUTLINED_FUNCTION_12_10();
  if (v28 == 1)
  {
    v65 = swift_allocObject();
    *(v65 + 16) = v49;
    *(v65 + 24) = v50;
    *(v65 + 32) = v53;
    *(v65 + 40) = v54;
    v66 = v149;
    *(v65 + 48) = v149;
    *(v65 + 56) = v48;

    swift_checkMetadataState();
    v67 = OUTLINED_FUNCTION_19_10();
    v68 = v127;
    OUTLINED_FUNCTION_11_14(&v161, 1, sub_2179618D0, v65, v69, v67);

    v70 = v137;
    OUTLINED_FUNCTION_16_13();
    sub_21796792C();
    OUTLINED_FUNCTION_54();
    v71(v68, v50);
    OUTLINED_FUNCTION_18_8();
    sub_217966A9C();
    v72 = v119;
    sub_2178D81F4();

    OUTLINED_FUNCTION_12_10();
    v73 = swift_allocObject();
    v74 = v148;
    *(v73 + 16) = v125;
    *(v73 + 24) = v74;
    *(v73 + 32) = v53;
    *(v73 + 40) = v54;
    *(v73 + 48) = v66;
    *(v73 + 56) = v48;

    v75 = v117;
    v77 = v150;
    v76 = v151;
    v78 = v145;
    sub_217967A6C();

    sub_217875F0C(v72, &qword_27CB8A578, &qword_21796A750);
    OUTLINED_FUNCTION_54();
    v79(v70, v77);
    v161 = v77;
    v162 = v76;
    OUTLINED_FUNCTION_3_29();
    v80 = v118;
    v81 = v140;
    sub_2179560E4();
    v82 = *(v120 + 8);
    v82(v75, v81);
    sub_2179560E4();
    OUTLINED_FUNCTION_1_27();
    v85 = sub_217961740(v83, v84, &unk_217971360);
    v152 = v78;
    v153 = v85;
    OUTLINED_FUNCTION_1();
    swift_getWitnessTable();
    v86 = v142;
    sub_217952EE8();
    v87 = v75;
    v88 = v150;
    v82(v87, v81);
    v82(v80, v81);
  }

  else
  {
    v89 = swift_allocObject();
    *(v89 + 16) = v49;
    *(v89 + 24) = v50;
    v90 = v50;
    *(v89 + 32) = v53;
    *(v89 + 40) = v54;
    *(v89 + 48) = v149;
    v91 = v48;
    *(v89 + 56) = v48;

    swift_checkMetadataState();
    v92 = OUTLINED_FUNCTION_19_10();
    v93 = v127;
    OUTLINED_FUNCTION_11_14(&v161, 1, sub_217961708, v89, v94, v92);

    v95 = v137;
    OUTLINED_FUNCTION_16_13();
    sub_21796792C();
    OUTLINED_FUNCTION_54();
    v96(v93, v50);
    OUTLINED_FUNCTION_18_8();
    v97 = sub_217966AAC();
    MEMORY[0x28223BE20](v97);
    v98 = v125;
    *(&v117 - 2) = v125;
    *(&v117 - 1) = v50;
    swift_getKeyPath();
    v99 = v124;
    sub_217966ABC();

    OUTLINED_FUNCTION_12_10();
    v100 = swift_allocObject();
    *(v100 + 16) = v98;
    *(v100 + 24) = v90;
    *(v100 + 32) = v53;
    *(v100 + 40) = v54;
    *(v100 + 48) = v149;
    *(v100 + 56) = v91;

    v101 = v122;
    v88 = v150;
    v78 = v145;
    sub_21792EC54(v99, sub_21796170C, v100, v150, v145);

    sub_217875F0C(v99, &qword_27CB8A788, &qword_21796A960);
    OUTLINED_FUNCTION_54();
    v102(v95, v88);
    OUTLINED_FUNCTION_1_27();
    v105 = sub_217961740(v103, v104, &unk_217971360);
    v158 = v78;
    v159 = v105;
    OUTLINED_FUNCTION_1();
    v106 = v146;
    swift_getWitnessTable();
    v107 = v121;
    sub_2179560E4();
    v108 = *(v123 + 8);
    v108(v101, v106);
    sub_2179560E4();
    v161 = v88;
    v162 = v151;
    OUTLINED_FUNCTION_3_29();
    v86 = v142;
    sub_217952FA4();
    v108(v101, v106);
    v108(v107, v106);
  }

  v161 = v88;
  v162 = v151;
  v109 = OUTLINED_FUNCTION_3_29();
  OUTLINED_FUNCTION_1_27();
  v112 = sub_217961740(v110, v111, &unk_217971360);
  v156 = v78;
  v157 = v112;
  OUTLINED_FUNCTION_1();
  v113 = swift_getWitnessTable();
  v154 = v109;
  v155 = v113;
  OUTLINED_FUNCTION_20();
  v114 = v144;
  swift_getWitnessTable();
  sub_2179560E4();
  OUTLINED_FUNCTION_54();
  return v115(v86, v114);
}

void sub_217960DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = _s5AlertVMa(0);
  MEMORY[0x28223BE20](v8);
  v29 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A818, &qword_21796F490);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A578, &qword_21796A750);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v28 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v28 - v20;
  _s9ViewModelCMa(0, a5, a6, v22);
  swift_getWitnessTable();
  sub_217966A9C();
  sub_2178D81F4();

  if (qword_27CB8A438 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v8, qword_27CB97AC0);
  sub_217864EC8(v23, v19);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v8);
  v24 = *(v10 + 48);
  sub_217961804(v21, v12);
  sub_217961804(v19, &v12[v24]);
  if (__swift_getEnumTagSinglePayload(v12, 1, v8) != 1)
  {
    sub_217961804(v12, v16);
    if (__swift_getEnumTagSinglePayload(&v12[v24], 1, v8) != 1)
    {
      v25 = v29;
      sub_217865358(&v12[v24], v29);
      sub_21791EA90();
      v27 = v26;
      sub_217961874(v25);
      sub_217875F0C(v19, &qword_27CB8A578, &qword_21796A750);
      sub_217875F0C(v21, &qword_27CB8A578, &qword_21796A750);
      sub_217961874(v16);
      sub_217875F0C(v12, &qword_27CB8A578, &qword_21796A750);
      if ((v27 & 1) == 0)
      {
        return;
      }

      goto LABEL_10;
    }

    sub_217875F0C(v19, &qword_27CB8A578, &qword_21796A750);
    sub_217875F0C(v21, &qword_27CB8A578, &qword_21796A750);
    sub_217961874(v16);
LABEL_8:
    sub_217875F0C(v12, &qword_27CB8A818, &qword_21796F490);
    return;
  }

  sub_217875F0C(v19, &qword_27CB8A578, &qword_21796A750);
  sub_217875F0C(v21, &qword_27CB8A578, &qword_21796A750);
  if (__swift_getEnumTagSinglePayload(&v12[v24], 1, v8) != 1)
  {
    goto LABEL_8;
  }

  sub_217875F0C(v12, &qword_27CB8A578, &qword_21796A750);
LABEL_10:
  if (qword_27CB8A378 != -1)
  {
    swift_once();
  }

  sub_2178CC26C();
}

uint64_t sub_2179611E0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  _s9ViewModelCMa(0, a5, a6, a4);
  OUTLINED_FUNCTION_23();
  swift_getWitnessTable();
  v6 = sub_217966A9C();
  sub_2178D759C(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16, v17, v18, v19, v20);

  sub_21796919C();
  swift_getWitnessTable();
  sub_21796932C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A740, &unk_21796B560);
  return sub_217967C2C();
}

double sub_2179612F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = _s5AlertVMa(0);
  MEMORY[0x28223BE20](v10);
  v33 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A818, &qword_21796F490);
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A578, &qword_21796A750);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v32 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v32 - v22;
  v36 = a5;
  v37 = a6;
  _s9ViewModelCMa(0, a5, a6, v24);
  swift_getWitnessTable();
  v34 = a1;
  v35 = a2;
  sub_217966A9C();
  sub_2178D81F4();

  if (qword_27CB8A438 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v10, qword_27CB97AC0);
  sub_217864EC8(v25, v21);
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v10);
  v26 = *(v12 + 48);
  sub_217961804(v23, v14);
  sub_217961804(v21, &v14[v26]);
  if (__swift_getEnumTagSinglePayload(v14, 1, v10) != 1)
  {
    sub_217961804(v14, v18);
    if (__swift_getEnumTagSinglePayload(&v14[v26], 1, v10) != 1)
    {
      v28 = &v14[v26];
      v29 = v33;
      sub_217865358(v28, v33);
      sub_21791EA90();
      v31 = v30;
      sub_217961874(v29);
      sub_217875F0C(v21, &qword_27CB8A578, &qword_21796A750);
      sub_217875F0C(v23, &qword_27CB8A578, &qword_21796A750);
      sub_217961874(v18);
      sub_217875F0C(v14, &qword_27CB8A578, &qword_21796A750);
      if ((v31 & 1) == 0)
      {
        return result;
      }

      goto LABEL_10;
    }

    sub_217875F0C(v21, &qword_27CB8A578, &qword_21796A750);
    sub_217875F0C(v23, &qword_27CB8A578, &qword_21796A750);
    sub_217961874(v18);
LABEL_8:
    sub_217875F0C(v14, &qword_27CB8A818, &qword_21796F490);
    return result;
  }

  sub_217875F0C(v21, &qword_27CB8A578, &qword_21796A750);
  sub_217875F0C(v23, &qword_27CB8A578, &qword_21796A750);
  if (__swift_getEnumTagSinglePayload(&v14[v26], 1, v10) != 1)
  {
    goto LABEL_8;
  }

  sub_217875F0C(v14, &qword_27CB8A578, &qword_21796A750);
LABEL_10:
  sub_217966A9C();
  sub_217862E84();
  sub_2178DC24C();

  return result;
}

uint64_t sub_217961740(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_9()
{

  OUTLINED_FUNCTION_12_10();

  return swift_deallocObject();
}

uint64_t sub_217961804(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A578, &qword_21796A750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217961874(uint64_t a1)
{
  v2 = _s5AlertVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_3_29()
{
  *(v2 - 112) = v0;
  *(v2 - 104) = v1;

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_11_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_217967A6C();
}

uint64_t OUTLINED_FUNCTION_19_10()
{

  return swift_checkMetadataState();
}

uint64_t ArtworkImage.init(_:width:height:)(uint64_t a1, double a2, double a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BD60, &qword_21796CC60);
  OUTLINED_FUNCTION_48(v5);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_16();
  v7 = sub_217968C2C();
  OUTLINED_FUNCTION_2();
  v9 = v8;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  sub_2178B01F4(a1, v3);
  OUTLINED_FUNCTION_4_24();
  if (v16)
  {
    sub_217968BBC();
    OUTLINED_FUNCTION_4_24();
    if (!v16)
    {
      sub_2178C6EEC(v3);
    }
  }

  else
  {
    v17 = OUTLINED_FUNCTION_11_15();
    v18(v17);
  }

  (*(v9 + 16))(v13, v15, v7);
  sub_21796644C();
  sub_2178C6EEC(a1);
  return (*(v9 + 8))(v15, v7);
}

uint64_t ArtworkImage.artworkIdealAspectRatio(_:contentMode:)(uint64_t a1, char a2, uint64_t a3)
{
  v5 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D2C0, &qword_21796FC70);
  OUTLINED_FUNCTION_48(v9);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_13_13();
  sub_21796643C();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v5);
  v15 = sub_21796633C();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v15);
  OUTLINED_FUNCTION_2_19();
  return OUTLINED_FUNCTION_10_13(v13, a1, a2 & 1, a3, 0, v16, v17, v18, 0, v4);
}

void ArtworkImage.artworkCropStyle(_:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D2C0, &qword_21796FC70);
  OUTLINED_FUNCTION_48(v2);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_9_19();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v4);
  v6 = OUTLINED_FUNCTION_1_28(v5, v17);
  v7(v6, v0);
  v8 = sub_217968B9C();
  v10 = v9;
  v11 = sub_21796633C();
  OUTLINED_FUNCTION_8_14(v11);
  OUTLINED_FUNCTION_2_19();
  v12 = OUTLINED_FUNCTION_3_30();
  sub_2179663AC(v12, v13, v14, v15, v16, v8, v10, 0, 0, v1);
  OUTLINED_FUNCTION_12_11();
}

uint64_t ArtworkImage.init(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BD60, &qword_21796CC60);
  OUTLINED_FUNCTION_48(v3);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_16();
  v5 = sub_217968C2C();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2178B01F4(a1, v1);
  OUTLINED_FUNCTION_4_24();
  if (v11)
  {
    sub_217968BBC();
    OUTLINED_FUNCTION_4_24();
    if (!v11)
    {
      sub_2178C6EEC(v1);
    }
  }

  else
  {
    v12 = OUTLINED_FUNCTION_11_15();
    v13(v12);
  }

  sub_21796639C();
  sub_2178C6EEC(a1);
  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_217961F6C(uint64_t a1, void (*a2)(char *, double), double a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BD60, &qword_21796CC60);
  OUTLINED_FUNCTION_48(v7);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_13_13();
  v9 = sub_217968C2C();
  OUTLINED_FUNCTION_2();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v19 - v16;
  sub_2178B01F4(a1, v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v9) == 1)
  {
    sub_217968BBC();
    if (__swift_getEnumTagSinglePayload(v3, 1, v9) != 1)
    {
      sub_2178C6EEC(v3);
    }
  }

  else
  {
    (*(v11 + 32))(v17, v3, v9);
  }

  (*(v11 + 16))(v15, v17, v9);
  a2(v15, a3);
  sub_2178C6EEC(a1);
  return (*(v11 + 8))(v17, v9);
}

void ArtworkImage.artworkImageFormat(_:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D2C0, &qword_21796FC70);
  OUTLINED_FUNCTION_48(v2);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_9_19();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v4);
  v6 = OUTLINED_FUNCTION_1_28(v5, v17);
  v7(v6, v0);
  v8 = sub_217968B4C();
  v10 = v9;
  v11 = sub_21796633C();
  OUTLINED_FUNCTION_8_14(v11);
  OUTLINED_FUNCTION_2_19();
  v12 = OUTLINED_FUNCTION_3_30();
  sub_2179663AC(v12, v13, v14, v15, v16, 0, 0, v8, v10, v1);
  OUTLINED_FUNCTION_12_11();
}

void ArtworkImage.artworkBackgroundColor(_:)(uint64_t a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D2C0, &qword_21796FC70);
  OUTLINED_FUNCTION_48(v5);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_19();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v7);
  v9 = OUTLINED_FUNCTION_1_28(v8, v15);
  v10(v9, v1);
  v11 = sub_21796633C();
  OUTLINED_FUNCTION_8_14(v11);

  OUTLINED_FUNCTION_2_19();
  OUTLINED_FUNCTION_10_13(v3, 0, 1, 2, a1, v12, v13, v14, 0, v2);
  OUTLINED_FUNCTION_12_11();
}

void ArtworkImage.overrideFrameSize(_:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D2C0, &qword_21796FC70);
  OUTLINED_FUNCTION_48(v2);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_16();
  sub_21796643C();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v4);
  v6 = OUTLINED_FUNCTION_1_28(v5, v17);
  v7(v6, v0);
  v8 = sub_21796633C();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v8);
  v9 = OUTLINED_FUNCTION_3_30();
  OUTLINED_FUNCTION_10_13(v9, v10, v11, v12, v13, v14, v15, v16, 0, v1);
  OUTLINED_FUNCTION_12_11();
}

uint64_t OUTLINED_FUNCTION_8_14(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_9_19()
{

  return sub_21796643C();
}

uint64_t OUTLINED_FUNCTION_10_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_2179663AC(a1, a2, a3, a4, a5, 0, 0, 0, a9, a10);
}

uint64_t sub_21796259C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

uint64_t sub_2179625C0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F658, &qword_217973C90);
  OUTLINED_FUNCTION_2();
  v4 = v3;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v5);
  v7 = v10 - v6;
  if (*(v0 + 40))
  {
    sub_2179635E0(v7);
    v8 = *(v0 + 24);
    v10[1] = *(v0 + 16);
    v10[2] = v8;
    sub_21796874C();
    (*(v4 + 8))(v7, v2);
    if (v11)
    {
      return v11;
    }
  }

  return v1;
}

void sub_2179626CC()
{
  v1 = OBJC_IVAR____TtCVVE25_MusicKitInternal_SwiftUIV8MusicKit7Artwork7Caching6Policy4Node_isPolicyApplied;
  if ((*(v0 + OBJC_IVAR____TtCVVE25_MusicKitInternal_SwiftUIV8MusicKit7Artwork7Caching6Policy4Node_isPolicyApplied) & 1) == 0)
  {
    v2 = v0;
    if (qword_2811AD490 != -1)
    {
      OUTLINED_FUNCTION_0_26(&qword_2811AD490);
    }

    v3 = sub_21796653C();
    __swift_project_value_buffer(v3, qword_2811AE408);

    v4 = sub_21796651C();
    v5 = sub_21796939C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v17 = v7;
      *v6 = 136446210;
      v8 = sub_217963E64(0);
      v10 = sub_217957F4C(v8, v9, &v17);

      *(v6 + 4) = v10;
      OUTLINED_FUNCTION_6_16(&dword_217846000, v11, v12, "Applying artwork caching policy for %{public}s.");
      __swift_destroy_boxed_opaque_existential_1(v7);
      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_73();
    }

    v13 = *(v0 + 16);
    v14 = *(v2 + 24);
    v15 = *(v2 + 32);
    v16 = *(v2 + 40);

    sub_21796299C(v2, v13, v14, v15, v16);

    *(v2 + v1) = 1;
  }
}

double sub_217962848(uint64_t a1)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a1)
    {

      if (v4 == a1)
      {

        return result;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return result;
  }

  v5 = swift_weakLoadStrong();
  if (v5)
  {
    OUTLINED_FUNCTION_3_31(v5, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F6C8, &qword_217973DB8);
    sub_2179686DC();
    swift_endAccess();
  }

  swift_weakAssign();
  v7 = swift_weakLoadStrong();
  if (v7)
  {
    OUTLINED_FUNCTION_3_31(v7, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F6C8, &qword_217973DB8);
    sub_2179686CC();
    swift_endAccess();
  }

  sub_217963388();

  return result;
}

void sub_21796299C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    v22[11] = v5;
    v23 = v6;
    if (qword_2811AD490 != -1)
    {
      swift_once();
    }

    v11 = sub_21796653C();
    __swift_project_value_buffer(v11, qword_2811AE408);

    v12 = sub_21796651C();
    v13 = sub_21796939C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22[0] = v15;
      *v14 = 134349570;
      *(v14 + 4) = a4;
      *(v14 + 12) = 2082;
      *(v14 + 14) = sub_217957F4C(a2, a3, v22);
      *(v14 + 22) = 2082;
      v16 = sub_217963E64(0);
      v18 = v17;

      v19 = sub_217957F4C(v16, v18, v22);

      *(v14 + 24) = v19;
      _os_log_impl(&dword_217846000, v12, v13, "Setting cache limit %{public}ld for cache identifier: %{public}s and cache reference: %{public}s.", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CEA8ED0](v15, -1, -1);
      MEMORY[0x21CEA8ED0](v14, -1, -1);
    }

    else
    {
    }

    v20 = objc_opt_self();
    v21 = sub_217968F2C();
    [v20 setCacheLimit:a4 forCacheIdentifier:v21 cacheReference:a1];
  }
}

uint64_t *sub_217962BC4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtCVVE25_MusicKitInternal_SwiftUIV8MusicKit7Artwork7Caching6Policy4Node_cachedActivePolicyNodes;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F658, &qword_217973C90);
  __swift_storeEnumTagSinglePayload(v5 + v10, 1, 1, v11);
  *(v5 + OBJC_IVAR____TtCVVE25_MusicKitInternal_SwiftUIV8MusicKit7Artwork7Caching6Policy4Node_isPolicyApplied) = 0;
  swift_weakInit();
  sub_2179686AC();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4 & 1;
  if (qword_2811AD490 != -1)
  {
    OUTLINED_FUNCTION_0_26(&qword_2811AD490);
  }

  v12 = sub_21796653C();
  __swift_project_value_buffer(v12, qword_2811AE408);

  v13 = sub_21796651C();
  v14 = sub_21796939C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136446210;

    v17 = sub_217963E64(0);
    v19 = v18;

    v20 = sub_217957F4C(v17, v19, &v24);

    *(v15 + 4) = v20;
    OUTLINED_FUNCTION_6_16(&dword_217846000, v21, v22, "Initialized %{public}s.");
    __swift_destroy_boxed_opaque_existential_1(v16);
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_73();
  }

  return v5;
}

uint64_t sub_217962DC8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F6C8, &qword_217973DB8);
  OUTLINED_FUNCTION_2();
  v4 = v3;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v5);
  v27 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F6D0, &qword_217973DC0);
  OUTLINED_FUNCTION_2();
  v28 = v8;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  if (qword_2811AD490 != -1)
  {
    OUTLINED_FUNCTION_0_26(&qword_2811AD490);
  }

  v12 = sub_21796653C();
  __swift_project_value_buffer(v12, qword_2811AE408);

  v13 = sub_21796651C();
  v14 = sub_21796939C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = v4;
    v17 = v16;
    v29[0] = v16;
    *v15 = 136446210;
    v18 = sub_217963E64(0);
    v20 = sub_217957F4C(v18, v19, v29);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_217846000, v13, v14, "Deallocating %{public}s.", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v4 = v26;
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_73();
  }

  if (swift_weakLoadStrong())
  {
    swift_beginAccess();

    sub_2179686DC();
    swift_endAccess();
  }

  v21 = OBJC_IVAR____TtCVVE25_MusicKitInternal_SwiftUIV8MusicKit7Artwork7Caching6Policy4Node_children;
  OUTLINED_FUNCTION_5_17(v0 + OBJC_IVAR____TtCVVE25_MusicKitInternal_SwiftUIV8MusicKit7Artwork7Caching6Policy4Node_children);
  v22 = v27;
  (*(v4 + 16))(v27, v1 + v21, v2);
  sub_2179686BC();
  v23 = *(v4 + 8);
  v23(v22, v2);
  while (sub_2179686EC())
  {

    sub_217962848(v24);
  }

  (*(v28 + 8))(v11, v7);

  sub_2179644D8(v1 + OBJC_IVAR____TtCVVE25_MusicKitInternal_SwiftUIV8MusicKit7Artwork7Caching6Policy4Node_cachedActivePolicyNodes);
  swift_weakDestroy();
  v23((v1 + v21), v2);
  return v1;
}

uint64_t sub_217963134()
{
  sub_217962DC8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t _s4NodeCMa(uint64_t a1)
{
  result = qword_2811AD3F8;
  if (!qword_2811AD3F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2179631E0(uint64_t a1)
{
  sub_2179632CC(319);
  if (v1 <= 0x3F)
  {
    sub_217963330(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2179632CC(uint64_t a1)
{
  if (!qword_27CB8F650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F658, &qword_217973C90);
    v1 = sub_21796944C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CB8F650);
    }
  }
}

void sub_217963330(uint64_t a1)
{
  if (!qword_27CB8F660)
  {
    _s4NodeCMa(255);
    v1 = sub_2179686FC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CB8F660);
    }
  }
}

uint64_t sub_217963388()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F6C8, &qword_217973DB8);
  OUTLINED_FUNCTION_2();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F6D0, &qword_217973DC0);
  OUTLINED_FUNCTION_2();
  v9 = v8;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F6D8, &qword_217973DC8);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F658, &qword_217973C90);
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCVVE25_MusicKitInternal_SwiftUIV8MusicKit7Artwork7Caching6Policy4Node_cachedActivePolicyNodes;
  swift_beginAccess();
  sub_217964404(v15, v0 + v17);
  swift_endAccess();
  v18 = OBJC_IVAR____TtCVVE25_MusicKitInternal_SwiftUIV8MusicKit7Artwork7Caching6Policy4Node_children;
  OUTLINED_FUNCTION_5_17(v0 + OBJC_IVAR____TtCVVE25_MusicKitInternal_SwiftUIV8MusicKit7Artwork7Caching6Policy4Node_children);
  (*(v3 + 16))(v6, v0 + v18, v1);
  sub_2179686BC();
  (*(v3 + 8))(v6, v1);
  while (sub_2179686EC())
  {
    sub_217963388();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_2179635E0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F6D8, &qword_217973DC8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F658, &qword_217973C90);
  OUTLINED_FUNCTION_2();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  v18 = OBJC_IVAR____TtCVVE25_MusicKitInternal_SwiftUIV8MusicKit7Artwork7Caching6Policy4Node_cachedActivePolicyNodes;
  OUTLINED_FUNCTION_5_17(v1 + OBJC_IVAR____TtCVVE25_MusicKitInternal_SwiftUIV8MusicKit7Artwork7Caching6Policy4Node_cachedActivePolicyNodes);
  sub_217964540(v1 + v18, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_2179644D8(v8);
    if (swift_weakLoadStrong())
    {
      sub_2179635E0(v17);
    }

    else
    {
      sub_21796873C();
    }

    v21 = *(v1 + 16);
    v20 = *(v1 + 24);
    v35 = v21;
    v36 = v20;

    sub_21796874C();
    if (v34 && (, (*(v1 + 40) & 1) != 0))
    {
    }

    else
    {
      v34 = v1;
      v35 = v21;
      v36 = v20;

      sub_21796875C();
    }

    (*(v11 + 16))(v6, v17, v9);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v9);
    swift_beginAccess();
    sub_217964404(v6, v1 + v18);
    swift_endAccess();
    if (qword_2811AD490 != -1)
    {
      OUTLINED_FUNCTION_0_26(&qword_2811AD490);
    }

    v22 = sub_21796653C();
    __swift_project_value_buffer(v22, qword_2811AE408);

    v23 = sub_21796651C();
    v24 = sub_21796939C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v25 = 136446466;
      v26 = sub_217963E64(2);
      v28 = sub_217957F4C(v26, v27, &v35);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2082;
      swift_beginAccess();
      v29 = sub_217963A80();
      v31 = sub_217957F4C(v29, v30, &v35);

      *(v25 + 14) = v31;
      _os_log_impl(&dword_217846000, v23, v24, "%{public}s did update cached active policy nodes: %{public}s", v25, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_73();
    }
  }

  else
  {
    v19 = *(v11 + 32);
    v19(v15, v8, v9);
    v19(v17, v15, v9);
  }

  swift_beginAccess();
  (*(v11 + 16))(a1, v17, v9);
  return (*(v11 + 8))(v17, v9);
}

uint64_t sub_217963A80()
{
  v13 = 0;
  v14 = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F658, &qword_217973C90);
  v10 = sub_21796872C();

  sub_2179645B0(&v10);

  v0 = *(v10 + 16);
  if (v0)
  {
    v1 = (v10 + 40);
    do
    {
      v3 = *(v1 - 1);
      v2 = *v1;
      v10 = v3;
      v11 = v2;

      sub_21796874C();
      if (v12)
      {
        v4 = v13 & 0xFFFFFFFFFFFFLL;
        if ((v14 & 0x2000000000000000) != 0)
        {
          v4 = HIBYTE(v14) & 0xF;
        }

        if (v4)
        {
          MEMORY[0x21CEA7F50](44, 0xE100000000000000);
        }

        v10 = 0x22202020200ALL;
        v11 = 0xE600000000000000;
        MEMORY[0x21CEA7F50](v3, v2);

        MEMORY[0x21CEA7F50](2112034, 0xE300000000000000);
        v5 = sub_217963E64(2);
        MEMORY[0x21CEA7F50](v5);

        MEMORY[0x21CEA7F50](v10, v11);
      }

      v1 += 2;
      --v0;
    }

    while (v0);

    v6 = v13;
    v7 = v14;
  }

  else
  {

    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v10 = 91;
    v11 = 0xE100000000000000;
    MEMORY[0x21CEA7F50]();

    MEMORY[0x21CEA7F50](23818, 0xE200000000000000);
    return v10;
  }

  else
  {

    return 6109787;
  }
}

uint64_t sub_217963C94@<X0>(uint64_t *a2@<X8>)
{
  result = sub_21796654C();
  *a2 = result;
  return result;
}

uint64_t sub_217963D08(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);

  sub_217968FCC();
  sub_21796975C();
  if (v3 != 1)
  {
    MEMORY[0x21CEA86B0](v2);
  }
}

uint64_t sub_217963D9C()
{
  sub_21796973C();
  sub_217963D08(v1);
  return sub_21796977C();
}

uint64_t sub_217963E24(uint64_t a1)
{
  sub_21796973C();
  sub_217963D08(v2);
  return sub_21796977C();
}

uint64_t sub_217963E64(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F6C8, &qword_217973DB8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - v6;
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_21796950C();
  MEMORY[0x21CEA7F50](0xD00000000000001ELL, 0x8000000217977080);
  v33 = v1;
  sub_21796958C();
  v33 = v31;
  v34 = v32;
  v31 = 0x7963696C6F70203BLL;
  v32 = 0xEB00000000203D20;
  v8 = *(v1 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  v11 = *(v2 + 40);

  v12 = sub_217958AF8(v8, v9, v10, v11);
  v14 = v13;

  MEMORY[0x21CEA7F50](v12, v14);

  MEMORY[0x21CEA7F50](v31, v32);

  if (a1 != 1)
  {
    if (a1 != 2)
    {
LABEL_20:
      MEMORY[0x21CEA7F50](62, 0xE100000000000000);
      return v33;
    }

    v15 = OBJC_IVAR____TtCVVE25_MusicKitInternal_SwiftUIV8MusicKit7Artwork7Caching6Policy4Node_children;
    swift_beginAccess();
    (*(v5 + 16))(v7, v2 + v15, v4);
    sub_217964474();
    v16 = sub_21796906C();
    if (sub_21796259C(v16))
    {
      v17 = sub_21796259C(v16);

      if (v17 >= 2)
      {
        v29 = 0;
        v30 = 0xE000000000000000;
        sub_21796950C();

        v29 = 0x1000000000000012;
        v30 = 0x80000002179770C0;
        v28 = v17;
        v18 = sub_21796966C();
        MEMORY[0x21CEA7F50](v18);

        MEMORY[0x21CEA7F50](0xE2207365646F6E20, 0xAB000000005DA680);
        MEMORY[0x21CEA7F50](v29, v30);

        goto LABEL_20;
      }

      v26 = 0x100000000000001DLL;
      v27 = 0x80000002179770A0;
LABEL_19:
      MEMORY[0x21CEA7F50](v26, v27);
      goto LABEL_20;
    }

LABEL_17:

    goto LABEL_20;
  }

  if (swift_weakLoadStrong())
  {
    v31 = 0x746E65726170203BLL;
    v32 = 0xEB00000000203D20;
    v19 = sub_217963E64(0);
    MEMORY[0x21CEA7F50](v19);

    MEMORY[0x21CEA7F50](v31, v32);
  }

  v20 = OBJC_IVAR____TtCVVE25_MusicKitInternal_SwiftUIV8MusicKit7Artwork7Caching6Policy4Node_children;
  swift_beginAccess();
  (*(v5 + 16))(v7, v2 + v20, v4);
  sub_217964474();
  v21 = sub_21796906C();
  if (!sub_21796259C(v21))
  {
    goto LABEL_17;
  }

  MEMORY[0x21CEA7F50](0x72646C696863203BLL, 0xEE005B203D206E65);
  result = sub_21796259C(v21);
  if (!result)
  {
LABEL_16:

    v26 = 23818;
    v27 = 0xE200000000000000;
    goto LABEL_19;
  }

  v23 = result;
  if (result >= 1)
  {
    v24 = 0;
    do
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CEA8490](v24, v21);
      }

      else
      {
      }

      ++v24;
      v29 = 0x202020200ALL;
      v30 = 0xE500000000000000;
      v25 = sub_217963E64(0);
      MEMORY[0x21CEA7F50](v25);

      MEMORY[0x21CEA7F50](44, 0xE100000000000000);
      MEMORY[0x21CEA7F50](v29, v30);
    }

    while (v23 != v24);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

unint64_t sub_2179643AC()
{
  result = qword_2811AD408;
  if (!qword_2811AD408)
  {
    _s4NodeCMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AD408);
  }

  return result;
}

uint64_t sub_217964404(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F6D8, &qword_217973DC8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_217964474()
{
  result = qword_27CB8F6E0;
  if (!qword_27CB8F6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F6C8, &qword_217973DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8F6E0);
  }

  return result;
}

uint64_t sub_2179644D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F6D8, &qword_217973DC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217964540(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F6D8, &qword_217973DC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2179645B0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2178EBDB0(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_21796461C(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_21796461C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21796965C();
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
        v6 = sub_21796912C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_2179647D8(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_217964710(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_217964710(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_21796969C();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2179647D8(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_21796969C();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_21796969C()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v86 = v5;
            v88 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_21796969C() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v86;
            v9 = v88;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2178E7E50();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_2178E7E50();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      v89 = *result;
      if (!*result)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
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
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_217964E0C((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v87;
      if (v87 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_128;
  }

  sub_217964CE0(&v91, *result, a3);
LABEL_102:
}

uint64_t sub_217964CE0(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2178E9AC0(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_217964E0C((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_217964E0C(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_217909E6C(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_21796969C() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_217909E6C(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_21796969C() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

uint64_t OUTLINED_FUNCTION_0_26(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_31(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_17(uint64_t a1)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_6_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_27CB977A8 == -1)
  {
    if (qword_27CB977B0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_27CB977B0)
    {
      return _availability_version_check();
    }
  }

  if (qword_27CB977A0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_27CB97794 > a3)
      {
        return 1;
      }

      if (dword_27CB97794 >= a3)
      {
        return dword_27CB97798 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_27CB977B0;
  if (qword_27CB977B0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27CB977B0 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x21CEA8860](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_27CB97794, &dword_27CB97798);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}