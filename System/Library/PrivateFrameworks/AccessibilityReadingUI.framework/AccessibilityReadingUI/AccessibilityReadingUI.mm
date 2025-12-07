AccessibilityReadingUI::SSWindowState_optional __swiftcall SSWindowState.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_23D82DF44()
{
  v1 = *v0;
  sub_23D8DED50();
  MEMORY[0x23EEF0EB0](v1);
  return sub_23D8DED80();
}

uint64_t sub_23D82DFB8(uint64_t a1)
{
  v2 = *v1;
  sub_23D8DED50();
  MEMORY[0x23EEF0EB0](v2);
  return sub_23D8DED80();
}

void *sub_23D82DFFC@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t IconDirection.hashValue.getter()
{
  v1 = *v0;
  sub_23D8DED50();
  MEMORY[0x23EEF0EB0](v1);
  return sub_23D8DED80();
}

uint64_t sub_23D82E0C4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE320();
  return v2;
}

uint64_t sub_23D82E188(double a1, double a2)
{
  type metadata accessor for CGPoint(0);
  sub_23D8DE310();
  return v3;
}

double sub_23D82E1C8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0E8, &qword_23D8E03C0);
  sub_23D8DE320();
  return v2;
}

double sub_23D82E28C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0E0, &qword_23D8E1700);
  sub_23D8DE320();
  return v2;
}

uint64_t SSDraggableView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v52 = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v51 = v7;
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  *(v7 + 16) = v8;
  *(v7 + 24) = v9;
  (*(v3 + 32))(v7 + v6, v5, a1);
  v50 = sub_23D8DEB20();
  type metadata accessor for SSHUDRoundView(255, v8, v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF0, "j-");
  sub_23D8DD020();
  type metadata accessor for SSRoundPipView(255, v8, v9, v11);
  sub_23D8DD020();
  sub_23D8DD6C0();
  sub_23D8DD020();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF8, &qword_23D8DFDC0);
  sub_23D8DD020();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECF00, &qword_23D8DFDC8);
  sub_23D8DD020();
  sub_23D8DCE50();
  sub_23D8DD020();
  v49 = sub_23D8DD020();
  v48 = sub_23D8333AC(&qword_27E2ECF08, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
  WitnessTable = swift_getWitnessTable();
  v13 = sub_23D835AD0(&qword_27E2ECF10, &qword_27E2ECEF0, "j-", MEMORY[0x277CE0868]);
  v75 = WitnessTable;
  v76 = v13;
  v14 = swift_getWitnessTable();
  v73 = swift_getWitnessTable();
  v74 = v13;
  v15 = swift_getWitnessTable();
  v71 = v14;
  v72 = v15;
  v16 = swift_getWitnessTable();
  v17 = sub_23D833358();
  v69 = v16;
  v70 = v17;
  v18 = swift_getWitnessTable();
  v19 = sub_23D835AD0(&qword_27E2ECF20, &qword_27E2ECEF8, &qword_23D8DFDC0, MEMORY[0x277CE0328]);
  v67 = v18;
  v68 = v19;
  v20 = swift_getWitnessTable();
  v21 = sub_23D835AD0(&qword_27E2ECF28, &qword_27E2ECF00, &qword_23D8DFDC8, MEMORY[0x277CE07C8]);
  v65 = v20;
  v66 = v21;
  v22 = swift_getWitnessTable();
  v23 = sub_23D8333AC(&qword_27E2ECF30, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
  v63 = v22;
  v64 = v23;
  v61 = swift_getWitnessTable();
  v62 = MEMORY[0x277CDFB28];
  v24 = v49;
  v25 = swift_getWitnessTable();
  v26 = v50;
  v57 = v50;
  v58 = v24;
  v27 = v48;
  v59 = v48;
  v60 = v25;
  v28 = sub_23D8DD0A0();
  v29 = swift_getWitnessTable();
  v57 = v26;
  v58 = v28;
  v59 = v27;
  v60 = v29;
  v30 = sub_23D8DD0A0();
  type metadata accessor for AXSpeakStopType(255);
  v32 = v31;
  v33 = swift_getWitnessTable();
  v34 = sub_23D8333AC(&qword_27E2ECF38, type metadata accessor for AXSpeakStopType, &unk_23D8E0188);
  v57 = v30;
  v58 = v32;
  v59 = v33;
  v60 = v34;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  type metadata accessor for AXSFSpeakFingerState(255);
  v37 = v36;
  v57 = v30;
  v58 = v32;
  v59 = v33;
  v60 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = sub_23D8333AC(&qword_27E2ECF40, type metadata accessor for AXSFSpeakFingerState, &unk_23D8E0160);
  v57 = OpaqueTypeMetadata2;
  v58 = v37;
  v59 = OpaqueTypeConformance2;
  v60 = v39;
  v40 = swift_getOpaqueTypeMetadata2();
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECF48, &unk_23D8DFDD0);
  v57 = OpaqueTypeMetadata2;
  v58 = v37;
  v59 = OpaqueTypeConformance2;
  v60 = v39;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = sub_23D835AD0(&qword_27E2ECF50, &qword_27E2ECF48, &unk_23D8DFDD0, MEMORY[0x277CDF728]);
  v57 = v40;
  v58 = v41;
  v59 = v42;
  v60 = v43;
  swift_getOpaqueTypeMetadata2();
  sub_23D8DD020();
  v57 = v40;
  v58 = v41;
  v59 = v42;
  v60 = v43;
  v55 = swift_getOpaqueTypeConformance2();
  v56 = MEMORY[0x277CE0790];
  swift_getWitnessTable();
  v53 = sub_23D8DCE70();
  v54 = v44;
  v45 = sub_23D8DCE80();
  swift_getWitnessTable();
  v46 = *(*(v45 - 8) + 16);
  v46(&v57, &v53, v45);

  v53 = v57;
  v54 = v58;
  v46(v52, &v53, v45);
}

uint64_t sub_23D82EB04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v265 = a4;
  v268 = a2;
  v255 = a1;
  v236 = a5;
  v229 = sub_23D8DD6D0();
  MEMORY[0x28223BE20](v229);
  v228 = &v187 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = sub_23D8DCD10();
  v232 = *(v231 - 8);
  MEMORY[0x28223BE20](v231);
  v246 = &v187 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0B8, &qword_23D8E01E8);
  v235 = *(v233 - 8);
  MEMORY[0x28223BE20](v233);
  v247 = &v187 - v9;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ECF48, &unk_23D8DFDD0);
  v234 = *(v256 - 8);
  MEMORY[0x28223BE20](v256);
  v230 = &v187 - v10;
  v250 = sub_23D8DEB20();
  v254 = *(v250 - 8);
  MEMORY[0x28223BE20](v250);
  v226 = &v187 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = sub_23D8DEA00();
  v224 = *(v225 - 8);
  MEMORY[0x28223BE20](v225);
  v223 = &v187 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = sub_23D8DCE10();
  v258 = *(v253 - 8);
  v259 = *(v258 + 64);
  MEMORY[0x28223BE20](v253);
  v244 = &v187 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = type metadata accessor for SSDraggableView(0, a3, a4, v14);
  v269 = *(v263 - 8);
  v266 = *(v269 + 64);
  MEMORY[0x28223BE20](v263);
  v252 = &v187 - v15;
  v267 = a3;
  type metadata accessor for SSHUDRoundView(255, a3, a4, v16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF0, "j-");
  sub_23D8DD020();
  type metadata accessor for SSRoundPipView(255, a3, a4, v17);
  v260 = sub_23D8DD020();
  v18 = sub_23D8DD6C0();
  v264 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v262 = &v187 - v19;
  v261 = v18;
  v20 = sub_23D8DD020();
  v248 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v249 = &v187 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF8, &qword_23D8DFDC0);
  v239 = v20;
  sub_23D8DD020();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECF00, &qword_23D8DFDC8);
  v22 = sub_23D8DD020();
  v208 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v241 = (&v187 - v23);
  sub_23D8DCE50();
  v188 = v22;
  v24 = sub_23D8DD020();
  v209 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v203 = &v187 - v25;
  v190 = v24;
  v26 = sub_23D8DD020();
  v215 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v206 = &v187 - v27;
  v251 = sub_23D8333AC(&qword_27E2ECF08, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
  WitnessTable = swift_getWitnessTable();
  v29 = sub_23D835AD0(&qword_27E2ECF10, &qword_27E2ECEF0, "j-", MEMORY[0x277CE0868]);
  v290 = WitnessTable;
  v291 = v29;
  v30 = MEMORY[0x277CDFAD8];
  v31 = swift_getWitnessTable();
  v288 = swift_getWitnessTable();
  v289 = v29;
  v32 = swift_getWitnessTable();
  v286 = v31;
  v287 = v32;
  v33 = swift_getWitnessTable();
  v34 = sub_23D833358();
  v284 = v33;
  v285 = v34;
  v35 = swift_getWitnessTable();
  v238 = v35;
  v36 = sub_23D835AD0(&qword_27E2ECF20, &qword_27E2ECEF8, &qword_23D8DFDC0, MEMORY[0x277CE0328]);
  v282 = v35;
  v283 = v36;
  v37 = swift_getWitnessTable();
  v38 = sub_23D835AD0(&qword_27E2ECF28, &qword_27E2ECF00, &qword_23D8DFDC8, MEMORY[0x277CE07C8]);
  v280 = v37;
  v281 = v38;
  v227 = v30;
  v39 = swift_getWitnessTable();
  v187 = v39;
  v40 = sub_23D8333AC(&qword_27E2ECF30, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
  v278 = v39;
  v279 = v40;
  v189 = swift_getWitnessTable();
  v276 = v189;
  v277 = MEMORY[0x277CDFB28];
  v191 = v26;
  v192 = swift_getWitnessTable();
  v41 = v250;
  v272 = v250;
  v273 = v26;
  v42 = v251;
  v274 = v251;
  v275 = v192;
  v43 = sub_23D8DD0A0();
  v201 = v43;
  v204 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v242 = &v187 - v44;
  v202 = swift_getWitnessTable();
  v272 = v41;
  v273 = v43;
  v274 = v42;
  v275 = v202;
  v45 = sub_23D8DD0A0();
  v205 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v243 = &v187 - v46;
  type metadata accessor for AXSpeakStopType(255);
  v48 = v47;
  v49 = swift_getWitnessTable();
  v50 = sub_23D8333AC(&qword_27E2ECF38, type metadata accessor for AXSpeakStopType, &unk_23D8E0188);
  v272 = v45;
  v273 = v48;
  v195 = v45;
  v51 = v48;
  v193 = v48;
  v274 = v49;
  v275 = v50;
  v52 = v49;
  v197 = v49;
  v53 = v50;
  v196 = v50;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v207 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v240 = &v187 - v55;
  type metadata accessor for AXSFSpeakFingerState(255);
  v57 = v56;
  v272 = v45;
  v273 = v51;
  v274 = v52;
  v275 = v53;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v59 = sub_23D8333AC(&qword_27E2ECF40, type metadata accessor for AXSFSpeakFingerState, &unk_23D8E0160);
  v272 = OpaqueTypeMetadata2;
  v273 = v57;
  v60 = OpaqueTypeMetadata2;
  v198 = OpaqueTypeMetadata2;
  v61 = v57;
  v194 = v57;
  v274 = OpaqueTypeConformance2;
  v275 = v59;
  v62 = OpaqueTypeConformance2;
  v200 = OpaqueTypeConformance2;
  v63 = v59;
  v199 = v59;
  v64 = swift_getOpaqueTypeMetadata2();
  v213 = v64;
  v219 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v245 = &v187 - v65;
  v272 = v60;
  v273 = v61;
  v274 = v62;
  v275 = v63;
  v66 = swift_getOpaqueTypeConformance2();
  v212 = v66;
  v211 = sub_23D835AD0(&qword_27E2ECF50, &qword_27E2ECF48, &unk_23D8DFDD0, MEMORY[0x277CDF728]);
  v272 = v64;
  v273 = v256;
  v274 = v66;
  v275 = v211;
  v218 = MEMORY[0x277CE0D90];
  v216 = swift_getOpaqueTypeMetadata2();
  v222 = *(v216 - 8);
  MEMORY[0x28223BE20](v216);
  v210 = &v187 - v67;
  v221 = sub_23D8DD020();
  v220 = *(v221 - 8);
  v68 = MEMORY[0x28223BE20](v221);
  v214 = &v187 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68);
  v217 = &v187 - v70;
  v71 = v262;
  v72 = v263;
  v73 = v268;
  sub_23D830AD4(v263, v262, v74);
  v75 = v261;
  sub_23D8DDF50();
  (*(v264 + 8))(v71, v75);
  v76 = v269;
  v77 = v269 + 16;
  v78 = *(v269 + 16);
  v79 = v252;
  v78(v252, v73, v72);
  v261 = v78;
  v262 = v77;
  v80 = *(v76 + 80);
  v81 = v76;
  v257 = &v266[(v80 + 32) & ~v80];
  v82 = (v80 + 32) & ~v80;
  v264 = v82;
  v260 = v80 | 7;
  v83 = swift_allocObject();
  v84 = v267;
  v85 = v265;
  *(v83 + 16) = v267;
  *(v83 + 24) = v85;
  v86 = *(v81 + 32);
  v269 = v81 + 32;
  v266 = v86;
  v87 = v83 + v82;
  v88 = v79;
  (v86)(v87, v79, v72);
  v89 = v239;
  v90 = v249;
  sub_23D831664(sub_23D834F30, v83, v238, v241);

  (*(v248 + 8))(v90, v89);
  v78(v88, v268, v72);
  v91 = v258;
  v92 = *(v258 + 16);
  v239 = v258 + 16;
  v249 = v92;
  v93 = v244;
  v94 = v253;
  (v92)(v244, v255, v253);
  v248 = *(v91 + 80);
  v95 = &v257[v248] & ~v248;
  v237 = v95;
  v96 = swift_allocObject();
  *(v96 + 16) = v84;
  *(v96 + 24) = v85;
  v97 = v88;
  v98 = v263;
  (v266)(v96 + v264, v97, v263);
  v238 = *(v91 + 32);
  v258 = v91 + 32;
  v238(v96 + v95, v93, v94);
  v99 = v223;
  sub_23D8DE9E0();
  v100 = v203;
  v101 = v188;
  v102 = v241;
  sub_23D8DDFA0();

  (*(v224 + 8))(v99, v225);
  (*(v208 + 8))(v102, v101);
  v103 = v98;
  v104 = v268;
  sub_23D833FAC();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D8DCB70();

  v105 = v206;
  v106 = v190;
  sub_23D8DE090();
  (*(v209 + 8))(v100, v106);
  v107 = objc_opt_self();
  v108 = [v107 defaultCenter];
  v109 = v226;
  sub_23D8DEB30();

  v110 = v252;
  v261(v252, v104, v103);
  v111 = swift_allocObject();
  v112 = v265;
  *(v111 + 16) = v267;
  *(v111 + 24) = v112;
  (v266)(v111 + v264, v110, v103);
  v113 = v191;
  v114 = v250;
  sub_23D8DE0F0();

  v115 = *(v254 + 8);
  v254 += 8;
  v241 = v115;
  (v115)(v109, v114);
  (*(v215 + 8))(v105, v113);
  v116 = [v107 defaultCenter];
  v117 = v109;
  sub_23D8DEB30();

  v118 = v261;
  v261(v110, v268, v103);
  v119 = swift_allocObject();
  *(v119 + 16) = v267;
  *(v119 + 24) = v112;
  v120 = v264;
  v121 = v266;
  (v266)(v119 + v264, v110, v103);
  v122 = v201;
  v123 = v250;
  v124 = v242;
  sub_23D8DE0F0();

  (v241)(v117, v123);
  (*(v204 + 8))(v124, v122);
  v125 = v263;
  v126 = v268;
  v272 = [*(v268 + *(v263 + 52) + 8) stopType];
  v127 = v252;
  v128 = v125;
  v118(v252, v126, v125);
  v129 = swift_allocObject();
  v130 = v267;
  v131 = v265;
  *(v129 + 16) = v267;
  *(v129 + 24) = v131;
  v132 = v127;
  v121(v129 + v120, v127, v128);
  swift_checkMetadataState();
  v133 = v195;
  v134 = v243;
  sub_23D8DE070();

  (*(v205 + 8))(v134, v133);
  v135 = v128;
  v272 = [*(v126 + *(v128 + 52) + 8) speakFingerState];
  v136 = v132;
  v137 = v128;
  v138 = v261;
  v261(v132, v126, v137);
  v139 = swift_allocObject();
  *(v139 + 16) = v130;
  *(v139 + 24) = v131;
  v140 = v264;
  (v266)(v139 + v264, v132, v135);
  swift_checkMetadataState();
  v141 = v198;
  v142 = v240;
  sub_23D8DE070();

  (*(v207 + 8))(v142, v141);
  sub_23D8DD860();
  sub_23D8DCCD0();
  v143 = v135;
  v138(v132, v268, v135);
  v144 = v244;
  v145 = v255;
  v146 = v253;
  (v249)(v244, v255, v253);
  v147 = v237;
  v148 = swift_allocObject();
  v149 = v265;
  *(v148 + 16) = v267;
  *(v148 + 24) = v149;
  (v266)(v148 + v140, v136, v143);
  v150 = v144;
  v151 = v144;
  v152 = v238;
  v238(v148 + v147, v150, v146);
  sub_23D8333AC(&qword_27E2ED0C0, MEMORY[0x277CDD730], MEMORY[0x277CDD728]);
  sub_23D8333AC(&qword_27E2ED0C8, MEMORY[0x277CDD708], MEMORY[0x277CDD710]);
  v153 = v231;
  v154 = v246;
  sub_23D8DE500();

  (*(v232 + 8))(v154, v153);
  v155 = v136;
  v156 = v263;
  v261(v136, v268, v263);
  v157 = v151;
  v158 = v151;
  v159 = v146;
  (v249)(v158, v145, v146);
  v160 = v237;
  v161 = swift_allocObject();
  v162 = v265;
  *(v161 + 16) = v267;
  *(v161 + 24) = v162;
  v163 = v155;
  (v266)(v161 + v264, v155, v156);
  v152(v161 + v160, v157, v159);
  sub_23D835AD0(&qword_27E2ED0D0, &qword_27E2ED0B8, &qword_23D8E01E8, MEMORY[0x277CDFB18]);
  v164 = v230;
  v165 = v233;
  v166 = v247;
  sub_23D8DE4F0();

  (*(v235 + 8))(v166, v165);
  sub_23D8DCD30();
  v167 = v210;
  v168 = v164;
  v169 = v213;
  v170 = v256;
  v171 = v212;
  v172 = v211;
  v173 = v245;
  sub_23D8DDE70();
  (*(v234 + 8))(v168, v170);
  (*(v219 + 8))(v173, v169);
  v174 = v263;
  v261(v163, v268, v263);
  v175 = v253;
  (v249)(v157, v255, v253);
  v176 = swift_allocObject();
  v177 = v265;
  *(v176 + 16) = v267;
  *(v176 + 24) = v177;
  (v266)(v176 + v264, v163, v174);
  v238(v176 + v160, v157, v175);
  v272 = v169;
  v273 = v256;
  v274 = v171;
  v275 = v172;
  v178 = swift_getOpaqueTypeConformance2();
  v179 = v214;
  v180 = v216;
  sub_23D8DE050();

  (*(v222 + 8))(v167, v180);
  v270 = v178;
  v271 = MEMORY[0x277CE0790];
  v181 = v221;
  swift_getWitnessTable();
  v182 = v220;
  v183 = *(v220 + 16);
  v184 = v217;
  v183(v217, v179, v181);
  v185 = *(v182 + 8);
  v185(v179, v181);
  v183(v236, v184, v181);
  return (v185)(v184, v181);
}

uint64_t sub_23D830AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v76 = a2;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for SSRoundPipView(0, v5, v6, a3);
  v66 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v65 = &v60 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF0, "j-");
  v75 = v7;
  v9 = sub_23D8DD020();
  v69 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v68 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v67 = &v60 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED110, &unk_23D8E03D0);
  MEMORY[0x28223BE20](v13 - 8);
  v61 = (&v60 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED118, "r^");
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (&v60 - v16);
  v19 = type metadata accessor for SSHUDRoundView(0, v5, v6, v18);
  v63 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v62 = &v60 - v20;
  v77 = v21;
  v22 = sub_23D8DD020();
  v70 = *(v22 - 8);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v64 = &v60 - v26;
  v74 = v9;
  v27 = sub_23D8DD6C0();
  v72 = *(v27 - 8);
  v73 = v27;
  MEMORY[0x28223BE20](v27);
  v71 = &v60 - v28;
  sub_23D833FAC();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D8DCB70();

  if (v92)
  {
    sub_23D8797FC(v17);
    swift_unknownObjectRetain();
    v29 = v65;
    sub_23D87985C(v17, sub_23D87B6F0, 0, v5, v6, v65);
    sub_23D833FAC();
    type metadata accessor for SSStore(0);

    v30 = v75;
    WitnessTable = swift_getWitnessTable();
    sub_23D8333AC(&qword_27E2ED008, type metadata accessor for SSStore, &unk_23D8E1DE0);
    v70 = v22;
    v32 = v68;
    sub_23D8DDDF0();

    (*(v66 + 8))(v29, v30);
    v33 = sub_23D835AD0(&qword_27E2ECF10, &qword_27E2ECEF0, "j-", MEMORY[0x277CE0868]);
    v90 = WitnessTable;
    v91 = v33;
    v34 = v74;
    v66 = swift_getWitnessTable();
    v35 = v69;
    v36 = *(v69 + 16);
    v37 = v67;
    v36(v67, v32, v34);
    v38 = *(v35 + 8);
    v38(v32, v34);
    v36(v32, v37, v34);
    v88 = swift_getWitnessTable();
    v89 = v33;
    v39 = swift_getWitnessTable();
    v40 = v71;
    sub_23D889670(v32, v70, v34, v39, v66);
    v38(v32, v34);
    v38(v37, v34);
  }

  else
  {
    v41 = *(v3 + *(a1 + 52) + 8);
    sub_23D88D40C(v17);
    v42 = v61;
    sub_23D88D428(v61);
    swift_unknownObjectRetain();
    v43 = v62;
    sub_23D88D4A8(v17, v42, 1, v41, sub_23D87B6F0, 0, v5, v6, v62, 1.0);
    sub_23D833FAC();
    type metadata accessor for SSStore(0);

    v44 = v77;
    v45 = swift_getWitnessTable();
    sub_23D8333AC(&qword_27E2ED008, type metadata accessor for SSStore, &unk_23D8E1DE0);
    sub_23D8DDDF0();

    (*(v63 + 8))(v43, v44);
    v46 = sub_23D835AD0(&qword_27E2ECF10, &qword_27E2ECEF0, "j-", MEMORY[0x277CE0868]);
    v80 = v45;
    v81 = v46;
    v69 = swift_getWitnessTable();
    v47 = v70;
    v48 = *(v70 + 16);
    v49 = v64;
    v48(v64, v25, v22);
    v50 = *(v47 + 8);
    v50(v25, v22);
    v48(v25, v49, v22);
    v78 = swift_getWitnessTable();
    v79 = v46;
    v51 = v74;
    v52 = swift_getWitnessTable();
    v40 = v71;
    sub_23D889578(v25, v22, v51, v69, v52);
    v50(v25, v22);
    v50(v49, v22);
  }

  v53 = swift_getWitnessTable();
  v54 = sub_23D835AD0(&qword_27E2ECF10, &qword_27E2ECEF0, "j-", MEMORY[0x277CE0868]);
  v86 = v53;
  v87 = v54;
  v55 = swift_getWitnessTable();
  v84 = swift_getWitnessTable();
  v85 = v54;
  v56 = swift_getWitnessTable();
  v82 = v55;
  v83 = v56;
  v57 = v73;
  swift_getWitnessTable();
  v58 = v72;
  (*(v72 + 16))(v76, v40, v57);
  return (*(v58 + 8))(v40, v57);
}

void sub_23D831564(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for SSDraggableView(0, a4, a5, a6);
  sub_23D833FAC();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D8DCB70();

  if ((v6 & 1) == 0)
  {
    sub_23D833FAC();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D8DCB80();
  }
}

uint64_t sub_23D831664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v16 = a1;
  v17 = a2;
  v18 = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF8, &qword_23D8DFDC0);
  v6 = sub_23D8DD020();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  v21 = sub_23D832F94;
  v22 = 0;
  sub_23D8DE5F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0F0, &qword_23D8E03C8);
  sub_23D835AD0(&qword_27E2ED0F8, &qword_27E2ED0F0, &qword_23D8E03C8, MEMORY[0x277CDF7D8]);
  v10 = a4;
  sub_23D8DDD00();
  v11 = swift_allocObject();
  v12 = v17;
  *(v11 + 16) = v16;
  *(v11 + 24) = v12;
  v13 = sub_23D835AD0(&qword_27E2ECF20, &qword_27E2ECEF8, &qword_23D8DFDC0, MEMORY[0x277CE0328]);
  v19 = v10;
  v20 = v13;

  swift_getWitnessTable();
  sub_23D835B7C();
  sub_23D8333AC(&qword_27E2ED108, type metadata accessor for CGSize, MEMORY[0x277CBF298]);
  sub_23D8DDE30();

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_23D8318F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  sub_23D8DE9D0();
  v4[8] = sub_23D8DE9C0();
  v6 = sub_23D8DE9B0();

  return MEMORY[0x2822009F8](sub_23D831994, v6, v5);
}

uint64_t sub_23D831994()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 48);

  type metadata accessor for SSDraggableView(0, v2, v1, v3);
  sub_23D833FAC();

  sub_23D833FAC();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D8DCB70();

  if (*(v0 + 16) == 0.0 && *(v0 + 24) == 0.0)
  {
    sub_23D8DCDF0();
    v5 = v4 * 0.5;
    sub_23D8DCDF0();
    v7 = v6 * 0.5;
  }

  else
  {
    sub_23D833FAC();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D8DCB70();

    v5 = *(v0 + 16);
    v7 = *(v0 + 24);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 16) = v5;
  *(v0 + 24) = v7;
  sub_23D8DCB80();
  v8 = *(v0 + 8);

  return v8();
}

void sub_23D831B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_23D8DBE00();
  if (v6)
  {
    v7 = v6;
    *v14 = sub_23D8DE870();
    *&v14[8] = v8;
    sub_23D8DEC20();
    if (*(v7 + 16) && (v9 = sub_23D877E9C(v15), (v10 & 1) != 0))
    {
      sub_23D835A24(*(v7 + 56) + 32 * v9, v16);
      sub_23D8359D0(v15);

      type metadata accessor for CGRect(0);
      if (swift_dynamicCast())
      {
        v12 = type metadata accessor for SSDraggableView(0, a3, a4, v11);
        sub_23D82E228(v12, *v14, *&v14[8]);
        Height = CGRectGetHeight(*v14);
        sub_23D82E2EC(v12, Height);
        sub_23D831CA8(v12);
      }
    }

    else
    {

      sub_23D8359D0(v15);
    }
  }
}

void sub_23D831CA8(uint64_t a1)
{
  sub_23D833FAC();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D8DCB70();

  sub_23D833FAC();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D8DCB70();

  sub_23D833FAC();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D8DCB70();

  sub_23D82E1C8(a1);
  if (v3 < v4)
  {
    sub_23D82E28C(a1);
    v2 = sub_23D82E124(1, a1);
  }

  MEMORY[0x28223BE20](v2);
  sub_23D8DE640();
  sub_23D8DCE60();
}

void sub_23D831EB8(uint64_t a1)
{
  sub_23D833FAC();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D8DCB70();

  sub_23D833FAC();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D8DCB70();

  v2 = sub_23D82E0C4(a1);
  if (v2)
  {
    sub_23D82E28C(a1);
    v2 = sub_23D82E124(0, a1);
  }

  MEMORY[0x28223BE20](v2);
  sub_23D8DE640();
  sub_23D8DCE60();
}

double sub_23D832064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = [*(a1 + *(type metadata accessor for SSDraggableView(0 a2];
  if (v4)
  {
    MEMORY[0x28223BE20](v4);
    sub_23D8DE640();
    sub_23D8DCE60();
  }

  return result;
}

uint64_t sub_23D832134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SSDraggableView(0, a2, a3, a4);
  sub_23D833FAC();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D8DCB80();
}

double sub_23D8321B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SSDraggableView(0, a2, a3, a4);
  if ([*(a1 + *(v5 + 52) + 8) speakFingerState] == 4 || objc_msgSend(*(a1 + *(v5 + 52) + 8), sel_speakFingerState) == 1)
  {
    sub_23D833FAC();

    sub_23D861AB4();
  }

  return result;
}

uint64_t sub_23D83225C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_23D8DD780();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D833FAC();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D8DCB70();

  if (LOBYTE(v33) == 1)
  {
    if (qword_27E2ECEC0 != -1)
    {
      swift_once();
    }

    v8 = *&qword_27E2EEAD0;
    v7 = *algn_27E2EEAD8;
  }

  else
  {
    sub_23D833FAC();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D8DCB70();

    v8 = v33;
    v7 = v34;
  }

  sub_23D8DD870();
  sub_23D8DCE00();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  (*(v4 + 8))(v6, v3);
  sub_23D8DCDF0();
  v18 = v17;
  v19 = v8 * 0.5 + 5.0;
  v20 = v7 * 0.5;
  sub_23D8DCDF0();
  v22 = v21 - v19 + -5.0;
  v35.origin.x = v10;
  v35.origin.y = v12;
  v35.size.width = v14;
  v35.size.height = v16;
  Height = CGRectGetHeight(v35);
  sub_23D8DCD00();
  if (v22 >= v24)
  {
    sub_23D8DCD00();
    v22 = v19;
    if (v25 >= v19)
    {
      sub_23D8DCD00();
      v22 = v26;
    }
  }

  sub_23D8DCD00();
  if (v27 >= v20)
  {
    v20 = Height + -5.0;
    sub_23D8DCD00();
    if (Height + -5.0 >= v28)
    {
      sub_23D8DCD00();
      v20 = v29;
    }
  }

  sub_23D833FAC();

  sub_23D8DCD00();
  if (v18 * 0.5 >= v30)
  {
    v31 = 1;
  }

  else
  {
    v31 = 2;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v33) = v31;
  sub_23D8DCB80();
  sub_23D833FAC();
  swift_getKeyPath();
  swift_getKeyPath();
  v33 = v22;
  v34 = v20;

  return sub_23D8DCB80();
}

double sub_23D8325F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for SSDraggableView(0, a4, a5, a4);
  sub_23D832744(a1, a3, v7);
  sub_23D833FAC();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D8DCB70();

  if (v10 == 1)
  {
    MEMORY[0x28223BE20](v8);
    sub_23D8DE640();
    sub_23D8DCE60();
  }

  return result;
}

void sub_23D832744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23D8DCCF0();
  v6 = v5;
  sub_23D8DCCE0();
  v8 = v7;
  sub_23D8DCCF0();
  v9 = sub_23D8DCCE0();
  if (*(v3 + *(a3 + 56)) < vabdd_f64(v6, v8))
  {
    MEMORY[0x28223BE20](v9);
    sub_23D8DE640();
    sub_23D8DCE60();
  }
}

uint64_t sub_23D832828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_23D8DD780();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D833FAC();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D8DCB70();

  if (LOBYTE(v32) == 1)
  {
    if (qword_27E2ECEC0 != -1)
    {
      swift_once();
    }

    v8 = *&qword_27E2EEAD0;
    v7 = *algn_27E2EEAD8;
  }

  else
  {
    sub_23D833FAC();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D8DCB70();

    v8 = v32;
    v7 = v33;
  }

  sub_23D8DCD00();
  v31 = v9;
  sub_23D8DD870();
  sub_23D8DCE00();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  (*(v4 + 8))(v6, v3);
  sub_23D8DCDF0();
  v19 = v18 * 0.5;
  v20 = v8 * 0.5 + 5.0;
  v21 = v7 * 0.5;
  sub_23D8DCDF0();
  v23 = v22;
  v34.origin.x = v11;
  v34.origin.y = v13;
  v34.size.width = v15;
  v34.size.height = v17;
  Height = CGRectGetHeight(v34);
  sub_23D8DCD00();
  if (v19 >= v25)
  {
    sub_23D833FAC();
    swift_getKeyPath();
    swift_getKeyPath();
    v26 = 1;
  }

  else
  {
    v20 = v23 - v20 + -5.0;
    sub_23D833FAC();
    swift_getKeyPath();
    swift_getKeyPath();
    v26 = 2;
  }

  LOBYTE(v32) = v26;

  sub_23D8DCB80();
  sub_23D8DCD00();
  if (v27 >= v21)
  {
    sub_23D8DCD00();
    if (Height + -5.0 >= v28)
    {
      v21 = v31;
    }

    else
    {
      v21 = Height + -5.0;
    }
  }

  sub_23D833FAC();
  swift_getKeyPath();
  swift_getKeyPath();
  v32 = v20;
  v33 = v21;

  return sub_23D8DCB80();
}

uint64_t sub_23D832BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SSDraggableView(0, a3, a4, a4);
  sub_23D833FAC();

  sub_23D8DCDF0();
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_23D8DCB80();
}

double sub_23D832CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SSDraggableView(0, a3, a4, a4);
  sub_23D833FAC();

  sub_23D8DCD00();
  sub_23D861AB4();

  return result;
}

uint64_t sub_23D832D10(double a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for SSDraggableView(0, a4, a5, a5);
  sub_23D833FAC();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D8DCB80();
}

uint64_t sub_23D832DB4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for SSStore(0);
  sub_23D8333AC(&qword_27E2ED008, type metadata accessor for SSStore, &unk_23D8E1DE0);
  *a4 = sub_23D8DD140();
  a4[1] = v7;
  v9 = type metadata accessor for SSDraggableView(0, a2, a3, v8);
  v10 = v9[9];
  *(a4 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ECEE8, &unk_23D8DFDB0);
  swift_storeEnumTagMultiPayload();
  v11 = a4 + v9[10];
  sub_23D8DE310();
  *v11 = v21;
  *(v11 + 1) = v22;
  v12 = (a4 + v9[11]);
  v13 = sub_23D82E188(0.0, 0.0);
  *v12 = v14;
  v12[1] = v15;
  v12[2] = v13;
  v16 = (a4 + v9[12]);
  sub_23D8DE310();
  *v16 = v21;
  v16[1] = v22;
  v17 = (a4 + v9[13]);
  *v17 = sub_23D8DCEF0();
  v17[1] = v18;
  result = AXDeviceIsPad();
  v20 = 500.0;
  if (result)
  {
    v20 = 1000.0;
  }

  *(a4 + v9[14]) = v20;
  return result;
}

void sub_23D832F94(uint64_t *a1@<X8>)
{
  v2 = sub_23D8DE230();
  sub_23D8DCDF0();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
}

uint64_t sub_23D833000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 != 4)
  {
    MEMORY[0x23EEEFBA0](a5, a2, a3);
  }

  return sub_23D8DDD40();
}

double sub_23D833108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED120, &qword_23D8E03E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_23D8DEA00();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_23D8DE9D0();
  v8 = sub_23D8DE9C0();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  sub_23D870938(0, 0, v6, a3, v9);

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23D833274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, char *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for SSDraggableView(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_23D82EB04(a1, v9, v6, v7, a3);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_23D833358()
{
  result = qword_27E2ECF18;
  if (!qword_27E2ECF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ECF18);
  }

  return result;
}

uint64_t sub_23D8333AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23D833568(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_23D8DD890();

    return sub_23D8DD020();
  }

  else
  {
    sub_23D8DD0B0();
    swift_getWitnessTable();
    sub_23D8DD7E0();
    sub_23D8DD020();
    sub_23D8DEBD0();
    swift_getWitnessTable();
    sub_23D8DD0B0();
    swift_getWitnessTable();
    sub_23D8DD7E0();
    return sub_23D8DD020();
  }
}

uint64_t sub_23D8336CC(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_23D8DD890();
    sub_23D8DD020();
  }

  else
  {
    sub_23D8DD0B0();
    swift_getWitnessTable();
    sub_23D8DD7E0();
    sub_23D8DD020();
    sub_23D8DEBD0();
    swift_getWitnessTable();
    sub_23D8DD0B0();
    swift_getWitnessTable();
    sub_23D8DD7E0();
    sub_23D8DD020();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23D8338F0(uint64_t a1)
{
  v2 = sub_23D8DCFA0();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_23D8DD250();
}

void *sub_23D8339F8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23D833A08(uint64_t a1, id *a2)
{
  result = sub_23D8DE850();
  *a2 = 0;
  return result;
}

uint64_t sub_23D833A80(uint64_t a1, id *a2)
{
  v3 = sub_23D8DE860();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_23D833B00@<X0>(uint64_t *a2@<X8>)
{
  sub_23D8DE870();
  v3 = sub_23D8DE830();

  *a2 = v3;
  return result;
}

uint64_t sub_23D833B44()
{
  v0 = sub_23D8DE870();
  v1 = MEMORY[0x23EEF0A80](v0);

  return v1;
}

uint64_t sub_23D833B80(uint64_t a1)
{
  sub_23D8DE870();
  sub_23D8DE8C0();
}

uint64_t sub_23D833BD4(uint64_t a1)
{
  sub_23D8DE870();
  sub_23D8DED50();
  sub_23D8DE8C0();
  v1 = sub_23D8DED80();

  return v1;
}

uint64_t sub_23D833C48()
{
  sub_23D8DED50();
  sub_23D8DED70();
  return sub_23D8DED80();
}

uint64_t sub_23D833CBC(uint64_t a1)
{
  sub_23D8DED50();
  sub_23D8DED70();
  return sub_23D8DED80();
}

uint64_t sub_23D833D04(void *a1, uint64_t *a2)
{
  v2 = sub_23D8DE870();
  v4 = v3;
  if (v2 == sub_23D8DE870() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_23D8DED20();
  }

  return v7 & 1;
}

_DWORD *sub_23D833DA0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_23D833DC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23D8DE870();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23D833DEC(uint64_t a1)
{
  v2 = sub_23D8333AC(&qword_27E2ED1A0, type metadata accessor for Key, &unk_23D8E0834);
  v3 = sub_23D8333AC(&qword_27E2ED1A8, type metadata accessor for Key, &unk_23D8E0584);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23D833EA8@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_23D8DE830();

  *a2 = v3;
  return result;
}

uint64_t sub_23D833EF0(uint64_t a1)
{
  v2 = sub_23D8333AC(&qword_27E2ED190, type metadata accessor for OpenExternalURLOptionsKey, &unk_23D8E07F0);
  v3 = sub_23D8333AC(&qword_27E2ED198, type metadata accessor for OpenExternalURLOptionsKey, &unk_23D8E06A4);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23D833FAC()
{
  result = *v0;
  if (!*v0)
  {
    type metadata accessor for SSStore(0);
    sub_23D8333AC(&qword_27E2ED008, type metadata accessor for SSStore, &unk_23D8E1DE0);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D834028(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_23D83403C()
{
  result = qword_27E2ECF68;
  if (!qword_27E2ECF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ECF68);
  }

  return result;
}

unint64_t sub_23D834094()
{
  result = qword_27E2ECF70;
  if (!qword_27E2ECF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ECF70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SSWindowState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SSWindowState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IconDirection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IconDirection(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_23D834400(uint64_t a1)
{
  sub_23D83475C(319);
  if (v1 <= 0x3F)
  {
    sub_23D8347F0(319, &qword_27E2ED010, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_23D835FA4(319, &qword_27E2ED018, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_23D8347F0(319, &qword_27E2ED020, type metadata accessor for CGPoint, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_23D835FA4(319, &qword_27E2ED028, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_23D8DCF20();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23D8345AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2ECF78, &qword_23D8DFFA0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 52) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_23D834690(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2ECF78, &qword_23D8DFFA0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 36);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 52) + 8) = (a2 - 1);
  }

  return result;
}

void sub_23D83475C(uint64_t a1)
{
  if (!qword_27E2ED000)
  {
    type metadata accessor for SSStore(255);
    sub_23D8333AC(&qword_27E2ED008, type metadata accessor for SSStore, &unk_23D8E1DE0);
    v1 = sub_23D8DD150();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2ED000);
    }
  }
}

void sub_23D8347F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_23D83487C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_23D8DEB20();
  type metadata accessor for SSHUDRoundView(255, v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF0, "j-");
  sub_23D8DD020();
  type metadata accessor for SSRoundPipView(255, v1, v2, v4);
  sub_23D8DD020();
  sub_23D8DD6C0();
  sub_23D8DD020();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF8, &qword_23D8DFDC0);
  sub_23D8DD020();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECF00, &qword_23D8DFDC8);
  sub_23D8DD020();
  sub_23D8DCE50();
  sub_23D8DD020();
  sub_23D8DD020();
  sub_23D8333AC(&qword_27E2ECF08, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
  swift_getWitnessTable();
  sub_23D835AD0(&qword_27E2ECF10, &qword_27E2ECEF0, "j-", MEMORY[0x277CE0868]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23D833358();
  swift_getWitnessTable();
  sub_23D835AD0(&qword_27E2ECF20, &qword_27E2ECEF8, &qword_23D8DFDC0, MEMORY[0x277CE0328]);
  swift_getWitnessTable();
  sub_23D835AD0(&qword_27E2ECF28, &qword_27E2ECF00, &qword_23D8DFDC8, MEMORY[0x277CE07C8]);
  swift_getWitnessTable();
  sub_23D8333AC(&qword_27E2ECF30, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23D8DD0A0();
  swift_getWitnessTable();
  sub_23D8DD0A0();
  type metadata accessor for AXSpeakStopType(255);
  swift_getWitnessTable();
  sub_23D8333AC(&qword_27E2ECF38, type metadata accessor for AXSpeakStopType, &unk_23D8E0188);
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AXSFSpeakFingerState(255);
  swift_getOpaqueTypeConformance2();
  sub_23D8333AC(&qword_27E2ECF40, type metadata accessor for AXSFSpeakFingerState, &unk_23D8E0160);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECF48, &unk_23D8DFDD0);
  swift_getOpaqueTypeConformance2();
  sub_23D835AD0(&qword_27E2ECF50, &qword_27E2ECF48, &unk_23D8DFDD0, MEMORY[0x277CDF728]);
  swift_getOpaqueTypeMetadata2();
  sub_23D8DD020();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_23D8DCE80();
  return swift_getWitnessTable();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23D834EB0(uint64_t a1, int a2)
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

uint64_t sub_23D834ED0(uint64_t result, int a2, int a3)
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

void sub_23D834F30(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  v12 = *(type metadata accessor for SSDraggableView(0, v9, v10, a6) - 8);
  v13 = v6 + ((*(v12 + 80) + 32) & ~*(v12 + 80));

  sub_23D831564(a1, a2, v13, v9, v10, v11);
}

uint64_t sub_23D834FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for SSDraggableView(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_23D8DCE10() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_23D836234;

  return sub_23D8318F8(v4 + v9, v4 + v12, v6, v7);
}

void sub_23D835124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for SSDraggableView(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  sub_23D831B5C(a1, v9, v6, v7);
}

uint64_t objectdestroyTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SSDraggableView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*(v5 - 8) + 64);

  v9 = *(v5 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ECEE8, &unk_23D8DFDB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_23D8DCFA0();
    (*(*(v10 - 8) + 8))(v4 + v7 + v9, v10);
  }

  else
  {
  }

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v4, v7 + v8, v6 | 7);
}

uint64_t sub_23D8353AC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for SSDraggableView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

uint64_t sub_23D835444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SSDraggableView(0, *(v4 + 16), *(v4 + 24), a4);
  v7 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v8 = *(*(v6 - 8) + 64);
  v9 = *(sub_23D8DCE10() - 8);
  return sub_23D83225C(a1, v4 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80)), v6);
}

double sub_23D835524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for SSDraggableView(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_23D8DCE10() - 8);
  v12 = v4 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80));

  return sub_23D8325F8(a1, v4 + v9, v12, v6, v7);
}

uint64_t objectdestroy_43Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SSDraggableView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*(v5 - 8) + 64);
  v9 = sub_23D8DCE10();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v17 = *(v10 + 64);

  v12 = *(v5 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ECEE8, &unk_23D8DFDB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23D8DCFA0();
    (*(*(v13 - 8) + 8))(v4 + v7 + v12, v13);
  }

  else
  {
  }

  v14 = v6 | v11;
  v15 = (v7 + v8 + v11) & ~v11;

  swift_unknownObjectRelease();
  (*(v10 + 8))(v4 + v15, v9);

  return MEMORY[0x2821FE8E8](v4, v15 + v17, v14 | 7);
}

uint64_t sub_23D835814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for SSDraggableView(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_23D8DCE10() - 8);
  v11 = v4 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_23D832BD0(v4 + v8, v11, v5, v6);
}

uint64_t sub_23D83590C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[5];
  v8 = v4[6];
  v9 = type metadata accessor for SSDraggableView(0, v5, v6, a4);
  return sub_23D832828(v7, v8, v9);
}

uint64_t sub_23D835A24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23D835AD0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_23D835B18()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_23D835B7C()
{
  result = qword_27E2ED100;
  if (!qword_27E2ED100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED100);
  }

  return result;
}

uint64_t sub_23D835BD0(__n128 a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t sub_23D835C08(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_23D835CB4;

  return sub_23D8CCA34();
}

uint64_t sub_23D835CB4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23D835DA8(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_23D836234;

  return sub_23D8CC9A0();
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23D835EE0(uint64_t a1, int a2)
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

uint64_t sub_23D835F00(uint64_t result, int a2, int a3)
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

void sub_23D835FA4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_23D836288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED110, &unk_23D8E03D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED210, &qword_23D8E08B8);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_23D8363DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED110, &unk_23D8E03D0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED210, &qword_23D8E08B8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_23D83653C(uint64_t a1)
{
  sub_23D83C388(319, &qword_27E2ED228, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_23D8366C8(319);
    if (v2 <= 0x3F)
    {
      sub_23D83675C(319);
      if (v3 <= 0x3F)
      {
        sub_23D836838(319);
        if (v4 <= 0x3F)
        {
          sub_23D83691C(319, &qword_27E2ED258, &qword_27E2ED260, &qword_23D8E08F8, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_23D8368CC();
            if (v6 <= 0x3F)
            {
              sub_23D83691C(319, &qword_27E2ED268, &qword_27E2ED270, &qword_23D8E0900, MEMORY[0x277D83D88]);
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

void sub_23D8366C8(uint64_t a1)
{
  if (!qword_27E2ED230)
  {
    sub_23D8DC9F0();
    sub_23D8367F0(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    v1 = sub_23D8DD150();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2ED230);
    }
  }
}

void sub_23D83675C(uint64_t a1)
{
  if (!qword_27E2ED240)
  {
    sub_23D8DC430();
    sub_23D8367F0(&unk_27E2F0420, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);
    v1 = sub_23D8DD150();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2ED240);
    }
  }
}

uint64_t sub_23D8367F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_23D836838(uint64_t a1)
{
  if (!qword_27E2ED248)
  {
    sub_23D8DC900();
    sub_23D8367F0(&qword_27E2ED250, MEMORY[0x277CE73E8], MEMORY[0x277CE73E0]);
    v1 = sub_23D8DCF20();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2ED248);
    }
  }
}

void sub_23D8368CC()
{
  if (!qword_27E2ED018)
  {
    v0 = sub_23D8DE350();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2ED018);
    }
  }
}

void sub_23D83691C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_23D836994()
{
  result = qword_27E2ED278;
  if (!qword_27E2ED278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED278);
  }

  return result;
}

uint64_t sub_23D836A04()
{
  v1 = type metadata accessor for AXRPresetSelectView(0);
  if (*(v0 + *(v1 + 44)))
  {
    if (*(v0 + *(v1 + 44)) == 1)
    {

      return sub_23D8DC4F0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED378, &qword_23D8E18F0);
      v3 = sub_23D8DC510();
      v4 = *(v3 - 8);
      v5 = *(v4 + 72);
      v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_23D8E0880;
      v8 = v7 + v6;
      v9 = *(v4 + 104);
      v9(v8, *MEMORY[0x277CE7278], v3);
      v9(v8 + v5, *MEMORY[0x277CE7298], v3);
      v9(v8 + 2 * v5, *MEMORY[0x277CE7288], v3);
      v9(v8 + 3 * v5, *MEMORY[0x277CE7270], v3);
      v9(v8 + 4 * v5, *MEMORY[0x277CE7268], v3);
      v9(v8 + 5 * v5, *MEMORY[0x277CE7280], v3);
      return v7;
    }
  }

  else
  {

    return sub_23D8DC4E0();
  }
}

uint64_t sub_23D836C18@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED280, &qword_23D8E09D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED288, &qword_23D8E09D8);
  v5 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = &v22 - v6;
  v8 = sub_23D8DE560();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_23D836A04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED290, &qword_23D8E09E0);
  sub_23D8DE570();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_23D8E0890;
  *v11 = xmmword_23D8E08A0;
  (*(v9 + 104))(v11, *MEMORY[0x277CDF108], v8);
  sub_23D8DE580();
  v24 = v13;
  v25 = v1;
  v26 = v12;
  sub_23D8DD9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED298, &qword_23D8E09E8);
  sub_23D835AD0(&qword_27E2ED2A0, &qword_27E2ED298, &qword_23D8E09E8, MEMORY[0x277CDF170]);
  sub_23D8DCC80();

  if (*(v1 + *(type metadata accessor for AXRPresetSelectView(0) + 20)))
  {
    sub_23D8380E8();

    sub_23D8DC960();

    sub_23D8DC7E0();

    v14 = sub_23D8DEB80();
    v15 = sub_23D8DEB70();

    v16 = sub_23D8DCCB0();
    v17 = *(v16 - 8);
    v18 = MEMORY[0x277CDF3D0];
    if ((v15 & 1) == 0)
    {
      v18 = MEMORY[0x277CDF3C0];
    }

    (*(*(v16 - 8) + 104))(v4, *v18, v16);
    (*(v17 + 56))(v4, 0, 1, v16);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED2B0, &qword_23D8E09F0);
    v20 = v23;
    sub_23D83C744(v4, v23 + *(v19 + 36), &qword_27E2ED280, &qword_23D8E09D0);
    return (*(v5 + 32))(v20, v7, v22);
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D8367F0(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D8370C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_23D8DD790();
  MEMORY[0x28223BE20](v3);

  sub_23D8DD560();
  sub_23D8367F0(&qword_27E2ED2B8, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  sub_23D8DED90();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED2C0, &qword_23D8E09F8);
  sub_23D835AD0(&qword_27E2ED2C8, &qword_27E2ED2C0, &qword_23D8E09F8, MEMORY[0x277CE14C0]);
  return sub_23D8DE690();
}

uint64_t sub_23D83724C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v47 = a1;
  v55 = a3;
  v3 = type metadata accessor for AXRPresetSelectView(0);
  v49 = *(v3 - 8);
  v48 = *(v49 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED2D0, &qword_23D8E0A00);
  v53 = *(v6 - 8);
  v54 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v52 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v50 = &v44 - v9;
  v10 = sub_23D8DD770();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED2D8, &qword_23D8E0A08);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v44 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED2E0, &qword_23D8E0A10);
  v19 = v18 - 8;
  v20 = MEMORY[0x28223BE20](v18);
  v46 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v44 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED2E8, &qword_23D8E0A18);
  sub_23D83813C();
  sub_23D8DE360();
  sub_23D8DD760();
  sub_23D835AD0(&qword_27E2ED2F8, &qword_27E2ED2D8, &qword_23D8E0A08, MEMORY[0x277CDF028]);
  sub_23D8367F0(&qword_27E2ED300, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  sub_23D8DDD10();
  (*(v11 + 8))(v13, v10);
  (*(v15 + 8))(v17, v14);
  KeyPath = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = 1;
  v26 = *(v19 + 44);
  v45 = v23;
  v27 = &v23[v26];
  *v27 = KeyPath;
  v27[1] = sub_23D83B780;
  v27[2] = v25;
  v28 = v47;
  v29 = *(v47 + 16);
  v56 = 0;
  v57 = v29;
  swift_getKeyPath();
  sub_23D83BD14(v51, v5, type metadata accessor for AXRPresetSelectView);
  v30 = (*(v49 + 80) + 24) & ~*(v49 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v28;
  sub_23D83C4F4(v5, v31 + v30, type metadata accessor for AXRPresetSelectView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED310, &qword_23D8E0A78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED318, &qword_23D8E0A80);
  sub_23D83BA24();
  sub_23D83BB04();
  v32 = v50;
  sub_23D8DE4C0();
  v33 = v23;
  v34 = v46;
  sub_23D83C67C(v33, v46, &qword_27E2ED2E0, &qword_23D8E0A10);
  v35 = v52;
  v36 = v53;
  v37 = *(v53 + 16);
  v38 = v32;
  v39 = v54;
  v37(v52, v32, v54);
  v40 = v55;
  sub_23D83C67C(v34, v55, &qword_27E2ED2E0, &qword_23D8E0A10);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED360, &qword_23D8E0A98);
  v37((v40 + *(v41 + 48)), v35, v39);
  v42 = *(v36 + 8);
  v42(v38, v39);
  sub_23D83C6E4(v45, &qword_27E2ED2E0, &qword_23D8E0A10);
  v42(v35, v39);
  return sub_23D83C6E4(v34, &qword_27E2ED2E0, &qword_23D8E0A10);
}

double sub_23D837888@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_23D8DE230();
  sub_23D8DE5F0();
  sub_23D8DCDB0();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  result = *&v8;
  *(a1 + 40) = v8;
  return result;
}

uint64_t sub_23D837904@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v76 = a3;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED260, &qword_23D8E08F8);
  v7 = MEMORY[0x28223BE20](v72);
  v71 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v70 = v60 - v9;
  v10 = type metadata accessor for AXRThemePresetButton(0);
  MEMORY[0x28223BE20](v10);
  v12 = (v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED340, &qword_23D8E0A88);
  v77 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v74 = v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v73 = v60 - v16;
  v17 = sub_23D8DC510();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v23 >= *(a2 + 16))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v75 = v13;
  v24 = a2 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v23;
  v25 = v60 - v22;
  v26 = *(v18 + 16);
  v26(v60 - v22, v24, v17);
  (*(v18 + 104))(v21, *MEMORY[0x277CE7290], v17);
  sub_23D8367F0(&qword_27E2ED368, MEMORY[0x277CE72A0], MEMORY[0x277CE72A8]);
  v78 = v25;
  LOBYTE(v25) = sub_23D8DE820();
  v27 = *(v18 + 8);
  v27(v21, v17);
  if (v25)
  {
    v27(v78, v17);
    v28 = 1;
    v29 = v75;
    return (*(v77 + 56))(a4, v28, 1, v29);
  }

  v69 = a4;
  v62 = v26;
  v26(v21, v78, v17);
  v67 = type metadata accessor for AXRPresetSelectView(0);
  v30 = *(v76 + v67[7] + 8);
  v31 = (v76 + v67[10]);
  v33 = v31[1];
  v65 = *v31;
  v32 = v65;
  v63 = v30;
  v64 = v33;

  sub_23D83BCC8(v32, v33);
  v34 = sub_23D8DC9F0();
  v35 = sub_23D8367F0(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
  v68 = v34;
  v66 = v35;
  *v12 = sub_23D8DD140();
  v12[1] = v36;
  sub_23D8DC430();
  v61 = v27;
  sub_23D8367F0(&unk_27E2F0420, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);
  v12[2] = sub_23D8DD140();
  v12[3] = v37;
  v60[1] = v18 + 16;
  v38 = sub_23D8DC140();
  v39 = v70;
  (*(*(v38 - 8) + 56))(v70, 1, 1, v38);
  sub_23D83C67C(v39, v71, &qword_27E2ED260, &qword_23D8E08F8);
  sub_23D8DE310();
  sub_23D83C6E4(v39, &qword_27E2ED260, &qword_23D8E08F8);
  v40 = v10[11];
  v41 = (v12 + v10[10]);
  *(v12 + v40) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED370, &qword_23D8E0AD0);
  swift_storeEnumTagMultiPayload();
  v42 = v10[12];
  *(v12 + v42) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  swift_storeEnumTagMultiPayload();
  v43 = v12 + v10[13];
  LOBYTE(v79) = 0;
  sub_23D8DE310();
  v44 = *(&v81 + 1);
  *v43 = v81;
  *(v43 + 1) = v44;
  v45 = v12 + v10[14];
  type metadata accessor for CGSize(0);
  v79 = 0;
  v80 = 0;
  sub_23D8DE310();
  v46 = v82;
  *v45 = v81;
  *(v45 + 2) = v46;
  v62(v12 + v10[8], v21, v17);
  *(v12 + v10[9]) = 1;
  sub_23D8DC900();
  sub_23D8367F0(&qword_27E2ED250, MEMORY[0x277CE73E8], MEMORY[0x277CE73E0]);
  v47 = sub_23D8DCEF0();
  v49 = v48;
  v50 = v61;
  v61(v21, v17);
  v12[4] = v47;
  v12[5] = v49;
  v51 = v64;
  *v41 = v65;
  v41[1] = v51;
  v52 = *(v76 + v67[5]);
  if (v52)
  {

    v53 = sub_23D8DCB10();
    v50(v78, v17);
    v54 = v74;
    sub_23D83BD14(v12, v74, type metadata accessor for AXRThemePresetButton);
    v29 = v75;
    v55 = (v54 + *(v75 + 36));
    *v55 = v53;
    v55[1] = v52;
    sub_23D83D054(v12, type metadata accessor for AXRThemePresetButton);
    v56 = v54;
    v57 = v73;
    sub_23D83C744(v56, v73, &qword_27E2ED340, &qword_23D8E0A88);
    v58 = v57;
    a4 = v69;
    sub_23D83C744(v58, v69, &qword_27E2ED340, &qword_23D8E0A88);
    v28 = 0;
    return (*(v77 + 56))(a4, v28, 1, v29);
  }

LABEL_10:
  result = sub_23D8DD120();
  __break(1u);
  return result;
}

unint64_t sub_23D8380E8()
{
  result = qword_27E2ED2A8;
  if (!qword_27E2ED2A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E2ED2A8);
  }

  return result;
}

unint64_t sub_23D83813C()
{
  result = qword_27E2ED2F0;
  if (!qword_27E2ED2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED2E8, &qword_23D8E0A18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED2F0);
  }

  return result;
}

uint64_t sub_23D8381C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D8DD3C0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for AXRThemePresetButton(0);
  sub_23D83C67C(v1 + *(v10 + 48), v9, &qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23D8DCF90();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_23D8DEAB0();
    v13 = sub_23D8DD990();
    sub_23D8DCAD0();

    sub_23D8DD3B0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_23D8383C8()
{
  v0 = sub_23D8DCF90();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_23D8381C0(&v10 - v5);
  (*(v1 + 104))(v4, *MEMORY[0x277CDF9A8], v0);
  sub_23D8367F0(&qword_27E2ED3F8, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  v7 = sub_23D8DE800();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  if (v7)
  {
    v11 = sub_23D8DD570();
    v12 = 0;
    v13 = 1;
    sub_23D83CC80();
  }

  else
  {
    v11 = sub_23D8DD420();
    v12 = 0;
    v13 = 1;
    sub_23D83CC2C();
  }

  return sub_23D8DE680();
}

uint64_t sub_23D838590()
{
  if (*v0)
  {
    type metadata accessor for AXRThemePresetButton(0);

    sub_23D8DC9D0();

    v1 = sub_23D8DC870();
    v3 = v2;

    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      return v1;
    }

    else
    {

      v6 = sub_23D8DC990();

      return v6;
    }
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D8367F0(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

void sub_23D8386B8(char *a1)
{
  v2 = sub_23D8DC510();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v6 = type metadata accessor for AXRThemePresetButton(0);
    (*(v3 + 16))(v5, &a1[*(v6 + 32)], v2);

    sub_23D8DC980();
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D8367F0(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    sub_23D8DD120();
    __break(1u);
  }
}

uint64_t sub_23D83880C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23D8DCF90();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED3E8, &qword_23D8E0BA0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (&v20 - v12);
  sub_23D8381C0(v10);
  (*(v5 + 104))(v8, *MEMORY[0x277CDF9A8], v4);
  sub_23D8367F0(&qword_27E2ED3F8, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  v14 = sub_23D8DE800();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v15(v10, v4);
  if (v14)
  {
    v16 = sub_23D8DE600();
  }

  else
  {
    v16 = sub_23D8DE5F0();
  }

  *v13 = v16;
  v13[1] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED400, &qword_23D8E0BA8);
  sub_23D838A5C(a1, v13 + *(v18 + 44));
  sub_23D83C744(v13, a2, &qword_27E2ED3E8, &qword_23D8E0BA0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED3D0, &qword_23D8E0B98);
  *(a2 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_23D838A5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED408, &qword_23D8E0BB0);
  v5 = v4 - 8;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (&v25 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED410, &qword_23D8E0BB8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  sub_23D838CA0(&v25 - v15);
  *v10 = sub_23D8383C8();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED418, &qword_23D8E0BC0);
  sub_23D839DC0(a1, v10 + *(v17 + 44));
  LOBYTE(a1) = sub_23D8DD9D0();
  sub_23D8DCC20();
  v18 = v10 + *(v5 + 44);
  *v18 = a1;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  sub_23D83C67C(v16, v14, &qword_27E2ED410, &qword_23D8E0BB8);
  sub_23D83C67C(v10, v8, &qword_27E2ED408, &qword_23D8E0BB0);
  sub_23D83C67C(v14, a2, &qword_27E2ED410, &qword_23D8E0BB8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED420, &qword_23D8E0BC8);
  sub_23D83C67C(v8, a2 + *(v23 + 48), &qword_27E2ED408, &qword_23D8E0BB0);
  sub_23D83C6E4(v10, &qword_27E2ED408, &qword_23D8E0BB0);
  sub_23D83C6E4(v16, &qword_27E2ED410, &qword_23D8E0BB8);
  sub_23D83C6E4(v8, &qword_27E2ED408, &qword_23D8E0BB0);
  return sub_23D83C6E4(v14, &qword_27E2ED410, &qword_23D8E0BB8);
}

uint64_t sub_23D838CA0@<X0>(uint64_t a1@<X8>)
{
  v159 = a1;
  v2 = sub_23D8DC510();
  v153 = *(v2 - 8);
  v154 = v2;
  MEMORY[0x28223BE20](v2);
  v151 = &v129 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED518, &qword_23D8E0C78);
  MEMORY[0x28223BE20](v4 - 8);
  v160 = &v129 - v5;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED520, &qword_23D8E0C80);
  MEMORY[0x28223BE20](v155);
  v157 = &v129 - v6;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED528, &qword_23D8E0C88);
  MEMORY[0x28223BE20](v156);
  v158 = &v129 - v7;
  v8 = type metadata accessor for AXRThemePresetButton(0);
  v147 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v148 = v9;
  v149 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23D8DE150();
  v145 = *(v10 - 8);
  v146 = v10;
  MEMORY[0x28223BE20](v10);
  v144 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23D8DCCB0();
  v141 = *(v12 - 8);
  v142 = v12;
  MEMORY[0x28223BE20](v12);
  v140 = &v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23D8DE5C0();
  v134 = *(v14 - 8);
  v135 = v14;
  MEMORY[0x28223BE20](v14);
  v132 = &v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23D8DD090();
  v17 = MEMORY[0x28223BE20](v16);
  v168 = (&v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v20 = (&v129 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED530, &qword_23D8E0C90);
  MEMORY[0x28223BE20](v21);
  v23 = &v129 - v22;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED538, &qword_23D8E0C98);
  MEMORY[0x28223BE20](v130);
  v25 = &v129 - v24;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED540, &qword_23D8E0CA0);
  MEMORY[0x28223BE20](v133);
  v27 = &v129 - v26;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED548, &qword_23D8E0CA8);
  MEMORY[0x28223BE20](v136);
  v138 = &v129 - v28;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED550, &qword_23D8E0CB0);
  MEMORY[0x28223BE20](v137);
  v139 = &v129 - v29;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED558, &qword_23D8E0CB8);
  MEMORY[0x28223BE20](v143);
  v169 = &v129 - v30;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED560, &unk_23D8E0CC0);
  MEMORY[0x28223BE20](v150);
  v152 = &v129 - v31;
  v167 = v16;
  v32 = *(v16 + 20);
  v33 = *MEMORY[0x277CE0118];
  v34 = sub_23D8DD4E0();
  v35 = *(v34 - 8);
  v36 = *(v35 + 104);
  v166 = v33;
  v163 = v34;
  v164 = v35 + 104;
  v165 = v36;
  (v36)(v20 + v32, v33);
  __asm { FMOV            V0.2D, #26.0 }

  v129 = _Q0;
  *v20 = _Q0;
  if (*v1)
  {
    v161 = v8;
    v42 = *(v8 + 32);
    v170 = v1;
    v43 = v1 + v42;

    sub_23D8DC9D0();

    v44 = sub_23D8DC7E0();

    sub_23D83C4F4(v20, v23, MEMORY[0x277CDFC08]);
    *&v23[*(v21 + 52)] = v44;
    *&v23[*(v21 + 56)] = 256;

    v162 = v43;
    sub_23D8DC9D0();

    sub_23D8DC7E0();

    sub_23D8DE230();
    v45 = sub_23D8DE1E0();

    v131 = v27;
    v46 = v132;
    if (v45)
    {
      sub_23D8DE5A0();
    }

    else
    {
      sub_23D8DE5B0();
    }

    v47 = &v25[*(v130 + 36)];
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED568, &qword_23D8E2140);
    v49 = &v47[*(v48 + 52)];
    v165(&v49[*(v167 + 20)], v166, v163);
    *v49 = v129;
    (*(v134 + 32))(v47, v46, v135);
    *&v47[*(v48 + 56)] = 256;
    sub_23D83C744(v23, v25, &qword_27E2ED530, &qword_23D8E0C90);
    KeyPath = swift_getKeyPath();

    sub_23D8DC9D0();

    sub_23D8DC7E0();

    sub_23D8380E8();
    sub_23D8DEB60();
    sub_23D8DE130();
    v51 = sub_23D8DE1E0();

    v53 = v141;
    v52 = v142;
    v54 = MEMORY[0x277CDF3C0];
    if ((v51 & 1) == 0)
    {
      v54 = MEMORY[0x277CDF3D0];
    }

    v55 = v140;
    (*(v141 + 104))(v140, *v54, v142);
    v56 = v131;
    v57 = &v131[*(v133 + 36)];
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED570, &qword_23D8E0D00);
    (*(v53 + 32))(v57 + *(v58 + 28), v55, v52);
    *v57 = KeyPath;
    sub_23D83C744(v25, v56, &qword_27E2ED538, &qword_23D8E0C98);
    sub_23D8DE5F0();
    sub_23D8DD0D0();
    v59 = v56;
    v60 = v138;
    sub_23D83C744(v59, v138, &qword_27E2ED540, &qword_23D8E0CA0);
    v61 = (v60 + *(v136 + 36));
    v62 = v176;
    v61[4] = v175;
    v61[5] = v62;
    v61[6] = v177;
    v63 = v172;
    *v61 = v171;
    v61[1] = v63;
    v64 = v174;
    v61[2] = v173;
    v61[3] = v64;
    (*(v145 + 104))(v144, *MEMORY[0x277CE0ED0], v146);
    v65 = sub_23D8DE280();
    v66 = v139;
    sub_23D83C744(v60, v139, &qword_27E2ED548, &qword_23D8E0CA8);
    v67 = (v66 + *(v137 + 36));
    *v67 = v65;
    v67[1] = 0x3FF0000000000000;
    v67[2] = 0;
    v67[3] = 0;
    v68 = v149;
    sub_23D83BD14(v170, v149, type metadata accessor for AXRThemePresetButton);
    v69 = (*(v147 + 80) + 16) & ~*(v147 + 80);
    v70 = swift_allocObject();
    sub_23D83C4F4(v68, v70 + v69, type metadata accessor for AXRThemePresetButton);
    v71 = sub_23D8DE5F0();
    v73 = v72;
    v74 = v169;
    sub_23D83C744(v66, v169, &qword_27E2ED550, &qword_23D8E0CB0);
    v75 = (v74 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED578, &qword_23D8E0D08) + 36));
    *v75 = sub_23D832F94;
    v75[1] = 0;
    v75[2] = v71;
    v75[3] = v73;
    v76 = swift_allocObject();
    *(v76 + 16) = sub_23D83CF9C;
    *(v76 + 24) = v70;
    v77 = (v74 + *(v143 + 36));
    *v77 = sub_23D83D04C;
    v77[1] = v76;
    v78 = v168;
    v165(v168 + *(v167 + 20), v166, v163);
    __asm { FMOV            V0.2D, #30.0 }

    *v78 = _Q0;

    v80 = v151;
    sub_23D8DC970();

    sub_23D8367F0(&qword_27E2ED448, MEMORY[0x277CE72A0], MEMORY[0x277CE72B0]);
    v81 = v154;
    sub_23D8DE980();
    sub_23D8DE980();
    if (v181 == v178)
    {
      (*(v153 + 8))(v80, v81);

      v83 = v158;
      v82 = v159;
      v85 = v156;
      v84 = v157;
      v86 = v160;
    }

    else
    {
      v87 = sub_23D8DED20();
      (*(v153 + 8))(v80, v81);

      v83 = v158;
      v82 = v159;
      v85 = v156;
      v84 = v157;
      v86 = v160;
      if ((v87 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    if (*(v170 + *(v161 + 36)) == 1)
    {
      v88 = sub_23D8DE200();
LABEL_13:
      v89 = v88;
      sub_23D8DCD60();
      v90 = v168;
      sub_23D83BD14(v168, v86, MEMORY[0x277CDFC08]);
      v91 = v86 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED580, &qword_23D8E0D10) + 36);
      v92 = v179;
      *v91 = v178;
      *(v91 + 16) = v92;
      *(v91 + 32) = v180;
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED588, &qword_23D8E0D18);
      *(v86 + *(v93 + 52)) = v89;
      *(v86 + *(v93 + 56)) = 256;
      v94 = sub_23D8DE5F0();
      v96 = v95;
      sub_23D83D054(v90, MEMORY[0x277CDFC08]);
      v97 = (v86 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED590, &qword_23D8E0D20) + 36));
      *v97 = v94;
      v97[1] = v96;
      v98 = v170 + *(v161 + 56);
      v99 = *(v98 + 2);
      v181 = *v98;
      *&v182 = v99;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED598, &qword_23D8E0D28);
      sub_23D8DE320();
      sub_23D8DE5F0();
      sub_23D8DD0D0();
      sub_23D83C744(v86, v84, &qword_27E2ED518, &qword_23D8E0C78);
      v100 = (v84 + *(v155 + 36));
      v101 = v186;
      v100[4] = v185;
      v100[5] = v101;
      v100[6] = v187;
      v102 = v182;
      *v100 = v181;
      v100[1] = v102;
      v103 = v184;
      v100[2] = v183;
      v100[3] = v103;
      LOBYTE(v94) = sub_23D8DD9D0();
      sub_23D8DCC20();
      v105 = v104;
      v107 = v106;
      v109 = v108;
      v111 = v110;
      sub_23D83C744(v84, v83, &qword_27E2ED520, &qword_23D8E0C80);
      v112 = v83 + *(v85 + 36);
      *v112 = v94;
      *(v112 + 8) = v105;
      *(v112 + 16) = v107;
      *(v112 + 24) = v109;
      *(v112 + 32) = v111;
      *(v112 + 40) = 0;
      v113 = sub_23D8DE5F0();
      v115 = v114;
      v116 = v152;
      v117 = &v152[*(v150 + 36)];
      sub_23D83C744(v83, v117, &qword_27E2ED528, &qword_23D8E0C88);
      v118 = (v117 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5A0, &qword_23D8E0D30) + 36));
      *v118 = v113;
      v118[1] = v115;
      sub_23D83C744(v169, v116, &qword_27E2ED558, &qword_23D8E0CB8);
      LOBYTE(v113) = sub_23D8DD9D0();
      sub_23D8DCC20();
      v120 = v119;
      v122 = v121;
      v124 = v123;
      v126 = v125;
      sub_23D83C744(v116, v82, &qword_27E2ED560, &unk_23D8E0CC0);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED410, &qword_23D8E0BB8);
      v128 = v82 + *(result + 36);
      *v128 = v113;
      *(v128 + 8) = v120;
      *(v128 + 16) = v122;
      *(v128 + 24) = v124;
      *(v128 + 32) = v126;
      *(v128 + 40) = 0;
      return result;
    }

LABEL_12:
    v88 = sub_23D8DE230();
    goto LABEL_13;
  }

  sub_23D8DC9F0();
  sub_23D8367F0(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
  result = sub_23D8DD120();
  __break(1u);
  return result;
}

uint64_t sub_23D839DC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED428, &qword_23D8E0BD0);
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v63 - v3;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED430, &qword_23D8E0BD8);
  MEMORY[0x28223BE20](v65);
  v71 = &v63 - v4;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED438, &qword_23D8E0BE0);
  v76 = *(v77 - 8);
  v5 = MEMORY[0x28223BE20](v77);
  v70 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v69 = &v63 - v7;
  v8 = sub_23D8DC510();
  v73 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED440, &qword_23D8E0BE8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v78 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v75 = &v63 - v14;
  v15 = sub_23D8DCF90();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v63 - v20;
  sub_23D83A7B4(&v87);
  sub_23D8381C0(v21);
  v22 = *(v16 + 104);
  v80 = *MEMORY[0x277CDF9A8];
  v82 = v16 + 104;
  v64 = v22;
  v22(v19);
  v81 = sub_23D8367F0(&qword_27E2ED3F8, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  v74 = sub_23D8DE800();
  v23 = *(v16 + 8);
  v23(v19, v15);
  v63 = v23;
  v23(v21, v15);
  if (*a1)
  {

    sub_23D8DC970();

    type metadata accessor for AXRThemePresetButton(0);
    sub_23D8367F0(&qword_27E2ED448, MEMORY[0x277CE72A0], MEMORY[0x277CE72B0]);
    sub_23D8DE980();
    v72 = a1;
    sub_23D8DE980();
    if (v85[0] == v83[0])
    {
      (*(v73 + 8))(v10, v8);
    }

    else
    {
      v24 = sub_23D8DED20();
      (*(v73 + 8))(v10, v8);

      if ((v24 & 1) == 0)
      {
        v52 = 1;
        v47 = v77;
        v51 = v75;
        goto LABEL_7;
      }
    }

    v25 = v66;
    sub_23D83AB04(v66);
    LODWORD(v73) = sub_23D8DDA40();
    sub_23D8381C0(v21);
    v26 = v64;
    v64(v19, v80, v15);
    sub_23D8DE800();
    v27 = v63;
    v63(v19, v15);
    v27(v21, v15);
    sub_23D8DCC20();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v36 = v71;
    (*(v67 + 32))(v71, v25, v68);
    v37 = v36 + *(v65 + 36);
    *v37 = v73;
    *(v37 + 8) = v29;
    *(v37 + 16) = v31;
    *(v37 + 24) = v33;
    *(v37 + 32) = v35;
    *(v37 + 40) = 0;
    LOBYTE(v25) = sub_23D8DDA00();
    sub_23D8381C0(v21);
    v26(v19, v80, v15);
    sub_23D8DE800();
    v27(v19, v15);
    v27(v21, v15);
    sub_23D8DCC20();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v46 = v70;
    sub_23D83C744(v36, v70, &qword_27E2ED430, &qword_23D8E0BD8);
    v47 = v77;
    v48 = v46 + *(v77 + 36);
    *v48 = v25;
    *(v48 + 8) = v39;
    *(v48 + 16) = v41;
    *(v48 + 24) = v43;
    *(v48 + 32) = v45;
    *(v48 + 40) = 0;
    v49 = v46;
    v50 = v69;
    sub_23D83C744(v49, v69, &qword_27E2ED438, &qword_23D8E0BE0);
    v51 = v75;
    sub_23D83C744(v50, v75, &qword_27E2ED438, &qword_23D8E0BE0);
    v52 = 0;
LABEL_7:
    (*(v76 + 56))(v51, v52, 1, v47);
    v53 = v74;
    v54 = (v74 & 1) == 0;
    v55 = v78;
    sub_23D83C67C(v51, v78, &qword_27E2ED440, &qword_23D8E0BE8);
    v56 = *v90;
    v83[2] = v89;
    v84[0] = *v90;
    v57 = *&v90[9];
    *(v84 + 9) = *&v90[9];
    v59 = v87;
    v58 = v88;
    v83[1] = v88;
    v83[0] = v87;
    v60 = v79;
    *(v79 + 32) = v89;
    *(v60 + 48) = v56;
    *(v60 + 57) = v57;
    *v60 = v59;
    *(v60 + 16) = v58;
    *(v60 + 80) = 0;
    *(v60 + 88) = v54;
    *(v60 + 89) = v53 & 1;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED450, &qword_23D8E0BF0);
    sub_23D83C67C(v55, v60 + *(v61 + 64), &qword_27E2ED440, &qword_23D8E0BE8);
    sub_23D83C67C(v83, v85, &qword_27E2ED458, &qword_23D8E0BF8);
    sub_23D83C6E4(v51, &qword_27E2ED440, &qword_23D8E0BE8);
    sub_23D83C6E4(v55, &qword_27E2ED440, &qword_23D8E0BE8);
    v85[2] = v89;
    *v86 = *v90;
    *&v86[9] = *&v90[9];
    v85[1] = v88;
    v85[0] = v87;
    return sub_23D83C6E4(v85, &qword_27E2ED458, &qword_23D8E0BF8);
  }

  sub_23D8DC9F0();
  sub_23D8367F0(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
  result = sub_23D8DD120();
  __break(1u);
  return result;
}

void sub_23D83A7B4(uint64_t a1@<X8>)
{
  v42 = sub_23D8DCA70();
  v3 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_23D838590();
  v44 = v6;
  sub_23D83CB18();
  v7 = sub_23D8DDCB0();
  v41 = v10;
  if (*v1)
  {
    v11 = v7;
    v12 = v8;
    v13 = v9;
    v14 = *(type metadata accessor for AXRThemePresetButton(0) + 32);

    v39 = v14;
    sub_23D8DC9D0();

    sub_23D8DC840();

    sub_23D8DCA10();
    (*(v3 + 8))(v5, v42);
    v42 = sub_23D8DDC40();
    v37 = v16;
    v38 = v15;
    v40 = v1;
    v18 = v17;

    sub_23D83CB6C(v11, v12, v13 & 1);

    sub_23D8DC9D0();

    sub_23D8DC800();

    LOBYTE(v12) = v18;
    v19 = v42;
    v20 = v38;
    v41 = sub_23D8DDC00();
    v22 = v21;
    v24 = v23;

    sub_23D83CB6C(v19, v20, v12 & 1);

    sub_23D8DC9D0();

    sub_23D8DC860();

    v25 = v41;
    v26 = sub_23D8DDC30();
    v28 = v27;
    LOBYTE(v14) = v29;
    v31 = v30;
    sub_23D83CB6C(v25, v22, v24 & 1);

    v32 = sub_23D8DDA10();
    sub_23D8DCC20();
    LOBYTE(v43) = v14 & 1;
    v45 = 0;
    *a1 = v26;
    *(a1 + 8) = v28;
    *(a1 + 16) = v14 & 1;
    *(a1 + 24) = v31;
    *(a1 + 32) = v32;
    *(a1 + 40) = v33;
    *(a1 + 48) = v34;
    *(a1 + 56) = v35;
    *(a1 + 64) = v36;
    *(a1 + 72) = 0;
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D8367F0(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    sub_23D8DD120();
    __break(1u);
  }
}

uint64_t sub_23D83AB04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v3 = sub_23D8DD080();
  v4 = *(v3 - 8);
  v22 = v3;
  v23 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED460, &qword_23D8E0C00);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - v9;
  v11 = sub_23D8DDBB0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v14, *MEMORY[0x277CE0A68], v11);
  v15 = sub_23D8DDBA0();
  v16 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];

  [v16 scaledValueForValue_];
  v18 = v17;

  v27 = 0;
  v25 = v18;
  v26 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED468, &qword_23D8E0C08);
  sub_23D83C7B8();
  sub_23D83CAC4();
  sub_23D8DCEC0();
  sub_23D8DD070();
  sub_23D835AD0(&qword_27E2ED4E8, &qword_27E2ED460, &qword_23D8E0C00, MEMORY[0x277CDD938]);
  sub_23D8367F0(&qword_27E2ED4F0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v19 = v22;
  sub_23D8DDD10();
  (*(v23 + 8))(v6, v19);
  (*(v8 + 8))(v10, v7);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_23D83AE80(uint64_t a1, double a2, double a3)
{
  type metadata accessor for AXRThemePresetButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED598, &qword_23D8E0D28);
  return sub_23D8DE330();
}

uint64_t sub_23D83AF00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED4F8, &qword_23D8E0C40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v60 - v5;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED480, &qword_23D8E0C10);
  MEMORY[0x28223BE20](v66);
  v8 = &v60 - v7;
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  v9 = 0x746964652E727861;
  if (qword_27E2F3C80)
  {
    v10 = qword_27E2F3C80;
    v11 = sub_23D8DE830();
    v12 = sub_23D8DE830();
    v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

    v9 = sub_23D8DE870();
    v15 = v14;
  }

  else
  {
    v15 = 0xE800000000000000;
  }

  v68 = v9;
  v69 = v15;
  sub_23D83CB18();
  v16 = sub_23D8DDCB0();
  v18 = v17;
  v20 = v19;
  v21 = sub_23D8DDAB0();
  (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
  sub_23D8DDB30();
  sub_23D83C6E4(v6, &qword_27E2ED4F8, &qword_23D8E0C40);
  v22 = sub_23D8DDC40();
  v24 = v23;
  v26 = v25;
  v63 = v27;

  sub_23D83CB6C(v16, v18, v20 & 1);

  if (*a1)
  {
    sub_23D8380E8();
    type metadata accessor for AXRThemePresetButton(0);

    sub_23D8DC9D0();

    sub_23D8DC7E0();

    v28 = sub_23D8DEB80();
    v29 = sub_23D8DEB70();

    v64 = v24;
    v65 = v22;
    if (v29)
    {
      v30 = sub_23D8DE220();
    }

    else
    {
      v30 = sub_23D8DE240();
    }

    v62 = v30;
    KeyPath = swift_getKeyPath();
    v31 = sub_23D8DDA40();
    sub_23D8DCC20();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v40 = v26 & 1;
    v71 = v26 & 1;
    v70 = 0;
    v41 = sub_23D8DD9D0();
    sub_23D8DCC20();
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    LOBYTE(v68) = 0;
    v50 = sub_23D8DE270();
    v51 = &v8[*(v66 + 36)];
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED4D0, &qword_23D8E0C38);
    v53 = *(v52 + 52);
    v54 = *MEMORY[0x277CE0118];
    v55 = sub_23D8DD4E0();
    (*(*(v55 - 8) + 104))(v51 + v53, v54, v55);
    *v51 = v50;
    *(v51 + *(v52 + 56)) = 256;
    v56 = v64;
    *v8 = v65;
    *(v8 + 1) = v56;
    v8[16] = v40;
    v58 = KeyPath;
    v57 = v62;
    *(v8 + 3) = v63;
    *(v8 + 4) = v58;
    *(v8 + 5) = v57;
    v8[48] = v31;
    *(v8 + 7) = v33;
    *(v8 + 8) = v35;
    *(v8 + 9) = v37;
    *(v8 + 10) = v39;
    v8[88] = 0;
    v8[96] = v41;
    *(v8 + 13) = v43;
    *(v8 + 14) = v45;
    *(v8 + 15) = v47;
    *(v8 + 16) = v49;
    v8[136] = 0;
    sub_23D83C874();
    sub_23D8DDEE0();
    return sub_23D83C6E4(v8, &qword_27E2ED480, &qword_23D8E0C10);
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D8367F0(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D83B41C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v18[0] = sub_23D8DD770();
  v4 = *(v18[0] - 8);
  v5 = MEMORY[0x28223BE20](v18[0]);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED3C8, &qword_23D8E0B90);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v18 - v12;
  sub_23D83BD14(v2, v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AXRThemePresetButton);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  sub_23D83C4F4(v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for AXRThemePresetButton);
  v19 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED3D0, &qword_23D8E0B98);
  sub_23D83C5C4();
  sub_23D8DE360();
  sub_23D8DD760();
  sub_23D835AD0(&qword_27E2ED3F0, &qword_27E2ED3C8, &qword_23D8E0B90, MEMORY[0x277CDF028]);
  sub_23D8367F0(&qword_27E2ED300, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  v16 = v18[0];
  sub_23D8DDD10();
  (*(v4 + 8))(v7, v16);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_23D83B788()
{
  v1 = type metadata accessor for AXRPresetSelectView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23D8DCF90();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v5 + v1[8];
  v8 = sub_23D8DC140();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v7, 1, v8))
  {
    (*(v9 + 8))(v7, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED210, &qword_23D8E08B8);

  if (*(v5 + v1[10]) >= 2uLL)
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23D83B9A0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AXRPresetSelectView(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_23D837904(a1, v6, v7, a2);
}

unint64_t sub_23D83BA24()
{
  result = qword_27E2ED320;
  if (!qword_27E2ED320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED310, &qword_23D8E0A78);
    sub_23D83BAB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED320);
  }

  return result;
}

unint64_t sub_23D83BAB0()
{
  result = qword_27E2ED328;
  if (!qword_27E2ED328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED328);
  }

  return result;
}

unint64_t sub_23D83BB04()
{
  result = qword_27E2ED330;
  if (!qword_27E2ED330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED318, &qword_23D8E0A80);
    sub_23D83BB88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED330);
  }

  return result;
}

unint64_t sub_23D83BB88()
{
  result = qword_27E2ED338;
  if (!qword_27E2ED338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED340, &qword_23D8E0A88);
    sub_23D8367F0(&qword_27E2ED348, type metadata accessor for AXRThemePresetButton, &unk_23D8E0B40);
    sub_23D835AD0(&qword_27E2ED350, &qword_27E2ED358, &qword_23D8E0A90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED338);
  }

  return result;
}

uint64_t sub_23D83BC90(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23D83BCC8(uint64_t result, uint64_t a2)
{
  if (result != 1)
  {
    return sub_23D83BCD8(result, a2);
  }

  return result;
}

uint64_t sub_23D83BCD8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23D83BD14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23D83BD90(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED210, &qword_23D8E08B8);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_23D8DC510();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED380, &unk_23D8E0B10);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[11];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED110, &unk_23D8E03D0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[12];

  return v16(v17, a2, v15);
}

uint64_t sub_23D83BF7C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED210, &qword_23D8E08B8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_23D8DC510();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED380, &unk_23D8E0B10);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[11];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED110, &unk_23D8E03D0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[12];

  return v16(v17, a2, a2, v15);
}

void sub_23D83C154(uint64_t a1)
{
  sub_23D8366C8(319);
  if (v1 <= 0x3F)
  {
    sub_23D83675C(319);
    if (v2 <= 0x3F)
    {
      sub_23D836838(319);
      if (v3 <= 0x3F)
      {
        sub_23D83691C(319, &qword_27E2ED258, &qword_27E2ED260, &qword_23D8E08F8, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_23D8DC510();
          if (v5 <= 0x3F)
          {
            sub_23D83691C(319, &qword_27E2ED268, &qword_27E2ED270, &qword_23D8E0900, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_23D83C388(319, &qword_27E2ED398, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
              if (v7 <= 0x3F)
              {
                sub_23D83C388(319, &qword_27E2ED228, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
                if (v8 <= 0x3F)
                {
                  sub_23D8368CC();
                  if (v9 <= 0x3F)
                  {
                    sub_23D83C388(319, &qword_27E2ED3A0, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
                    if (v10 <= 0x3F)
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

void sub_23D83C388(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_23D83C3F0()
{
  result = qword_27E2ED3A8;
  if (!qword_27E2ED3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED2B0, &qword_23D8E09F0);
    sub_23D835AD0(&qword_27E2ED3B0, &qword_27E2ED288, &qword_23D8E09D8, MEMORY[0x277CDD6E0]);
    sub_23D835AD0(&qword_27E2ED3B8, &qword_27E2ED3C0, &qword_23D8E0B38, MEMORY[0x277CE0800]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED3A8);
  }

  return result;
}

uint64_t sub_23D83C4F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_23D83C55C()
{
  v1 = *(type metadata accessor for AXRThemePresetButton(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  sub_23D8386B8(v2);
}

unint64_t sub_23D83C5C4()
{
  result = qword_27E2ED3D8;
  if (!qword_27E2ED3D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED3D0, &qword_23D8E0B98);
    sub_23D835AD0(&qword_27E2ED3E0, &qword_27E2ED3E8, &qword_23D8E0BA0, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED3D8);
  }

  return result;
}

uint64_t sub_23D83C67C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23D83C6E4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23D83C744(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_23D83C7B8()
{
  result = qword_27E2ED470;
  if (!qword_27E2ED470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED468, &qword_23D8E0C08);
    sub_23D83C874();
    sub_23D8367F0(&qword_27E2ED4D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED470);
  }

  return result;
}

unint64_t sub_23D83C874()
{
  result = qword_27E2ED478;
  if (!qword_27E2ED478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED480, &qword_23D8E0C10);
    sub_23D83C958(&qword_27E2ED488, &qword_27E2ED490, &qword_23D8E0C18, sub_23D83C9DC);
    sub_23D835AD0(&qword_27E2ED4C8, &qword_27E2ED4D0, &qword_23D8E0C38, MEMORY[0x277CE08B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED478);
  }

  return result;
}

uint64_t sub_23D83C958(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_23D83CA0C()
{
  result = qword_27E2ED4A8;
  if (!qword_27E2ED4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED4B0, &qword_23D8E0C28);
    sub_23D835AD0(&qword_27E2ED4B8, &qword_27E2ED4C0, &qword_23D8E0C30, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED4A8);
  }

  return result;
}

unint64_t sub_23D83CAC4()
{
  result = qword_27E2ED4E0;
  if (!qword_27E2ED4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED4E0);
  }

  return result;
}

unint64_t sub_23D83CB18()
{
  result = qword_27E2ED500;
  if (!qword_27E2ED500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED500);
  }

  return result;
}

void sub_23D83CB6C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_23D83CB7C@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x23EEEF2B0]();
  *a1 = result;
  return result;
}

uint64_t sub_23D83CBA8@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x23EEEF2B0]();
  *a1 = result;
  return result;
}

unint64_t sub_23D83CC2C()
{
  result = qword_27E2ED508;
  if (!qword_27E2ED508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED508);
  }

  return result;
}

unint64_t sub_23D83CC80()
{
  result = qword_27E2ED510;
  if (!qword_27E2ED510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED510);
  }

  return result;
}

uint64_t objectdestroy_29Tm()
{
  v1 = type metadata accessor for AXRThemePresetButton(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[7];
  v7 = sub_23D8DC140();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v6, 1, v7))
  {
    (*(v8 + 8))(v6, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED210, &qword_23D8E08B8);

  v9 = v1[8];
  v10 = sub_23D8DC510();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  if (*(v5 + v1[10]) >= 2uLL)
  {
  }

  v11 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED370, &qword_23D8E0AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_23D8DCDE0();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
  }

  v13 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_23D8DCF90();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23D83CF9C(double a1, double a2)
{
  v5 = *(type metadata accessor for AXRThemePresetButton(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23D83AE80(v6, a1, a2);
}

uint64_t sub_23D83D014()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23D83D054(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23D83D0B4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED3C8, &qword_23D8E0B90);
  sub_23D8DD770();
  sub_23D835AD0(&qword_27E2ED3F0, &qword_27E2ED3C8, &qword_23D8E0B90, MEMORY[0x277CDF028]);
  sub_23D8367F0(&qword_27E2ED300, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23D83D1A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x786554656D656874;
    }

    else
    {
      v4 = 0x656D656874;
    }

    if (v2)
    {
      v3 = 0xEE00726F6C6F4374;
    }

    else
    {
      v3 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x800000023D8E5E20;
    v4 = 0xD000000000000014;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x800000023D8E5E40;
    }

    else
    {
      v3 = 0x800000023D8E5E60;
    }

    v4 = 0xD000000000000013;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x786554656D656874;
    }

    else
    {
      v8 = 0x656D656874;
    }

    if (a2)
    {
      v7 = 0xEE00726F6C6F4374;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    if (v4 != v8)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0x800000023D8E5E60;
    if (a2 == 3)
    {
      v5 = 0x800000023D8E5E40;
    }

    if (a2 == 2)
    {
      v6 = 0xD000000000000014;
    }

    else
    {
      v6 = 0xD000000000000013;
    }

    if (a2 == 2)
    {
      v7 = 0x800000023D8E5E20;
    }

    else
    {
      v7 = v5;
    }

    if (v4 != v6)
    {
      goto LABEL_34;
    }
  }

  if (v3 != v7)
  {
LABEL_34:
    v9 = sub_23D8DED20();
    goto LABEL_35;
  }

  v9 = 1;
LABEL_35:

  return v9 & 1;
}

uint64_t sub_23D83D34C(uint64_t a1)
{
  v2 = sub_23D8DCCB0();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_23D8DD190();
}

id sub_23D83D414()
{
  result = [objc_allocWithZone(type metadata accessor for ScrollTimerHandler()) init];
  qword_27E2F3C58 = result;
  return result;
}

uint64_t sub_23D83D444()
{
  result = sub_23D8DE830();
  qword_27E2F3C60 = result;
  return result;
}

id sub_23D83D55C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ScrollTimerHandler();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_23D83D5A0()
{
  sub_23D8DED50();
  sub_23D8DE8C0();

  return sub_23D8DED80();
}

uint64_t sub_23D83D698(uint64_t a1)
{
  sub_23D8DE8C0();
}

uint64_t sub_23D83D77C(uint64_t a1)
{
  sub_23D8DED50();
  sub_23D8DE8C0();

  return sub_23D8DED80();
}

unint64_t sub_23D83D870@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23D8526B8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_23D83D8A0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x656D656874;
  v5 = 0x800000023D8E5E20;
  v6 = 0x800000023D8E5E40;
  if (v2 != 3)
  {
    v6 = 0x800000023D8E5E60;
  }

  if (v2 == 2)
  {
    v7 = 0xD000000000000014;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (v2 != 2)
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 0x786554656D656874;
    v3 = 0xEE00726F6C6F4374;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_23D83D964()
{
  sub_23D8DC900();
  swift_allocObject();
  return sub_23D8DC8F0();
}

uint64_t sub_23D83D99C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D8DD3C0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B0, &qword_23D8E0DB0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for AXRFullScreenView(0);
  sub_23D83C67C(v1 + *(v10 + 28), v9, &qword_27E2ED5B0, &qword_23D8E0DB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_23D83C744(v9, a1, &qword_27E2EE9E0, &qword_23D8E26D0);
  }

  sub_23D8DEAB0();
  v12 = sub_23D8DD990();
  sub_23D8DCAD0();

  sub_23D8DD3B0();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_23D83DB84()
{
  type metadata accessor for AXRScrollCoordinator();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED7A0, &unk_23D8E2AB0);
  swift_allocObject();
  *(v0 + 16) = sub_23D8DCB40();
  return v0;
}

double sub_23D83DBE8()
{
  v0 = sub_23D8DD850();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDDB8, &qword_23D8E26E0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE9E0, &qword_23D8E26D0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v23 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  sub_23D83D99C(&v23 - v14);
  (*(v1 + 104))(v13, *MEMORY[0x277CE0558], v0);
  (*(v1 + 56))(v13, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_23D83C67C(v15, v6, &qword_27E2EE9E0, &qword_23D8E26D0);
  sub_23D83C67C(v13, &v6[v16], &qword_27E2EE9E0, &qword_23D8E26D0);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) == 1)
  {
    sub_23D83C6E4(v13, &qword_27E2EE9E0, &qword_23D8E26D0);
    sub_23D83C6E4(v15, &qword_27E2EE9E0, &qword_23D8E26D0);
    if (v17(&v6[v16], 1, v0) == 1)
    {
      sub_23D83C6E4(v6, &qword_27E2EE9E0, &qword_23D8E26D0);
      return 350.0;
    }

    goto LABEL_6;
  }

  sub_23D83C67C(v6, v10, &qword_27E2EE9E0, &qword_23D8E26D0);
  if (v17(&v6[v16], 1, v0) == 1)
  {
    sub_23D83C6E4(v13, &qword_27E2EE9E0, &qword_23D8E26D0);
    sub_23D83C6E4(v15, &qword_27E2EE9E0, &qword_23D8E26D0);
    (*(v1 + 8))(v10, v0);
LABEL_6:
    sub_23D83C6E4(v6, &qword_27E2EDDB8, &qword_23D8E26E0);
    return 450.0;
  }

  v19 = &v6[v16];
  v20 = v24;
  (*(v1 + 32))(v24, v19, v0);
  sub_23D856D84(&qword_27E2EEA10, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v21 = sub_23D8DE820();
  v22 = *(v1 + 8);
  v22(v20, v0);
  sub_23D83C6E4(v13, &qword_27E2EE9E0, &qword_23D8E26D0);
  sub_23D83C6E4(v15, &qword_27E2EE9E0, &qword_23D8E26D0);
  v22(v10, v0);
  sub_23D83C6E4(v6, &qword_27E2EE9E0, &qword_23D8E26D0);
  result = 450.0;
  if (v21)
  {
    return 350.0;
  }

  return result;
}

uint64_t AXRFullScreenView.currentModel.getter()
{
  if (*(v0 + 16))
  {

    v1 = sub_23D8DC960();

    return v1;
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D83E0FC()
{
  v1 = sub_23D8DC510();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 16))
  {

    sub_23D8DC960();

    v5 = sub_23D8DC870();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      return v5;
    }

    else
    {

      sub_23D8DC960();
      sub_23D8DC830();

      v10 = sub_23D8DC990();

      (*(v2 + 8))(v4, v1);
      return v10;
    }
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D83E2C8@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v30 = sub_23D8DCCB0();
  v27 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED668, &unk_23D8E0EE8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED660, &qword_23D8E0EE0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED7A8, &qword_23D8E11B0);
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v12 = &v26 - v11;
  v32 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED7B0, &qword_23D8E11B8);
  sub_23D852790();
  sub_23D8DD040();
  v13 = sub_23D835AD0(&qword_27E2ED670, &qword_27E2ED668, &unk_23D8E0EE8, MEMORY[0x277CDDA18]);
  sub_23D8DE100();
  (*(v4 + 8))(v6, v3);
  v33 = v3;
  v34 = v13;
  swift_getOpaqueTypeConformance2();
  sub_23D8DDE50();
  (*(v8 + 8))(v10, v7);
  if (*(v1 + 16))
  {
    sub_23D856774(0, &qword_27E2ED2A8, 0x277D75348);

    sub_23D8DC960();

    sub_23D8DC7E0();

    v14 = sub_23D8DEB80();
    v15 = sub_23D8DEB70();

    v16 = v27;
    v17 = MEMORY[0x277CDF3D0];
    if ((v15 & 1) == 0)
    {
      v17 = MEMORY[0x277CDF3C0];
    }

    v19 = v29;
    v18 = v30;
    (*(v27 + 104))(v29, *v17, v30);
    KeyPath = swift_getKeyPath();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED658, &qword_23D8E0ED8);
    v22 = v31;
    v23 = (v31 + *(v21 + 36));
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED570, &qword_23D8E0D00);
    (*(v16 + 32))(v23 + *(v24 + 28), v19, v18);
    *v23 = KeyPath;
    return (*(v26 + 32))(v22, v12, v28);
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

void AXRFullScreenView.init(dismiss:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a1;
  v67 = a2;
  v4 = sub_23D8DD4D0();
  v64 = *(v4 - 8);
  v65 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v63 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v62 = &v55 - v7;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5A8, &unk_23D8E0D70);
  v8 = MEMORY[0x28223BE20](v61);
  v60 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v59 = &v55 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED260, &qword_23D8E08F8);
  v11 = MEMORY[0x28223BE20](v57);
  v56 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v55 - v13;
  v15 = sub_23D8DCEE0();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v55 - v20;
  sub_23D8DC430();
  sub_23D856D84(&unk_27E2F0420, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);
  *a3 = sub_23D8DD140();
  *(a3 + 8) = v22;
  sub_23D8DC9F0();
  sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
  *(a3 + 16) = sub_23D8DD140();
  *(a3 + 24) = v23;
  *(a3 + 32) = sub_23D83D964;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  v24 = type metadata accessor for AXRFullScreenView(0);
  v25 = v24[7];
  *(a3 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B0, &qword_23D8E0DB0);
  swift_storeEnumTagMultiPayload();
  v26 = v24[9];
  v58 = (a3 + v24[8]);
  v27 = a3 + v26;
  LOBYTE(v68) = 1;
  sub_23D8DE310();
  v28 = *(&v69 + 1);
  *v27 = v69;
  *(v27 + 8) = v28;
  v29 = a3 + v24[10];
  LOBYTE(v68) = 1;
  sub_23D8DE310();
  v30 = *(&v69 + 1);
  *v29 = v69;
  *(v29 + 8) = v30;
  v31 = a3 + v24[11];
  LOBYTE(v68) = 1;
  sub_23D8DE310();
  v32 = *(&v69 + 1);
  *v31 = v69;
  *(v31 + 8) = v32;
  v33 = v24[12];
  v34 = sub_23D8DCE10();
  (*(*(v34 - 8) + 56))(a3 + v33, 1, 1, v34);
  v35 = a3 + v24[13];
  LOBYTE(v68) = 0;
  sub_23D8DE310();
  v36 = *(&v69 + 1);
  *v35 = v69;
  *(v35 + 8) = v36;
  v37 = v24[14];
  *(a3 + v37) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  swift_storeEnumTagMultiPayload();
  *(a3 + v24[15]) = 0x4040000000000000;
  sub_23D8DCED0();
  (*(v16 + 16))(v19, v21, v15);
  sub_23D8DE310();
  (*(v16 + 8))(v21, v15);
  v38 = sub_23D8DC140();
  (*(*(v38 - 8) + 56))(v14, 1, 1, v38);
  sub_23D83C67C(v14, v56, &qword_27E2ED260, &qword_23D8E08F8);
  sub_23D8DE310();
  sub_23D83C6E4(v14, &qword_27E2ED260, &qword_23D8E08F8);
  v39 = (a3 + v24[18]);
  v68 = 0;
  sub_23D8DE310();
  v40 = a3 + v24[19];
  LOBYTE(v68) = 0;
  sub_23D8DE310();
  v41 = *(&v69 + 1);
  *v40 = v69;
  *(v40 + 8) = v41;
  v42 = sub_23D8DD060();
  v43 = v59;
  (*(*(v42 - 8) + 56))(v59, 1, 1, v42);
  sub_23D83C67C(v43, v60, &qword_27E2ED5A8, &unk_23D8E0D70);
  sub_23D8DE310();
  sub_23D83C6E4(v43, &qword_27E2ED5A8, &unk_23D8E0D70);
  v44 = a3 + v24[21];
  LOBYTE(v68) = 0;
  sub_23D8DE310();
  v45 = *(&v69 + 1);
  *v44 = v69;
  *(v44 + 8) = v45;
  v46 = v24[22];
  v68 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5C0, &qword_23D8E0DF0);
  sub_23D8DE310();
  *(a3 + v46) = v69;
  v47 = v62;
  sub_23D8DD4C0();
  v48 = v64;
  v49 = v65;
  (*(v64 + 16))(v63, v47, v65);
  sub_23D8DE310();
  (*(v48 + 8))(v47, v49);
  v50 = a3 + v24[24];
  LOBYTE(v68) = 1;
  sub_23D8DE310();
  v51 = *(&v69 + 1);
  *v50 = v69;
  *(v50 + 8) = v51;
  v52 = a3 + v24[25];

  *v52 = sub_23D83DB84;
  *(v52 + 8) = 0;
  *(v52 + 16) = 0;
  v53 = v67;
  v54 = v58;
  *v58 = v66;
  v54[1] = v53;
  *v39 = 0;
  v39[1] = 0;
}

uint64_t type metadata accessor for AXRFullScreenView(uint64_t a1)
{
  result = qword_27E2ED5F0;
  if (!qword_27E2ED5F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23D83EFA0@<X0>(uint64_t a1@<X8>)
{
  v112 = a1;
  v104 = sub_23D8DD6D0();
  MEMORY[0x28223BE20](v104);
  v103 = &v86 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23D8DCD10();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0B8, &qword_23D8E01E8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v86 - v9;
  v105 = sub_23D8DC250();
  v98 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v97 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AXRFullScreenView(0);
  v116 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  KeyPath = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v92 = &v86 - v16;
  v119 = v17;
  MEMORY[0x28223BE20](v15);
  v120 = &v86 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED848, &qword_23D8E1228);
  v94 = *(v19 - 8);
  v95 = v19;
  MEMORY[0x28223BE20](v19);
  v93 = &v86 - v20;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED840, &qword_23D8E1220);
  v96 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v117 = &v86 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED838, &unk_23D8E1210);
  v23 = MEMORY[0x28223BE20](v22);
  v26 = &v86 - v25;
  if (*(v1 + 16))
  {
    v100 = v26;
    v101 = v24;
    v102 = v23;
    v106 = v6;
    v107 = v4;
    v108 = v3;
    v109 = v10;
    v110 = v8;
    v111 = v7;
    v27 = v1;
    v28 = *v1;
    if (*v1)
    {
      sub_23D8DC930();
      swift_allocObject();

      v29 = v28;
      v91 = v28;
      v30 = v29;
      sub_23D8DC920();
      v31 = v30;
      v89 = v31;
      sub_23D8DC3B0();

      v90 = sub_23D8DC910();

      v32 = [objc_opt_self() preferredFontForTextStyle_];
      [v32 pointSize];
      v34 = v33;

      sub_23D8DC960();

      sub_23D8DC7F0();
      v36 = v35;

      sub_23D8DC960();

      v88 = sub_23D8DC6F0();

      type metadata accessor for AXRScrollCoordinator();
      sub_23D856D84(&qword_27E2ED648, type metadata accessor for AXRScrollCoordinator, &unk_23D8E2A38);
      v87 = *(sub_23D8DCD40() + 16);

      v37 = v120;
      sub_23D853140(v27, v120);
      v38 = (*(v116 + 80) + 16) & ~*(v116 + 80);
      v39 = *(v116 + 80);
      v40 = swift_allocObject();
      sub_23D855DF8(v37, v40 + v38, type metadata accessor for AXRFullScreenView);
      v118 = v27;
      v41 = v92;
      sub_23D853140(v27, v92);
      v42 = swift_allocObject();
      v116 = type metadata accessor for AXRFullScreenView;
      sub_23D855DF8(v41, v42 + v38, type metadata accessor for AXRFullScreenView);
      v43 = KeyPath;
      sub_23D853140(v27, KeyPath);
      v114 = v39;
      v44 = swift_allocObject();
      sub_23D855DF8(v43, v44 + v38, type metadata accessor for AXRFullScreenView);
      KeyPath = swift_getKeyPath();
      v132 = 0;
      *&v133[0] = 0;
      *(&v133[0] + 1) = 0xE000000000000000;
      v92 = v89;
      sub_23D8DEC50();

      *&v133[0] = 0xD000000000000013;
      *(&v133[0] + 1) = 0x800000023D8E60A0;

      sub_23D8DC960();

      sub_23D8DC7F0();

      v45 = sub_23D8DEA10();
      MEMORY[0x23EEF0A60](v45);

      v46 = v133[0];
      LOBYTE(v43) = v132;
      v47 = sub_23D8DD050();
      v48 = sub_23D8DD9E0();
      *&v124 = v90;
      *(&v124 + 1) = v34 * v36;
      *&v125 = v88;
      *(&v125 + 1) = v87;
      *&v126 = sub_23D855E60;
      *(&v126 + 1) = v40;
      *&v127 = sub_23D855EBC;
      *(&v127 + 1) = v42;
      *&v128 = sub_23D855F20;
      *(&v128 + 1) = v44;
      *&v129 = v91;
      *(&v129 + 1) = KeyPath;
      v130[0] = v43;
      *&v130[8] = v46;
      *&v130[24] = v47;
      v131 = v48;
      v49 = v92;
      sub_23D8DC2C0();

      v50 = sub_23D8DC1C0();
      v52 = v51;
      v54 = v53;

      v121 = v50;
      v122 = v52;
      v123 = v54 & 1;
      v55 = v118;
      v56 = v120;
      sub_23D853140(v118, v120);
      v113 = v38;
      v57 = swift_allocObject();
      sub_23D855DF8(v56, v57 + v38, v116);
      KeyPath = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED850, &qword_23D8E1230);
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED858, &qword_23D8E1238);
      v58 = sub_23D852F1C();
      v59 = sub_23D852FD4();
      v60 = v93;
      sub_23D8DE060();

      v133[6] = *v130;
      v133[7] = *&v130[16];
      v134 = v131;
      v133[2] = v126;
      v133[3] = v127;
      v133[4] = v128;
      v133[5] = v129;
      v133[0] = v124;
      v133[1] = v125;
      sub_23D83C6E4(v133, &qword_27E2ED850, &qword_23D8E1230);
      v61 = v49;
      LOBYTE(v56) = sub_23D8DC380();

      LOBYTE(v121) = v56 & 1;
      v62 = v120;
      sub_23D853140(v55, v120);
      v63 = v113;
      v64 = swift_allocObject() + v63;
      v65 = v116;
      sub_23D855DF8(v62, v64, v116);
      *&v124 = KeyPath;
      *(&v124 + 1) = v92;
      *&v125 = v58;
      *(&v125 + 1) = v59;
      KeyPath = MEMORY[0x277CE0E30];
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v67 = v95;
      sub_23D8DE060();

      (*(v94 + 8))(v60, v67);
      v68 = v61;
      v69 = v97;
      sub_23D8DC2A0();

      v70 = v120;
      sub_23D853140(v118, v120);
      v71 = v113;
      v72 = swift_allocObject();
      v73 = v71;
      sub_23D855DF8(v70, v72 + v71, v65);
      *&v124 = v67;
      *(&v124 + 1) = MEMORY[0x277D839B0];
      *&v125 = OpaqueTypeConformance2;
      *(&v125 + 1) = MEMORY[0x277D839C8];
      v95 = swift_getOpaqueTypeConformance2();
      v94 = sub_23D856D84(&qword_27E2ED890, MEMORY[0x277CE7208], MEMORY[0x277CE7210]);
      v74 = v99;
      v75 = v100;
      v76 = v105;
      v77 = v117;
      sub_23D8DE060();

      (*(v98 + 8))(v69, v76);
      (*(v96 + 8))(v77, v74);
      sub_23D8DD860();
      v78 = v106;
      sub_23D8DCCD0();
      v79 = v120;
      sub_23D853140(v118, v120);
      v80 = swift_allocObject();
      sub_23D855DF8(v79, v80 + v73, v65);
      sub_23D856D84(&qword_27E2ED0C0, MEMORY[0x277CDD730], MEMORY[0x277CDD728]);
      sub_23D856D84(&qword_27E2ED0C8, MEMORY[0x277CDD708], MEMORY[0x277CDD710]);
      v82 = v108;
      v81 = v109;
      sub_23D8DE500();

      (*(v107 + 8))(v78, v82);
      sub_23D8DCD30();
      *&v124 = v74;
      *(&v124 + 1) = v76;
      *&v125 = v95;
      *(&v125 + 1) = v94;
      swift_getOpaqueTypeConformance2();
      sub_23D835AD0(&qword_27E2ED0D0, &qword_27E2ED0B8, &qword_23D8E01E8, MEMORY[0x277CDFB18]);
      v83 = v111;
      v84 = v102;
      sub_23D8DDEA0();
      (*(v110 + 8))(v81, v83);
      return (*(v101 + 8))(v75, v84);
    }
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    sub_23D8DD120();
    __break(1u);
  }

  sub_23D8DC430();
  sub_23D856D84(&unk_27E2F0420, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);

  result = sub_23D8DD120();
  __break(1u);
  return result;
}

uint64_t sub_23D83FE1C()
{
  type metadata accessor for AXRFullScreenView(0);
  LOBYTE(v3) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE330();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDBE0, &qword_23D8E1538);
  sub_23D8DE320();
  [v3 invalidate];

  v0 = objc_opt_self();
  if (qword_27E2ECEA0 != -1)
  {
    v2 = v0;
    swift_once();
    v0 = v2;
  }

  [v0 scheduledTimerWithTimeInterval:qword_27E2F3C58 target:sel_resetScrollingState selector:0 userInfo:0 repeats:3.0];
  return sub_23D8DE330();
}

uint64_t sub_23D83FF78(uint64_t a1)
{
  v2 = v1;
  v30 = a1;
  v3 = sub_23D8DE750();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v31 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23D8DE780();
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AXRFullScreenView(0);
  v27 = *(v8 - 8);
  v9 = *(v27 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_23D8DE7A0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  if (*v1)
  {
    v17 = *v1;
    sub_23D8DC3D0();

    sub_23D856774(0, &unk_27E2EEA40, 0x277D85C78);
    v18 = sub_23D8DEAF0();
    sub_23D8DE790();
    sub_23D8DE7B0();
    v19 = *(v11 + 8);
    v28 = v10;
    v29 = v19;
    v19(v14, v10);
    sub_23D853140(v2, &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v20 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v21 = swift_allocObject();
    sub_23D855DF8(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for AXRFullScreenView);
    *(v21 + ((v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30;
    aBlock[4] = sub_23D856CF8;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23D876358;
    aBlock[3] = &block_descriptor_156;
    v22 = _Block_copy(aBlock);

    sub_23D8DE770();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_23D856D84(&qword_27E2EDE68, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2EEA70, &unk_23D8E1740);
    sub_23D835AD0(&qword_27E2EDE70, &unk_27E2EEA70, &unk_23D8E1740, MEMORY[0x277D83970]);
    v23 = v31;
    v24 = v35;
    sub_23D8DEBF0();
    MEMORY[0x23EEF0C20](v16, v7, v23, v22);
    _Block_release(v22);

    (*(v34 + 8))(v23, v24);
    (*(v32 + 8))(v7, v33);
    return v29(v16, v28);
  }

  else
  {
    sub_23D8DC430();
    sub_23D856D84(&unk_27E2F0420, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D840488(id *a1)
{
  if (*a1)
  {
    v1 = *a1;
    v2 = sub_23D8DC280();

    return v2 & 1;
  }

  else
  {
    sub_23D8DC430();
    sub_23D856D84(&unk_27E2F0420, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

void sub_23D840520(uint64_t a1, uint64_t a2, id *a3)
{
  v4 = sub_23D8DC250();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - v9;
  sub_23D840804();
  v11 = a3 + *(type metadata accessor for AXRFullScreenView(0) + 84);
  v12 = *v11;
  v13 = *(v11 + 1);
  LOBYTE(v19) = v12;
  v20 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE320();
  if ((v18[0] & 1) == 0)
  {
    if (!*a3)
    {
      sub_23D8DC430();
      sub_23D856D84(&unk_27E2F0420, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);
      sub_23D8DD120();
      __break(1u);
      return;
    }

    v14 = *a3;
    sub_23D8DC2A0();

    (*(v5 + 104))(v8, *MEMORY[0x277CE7200], v4);
    sub_23D856D84(&qword_27E2EDE60, MEMORY[0x277CE7208], MEMORY[0x277CE7218]);
    sub_23D8DE980();
    sub_23D8DE980();
    if (v19 == v18[0] && v20 == v18[1])
    {
      v15 = *(v5 + 8);
      v15(v8, v4);
      v15(v10, v4);
    }

    else
    {
      v16 = sub_23D8DED20();
      v17 = *(v5 + 8);
      v17(v8, v4);
      v17(v10, v4);

      if ((v16 & 1) == 0)
      {
        return;
      }
    }

    sub_23D8409FC();
  }
}

void sub_23D840804()
{
  v1 = v0;
  v2 = sub_23D8DBF60();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0)
  {
    v6 = *v0;
    sub_23D8DC260();

    v7 = v6;
    v8 = sub_23D8DC340();

    v9 = v7;
    v10 = sub_23D8DC310();

    if (v10 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v8 / v11;
    if (v12 < 0.0)
    {
      v12 = 0.0;
    }

    v13 = fmin(v12, 1.0);
    v14 = (v1 + *(type metadata accessor for AXRFullScreenView(0) + 72));
    v15 = *v14;
    v16 = v14[1];
    *&v17[1] = v13;
    v17[2] = v15;
    v17[3] = v16;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0E0, &qword_23D8E1700);
    sub_23D8DE330();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    sub_23D8DC430();
    sub_23D856D84(&unk_27E2F0420, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);
    sub_23D8DD120();
    __break(1u);
  }
}

void sub_23D8409FC()
{
  v1 = sub_23D8DBF60();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*v0)
  {
    goto LABEL_25;
  }

  v5 = *v0;
  sub_23D8DC260();
  v6 = sub_23D8DC340();

  (*(v2 + 8))(v4, v1);
  v7 = v5;
  v8 = sub_23D8DC310();

  if (v8 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = v6 / v9;
  if (v10 > 0.95)
  {
    type metadata accessor for AXRFullScreenView(0);
    type metadata accessor for AXRScrollCoordinator();
    sub_23D856D84(&qword_27E2ED648, type metadata accessor for AXRScrollCoordinator, &unk_23D8E2A38);
    sub_23D8DCD40();

    v16 = -1;
LABEL_18:
    sub_23D8DCB30();

    return;
  }

  v11 = sub_23D841510();
  if (v10 <= 0.85)
  {
    goto LABEL_12;
  }

  v12 = fmin((v10 + -0.85) * 6.67, 1.0) * (v11 * 3.0);
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v13 = __OFADD__(v11, v12);
  v11 += v12;
  if (!v13)
  {
LABEL_12:
    if (__OFADD__(v6, v11))
    {
      __break(1u);
    }

    else if (!__OFSUB__(v8, 1))
    {
      if (v8 - 1 >= v6 + v11)
      {
        v14 = v6 + v11;
      }

      else
      {
        v14 = v8 - 1;
      }

      type metadata accessor for AXRFullScreenView(0);
      type metadata accessor for AXRScrollCoordinator();
      sub_23D856D84(&qword_27E2ED648, type metadata accessor for AXRScrollCoordinator, &unk_23D8E2A38);
      sub_23D8DCD40();

      v16 = v14;
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  sub_23D8DC430();
  sub_23D856D84(&unk_27E2F0420, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);
  sub_23D8DD120();
  __break(1u);
}

void sub_23D840D80(uint64_t a1, _BYTE *a2, id *a3)
{
  if (*a2 == 1)
  {
    type metadata accessor for AXRFullScreenView(0);
    LOBYTE(v5) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
    sub_23D8DE330();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDBE0, &qword_23D8E1538);
    sub_23D8DE320();
    [v5 invalidate];

    sub_23D8DE330();
    sub_23D8409FC();
    if (*a3)
    {
      v4 = *a3;
      sub_23D8DC390();
    }

    else
    {
      sub_23D8DC430();
      sub_23D856D84(&unk_27E2F0420, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);
      sub_23D8DD120();
      __break(1u);
    }
  }
}

uint64_t sub_23D840EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23D8DC250();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *MEMORY[0x277CE71F8], v4);
  sub_23D856D84(&qword_27E2EDE60, MEMORY[0x277CE7208], MEMORY[0x277CE7218]);
  sub_23D8DE980();
  sub_23D8DE980();
  if (v14 == v13)
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v8 = sub_23D8DED20();
    (*(v5 + 8))(v7, v4);

    if ((v8 & 1) == 0)
    {
      return result;
    }
  }

  v10 = (a3 + *(type metadata accessor for AXRFullScreenView(0) + 72));
  v11 = *v10;
  v12 = v10[1];
  *&v14 = v11;
  *(&v14 + 1) = v12;
  *&v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0E0, &qword_23D8E1700);
  return sub_23D8DE330();
}

double sub_23D841100(uint64_t a1, uint64_t a2)
{
  sub_23D8DCCE0();
  sub_23D8DE610();
  sub_23D8DCE60();

  return result;
}

uint64_t sub_23D841184(char a1, uint64_t a2)
{
  type metadata accessor for AXRFullScreenView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE330();
  return sub_23D8DE330();
}

void sub_23D8412A0(id *a1, uint64_t a2)
{
  sub_23D8DE610();
  sub_23D8DCE60();

  if (*a1)
  {
    v3 = *a1;
    sub_23D8DC370();

    sub_23D8DC900();
    sub_23D856D84(&qword_27E2ED250, MEMORY[0x277CE73E8], MEMORY[0x277CE73E0]);
    sub_23D8DCD40();
    v4 = sub_23D8DC8B0();

    if ((v4 & 1) == 0)
    {
      sub_23D8DCD40();
      sub_23D8DC8C0();
    }

    sub_23D840804();
  }

  else
  {
    sub_23D8DC430();
    sub_23D856D84(&unk_27E2F0420, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);
    sub_23D8DD120();
    __break(1u);
  }
}

uint64_t sub_23D841450(uint64_t a1)
{
  type metadata accessor for AXRFullScreenView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE330();
  return sub_23D8DE330();
}

uint64_t sub_23D841510()
{
  v1 = sub_23D8DCF90();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  if (!*(v0 + 16))
  {
    sub_23D8DC9F0();
    sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
    return result;
  }

  sub_23D8DC960();

  sub_23D8DC720();

  sub_23D8DC960();

  sub_23D8DC680();
  v9 = v8;

  (*(v2 + 32))(v5, v7, v1);
  v10 = (*(v2 + 88))(v5, v1);
  if (v10 == *MEMORY[0x277CDF9F8] || v10 == *MEMORY[0x277CDF9E0])
  {
    v12 = 300.0;
  }

  else if (v10 == *MEMORY[0x277CDF9E8])
  {
    v12 = 250.0;
  }

  else if (v10 == *MEMORY[0x277CDF9D8])
  {
    v12 = 225.0;
  }

  else if (v10 == *MEMORY[0x277CDF9F0])
  {
    v12 = 200.0;
  }

  else if (v10 == *MEMORY[0x277CDFA00])
  {
    v12 = 175.0;
  }

  else if (v10 == *MEMORY[0x277CDFA10])
  {
    v12 = 150.0;
  }

  else
  {
    if (v10 == *MEMORY[0x277CDF988])
    {
      goto LABEL_19;
    }

    if (v10 == *MEMORY[0x277CDF998])
    {
      v12 = 100.0;
    }

    else if (v10 == *MEMORY[0x277CDF9A8])
    {
      v12 = 75.0;
    }

    else if (v10 == *MEMORY[0x277CDF9B8])
    {
      v12 = 62.5;
    }

    else
    {
      if (v10 != *MEMORY[0x277CDF9D0])
      {
        goto LABEL_39;
      }

      v12 = 50.0;
    }
  }

  while (1)
  {
    v13 = 1.0 / (v9 * 0.05 + 1.0) * v12;
    if (COERCE__INT64(fabs(v13)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_37;
    }

    if (v13 > -9.22337204e18)
    {
      break;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    v16 = *(v2 + 8);
    v2 += 8;
    v16(v5, v1);
LABEL_19:
    v12 = 125.0;
  }

  if (v13 >= 9.22337204e18)
  {
    goto LABEL_38;
  }

  v14 = v13;
  if (v13 >= 500)
  {
    v14 = 500;
  }

  if (v14 <= 30)
  {
    return 30;
  }

  else
  {
    return v14;
  }
}

void sub_23D8418D4(double a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDE58, &qword_23D8E1708);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v37 - v4;
  v6 = sub_23D8DBF60();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v39 = &v37 - v11;
  v12 = (v1 + *(type metadata accessor for AXRFullScreenView(0) + 76));
  v13 = *v12;
  v14 = *(v12 + 1);
  LOBYTE(v41) = v13;
  v42 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE320();
  if (v40 != 1)
  {
    return;
  }

  v38 = v7;
  if (!*(v1 + 16))
  {
    goto LABEL_26;
  }

  v15 = *v1;
  if (!*v1)
  {
LABEL_27:
    sub_23D8DC430();
    sub_23D856D84(&unk_27E2F0420, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);

    sub_23D8DD120();
    __break(1u);
    return;
  }

  sub_23D8DC930();
  swift_allocObject();

  v16 = v15;
  sub_23D8DC920();
  v17 = v16;
  sub_23D8DC3B0();

  v18 = sub_23D8DC910();

  v19 = [v18 length];

  v20 = v38;
  if (v19 <= 0)
  {
    return;
  }

  v21 = fmin(a1, 1.0);
  if (a1 < 0.0)
  {
    v21 = 0.0;
  }

  v22 = round(v21 * v19);
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v22 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    sub_23D8DC9F0();
    sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    sub_23D8DD120();
    __break(1u);
    goto LABEL_27;
  }

  if (v19 >= v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = v19;
  }

  v24 = v17;
  v25 = sub_23D8DC320();

  if (v25)
  {
    sub_23D8DC230();
    if ((*(v20 + 48))(v5, 1, v6) == 1)
    {

      sub_23D83C6E4(v5, &qword_27E2EDE58, &qword_23D8E1708);
    }

    else
    {
      (*(v20 + 32))(v39, v5, v6);
      v26 = v20;
      type metadata accessor for AXRScrollCoordinator();
      sub_23D856D84(&qword_27E2ED648, type metadata accessor for AXRScrollCoordinator, &unk_23D8E2A38);
      sub_23D8DCD40();

      v41 = v23;
      sub_23D8DCB30();

      v27 = v24;
      v28 = sub_23D8DC280();

      v29 = v27;
      if (v28)
      {
        sub_23D8DC2C0();

        sub_23D8DC1F0();

        v30 = v29;
        v31 = v39;
        sub_23D8DC300();

        (*(v26 + 8))(v31, v6);
      }

      else
      {
        v32 = sub_23D8DC420();

        v33 = v29;
        if (v32)
        {
          sub_23D8DC3D0();
        }

        else
        {
          sub_23D8DC2C0();

          sub_23D8DC1F0();
        }

        v34 = v38;
        v35 = v39;
        (*(v38 + 16))(v10, v39, v6);
        v36 = v33;
        sub_23D8DC270();

        (*(v34 + 8))(v35, v6);
      }
    }
  }
}

uint64_t sub_23D841E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  v107 = sub_23D8DE5C0();
  v106 = *(v107 - 1);
  MEMORY[0x28223BE20](v107);
  v105 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_23D8DD3D0();
  v93 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v89 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AXRFullScreenView(0);
  v121 = v5;
  v123 = *(v5 - 8);
  v6 = *(v123 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v117 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v88 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED828, &qword_23D8E1208);
  MEMORY[0x28223BE20](v10);
  v12 = &v88 - v11;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED818, &qword_23D8E11F8);
  v109 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v91 = &v88 - v13;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED810, &qword_23D8E11F0);
  v97 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v92 = &v88 - v14;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED8F0, &qword_23D8E12A0);
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v88 = &v88 - v15;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED808, &qword_23D8E11E8);
  MEMORY[0x28223BE20](v98);
  v101 = &v88 - v16;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED7F8, &qword_23D8E11E0);
  MEMORY[0x28223BE20](v102);
  v103 = &v88 - v17;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED7E0, &qword_23D8E11D8);
  MEMORY[0x28223BE20](v108);
  v104 = &v88 - v18;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED7D0, &qword_23D8E11C8);
  v112 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v119 = &v88 - v19;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED8F8, &unk_23D8E12A8);
  v113 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v111 = &v88 - v20;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED7C8, &qword_23D8E11C0);
  MEMORY[0x28223BE20](v110);
  v116 = &v88 - v21;
  sub_23D83EFA0(v12);
  v22 = (a1 + *(v5 + 40));
  v23 = a1;
  v24 = *v22;
  v25 = *(v22 + 1);
  LOBYTE(v127) = v24;
  v128 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE320();
  LOBYTE(v5) = v125;
  sub_23D853140(a1, v9);
  v27 = (*(v123 + 80) + 16) & ~*(v123 + 80);
  v122 = *(v123 + 80);
  v123 = v6;
  v28 = swift_allocObject();
  v90 = v27;
  v120 = v9;
  sub_23D855DF8(v9, v28 + v27, type metadata accessor for AXRFullScreenView);
  v29 = &v12[*(v10 + 36)];
  *v29 = sub_23D8531AC;
  *(v29 + 1) = v28;
  v29[16] = v5;
  v30 = v93;
  v31 = v89;
  v32 = v95;
  (*(v93 + 104))(v89, *MEMORY[0x277CDDDC0], v95);
  v33 = sub_23D852CA0();
  v34 = v91;
  sub_23D8DDF20();
  (*(v30 + 8))(v31, v32);
  sub_23D83C6E4(v12, &qword_27E2ED828, &qword_23D8E1208);
  v124 = v23;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED820, &qword_23D8E1200);
  v127 = v10;
  v128 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = sub_23D835AD0(&qword_27E2ED8A8, &qword_27E2ED820, &qword_23D8E1200, MEMORY[0x277CDDF68]);
  v38 = v92;
  v39 = v94;
  sub_23D8DE040();
  (*(v109 + 8))(v34, v39);
  v40 = v23 + *(v121 + 44);
  v41 = *v40;
  v42 = *(v40 + 8);
  LOBYTE(v127) = v41;
  v128 = v42;
  v109 = v26;
  sub_23D8DE320();
  v127 = v39;
  v128 = v35;
  v129 = OpaqueTypeConformance2;
  v130 = v37;
  swift_getOpaqueTypeConformance2();
  v43 = v88;
  v44 = v96;
  sub_23D8DDE80();
  (*(v97 + 8))(v38, v44);
  if (*(v23 + 16))
  {
    v45 = v90;

    sub_23D8DC960();

    v46 = sub_23D8DC7E0();

    v47 = sub_23D8DD9E0();
    v48 = v101;
    (*(v99 + 32))(v101, v43, v100);
    v49 = v48 + *(v98 + 36);
    *v49 = v46;
    *(v49 + 8) = v47;

    sub_23D8DC960();

    sub_23D8DC7E0();

    sub_23D8DE230();
    LOBYTE(v46) = sub_23D8DE1E0();

    v50 = v105;
    if (v46)
    {
      sub_23D8DE5A0();
    }

    else
    {
      sub_23D8DE5B0();
    }

    v51 = sub_23D8DD9E0();
    v52 = v103;
    v53 = &v103[*(v102 + 36)];
    (*(v106 + 32))(v53, v50, v107);
    v53[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED8C8, &qword_23D8E1260) + 36)] = v51;
    sub_23D83C744(v48, v52, &qword_27E2ED808, &qword_23D8E11E8);
    v54 = v120;
    sub_23D853140(v23, v120);
    v55 = swift_allocObject();
    v107 = type metadata accessor for AXRFullScreenView;
    sub_23D855DF8(v54, v55 + v45, type metadata accessor for AXRFullScreenView);
    v56 = v104;
    sub_23D83C744(v52, v104, &qword_27E2ED7F8, &qword_23D8E11E0);
    v57 = v108;
    v58 = (v56 + *(v108 + 36));
    *v58 = sub_23D8531CC;
    v58[1] = v55;
    v58[2] = 0;
    v58[3] = 0;
    sub_23D8DC900();
    sub_23D856D84(&qword_27E2ED250, MEMORY[0x277CE73E8], MEMORY[0x277CE73E0]);
    sub_23D8DCD40();
    LOBYTE(v52) = sub_23D8DC8B0();

    LOBYTE(v127) = v52 & 1;
    sub_23D853140(v23, v54);
    v59 = v23;
    v60 = v57;
    v61 = swift_allocObject();
    sub_23D855DF8(v54, v61 + v45, v107);
    v62 = sub_23D852988();
    v63 = MEMORY[0x277D839B0];
    sub_23D8DE060();

    sub_23D83C6E4(v56, &qword_27E2ED7E0, &qword_23D8E11D8);
    if (*v59)
    {
      v64 = *v59;
      v65 = sub_23D8DC410();

      v125 = v65;
      v66 = v120;
      sub_23D853140(v59, v120);
      v67 = swift_allocObject();
      sub_23D855DF8(v66, v67 + v45, type metadata accessor for AXRFullScreenView);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED7D8, &qword_23D8E11D0);
      v127 = v60;
      v128 = v63;
      v129 = v62;
      v130 = MEMORY[0x277D839C8];
      swift_getOpaqueTypeConformance2();
      sub_23D853084();
      v68 = v111;
      v69 = v114;
      v70 = v119;
      sub_23D8DE060();

      (*(v112 + 8))(v70, v69);
      sub_23D853140(v59, v66);
      v71 = swift_allocObject();
      sub_23D855DF8(v66, v71 + v45, type metadata accessor for AXRFullScreenView);
      v72 = v116;
      (*(v113 + 32))(v116, v68, v115);
      v73 = (v72 + *(v110 + 36));
      *v73 = 0;
      v73[1] = 0;
      v73[2] = sub_23D85327C;
      v73[3] = v71;
      v74 = v59 + *(v121 + 52);
      v75 = *v74;
      v76 = *(v74 + 1);
      LOBYTE(v125) = v75;
      v126 = v76;
      sub_23D8DE340();
      v77 = v128;
      v121 = v127;
      LODWORD(v119) = v129;
      sub_23D853140(v59, v66);
      v78 = swift_allocObject();
      sub_23D855DF8(v66, v78 + v45, type metadata accessor for AXRFullScreenView);
      v79 = v117;
      sub_23D853140(v59, v117);
      v80 = swift_allocObject();
      sub_23D855DF8(v79, v80 + v45, type metadata accessor for AXRFullScreenView);
      IsPad = AXDeviceIsPad();
      v82 = v118;
      sub_23D83C744(v72, v118, &qword_27E2ED7C8, &qword_23D8E11C0);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED7B0, &qword_23D8E11B8);
      v84 = v82 + *(result + 36);
      *v84 = IsPad;
      *(v84 + 8) = v121;
      *(v84 + 16) = v77;
      *(v84 + 24) = v119;
      *(v84 + 32) = sub_23D853294;
      *(v84 + 40) = v78;
      *(v84 + 48) = sub_23D8532F8;
      *(v84 + 56) = v80;
      return result;
    }

    sub_23D8DC430();
    v85 = &unk_27E2F0420;
    v86 = MEMORY[0x277CE7230];
    v87 = MEMORY[0x277CE7228];
  }

  else
  {
    sub_23D8DC9F0();
    v85 = &qword_27E2ED238;
    v86 = MEMORY[0x277CE73F8];
    v87 = MEMORY[0x277CE73F0];
  }

  sub_23D856D84(v85, v86, v87);
  result = sub_23D8DD120();
  __break(1u);
  return result;
}

uint64_t sub_23D842EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v3 = sub_23D8DD850();
  v107 = *(v3 - 8);
  v108 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v102 = v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v101 = v86 - v6;
  v112 = type metadata accessor for AXRFullScreenView(0);
  v97 = *(v112 - 1);
  v7 = MEMORY[0x28223BE20](v112);
  v99 = v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v8;
  MEMORY[0x28223BE20](v7);
  v98 = v86 - v9;
  v10 = type metadata accessor for AXRBottomBar(0);
  MEMORY[0x28223BE20](v10);
  v12 = (v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDE40, &qword_23D8E16E8);
  MEMORY[0x28223BE20](v100);
  v106 = v86 - v13;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDE48, &qword_23D8E16F0);
  MEMORY[0x28223BE20](v105);
  v109 = v86 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDE50, &qword_23D8E16F8);
  v111 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v104 = v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v103 = v86 - v18;
  v110 = a1;
  v19 = sub_23D8DC900();
  v20 = sub_23D856D84(&qword_27E2ED250, MEMORY[0x277CE73E8], MEMORY[0x277CE73E0]);
  sub_23D8DCD40();
  v21 = sub_23D8DC8B0();

  if (v21)
  {
    v95 = v15;
    v86[2] = v19;
    v86[1] = v20;
    v86[0] = sub_23D8DCD40();
    v22 = v112;
    v23 = v110;
    v24 = (v110 + v112[8]);
    v25 = v24[1];
    v91 = *v24;
    v90 = v25;
    v26 = (v110 + v112[18]);
    v27 = *v26;
    v28 = v26[1];
    v116 = v27;
    v117 = v28;
    sub_23D83BCC8(v91, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0E0, &qword_23D8E1700);
    sub_23D8DE340();
    v92 = *(&v114 + 1);
    v93 = v114;
    v29 = v115;
    v30 = v23 + v22[19];
    v31 = *v30;
    v32 = *(v30 + 1);
    LOBYTE(v116) = v31;
    v117 = v32;
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
    sub_23D8DE340();
    v88 = *(&v114 + 1);
    v89 = v114;
    v87 = v115;
    v33 = v98;
    sub_23D853140(v23, v98);
    v34 = (*(v97 + 80) + 16) & ~*(v97 + 80);
    v97 = swift_allocObject();
    sub_23D855DF8(v33, v97 + v34, type metadata accessor for AXRFullScreenView);
    v35 = v99;
    sub_23D853140(v23, v99);
    v36 = swift_allocObject();
    sub_23D855DF8(v35, v36 + v34, type metadata accessor for AXRFullScreenView);
    *v12 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B0, &qword_23D8E0DB0);
    swift_storeEnumTagMultiPayload();
    v37 = sub_23D8DC9F0();
    v38 = sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    v99 = v37;
    v98 = v38;
    v39 = sub_23D8DD140();
    v41 = v40;
    v42 = (v12 + v10[5]);
    *v42 = sub_23D8DCEF0();
    v42[1] = v43;
    v44 = (v12 + v10[6]);
    sub_23D8DC430();
    sub_23D856D84(&unk_27E2F0420, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);
    *v44 = sub_23D8DD140();
    v44[1] = v45;
    v46 = (v12 + v10[7]);
    *v46 = v39;
    v46[1] = v41;
    v47 = (v12 + v10[8]);
    v48 = v90;
    *v47 = v91;
    v47[1] = v48;
    v49 = v12 + v10[9];
    LOBYTE(v116) = 0;
    sub_23D8DE310();
    v50 = *(&v114 + 1);
    *v49 = v114;
    *(v49 + 1) = v50;
    v51 = (v12 + v10[10]);
    v116 = 0;
    sub_23D8DE310();
    v52 = *(&v114 + 1);
    *v51 = v114;
    v51[1] = v52;
    v53 = (v12 + v10[11]);
    v54 = v92;
    *v53 = v93;
    v53[1] = v54;
    v53[2] = v29;
    v55 = v12 + v10[12];
    v56 = v88;
    *v55 = v89;
    *(v55 + 1) = v56;
    v55[16] = v87;
    v57 = (v12 + v10[13]);
    v58 = v97;
    *v57 = sub_23D855D18;
    v57[1] = v58;
    v59 = (v12 + v10[14]);
    *v59 = sub_23D855D88;
    v59[1] = v36;
    v61 = v107;
    v60 = v108;
    v62 = v101;
    (*(v107 + 104))(v101, *MEMORY[0x277CE0558], v108);
    (*(v61 + 16))(v102, v62, v60);
    sub_23D8DE310();
    (*(v61 + 8))(v62, v60);
    v63 = v12 + v10[16];
    v116 = 0;
    v117 = 0xE000000000000000;
    sub_23D8DE310();
    v64 = v115;
    *v63 = v114;
    *(v63 + 2) = v64;
    *(v12 + v10[17]) = 0x3FD3333333333333;
    v65 = *v23;
    if (*v23)
    {
      v66 = v65;
      v67 = sub_23D8DCB10();
      v68 = v106;
      sub_23D855DF8(v12, v106, type metadata accessor for AXRBottomBar);
      v69 = (v68 + *(v100 + 36));
      *v69 = v67;
      v69[1] = v65;
      v70 = v23[2];
      v71 = v113;
      v72 = v95;
      if (v70)
      {

        v73 = sub_23D8DCB10();
        v74 = v109;
        sub_23D83C744(v68, v109, &qword_27E2EDE40, &qword_23D8E16E8);
        v75 = (v74 + *(v105 + 36));
        *v75 = v73;
        v75[1] = v70;
        v76 = v23 + v112[10];
        v77 = *v76;
        v78 = *(v76 + 1);
        LOBYTE(v114) = v77;
        *(&v114 + 1) = v78;
        sub_23D8DE320();
        if (v116)
        {
          v79 = 1.0;
        }

        else
        {
          v79 = 0.0;
        }

        v80 = v104;
        sub_23D83C744(v74, v104, &qword_27E2EDE48, &qword_23D8E16F0);
        *(v80 + *(v72 + 36)) = v79;
        v81 = v80;
        v82 = v103;
        sub_23D83C744(v81, v103, &qword_27E2EDE50, &qword_23D8E16F8);
        sub_23D83C744(v82, v71, &qword_27E2EDE50, &qword_23D8E16F8);
        return (*(v111 + 56))(v71, 0, 1, v72);
      }
    }

    else
    {
      sub_23D8DD120();
      __break(1u);
    }

    result = sub_23D8DD120();
    __break(1u);
    return result;
  }

  v84 = *(v111 + 56);
  v85 = v113;

  return v84(v85, 1, 1, v15);
}

void sub_23D84397C(uint64_t a1, double a2)
{
  type metadata accessor for AXRFullScreenView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0E0, &qword_23D8E1700);
  sub_23D8DE330();
  sub_23D8418D4(a2);
}

uint64_t sub_23D843A00(char a1, uint64_t a2)
{
  type metadata accessor for AXRFullScreenView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  return sub_23D8DE330();
}

uint64_t sub_23D843A74@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDBE8, &qword_23D8E1560);
  MEMORY[0x28223BE20](v122);
  v121 = v93 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDBF0, &qword_23D8E1568);
  v119 = *(v4 - 8);
  v120 = v4;
  MEMORY[0x28223BE20](v4);
  v118 = v93 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDBF8, &qword_23D8E1570);
  v116 = *(v6 - 8);
  v117 = v6;
  MEMORY[0x28223BE20](v6);
  v115 = v93 - v7;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDC00, &qword_23D8E1578);
  v108 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v107 = v93 - v8;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDC08, &qword_23D8E1580);
  v104 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v100 = v93 - v9;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDC10, &qword_23D8E1588);
  v96 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v95 = v93 - v10;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDC18, &qword_23D8E1590);
  v99 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v98 = v93 - v11;
  v110 = sub_23D8DC170();
  v97 = *(v110 - 8);
  v12 = MEMORY[0x28223BE20](v110);
  v94 = v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v109 = v93 - v14;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDC20, &qword_23D8E1598);
  v15 = MEMORY[0x28223BE20](v112);
  v102 = v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v105 = v93 - v17;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDC28, &qword_23D8E15A0);
  v18 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v20 = v93 - v19;
  v21 = sub_23D8DD750();
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDC30, &qword_23D8E15A8);
  v24 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v26 = v93 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDC38, &qword_23D8E15B0);
  MEMORY[0x28223BE20](v27 - 8);
  v124 = v93 - v28;
  v29 = a1;
  v30 = (a1 + *(type metadata accessor for AXRFullScreenView(0) + 32));
  v32 = *v30;
  v31 = v30[1];
  v33 = *v30;
  v34 = *v30;
  if (!*v30)
  {
    goto LABEL_7;
  }

  if (v32 != 1)
  {
    v34 = swift_allocObject();
    *(v34 + 16) = v32;
    *(v34 + 24) = v31;
    v33 = sub_23D8559EC;
LABEL_7:
    sub_23D83BCD8(v32, v31);
    sub_23D8556A0(v33, v34);
    v59 = sub_23D8DD710();
    MEMORY[0x28223BE20](v59);
    v93[-2] = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDD20, &qword_23D8E1620);
    sub_23D8556C8();
    sub_23D8DCD70();
    v60 = sub_23D835AD0(&qword_27E2EDC78, &qword_27E2EDC30, &qword_23D8E15A8, MEMORY[0x277CDD7A8]);
    v61 = v111;
    MEMORY[0x23EEEF8F0](v26, v111, v60);
    v125 = v61;
    v126 = v60;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v63 = sub_23D854F98();
    v125 = v112;
    v126 = v63;
    v64 = swift_getOpaqueTypeConformance2();
    v65 = v113;
    MEMORY[0x23EEEF900](v20, v113, v114, OpaqueTypeConformance2, v64);
    (*(v18 + 8))(v20, v65);
    v35 = v29;
    (*(v24 + 8))(v26, v61);
    v67 = v121;
    v66 = v122;
    v69 = v119;
    v68 = v120;
LABEL_10:
    v82 = sub_23D8DD720();
    MEMORY[0x28223BE20](v82);
    v93[-2] = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDC80, &qword_23D8E15D0);
    sub_23D8550F4();
    v83 = v115;
    sub_23D8DCD70();
    sub_23D8DD740();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDD10, &qword_23D8E1618);
    sub_23D8555E4();
    v84 = v118;
    sub_23D8DCD70();
    v85 = *(v66 + 48);
    v86 = *(v66 + 64);
    v87 = v124;
    sub_23D83C67C(v124, v67, &qword_27E2EDC38, &qword_23D8E15B0);
    v88 = v67;
    v89 = v116;
    v90 = v88 + v85;
    v91 = v117;
    (*(v116 + 16))(v90, v83, v117);
    (*(v69 + 16))(v88 + v86, v84, v68);
    sub_23D8DD5D0();
    (*(v69 + 8))(v84, v68);
    (*(v89 + 8))(v83, v91);
    return sub_23D83C6E4(v87, &qword_27E2EDC38, &qword_23D8E15B0);
  }

  v35 = v29;
  if (*v29)
  {
    v36 = *v29;
    v37 = sub_23D8DC410();

    v38 = *(v37 + 16);
    v93[1] = v23;
    if (v38)
    {
      v93[0] = v29;
      v39 = v97;
      (*(v97 + 16))(v94, v37 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * (v38 - 1), v110);

      v40 = v109;
      (*(v39 + 32))();
      v41 = sub_23D8DD710();
      MEMORY[0x28223BE20](v41);
      v42 = v93[0];
      v93[-2] = v40;
      v93[-1] = v42;
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDC40, &qword_23D8E15B8);
      v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDC48, &unk_23D8E15C0);
      v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDC50, &unk_23D8E5190);
      v45 = sub_23D835AD0(&qword_27E2EDC58, &qword_27E2EDC48, &unk_23D8E15C0, MEMORY[0x277CE1138]);
      v46 = sub_23D835AD0(&qword_27E2EDC60, &qword_27E2EDC50, &unk_23D8E5190, MEMORY[0x277CE1198]);
      v125 = v43;
      v126 = v44;
      v127 = v45;
      v128 = v46;
      swift_getOpaqueTypeConformance2();
      v47 = v95;
      sub_23D8DD0C0();
      v48 = sub_23D835AD0(&qword_27E2EDC68, &qword_27E2EDC10, &qword_23D8E1588, MEMORY[0x277CDDB60]);
      v49 = v98;
      v50 = v101;
      sub_23D8DCF70();
      (*(v96 + 8))(v47, v50);
      v125 = v50;
      v126 = v48;
      v51 = swift_getOpaqueTypeConformance2();
      v52 = v100;
      v53 = v103;
      MEMORY[0x23EEEF8F0](v49, v103, v51);
      v54 = v104;
      v55 = v102;
      v56 = v106;
      (*(v104 + 16))(v102, v52, v106);
      (*(v54 + 56))(v55, 0, 1, v56);
      v125 = v53;
      v126 = v51;
      v57 = swift_getOpaqueTypeConformance2();
      v58 = v105;
      MEMORY[0x23EEEF920](v55, v56, v57);
      sub_23D83C6E4(v55, &qword_27E2EDC20, &qword_23D8E1598);
      (*(v54 + 8))(v52, v56);
      (*(v99 + 8))(v49, v53);
      (*(v39 + 8))(v109, v110);
      v35 = v93[0];
    }

    else
    {

      v70 = v102;
      v71 = v106;
      (*(v104 + 56))(v102, 1, 1, v106);
      v72 = sub_23D835AD0(&qword_27E2EDC68, &qword_27E2EDC10, &qword_23D8E1588, MEMORY[0x277CDDB60]);
      v125 = v101;
      v126 = v72;
      v73 = swift_getOpaqueTypeConformance2();
      v125 = v103;
      v126 = v73;
      v74 = swift_getOpaqueTypeConformance2();
      v58 = v105;
      MEMORY[0x23EEEF920](v70, v71, v74);
      sub_23D83C6E4(v70, &qword_27E2EDC20, &qword_23D8E1598);
    }

    v66 = v122;
    v69 = v119;
    v68 = v120;
    v75 = sub_23D854F98();
    v76 = v107;
    v77 = v112;
    MEMORY[0x23EEEF8F0](v58, v112, v75);
    v78 = sub_23D835AD0(&qword_27E2EDC78, &qword_27E2EDC30, &qword_23D8E15A8, MEMORY[0x277CDD7A8]);
    v125 = v111;
    v126 = v78;
    v79 = swift_getOpaqueTypeConformance2();
    v125 = v77;
    v126 = v75;
    v80 = swift_getOpaqueTypeConformance2();
    v81 = v114;
    MEMORY[0x23EEEF910](v76, v113, v114, v79, v80);
    (*(v108 + 8))(v76, v81);
    sub_23D83C6E4(v58, &qword_27E2EDC20, &qword_23D8E1598);
    v67 = v121;
    goto LABEL_10;
  }

  sub_23D8DC430();
  sub_23D856D84(&unk_27E2F0420, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);
  result = sub_23D8DD120();
  __break(1u);
  return result;
}

uint64_t sub_23D844AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDD38, &qword_23D8E1630);
  MEMORY[0x28223BE20](v29);
  v4 = &v28 - v3;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDD68, &qword_23D8E1640);
  v31 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v30 = &v28 - v5;
  v6 = (a1 + *(type metadata accessor for AXRFullScreenView(0) + 32));
  v7 = v6[1];
  v37 = *v6;
  v36 = v7;
  sub_23D83BCC8(v37, v7);
  sub_23D8DC9F0();
  sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
  v35 = sub_23D8DD140();
  v34 = v8;
  sub_23D8DC430();
  sub_23D856D84(&unk_27E2F0420, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);
  v9 = sub_23D8DD140();
  v11 = *a1;
  if (!*a1)
  {
LABEL_6:
    sub_23D8DD120();
    __break(1u);
    goto LABEL_7;
  }

  v12 = v9;
  v13 = v10;
  v14 = v11;
  v15 = sub_23D8DCB10();
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = v15;

    v18 = sub_23D8DCB10();
    *&v39 = v37;
    *(&v39 + 1) = v36;
    *&v40 = v12;
    *(&v40 + 1) = v13;
    *&v41 = v35;
    *(&v41 + 1) = v34;
    *&v42 = v17;
    *(&v42 + 1) = v11;
    *&v43 = v18;
    *(&v43 + 1) = v16;
    v19 = *MEMORY[0x277CDF998];
    v20 = sub_23D8DCF90();
    (*(*(v20 - 8) + 104))(v4, v19, v20);
    sub_23D856D84(&qword_27E2EDD70, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
    if (sub_23D8DE820())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDD30, &qword_23D8E1628);
      sub_23D8557F0();
      sub_23D835AD0(&qword_27E2EDD60, &qword_27E2EDD38, &qword_23D8E1630, MEMORY[0x277D84470]);
      v21 = v30;
      sub_23D8DDDD0();
      sub_23D83C6E4(v4, &qword_27E2EDD38, &qword_23D8E1630);
      v38[2] = v41;
      v38[3] = v42;
      v38[4] = v43;
      v38[1] = v40;
      v38[0] = v39;
      sub_23D83C6E4(v38, &qword_27E2EDD30, &qword_23D8E1628);
      sub_23D8DE5F0();
      sub_23D8DD0D0();
      v22 = v33;
      (*(v31 + 32))(v33, v21, v32);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDD20, &qword_23D8E1620);
      v24 = (v22 + *(result + 36));
      v25 = v44;
      v24[4] = v43;
      v24[5] = v25;
      v24[6] = v45;
      v26 = v40;
      *v24 = v39;
      v24[1] = v26;
      v27 = v42;
      v24[2] = v41;
      v24[3] = v27;
      return result;
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  result = sub_23D8DD120();
  __break(1u);
  return result;
}

uint64_t sub_23D844FB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDC48, &unk_23D8E15C0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9[-v5];
  *v6 = sub_23D8DD420();
  *(v6 + 1) = 0x4020000000000000;
  v6[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDDF0, &unk_23D8E16A0);
  sub_23D845158(a1, a2, &v6[*(v7 + 44)]);
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDC50, &unk_23D8E5190);
  sub_23D835AD0(&qword_27E2EDC58, &qword_27E2EDC48, &unk_23D8E15C0, MEMORY[0x277CE1138]);
  sub_23D835AD0(&qword_27E2EDC60, &qword_27E2EDC50, &unk_23D8E5190, MEMORY[0x277CE1198]);
  sub_23D8DDF70();
  return sub_23D83C6E4(v6, &qword_27E2EDC48, &unk_23D8E15C0);
}

uint64_t sub_23D845158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v93 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED4F8, &qword_23D8E0C40);
  MEMORY[0x28223BE20](v5 - 8);
  v98 = &v80 - v6;
  v99 = sub_23D8DDBB0();
  v97 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v96 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDDF8, &qword_23D8E16B0);
  v90 = *(v8 - 8);
  v91 = v8;
  MEMORY[0x28223BE20](v8);
  v89 = &v80 - v9;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDE00, &qword_23D8E16B8);
  v10 = MEMORY[0x28223BE20](v88);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v87 = &v80 - v14;
  MEMORY[0x28223BE20](v13);
  v92 = &v80 - v15;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDD38, &qword_23D8E1630);
  MEMORY[0x28223BE20](v101);
  v17 = &v80 - v16;
  v18 = sub_23D8DE2D0();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDE08, &qword_23D8E16C0);
  v22 = MEMORY[0x28223BE20](v94);
  v86 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v80 - v24;
  v95 = a1;
  v26.value._countAndFlagsBits = sub_23D8DC160();
  iconForBundleId(_:)(v26);
  sub_23D8DE2B0();

  (*(v19 + 104))(v21, *MEMORY[0x277CE0FE0], v18);
  v27 = sub_23D8DE300();

  (*(v19 + 8))(v21, v18);
  type metadata accessor for AXRFullScreenView(0);
  v100 = a2;
  sub_23D8DE5F0();
  sub_23D8DCDB0();
  *&v105[38] = v109;
  *&v105[22] = v108;
  *&v105[6] = v107;
  *&v104[2] = *v105;
  v106 = 1;
  v103 = v27;
  *v104 = 257;
  *&v104[18] = *&v105[16];
  *&v104[34] = *&v105[32];
  *&v104[48] = *(&v109 + 1);
  v28 = *MEMORY[0x277CDF988];
  v29 = sub_23D8DCF90();
  v30 = *(v29 - 8);
  v31 = *(v30 + 104);
  v32 = v30 + 104;
  v31(v17, v28, v29);
  v33 = sub_23D856D84(&qword_27E2EDD70, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  v102 = v17;
  if ((sub_23D8DE820() & 1) == 0)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v82 = v33;
  v83 = v32;
  v84 = v31;
  v85 = v29;
  v81 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDE10, &qword_23D8E16C8);
  sub_23D855C08();
  v34 = sub_23D835AD0(&qword_27E2EDD60, &qword_27E2EDD38, &qword_23D8E1630, MEMORY[0x277D84470]);
  v35 = v102;
  v80 = v34;
  sub_23D8DDDD0();
  sub_23D83C6E4(v35, &qword_27E2EDD38, &qword_23D8E1630);
  v110[1] = *v104;
  v110[2] = *&v104[16];
  v110[3] = *&v104[32];
  v111 = *&v104[48];
  v110[0] = v103;
  sub_23D83C6E4(v110, &qword_27E2EDE10, &qword_23D8E16C8);
  v36 = *(v94 + 9);
  v94 = v25;
  v37 = &v25[v36];
  v38 = *(sub_23D8DD090() + 20);
  v39 = *MEMORY[0x277CE0118];
  v40 = sub_23D8DD4E0();
  (*(*(v40 - 8) + 104))(&v37[v38], v39, v40);
  __asm { FMOV            V0.2D, #8.0 }

  *v37 = _Q0;
  *&v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDE30, &qword_23D8E4AD0) + 36)] = 256;
  *&v103 = sub_23D8DC150();
  *(&v103 + 1) = v46;
  sub_23D83CB18();
  v47 = sub_23D8DDCB0();
  v49 = v48;
  v51 = v50;
  v53 = v96;
  v52 = v97;
  v54 = v99;
  (*(v97 + 104))(v96, *MEMORY[0x277CE0A90], v99);
  v55 = sub_23D8DDAB0();
  v56 = v98;
  (*(*(v55 - 8) + 56))(v98, 1, 1, v55);
  sub_23D8DDB40();
  sub_23D83C6E4(v56, &qword_27E2ED4F8, &qword_23D8E0C40);
  (*(v52 + 8))(v53, v54);
  sub_23D8DDB00();
  sub_23D8DDB70();

  v57 = sub_23D8DDC40();
  v59 = v58;
  v61 = v60;

  sub_23D83CB6C(v47, v49, v51 & 1);

  if (*(v100 + 16))
  {

    sub_23D8DC960();

    sub_23D8DC7E0();

    v62 = sub_23D8DE190();

    *&v103 = v62;
    v63 = sub_23D8DDC10();
    v65 = v64;
    v67 = v66;
    v69 = v68;
    sub_23D83CB6C(v57, v59, v61 & 1);

    *&v103 = v63;
    *(&v103 + 1) = v65;
    v104[0] = v67 & 1;
    *&v104[8] = v69;
    v84(v102, *MEMORY[0x277CDF9A8], v85);
    if (sub_23D8DE820())
    {
      v70 = v89;
      v71 = v102;
      sub_23D8DDDD0();
      sub_23D83C6E4(v71, &qword_27E2EDD38, &qword_23D8E1630);
      sub_23D83CB6C(v63, v65, v67 & 1);

      v72 = v87;
      (*(v90 + 32))(v87, v70, v91);
      *(v72 + *(v88 + 36)) = 257;
      v73 = v92;
      sub_23D83C744(v72, v92, &qword_27E2EDE00, &qword_23D8E16B8);
      v74 = v94;
      v75 = v86;
      sub_23D83C67C(v94, v86, &qword_27E2EDE08, &qword_23D8E16C0);
      v76 = v81;
      sub_23D83C67C(v73, v81, &qword_27E2EDE00, &qword_23D8E16B8);
      v77 = v93;
      sub_23D83C67C(v75, v93, &qword_27E2EDE08, &qword_23D8E16C0);
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDE38, &qword_23D8E16E0);
      sub_23D83C67C(v76, v77 + *(v78 + 48), &qword_27E2EDE00, &qword_23D8E16B8);
      sub_23D83C6E4(v73, &qword_27E2EDE00, &qword_23D8E16B8);
      sub_23D83C6E4(v74, &qword_27E2EDE08, &qword_23D8E16C0);
      sub_23D83C6E4(v76, &qword_27E2EDE00, &qword_23D8E16B8);
      return sub_23D83C6E4(v75, &qword_27E2EDE08, &qword_23D8E16C0);
    }

    goto LABEL_6;
  }

LABEL_7:
  sub_23D8DC9F0();
  sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
  result = sub_23D8DD120();
  __break(1u);
  return result;
}

uint64_t sub_23D845C44@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_23D8DD560();
  sub_23D8DC150();
  sub_23D83CB18();
  result = sub_23D8DDCB0();
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = result;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6 & 1;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_23D845CBC@<X0>(uint64_t a1@<X8>)
{
  v87 = a1;
  v2 = type metadata accessor for AXRFullScreenView(0);
  v3 = *(v2 - 8);
  v82 = v2;
  v83 = v3;
  v4 = MEMORY[0x28223BE20](v2);
  v85 = v5;
  v86 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v84 = &v64 - v6;
  v76 = sub_23D8DD770();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v65 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_23D8DCCB0();
  v8 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v66 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDCD0, &qword_23D8E15F8);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v64 - v12;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDCB8, &qword_23D8E15F0);
  MEMORY[0x28223BE20](v69);
  v15 = &v64 - v14;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDD78, &qword_23D8E1648);
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v70 = &v64 - v16;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDCB0, &qword_23D8E15E8);
  MEMORY[0x28223BE20](v71);
  v18 = &v64 - v17;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDC90, &qword_23D8E15D8);
  v19 = MEMORY[0x28223BE20](v78);
  v68 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v77 = &v64 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDD80, &qword_23D8E1650);
  v80 = *(v22 - 8);
  v81 = v22;
  MEMORY[0x28223BE20](v22);
  v79 = &v64 - v23;
  v88 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDD88, &qword_23D8E1658);
  sub_23D855A1C();
  sub_23D835AD0(&qword_27E2EDD98, &qword_27E2EDD88, &qword_23D8E1658, MEMORY[0x277CE14C0]);
  sub_23D8DDBE0();
  v24 = sub_23D8DE230();
  v25 = sub_23D8DD9E0();
  v26 = &v13[*(v11 + 44)];
  *v26 = v24;
  v26[8] = v25;
  v67 = v1;
  if (*(v1 + 16))
  {
    sub_23D856774(0, &qword_27E2ED2A8, 0x277D75348);

    sub_23D8DC960();

    sub_23D8DC7E0();

    v27 = sub_23D8DEB80();
    v28 = sub_23D8DEB70();

    v29 = MEMORY[0x277CDF3D0];
    if ((v28 & 1) == 0)
    {
      v29 = MEMORY[0x277CDF3C0];
    }

    v30 = v66;
    v31 = v72;
    (*(v8 + 104))(v66, *v29, v72);
    KeyPath = swift_getKeyPath();
    v33 = &v15[*(v69 + 36)];
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED570, &qword_23D8E0D00);
    (*(v8 + 32))(v33 + *(v34 + 28), v30, v31);
    *v33 = KeyPath;
    sub_23D83C744(v13, v15, &qword_27E2EDCD0, &qword_23D8E15F8);
    v35 = v65;
    sub_23D8DD760();
    sub_23D855448();
    sub_23D856D84(&qword_27E2ED300, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
    v36 = v70;
    v37 = v76;
    sub_23D8DDD10();
    (*(v75 + 8))(v35, v37);
    sub_23D83C6E4(v15, &qword_27E2EDCB8, &qword_23D8E15F0);
    v38 = &v18[*(v71 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDCF0, &qword_23D8E1608);
    sub_23D8DD0E0();
    *v38 = 0;
    (*(v73 + 32))(v18, v36, v74);
    sub_23D855304();
    v39 = v68;
    sub_23D8DDEE0();
    sub_23D83C6E4(v18, &qword_27E2EDCB0, &qword_23D8E15E8);
    if (qword_27E2ECEC8 != -1)
    {
      swift_once();
    }

    v40 = 0xED0000756E656D2ELL;
    v41 = 0x65726F6D2E727861;
    if (qword_27E2F3C80)
    {
      v42 = qword_27E2F3C80;
      v43 = sub_23D8DE830();
      v44 = sub_23D8DE830();
      v45 = [v42 localizedStringForKey:v43 value:0 table:v44];

      v41 = sub_23D8DE870();
      v40 = v46;
    }

    v89 = v41;
    v90 = v40;
    sub_23D83CB18();
    v47 = v77;
    sub_23D8DCFD0();

    sub_23D83C6E4(v39, &qword_27E2EDC90, &qword_23D8E15D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDC98, &qword_23D8E15E0);
    sub_23D855248();
    sub_23D835AD0(&qword_27E2EDCF8, &qword_27E2EDC98, &qword_23D8E15E0, MEMORY[0x277CE1198]);
    v48 = v79;
    sub_23D8DDF70();
    sub_23D83C6E4(v47, &qword_27E2EDC90, &qword_23D8E15D8);
    v49 = v67;
    v50 = v67 + *(v82 + 52);
    v51 = *v50;
    v52 = *(v50 + 8);
    LOBYTE(v92[0]) = v51;
    v93 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
    sub_23D8DE340();
    v53 = v90;
    v82 = v89;
    v54 = v91;
    v55 = v84;
    sub_23D853140(v49, v84);
    v56 = (*(v83 + 80) + 16) & ~*(v83 + 80);
    v57 = swift_allocObject();
    sub_23D855DF8(v55, v57 + v56, type metadata accessor for AXRFullScreenView);
    v58 = v86;
    sub_23D853140(v49, v86);
    v59 = swift_allocObject();
    sub_23D855DF8(v58, v59 + v56, type metadata accessor for AXRFullScreenView);
    IsPad = AXDeviceIsPad();
    v61 = v87;
    (*(v80 + 32))(v87, v48, v81);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDC80, &qword_23D8E15D0);
    v63 = v61 + *(result + 36);
    *v63 = IsPad;
    *(v63 + 1) = v89;
    *(v63 + 4) = *(&v89 + 3);
    *(v63 + 8) = v82;
    *(v63 + 16) = v53;
    *(v63 + 24) = v54;
    *(v63 + 25) = v92[0];
    *(v63 + 28) = *(v92 + 3);
    *(v63 + 32) = sub_23D855A74;
    *(v63 + 40) = v57;
    *(v63 + 48) = sub_23D8570DC;
    *(v63 + 56) = v59;
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D846824()
{
  sub_23D8DD480();
  v0 = sub_23D8DDC90();
  v2 = v1;
  v4 = v3 & 1;
  sub_23D8DDE40();
  sub_23D83CB6C(v0, v2, v4);
}

void sub_23D8468E0(id *a1)
{
  v2 = type metadata accessor for AXRFullScreenView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D8DEA70();
  v6 = MEMORY[0x23EEF0BB0]();
  v7 = *MEMORY[0x277CE7930];
  swift_beginAccess();
  v8 = *(v6 + v7);

  LOBYTE(v6) = sub_23D8DEA40();
  if (v6)
  {
    sub_23D8DC900();
    sub_23D856D84(&qword_27E2ED250, MEMORY[0x277CE73E8], MEMORY[0x277CE73E0]);
    sub_23D8DCD40();
    sub_23D8DC8C0();

    if (!*a1)
    {
      goto LABEL_8;
    }

    v9 = *a1;
    sub_23D8DC3A0();
  }

  v10 = [objc_opt_self() defaultCenter];
  if (qword_27E2ECEA8 != -1)
  {
    swift_once();
  }

  v11 = qword_27E2F3C60;
  v12 = [objc_opt_self() mainQueue];
  sub_23D853140(a1, &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  sub_23D855DF8(v5, v14 + v13, type metadata accessor for AXRFullScreenView);
  aBlock[4] = sub_23D854938;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D8470CC;
  aBlock[3] = &block_descriptor;
  v15 = _Block_copy(aBlock);

  v16 = [v10 addObserverForName:v11 object:0 queue:v12 usingBlock:v15];
  _Block_release(v15);
  swift_unknownObjectRelease();

  v17 = *a1;
  if (*a1)
  {
    sub_23D8DC900();
    sub_23D856D84(&qword_27E2ED250, MEMORY[0x277CE73E8], MEMORY[0x277CE73E0]);
    v18 = v17;
    sub_23D8DCD40();
    sub_23D8DC8B0();

    sub_23D8DC360();

    return;
  }

LABEL_8:
  sub_23D8DC430();
  sub_23D856D84(&unk_27E2F0420, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);
  sub_23D8DD120();
  __break(1u);
}

double sub_23D846CE8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AXRFullScreenView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED120, &qword_23D8E03E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = (a2 + *(v4 + 92));
  v12 = *v11;
  v13 = *(v11 + 1);
  LOBYTE(v22) = v12;
  *(&v22 + 1) = v13;
  LOBYTE(v21) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE330();
  v22 = *(a2 + *(v4 + 96));
  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDBE0, &qword_23D8E1538);
  sub_23D8DE330();
  v14 = sub_23D8DEA00();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  sub_23D853140(a2, v7);
  sub_23D8DE9D0();
  v15 = sub_23D8DE9C0();
  v16 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v15;
  *(v17 + 24) = v18;
  sub_23D855DF8(v7, v17 + v16, type metadata accessor for AXRFullScreenView);
  sub_23D870938(0, 0, v10, &unk_23D8E1558, v17);

  return result;
}

uint64_t sub_23D846F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_23D8DE9D0();
  *(v4 + 24) = sub_23D8DE9C0();
  v6 = sub_23D8DE9B0();

  return MEMORY[0x2822009F8](sub_23D846FCC, v6, v5);
}

uint64_t sub_23D846FCC()
{
  v1 = *(v0 + 16);

  if (*v1)
  {
    v2 = *v1;
    v3 = sub_23D8DC280();

    if (v3)
    {
      sub_23D8409FC();
    }

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    sub_23D8DC430();
    sub_23D856D84(&unk_27E2F0420, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);

    return sub_23D8DD120();
  }
}

uint64_t sub_23D8470CC(uint64_t a1, uint64_t a2)
{
  v3 = sub_23D8DBE10();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_23D8DBDF0();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

void sub_23D8471C0(uint64_t a1, char *a2, void **a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F0410, &unk_23D8E1540);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - v6;
  v8 = *a3;
  if (*a3)
  {
    v9 = *a2;
    v10 = v8;
    sub_23D8DC360();

    if (v9)
    {
      v11 = v10;
      v12 = sub_23D8DC280();

      if (v12)
      {
        sub_23D8DC5E0();
        v13 = sub_23D8DC5D0();
        v14 = v11;
        v15 = sub_23D8DC410();
        if (*(v15 + 16))
        {
          v16 = v15;
          v17 = sub_23D8DC170();
          v18 = *(v17 - 8);
          (*(v18 + 16))(v7, v16 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), v17);

          (*(v18 + 56))(v7, 0, 1, v17);
        }

        else
        {

          v20 = sub_23D8DC170();
          (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
        }

        sub_23D8DC5C0();

        sub_23D83C6E4(v7, &unk_27E2F0410, &unk_23D8E1540);
      }
    }

    else
    {
      sub_23D8DC5E0();
      v22 = sub_23D8DC5D0();
      sub_23D8DC5B0();
      v19 = v22;
    }
  }

  else
  {
    sub_23D8DC430();
    sub_23D856D84(&unk_27E2F0420, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);
    sub_23D8DD120();
    __break(1u);
  }
}

void sub_23D847474(uint64_t a1, uint64_t a2, void **a3)
{
  sub_23D8DEA70();
  v4 = MEMORY[0x23EEF0BB0]();
  v5 = *MEMORY[0x277CE7930];
  swift_beginAccess();
  v6 = *(v4 + v5);

  LOBYTE(v4) = sub_23D8DEA40();
  if (v4)
  {
    sub_23D8DC900();
    sub_23D856D84(&qword_27E2ED250, MEMORY[0x277CE73E8], MEMORY[0x277CE73E0]);
    sub_23D8DCD40();
    sub_23D8DC8C0();

    v7 = *a3;
    if (*a3)
    {
      v8 = v7;
      sub_23D8DC3A0();

LABEL_5:
      sub_23D8DC900();
      sub_23D856D84(&qword_27E2ED250, MEMORY[0x277CE73E8], MEMORY[0x277CE73E0]);
      v9 = v7;
      sub_23D8DCD40();
      sub_23D8DC8B0();

      sub_23D8DC360();

      return;
    }
  }

  else
  {
    v7 = *a3;
    if (*a3)
    {
      goto LABEL_5;
    }
  }

  sub_23D8DC430();
  sub_23D856D84(&unk_27E2F0420, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);
  sub_23D8DD120();
  __break(1u);
}

void sub_23D847688(uint64_t a1)
{
  v2 = type metadata accessor for AXRFullScreenView(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() defaultCenter];
  sub_23D853140(a1, v4);
  v6 = sub_23D8DED30();
  if (qword_27E2ECEA8 != -1)
  {
    swift_once();
  }

  [v5 removeObserver:v6 name:qword_27E2F3C60 object:0];

  swift_unknownObjectRelease();
  v7 = (a1 + *(v2 + 88));
  v9 = v7[1];
  v14 = *v7;
  v8 = v14;
  v15 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDBE0, &qword_23D8E1538);
  sub_23D8DE320();
  v10 = v13;
  [v13 invalidate];

  v14 = v8;
  v15 = v9;
  v13 = 0;
  sub_23D8DE330();
  sub_23D8DC5E0();
  v11 = sub_23D8DC5D0();
  sub_23D8DC5B0();
}

uint64_t sub_23D847820@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v2 = sub_23D8DD980();
  v64 = *(v2 - 8);
  v65 = v2;
  MEMORY[0x28223BE20](v2);
  v63 = v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED900, &qword_23D8E12B8);
  MEMORY[0x28223BE20](v4 - 8);
  v61 = v45 - v5;
  v52 = sub_23D8DD950();
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v48 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED908, &qword_23D8E12C0);
  MEMORY[0x28223BE20](v7 - 8);
  v45[2] = v45 - v8;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED910, &qword_23D8E12C8);
  v50 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v10 = v45 - v9;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED918, &qword_23D8E12D0);
  v55 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v47 = v45 - v11;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED920, &qword_23D8E12D8);
  v57 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v54 = v45 - v12;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED928, &qword_23D8E12E0);
  v56 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v53 = v45 - v13;
  v49 = type metadata accessor for AXRFullScreenView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5D8, &unk_23D8E0EA0);
  sub_23D8DE340();
  v62 = v1;
  v67 = v1;
  v45[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED930, &qword_23D8E12E8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED938, &qword_23D8E12F0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED940, &qword_23D8E12F8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED948, &qword_23D8E1300);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED950, &qword_23D8E1308);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED958, &qword_23D8E1310);
  v19 = sub_23D835AD0(&qword_27E2ED960, &qword_27E2ED958, &qword_23D8E1310, MEMORY[0x277CE11A8]);
  v68 = v18;
  v69 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED968, &qword_23D8E1318);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED970, &qword_23D8E1320);
  v23 = sub_23D835AD0(&qword_27E2ED978, &qword_27E2ED970, &qword_23D8E1320, MEMORY[0x277CDD7A8]);
  v68 = v22;
  v69 = v23;
  v24 = v46;
  v25 = swift_getOpaqueTypeConformance2();
  v68 = v21;
  v69 = v25;
  v26 = swift_getOpaqueTypeConformance2();
  v68 = v16;
  v69 = v17;
  v70 = OpaqueTypeConformance2;
  v71 = v26;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = sub_23D83CAC4();
  v29 = sub_23D853304();
  v68 = v14;
  v69 = &type metadata for AXRStage;
  v70 = v15;
  v71 = v27;
  v30 = v47;
  v72 = v28;
  v73 = v29;
  swift_getOpaqueTypeConformance2();
  sub_23D8DD030();
  v68 = sub_23D8DE230();
  v31 = v48;
  sub_23D8DD940();
  v32 = sub_23D835AD0(&qword_27E2EDB08, &qword_27E2ED910, &qword_23D8E12C8, MEMORY[0x277CDDA18]);
  v33 = MEMORY[0x277CE0F60];
  sub_23D8DDE60();
  (*(v51 + 8))(v31, v52);

  (*(v50 + 8))(v10, v24);
  LODWORD(v27) = AXDeviceIsPad();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDB10, &qword_23D8E1418);
  sub_23D8DD4D0();
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_23D8E0D60;
  sub_23D8DD4B0();
  if (v27)
  {
    sub_23D8DD4A0();
  }

  else
  {
    sub_23D8DD4C0();
  }

  sub_23D854344(v34);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5E8, &qword_23D8E0EB8);
  v35 = v61;
  sub_23D8DE340();
  v68 = v24;
  v69 = MEMORY[0x277CE0F78];
  v70 = v32;
  v71 = v33;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = v54;
  v38 = v58;
  sub_23D8DDE90();

  sub_23D83C6E4(v35, &qword_27E2ED900, &qword_23D8E12B8);
  (*(v55 + 8))(v30, v38);
  v39 = v63;
  sub_23D8DD970();
  v68 = v38;
  v69 = v36;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = v53;
  v42 = v60;
  sub_23D8DDF60();
  (*(v64 + 8))(v39, v65);
  (*(v57 + 8))(v37, v42);
  v68 = v42;
  v69 = v40;
  swift_getOpaqueTypeConformance2();
  v43 = v59;
  sub_23D8DDE50();
  return (*(v56 + 8))(v41, v43);
}

uint64_t sub_23D84821C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v40 = a2;
  v3 = type metadata accessor for AXRFullScreenView(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v34 = v5;
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDDC0, &qword_23D8E1680);
  v41 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDDC8, &qword_23D8E1688);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v39 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v38 = &v32 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v37 = &v32 - v15;
  MEMORY[0x28223BE20](v14);
  v33 = &v32 - v16;
  sub_23D853140(a1, v6);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_23D855DF8(v6, v18 + v17, type metadata accessor for AXRFullScreenView);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDDD0, &qword_23D8E1690);
  sub_23D835AD0(&qword_27E2EDDD8, &qword_27E2EDDD0, &qword_23D8E1690, MEMORY[0x277CE1138]);
  sub_23D8DE360();
  sub_23D835AD0(&qword_27E2EDDE0, &qword_27E2EDDC0, &qword_23D8E1680, MEMORY[0x277CDF028]);
  v19 = v36;
  sub_23D8DDEE0();
  v20 = *(v41 + 8);
  v41 += 8;
  v20(v8, v19);
  v21 = v35;
  sub_23D853140(v35, v6);
  v22 = swift_allocObject();
  sub_23D855DF8(v6, v22 + v17, type metadata accessor for AXRFullScreenView);
  v42 = v21;
  sub_23D8DE360();
  v23 = v37;
  sub_23D8DDEE0();
  v20(v8, v19);
  v24 = v33;
  v25 = v38;
  sub_23D83C67C(v33, v38, &qword_27E2EDDC8, &qword_23D8E1688);
  v26 = v23;
  v27 = v23;
  v28 = v39;
  sub_23D83C67C(v26, v39, &qword_27E2EDDC8, &qword_23D8E1688);
  v29 = v40;
  sub_23D83C67C(v25, v40, &qword_27E2EDDC8, &qword_23D8E1688);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDDE8, &qword_23D8E1698);
  sub_23D83C67C(v28, v29 + *(v30 + 48), &qword_27E2EDDC8, &qword_23D8E1688);
  sub_23D83C6E4(v27, &qword_27E2EDDC8, &qword_23D8E1688);
  sub_23D83C6E4(v24, &qword_27E2EDDC8, &qword_23D8E1688);
  sub_23D83C6E4(v28, &qword_27E2EDDC8, &qword_23D8E1688);
  return sub_23D83C6E4(v25, &qword_27E2EDDC8, &qword_23D8E1688);
}

__n128 sub_23D848720@<Q0>(__n128 *a2@<X8>)
{
  v3 = sub_23D8DD420();
  v16 = 1;
  sub_23D84879C(v11);
  v4 = v11[0];
  v5 = v11[1];
  v6 = v12;
  v7 = v14;
  v8 = v15;
  result = v13;
  v10 = v16;
  a2->n128_u64[0] = v3;
  a2->n128_u64[1] = 0;
  a2[1].n128_u8[0] = v10;
  a2[1].n128_u64[1] = v4;
  a2[2].n128_u64[0] = v5;
  a2[2].n128_u8[8] = v6;
  a2[3] = result;
  a2[4].n128_u8[0] = v7;
  a2[4].n128_u64[1] = v8;
  return result;
}

uint64_t sub_23D84879C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23D8DE2C0();
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  if (qword_27E2F3C80)
  {
    v3 = qword_27E2F3C80;
    v4 = sub_23D8DE830();
    v5 = sub_23D8DE830();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    sub_23D8DE870();
  }

  sub_23D83CB18();
  v7 = sub_23D8DDCB0();
  v9 = v8;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v11 = v10 & 1;
  *(a1 + 40) = v10 & 1;
  *(a1 + 48) = v12;

  sub_23D834028(v7, v9, v11);

  sub_23D83CB6C(v7, v9, v11);
}

double sub_23D848954(uint64_t a1)
{
  sub_23D8DC900();
  sub_23D856D84(&qword_27E2ED250, MEMORY[0x277CE73E8], MEMORY[0x277CE73E0]);
  sub_23D8DCD40();
  v1 = sub_23D8DC8A0();
  *v2 = !*v2;
  v1(&v4, 0);

  return result;
}

__n128 sub_23D848A20@<Q0>(__n128 *a2@<X8>)
{
  v3 = sub_23D8DD420();
  v16 = 1;
  sub_23D848AAC(v11);
  v4 = v11[0];
  v5 = v11[1];
  v6 = v12;
  v7 = v14;
  v8 = v15;
  result = v13;
  v10 = v16;
  a2->n128_u64[0] = v3;
  a2->n128_u64[1] = 0;
  a2[1].n128_u8[0] = v10;
  a2[1].n128_u64[1] = v4;
  a2[2].n128_u64[0] = v5;
  a2[2].n128_u8[8] = v6;
  a2[3] = result;
  a2[4].n128_u8[0] = v7;
  a2[4].n128_u64[1] = v8;
  return result;
}

uint64_t sub_23D848AAC@<X0>(uint64_t a2@<X8>)
{
  sub_23D8DC900();
  sub_23D856D84(&qword_27E2ED250, MEMORY[0x277CE73E8], MEMORY[0x277CE73E0]);
  sub_23D8DCD40();
  sub_23D8DC8B0();

  v3 = sub_23D8DE2C0();
  sub_23D8DCD40();
  sub_23D8DC8B0();

  AXRMoreActions.title.getter(v4);
  sub_23D83CB18();
  v5 = sub_23D8DDCB0();
  v7 = v6;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  v9 = v8 & 1;
  *(a2 + 40) = v8 & 1;
  *(a2 + 48) = v10;

  sub_23D834028(v5, v7, v9);

  sub_23D83CB6C(v5, v7, v9);
}

__n128 sub_23D848C68@<Q0>(__n128 *a1@<X8>)
{
  sub_23D8DC9F0();
  sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
  v2 = sub_23D8DD140();
  v4 = v3;
  sub_23D8DE310();
  sub_23D8DE310();
  result = v6;
  *a1 = v6;
  a1[1].n128_u64[0] = v7;
  a1[1].n128_u16[4] = 257;
  a1[2].n128_u64[0] = v2;
  a1[2].n128_u64[1] = v4;
  a1[3].n128_u8[0] = v6.n128_u8[0];
  a1[3].n128_u64[1] = v6.n128_u64[1];
  return result;
}

__n128 sub_23D848D64@<Q0>(__n128 *a2@<X8>)
{
  v3 = sub_23D8DD560();
  sub_23D848DD0(&v8);
  v4 = v8;
  v5 = v10;
  v6 = v11;
  result = v9;
  a2->n128_u64[0] = v3;
  a2->n128_u64[1] = 0;
  a2[1].n128_u8[0] = 1;
  a2[1].n128_u64[1] = v4;
  a2[2] = result;
  a2[3].n128_u8[0] = v5;
  a2[3].n128_u64[1] = v6;
  return result;
}

uint64_t sub_23D848DD0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23D8DE2C0();
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  if (qword_27E2F3C80)
  {
    v3 = qword_27E2F3C80;
    v4 = sub_23D8DE830();
    v5 = sub_23D8DE830();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    sub_23D8DE870();
  }

  sub_23D83CB18();
  v7 = sub_23D8DDCB0();
  v9 = v8;
  *a1 = v2;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  v11 = v10 & 1;
  *(a1 + 24) = v10 & 1;
  *(a1 + 32) = v12;

  sub_23D834028(v7, v9, v11);

  sub_23D83CB6C(v7, v9, v11);
}

uint64_t sub_23D848F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDDA0, &qword_23D8E1660);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDDA8, &qword_23D8E1668);
  MEMORY[0x28223BE20](v8);
  v10 = v22 - v9;
  sub_23D847820(v7);
  sub_23D83DBE8();
  v11 = (a1 + *(type metadata accessor for AXRFullScreenView(0) + 96));
  v12 = *v11;
  v13 = *(v11 + 1);
  LOBYTE(v26) = *v11;
  *(&v26 + 1) = v13;
  v22[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE320();
  if (qword_27E2ECEB0 != -1)
  {
    swift_once();
  }

  sub_23D8DE5F0();
  sub_23D8DD0D0();
  (*(v5 + 32))(v10, v7, v4);
  v14 = &v10[*(v8 + 36)];
  v15 = v31;
  *(v14 + 4) = v30;
  *(v14 + 5) = v15;
  *(v14 + 6) = v32;
  v16 = v27;
  *v14 = v26;
  *(v14 + 1) = v16;
  v17 = v29;
  *(v14 + 2) = v28;
  *(v14 + 3) = v17;
  v18 = sub_23D8DE620();
  v24 = v12;
  v25 = v13;
  sub_23D8DE320();
  v19 = v23;
  sub_23D83C744(v10, a2, &qword_27E2EDDA8, &qword_23D8E1668);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDDB0, &unk_23D8E1670);
  v21 = a2 + *(result + 36);
  *v21 = v18;
  *(v21 + 8) = v19;
  return result;
}

uint64_t sub_23D8492F8(uint64_t a1)
{
  v2 = sub_23D8DCEE0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v14[-v7];
  sub_23D8DC900();
  sub_23D856D84(&qword_27E2ED250, MEMORY[0x277CE73E8], MEMORY[0x277CE73E0]);
  sub_23D8DCD40();
  v9 = sub_23D8DC8B0();

  if (v9)
  {
    v10 = (a1 + *(type metadata accessor for AXRFullScreenView(0) + 40));
    v11 = *v10;
    v12 = *(v10 + 1);
    v14[16] = v11;
    v15 = v12;
    v14[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
    sub_23D8DE330();
  }

  sub_23D8DCED0();
  type metadata accessor for AXRFullScreenView(0);
  (*(v3 + 16))(v6, v8, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5D8, &unk_23D8E0EA0);
  sub_23D8DE330();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_23D84950C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for AXRFullScreenView(0);
  v43 = *(v3 - 8);
  v42 = *(v43 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v41 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23D8DD3D0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED958, &qword_23D8E1310);
  MEMORY[0x28223BE20](v9);
  v11 = (&v35 - v10);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED948, &qword_23D8E1300);
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED938, &qword_23D8E12F0);
  v15 = *(v14 - 8);
  v39 = v14;
  v40 = v15;
  MEMORY[0x28223BE20](v14);
  v37 = &v35 - v16;
  *v11 = sub_23D8DE5F0();
  v11[1] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDB30, &qword_23D8E1428);
  sub_23D849ABC(a1, v11 + *(v18 + 44));
  (*(v6 + 104))(v8, *MEMORY[0x277CDDDC0], v5);
  v19 = sub_23D835AD0(&qword_27E2ED960, &qword_27E2ED958, &qword_23D8E1310, MEMORY[0x277CE11A8]);
  sub_23D8DDF20();
  (*(v6 + 8))(v8, v5);
  sub_23D83C6E4(v11, &qword_27E2ED958, &qword_23D8E1310);
  v45 = a1;
  v20 = a1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED950, &qword_23D8E1308);
  v46 = v9;
  v47 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED968, &qword_23D8E1318);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED970, &qword_23D8E1320);
  v25 = sub_23D835AD0(&qword_27E2ED978, &qword_27E2ED970, &qword_23D8E1320, MEMORY[0x277CDD7A8]);
  v46 = v24;
  v47 = v25;
  v26 = swift_getOpaqueTypeConformance2();
  v46 = v23;
  v47 = v26;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = v36;
  v29 = v37;
  sub_23D8DE040();
  (*(v38 + 8))(v13, v28);
  v30 = v41;
  sub_23D853140(v20, v41);
  v31 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v32 = swift_allocObject();
  sub_23D855DF8(v30, v32 + v31, type metadata accessor for AXRFullScreenView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED940, &qword_23D8E12F8);
  v46 = v28;
  v47 = v21;
  v48 = OpaqueTypeConformance2;
  v49 = v27;
  swift_getOpaqueTypeConformance2();
  sub_23D83CAC4();
  sub_23D853304();
  v33 = v39;
  sub_23D8DDEC0();

  return (*(v40 + 8))(v29, v33);
}

uint64_t sub_23D849ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = type metadata accessor for AXRFullScreenView(0);
  v4 = v3 - 8;
  v72 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v73 = v5;
  v74 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED280, &qword_23D8E09D0);
  MEMORY[0x28223BE20](v6 - 8);
  v71 = &v58 - v7;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED260, &qword_23D8E08F8);
  v8 = MEMORY[0x28223BE20](v64);
  v63 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v58 - v10;
  v12 = type metadata accessor for AXRPresetSelectView(0);
  v13 = (v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDBC0, &qword_23D8E1518);
  MEMORY[0x28223BE20](v65);
  v67 = &v58 - v16;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDBC8, &qword_23D8E1520);
  MEMORY[0x28223BE20](v66);
  v69 = &v58 - v17;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDBD0, &qword_23D8E1528);
  MEMORY[0x28223BE20](v68);
  v70 = &v58 - v18;
  v59 = a1;
  sub_23D8DC900();
  sub_23D856D84(&qword_27E2ED250, MEMORY[0x277CE73E8], MEMORY[0x277CE73E0]);
  sub_23D8DCD40();
  v19 = sub_23D8DC140();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  v20 = (a1 + *(v4 + 40));
  v21 = *v20;
  v22 = v20[1];
  *v15 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  swift_storeEnumTagMultiPayload();
  sub_23D83BCC8(v21, v22);
  v23 = sub_23D8DC9F0();
  v61 = sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
  v62 = v23;
  v24 = sub_23D8DD140();
  v25 = (v15 + v13[7]);
  *v25 = v24;
  v25[1] = v26;
  v27 = (v15 + v13[8]);
  sub_23D8DC430();
  v60 = sub_23D856D84(&unk_27E2F0420, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);
  *v27 = sub_23D8DD140();
  v27[1] = v28;
  v29 = (v15 + v13[9]);
  *v29 = sub_23D8DCEF0();
  v29[1] = v30;
  sub_23D83C67C(v11, v63, &qword_27E2ED260, &qword_23D8E08F8);
  sub_23D8DE310();
  sub_23D83C6E4(v11, &qword_27E2ED260, &qword_23D8E08F8);
  v31 = v15 + v13[11];
  v76 = 0;
  sub_23D8DE310();
  v32 = v78;
  *v31 = v77;
  *(v31 + 1) = v32;
  v33 = (v15 + v13[12]);
  *v33 = v21;
  v33[1] = v22;
  v34 = v59;
  *(v15 + v13[13]) = 2;
  v35 = v34[2];
  if (v35)
  {
    sub_23D856774(0, &qword_27E2ED2A8, 0x277D75348);

    sub_23D8DC960();

    sub_23D8DC7E0();

    v36 = sub_23D8DEB80();
    v37 = sub_23D8DEB70();

    v38 = sub_23D8DCCB0();
    v39 = *(v38 - 8);
    v40 = MEMORY[0x277CDF3D0];
    if ((v37 & 1) == 0)
    {
      v40 = MEMORY[0x277CDF3C0];
    }

    v41 = v71;
    (*(*(v38 - 8) + 104))(v71, *v40, v38);
    (*(v39 + 56))(v41, 0, 1, v38);
    v42 = v67;
    sub_23D83C744(v41, &v67[*(v65 + 36)], &qword_27E2ED280, &qword_23D8E09D0);
    sub_23D855DF8(v15, v42, type metadata accessor for AXRPresetSelectView);

    v43 = sub_23D8DCB10();
    v44 = v42;
    v45 = v69;
    sub_23D83C744(v44, v69, &qword_27E2EDBC0, &qword_23D8E1518);
    v46 = (v45 + *(v66 + 36));
    *v46 = v43;
    v46[1] = v35;
    v47 = *v34;
    if (*v34)
    {
      v48 = v47;
      v49 = sub_23D8DCB10();
      v50 = v70;
      sub_23D83C744(v45, v70, &qword_27E2EDBC8, &qword_23D8E1520);
      v51 = (v50 + *(v68 + 36));
      *v51 = v49;
      v51[1] = v47;
      v52 = v74;
      sub_23D853140(v34, v74);
      v53 = (*(v72 + 80) + 16) & ~*(v72 + 80);
      v54 = swift_allocObject();
      sub_23D855DF8(v52, v54 + v53, type metadata accessor for AXRFullScreenView);
      v55 = v75;
      sub_23D83C744(v50, v75, &qword_27E2EDBD0, &qword_23D8E1528);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDBD8, &qword_23D8E1530);
      v57 = (v55 + *(result + 36));
      *v57 = sub_23D854904;
      v57[1] = v54;
      v57[2] = 0;
      v57[3] = 0;
      return result;
    }
  }

  else
  {
    sub_23D8DD120();
    __break(1u);
  }

  result = sub_23D8DD120();
  __break(1u);
  return result;
}

uint64_t sub_23D84A2BC(uint64_t a1)
{
  v2 = sub_23D8DD4D0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v20[-v7];
  sub_23D8DD4C0();
  v9 = type metadata accessor for AXRFullScreenView(0);
  (*(v3 + 16))(v6, v8, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5E8, &qword_23D8E0EB8);
  sub_23D8DE330();
  (*(v3 + 8))(v8, v2);
  v10 = (a1 + v9[24]);
  v11 = *v10;
  v12 = *(v10 + 1);
  v22 = v11;
  v23 = v12;
  v21 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE330();
  v13 = (a1 + v9[10]);
  v14 = *v13;
  v15 = *(v13 + 1);
  v22 = v14;
  v23 = v15;
  v21 = 0;
  sub_23D8DE330();
  v16 = (a1 + v9[11]);
  v17 = *v16;
  v18 = *(v16 + 1);
  v22 = v17;
  v23 = v18;
  v21 = 1;
  return sub_23D8DE330();
}

uint64_t sub_23D84A4A8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v440 = a3;
  v329 = type metadata accessor for AXRFullScreenView(0);
  v359 = *(v329 - 8);
  MEMORY[0x28223BE20](v329);
  v360 = v5;
  v361 = &v328 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v349 = sub_23D8DD8F0();
  v348 = *(v349 - 8);
  MEMORY[0x28223BE20](v349);
  v345 = &v328 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE9E0, &qword_23D8E26D0);
  v7 = MEMORY[0x28223BE20](v332);
  v331 = &v328 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v330 = &v328 - v9;
  v333 = type metadata accessor for AXRTextFormatterSheet(0);
  MEMORY[0x28223BE20](v333);
  v335 = (&v328 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDAD8, &qword_23D8E1400);
  MEMORY[0x28223BE20](v334);
  v336 = &v328 - v11;
  v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDAC0, &qword_23D8E13F8);
  MEMORY[0x28223BE20](v339);
  v337 = &v328 - v12;
  v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDAB8, &qword_23D8E13F0);
  v340 = *(v341 - 8);
  MEMORY[0x28223BE20](v341);
  v338 = &v328 - v13;
  v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDAA8, &qword_23D8E13E0);
  v344 = *(v347 - 8);
  MEMORY[0x28223BE20](v347);
  v342 = &v328 - v14;
  v350 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDAA0, &qword_23D8E13D8);
  v346 = *(v350 - 8);
  MEMORY[0x28223BE20](v350);
  v343 = &v328 - v15;
  v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDA98, &qword_23D8E13D0);
  v354 = *(v355 - 8);
  MEMORY[0x28223BE20](v355);
  v351 = &v328 - v16;
  v357 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDB38, &qword_23D8E1430);
  v356 = *(v357 - 8);
  MEMORY[0x28223BE20](v357);
  v353 = &v328 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDA90, &qword_23D8E13C8);
  v19 = MEMORY[0x28223BE20](v18);
  v352 = &v328 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v358 = &v328 - v21;
  v371 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDB40, &qword_23D8E1438);
  MEMORY[0x28223BE20](v371);
  v374 = &v328 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDA70, &qword_23D8E13B0);
  MEMORY[0x28223BE20](v23);
  v25 = &v328 - v24;
  v370 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDA80, &qword_23D8E13C0);
  v365 = *(v370 - 8);
  MEMORY[0x28223BE20](v370);
  v364 = &v328 - v26;
  v372 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDA78, &qword_23D8E13B8);
  v367 = *(v372 - 8);
  MEMORY[0x28223BE20](v372);
  v366 = &v328 - v27;
  v373 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDB48, &qword_23D8E1440);
  v369 = *(v373 - 8);
  MEMORY[0x28223BE20](v373);
  v368 = &v328 - v28;
  v382 = type metadata accessor for AXRHyperlinkColorSelectionView(0);
  v29 = MEMORY[0x28223BE20](v382);
  v362 = (&v328 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v29);
  v375 = (&v328 - v31);
  v402 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDA50, &qword_23D8E13A8);
  v32 = MEMORY[0x28223BE20](v402);
  v363 = &v328 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v376 = &v328 - v34;
  v396 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDA48, &qword_23D8E13A0);
  v378 = *(v396 - 8);
  MEMORY[0x28223BE20](v396);
  v377 = &v328 - v35;
  v399 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDA40, &qword_23D8E1398);
  v380 = *(v399 - 8);
  MEMORY[0x28223BE20](v399);
  v379 = &v328 - v36;
  v401 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDB50, &qword_23D8E1448);
  v381 = *(v401 - 8);
  MEMORY[0x28223BE20](v401);
  v383 = &v328 - v37;
  v395 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDB58, &qword_23D8E1450);
  MEMORY[0x28223BE20](v395);
  v398 = &v328 - v38;
  v432 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDA10, &qword_23D8E1378);
  MEMORY[0x28223BE20](v432);
  v400 = &v328 - v39;
  v384 = type metadata accessor for AXRHighlightColorSelectionView(0);
  MEMORY[0x28223BE20](v384);
  v385 = (&v328 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v392 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDA28, &qword_23D8E1390);
  MEMORY[0x28223BE20](v392);
  v386 = &v328 - v41;
  v393 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDA20, &qword_23D8E1388);
  v388 = *(v393 - 8);
  MEMORY[0x28223BE20](v393);
  v387 = &v328 - v42;
  v394 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDA18, &qword_23D8E1380);
  v390 = *(v394 - 8);
  MEMORY[0x28223BE20](v394);
  v389 = &v328 - v43;
  v397 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDB60, &qword_23D8E1458);
  v391 = *(v397 - 8);
  MEMORY[0x28223BE20](v397);
  v403 = &v328 - v44;
  v404 = type metadata accessor for AXRBackgroundColorSelectionView(0);
  MEMORY[0x28223BE20](v404);
  v405 = (&v328 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v422 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED9F0, &qword_23D8E1370);
  MEMORY[0x28223BE20](v422);
  v406 = &v328 - v46;
  v423 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED9E8, &qword_23D8E1368);
  v408 = *(v423 - 8);
  MEMORY[0x28223BE20](v423);
  v407 = &v328 - v47;
  v426 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED9E0, &qword_23D8E1360);
  v410 = *(v426 - 8);
  MEMORY[0x28223BE20](v426);
  v409 = &v328 - v48;
  v427 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDB68, &qword_23D8E1460);
  v411 = *(v427 - 8);
  MEMORY[0x28223BE20](v427);
  v412 = &v328 - v49;
  v437 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDB70, &qword_23D8E1468);
  MEMORY[0x28223BE20](v437);
  v438 = &v328 - v50;
  v428 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDB78, &qword_23D8E1470);
  MEMORY[0x28223BE20](v428);
  v430 = &v328 - v51;
  v420 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDB80, &qword_23D8E1478);
  MEMORY[0x28223BE20](v420);
  v424 = &v328 - v52;
  v429 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED9A0, &qword_23D8E1330);
  MEMORY[0x28223BE20](v429);
  v425 = &v328 - v53;
  v436 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED990, &qword_23D8E1328);
  MEMORY[0x28223BE20](v436);
  v431 = &v328 - v54;
  v55 = sub_23D8DD950();
  v434 = *(v55 - 8);
  v435 = v55;
  MEMORY[0x28223BE20](v55);
  v433 = &v328 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for AXRTextColorSelectionView(0);
  MEMORY[0x28223BE20](v57);
  v59 = (&v328 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  v417 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED9B8, &qword_23D8E1348);
  MEMORY[0x28223BE20](v417);
  v61 = &v328 - v60;
  v418 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED9B0, &qword_23D8E1340);
  v62 = *(v418 - 8);
  MEMORY[0x28223BE20](v418);
  v64 = &v328 - v63;
  v419 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED9A8, &qword_23D8E1338);
  v415 = *(v419 - 8);
  MEMORY[0x28223BE20](v419);
  v414 = &v328 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDB88, &qword_23D8E1480);
  v67 = MEMORY[0x28223BE20](v66);
  v68 = *a1;
  v439 = v23;
  v421 = v67;
  v416 = v69;
  v441 = &v328 - v70;
  v413 = v62;
  if (v68 <= 1)
  {
    if (v68)
    {

LABEL_9:
      *v59 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
      swift_storeEnumTagMultiPayload();
      v73 = *(v57 + 20);
      *(v59 + v73) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
      swift_storeEnumTagMultiPayload();
      v74 = (v59 + *(v57 + 24));
      sub_23D8DC9F0();
      sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
      *v74 = sub_23D8DD140();
      v74[1] = v75;
      v76 = *(a2 + 16);
      if (v76)
      {

        v77 = sub_23D8DCB10();
        v78 = sub_23D855DF8(v59, v61, type metadata accessor for AXRTextColorSelectionView);
        v79 = v417;
        v80 = &v61[*(v417 + 36)];
        *v80 = v77;
        v80[1] = v76;
        MEMORY[0x28223BE20](v78);
        *(&v328 - 2) = a2;
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED9C0, &unk_23D8E1350);
        v82 = sub_23D8536BC();
        v83 = type metadata accessor for AXRColorSelectionToolbar(255);
        v84 = sub_23D856D84(&qword_27E2ED9D8, type metadata accessor for AXRColorSelectionToolbar, &unk_23D8E433C);
        *&v442 = v83;
        *(&v442 + 1) = v84;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v412 = v81;
        sub_23D8DE040();
        sub_23D83C6E4(v61, &qword_27E2ED9B8, &qword_23D8E1348);
        *&v442 = v79;
        *(&v442 + 1) = v81;
        v443 = v82;
        v444 = OpaqueTypeConformance2;
        v417 = MEMORY[0x277CDEEF8];
        v86 = swift_getOpaqueTypeConformance2();
        v87 = v414;
        v88 = v418;
        sub_23D8DDEF0();
        (*(v413 + 8))(v64, v88);
        v445 = sub_23D8DE230();
        v89 = v433;
        sub_23D8DD940();
        *&v442 = v88;
        *(&v442 + 1) = v86;
        v90 = swift_getOpaqueTypeConformance2();
        v91 = v441;
        v92 = v419;
        sub_23D8DDE60();
        (*(v434 + 8))(v89, v435);

        (*(v415 + 8))(v87, v92);
        v93 = v416;
        v94 = v421;
        (*(v416 + 16))(v424, v91, v421);
        swift_storeEnumTagMultiPayload();
        *&v442 = v92;
        v95 = MEMORY[0x277CE0F78];
        *(&v442 + 1) = MEMORY[0x277CE0F78];
        v443 = v90;
        v96 = MEMORY[0x277CE0F60];
        v444 = MEMORY[0x277CE0F60];
        swift_getOpaqueTypeConformance2();
        v97 = sub_23D8537A4();
        *&v442 = v422;
        *(&v442 + 1) = v412;
        v443 = v97;
        v444 = OpaqueTypeConformance2;
        v98 = swift_getOpaqueTypeConformance2();
        *&v442 = v423;
        *(&v442 + 1) = v98;
        v99 = swift_getOpaqueTypeConformance2();
        *&v442 = v426;
        *(&v442 + 1) = v95;
        v443 = v99;
        v444 = v96;
        swift_getOpaqueTypeConformance2();
        v100 = v425;
        sub_23D8DD6B0();
        sub_23D83C67C(v100, v430, &qword_27E2ED9A0, &qword_23D8E1330);
        swift_storeEnumTagMultiPayload();
        sub_23D85341C();
        sub_23D85388C();
        v101 = v431;
        sub_23D8DD6B0();
        sub_23D83C6E4(v100, &qword_27E2ED9A0, &qword_23D8E1330);
        sub_23D83C67C(v101, v438, &qword_27E2ED990, &qword_23D8E1328);
        swift_storeEnumTagMultiPayload();
        sub_23D853390();
        sub_23D853CFC();
        sub_23D8DD6B0();
        sub_23D83C6E4(v101, &qword_27E2ED990, &qword_23D8E1328);
        return (*(v93 + 8))(v441, v94);
      }

LABEL_49:
      sub_23D8DD120();
      __break(1u);
LABEL_50:
      sub_23D8DD120();
      __break(1u);
      goto LABEL_51;
    }

    v328 = v18;
    v71 = a2;
  }

  else
  {
    v328 = v18;
    v71 = a2;
  }

  v72 = sub_23D8DED20();

  a2 = v71;
  if (v72)
  {
    goto LABEL_9;
  }

  v441 = v25;
  if (v68 == 2)
  {

    goto LABEL_13;
  }

  v103 = sub_23D8DED20();

  if (v103)
  {
LABEL_13:
    KeyPath = swift_getKeyPath();
    v105 = v405;
    *v405 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
    swift_storeEnumTagMultiPayload();
    v106 = v404;
    v107 = *(v404 + 20);
    *(v105 + v107) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
    swift_storeEnumTagMultiPayload();
    v108 = (v105 + *(v106 + 24));
    sub_23D8DC9F0();
    sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    *v108 = sub_23D8DD140();
    v108[1] = v109;
    v110 = *(v71 + 16);
    if (v110)
    {

      v111 = sub_23D8DCB10();
      v112 = v406;
      v113 = sub_23D855DF8(v105, v406, type metadata accessor for AXRBackgroundColorSelectionView);
      v114 = v422;
      v115 = (v112 + *(v422 + 36));
      *v115 = v111;
      v115[1] = v110;
      MEMORY[0x28223BE20](v113);
      *(&v328 - 2) = a2;
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED9C0, &unk_23D8E1350);
      v117 = sub_23D8537A4();
      v118 = type metadata accessor for AXRColorSelectionToolbar(255);
      v119 = sub_23D856D84(&qword_27E2ED9D8, type metadata accessor for AXRColorSelectionToolbar, &unk_23D8E433C);
      *&v442 = v118;
      *(&v442 + 1) = v119;
      v120 = swift_getOpaqueTypeConformance2();
      v121 = v407;
      v441 = v116;
      sub_23D8DE040();
      sub_23D83C6E4(v112, &qword_27E2ED9F0, &qword_23D8E1370);
      *&v442 = v114;
      *(&v442 + 1) = v116;
      v443 = v117;
      v444 = v120;
      v122 = swift_getOpaqueTypeConformance2();
      v123 = v409;
      v124 = v423;
      sub_23D8DDEF0();
      (*(v408 + 8))(v121, v124);
      v445 = sub_23D8DE230();
      v125 = v433;
      sub_23D8DD940();
      *&v442 = v124;
      *(&v442 + 1) = v122;
      v126 = swift_getOpaqueTypeConformance2();
      v127 = v412;
      v128 = v426;
      sub_23D8DDE60();
      (*(v434 + 8))(v125, v435);

      (*(v410 + 8))(v123, v128);
      v129 = v411;
      v130 = v427;
      (*(v411 + 16))(v424, v127, v427);
      swift_storeEnumTagMultiPayload();
      v131 = sub_23D8536BC();
      *&v442 = v417;
      *(&v442 + 1) = v441;
      v443 = v131;
      v444 = v120;
      v132 = swift_getOpaqueTypeConformance2();
      *&v442 = v418;
      *(&v442 + 1) = v132;
      v133 = swift_getOpaqueTypeConformance2();
      *&v442 = v419;
      v134 = MEMORY[0x277CE0F78];
      *(&v442 + 1) = MEMORY[0x277CE0F78];
      v443 = v133;
      v135 = MEMORY[0x277CE0F60];
      v444 = MEMORY[0x277CE0F60];
      swift_getOpaqueTypeConformance2();
      *&v442 = v128;
      *(&v442 + 1) = v134;
      v443 = v126;
      v444 = v135;
      swift_getOpaqueTypeConformance2();
      v136 = v425;
      sub_23D8DD6B0();
      sub_23D83C67C(v136, v430, &qword_27E2ED9A0, &qword_23D8E1330);
      swift_storeEnumTagMultiPayload();
      sub_23D85341C();
      sub_23D85388C();
      v137 = v431;
      sub_23D8DD6B0();
      sub_23D83C6E4(v136, &qword_27E2ED9A0, &qword_23D8E1330);
      sub_23D83C67C(v137, v438, &qword_27E2ED990, &qword_23D8E1328);
      swift_storeEnumTagMultiPayload();
      sub_23D853390();
      sub_23D853CFC();
      sub_23D8DD6B0();
      sub_23D83C6E4(v137, &qword_27E2ED990, &qword_23D8E1328);
      v138 = *(v129 + 8);
      v139 = &v443;
      return v138(*(v139 - 32), v130);
    }

    goto LABEL_50;
  }

  if (v68 > 1)
  {
    v140 = "themeBackgroundColor";
    if (v68 != 3)
    {
      v140 = "themeHighlightColor";
    }

    if (0x800000023D8E5E40 == (v140 | 0x8000000000000000))
    {

      goto LABEL_21;
    }
  }

  v141 = sub_23D8DED20();

  if (v141)
  {
LABEL_21:
    v142 = swift_getKeyPath();
    v143 = v385;
    *v385 = v142;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
    swift_storeEnumTagMultiPayload();
    v144 = swift_getKeyPath();
    v145 = v384;
    *(v143 + *(v384 + 20)) = v144;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
    swift_storeEnumTagMultiPayload();
    sub_23D8DC9F0();
    sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    v146 = sub_23D8DD140();
    v147 = (v143 + *(v145 + 24));
    *v147 = v146;
    v147[1] = v148;
    *(v143 + *(v145 + 28)) = 2;
    v149 = *(v71 + 16);
    if (v149)
    {

      v150 = sub_23D8DCB10();
      v151 = v386;
      v152 = sub_23D855DF8(v143, v386, type metadata accessor for AXRHighlightColorSelectionView);
      v153 = v392;
      v154 = (v151 + *(v392 + 36));
      *v154 = v150;
      v154[1] = v149;
      MEMORY[0x28223BE20](v152);
      *(&v328 - 2) = a2;
      v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED9C0, &unk_23D8E1350);
      v156 = sub_23D853B2C();
      v157 = type metadata accessor for AXRColorSelectionToolbar(255);
      v158 = sub_23D856D84(&qword_27E2ED9D8, type metadata accessor for AXRColorSelectionToolbar, &unk_23D8E433C);
      *&v442 = v157;
      *(&v442 + 1) = v158;
      v159 = swift_getOpaqueTypeConformance2();
      v160 = v387;
      v441 = v155;
      sub_23D8DE040();
      sub_23D83C6E4(v151, &qword_27E2EDA28, &qword_23D8E1390);
      *&v442 = v153;
      *(&v442 + 1) = v155;
      v443 = v156;
      v444 = v159;
      v427 = MEMORY[0x277CDEEF8];
      v161 = swift_getOpaqueTypeConformance2();
      v162 = v389;
      v163 = v393;
      sub_23D8DDEF0();
      (*(v388 + 8))(v160, v163);
      v445 = sub_23D8DE230();
      v164 = v433;
      sub_23D8DD940();
      *&v442 = v163;
      *(&v442 + 1) = v161;
      v165 = swift_getOpaqueTypeConformance2();
      v166 = MEMORY[0x277CE0F78];
      v167 = v403;
      v168 = v394;
      sub_23D8DDE60();
      (*(v434 + 8))(v164, v435);

      (*(v390 + 8))(v162, v168);
      v169 = v391;
      v170 = v167;
      v171 = v397;
      (*(v391 + 16))(v398, v170, v397);
      swift_storeEnumTagMultiPayload();
      *&v442 = v168;
      *(&v442 + 1) = v166;
      v443 = v165;
      v172 = MEMORY[0x277CE0F60];
      v444 = MEMORY[0x277CE0F60];
      swift_getOpaqueTypeConformance2();
      v173 = sub_23D853C14();
      *&v442 = v402;
      *(&v442 + 1) = v441;
      v443 = v173;
      v444 = v159;
      v174 = swift_getOpaqueTypeConformance2();
      *&v442 = v396;
      *(&v442 + 1) = v174;
      v175 = swift_getOpaqueTypeConformance2();
      *&v442 = v399;
      *(&v442 + 1) = v166;
      v443 = v175;
      v444 = v172;
      swift_getOpaqueTypeConformance2();
      v176 = v400;
      v130 = v171;
      sub_23D8DD6B0();
      sub_23D83C67C(v176, v430, &qword_27E2EDA10, &qword_23D8E1378);
      swift_storeEnumTagMultiPayload();
      sub_23D85341C();
      sub_23D85388C();
      v177 = v431;
      sub_23D8DD6B0();
      sub_23D83C6E4(v176, &qword_27E2EDA10, &qword_23D8E1378);
      sub_23D83C67C(v177, v438, &qword_27E2ED990, &qword_23D8E1328);
      swift_storeEnumTagMultiPayload();
      sub_23D853390();
      sub_23D853CFC();
      sub_23D8DD6B0();
      sub_23D83C6E4(v177, &qword_27E2ED990, &qword_23D8E1328);
      v138 = *(v169 + 8);
      v139 = &v435;
      return v138(*(v139 - 32), v130);
    }

    goto LABEL_49;
  }

  if (v68 > 1)
  {
    v178 = v68 == 4 ? 0x800000023D8E5E60 : 0x800000023D8E5E40;
    if (0x800000023D8E5E60 == v178)
    {

      goto LABEL_31;
    }
  }

  v179 = sub_23D8DED20();

  if (v179)
  {
LABEL_31:
    v180 = swift_getKeyPath();
    v181 = v375;
    *v375 = v180;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
    swift_storeEnumTagMultiPayload();
    v182 = swift_getKeyPath();
    v183 = v382;
    *(v181 + *(v382 + 20)) = v182;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
    swift_storeEnumTagMultiPayload();
    sub_23D8DC9F0();
    sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    v184 = sub_23D8DD140();
    v185 = (v181 + *(v183 + 24));
    *v185 = v184;
    v185[1] = v186;
    *(v181 + *(v183 + 28)) = 2;
    v187 = *(v71 + 16);
    if (v187)
    {

      v188 = sub_23D8DCB10();
      v189 = v376;
      v190 = sub_23D855DF8(v181, v376, type metadata accessor for AXRHyperlinkColorSelectionView);
      v191 = v402;
      v192 = (v189 + *(v402 + 36));
      *v192 = v188;
      v192[1] = v187;
      MEMORY[0x28223BE20](v190);
      *(&v328 - 2) = a2;
      v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED9C0, &unk_23D8E1350);
      v194 = sub_23D853C14();
      v195 = type metadata accessor for AXRColorSelectionToolbar(255);
      v196 = sub_23D856D84(&qword_27E2ED9D8, type metadata accessor for AXRColorSelectionToolbar, &unk_23D8E433C);
      *&v442 = v195;
      *(&v442 + 1) = v196;
      v197 = swift_getOpaqueTypeConformance2();
      v198 = v377;
      v441 = v193;
      sub_23D8DE040();
      sub_23D83C6E4(v189, &qword_27E2EDA50, &qword_23D8E13A8);
      *&v442 = v191;
      *(&v442 + 1) = v193;
      v443 = v194;
      v444 = v197;
      v199 = swift_getOpaqueTypeConformance2();
      v200 = v379;
      v201 = v396;
      sub_23D8DDEF0();
      (*(v378 + 8))(v198, v201);
      v445 = sub_23D8DE230();
      v202 = v433;
      sub_23D8DD940();
      *&v442 = v201;
      *(&v442 + 1) = v199;
      v203 = swift_getOpaqueTypeConformance2();
      v204 = v383;
      v205 = v399;
      sub_23D8DDE60();
      (*(v434 + 8))(v202, v435);

      (*(v380 + 8))(v200, v205);
      v206 = v381;
      v130 = v401;
      (*(v381 + 16))(v398, v204, v401);
      swift_storeEnumTagMultiPayload();
      v207 = sub_23D853B2C();
      *&v442 = v392;
      *(&v442 + 1) = v441;
      v443 = v207;
      v444 = v197;
      v208 = swift_getOpaqueTypeConformance2();
      *&v442 = v393;
      *(&v442 + 1) = v208;
      v209 = swift_getOpaqueTypeConformance2();
      *&v442 = v394;
      v210 = MEMORY[0x277CE0F78];
      *(&v442 + 1) = MEMORY[0x277CE0F78];
      v443 = v209;
      v211 = MEMORY[0x277CE0F60];
      v444 = MEMORY[0x277CE0F60];
      swift_getOpaqueTypeConformance2();
      *&v442 = v205;
      *(&v442 + 1) = v210;
      v443 = v203;
      v444 = v211;
      swift_getOpaqueTypeConformance2();
      v212 = v400;
      sub_23D8DD6B0();
      sub_23D83C67C(v212, v430, &qword_27E2EDA10, &qword_23D8E1378);
      swift_storeEnumTagMultiPayload();
      sub_23D85341C();
      sub_23D85388C();
      v213 = v431;
      sub_23D8DD6B0();
      sub_23D83C6E4(v212, &qword_27E2EDA10, &qword_23D8E1378);
      sub_23D83C67C(v213, v438, &qword_27E2ED990, &qword_23D8E1328);
      swift_storeEnumTagMultiPayload();
      sub_23D853390();
      sub_23D853CFC();
      sub_23D8DD6B0();
      sub_23D83C6E4(v213, &qword_27E2ED990, &qword_23D8E1328);
      v138 = *(v206 + 8);
      v139 = &v415;
      return v138(*(v139 - 32), v130);
    }

    goto LABEL_49;
  }

  if (v68 > 1)
  {
    v214 = 0x800000023D8E5E40;
    if (v68 != 3)
    {
      v214 = 0x800000023D8E5E60;
    }

    if (0x800000023D8E5E60 == v214)
    {

      goto LABEL_40;
    }
  }

  v215 = sub_23D8DED20();

  if (v215)
  {
LABEL_40:
    v216 = swift_getKeyPath();
    v217 = v362;
    *v362 = v216;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
    swift_storeEnumTagMultiPayload();
    v218 = swift_getKeyPath();
    v219 = v382;
    *(v217 + *(v382 + 20)) = v218;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
    swift_storeEnumTagMultiPayload();
    sub_23D8DC9F0();
    sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    v220 = sub_23D8DD140();
    v221 = (v217 + *(v219 + 24));
    *v221 = v220;
    v221[1] = v222;
    *(v217 + *(v219 + 28)) = 2;
    v223 = *(v71 + 16);
    if (v223)
    {

      v224 = sub_23D8DCB10();
      v225 = v363;
      v226 = sub_23D855DF8(v217, v363, type metadata accessor for AXRHyperlinkColorSelectionView);
      v432 = &v328;
      v227 = v402;
      v228 = (v225 + *(v402 + 36));
      *v228 = v224;
      v228[1] = v223;
      MEMORY[0x28223BE20](v226);
      *(&v328 - 2) = v71;
      v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED950, &qword_23D8E1308);
      v230 = sub_23D853C14();
      v231 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED968, &qword_23D8E1318);
      v232 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED970, &qword_23D8E1320);
      v233 = sub_23D835AD0(&qword_27E2ED978, &qword_27E2ED970, &qword_23D8E1320, MEMORY[0x277CDD7A8]);
      *&v442 = v232;
      *(&v442 + 1) = v233;
      v234 = swift_getOpaqueTypeConformance2();
      *&v442 = v231;
      *(&v442 + 1) = v234;
      v235 = swift_getOpaqueTypeConformance2();
      v236 = v364;
      sub_23D8DE040();
      sub_23D83C6E4(v225, &qword_27E2EDA50, &qword_23D8E13A8);
      *&v442 = v227;
      *(&v442 + 1) = v229;
      v443 = v230;
      v444 = v235;
      v237 = swift_getOpaqueTypeConformance2();
      v238 = v366;
      v239 = v370;
      sub_23D8DDEF0();
      (*(v365 + 8))(v236, v239);
      v445 = sub_23D8DE230();
      v240 = v433;
      sub_23D8DD940();
      *&v442 = v239;
      *(&v442 + 1) = v237;
      v241 = swift_getOpaqueTypeConformance2();
      v242 = MEMORY[0x277CE0F78];
      v243 = MEMORY[0x277CE0F60];
      v244 = v368;
      v245 = v372;
      sub_23D8DDE60();
      (*(v434 + 8))(v240, v435);

      (*(v367 + 8))(v238, v245);
      v246 = v369;
      v247 = v373;
      (*(v369 + 16))(v374, v244, v373);
      swift_storeEnumTagMultiPayload();
      *&v442 = v245;
      *(&v442 + 1) = v242;
      v443 = v241;
      v444 = v243;
      swift_getOpaqueTypeConformance2();
      sub_23D853F2C();
      v248 = v441;
      sub_23D8DD6B0();
      sub_23D83C67C(v248, v438, &qword_27E2EDA70, &qword_23D8E13B0);
      swift_storeEnumTagMultiPayload();
      sub_23D853390();
      sub_23D853CFC();
      sub_23D8DD6B0();
      sub_23D83C6E4(v248, &qword_27E2EDA70, &qword_23D8E13B0);
      return (*(v246 + 8))(v244, v247);
    }

    goto LABEL_49;
  }

  v431 = sub_23D8DC900();
  v430 = sub_23D856D84(&qword_27E2ED250, MEMORY[0x277CE73E8], MEMORY[0x277CE73E0]);
  v429 = sub_23D8DCD40();
  v249 = v329;
  v250 = v333;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED210, &qword_23D8E08B8);
  v251 = v335;
  sub_23D8DE340();
  v252 = (v71 + *(v249 + 32));
  v254 = v252[1];
  v428 = *v252;
  v253 = v428;
  v427 = v254;
  *v251 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  swift_storeEnumTagMultiPayload();
  *(v251 + v250[5]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  swift_storeEnumTagMultiPayload();
  *(v251 + v250[6]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B0, &qword_23D8E0DB0);
  swift_storeEnumTagMultiPayload();
  sub_23D83BCC8(v253, v254);
  sub_23D8DC9F0();
  v432 = sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
  v255 = sub_23D8DD140();
  v426 = v256;
  *(v251 + v250[20]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED370, &qword_23D8E0AD0);
  swift_storeEnumTagMultiPayload();
  v257 = sub_23D8DD850();
  v258 = v330;
  (*(*(v257 - 8) + 56))(v330, 1, 1, v257);
  sub_23D83C67C(v258, v331, &qword_27E2EE9E0, &qword_23D8E26D0);
  sub_23D8DE310();
  sub_23D83C6E4(v258, &qword_27E2EE9E0, &qword_23D8E26D0);
  v259 = v251 + v250[8];
  LOBYTE(v445) = 0;
  sub_23D8DE310();
  v260 = *(&v442 + 1);
  *v259 = v442;
  *(v259 + 1) = v260;
  v261 = v250[9];
  v445 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDB90, &qword_23D8E52F0);
  sub_23D8DE310();
  *(v251 + v261) = v442;
  v262 = v250[10];
  v445 = 0;
  sub_23D8DE310();
  *(v251 + v262) = v442;
  v263 = (v251 + v250[11]);
  v264 = a2;
  sub_23D8DC430();
  sub_23D856D84(&unk_27E2F0420, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);
  *v263 = sub_23D8DD140();
  v263[1] = v265;
  v266 = (v251 + v250[12]);
  v267 = v426;
  *v266 = v255;
  v266[1] = v267;
  v268 = (v251 + v250[13]);
  *v268 = sub_23D8DCEF0();
  v268[1] = v269;
  v270 = v251 + v250[15];
  LOBYTE(v445) = 0;
  sub_23D8DE310();
  v271 = *(&v442 + 1);
  *v270 = v442;
  *(v270 + 1) = v271;
  v272 = v251 + v250[16];
  v445 = 0;
  v446 = 0xE000000000000000;
  sub_23D8DE310();
  v273 = v443;
  *v272 = v442;
  *(v272 + 2) = v273;
  v274 = v251 + v250[17];
  *v274 = sub_23D8DCC50() & 1;
  *(v274 + 1) = v275;
  v274[16] = v276 & 1;
  *(v251 + v250[18]) = 25;
  v277 = (v251 + v250[19]);
  v278 = v427;
  *v277 = v428;
  v277[1] = v278;
  *(v251 + v250[21]) = 0x4036000000000000;
  *(v251 + v250[22]) = 0x4074A00000000000;
  *(v251 + v250[23]) = 0x4041800000000000;
  v279 = *a2;
  if (!*a2)
  {
LABEL_51:
    sub_23D8DD120();
    __break(1u);
    goto LABEL_52;
  }

  v280 = v279;
  v281 = sub_23D8DCB10();
  v282 = v336;
  sub_23D855DF8(v251, v336, type metadata accessor for AXRTextFormatterSheet);
  v283 = (v282 + *(v334 + 36));
  *v283 = v281;
  v283[1] = v279;
  v284 = *(a2 + 16);
  if (!v284)
  {
LABEL_52:
    result = sub_23D8DD120();
    __break(1u);
    return result;
  }

  v285 = sub_23D8DCB10();
  v286 = v337;
  sub_23D83C744(v282, v337, &qword_27E2EDAD8, &qword_23D8E1400);
  v287 = v339;
  v288 = (v286 + *(v339 + 36));
  *v288 = v285;
  v288[1] = v284;
  v289 = v345;
  sub_23D8DD8E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDB98, &qword_23D8E14F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23D8E0D60;
  v291 = sub_23D8DD9C0();
  *(inited + 32) = v291;
  v292 = sub_23D8DD9A0();
  *(inited + 33) = v292;
  sub_23D8DD9B0();
  sub_23D8DD9B0();
  if (sub_23D8DD9B0() != v291)
  {
    sub_23D8DD9B0();
  }

  sub_23D8DD9B0();
  if (sub_23D8DD9B0() != v292)
  {
    sub_23D8DD9B0();
  }

  v293 = sub_23D8541A4();
  v294 = v338;
  sub_23D8DDDE0();
  (*(v348 + 8))(v289, v349);
  sub_23D83C6E4(v286, &qword_27E2EDAC0, &qword_23D8E13F8);
  *&v442 = v287;
  *(&v442 + 1) = v293;
  v295 = swift_getOpaqueTypeConformance2();
  v296 = v342;
  v297 = v341;
  sub_23D8DDF10();
  v298 = (*(v340 + 8))(v294, v297);
  MEMORY[0x28223BE20](v298);
  *(&v328 - 2) = v264;
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDAB0, &qword_23D8E13E8);
  *&v442 = v297;
  *(&v442 + 1) = v295;
  v300 = swift_getOpaqueTypeConformance2();
  v301 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDAF8, &qword_23D8E1410);
  v302 = sub_23D835AD0(&qword_27E2EDB00, &qword_27E2EDAF8, &qword_23D8E1410, MEMORY[0x277CDDF68]);
  *&v442 = v301;
  *(&v442 + 1) = v302;
  v303 = swift_getOpaqueTypeConformance2();
  v304 = v343;
  v305 = v347;
  sub_23D8DE040();
  (*(v344 + 8))(v296, v305);
  *&v442 = v305;
  *(&v442 + 1) = v299;
  v443 = v300;
  v444 = v303;
  v432 = MEMORY[0x277CDEEF8];
  v306 = swift_getOpaqueTypeConformance2();
  v307 = v351;
  v308 = v350;
  sub_23D8DDEF0();
  (*(v346 + 8))(v304, v308);
  v445 = sub_23D8DE230();
  v309 = v433;
  sub_23D8DD940();
  *&v442 = v308;
  *(&v442 + 1) = v306;
  v431 = MEMORY[0x277CDEC30];
  swift_getOpaqueTypeConformance2();
  v310 = v353;
  v311 = v355;
  sub_23D8DDE60();
  (*(v434 + 8))(v309, v435);

  (*(v354 + 8))(v307, v311);
  v312 = v361;
  sub_23D853140(v264, v361);
  v313 = (*(v359 + 80) + 16) & ~*(v359 + 80);
  v314 = swift_allocObject();
  sub_23D855DF8(v312, v314 + v313, type metadata accessor for AXRFullScreenView);
  v315 = v352;
  (*(v356 + 32))(v352, v310, v357);
  v316 = (v315 + *(v328 + 36));
  *v316 = sub_23D854728;
  v316[1] = v314;
  v316[2] = 0;
  v316[3] = 0;
  v317 = v358;
  sub_23D83C744(v315, v358, &qword_27E2EDA90, &qword_23D8E13C8);
  sub_23D83C67C(v317, v374, &qword_27E2EDA90, &qword_23D8E13C8);
  swift_storeEnumTagMultiPayload();
  v318 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED950, &qword_23D8E1308);
  v319 = sub_23D853C14();
  v320 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED968, &qword_23D8E1318);
  v321 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED970, &qword_23D8E1320);
  v322 = sub_23D835AD0(&qword_27E2ED978, &qword_27E2ED970, &qword_23D8E1320, MEMORY[0x277CDD7A8]);
  *&v442 = v321;
  *(&v442 + 1) = v322;
  v323 = swift_getOpaqueTypeConformance2();
  *&v442 = v320;
  *(&v442 + 1) = v323;
  v324 = swift_getOpaqueTypeConformance2();
  *&v442 = v402;
  *(&v442 + 1) = v318;
  v443 = v319;
  v444 = v324;
  v325 = swift_getOpaqueTypeConformance2();
  *&v442 = v370;
  *(&v442 + 1) = v325;
  v326 = swift_getOpaqueTypeConformance2();
  *&v442 = v372;
  *(&v442 + 1) = MEMORY[0x277CE0F78];
  v443 = v326;
  v444 = MEMORY[0x277CE0F60];
  swift_getOpaqueTypeConformance2();
  sub_23D853F2C();
  v327 = v441;
  sub_23D8DD6B0();
  sub_23D83C67C(v327, v438, &qword_27E2EDA70, &qword_23D8E13B0);
  swift_storeEnumTagMultiPayload();
  sub_23D853390();
  sub_23D853CFC();
  sub_23D8DD6B0();
  sub_23D83C6E4(v327, &qword_27E2EDA70, &qword_23D8E13B0);
  return sub_23D83C6E4(v317, &qword_27E2EDA90, &qword_23D8E13C8);
}

uint64_t sub_23D84E620(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED908, &qword_23D8E12C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for AXRColorSelectionToolbar(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  type metadata accessor for AXRFullScreenView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5D8, &unk_23D8E0EA0);
  sub_23D8DE340();
  if (*(a1 + 16))
  {

    sub_23D8DC960();

    v11 = sub_23D8DC7E0();

    if (qword_27E2ECEC8 != -1)
    {
      swift_once();
    }

    v12 = 0xED0000726F6C6F43;
    v13 = 0x747865742E727861;
    if (qword_27E2F3C80)
    {
      v14 = qword_27E2F3C80;
      v15 = sub_23D8DE830();
      v16 = sub_23D8DE830();
      v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

      v13 = sub_23D8DE870();
      v12 = v18;
    }

    sub_23D83C744(v4, v8, &qword_27E2ED908, &qword_23D8E12C0);
    *&v8[*(v5 + 20)] = v11;
    v19 = &v8[*(v5 + 24)];
    *v19 = v13;
    v19[1] = v12;
    sub_23D855DF8(v8, v10, type metadata accessor for AXRColorSelectionToolbar);
    v20 = sub_23D856D84(&qword_27E2ED9D8, type metadata accessor for AXRColorSelectionToolbar, &unk_23D8E433C);
    MEMORY[0x23EEEF8F0](v10, v5, v20);
    return sub_23D8547F4(v10);
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D84E958(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED908, &qword_23D8E12C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for AXRColorSelectionToolbar(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  type metadata accessor for AXRFullScreenView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5D8, &unk_23D8E0EA0);
  sub_23D8DE340();
  if (*(a1 + 16))
  {

    sub_23D8DC960();

    v11 = sub_23D8DC7E0();

    v12 = 0x800000023D8E5FA0;
    if (qword_27E2ECEC8 != -1)
    {
      swift_once();
    }

    v13 = 0xD000000000000013;
    if (qword_27E2F3C80)
    {
      v14 = qword_27E2F3C80;
      v15 = sub_23D8DE830();
      v16 = sub_23D8DE830();
      v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

      v13 = sub_23D8DE870();
      v12 = v18;
    }

    sub_23D83C744(v4, v8, &qword_27E2ED908, &qword_23D8E12C0);
    *&v8[*(v5 + 20)] = v11;
    v19 = &v8[*(v5 + 24)];
    *v19 = v13;
    v19[1] = v12;
    sub_23D855DF8(v8, v10, type metadata accessor for AXRColorSelectionToolbar);
    v20 = sub_23D856D84(&qword_27E2ED9D8, type metadata accessor for AXRColorSelectionToolbar, &unk_23D8E433C);
    MEMORY[0x23EEEF8F0](v10, v5, v20);
    return sub_23D8547F4(v10);
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D84EC88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED908, &qword_23D8E12C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for AXRColorSelectionToolbar(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  type metadata accessor for AXRFullScreenView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5D8, &unk_23D8E0EA0);
  sub_23D8DE340();
  if (*(a1 + 16))
  {

    sub_23D8DC960();

    v11 = sub_23D8DC7E0();

    v12 = 0x800000023D8E5FC0;
    if (qword_27E2ECEC8 != -1)
    {
      swift_once();
    }

    v13 = 0xD000000000000012;
    if (qword_27E2F3C80)
    {
      v14 = qword_27E2F3C80;
      v15 = sub_23D8DE830();
      v16 = sub_23D8DE830();
      v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

      v13 = sub_23D8DE870();
      v12 = v18;
    }

    sub_23D83C744(v4, v8, &qword_27E2ED908, &qword_23D8E12C0);
    *&v8[*(v5 + 20)] = v11;
    v19 = &v8[*(v5 + 24)];
    *v19 = v13;
    v19[1] = v12;
    sub_23D855DF8(v8, v10, type metadata accessor for AXRColorSelectionToolbar);
    v20 = sub_23D856D84(&qword_27E2ED9D8, type metadata accessor for AXRColorSelectionToolbar, &unk_23D8E433C);
    MEMORY[0x23EEEF8F0](v10, v5, v20);
    return sub_23D8547F4(v10);
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D84EFB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED908, &qword_23D8E12C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for AXRColorSelectionToolbar(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  type metadata accessor for AXRFullScreenView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5D8, &unk_23D8E0EA0);
  sub_23D8DE340();
  if (*(a1 + 16))
  {

    sub_23D8DC960();

    v11 = sub_23D8DC7E0();

    if (qword_27E2ECEC8 != -1)
    {
      swift_once();
    }

    v12 = 0xED0000726F6C6F43;
    v13 = 0x6B6E696C2E727861;
    if (qword_27E2F3C80)
    {
      v14 = qword_27E2F3C80;
      v15 = sub_23D8DE830();
      v16 = sub_23D8DE830();
      v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

      v13 = sub_23D8DE870();
      v12 = v18;
    }

    sub_23D83C744(v4, v8, &qword_27E2ED908, &qword_23D8E12C0);
    *&v8[*(v5 + 20)] = v11;
    v19 = &v8[*(v5 + 24)];
    *v19 = v13;
    v19[1] = v12;
    sub_23D855DF8(v8, v10, type metadata accessor for AXRColorSelectionToolbar);
    v20 = sub_23D856D84(&qword_27E2ED9D8, type metadata accessor for AXRColorSelectionToolbar, &unk_23D8E433C);
    MEMORY[0x23EEEF8F0](v10, v5, v20);
    return sub_23D8547F4(v10);
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}