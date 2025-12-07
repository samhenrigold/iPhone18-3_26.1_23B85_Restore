void sub_1BD1797F8(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    v5 = sub_1BE052404();
  }

  else
  {
    v5 = 0;
  }

  v6 = PKCurrencyAmountMake();

  if (v6)
  {
    v7 = [v6 formattedStringValue];

    if (v7)
    {
      sub_1BE052434();

      sub_1BD0DDEBC();
      v8 = sub_1BE0506C4();
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v15 = sub_1BE051494();
      v16 = sub_1BE050564();
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v15, v17, v19, v21, v23, v24, v25, v26;
      sub_1BD0DDF10(v8, v10, (v12 & 1), v27, v28, v29, v30, v31);
      v14, v32, v33, v34, v35, v36, v37, v38;
      KeyPath = swift_getKeyPath();
      v40 = swift_getKeyPath();
      *a4 = v16;
      *(a4 + 8) = v18;
      *(a4 + 16) = v20 & 1;
      *(a4 + 24) = v22;
      *(a4 + 32) = KeyPath;
      *(a4 + 40) = 1;
      *(a4 + 48) = 0;
      *(a4 + 56) = v40;
      *(a4 + 64) = 0x3FE0000000000000;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BD179980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a2;
  v37 = a3;
  v35 = a1;
  v38 = sub_1BE04D214();
  v3 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SavingsActionSheetObserver(0);
  sub_1BD184068(&qword_1EBD3AE00, type metadata accessor for SavingsActionSheetObserver, &unk_1BE0D8458);
  v6 = sub_1BE04E3C4();
  KeyPath = swift_getKeyPath();
  v8 = swift_getKeyPath();
  sub_1BE04D8B4(v39);
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  v8, v16, v17, v18, v19, v20, v21, v22;
  v6, v23, v24, v25, v26, v27, v28, v29;
  if (v41 >> 1 <= 0x7EuLL)
  {
    sub_1BE04D1E4();
    v31 = sub_1BE04D204();
    v32 = sub_1BE052C34();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1BD026000, v31, v32, "Action sheet already set, ignoring", v33, 2u);
      MEMORY[0x1BFB45F20](v33, -1, -1);
    }

    return (*(v3 + 8))(v5, v38);
  }

  else
  {
    sub_1BE04E3C4();
    swift_getKeyPath();
    swift_getKeyPath();
    v39[0] = v35;
    v39[1] = v36;
    v41 = BYTE4(v37);
    v40 = v37;
    return sub_1BE04D8C4();
  }
}

uint64_t sub_1BD179C00(uint64_t a1)
{
  v1 = sub_1BE04F7C4();
  v15 = 1;
  sub_1BD179E28(&v25);
  v19 = v28;
  v20 = v29;
  v21 = v30;
  v22 = v31[0];
  v16 = v25;
  v17 = v26;
  v18 = v27;
  v23[1] = v26;
  v23[0] = v25;
  v23[2] = v27;
  v23[3] = v28;
  v23[4] = v29;
  v23[5] = v30;
  v24 = v31[0];
  sub_1BD0DE19C(&v16, &v12, &qword_1EBD3B158, &qword_1BE0BC190);
  sub_1BD0DE53C(v23, &qword_1EBD3B158, &qword_1BE0BC190);
  *&v14[55] = v19;
  *&v14[71] = v20;
  *&v14[87] = v21;
  *&v14[103] = v22;
  *&v14[7] = v16;
  *&v14[23] = v17;
  *&v14[39] = v18;
  *&v13[49] = *&v14[48];
  *&v13[65] = *&v14[64];
  *&v13[81] = *&v14[80];
  *&v13[90] = *&v14[89];
  *&v13[1] = *v14;
  *&v13[17] = *&v14[16];
  v12 = v1;
  v13[0] = v15;
  *&v13[33] = *&v14[32];
  sub_1BE052434();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B140, &qword_1BE0BC178);
  sub_1BD0DE4F4(&qword_1EBD3B138, &qword_1EBD3B140, &qword_1BE0BC178, MEMORY[0x1E6981870]);
  sub_1BE050DE4();
  v3, v4, v5, v6, v7, v8, v9, v10;
  v29 = *&v13[48];
  v30 = *&v13[64];
  v31[0] = *&v13[80];
  *(v31 + 10) = *&v13[90];
  v25 = v12;
  v26 = *v13;
  v27 = *&v13[16];
  v28 = *&v13[32];
  return sub_1BD0DE53C(&v25, &qword_1EBD3B140, &qword_1BE0BC178);
}

void sub_1BD179E28(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v69 - v7;
  v9 = sub_1BD17278C();
  v10 = *MEMORY[0x1E69B80E0];
  v11 = *(v3 + 104);
  if (v9)
  {
    v11(v5, v10, v2);
    v12 = PKPassKitBundle();
    if (v12)
    {
      v13 = v12;
      v14 = sub_1BE04B6F4();
      v16 = v15;

      (*(v3 + 8))(v5, v2);
      *&v84 = v14;
      *(&v84 + 1) = v16;
      sub_1BD0DDEBC();
      v17 = sub_1BE0506C4();
      v83 = v18 & 1;
      v76 = 1;
      *&v69 = v17;
      *(&v69 + 1) = v19;
      LOBYTE(v70) = v18 & 1;
      *(&v70 + 1) = v82[0];
      DWORD1(v70) = *(v82 + 3);
      *(&v70 + 1) = v20;
      v73 = v79;
      v74 = v80;
      LOBYTE(v75) = v81;
      v71 = v77;
      v72 = v78;
      HIBYTE(v75) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B160, &qword_1BE0BC198);
      sub_1BD0DE4F4(&qword_1EBD3B168, &qword_1EBD3B160, &qword_1BE0BC198, MEMORY[0x1E6981F48]);
      sub_1BE04F9A4();
LABEL_6:
      v66 = v89;
      *(a1 + 64) = v88;
      *(a1 + 80) = v66;
      *(a1 + 96) = v90;
      v67 = v85;
      *a1 = v84;
      *(a1 + 16) = v67;
      v68 = v87;
      *(a1 + 32) = v86;
      *(a1 + 48) = v68;
      return;
    }

    __break(1u);
  }

  else
  {
    v11(v8, v10, v2);
    v21 = PKPassKitBundle();
    if (v21)
    {
      v22 = v21;
      v23 = sub_1BE04B6F4();
      v25 = v24;

      (*(v3 + 8))(v8, v2);
      *&v84 = v23;
      *(&v84 + 1) = v25;
      sub_1BD0DDEBC();
      v26 = sub_1BE0506C4();
      v28 = v27;
      v30 = v29;
      v32 = v31;
      LOBYTE(v25) = sub_1BE0501E4();
      sub_1BE04E1F4();
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v40 = v39;
      LOBYTE(v84) = 0;
      v41 = (v30 & 1);
      LOBYTE(v82[0]) = v41;
      sub_1BD0D7F18(v26, v28, v41);
      sub_1BE048C84();
      sub_1BD0D7F18(v26, v28, v41);
      sub_1BE048C84();
      sub_1BD0DDF10(v26, v28, v41, v42, v43, v44, v45, v46);
      v32, v47, v48, v49, v50, v51, v52, v53;
      LOBYTE(v77) = 0;
      *&v84 = v26;
      *(&v84 + 1) = v28;
      LOBYTE(v85) = v41;
      *(&v85 + 1) = v32;
      LOWORD(v86) = 256;
      *(&v86 + 1) = 5;
      LOWORD(v87) = 0;
      BYTE8(v87) = v25;
      *&v88 = v34;
      *(&v88 + 1) = v36;
      *&v89 = v38;
      *(&v89 + 1) = v40;
      v90 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B160, &qword_1BE0BC198);
      sub_1BD0DE4F4(&qword_1EBD3B168, &qword_1EBD3B160, &qword_1BE0BC198, MEMORY[0x1E6981F48]);
      sub_1BE04F9A4();
      sub_1BD0DDF10(v26, v28, v41, v54, v55, v56, v57, v58);
      v32, v59, v60, v61, v62, v63, v64, v65;
      v88 = v73;
      v89 = v74;
      v90 = v75;
      v84 = v69;
      v85 = v70;
      v86 = v71;
      v87 = v72;
      goto LABEL_6;
    }
  }

  __break(1u);
}

void sub_1BD17A2A4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v279 = a2;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v263 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v263 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B2F0, &qword_1BE0BC488);
  v281 = *(v10 - 1);
  v282 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v278 = &v263 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v277 = &v263 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v274 = &v263 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B2F8, &qword_1BE0BC490);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v276 = &v263 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v263 - v19;
  v21 = *(a1 + 8);
  KeyPath = swift_getKeyPath();
  v23 = swift_getKeyPath();
  v283 = v21;
  sub_1BE04D8B4(&v284);
  KeyPath, v24, v25, v26, v27, v28, v29, v30;
  v23, v31, v32, v33, v34, v35, v36, v37;
  v38 = v284;
  if (v284 && (v39 = [v284 currencyCode], v38, v39))
  {
    sub_1BE052434();
    v41 = v40;
  }

  else
  {
    v41 = 0;
  }

  v42 = swift_getKeyPath();
  v43 = swift_getKeyPath();
  sub_1BE04D8B4(&v284);
  v42, v44, v45, v46, v47, v48, v49, v50;
  v43, v51, v52, v53, v54, v55, v56, v57;
  v65 = v284;
  v280 = v20;
  if (!v284 || (v66 = [v284 interestYTD], v65, (v275 = v66) == 0))
  {
    v41, v58, v59, v60, v61, v62, v63, v64;
    (v281)[7](v20, 1, 1, v282);
    (*(v4 + 104))(v6, *MEMORY[0x1E69B80E0], v3);
LABEL_15:
    v160 = PKPassKitBundle();
    if (v160)
    {
      v161 = v160;
      v162 = sub_1BE04B6F4();
      v164 = v163;

      (*(v4 + 8))(v6, v3);
      v284 = v162;
      v285 = v164;
      sub_1BD0DDEBC();
      v165 = sub_1BE0506C4();
      v167 = v166;
      LODWORD(v274) = v168;
      v275 = v169;
      v170 = swift_getKeyPath();
      v171 = swift_getKeyPath();
      sub_1BE04D8B4(&v284);
      v170, v172, v173, v174, v175, v176, v177, v178;
      v171, v179, v180, v181, v182, v183, v184, v185;
      v186 = v284;
      v281 = v165;
      v282 = v167;
      if (v284)
      {
        v187 = [v284 formattedAPY];

        if (v187)
        {
          v186 = sub_1BE052434();
          v189 = v188;

LABEL_21:
          v284 = v186;
          v285 = v189;
          v190 = sub_1BE0506C4();
          v192 = v191;
          v194 = v193;
          v196 = v195;
          v197 = sub_1BE051494();
          v198 = sub_1BE050564();
          v283 = v198;
          v200 = v199;
          v202 = v201;
          v204 = v203;
          v197, v199, v201, v203, v205, v206, v207, v208;
          sub_1BD0DDF10(v190, v192, (v194 & 1), v209, v210, v211, v212, v213);
          v196, v214, v215, v216, v217, v218, v219, v220;
          v221 = (v274 & 1);
          v297 = v274 & 1;
          v222 = (v202 & 1);
          v295 = v202 & 1;
          v284 = v281;
          v285 = v282;
          v286 = v274 & 1;
          *v287 = *v296;
          *&v287[3] = *&v296[3];
          v223 = v275;
          v288 = v275;
          v289 = v198;
          v290 = v200;
          v291 = v202 & 1;
          *v292 = *v294;
          *&v292[3] = *&v294[3];
          v293 = v204;
          sub_1BE052434();
          v225 = v224;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B300, &qword_1BE0BC498);
          sub_1BD0DE4F4(&qword_1EBD3B308, &qword_1EBD3B300, &qword_1BE0BC498, &unk_1BE0BC5E0);
          v226 = v277;
          sub_1BE050DE4();
          v225, v227, v228, v229, v230, v231, v232, v233;
          sub_1BD0DDF10(v281, v282, v221, v234, v235, v236, v237, v238);
          v223, v239, v240, v241, v242, v243, v244, v245;
          sub_1BD0DDF10(v283, v200, v222, v246, v247, v248, v249, v250);
          v204, v251, v252, v253, v254, v255, v256, v257;
          v258 = v280;
          v259 = v276;
          sub_1BD0DE19C(v280, v276, &qword_1EBD3B2F8, &qword_1BE0BC490);
          v260 = v278;
          sub_1BD0DE19C(v226, v278, &qword_1EBD3B2F0, &qword_1BE0BC488);
          v261 = v279;
          sub_1BD0DE19C(v259, v279, &qword_1EBD3B2F8, &qword_1BE0BC490);
          v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B310, &unk_1BE0BC4A0);
          sub_1BD0DE19C(v260, v261 + *(v262 + 48), &qword_1EBD3B2F0, &qword_1BE0BC488);
          sub_1BD0DE53C(v226, &qword_1EBD3B2F0, &qword_1BE0BC488);
          sub_1BD0DE53C(v258, &qword_1EBD3B2F8, &qword_1BE0BC490);
          sub_1BD0DE53C(v260, &qword_1EBD3B2F0, &qword_1BE0BC488);
          sub_1BD0DE53C(v259, &qword_1EBD3B2F8, &qword_1BE0BC490);
          return;
        }

        v186 = 0;
      }

      v189 = 0xE000000000000000;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_23;
  }

  v270 = v6;
  v67 = *(v4 + 104);
  v269 = *MEMORY[0x1E69B80E0];
  v268 = v67;
  v67(v9);
  v68 = PKPassKitBundle();
  if (!v68)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v69 = v68;
  v70 = sub_1BE04B6F4();
  v72 = v71;

  (*(v4 + 8))(v9, v3);
  v284 = v70;
  v285 = v72;
  sub_1BD0DDEBC();
  v73 = sub_1BE0506C4();
  v75 = v74;
  v267 = v76;
  v78 = v77;
  if (v41)
  {
    v79 = sub_1BE052404();
  }

  else
  {
    v79 = 0;
  }

  v80 = PKCurrencyAmountMake();

  if (!v80)
  {
    goto LABEL_24;
  }

  v264 = v41;
  v271 = v75;
  v272 = v73;
  v273 = v78;
  v265 = v4;
  v266 = v3;
  v81 = [v80 formattedStringValue];

  if (v81)
  {
    v82 = sub_1BE052434();
    v84 = v83;

    v284 = v82;
    v285 = v84;
    v85 = sub_1BE0506C4();
    v87 = v86;
    v89 = v88;
    v91 = v90;
    v92 = sub_1BE051494();
    v93 = sub_1BE050564();
    v263 = v93;
    v95 = v94;
    v97 = v96;
    v99 = v98;
    v92, v94, v96, v98, v100, v101, v102, v103;
    sub_1BD0DDF10(v85, v87, (v89 & 1), v104, v105, v106, v107, v108);
    v91, v109, v110, v111, v112, v113, v114, v115;
    v264, v116, v117, v118, v119, v120, v121, v122;
    v123 = (v267 & 1);
    v297 = v267 & 1;
    v124 = (v97 & 1);
    v295 = v97 & 1;
    v284 = v272;
    v285 = v271;
    v286 = v267 & 1;
    *v287 = *v296;
    *&v287[3] = *&v296[3];
    v288 = v273;
    v289 = v93;
    v290 = v95;
    v291 = v97 & 1;
    *v292 = *v294;
    *&v292[3] = *&v294[3];
    v293 = v99;
    sub_1BE052434();
    v126 = v125;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B300, &qword_1BE0BC498);
    sub_1BD0DE4F4(&qword_1EBD3B308, &qword_1EBD3B300, &qword_1BE0BC498, &unk_1BE0BC5E0);
    v127 = v274;
    sub_1BE050DE4();
    v126, v128, v129, v130, v131, v132, v133, v134;

    sub_1BD0DDF10(v272, v271, v123, v135, v136, v137, v138, v139);
    v273, v140, v141, v142, v143, v144, v145, v146;
    sub_1BD0DDF10(v263, v95, v124, v147, v148, v149, v150, v151);
    v99, v152, v153, v154, v155, v156, v157, v158;
    v159 = v280;
    sub_1BD0DE204(v127, v280, &qword_1EBD3B2F0, &qword_1BE0BC488);
    (v281)[7](v159, 0, 1, v282);
    v3 = v266;
    v4 = v265;
    v6 = v270;
    v268(v270, v269, v266);
    goto LABEL_15;
  }

LABEL_25:
  __break(1u);
}

id sub_1BD17AD78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v146 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B0D0, &qword_1BE0BC140);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v127 - v7;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B0B8, &qword_1BE0BC138);
  MEMORY[0x1EEE9AC00](v145);
  v10 = v127 - v9;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B288, &qword_1BE0BC380);
  MEMORY[0x1EEE9AC00](v143);
  v144 = v127 - v11;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v138);
  v137 = v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v136 = v127 - v14;
  v15 = sub_1BE04BD74();
  v139 = *(v15 - 8);
  v140 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B260, &qword_1BE0BC368);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v127 - v19;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B240, &qword_1BE0BC358);
  MEMORY[0x1EEE9AC00](v132);
  v142 = v127 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B290, &unk_1BE0BC388);
  v134 = *(v22 - 8);
  v135 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v141 = v127 - v23;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B238, &qword_1BE0BC350);
  MEMORY[0x1EEE9AC00](a1);
  v133 = v127 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = v127 - v28;
  if (v26 && [v26 fccStepUpRequired] && (v149 = *(a2 + 328), v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00), v130 = v29, v131 = v30, sub_1BE0516A4(), (v151 & 1) == 0))
  {
    v42 = swift_allocObject();
    v43 = memcpy((v42 + 16), a2, 0x178uLL);
    v129 = v127;
    MEMORY[0x1EEE9AC00](v43);
    sub_1BD18288C(a2, &v149);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B298, &qword_1BE0BC398);
    sub_1BD0DE4F4(&qword_1EBD3B2A0, &qword_1EBD3B298, &qword_1BE0BC398, MEMORY[0x1E69817F8]);
    sub_1BE051704();
    v151 = *(a2 + 312);
    v149 = *(a2 + 312);
    sub_1BE0516A4();
    v44 = v148;
    KeyPath = swift_getKeyPath();
    v46 = swift_allocObject();
    *(v46 + 16) = v44;
    v47 = &v20[*(v18 + 36)];
    *v47 = KeyPath;
    v47[1] = sub_1BD10DF54;
    v47[2] = v46;
    sub_1BE052434();
    v49 = v48;
    sub_1BD183C58();
    sub_1BE050DE4();
    v49, v50, v51, v52, v53, v54, v55, v56;
    sub_1BD0DE53C(v20, &qword_1EBD3B260, &qword_1BE0BC368);
    v58 = v139;
    v57 = v140;
    (*(v139 + 104))(v17, *MEMORY[0x1E69B80E0], v140);
    result = PKPassKitBundle();
    if (result)
    {
      v59 = result;
      v60 = sub_1BE04B6F4();
      v62 = v61;

      (*(v58 + 8))(v17, v57);
      *&v149 = v60;
      *(&v149 + 1) = v62;
      sub_1BD0DDEBC();
      v139 = sub_1BE0506C4();
      v64 = v63;
      v66 = v65;
      v129 = v67;
      v148 = *(a2 + 296);
      v68 = sub_1BE0516C4();
      v128 = v127;
      v69 = v149;
      v127[1] = v150;
      MEMORY[0x1EEE9AC00](v68);
      v140 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B248, &qword_1BE0BC360);
      sub_1BD182C94(&qword_1EBD3B250, &qword_1EBD3B240, &qword_1BE0BC358, sub_1BD183C58);
      sub_1BD0DE4F4(&qword_1EBD3B278, &qword_1EBD3B248, &qword_1BE0BC360, MEMORY[0x1E6981F48]);
      v70 = v142;
      v71 = v139;
      v72 = v129;
      sub_1BE050F24();
      *(&v69 + 1), v73, v74, v75, v76, v77, v78, v79;
      v69, v80, v81, v82, v83, v84, v85, v86;
      sub_1BD0DDF10(v71, v64, (v66 & 1), v87, v88, v89, v90, v91);
      v72, v92, v93, v94, v95, v96, v97, v98;
      sub_1BD0DE53C(v70, &qword_1EBD3B240, &qword_1BE0BC358);
      v99 = v140;
      v100 = swift_getKeyPath();
      v101 = swift_getKeyPath();
      sub_1BE04D8B4(&v149);
      v100, v102, v103, v104, v105, v106, v107, v108;
      v101, v109, v110, v111, v112, v113, v114, v115;
      v116 = v149;
      v148 = v151;
      sub_1BE0516C4();
      v117 = v149;
      v118 = v150;
      v119 = swift_allocObject();
      memcpy((v119 + 16), v99, 0x178uLL);
      v120 = v133;
      v121 = &v133[*(v147 + 36)];
      *v121 = v116;
      *(v121 + 8) = v117;
      v121[24] = v118;
      *(v121 + 4) = sub_1BD183D94;
      *(v121 + 5) = v119;
      v122 = type metadata accessor for SavingsFCCStepUpPresenter(0);
      v123 = type metadata accessor for FeatureError(0);
      v124 = v136;
      (*(*(v123 - 8) + 56))(v136, 1, 1, v123);
      sub_1BD0DE19C(v124, v137, &qword_1EBD416C0, &unk_1BE0BC2A0);
      sub_1BD18288C(v99, &v149);
      sub_1BE051694();
      sub_1BD0DE53C(v124, &qword_1EBD416C0, &unk_1BE0BC2A0);
      v125 = &v121[*(v122 + 32)];
      *v125 = sub_1BD3633F4;
      *(v125 + 1) = 0;
      v125[16] = 0;
      (*(v134 + 32))(v120, v141, v135);
      v126 = v130;
      sub_1BD0515D8(v120, v130);
      sub_1BD0DE19C(v126, v144, &qword_1EBD3B238, &qword_1BE0BC350);
      swift_storeEnumTagMultiPayload();
      sub_1BD183AB8();
      sub_1BD183394();
      sub_1BE04F9A4();
      return sub_1BD0DE53C(v126, &qword_1EBD3B238, &qword_1BE0BC350);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v31 = swift_allocObject();
    memcpy((v31 + 16), a2, 0x178uLL);
    sub_1BD18288C(a2, &v149);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B1F8, &qword_1BE0BC328);
    sub_1BD0DE4F4(&qword_1EBD3B200, &qword_1EBD3B1F8, &qword_1BE0BC328, MEMORY[0x1E69817F8]);
    sub_1BE051704();
    sub_1BE052434();
    v33 = v32;
    sub_1BD0DE4F4(&qword_1EBD3B0C8, &qword_1EBD3B0D0, &qword_1BE0BC140, MEMORY[0x1E697D680]);
    sub_1BE050DE4();
    v33, v34, v35, v36, v37, v38, v39, v40;
    (*(v6 + 8))(v8, v5);
    sub_1BD0DE19C(v10, v144, &qword_1EBD3B0B8, &qword_1BE0BC138);
    swift_storeEnumTagMultiPayload();
    sub_1BD183AB8();
    sub_1BD183394();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v10, &qword_1EBD3B0B8, &qword_1BE0BC138);
  }

  return result;
}

void *sub_1BD17B9D4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  result = sub_1BE0516A4();
  if ((v2 & 1) == 0)
  {
    return sub_1BE0516B4();
  }

  return result;
}

void sub_1BD17BA60(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B2C0, &qword_1BE0BC448);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v68 = &v65[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v65[-v6];
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v65[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v9 + 104))(v12, *MEMORY[0x1E69B80E0], v8, v10);
  v13 = PKPassKitBundle();
  if (v13)
  {
    v14 = v13;
    v15 = sub_1BE04B6F4();
    v17 = v16;

    (*(v9 + 8))(v12, v8);
    v69 = v15;
    v70 = v17;
    sub_1BD0DDEBC();
    v18 = sub_1BE0506C4();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = sub_1BE051464();
    v26 = sub_1BE050564();
    v28 = v27;
    v66 = v29;
    v31 = v30;
    v25, v27, v29, v30, v32, v33, v34, v35;
    sub_1BD0DDF10(v18, v20, (v22 & 1), v36, v37, v38, v39, v40);
    v24, v41, v42, v43, v44, v45, v46, v47;
    *v7 = sub_1BE051CD4();
    v7[1] = v48;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B2C8, &qword_1BE0BC450);
    sub_1BD17BD84(v67, v7 + *(v49 + 44));
    v50 = v68;
    sub_1BD0DE19C(v7, v68, &qword_1EBD3B2C0, &qword_1BE0BC448);
    *a2 = v26;
    *(a2 + 8) = v28;
    v51 = (v66 & 1);
    *(a2 + 16) = v51;
    *(a2 + 24) = v31;
    *(a2 + 32) = 0;
    *(a2 + 40) = 1;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B2D0, &qword_1BE0BC458);
    sub_1BD0DE19C(v50, a2 + *(v52 + 64), &qword_1EBD3B2C0, &qword_1BE0BC448);
    sub_1BD0D7F18(v26, v28, v51);
    sub_1BE048C84();
    sub_1BD0DE53C(v7, &qword_1EBD3B2C0, &qword_1BE0BC448);
    sub_1BD0DE53C(v50, &qword_1EBD3B2C0, &qword_1BE0BC448);
    sub_1BD0DDF10(v26, v28, v51, v53, v54, v55, v56, v57);
    v31, v58, v59, v60, v61, v62, v63, v64;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD17BD84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v24 = sub_1BE04C744();
  v3 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B2D8, &unk_1BE0BC460);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B2E0, &unk_1BE0D2030);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v23 - v18;
  sub_1BE04E4F4();
  v27 = *(a1 + 312);
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  v19[*(v14 + 44)] = (v26 & 1) == 0;
  (*(v3 + 104))(v5, *MEMORY[0x1E69BC950], v24);
  sub_1BE04C724();
  v27 = v28;
  sub_1BE0516A4();
  v12[*(v7 + 44)] = v26;
  sub_1BD0DE19C(v19, v16, &qword_1EBD3B2E0, &unk_1BE0D2030);
  sub_1BD0DE19C(v12, v9, &qword_1EBD3B2D8, &unk_1BE0BC460);
  v20 = v25;
  sub_1BD0DE19C(v16, v25, &qword_1EBD3B2E0, &unk_1BE0D2030);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B2E8, &qword_1BE0BC470);
  sub_1BD0DE19C(v9, v20 + *(v21 + 48), &qword_1EBD3B2D8, &unk_1BE0BC460);
  sub_1BD0DE53C(v12, &qword_1EBD3B2D8, &unk_1BE0BC460);
  sub_1BD0DE53C(v19, &qword_1EBD3B2E0, &unk_1BE0D2030);
  sub_1BD0DE53C(v9, &qword_1EBD3B2D8, &unk_1BE0BC460);
  return sub_1BD0DE53C(v16, &qword_1EBD3B2E0, &unk_1BE0D2030);
}

uint64_t sub_1BD17C09C@<X0>(const void *a1@<X0>, char *a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396F8, &qword_1BE0B8910);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v40 = &v36 - v4;
  v42 = sub_1BE04ED14();
  v5 = *(v42 - 1);
  MEMORY[0x1EEE9AC00](v42);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v41 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B2A8, &qword_1BE0BC430);
  v46 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v47 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  v17 = swift_allocObject();
  memcpy((v17 + 16), a1, 0x178uLL);
  sub_1BD18288C(a1, v48);
  sub_1BE051704();
  sub_1BE04ED04();
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
  v18 = v16;
  v38 = v16;
  sub_1BE050BA4();
  (*(v5 + 8))(v7, v42);
  v19 = v41;
  v20 = *(v41 + 8);
  v39 = v41 + 8;
  v42 = v20;
  v21 = v12;
  v20(v12, v8);
  v22 = v40;
  sub_1BE04E1B4();
  v23 = sub_1BE04E1D4();
  (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
  v24 = swift_allocObject();
  memcpy((v24 + 16), a1, 0x178uLL);
  sub_1BD18288C(a1, v48);
  v37 = v12;
  sub_1BE0516F4();
  v25 = v47;
  v26 = *(v46 + 16);
  v27 = v43;
  v26(v47, v18, v43);
  v28 = *(v19 + 16);
  v29 = v44;
  v28(v44, v21, v8);
  v30 = v45;
  v26(v45, v25, v27);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B2B0, &qword_1BE0BC438);
  v32 = v29;
  v28(&v30[*(v31 + 48)], v29, v8);
  v33 = v42;
  v42(v37, v8);
  v34 = *(v46 + 8);
  v34(v38, v27);
  v33(v32, v8);
  return (v34)(v47, v27);
}

uint64_t sub_1BD17C5E8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  return sub_1BE0516B4();
}

id sub_1BD17C6A0@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x1E69B80E0], v4, v6);
  result = PKPassKitBundle();
  if (result)
  {
    v10 = result;
    v11 = sub_1BE04B6F4();
    v13 = v12;

    (*(v5 + 8))(v8, v4);
    v17[0] = v11;
    v17[1] = v13;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a3 = result;
    *(a3 + 8) = v14;
    *(a3 + 16) = v15 & 1;
    *(a3 + 24) = v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD17C804@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B80E0], v2, v4);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v15[0] = v9;
    v15[1] = v11;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13 & 1;
    *(a1 + 24) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD17C970(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v17 - v3;
  v17[0] = *(a1 + 328);
  v18 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  v5 = sub_1BE0528D4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1BE0528A4();
  sub_1BD18288C(a1, v17);
  v6 = sub_1BE052894();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  memcpy(v7 + 4, a1, 0x178uLL);
  v9 = sub_1BD122C00(0, 0, v4, &unk_1BE0BC3E0, v7);
  v9, v10, v11, v12, v13, v14, v15, v16;
}

uint64_t sub_1BD17CAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  sub_1BE0528A4();
  v4[9] = sub_1BE052894();
  v6 = sub_1BE052844();
  v4[10] = v6;
  v4[11] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BD17CB88, v6, v5);
}

uint64_t sub_1BD17CB88()
{
  v1 = *(v0 + 64);
  *(v0 + 96) = *(v1 + 56);
  *(v0 + 104) = *(v1 + 64);
  *(v0 + 145) = *(v1 + 72);
  *(v0 + 112) = type metadata accessor for DeviceAuthenticationModel(0);
  *(v0 + 120) = sub_1BD184068(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel, &unk_1BE113768);
  *(v0 + 128) = sub_1BE04E3C4();
  v3 = *(v1 + 96);
  v2 = *(v1 + 112);
  *(v0 + 16) = *(v1 + 80);
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *v4 = v0;
  v4[1] = sub_1BD17CCC4;

  return sub_1BDA809C4(v0 + 16, 1);
}

uint64_t sub_1BD17CCC4()
{
  v1 = *v0;
  v2 = *(*v0 + 128);

  v2, v3, v4, v5, v6, v7, v8, v9;
  v10 = *(v1 + 88);
  v11 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1BD185A70, v11, v10);
}

void sub_1BD17CE08(const void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_1BE0528D4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1BE0528A4();
  sub_1BD18288C(a1, &v18);
  v6 = sub_1BE052894();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  memcpy(v7 + 4, a1, 0x178uLL);
  v9 = sub_1BD122C00(0, 0, v4, &unk_1BE0BC480, v7);
  v9, v10, v11, v12, v13, v14, v15, v16;
}

uint64_t sub_1BD17CF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  sub_1BE0528A4();
  v4[9] = sub_1BE052894();
  v6 = sub_1BE052844();
  v4[10] = v6;
  v4[11] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BD17CFE8, v6, v5);
}

uint64_t sub_1BD17CFE8()
{
  v1 = *(v0 + 64);
  *(v0 + 96) = *(v1 + 56);
  *(v0 + 104) = *(v1 + 64);
  *(v0 + 145) = *(v1 + 72);
  *(v0 + 112) = type metadata accessor for DeviceAuthenticationModel(0);
  *(v0 + 120) = sub_1BD184068(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel, &unk_1BE113768);
  *(v0 + 128) = sub_1BE04E3C4();
  v3 = *(v1 + 96);
  v2 = *(v1 + 112);
  *(v0 + 16) = *(v1 + 80);
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *v4 = v0;
  v4[1] = sub_1BD17D124;

  return sub_1BDA809C4(v0 + 16, 1);
}

uint64_t sub_1BD17D124()
{
  v1 = *v0;
  v2 = *(*v0 + 128);

  v2, v3, v4, v5, v6, v7, v8, v9;
  v10 = *(v1 + 88);
  v11 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1BD17D268, v11, v10);
}

uint64_t sub_1BD17D268(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 72), a2, a3, a4, a5, a6, a7, a8;
  v9 = sub_1BE04E3C4();
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  sub_1BE04D8B4((v8 + 144));
  v9, v12, v13, v14, v15, v16, v17, v18;
  v11, v19, v20, v21, v22, v23, v24, v25;
  KeyPath, v26, v27, v28, v29, v30, v31, v32;
  if (*(v8 + 144) == 1)
  {
    v33 = *(*(v8 + 64) + 264);
    if (v33)
    {
      v33(10);
    }
  }

  v34 = sub_1BE04E3C4();
  sub_1BDA81064();
  v34, v35, v36, v37, v38, v39, v40, v41;
  v42 = *(v8 + 8);

  return v42();
}

void sub_1BD17D3AC(uint64_t *a1@<X8>)
{
  v71 = a1;
  v1 = sub_1BE04C744();
  v73 = *(v1 - 8);
  v74 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v72 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BE04C734();
  v77 = *(v3 - 8);
  v78 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v76 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v75 = &v70 - v6;
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, *MEMORY[0x1E69B80E0], v7, v9);
  v12 = PKPassKitBundle();
  if (v12)
  {
    v13 = v12;
    v14 = sub_1BE04B6F4();
    v16 = v15;

    (*(v8 + 8))(v11, v7);
    v81 = v14;
    v82 = v16;
    sub_1BD0DDEBC();
    v17 = sub_1BE0506C4();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = sub_1BE051464();
    v25 = sub_1BE050564();
    v70 = v26;
    v28 = v27;
    v79 = v29;
    v24, v26, v27, v29, v30, v31, v32, v33;
    sub_1BD0DDF10(v17, v19, (v21 & 1), v34, v35, v36, v37, v38);
    v23, v39, v40, v41, v42, v43, v44, v45;
    (*(v73 + 104))(v72, *MEMORY[0x1E69BC950], v74);
    v46 = v75;
    sub_1BE04C724();
    LOBYTE(v81) = v28 & 1;
    v80 = 1;
    v48 = v76;
    v47 = v77;
    v49 = *(v77 + 16);
    v50 = v78;
    v49(v76, v46, v78);
    v51 = v81;
    v52 = v70;
    v53 = v71;
    *v71 = v25;
    v53[1] = v52;
    *(v53 + 16) = v51;
    v54 = v80;
    v53[3] = v79;
    v53[4] = 0;
    *(v53 + 40) = v54;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B210, &qword_1BE0BC338);
    v49(v53 + *(v55 + 64), v48, v50);
    sub_1BD0D7F18(v25, v52, v51);
    v56 = *(v47 + 8);
    v57 = v79;
    sub_1BE048C84();
    v56(v46, v50);
    v56(v48, v50);
    sub_1BD0DDF10(v25, v52, v81, v58, v59, v60, v61, v62);
    v57, v63, v64, v65, v66, v67, v68, v69;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD17D7A0(const void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B0D0, &qword_1BE0BC140);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17[-v4];
  v6 = swift_allocObject();
  memcpy((v6 + 16), a1, 0x178uLL);
  sub_1BD18288C(a1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B1F8, &qword_1BE0BC328);
  sub_1BD0DE4F4(&qword_1EBD3B200, &qword_1EBD3B1F8, &qword_1BE0BC328, MEMORY[0x1E69817F8]);
  sub_1BE051704();
  sub_1BE052434();
  v8 = v7;
  sub_1BD0DE4F4(&qword_1EBD3B0C8, &qword_1EBD3B0D0, &qword_1BE0BC140, MEMORY[0x1E697D680]);
  sub_1BE050DE4();
  v8, v9, v10, v11, v12, v13, v14, v15;
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1BD17D9C8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B208, &qword_1BE0BC330);
  return a1();
}

void sub_1BD17DA20(uint64_t *a1@<X8>)
{
  v71 = a1;
  v1 = sub_1BE04C744();
  v73 = *(v1 - 8);
  v74 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v72 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BE04C734();
  v77 = *(v3 - 8);
  v78 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v76 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v75 = &v70 - v6;
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, *MEMORY[0x1E69B80E0], v7, v9);
  v12 = PKPassKitBundle();
  if (v12)
  {
    v13 = v12;
    v14 = sub_1BE04B6F4();
    v16 = v15;

    (*(v8 + 8))(v11, v7);
    v81 = v14;
    v82 = v16;
    sub_1BD0DDEBC();
    v17 = sub_1BE0506C4();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = sub_1BE051464();
    v25 = sub_1BE050564();
    v70 = v26;
    v28 = v27;
    v79 = v29;
    v24, v26, v27, v29, v30, v31, v32, v33;
    sub_1BD0DDF10(v17, v19, (v21 & 1), v34, v35, v36, v37, v38);
    v23, v39, v40, v41, v42, v43, v44, v45;
    (*(v73 + 104))(v72, *MEMORY[0x1E69BC950], v74);
    v46 = v75;
    sub_1BE04C724();
    LOBYTE(v81) = v28 & 1;
    v80 = 1;
    v48 = v76;
    v47 = v77;
    v49 = *(v77 + 16);
    v50 = v78;
    v49(v76, v46, v78);
    v51 = v81;
    v52 = v70;
    v53 = v71;
    *v71 = v25;
    v53[1] = v52;
    *(v53 + 16) = v51;
    v54 = v80;
    v53[3] = v79;
    v53[4] = 0;
    *(v53 + 40) = v54;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B210, &qword_1BE0BC338);
    v49(v53 + *(v55 + 64), v48, v50);
    sub_1BD0D7F18(v25, v52, v51);
    v56 = *(v47 + 8);
    v57 = v79;
    sub_1BE048C84();
    v56(v46, v50);
    v56(v48, v50);
    sub_1BD0DDF10(v25, v52, v81, v58, v59, v60, v61, v62);
    v57, v63, v64, v65, v66, v67, v68, v69;
  }

  else
  {
    __break(1u);
  }
}

id sub_1BD17DE14@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v44);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v43 - v6;
  v48 = type metadata accessor for AccountInformationView(0);
  MEMORY[0x1EEE9AC00](v48);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04BD74();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B0F0, &qword_1BE0BC150);
  v46 = *(v14 - 8);
  v47 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v45 = &v43 - v16;
  (*(v11 + 104))(v13, *MEMORY[0x1E69B80E0], v10, v15);
  result = PKPassKitBundle();
  if (result)
  {
    v18 = result;
    v19 = sub_1BE04B6F4();
    v21 = v20;

    (*(v11 + 8))(v13, v10);
    v53 = v19;
    v54 = v21;
    v55 = *a1;
    v22 = *(&v55 + 1);
    type metadata accessor for AccountUserInfoModel(0);
    sub_1BD184068(&qword_1EBD3AE30, type metadata accessor for AccountUserInfoModel, &unk_1BE0CAEE0);
    v43 = v22;
    sub_1BE04E3C4();
    v50 = 0;
    sub_1BE051694();
    v23 = v52;
    v9[32] = v51;
    *(v9 + 5) = v23;
    v24 = v48;
    v25 = type metadata accessor for FeatureError(0);
    (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
    sub_1BD0DE19C(v7, v4, &qword_1EBD416C0, &unk_1BE0BC2A0);
    sub_1BE051694();
    sub_1BD0DE53C(v7, &qword_1EBD416C0, &unk_1BE0BC2A0);
    v26 = *(v24 + 32);
    *&v9[v26] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B1A8, &unk_1BE0BC2E0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for AccountModel(0);
    sub_1BD184068(&qword_1EBD3AE50, type metadata accessor for AccountModel, &unk_1BE0BFF20);
    v27 = v43;
    *v9 = sub_1BE04E954();
    *(v9 + 1) = v28;
    v29 = sub_1BE04E954();
    v31 = v30;
    sub_1BD0DE53C(&v55, &qword_1EBD3AE38, &qword_1BE0BBF38);
    *(v9 + 2) = v29;
    *(v9 + 3) = v31;
    sub_1BD184068(&qword_1EBD3B1F0, type metadata accessor for AccountInformationView, &unk_1BE0FF9D8);
    sub_1BD0DDEBC();
    v32 = v45;
    sub_1BE04E8C4();
    sub_1BE052434();
    v34 = v33;
    sub_1BD0DE4F4(&qword_1EBD3B0E8, &qword_1EBD3B0F0, &qword_1BE0BC150, MEMORY[0x1E697C090]);
    v35 = v47;
    sub_1BE050DE4();
    v34, v36, v37, v38, v39, v40, v41, v42;
    return (*(v46 + 8))(v32, v35);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD17E38C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v125 = a2;
  v126 = a1;
  v118 = sub_1BE051AD4();
  v2 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v117 = &v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v116 = &v106 - v5;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v115);
  v114 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v106 - v8;
  v10 = type metadata accessor for SavingsBeneficiaryView(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B198, &qword_1BE0BDD70);
  MEMORY[0x1EEE9AC00](v124);
  v119 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v121 = &v106 - v15;
  v16 = sub_1BE04BD74();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B110, &qword_1BE0BC160);
  v122 = *(v20 - 8);
  v123 = v20;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v120 = &v106 - v22;
  (*(v17 + 104))(v19, *MEMORY[0x1E69B80E0], v16, v21);
  v23 = PKPassKitBundle();
  if (v23)
  {
    v24 = v23;
    v25 = sub_1BE04B6F4();
    v27 = v26;

    (*(v17 + 8))(v19, v16);
    v131 = v25;
    v132 = v27;
    v133 = *v126;
    v28 = *(&v133 + 1);
    v109 = type metadata accessor for AccountUserInfoModel(0);
    v108 = sub_1BD184068(&qword_1EBD3AE30, type metadata accessor for AccountUserInfoModel, &unk_1BE0CAEE0);
    v107 = v28;
    v29 = sub_1BE04E3C4();
    v30 = type metadata accessor for ObservableHostingController();
    v31 = sub_1BD184068(&qword_1EBD3B1A0, type metadata accessor for ObservableHostingController, &protocol conformance descriptor for ObservableHostingController);
    v113 = v30;
    v112 = v31;
    *v12 = sub_1BE04EEC4();
    v12[1] = v32;
    v33 = v10[7];
    *(v12 + v33) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B1A8, &unk_1BE0BC2E0);
    swift_storeEnumTagMultiPayload();
    v106 = type metadata accessor for FeatureError(0);
    v34 = *(v106 - 8);
    v110 = *(v34 + 56);
    v111 = v34 + 56;
    v110(v9, 1, 1, v106);
    sub_1BD0DE19C(v9, v114, &qword_1EBD416C0, &unk_1BE0BC2A0);
    sub_1BE051694();
    sub_1BD0DE53C(v9, &qword_1EBD416C0, &unk_1BE0BC2A0);
    v35 = v12 + v10[9];
    LOBYTE(v127) = 0;
    sub_1BE051694();
    v36 = v130;
    *v35 = v129;
    *(v35 + 1) = v36;
    v37 = v116;
    v38 = v118;
    (*(v2 + 104))(v116, *MEMORY[0x1E697D710], v118);
    (*(v2 + 16))(v117, v37, v38);
    sub_1BE051694();
    (*(v2 + 8))(v37, v38);
    v39 = (v12 + v10[12]);
    type metadata accessor for DeviceAuthenticationModel(0);
    v40 = swift_allocObject();
    *(v40 + OBJC_IVAR____TtC9PassKitUI25DeviceAuthenticationModel_delegate + 8) = 0;
    swift_unknownObjectWeakInit();
    swift_beginAccess();
    LOBYTE(v127) = 0;
    sub_1BE04D874();
    swift_endAccess();
    v41 = [objc_allocWithZone(MEMORY[0x1E696EE50]) init];
    *(v40 + OBJC_IVAR____TtC9PassKitUI25DeviceAuthenticationModel_context) = v41;
    sub_1BD184068(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel, &unk_1BE113768);
    *v39 = sub_1BE04E954();
    v39[1] = v42;
    v43 = v12 + v10[13];
    LOBYTE(v127) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B1B8, &qword_1BE0D2830);
    sub_1BE051694();
    v44 = v130;
    type metadata accessor for AccountModel(0);
    sub_1BD184068(&qword_1EBD3AE50, type metadata accessor for AccountModel, &unk_1BE0BFF20);
    v45 = v107;
    v12[2] = sub_1BE04E954();
    v12[3] = v46;
    sub_1BE048964();
    v12[4] = sub_1BE04E954();
    v12[5] = v47;
    LOBYTE(v127) = 1;
    sub_1BE051694();
    v44, v48, v49, v50, v51, v52, v53, v54;
    v55 = v130;
    *v43 = v129;
    *(v43 + 1) = v55;
    KeyPath = swift_getKeyPath();
    v57 = swift_getKeyPath();
    sub_1BE04D8B4(&v129);
    KeyPath, v58, v59, v60, v61, v62, v63, v64;
    v57, v65, v66, v67, v68, v69, v70, v71;
    v72 = v129;
    v73 = type metadata accessor for AddBeneficiaryModel(0);
    v74 = objc_allocWithZone(v73);
    v75 = &v74[OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__onSubmission];
    *v75 = 0;
    v75[1] = 0;
    v74[OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__isLoading] = 0;
    v76 = OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__error;
    v77 = v106;
    v78 = v110;
    v110(&v74[OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__error], 1, 1, v106);
    v78(&v74[v76], 1, 1, v77);
    sub_1BE04B5C4();
    *&v74[OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__account] = v72;
    v128.receiver = v74;
    v128.super_class = v73;
    v79 = objc_msgSendSuper2(&v128, sel_init);
    v80 = (v12 + v10[10]);
    *v80 = v79;
    v80[1] = 0;
    v129 = v79;
    v130 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B1C0, &qword_1BE0BC2F0);
    sub_1BE0516A4();
    v81 = v127;
    v82 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v82);
    *(&v106 - 4) = v81;
    *(&v106 - 3) = sub_1BD18386C;
    *(&v106 - 2) = v29;
    v129 = v81;
    sub_1BD184068(&qword_1EBD3B1C8, type metadata accessor for AddBeneficiaryModel, &unk_1BE112088);
    sub_1BE048964();
    sub_1BE04B584();
    v82, v83, v84, v85, v86, v87, v88, v89;

    sub_1BD0DE53C(&v133, &qword_1EBD3AE38, &qword_1BE0BBF38);

    v90 = *(v126 + 5);
    if (v90)
    {
      sub_1BE048964();
      v91 = sub_1BE04D804();
      v92 = v119;
      sub_1BD183894(v12, v119);
      v93 = (v92 + *(v124 + 36));
      *v93 = v91;
      v93[1] = v90;
      sub_1BD0DE204(v92, v121, &qword_1EBD3B198, &qword_1BE0BDD70);
      sub_1BD1838F8();
      sub_1BD0DDEBC();
      v94 = v120;
      sub_1BE04E8C4();
      sub_1BE052434();
      v96 = v95;
      sub_1BD0DE4F4(&qword_1EBD3B108, &qword_1EBD3B110, &qword_1BE0BC160, MEMORY[0x1E697C090]);
      v97 = v123;
      sub_1BE050DE4();
      v96, v98, v99, v100, v101, v102, v103, v104;
      return (*(v122 + 8))(v94, v97);
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_1BE04EEB4();
  __break(1u);
  return result;
}

uint64_t sub_1BD17EF40@<X0>(uint64_t a2@<X8>)
{
  v38 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v35);
  v3 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v30 - v5;
  v33 = type metadata accessor for DocumentsView(0);
  MEMORY[0x1EEE9AC00](v33);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B078, &qword_1BE0BC0C8);
  v10 = *(v9 - 8);
  v36 = v9;
  v37 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v34 = v30 - v11;
  v32 = type metadata accessor for SavingsStatementsModel(0);
  sub_1BD184068(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel, &unk_1BE0CAB80);
  v31 = sub_1BE04E3C4();
  type metadata accessor for TaxFormsModel(0);
  sub_1BD184068(&qword_1EBD3B320, type metadata accessor for TaxFormsModel, &unk_1BE0F01A8);
  v30[1] = sub_1BE04E3C4();
  *(v8 + 4) = sub_1BD172644;
  *(v8 + 5) = 0;
  v8[48] = 0;
  v12 = type metadata accessor for FeatureError(0);
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_1BD0DE19C(v6, v3, &qword_1EBD416C0, &unk_1BE0BC2A0);
  sub_1BE051694();
  sub_1BD0DE53C(v6, &qword_1EBD416C0, &unk_1BE0BC2A0);
  v13 = v31;
  *v8 = sub_1BE04E954();
  *(v8 + 1) = v14;
  v15 = sub_1BE04E954();
  v17 = v16;

  *(v8 + 2) = v15;
  *(v8 + 3) = v17;
  sub_1BD184068(&qword_1EBD3B328, type metadata accessor for DocumentsView, &unk_1BE0C4A08);
  v18 = v34;
  sub_1BE04E8B4();
  sub_1BE052434();
  v20 = v19;
  sub_1BD0DE4F4(&qword_1EBD3B070, &qword_1EBD3B078, &qword_1BE0BC0C8, MEMORY[0x1E697C090]);
  v21 = v36;
  sub_1BE050DE4();
  v20, v22, v23, v24, v25, v26, v27, v28;
  return (*(v37 + 8))(v18, v21);
}

id sub_1BD17F380@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B80E0], v2, v4);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v15[0] = v9;
    v15[1] = v11;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13 & 1;
    *(a1 + 24) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD17F4EC(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BE04C124();
  v6 = v5;
  sub_1BE04C124();
  v8 = v7;
  sub_1BE04C124();
  v114[0] = MEMORY[0x1E69E7CC0];
  if (*(v2 + 40))
  {
    v10 = v9;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v19 = Strong;
      v88 = v4;
      v20 = v6;
      v21 = swift_allocObject();
      *(v21 + 16) = v19;
      v22 = objc_allocWithZone(PKTextRangeHyperlink);
      v23 = v19;
      v24 = sub_1BE052404();
      v8, v25, v26, v27, v28, v29, v30, v31;
      *&v108 = sub_1BD184354;
      *(&v108 + 1) = v21;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v107 = sub_1BD126964;
      *(&v107 + 1) = &block_descriptor_137;
      v32 = _Block_copy(&aBlock);
      *(&v108 + 1), v33, v34, v35, v36, v37, v38, v39;
      v40 = [v22 initWithLinkText:v24 action:v32];
      _Block_release(v32);

      if (v40)
      {
        v41 = v40;
        MEMORY[0x1BFB3F7A0]();
        if (*((v114[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v114[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BE052774();
        }

        sub_1BE0527C4();

        v42 = v114[0];
      }

      else
      {
        v42 = MEMORY[0x1E69E7CC0];
      }

      v6 = v20;
      v50 = swift_allocObject();
      *(v50 + 16) = v23;
      v51 = objc_allocWithZone(PKTextRangeHyperlink);
      v52 = v23;
      v53 = sub_1BE052404();
      v10, v54, v55, v56, v57, v58, v59, v60;
      *&v108 = sub_1BD18435C;
      *(&v108 + 1) = v50;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v107 = sub_1BD126964;
      *(&v107 + 1) = &block_descriptor_143;
      v61 = _Block_copy(&aBlock);
      *(&v108 + 1), v62, v63, v64, v65, v66, v67, v68;
      v69 = [v51 initWithLinkText:v53 action:v61];
      _Block_release(v61);

      if (v69)
      {
        v70 = v69;
        MEMORY[0x1BFB3F7A0]();
        v4 = v88;
        if (*((v114[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v114[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BE052774();
        }

        sub_1BE0527C4();

        v42 = v114[0];
      }

      else
      {

        v4 = v88;
      }
    }

    else
    {
      v10, v12, v13, v14, v15, v16, v17, v18;
      v8, v43, v44, v45, v46, v47, v48, v49;
      v42 = MEMORY[0x1E69E7CC0];
    }

    *a1 = sub_1BE04F7C4();
    *(a1 + 8) = 0x402C000000000000;
    *(a1 + 16) = 0;
    sub_1BD180E54(v114, v4, v6, &v90);
    v102 = v94;
    v103 = v95;
    v104 = v96;
    v105 = v97;
    v98 = v90;
    v99 = v91;
    v100 = v92;
    v101 = v93;
    aBlock = v90;
    v107 = v91;
    v108 = v92;
    v109 = v93;
    v110 = v94;
    v111 = v95;
    v112 = v96;
    v113 = v97;
    sub_1BD0DE19C(&v98, v89, &qword_1EBD3B3A8, &qword_1BE0BC508);
    sub_1BD0DE53C(&aBlock, &qword_1EBD3B3A8, &qword_1BE0BC508);
    v42, v71, v72, v73, v74, v75, v76, v77;
    v6, v78, v79, v80, v81, v82, v83, v84;
    v85 = v103;
    *(a1 + 88) = v102;
    *(a1 + 104) = v85;
    *(a1 + 120) = v104;
    v86 = v99;
    *(a1 + 24) = v98;
    *(a1 + 40) = v86;
    v87 = v101;
    *(a1 + 56) = v100;
    *(a1 + 136) = v105;
    *(a1 + 72) = v87;
  }

  else
  {
    type metadata accessor for ObservableHostingController();
    sub_1BD184068(&qword_1EBD3B1A0, type metadata accessor for ObservableHostingController, &protocol conformance descriptor for ObservableHostingController);
    sub_1BE04EEB4();
    __break(1u);
  }
}

id sub_1BD17F9E0@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v95 = a2;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B330, &unk_1BE0D2D50);
  MEMORY[0x1EEE9AC00](v97);
  v98 = &v86 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B338, &qword_1BE0BC4B0);
  v104 = *(v6 - 8);
  v105 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v96 = &v86 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B340, &qword_1BE0BC4B8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v107 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v106 = &v86 - v11;
  v100 = sub_1BE04BD74();
  v12 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v94 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v92 = *(v14 - 8);
  v93 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v91 = &v86 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45200, &qword_1BE0BB900);
  v101 = *(v16 - 8);
  v102 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v90 = &v86 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v86 - v22;
  v24 = sub_1BE04AA64();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v89 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v86 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B348, &qword_1BE0BC4C0);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v103 = &v86 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v108 = &v86 - v34;
  if (!a1)
  {
    (*(v25 + 56))(v23, 1, 1, v24, v33);
LABEL_7:
    sub_1BD0DE53C(v23, &unk_1EBD3CF70, &qword_1BE0BA000);
    v38 = 1;
    v39 = v108;
    (*(v101 + 56))(v108, 1, 1, v102);
    if (!a1)
    {
      v40 = v106;
LABEL_15:
      (*(v104 + 56))(v40, v38, 1, v105);
      v83 = v103;
      sub_1BD0DE19C(v39, v103, &qword_1EBD3B348, &qword_1BE0BC4C0);
      v84 = v107;
      sub_1BD0DE19C(v40, v107, &qword_1EBD3B340, &qword_1BE0BC4B8);
      sub_1BD0DE19C(v83, a3, &qword_1EBD3B348, &qword_1BE0BC4C0);
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B350, &qword_1BE0BC4C8);
      sub_1BD0DE19C(v84, a3 + *(v85 + 48), &qword_1EBD3B340, &qword_1BE0BC4B8);
      sub_1BD0DE53C(v40, &qword_1EBD3B340, &qword_1BE0BC4B8);
      sub_1BD0DE53C(v39, &qword_1EBD3B348, &qword_1BE0BC4C0);
      sub_1BD0DE53C(v84, &qword_1EBD3B340, &qword_1BE0BC4B8);
      return sub_1BD0DE53C(v83, &qword_1EBD3B348, &qword_1BE0BC4C0);
    }

    v40 = v106;
LABEL_11:
    v63 = [a1 termsIdentifier];
    if (v63)
    {

      v64 = swift_allocObject();
      v65 = v95;
      v66 = memcpy((v64 + 16), v95, 0x178uLL);
      MEMORY[0x1EEE9AC00](v66);
      *(&v86 - 2) = v65;
      sub_1BD18288C(v65, &v110);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B358, &unk_1BE0BC4D0);
      sub_1BD0DE4F4(&qword_1EBD3B360, &qword_1EBD3B358, &unk_1BE0BC4D0, MEMORY[0x1E69817F8]);
      v67 = v98;
      sub_1BE051704();
      v68 = (v65 + 360);
      v39 = v108;
      v110 = *v68;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
      sub_1BE0516A4();
      v69 = v109;
      KeyPath = swift_getKeyPath();
      v71 = swift_allocObject();
      *(v71 + 16) = v69;
      v72 = (v67 + *(v97 + 36));
      *v72 = KeyPath;
      v72[1] = sub_1BD185ABC;
      v72[2] = v71;
      sub_1BE052434();
      v74 = v73;
      sub_1BD1840F8();
      v75 = v96;
      sub_1BE050DE4();
      v74, v76, v77, v78, v79, v80, v81, v82;
      sub_1BD0DE53C(v67, &qword_1EBD3B330, &unk_1BE0D2D50);
      sub_1BD0DE204(v75, v40, &qword_1EBD3B338, &qword_1BE0BC4B0);
      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    goto LABEL_15;
  }

  v99 = a1;
  v35 = [a1 privacyPolicyURL];
  if (v35)
  {
    v36 = v35;
    sub_1BE04A9F4();

    (*(v25 + 56))(v20, 0, 1, v24);
  }

  else
  {
    (*(v25 + 56))(v20, 1, 1, v24);
  }

  sub_1BD0DE204(v20, v23, &unk_1EBD3CF70, &qword_1BE0BA000);
  v37 = (*(v25 + 48))(v23, 1, v24);
  a1 = v99;
  if (v37 == 1)
  {
    goto LABEL_7;
  }

  v87 = v29;
  v88 = a3;
  v86 = *(v25 + 32);
  v86(v29, v23, v24);
  v41 = v94;
  (*(v12 + 104))(v94, *MEMORY[0x1E69B80E0], v100);
  result = PKPassKitBundle();
  if (result)
  {
    v43 = result;
    v44 = sub_1BE04B6F4();
    v46 = v45;

    (*(v12 + 8))(v41, v100);
    *&v110 = v44;
    *(&v110 + 1) = v46;
    v47 = v89;
    v48 = v87;
    (*(v25 + 16))(v89, v87, v24);
    v49 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v50 = swift_allocObject();
    v86((v50 + v49), v47, v24);
    sub_1BD0DDEBC();
    v51 = v91;
    sub_1BE051744();
    sub_1BE052434();
    v53 = v52;
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
    v54 = v90;
    v55 = v93;
    sub_1BE050DE4();
    v53, v56, v57, v58, v59, v60, v61, v62;
    (*(v92 + 8))(v51, v55);
    (*(v25 + 8))(v48, v24);
    v39 = v108;
    sub_1BD0DE204(v54, v108, &unk_1EBD45200, &qword_1BE0BB900);
    (*(v101 + 56))(v39, 0, 1, v102);
    a3 = v88;
    v40 = v106;
    a1 = v99;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void sub_1BD18050C(uint64_t a1)
{
  v1 = sub_1BE04A9C4();
  PKOpenURL();
}

void sub_1BD18055C(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE04D8B4(v54);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v3, v11, v12, v13, v14, v15, v16, v17;
  v18 = v54[0];
  if (v54[0])
  {
    v19 = [v54[0] termsIdentifier];

    if (v19)
    {
      v20 = *(a1 + 344);
      v21 = *(a1 + 352);
      v57 = v21;
      v58 = v20;
      v54[0] = v20;
      v54[1] = v21;
      sub_1BD0DE19C(&v58, aBlock, &qword_1EBD3B390, &qword_1BE0BC4F0);
      sub_1BD0DE19C(&v57, aBlock, &qword_1EBD3B398, &qword_1BE0BC4F8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B3A0, &qword_1BE0BC500);
      sub_1BE0516A4();
      v22 = aBlock[0];
      if (aBlock[0])
      {
        sub_1BD0DE53C(&v58, &qword_1EBD3B390, &qword_1BE0BC4F0);
        sub_1BD0DE53C(&v57, &qword_1EBD3B398, &qword_1BE0BC4F8);
      }

      else
      {
        v23 = swift_getKeyPath();
        v24 = swift_getKeyPath();
        sub_1BE04D8B4(v54);
        v23, v25, v26, v27, v28, v29, v30, v31;
        v24, v32, v33, v34, v35, v36, v37, v38;
        v39 = v54[0];
        v40 = [objc_opt_self() sharedService];
        if (!v40)
        {

          __break(1u);
          return;
        }

        v41 = v40;
        v42 = [objc_allocWithZone(PKAccountTermsAndConditionsController) initWithAccount:v39 webService:v40 context:8 termsIdentifier:v19];

        v54[0] = v20;
        v54[1] = v21;
        aBlock[0] = v42;
        sub_1BE0516B4();
        sub_1BD0DE53C(&v58, &qword_1EBD3B390, &qword_1BE0BC4F0);
        sub_1BD0DE53C(&v57, &qword_1EBD3B398, &qword_1BE0BC4F8);
      }

      *v54 = *(a1 + 360);
      LOBYTE(aBlock[0]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
      sub_1BE0516B4();
      v54[0] = v20;
      v54[1] = v21;
      sub_1BE0516A4();
      v43 = aBlock[0];
      if (aBlock[0])
      {
        v44 = swift_allocObject();
        memcpy((v44 + 16), a1, 0x178uLL);
        aBlock[4] = sub_1BD18434C;
        v56 = v44;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BD14E1D8;
        aBlock[3] = &block_descriptor_131;
        v45 = _Block_copy(aBlock);
        v46 = v56;
        sub_1BD18288C(a1, v54);
        v46, v47, v48, v49, v50, v51, v52, v53;
        [v43 termsViewControllerWithCompletion_];
        _Block_release(v45);
      }
    }
  }
}

void sub_1BD1808D4(void *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a3 + 360);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  if (a1)
  {
    if (*(a3 + 40))
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v6 = Strong;
        [Strong presentViewController:a1 animated:1 completion:{0, v8}];
      }
    }

    else
    {
      type metadata accessor for ObservableHostingController();
      sub_1BD184068(&qword_1EBD3B1A0, type metadata accessor for ObservableHostingController, &protocol conformance descriptor for ObservableHostingController);
      v7 = a1;
      sub_1BE04EEB4();
      __break(1u);
    }
  }
}

uint64_t sub_1BD1809EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  *a5 = sub_1BE04F504();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  return a4(a1);
}

void sub_1BD180A5C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B2E0, &unk_1BE0D2030);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - v7;
  v9 = sub_1BE04BD74();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x1E69B80E0], v9, v11);
  v14 = PKPassKitBundle();
  if (v14)
  {
    v15 = v14;
    v16 = sub_1BE04B6F4();
    v18 = v17;

    (*(v10 + 8))(v13, v9);
    *&v41 = v16;
    *(&v41 + 1) = v18;
    sub_1BD0DDEBC();
    v19 = sub_1BE0506C4();
    v21 = v20;
    LOBYTE(v16) = v22;
    v24 = v23;
    sub_1BE04E4F4();
    v41 = *(v39 + 360);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516A4();
    v8[*(v3 + 36)] = (v40 & 1) == 0;
    sub_1BD0DE19C(v8, v5, &qword_1EBD3B2E0, &unk_1BE0D2030);
    *a2 = v19;
    *(a2 + 8) = v21;
    v25 = (v16 & 1);
    *(a2 + 16) = v25;
    *(a2 + 24) = v24;
    *(a2 + 32) = 0;
    *(a2 + 40) = 1;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B388, &qword_1BE0BC4E8);
    sub_1BD0DE19C(v5, a2 + *(v26 + 64), &qword_1EBD3B2E0, &unk_1BE0D2030);
    sub_1BD0D7F18(v19, v21, v25);
    sub_1BE048C84();
    sub_1BD0DE53C(v8, &qword_1EBD3B2E0, &unk_1BE0D2030);
    sub_1BD0DE53C(v5, &qword_1EBD3B2E0, &unk_1BE0D2030);
    sub_1BD0DDF10(v19, v21, v25, v27, v28, v29, v30, v31);
    v24, v32, v33, v34, v35, v36, v37, v38;
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD180D4C(uint64_t a1)
{
  v2 = [objc_opt_self() pk:128 defaultPresentationActionForContext:?];
  v2[2](v2, a1);

  _Block_release(v2);
}

void sub_1BD180DB8(void *a1)
{
  v2 = [objc_allocWithZone(PKAccountLegalDisclosureViewController) initWithFeature_];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
  [a1 presentViewController:v3 animated:1 completion:0];
}

uint64_t sub_1BD180E54@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (sub_1BD17278C() == 2)
  {
    v8 = sub_1BE0501E4();
    sub_1BE04E1F4();
    *(&v10 + 1) = v9;
    *(&v12 + 1) = v11;
    v13 = v8;
    v14 = xmmword_1BE0BBB00;
  }

  else
  {
    v13 = 0;
    v14 = xmmword_1BE0BBAF0;
    v10 = 0uLL;
    v12 = 0uLL;
  }

  v15 = *a1;
  *a4 = v14;
  *(a4 + 16) = v13;
  *(a4 + 24) = v10;
  *(a4 + 40) = v12;
  *(a4 + 56) = 0;
  *(a4 + 64) = v15;
  *(a4 + 72) = 4;
  *(a4 + 80) = 0;
  *(a4 + 88) = a2;
  *(a4 + 96) = a3;
  *(a4 + 104) = 0;
  *(a4 + 112) = 0;
  sub_1BE048C84();

  return sub_1BE048C84();
}

void sub_1BD180F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BD179980(a2, a3, a4 & 0xFFFFFFFFFFLL);
  type metadata accessor for SavingsActionSheetObserver(0);
  sub_1BD184068(&qword_1EBD3AE00, type metadata accessor for SavingsActionSheetObserver, &unk_1BE0D8458);
  v4 = sub_1BE04E3C4();
  v4[OBJC_IVAR____TtC9PassKitUI26SavingsActionSheetObserver_hasPresentedSheetOnAppear] = 1;

  v4, v5, v6, v7, v8, v9, v10, v11;
}

void sub_1BD180FF4(uint64_t a1)
{
  type metadata accessor for SavingsActionSheetObserver(0);
  sub_1BD184068(&qword_1EBD3AE00, type metadata accessor for SavingsActionSheetObserver, &unk_1BE0D8458);
  sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8C4();
  sub_1BD1DEDD4();
}

uint64_t sub_1BD18112C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v28 = a2;
  v3 = sub_1BE04FF64();
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v23 = *(a1 + 16);
  v24 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE0500D4();
  sub_1BE04EBD4();
  v21 = *(a1 + 24);
  sub_1BE04EBD4();
  swift_getTupleTypeMetadata3();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051774();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  v20[1] = swift_getWitnessTable();
  v5 = sub_1BE04E5B4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v20 - v7;
  WitnessTable = swift_getWitnessTable();
  v33 = v5;
  v34 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v20 - v15;
  sub_1BE050194();
  v29 = v23;
  v30 = v21;
  v31 = *(v22 + 32);
  v32 = v25;
  sub_1BE04E5A4();
  v17 = v24;
  sub_1BE04FF44();
  sub_1BE050D14();
  (*(v26 + 8))(v17, v27);
  (*(v6 + 8))(v8, v5);
  v33 = v5;
  v34 = WitnessTable;
  swift_getOpaqueTypeConformance2();
  sub_1BD147308();
  v18 = *(v11 + 8);
  v18(v13, OpaqueTypeMetadata2);
  sub_1BD147308();
  return (v18)(v16, OpaqueTypeMetadata2);
}

uint64_t sub_1BD181570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a5;
  v44 = a4;
  v41 = a3;
  v43 = a1;
  v48 = a6;
  sub_1BE0500D4();
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  swift_getTupleTypeMetadata2();
  v46 = sub_1BE051E34();
  WitnessTable = swift_getWitnessTable();
  v39 = sub_1BE051854();
  v47 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v40 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v31 - v10;
  swift_getTupleTypeMetadata3();
  sub_1BE051E34();
  swift_getWitnessTable();
  v11 = sub_1BE051774();
  v34 = *(v11 - 8);
  v12 = v34;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v35 = &v31 - v16;
  v17 = v41;
  v54 = a2;
  v55 = v41;
  v18 = v44;
  v56 = v44;
  v57 = a5;
  v19 = v43;
  v58 = v43;
  sub_1BE04F504();
  sub_1BE051764();
  v37 = swift_getWitnessTable();
  v33 = v11;
  sub_1BD147308();
  v20 = *(v12 + 8);
  v36 = v12 + 8;
  v38 = v20;
  v20(v14, v11);
  sub_1BE04F7C4();
  v49 = a2;
  v50 = v17;
  v51 = v18;
  v52 = v32;
  v53 = v19;
  v21 = v40;
  sub_1BE051844();
  v22 = v39;
  v23 = swift_getWitnessTable();
  v24 = v42;
  sub_1BD147308();
  v25 = v47;
  v26 = *(v47 + 8);
  v26(v21, v22);
  v27 = v35;
  v28 = v33;
  (*(v34 + 16))(v14, v35, v33);
  v62[0] = v14;
  (*(v25 + 16))(v21, v24, v22);
  v62[1] = v21;
  v61[0] = v28;
  v61[1] = v22;
  v59 = v37;
  v60 = v23;
  sub_1BD13A4C4(v62, 2uLL, v61);
  v26(v24, v22);
  v29 = v38;
  v38(v27, v28);
  v26(v21, v22);
  return v29(v14, v28);
}

uint64_t sub_1BD181A80@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v58 = a3;
  v59 = a5;
  v53 = a1;
  v62 = a6;
  sub_1BE0500D4();
  v52 = sub_1BE04EBD4();
  v61 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v60 = &v48 - v11;
  v12 = sub_1BE04EBD4();
  v51 = *(v12 - 8);
  v13 = v51;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v54 = &v48 - v17;
  sub_1BE052434();
  v19 = v18;
  sub_1BE050DE4();
  v19, v20, v21, v22, v23, v24, v25, v26;
  v48 = sub_1BD184068(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v75 = a4;
  v76 = v48;
  v50 = v12;
  WitnessTable = swift_getWitnessTable();
  v49 = v15;
  sub_1BD147308();
  v27 = *(v13 + 8);
  v55 = v13 + 8;
  v57 = v27;
  v27(v15, v12);
  v28 = v59;
  v71 = a2;
  v72 = v58;
  v73 = a4;
  v74 = v59;
  type metadata accessor for DetailValueItem(0, &v71);
  sub_1BE052434();
  v30 = v29;
  sub_1BE050DE4();
  v30, v31, v32, v33, v34, v35, v36, v37;
  v69 = v28;
  v70 = v48;
  v38 = v52;
  v39 = swift_getWitnessTable();
  v40 = v60;
  sub_1BD147308();
  v41 = v61;
  v42 = *(v61 + 8);
  v42(v9, v38);
  v43 = v49;
  v44 = v54;
  v45 = v50;
  (*(v51 + 16))(v49, v54, v50);
  v67 = 0;
  v68 = 1;
  v71 = v43;
  v72 = &v67;
  (*(v41 + 16))(v9, v40, v38);
  v73 = v9;
  v66[0] = v45;
  v66[1] = MEMORY[0x1E6981840];
  v66[2] = v38;
  v63 = WitnessTable;
  v64 = MEMORY[0x1E6981838];
  v65 = v39;
  sub_1BD13A4C4(&v71, 3uLL, v66);
  v42(v40, v38);
  v46 = v57;
  v57(v44, v45);
  v42(v9, v38);
  return v46(v43, v45);
}

uint64_t sub_1BD181EF0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v58 = a3;
  v59 = a5;
  v54 = a1;
  v62 = a6;
  sub_1BE0500D4();
  v53 = sub_1BE04EBD4();
  v61 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v60 = &v50 - v11;
  v12 = sub_1BE04EBD4();
  v52 = *(v12 - 8);
  v13 = v52;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v50 - v17;
  sub_1BE052434();
  v20 = v19;
  sub_1BE050DE4();
  v20, v21, v22, v23, v24, v25, v26, v27;
  v28 = sub_1BD184068(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v70 = a4;
  v71 = v28;
  WitnessTable = swift_getWitnessTable();
  v50 = v15;
  v51 = v12;
  sub_1BD147308();
  v56 = *(v13 + 8);
  v57 = v13 + 8;
  v56(v15, v12);
  v66 = a2;
  v67 = v58;
  v68 = a4;
  v29 = v59;
  v69 = v59;
  type metadata accessor for DetailValueItem(0, &v66);
  sub_1BE052434();
  v31 = v30;
  sub_1BE050DE4();
  v31, v32, v33, v34, v35, v36, v37, v38;
  v65[2] = v29;
  v65[3] = v28;
  v39 = v53;
  v40 = swift_getWitnessTable();
  v41 = v60;
  sub_1BD147308();
  v42 = v61;
  v43 = *(v61 + 8);
  v43(v9, v39);
  v44 = v50;
  v45 = v18;
  v46 = v18;
  v47 = v51;
  (*(v52 + 16))(v50, v46, v51);
  v66 = v44;
  (*(v42 + 16))(v9, v41, v39);
  v67 = v9;
  v65[0] = v47;
  v65[1] = v39;
  v63 = WitnessTable;
  v64 = v40;
  sub_1BD13A4C4(&v66, 2uLL, v65);
  v43(v41, v39);
  v48 = v56;
  v56(v45, v47);
  v43(v9, v39);
  return v48(v44, v47);
}

uint64_t sub_1BD182330@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD184068(&qword_1EBD3B1C8, type metadata accessor for AddBeneficiaryModel, &unk_1BE112088);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v3 + OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__onSubmission);
  v13 = *(v3 + OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__onSubmission + 8);
  if (v12)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = v13;
    v15 = sub_1BD1839E8;
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  *a2 = v15;
  a2[1] = v14;
  return sub_1BD0D44B8(v12, v13);
}

void sub_1BD182428(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    v4[2] = v2;
    v4[3] = v3;
    v5 = sub_1BD1839E0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1BD0D44B8(v2, v3);
  sub_1BD184068(&qword_1EBD3B1C8, type metadata accessor for AddBeneficiaryModel, &unk_1BE112088);
  sub_1BE04B584();
  sub_1BD0D4744(v5, v4, v7, v8, v9, v10, v11, v12);
  KeyPath, v13, v14, v15, v16, v17, v18, v19;
}

void sub_1BD182584(_BYTE *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD182604(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

unint64_t sub_1BD182678()
{
  result = qword_1EBD3ADE0;
  if (!qword_1EBD3ADE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ADB8, &qword_1BE0BBE28);
    sub_1BD182730();
    sub_1BD0DE4F4(&qword_1EBD395B8, &qword_1EBD39580, &qword_1BE0D8820, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3ADE0);
  }

  return result;
}

unint64_t sub_1BD182730()
{
  result = qword_1EBD3ADE8;
  if (!qword_1EBD3ADE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ADD8, &qword_1BE0BBE40);
    sub_1BD0DE4F4(&qword_1EBD3ADF0, &qword_1EBD3ADF8, &unk_1BE0BBE80, MEMORY[0x1E697CD20]);
    sub_1BD0DE4F4(&qword_1EBD395A8, &qword_1EBD395B0, &unk_1BE0DFEE0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3ADE8);
  }

  return result;
}

double sub_1BD182814@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1BD17661C(*(a1 + 16) | (*(a1 + 20) << 32), v8);
  v3 = v8[7];
  a2[6] = v8[6];
  a2[7] = v3;
  a2[8] = v9[0];
  *(a2 + 137) = *(v9 + 9);
  v4 = v8[3];
  a2[2] = v8[2];
  a2[3] = v4;
  v5 = v8[5];
  a2[4] = v8[4];
  a2[5] = v5;
  result = *v8;
  v7 = v8[1];
  *a2 = v8[0];
  a2[1] = v7;
  return result;
}

unint64_t sub_1BD1828C4()
{
  result = qword_1EBD3AE10;
  if (!qword_1EBD3AE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3AE10);
  }

  return result;
}

unint64_t sub_1BD182918()
{
  result = qword_1EBD3AE18;
  if (!qword_1EBD3AE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3AE08, &qword_1BE0BBEB8);
    sub_1BD1829A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3AE18);
  }

  return result;
}

unint64_t sub_1BD1829A4()
{
  result = qword_1EBD3AE20;
  if (!qword_1EBD3AE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3AE20);
  }

  return result;
}

uint64_t sub_1BD182AF4(uint64_t result)
{
  v2 = *(v1 + 264);
  if (v2)
  {
    return v2(result & 1);
  }

  return result;
}

unint64_t sub_1BD182B28()
{
  result = qword_1EBD3AF40;
  if (!qword_1EBD3AF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3AF30, &qword_1BE0BC028);
    sub_1BD182BB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3AF40);
  }

  return result;
}

unint64_t sub_1BD182BB4()
{
  result = qword_1EBD3AF48;
  if (!qword_1EBD3AF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3AF50, &qword_1BE0BC038);
    sub_1BD182C40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3AF48);
  }

  return result;
}

unint64_t sub_1BD182C40()
{
  result = qword_1EBD3AF58;
  if (!qword_1EBD3AF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3AF58);
  }

  return result;
}

uint64_t sub_1BD182C94(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1BD184068(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD182D48()
{
  result = qword_1EBD3AF68;
  if (!qword_1EBD3AF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3AF70, &qword_1BE0BC040);
    sub_1BD182E00();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8, &qword_1BE0B8CD0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3AF68);
  }

  return result;
}

unint64_t sub_1BD182E00()
{
  result = qword_1EBD3AF78;
  if (!qword_1EBD3AF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3AF80, &qword_1BE0BC048);
    sub_1BD0DE4F4(&qword_1EBD3AF88, &qword_1EBD3AF90, &qword_1BE0BC050, MEMORY[0x1E6981870]);
    sub_1BD0DE4F4(&unk_1EBD3FB20, &qword_1EBD5B6B0, &unk_1BE0C6C20, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3AF78);
  }

  return result;
}

void sub_1BD182EEC(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  if (a2)
  {
    v7 = a2;
    v8 = a4;

    v9 = a6;
  }
}

void sub_1BD182F3C(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  if (a2)
  {
  }
}

unint64_t sub_1BD182F94()
{
  result = qword_1EBD3B008;
  if (!qword_1EBD3B008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B000, &qword_1BE0BC098);
    sub_1BD18304C();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8, &qword_1BE0B8CD0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B008);
  }

  return result;
}

unint64_t sub_1BD18304C()
{
  result = qword_1EBD3B010;
  if (!qword_1EBD3B010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B018, &qword_1BE0BC0A0);
    sub_1BD183104();
    sub_1BD0DE4F4(&unk_1EBD3FB20, &qword_1EBD5B6B0, &unk_1BE0C6C20, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B010);
  }

  return result;
}

unint64_t sub_1BD183104()
{
  result = qword_1EBD3B020;
  if (!qword_1EBD3B020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B028, &qword_1BE0BC0A8);
    sub_1BD183188();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B020);
  }

  return result;
}

unint64_t sub_1BD183188()
{
  result = qword_1EBD3B030;
  if (!qword_1EBD3B030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B030);
  }

  return result;
}

unint64_t sub_1BD1831DC()
{
  result = qword_1EBD3B050;
  if (!qword_1EBD3B050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3AEC0, &qword_1BE0BBFB8);
    sub_1BD184FBC(&qword_1EBD3B058, &qword_1EBD3B040, &qword_1BE0BC0B8, sub_1BD18328C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B050);
  }

  return result;
}

unint64_t sub_1BD18328C()
{
  result = qword_1EBD3B060;
  if (!qword_1EBD3B060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B068, &qword_1BE0BC0C0);
    sub_1BD0DE4F4(&qword_1EBD3B070, &qword_1EBD3B078, &qword_1BE0BC0C8, MEMORY[0x1E697C090]);
    sub_1BD184068(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B060);
  }

  return result;
}

unint64_t sub_1BD183394()
{
  result = qword_1EBD3B0C0;
  if (!qword_1EBD3B0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B0B8, &qword_1BE0BC138);
    sub_1BD0DE4F4(&qword_1EBD3B0C8, &qword_1EBD3B0D0, &qword_1BE0BC140, MEMORY[0x1E697D680]);
    sub_1BD184068(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B0C0);
  }

  return result;
}

unint64_t sub_1BD183484()
{
  result = qword_1EBD3B0E0;
  if (!qword_1EBD3B0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B0D8, &qword_1BE0BC148);
    sub_1BD0DE4F4(&qword_1EBD3B0E8, &qword_1EBD3B0F0, &qword_1BE0BC150, MEMORY[0x1E697C090]);
    sub_1BD184068(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B0E0);
  }

  return result;
}

unint64_t sub_1BD183574()
{
  result = qword_1EBD3B100;
  if (!qword_1EBD3B100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B0F8, &qword_1BE0BC158);
    sub_1BD0DE4F4(&qword_1EBD3B108, &qword_1EBD3B110, &qword_1BE0BC160, MEMORY[0x1E697C090]);
    sub_1BD184068(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B100);
  }

  return result;
}

unint64_t sub_1BD183664()
{
  result = qword_1EBD3B130;
  if (!qword_1EBD3B130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3AEE8, &qword_1BE0BBFE0);
    sub_1BD0DE4F4(&qword_1EBD3B138, &qword_1EBD3B140, &qword_1BE0BC178, MEMORY[0x1E6981870]);
    sub_1BD184068(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B130);
  }

  return result;
}

uint64_t sub_1BD1837AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoneyTransferButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD183810(uint64_t a1)
{
  v2 = type metadata accessor for MoneyTransferButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD183894(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavingsBeneficiaryView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD1838F8()
{
  result = qword_1EBD3B1D0;
  if (!qword_1EBD3B1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B198, &qword_1BE0BDD70);
    sub_1BD184068(&qword_1EBD3B1D8, type metadata accessor for SavingsBeneficiaryView, &unk_1BE0D2968);
    sub_1BD0DE4F4(&qword_1EBD3B1E0, &qword_1EBD3B1E8, &qword_1BE0BC320, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B1D0);
  }

  return result;
}

uint64_t sub_1BD1839F0()
{
  v1 = *(v0 + 280);
  if (v1)
  {
    return v1(4);
  }

  return result;
}

unint64_t sub_1BD183A2C()
{
  result = qword_1EBD3B228;
  if (!qword_1EBD3B228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B220, &qword_1BE0BC348);
    sub_1BD183AB8();
    sub_1BD183394();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B228);
  }

  return result;
}

unint64_t sub_1BD183AB8()
{
  result = qword_1EBD3B230;
  if (!qword_1EBD3B230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B238, &qword_1BE0BC350);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B240, &qword_1BE0BC358);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B248, &qword_1BE0BC360);
    sub_1BD182C94(&qword_1EBD3B250, &qword_1EBD3B240, &qword_1BE0BC358, sub_1BD183C58);
    sub_1BD0DE4F4(&qword_1EBD3B278, &qword_1EBD3B248, &qword_1BE0BC360, MEMORY[0x1E6981F48]);
    swift_getOpaqueTypeConformance2();
    sub_1BD184068(&qword_1EBD3B280, type metadata accessor for SavingsFCCStepUpPresenter, &unk_1BE10D038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B230);
  }

  return result;
}

unint64_t sub_1BD183C58()
{
  result = qword_1EBD3B258;
  if (!qword_1EBD3B258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B260, &qword_1BE0BC368);
    sub_1BD0DE4F4(&qword_1EBD3B268, &qword_1EBD3B270, &unk_1BE0BC370, MEMORY[0x1E697D680]);
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0, &qword_1BE0B8740, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B258);
  }

  return result;
}

uint64_t sub_1BD183D9C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1BD126968;

  return sub_1BD17CAF0(a1, v4, v5, v1 + 32);
}

uint64_t objectdestroy_95Tm()
{
  swift_unknownObjectRelease();

  sub_1BD0D45CC(*(v0 + 48), *(v0 + 56), *(v0 + 64), v1, v2, v3, v4, v5);
  *(v0 + 72), v6, v7, v8, v9, v10, v11, v12;
  sub_1BD0D45CC(*(v0 + 88), *(v0 + 96), *(v0 + 104), v13, v14, v15, v16, v17);
  *(v0 + 120), v18, v19, v20, v21, v22, v23, v24;
  *(v0 + 136), v25, v26, v27, v28, v29, v30, v31;
  *(v0 + 152), v32, v33, v34, v35, v36, v37, v38;
  sub_1BD035CB4(*(v0 + 160), *(v0 + 168), *(v0 + 176), v39, v40, v41, v42, v43);
  sub_1BD035CB4(*(v0 + 184), *(v0 + 192), *(v0 + 200), v44, v45, v46, v47, v48);
  sub_1BD0D45CC(*(v0 + 208), *(v0 + 216), *(v0 + 224), v49, v50, v51, v52, v53);
  *(v0 + 240), v54, v55, v56, v57, v58, v59, v60;
  *(v0 + 248), v61, v62, v63, v64, v65, v66, v67;

  if (*(v0 + 280))
  {
    *(v0 + 288), v68, v69, v70, v71, v72, v73, v74;
  }

  if (*(v0 + 296))
  {
    *(v0 + 304), v68, v69, v70, v71, v72, v73, v74;
  }

  *(v0 + 336), v68, v69, v70, v71, v72, v73, v74;
  *(v0 + 352), v75, v76, v77, v78, v79, v80, v81;
  *(v0 + 368), v82, v83, v84, v85, v86, v87, v88;

  *(v0 + 384), v89, v90, v91, v92, v93, v94, v95;
  *(v0 + 400), v96, v97, v98, v99, v100, v101, v102;

  return swift_deallocObject();
}

uint64_t sub_1BD183FB8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1BD0F985C;

  return sub_1BD17CF50(a1, v4, v5, v1 + 32);
}

uint64_t sub_1BD184068(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD1840F8()
{
  result = qword_1EBD3B368;
  if (!qword_1EBD3B368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B330, &unk_1BE0D2D50);
    sub_1BD0DE4F4(&qword_1EBD3B370, &qword_1EBD3B378, &qword_1BE0D2DC0, MEMORY[0x1E697D680]);
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0, &qword_1BE0B8740, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B368);
  }

  return result;
}

void sub_1BD1841DC()
{
  v1 = *(sub_1BE04AA64() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1BD18050C(v2);
}

uint64_t objectdestroyTm_6(uint64_t a1)
{
  sub_1BD0D45CC(*(v1 + 32), *(v1 + 40), *(v1 + 48), v2, v3, v4, v5, v6);
  *(v1 + 56), v7, v8, v9, v10, v11, v12, v13;
  sub_1BD0D45CC(*(v1 + 72), *(v1 + 80), *(v1 + 88), v14, v15, v16, v17, v18);
  *(v1 + 104), v19, v20, v21, v22, v23, v24, v25;
  *(v1 + 120), v26, v27, v28, v29, v30, v31, v32;
  *(v1 + 136), v33, v34, v35, v36, v37, v38, v39;
  sub_1BD035CB4(*(v1 + 144), *(v1 + 152), *(v1 + 160), v40, v41, v42, v43, v44);
  sub_1BD035CB4(*(v1 + 168), *(v1 + 176), *(v1 + 184), v45, v46, v47, v48, v49);
  sub_1BD0D45CC(*(v1 + 192), *(v1 + 200), *(v1 + 208), v50, v51, v52, v53, v54);
  *(v1 + 224), v55, v56, v57, v58, v59, v60, v61;
  *(v1 + 232), v62, v63, v64, v65, v66, v67, v68;

  if (*(v1 + 264))
  {
    *(v1 + 272), v69, v70, v71, v72, v73, v74, v75;
  }

  if (*(v1 + 280))
  {
    *(v1 + 288), v69, v70, v71, v72, v73, v74, v75;
  }

  *(v1 + 320), v69, v70, v71, v72, v73, v74, v75;
  *(v1 + 336), v76, v77, v78, v79, v80, v81, v82;
  *(v1 + 352), v83, v84, v85, v86, v87, v88, v89;

  *(v1 + 368), v90, v91, v92, v93, v94, v95, v96;
  *(v1 + 384), v97, v98, v99, v100, v101, v102, v103;

  return swift_deallocObject();
}

id sub_1BD184364@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, void *a7@<X8>)
{
  LODWORD(v117) = a6;
  v121 = a4;
  v122 = a5;
  v120 = a3;
  v124 = a1;
  v125 = a2;
  v123 = a7;
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v97 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v97 - v15;
  v200 = 0;
  type metadata accessor for ObservableHostingController();
  sub_1BD184068(&qword_1EBD3B1A0, type metadata accessor for ObservableHostingController, &protocol conformance descriptor for ObservableHostingController);
  v17 = sub_1BE04EEC4();
  v118 = v18;
  v119 = v17;
  v198 = 0;
  v19 = *MEMORY[0x1E69B80E0];
  v20 = *(v8 + 104);
  v20(v16, v19, v7);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v22 = result;
  v23 = sub_1BE04B6F4();
  v115 = v24;
  v116 = v23;

  v25 = *(v8 + 8);
  v25(v16, v7);
  v20(v13, v19, v7);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v26 = result;
  v27 = sub_1BE04B6F4();
  v112 = v28;
  v113 = v27;

  v114 = v25;
  v25(v13, v7);
  v20(v10, v19, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1BE0B69E0;
  result = PKDeviceName();
  if (!result)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v30 = result;
  v31 = sub_1BE052434();
  v33 = v32;

  *(v29 + 56) = MEMORY[0x1E69E6158];
  *(v29 + 64) = sub_1BD110550();
  *(v29 + 32) = v31;
  *(v29 + 40) = v33;
  v34 = sub_1BE04B714();
  v106 = v35;
  v107 = v34;
  v29, v35, v36, v37, v38, v39, v40, v41;
  v114(v10, v7);
  v192 = 0;
  LOBYTE(v127[0]) = 0;
  sub_1BE051694();
  v42 = v128;
  v43 = v129;
  LOBYTE(v127[0]) = 0;
  sub_1BE051694();
  LODWORD(v30) = v128;
  v44 = v129;
  LOBYTE(v127[0]) = 0;
  sub_1BE051694();
  v108 = v128;
  v109 = v129;
  v127[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B390, &qword_1BE0BC4F0);
  sub_1BE051694();
  v104 = v128;
  v105 = v129;
  LOBYTE(v127[0]) = 0;
  sub_1BE051694();
  v102 = v128;
  v103 = v129;
  type metadata accessor for AccountModel(0);
  sub_1BD184068(&qword_1EBD3AE50, type metadata accessor for AccountModel, &unk_1BE0BFF20);
  v45 = v124;
  v46 = sub_1BE04E954();
  v124 = v47;
  v48 = swift_allocObject();
  *(v48 + 16) = v45;
  v196 = 0;
  v101 = swift_allocObject();
  *(v101 + 16) = v45;
  v194 = 0;
  LODWORD(v114) = v42;
  v111 = v44;
  v110 = v30;
  if (v125 == 1)
  {
    KeyPath = swift_getKeyPath();
    v50 = swift_getKeyPath();
    v51 = v45;
    sub_1BE04D8B4(&v128);
    KeyPath, v52, v53, v54, v55, v56, v57, v58;
    v50, v59, v60, v61, v62, v63, v64, v65;
    v66 = v128;
    v67 = objc_allocWithZone(type metadata accessor for TransactionList(0));
    sub_1BD56A4DC(v66, 0);
    v69 = v68;
  }

  else
  {
    v70 = v45;
    v69 = 0;
  }

  v71 = swift_getKeyPath();
  v72 = swift_getKeyPath();
  sub_1BE04D8B4(&v128);
  v71, v73, v74, v75, v76, v77, v78, v79;
  v72, v80, v81, v82, v83, v84, v85, v86;
  result = [objc_opt_self() sharedService];
  if (!result)
  {
    goto LABEL_15;
  }

  v100 = v43;
  v87 = objc_allocWithZone(sub_1BE04BF14());
  v98 = sub_1BE04BF04();
  v88 = PKPassDetailsLastSelectedSegment();
  v99 = v69;
  v89 = v48;
  if (v88)
  {
    v90 = v88;
    v91 = sub_1BE052434();
    v93 = v92;

    v127[0] = v91;
    v127[1] = v93;
  }

  else
  {
    v127[0] = sub_1BE052434();
    v127[1] = v94;
  }

  sub_1BE051694();

  v97 = v128;
  v95 = v129;
  v96 = v130;
  v190 = v117 & 1;
  v127[0] = v46;
  v127[1] = v124;
  *(&v127[4] + 1) = *v199;
  HIDWORD(v127[4]) = *&v199[3];
  v127[2] = sub_1BD17260C;
  v127[3] = 0;
  LOBYTE(v127[4]) = v200;
  v127[5] = v119;
  v127[6] = v118;
  HIDWORD(v127[9]) = *&v197[3];
  *(&v127[9] + 1) = *v197;
  v127[7] = sub_1BD172644;
  v127[8] = 0;
  LOBYTE(v127[9]) = v198;
  v127[10] = v116;
  v127[11] = v115;
  v127[12] = v113;
  v127[13] = v112;
  v127[14] = v107;
  v117 = v46;
  v127[15] = v106;
  HIDWORD(v127[18]) = *&v195[3];
  *(&v127[18] + 1) = *v195;
  v127[16] = sub_1BD185188;
  v127[17] = v89;
  LOBYTE(v127[18]) = v196;
  *(&v127[21] + 1) = *v193;
  HIDWORD(v127[21]) = *&v193[3];
  v127[19] = sub_1BD1851CC;
  v127[20] = v101;
  LOBYTE(v127[21]) = v194;
  *(&v127[24] + 1) = *v191;
  *(&v127[36] + 1) = *v189;
  *(&v127[37] + 1) = *v188;
  *(&v127[39] + 1) = *v187;
  *(&v127[41] + 1) = *v186;
  *(&v127[45] + 1) = *v185;
  *&v133[3] = *&v199[3];
  *v133 = *v199;
  *&v139[3] = *&v197[3];
  *v139 = *v197;
  *&v149[3] = *&v195[3];
  *v149 = *v195;
  *&v153[3] = *&v193[3];
  *v153 = *v193;
  *&v157[3] = *&v191[3];
  *v157 = *v191;
  *v170 = *v189;
  *v172 = *v188;
  *v175 = *v187;
  *v178 = *v186;
  *v183 = *v185;
  HIDWORD(v127[24]) = *&v191[3];
  HIDWORD(v127[36]) = *&v189[3];
  HIDWORD(v127[37]) = *&v188[3];
  HIDWORD(v127[39]) = *&v187[3];
  HIDWORD(v127[41]) = *&v186[3];
  HIDWORD(v127[45]) = *&v185[3];
  v128 = v46;
  v129 = v124;
  v130 = sub_1BD17260C;
  v132 = v200;
  v134 = v119;
  v135 = v118;
  v136 = sub_1BD172644;
  v138 = v198;
  v140 = v116;
  v141 = v115;
  v142 = v113;
  v143 = v112;
  v144 = v107;
  v145 = v106;
  v146 = sub_1BD185188;
  v147 = v89;
  v148 = v196;
  v150 = sub_1BD1851CC;
  v151 = v101;
  v152 = v194;
  LOBYTE(v127[24]) = v192;
  v156 = v192;
  v158 = v97;
  v127[25] = v97;
  v127[26] = v95;
  v159 = v95;
  v160 = v96;
  v127[27] = v96;
  v127[28] = v125;
  v161 = v125;
  v162 = v99;
  v127[29] = v99;
  v127[30] = v98;
  v163 = v98;
  v164 = v120;
  v127[31] = v120;
  v127[32] = v121;
  v165 = v121;
  v127[35] = v122;
  v168 = v122;
  LOBYTE(v127[36]) = v190;
  v169 = v190;
  *&v170[3] = *&v189[3];
  LOBYTE(v127[37]) = v114;
  v171 = v114;
  *&v172[3] = *&v188[3];
  v127[38] = v100;
  v173 = v100;
  LOBYTE(v127[39]) = v110;
  v174 = v110;
  *&v175[3] = *&v187[3];
  v127[40] = v111;
  v176 = v111;
  LOBYTE(v127[41]) = v108;
  v177 = v108;
  *&v178[3] = *&v186[3];
  v179 = v109;
  v127[42] = v109;
  v127[43] = v104;
  v180 = v104;
  v127[44] = v105;
  v181 = v105;
  LOBYTE(v127[45]) = v102;
  v182 = v102;
  *&v183[3] = *&v185[3];
  v127[46] = v103;
  v184 = v103;
  v154 = sub_1BD172700;
  v127[22] = sub_1BD172700;
  v127[23] = 0;
  v127[34] = 0;
  v127[33] = 0;
  v131 = 0;
  v137 = 0;
  v155 = 0;
  v167 = 0;
  v166 = 0;
  sub_1BD18288C(v127, &v126);
  sub_1BD185210(&v128);
  return memcpy(v123, v127, 0x178uLL);
}

unint64_t sub_1BD184DBC()
{
  result = qword_1EBD3B3E0;
  if (!qword_1EBD3B3E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B3D8, &qword_1BE0BC530);
    sub_1BD184E74();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8, &qword_1BE0B8CD0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B3E0);
  }

  return result;
}

unint64_t sub_1BD184E74()
{
  result = qword_1EBD3B3E8;
  if (!qword_1EBD3B3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B3F0, &qword_1BE0BC538);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B3F8, &qword_1BE0BC540);
    sub_1BE04FAB4();
    sub_1BD0DE4F4(&qword_1EBD3B400, &qword_1EBD3B3F8, &qword_1BE0BC540, MEMORY[0x1E697D690]);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&unk_1EBD3FB20, &qword_1EBD5B6B0, &unk_1BE0C6C20, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B3E8);
  }

  return result;
}

uint64_t sub_1BD184FBC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1BD185044()
{
  result = qword_1EBD3B458;
  if (!qword_1EBD3B458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B448, &qword_1BE0BC578);
    sub_1BD1850D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B458);
  }

  return result;
}

unint64_t sub_1BD1850D0()
{
  result = qword_1EBD3B460;
  if (!qword_1EBD3B460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B440, &qword_1BE0BC570);
    sub_1BD0DE4F4(&qword_1EBD3B468, &qword_1EBD3FC50, &unk_1BE0B7D20, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B460);
  }

  return result;
}

uint64_t sub_1BD185240(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BD1852CC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_1BD1854A8(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

unint64_t sub_1BD18577C()
{
  result = qword_1EBD3B510;
  if (!qword_1EBD3B510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3AE28, &qword_1BE0BBEC0);
    sub_1BD185808();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B510);
  }

  return result;
}

unint64_t sub_1BD185808()
{
  result = qword_1EBD3B518;
  if (!qword_1EBD3B518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B520, &qword_1BE0BC5D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ADC0, &qword_1BE0BBE30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3AE08, &qword_1BE0BBEB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ADB8, &qword_1BE0BBE28);
    sub_1BE04FB94();
    sub_1BD182678();
    swift_getOpaqueTypeConformance2();
    sub_1BD1828C4();
    sub_1BD182918();
    swift_getOpaqueTypeConformance2();
    sub_1BD18596C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B518);
  }

  return result;
}

unint64_t sub_1BD18596C()
{
  result = qword_1EBD3B528;
  if (!qword_1EBD3B528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B528);
  }

  return result;
}

id sub_1BD185AC0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC9PassKitUI31ProvisioningMakeDefaultFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = &v2[OBJC_IVAR____TtC9PassKitUI31ProvisioningMakeDefaultFlowItem_identifier];
  *v6 = 0xD000000000000013;
  *(v6 + 1) = 0x80000001BE11BBD0;
  *&v2[OBJC_IVAR____TtC9PassKitUI31ProvisioningMakeDefaultFlowItem__isCardsOnFileProvisioning] = &type metadata for IsCardsOnFileProvisioning;
  *&v2[OBJC_IVAR____TtC9PassKitUI31ProvisioningMakeDefaultFlowItem__debugConfiguration] = &type metadata for ProvisioningScreenDebugConfiguration;
  *&v2[OBJC_IVAR____TtC9PassKitUI31ProvisioningMakeDefaultFlowItem_context] = a1;
  *&v2[OBJC_IVAR____TtC9PassKitUI31ProvisioningMakeDefaultFlowItem_provisionedPasses] = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

void sub_1BD185C58(void (*a1)(unint64_t, unint64_t, void, uint64_t), uint64_t a2)
{
  v90 = a2;
  v91 = a1;
  v3 = sub_1BE04B944();
  v84 = *(v3 - 8);
  v85 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v83 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04BAC4();
  v87 = *(v5 - 8);
  v88 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v86 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v89 = v2;
  v8 = sub_1BD187A6C(v2, KeyPath, &OBJC_IVAR____TtC9PassKitUI31ProvisioningMakeDefaultFlowItem_delegate, sub_1BD12EFDC);
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  v23 = v8[2];
  v24 = v8 + 4;
  v95 = 0x80000001BE1182F0;
  v96 = 0x80000001BE118310;
  v93 = 0x80000001BE118280;
  v94 = 0x80000001BE1182A0;
  v92 = 0x80000001BE118260;
  while (2)
  {
    if (v23)
    {
      v25 = 0xEF65636976654420;
      switch(*v24)
      {
        case 1:
          v25 = 0x80000001BE118230;
          goto LABEL_3;
        case 2:
          v25 = 0xE90000000000006FLL;
          goto LABEL_3;
        case 3:
          v25 = 0xEC0000006E6F6974;
          goto LABEL_3;
        case 4:
          v25 = v92;
          goto LABEL_3;
        case 5:
          v25 = v93;
          goto LABEL_3;
        case 6:
          v25 = v94;
          goto LABEL_3;
        case 7:
          v8, v16, v17, v18, v19, v20, v21, v22;
          v8 = 0xEC000000746C7561;
          goto LABEL_28;
        case 8:
          v25 = 0xEE00746E656D6C6CLL;
          goto LABEL_3;
        case 9:
          v25 = 0xE90000000000006ELL;
          goto LABEL_3;
        case 0xA:
          v25 = 0xED00006E6F697461;
          goto LABEL_3;
        case 0xB:
          v25 = v95;
          goto LABEL_3;
        case 0xC:
          v25 = 0xEC00000068637461;
          goto LABEL_3;
        case 0xD:
          v25 = v96;
          goto LABEL_3;
        default:
LABEL_3:
          v26 = sub_1BE053B84();
          v25, v27, v28, v29, v30, v31, v32, v33;
          ++v24;
          --v23;
          if ((v26 & 1) == 0)
          {
            continue;
          }

LABEL_28:
          v8, v16, v17, v18, v19, v20, v21, v22;
          v34 = 0x6F63206775626564;
          v35 = 0xEC0000006769666ELL;
          break;
      }

      goto LABEL_29;
    }

    break;
  }

  v8, v16, v17, v18, v19, v20, v21, v22;
  if (PKForceMakeDefaultCard())
  {
    v34 = 0xD00000000000001ALL;
    v35 = 0x80000001BE11BB60;
LABEL_29:
    v49 = 0;
    goto LABEL_30;
  }

  v36 = v89;
  v37 = v86;
  sub_1BE04BC34();
  v38 = sub_1BE04B994();
  (*(v87 + 8))(v37, v88);
  if (v38)
  {
    v39 = "is card on file provisioning";
    v34 = 0xD000000000000044;
LABEL_24:
    v35 = v39 | 0x8000000000000000;
    v49 = 1;
LABEL_30:
    v91(v34, v35, 0, v49);
    return;
  }

  v40 = swift_getKeyPath();
  v41 = sub_1BD18760C(v36, v40, &OBJC_IVAR____TtC9PassKitUI31ProvisioningMakeDefaultFlowItem_delegate, sub_1BD12EFDC, &qword_1EBD443B0, &qword_1EBD443B8);
  v40, v42, v43, v44, v45, v46, v47, v48;
  if (v41)
  {
    v39 = "server requested to suppress";
    v34 = 0xD00000000000001CLL;
    goto LABEL_24;
  }

  v50 = sub_1BE04BC84();
  if (sub_1BE04BCF4())
  {
    v51 = "pass is access pass";
    v52 = 0xD00000000000001CLL;
LABEL_38:
    v54 = v51 | 0x8000000000000000;
    goto LABEL_39;
  }

  v53 = [v50 passActivationState];
  if ((v53 | 2) != 2)
  {
    v98 = 0;
    v99 = 0xE000000000000000;
    v55 = v53;
    sub_1BE053834();
    MEMORY[0x1BFB3F610](0x206574617473, 0xE600000000000000);
    v97 = v55;
    type metadata accessor for PassActivationState(0);
    sub_1BE053974();
    MEMORY[0x1BFB3F610](0xD00000000000001CLL, 0x80000001BE11BA10);
    v56 = v99;
    v91(v98, v99, 0, 1);

    v56, v57, v58, v59, v60, v61, v62, v63;
    return;
  }

  if (([v50 supportsDefaultCardSelection] & 1) == 0)
  {
    v51 = " is not activating or active";
    v52 = 0xD000000000000029;
    goto LABEL_38;
  }

  if ([v50 isAccessPass])
  {
    v54 = 0x80000001BE11BAB0;
    v52 = 0xD000000000000013;
LABEL_39:
    v91(v52, v54, 0, 1);

    return;
  }

  if ([v50 isTransitPass])
  {
    v51 = "tically be default";
    v52 = 0xD000000000000014;
    goto LABEL_38;
  }

  v64 = v83;
  sub_1BE04BB94();
  v65 = sub_1BE04B934();
  (*(v84 + 8))(v64, v85);
  if (([v65 respondsToSelector_] & 1) != 0 && ((swift_unknownObjectRetain(), (v66 = objc_msgSend(v50, sel_uniqueID)) == 0) ? (v70 = 0, v69 = 0) : (v67 = v66, sub_1BE052434(), v69 = v68, v67, v70 = sub_1BE052404()), v71 = objc_msgSend(v65, sel_willPassWithUniqueIdentifierAutomaticallyBecomeDefault_, v70), v69, v72, v73, v74, v75, v76, v77, v78, swift_unknownObjectRelease(), v70, v71))
  {
    v79 = 0xD000000000000022;
    v80 = 0x80000001BE11BA60;
    v81 = 1;
  }

  else
  {
    v79 = 0;
    v80 = 0;
    v81 = 0;
  }

  v91(v79, v80, 0, v81);

  swift_unknownObjectRelease();
}

unint64_t sub_1BD186438()
{
  v1 = v0;
  v2 = sub_1BE04BAC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1BE04BD44();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:
    result, v7, v8, v9, v10, v11, v12, v13;
    return 2;
  }

  v38 = result;
  v39 = sub_1BE053704();
  result = v38;
  if (!v39)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v14 = result;
    v15 = MEMORY[0x1BFB40900](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = result;
    v15 = *(result + 32);
LABEL_6:
    v23 = v15;
    v14, v16, v17, v18, v19, v20, v21, v22;
    v24 = sub_1BE04BBD4();
    v25 = v23;
    sub_1BE04BC34();
    v26 = sub_1BE04B9A4();
    (*(v3 + 8))(v5, v2);
    v27 = [objc_allocWithZone(PKPaymentPassMakeDefaultViewController) initWithProvisioningController:v24 paymentPass:v25 context:v26];

    [v27 setFlowItemDelegate_];
    sub_1BE052434();
    v29 = v28;
    v30 = sub_1BE04BB74();
    v29, v31, v32, v33, v34, v35, v36, v37;
    [v27 setReporter_];

    return v27;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD18665C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI31ProvisioningMakeDefaultFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD186698(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI31ProvisioningMakeDefaultFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD186790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, void)@<X2>, uint64_t a4@<X8>)
{
  v5 = a3(a1, *(a2 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root));
  if (v5)
  {
    v6 = v5;
    v8 = qword_1EBD53DE0;
    v7 = off_1EBD53DE8;
    swift_beginAccess();
    v9 = *(v6 + 40);
    if (v9[2])
    {
      sub_1BE048964();
      sub_1BE048C84();
      sub_1BE048C84();
      v10 = sub_1BD148F70(v8, v7);
      v12 = v11;
      v7, v11, v13, v14, v15, v16, v17, v18;
      if (v12)
      {
        sub_1BD038CD0(v9[7] + 32 * v10, &v43);
        v9, v26, v27, v28, v29, v30, v31, v32;
      }

      else
      {
        v9, v19, v20, v21, v22, v23, v24, v25;
        v43 = 0u;
        v44 = 0u;
      }
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
      sub_1BE048964();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EC90, &unk_1BE0BC6B0);
    if (swift_dynamicCast())
    {

      v34 = v39;
      v35 = v40;
      v36 = v41;
      v37 = v42;
    }

    else
    {
      if (qword_1EBD36F90 != -1)
      {
        swift_once();
      }

      v34 = byte_1EBDAB6E8;
      v38 = *&qword_1EBDAB6F0;
      v36 = qword_1EBDAB700;
      v37 = byte_1EBDAB708;
      sub_1BE048C84();
      sub_1BE048C84();
      sub_1BE048C84();

      v35 = v38;
    }

    *a4 = v34 & 1;
    *(a4 + 8) = v35;
    *(a4 + 24) = v36;
    *(a4 + 32) = v37;
  }

  else
  {
    result = sub_1BE053994();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD1869B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void))
{
  v3 = a3(a1, *(a2 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root));
  if (v3)
  {
    v4 = v3;
    v6 = qword_1EBD3D980;
    v5 = off_1EBD3D988;
    swift_beginAccess();
    v7 = *(v4 + 40);
    if (v7[2])
    {
      sub_1BE048964();
      sub_1BE048C84();
      sub_1BE048C84();
      v8 = sub_1BD148F70(v6, v5);
      v10 = v9;
      v5, v9, v11, v12, v13, v14, v15, v16;
      if (v10)
      {
        sub_1BD038CD0(v7[7] + 32 * v8, &v34);
        v7, v24, v25, v26, v27, v28, v29, v30;
      }

      else
      {
        v7, v17, v18, v19, v20, v21, v22, v23;
        v34 = 0u;
        v35 = 0u;
      }
    }

    else
    {
      v34 = 0u;
      v35 = 0u;
      sub_1BE048964();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EC90, &unk_1BE0BC6B0);
    if (swift_dynamicCast())
    {

      return v33;
    }

    else
    {
      if (qword_1EBD36B50 != -1)
      {
        swift_once();
      }

      v31 = qword_1EBDAAE78;
      sub_1BE048C84();
    }

    return v31;
  }

  else
  {
    result = sub_1BE053994();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD186B8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void))
{
  v3 = a3(a1, *(a2 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root));
  if (v3)
  {
    v4 = v3;
    v6 = qword_1EBD48AC8;
    v5 = off_1EBD48AD0;
    swift_beginAccess();
    v7 = *(v4 + 40);
    if (v7[2])
    {
      sub_1BE048964();
      sub_1BE048C84();
      sub_1BE048C84();
      v8 = sub_1BD148F70(v6, v5);
      v10 = v9;
      v5, v9, v11, v12, v13, v14, v15, v16;
      if (v10)
      {
        sub_1BD038CD0(v7[7] + 32 * v8, &v34);
        v7, v24, v25, v26, v27, v28, v29, v30;
      }

      else
      {
        v7, v17, v18, v19, v20, v21, v22, v23;
        v34 = 0u;
        v35 = 0u;
      }
    }

    else
    {
      v34 = 0u;
      v35 = 0u;
      sub_1BE048964();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EC90, &unk_1BE0BC6B0);
    if (swift_dynamicCast())
    {

      v31 = v33;
    }

    else
    {
      if (qword_1EBD36C58 != -1)
      {
        swift_once();
      }

      v31 = byte_1EBDAB1E8;
      sub_1BE048C84();
      sub_1BE048C84();
    }

    return v31 & 1;
  }

  else
  {
    result = sub_1BE053994();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD186D80(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BD12EFDC(a1, *(a2 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root));
  if (!v2)
  {
    result = sub_1BE053994();
    __break(1u);
    return result;
  }

  v3 = v2;
  v5 = qword_1EBD46AB0;
  v4 = off_1EBD46AB8;
  swift_beginAccess();
  v6 = v3[5];
  if (v6[2])
  {
    sub_1BE048C84();
    sub_1BE048C84();
    v7 = sub_1BD148F70(v5, v4);
    v9 = v8;
    v4, v8, v10, v11, v12, v13, v14, v15;
    if (v9)
    {
      sub_1BD038CD0(v6[7] + 32 * v7, v40);
      v6, v23, v24, v25, v26, v27, v28, v29;
      goto LABEL_7;
    }

    v6, v16, v17, v18, v19, v20, v21, v22;
  }

  memset(v40, 0, sizeof(v40));
LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EC90, &unk_1BE0BC6B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39FA0, &qword_1BE0B9B28);
  v30 = swift_dynamicCast();
  v3, v31, v32, v33, v34, v35, v36, v37;
  if (v30)
  {
    return v39;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD186F00(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void), uint64_t *a4, void **a5)
{
  v7 = a3(a1, *(a2 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root));
  if (!v7)
  {
    result = sub_1BE053994();
    __break(1u);
    return result;
  }

  v8 = v7;
  v9 = *a4;
  v10 = *a5;
  swift_beginAccess();
  v11 = v8[5];
  if (!v11[2])
  {
    goto LABEL_6;
  }

  sub_1BE048C84();
  sub_1BE048C84();
  v12 = sub_1BD148F70(v9, v10);
  v14 = v13;
  v10, v13, v15, v16, v17, v18, v19, v20;
  if ((v14 & 1) == 0)
  {
    v11, v21, v22, v23, v24, v25, v26, v27;
LABEL_6:
    memset(v46, 0, sizeof(v46));
    goto LABEL_7;
  }

  sub_1BD038CD0(v11[7] + 32 * v12, v46);
  v11, v28, v29, v30, v31, v32, v33, v34;
LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EC90, &unk_1BE0BC6B0);
  v35 = swift_dynamicCast();
  v8, v36, v37, v38, v39, v40, v41, v42;
  if (v35)
  {
    v43 = v45;
  }

  else
  {
    v43 = 0;
  }

  return v43 & 1;
}

uint64_t sub_1BD1870D8(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t, void))
{
  v5 = a1;
  swift_getAtKeyPath();

  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for UIFlowManager();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = sub_1BD186B8C(v5, v6, a4);
      swift_unknownObjectRelease();
      return v7 & 1;
    }

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for ExtractedUIFlowItem();
    v8 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v8)
    {
      if (qword_1EBD36C58 != -1)
      {
        swift_once();
      }

      v7 = byte_1EBDAB1E8;
      sub_1BE048C84();
      sub_1BE048C84();
      return v7 & 1;
    }
  }

  sub_1BE053834();
  MEMORY[0x1BFB3F610](0xD000000000000041, 0x80000001BE11BB80);
  v10 = qword_1EBD48AC8;
  v11 = off_1EBD48AD0;
  sub_1BE048C84();
  MEMORY[0x1BFB3F610](v10, v11);
  v11, v12, v13, v14, v15, v16, v17, v18;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

uint64_t sub_1BD187368@<X0>(void *a1@<X0>, uint64_t (*a4)(uint64_t, void)@<X3>, uint64_t a5@<X8>)
{
  v25 = a1;
  v7 = a1;
  swift_getAtKeyPath();

  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for UIFlowManager();
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      sub_1BD186790(v7, v8, a4, &v25);
      result = swift_unknownObjectRelease();
      v10 = v28;
      v11 = v27;
      v12 = v26;
      v13 = v25;
LABEL_10:
      *a5 = v13;
      *(a5 + 8) = v12;
      *(a5 + 24) = v11;
      *(a5 + 32) = v10;
      return result;
    }

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for ExtractedUIFlowItem();
    v14 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v14)
    {
      if (qword_1EBD36F90 != -1)
      {
        swift_once();
      }

      v13 = byte_1EBDAB6E8;
      v24 = *&qword_1EBDAB6F0;
      v11 = qword_1EBDAB700;
      v10 = byte_1EBDAB708;
      sub_1BE048C84();
      sub_1BE048C84();
      result = sub_1BE048C84();
      v12 = v24;
      goto LABEL_10;
    }
  }

  sub_1BE053834();
  MEMORY[0x1BFB3F610](0xD000000000000041, 0x80000001BE11BB80);
  v15 = qword_1EBD53DE0;
  v16 = off_1EBD53DE8;
  sub_1BE048C84();
  MEMORY[0x1BFB3F610](v15, v16);
  v16, v17, v18, v19, v20, v21, v22, v23;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

uint64_t sub_1BD18760C(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t, void), uint64_t *a5, void **a6)
{
  v9 = a1;
  swift_getAtKeyPath();

  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for UIFlowManager();
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v11 = sub_1BD186F00(v9, v10, a4, a5, a6);
LABEL_8:
      swift_unknownObjectRelease();
      return v11 & 1;
    }

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for ExtractedUIFlowItem();
    if (swift_dynamicCastClass())
    {
      v11 = 0;
      goto LABEL_8;
    }

    swift_unknownObjectRelease();
  }

  sub_1BE053834();
  MEMORY[0x1BFB3F610](0xD000000000000041, 0x80000001BE11BB80);
  v13 = *a5;
  v14 = *a6;
  sub_1BE048C84();
  MEMORY[0x1BFB3F610](v13, v14);
  v14, v15, v16, v17, v18, v19, v20, v21;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

uint64_t sub_1BD187848(void *a1, uint64_t a2)
{
  v2 = a1;
  swift_getAtKeyPath();

  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for UIFlowManager();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = sub_1BD186D80(v2, v3);
LABEL_8:
      swift_unknownObjectRelease();
      return v4;
    }

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for ExtractedUIFlowItem();
    if (swift_dynamicCastClass())
    {
      v4 = 0;
      goto LABEL_8;
    }

    swift_unknownObjectRelease();
  }

  sub_1BE053834();
  MEMORY[0x1BFB3F610](0xD000000000000041, 0x80000001BE11BB80);
  v6 = qword_1EBD46AB0;
  v7 = off_1EBD46AB8;
  sub_1BE048C84();
  MEMORY[0x1BFB3F610](v6, v7);
  v7, v8, v9, v10, v11, v12, v13, v14;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

uint64_t sub_1BD187A6C(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t, void))
{
  v5 = a1;
  swift_getAtKeyPath();

  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for UIFlowManager();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = sub_1BD1869B4(v5, v6, a4);
      swift_unknownObjectRelease();
      return v7;
    }

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for ExtractedUIFlowItem();
    v8 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v8)
    {
      if (qword_1EBD36B50 != -1)
      {
        swift_once();
      }

      v7 = qword_1EBDAAE78;
      sub_1BE048C84();
      return v7;
    }
  }

  sub_1BE053834();
  MEMORY[0x1BFB3F610](0xD000000000000041, 0x80000001BE11BB80);
  v10 = qword_1EBD3D980;
  v11 = off_1EBD3D988;
  sub_1BE048C84();
  MEMORY[0x1BFB3F610](v10, v11);
  v11, v12, v13, v14, v15, v16, v17, v18;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

uint64_t sub_1BD187C30(void *a1, uint64_t a2)
{
  sub_1BE048964();
  swift_getAtKeyPath();
  a1, v3, v4, v5, v6, v7, v8, v9;
  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for UIFlowManager();
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v11 = sub_1BD1869B4(a1, v10, sub_1BD12EFDC);
      swift_unknownObjectRelease();
      return v11;
    }

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for ExtractedUIFlowItem();
    v12 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v12)
    {
      if (qword_1EBD36B50 != -1)
      {
        swift_once();
      }

      v11 = qword_1EBDAAE78;
      sub_1BE048C84();
      return v11;
    }
  }

  sub_1BE053834();
  MEMORY[0x1BFB3F610](0xD000000000000041, 0x80000001BE11BB80);
  v14 = qword_1EBD3D980;
  v15 = off_1EBD3D988;
  sub_1BE048C84();
  MEMORY[0x1BFB3F610](v14, v15);
  v15, v16, v17, v18, v19, v20, v21, v22;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

uint64_t sub_1BD187DFC(void *a1, uint64_t a2)
{
  sub_1BE048964();
  swift_getAtKeyPath();
  a1, v3, v4, v5, v6, v7, v8, v9;
  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for UIFlowManager();
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v11 = sub_1BD186F00(a1, v10, sub_1BD12EFDC, &qword_1EBD443A0, &off_1EBD443A8);
LABEL_8:
      swift_unknownObjectRelease();
      return v11 & 1;
    }

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for ExtractedUIFlowItem();
    if (swift_dynamicCastClass())
    {
      v11 = 0;
      goto LABEL_8;
    }

    swift_unknownObjectRelease();
  }

  sub_1BE053834();
  MEMORY[0x1BFB3F610](0xD000000000000041, 0x80000001BE11BB80);
  v13 = qword_1EBD443A0;
  v14 = off_1EBD443A8;
  sub_1BE048C84();
  MEMORY[0x1BFB3F610](v13, v14);
  v14, v15, v16, v17, v18, v19, v20, v21;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

uint64_t sub_1BD187F94(void *a1, uint64_t a2)
{
  sub_1BE048964();
  swift_getAtKeyPath();
  a1, v3, v4, v5, v6, v7, v8, v9;
  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for UIFlowManager();
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v11 = sub_1BD1869B4(a1, v10, sub_1BD12EFDC);
      swift_unknownObjectRelease();
      return v11;
    }

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for ExtractedUIFlowItem();
    v12 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v12)
    {
      if (qword_1EBD36B50 != -1)
      {
        swift_once();
      }

      v11 = qword_1EBDAAE78;
      sub_1BE048C84();
      return v11;
    }
  }

  sub_1BE053834();
  MEMORY[0x1BFB3F610](0xD000000000000041, 0x80000001BE11BB80);
  v14 = qword_1EBD3D980;
  v15 = off_1EBD3D988;
  sub_1BE048C84();
  MEMORY[0x1BFB3F610](v14, v15);
  v15, v16, v17, v18, v19, v20, v21, v22;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1BD188394(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1BD1883DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1BD188458()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260, &unk_1BE0C0F20);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  result = [*(*(v0 + 8) + OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_account) savingsDetails];
  if (result)
  {
    v12 = result;
    v13 = [result productTimeZone];

    if (v13)
    {
      sub_1BE04B394();

      v14 = sub_1BE04B3B4();
      (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
    }

    else
    {
      v14 = sub_1BE04B3B4();
      (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    }

    sub_1BD196DA8(v6, v10);
    v15 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    sub_1BD0DE19C(v10, v3, &unk_1EBD3D260, &unk_1BE0C0F20);
    sub_1BE04B3B4();
    v16 = *(v14 - 8);
    v17 = 0;
    if ((*(v16 + 48))(v3, 1, v14) != 1)
    {
      v17 = sub_1BE04B374();
      (*(v16 + 8))(v3, v14);
    }

    [v15 setTimeZone_];

    v18 = sub_1BE052404();
    [v15 setDateFormat_];

    sub_1BD0DE53C(v10, &unk_1EBD3D260, &unk_1BE0C0F20);
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD18872C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v46 = sub_1BE04FB94();
  v41 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B5C8, &qword_1BE0BC7A8);
  v40 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v6 = &v40 - v5;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B5D0, &qword_1BE0BC7B0);
  v42 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v8 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B5D8, &qword_1BE0BC7B8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B5E0, &qword_1BE0BC7C0);
  MEMORY[0x1EEE9AC00](v43);
  v13 = &v40 - v12;
  KeyPath = swift_getKeyPath();
  v15 = swift_getKeyPath();
  sub_1BE04D8B4(&v48);
  KeyPath, v16, v17, v18, v19, v20, v21, v22;
  v15, v23, v24, v25, v26, v27, v28, v29;
  if (v48 == 1)
  {
    *v13 = sub_1BE04F7B4();
    *(v13 + 1) = 0;
    v13[16] = 1;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B608, &qword_1BE0BC818);
    sub_1BD188D1C(&v13[*(v31 + 44)]);
    sub_1BD0DE19C(v13, v11, &qword_1EBD3B5E0, &qword_1BE0BC7C0);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD3B600, &qword_1EBD3B5E0, &qword_1BE0BC7C0, MEMORY[0x1E6981870]);
    v32 = sub_1BD0DE4F4(&qword_1EBD3B5F8, &qword_1EBD3B5C8, &qword_1BE0BC7A8, MEMORY[0x1E697CD20]);
    v48 = v44;
    v49 = v46;
    v50 = v32;
    v51 = MEMORY[0x1E697C750];
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v13, &qword_1EBD3B5E0, &qword_1BE0BC7C0);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v30);
    *(&v40 - 2) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B5E8, &qword_1BE0BC810);
    sub_1BD0DE4F4(&qword_1EBD3B5F0, &qword_1EBD3B5E8, &qword_1BE0BC810, MEMORY[0x1E6981F48]);
    sub_1BE0504E4();
    sub_1BE04FB84();
    v34 = sub_1BD0DE4F4(&qword_1EBD3B5F8, &qword_1EBD3B5C8, &qword_1BE0BC7A8, MEMORY[0x1E697CD20]);
    v35 = MEMORY[0x1E697C750];
    v36 = v44;
    v37 = v46;
    sub_1BE051144();
    (*(v41 + 8))(v4, v37);
    (*(v40 + 8))(v6, v36);
    v38 = v42;
    v39 = v45;
    (*(v42 + 16))(v11, v8, v45);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD3B600, &qword_1EBD3B5E0, &qword_1BE0BC7C0, MEMORY[0x1E6981870]);
    v48 = v36;
    v49 = v37;
    v50 = v34;
    v51 = v35;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    return (*(v38 + 8))(v8, v39);
  }
}

uint64_t sub_1BD188D1C@<X0>(uint64_t a2@<X8>)
{
  v106 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABE0, &unk_1BE0BC820);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v94[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v94[-v7];
  sub_1BE04E4F4();
  v9 = &v8[*(v3 + 44)];
  v96 = v8;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABF0, &qword_1BE0BB6F8) + 28);
  v11 = *MEMORY[0x1E697DC10];
  v12 = sub_1BE04E364();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = swift_getKeyPath();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v104 = v109;
  v105 = v107[3];
  v102 = v112;
  v103 = v111;
  v115 = 1;
  v114 = v108;
  v113 = v110;
  v13 = sub_1BE051494();
  v101 = sub_1BE050564();
  v99 = v14;
  v97 = v15;
  v100 = v16;
  v13, v14, v15, v16, v17, v18, v19, v20;
  KeyPath = swift_getKeyPath();
  v22 = swift_getKeyPath();
  sub_1BE04D8B4(v107);
  KeyPath, v23, v24, v25, v26, v27, v28, v29;
  v22, v30, v31, v32, v33, v34, v35, v36;
  v37 = v107[1];
  v38 = sub_1BE051494();
  v39 = sub_1BE050564();
  v41 = v40;
  v95 = v42;
  v44 = v43;
  v37, v40, v42, v43, v45, v46, v47, v48;
  v38, v49, v50, v51, v52, v53, v54, v55;
  v98 = v5;
  sub_1BD0DE19C(v8, v5, &qword_1EBD3ABE0, &unk_1BE0BC820);
  LOBYTE(v38) = v115;
  LOBYTE(v8) = v114;
  LOBYTE(v9) = v113;
  LOBYTE(v37) = v97 & 1;
  LOBYTE(v107[0]) = v97 & 1;
  v56 = v5;
  v57 = v106;
  sub_1BD0DE19C(v56, v106, &qword_1EBD3ABE0, &unk_1BE0BC820);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B610, &qword_1BE0BC8A8);
  v59 = v57 + v58[12];
  *v59 = 0;
  *(v59 + 8) = v38;
  v60 = v104;
  *(v59 + 16) = v105;
  *(v59 + 24) = v8;
  *(v59 + 32) = v60;
  *(v59 + 40) = v9;
  v61 = v102;
  *(v59 + 48) = v103;
  *(v59 + 56) = v61;
  v62 = v57 + v58[16];
  v63 = v57;
  v64 = v100;
  v65 = v101;
  v66 = v99;
  *v62 = v101;
  *(v62 + 8) = v66;
  *(v62 + 16) = v37;
  *(v62 + 24) = v64;
  v67 = v63 + v58[20];
  *v67 = v39;
  *(v67 + 8) = v41;
  v68 = (v95 & 1);
  *(v67 + 16) = v95 & 1;
  *(v67 + 24) = v44;
  sub_1BD0D7F18(v65, v66, v37);
  sub_1BE048C84();
  sub_1BD0D7F18(v39, v41, v68);
  sub_1BE048C84();
  sub_1BD0DE53C(v96, &qword_1EBD3ABE0, &unk_1BE0BC820);
  sub_1BD0DDF10(v39, v41, v68, v69, v70, v71, v72, v73);
  v44, v74, v75, v76, v77, v78, v79, v80;
  sub_1BD0DDF10(v65, v66, LOBYTE(v107[0]), v81, v82, v83, v84, v85);
  v64, v86, v87, v88, v89, v90, v91, v92;
  return sub_1BD0DE53C(v98, &qword_1EBD3ABE0, &unk_1BE0BC820);
}

uint64_t sub_1BD1890FC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v206 = a2;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B618, &qword_1BE0BC8B0);
  v202 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203);
  v194 = &v191 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B620, &qword_1BE0BC8B8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v205 = &v191 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v211 = &v191 - v7;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B628, &qword_1BE0BC8C0);
  v198 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199);
  v193 = &v191 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B630, &qword_1BE0BC8C8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v204 = &v191 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v213 = &v191 - v12;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B638, &qword_1BE0BC8D0);
  v196 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v192 = &v191 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B640, &qword_1BE0BC8D8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v210 = &v191 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v214 = &v191 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B648, &qword_1BE0BC8E0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v191 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B650, &qword_1BE0BC8E8);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v212 = &v191 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v191 - v25;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B658, &unk_1BE0BC8F0);
  v200 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v209 = &v191 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v191 - v29;
  v216 = xmmword_1BE0BC6C0;
  v217 = 0;
  v31 = MEMORY[0x1E69E7CC0];
  v218 = MEMORY[0x1E69E7CC0];
  v215 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B660, &qword_1BE0C2470);
  sub_1BD0DE4F4(&qword_1EBD3B668, &qword_1EBD3B660, &qword_1BE0C2470, MEMORY[0x1E6981F48]);
  v208 = v30;
  sub_1BE051A24();
  v32 = *(a1 + 8);
  KeyPath = swift_getKeyPath();
  v34 = swift_getKeyPath();
  v195 = v32;
  sub_1BE04D8B4(&v216);
  KeyPath, v35, v36, v37, v38, v39, v40, v41;
  v34, v42, v43, v44, v45, v46, v47, v48;
  v49 = *(v216 + 16);
  v216, v50, v51, v52, v53, v54, v55, v56;
  if (v49)
  {
    *&v216 = 0xD00000000000002ALL;
    *(&v216 + 1) = 0x80000001BE11BCC0;
    v217 = 0;
    v58 = v31;
    v218 = v31;
    MEMORY[0x1EEE9AC00](v57);
    v59 = a1;
    *(&v191 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B6C8, &qword_1BE0BCA98);
    sub_1BD1966F4();
    sub_1BE051A24();
    (*(v19 + 32))(v26, v21, v18);
    v60 = 0;
  }

  else
  {
    v58 = v31;
    v59 = a1;
    v60 = 1;
  }

  v61 = *(v19 + 56);
  v62 = 1;
  v207 = v26;
  v61(v26, v60, 1, v18);
  v63 = swift_getKeyPath();
  v64 = swift_getKeyPath();
  sub_1BE04D8B4(&v216);
  v63, v65, v66, v67, v68, v69, v70, v71;
  v64, v72, v73, v74, v75, v76, v77, v78;
  v79 = *(v216 + 16);
  v216, v80, v81, v82, v83, v84, v85, v86;
  v88 = v214;
  if (v79)
  {
    *&v216 = 0xD000000000000024;
    *(&v216 + 1) = 0x80000001BE11BC90;
    v217 = 0;
    v89 = v58;
    v218 = v58;
    MEMORY[0x1EEE9AC00](v87);
    v90 = v59;
    *(&v191 - 2) = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B6A8, &qword_1BE0BCA88);
    sub_1BD19663C();
    v91 = v192;
    sub_1BE051A24();
    v88 = v214;
    v92 = v196;
    v93 = v91;
    v94 = v197;
    (*(v196 + 32))(v214, v93, v197);
    v62 = 0;
    v95 = v213;
  }

  else
  {
    v90 = v59;
    v95 = v213;
    v89 = v58;
    v94 = v197;
    v92 = v196;
  }

  v96 = 1;
  (*(v92 + 56))(v88, v62, 1, v94);
  v97 = swift_getKeyPath();
  v98 = swift_getKeyPath();
  sub_1BE04D8B4(&v216);
  v97, v99, v100, v101, v102, v103, v104, v105;
  v98, v106, v107, v108, v109, v110, v111, v112;
  v113 = *(v216 + 16);
  v216, v114, v115, v116, v117, v118, v119, v120;
  if (v113)
  {
    *&v216 = 0xD00000000000002CLL;
    *(&v216 + 1) = 0x80000001BE11BC60;
    v217 = 0;
    v218 = v89;
    MEMORY[0x1EEE9AC00](v121);
    *(&v191 - 2) = v90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B688, &qword_1BE0BCA78);
    sub_1BD196584();
    v122 = v193;
    sub_1BE051A24();
    v123 = v198;
    v124 = v199;
    (*(v198 + 32))(v95, v122, v199);
    v96 = 0;
  }

  else
  {
    v124 = v199;
    v123 = v198;
  }

  (*(v123 + 56))(v95, v96, 1, v124);
  v125 = swift_getKeyPath();
  v126 = swift_getKeyPath();
  sub_1BE04D8B4(&v216);
  v125, v127, v128, v129, v130, v131, v132, v133;
  v126, v134, v135, v136, v137, v138, v139, v140;
  v141 = *(v216 + 16);
  v216, v142, v143, v144, v145, v146, v147, v148;
  if (v141 || (v150 = swift_getKeyPath(), v151 = swift_getKeyPath(), sub_1BE04D8B4(&v216), v150, v152, v153, v154, v155, v156, v157, v158, v151, v159, v160, v161, v162, v163, v164, v165, v166 = *(v216 + 16), v216, v167, v168, v169, v170, v171, v172, v173, v166))
  {
    *&v216 = 0xD000000000000010;
    *(&v216 + 1) = 0x80000001BE11BC40;
    v217 = 0;
    v218 = v89;
    MEMORY[0x1EEE9AC00](v149);
    *(&v191 - 2) = v90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B678, &qword_1BE0BCA70);
    sub_1BD0DE4F4(&qword_1EBD3B680, &qword_1EBD3B678, &qword_1BE0BCA70, MEMORY[0x1E6981F48]);
    v174 = v194;
    sub_1BE051A24();
    v175 = v202;
    v176 = v211;
    v177 = v174;
    v178 = v203;
    (*(v202 + 32))(v211, v177, v203);
    v179 = 0;
  }

  else
  {
    v179 = 1;
    v176 = v211;
    v178 = v203;
    v175 = v202;
  }

  (*(v175 + 56))(v176, v179, 1, v178);
  v180 = v200;
  v181 = *(v200 + 16);
  v182 = v209;
  v183 = v201;
  v181(v209, v208, v201);
  sub_1BD0DE19C(v207, v212, &qword_1EBD3B650, &qword_1BE0BC8E8);
  v184 = v210;
  sub_1BD0DE19C(v214, v210, &qword_1EBD3B640, &qword_1BE0BC8D8);
  v185 = v204;
  sub_1BD0DE19C(v213, v204, &qword_1EBD3B630, &qword_1BE0BC8C8);
  v186 = v205;
  sub_1BD0DE19C(v176, v205, &qword_1EBD3B620, &qword_1BE0BC8B8);
  v187 = v206;
  v181(v206, v182, v183);
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B670, &qword_1BE0BCA68);
  sub_1BD0DE19C(v212, &v187[v188[12]], &qword_1EBD3B650, &qword_1BE0BC8E8);
  sub_1BD0DE19C(v184, &v187[v188[16]], &qword_1EBD3B640, &qword_1BE0BC8D8);
  sub_1BD0DE19C(v185, &v187[v188[20]], &qword_1EBD3B630, &qword_1BE0BC8C8);
  sub_1BD0DE19C(v186, &v187[v188[24]], &qword_1EBD3B620, &qword_1BE0BC8B8);
  sub_1BD0DE53C(v211, &qword_1EBD3B620, &qword_1BE0BC8B8);
  sub_1BD0DE53C(v213, &qword_1EBD3B630, &qword_1BE0BC8C8);
  sub_1BD0DE53C(v214, &qword_1EBD3B640, &qword_1BE0BC8D8);
  sub_1BD0DE53C(v207, &qword_1EBD3B650, &qword_1BE0BC8E8);
  v189 = *(v180 + 8);
  v189(v208, v183);
  sub_1BD0DE53C(v186, &qword_1EBD3B620, &qword_1BE0BC8B8);
  sub_1BD0DE53C(v185, &qword_1EBD3B630, &qword_1BE0BC8C8);
  sub_1BD0DE53C(v210, &qword_1EBD3B640, &qword_1BE0BC8D8);
  sub_1BD0DE53C(v212, &qword_1EBD3B650, &qword_1BE0BC8E8);
  return (v189)(v209, v183);
}

void sub_1BD189F48(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*(*(a1 + 8) + OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_account) savingsDetails];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 accountSummary];

    v6 = [v5 currentBalance];
    if (!v6)
    {
      sub_1BD1973C4();
      v6 = sub_1BE053054();
    }

    [v6 decimalValue];
    v7 = v148;
    v9 = v146;
    v8 = v147;
    KeyPath = swift_getKeyPath();
    v11 = swift_getKeyPath();
    sub_1BE04D8B4(&v146);
    KeyPath, v12, v13, v14, v15, v16, v17, v18;
    v11, v19, v20, v21, v22, v23, v24, v25;
    v26 = MEMORY[0x1BFB40440](v9, v8, v7, v146, v147, v148);
    v146 = 0;
    v147 = 0xE000000000000000;
    sub_1BE053834();
    v147, v27, v28, v29, v30, v31, v32, v33;
    v146 = 0xD000000000000012;
    v147 = 0x80000001BE11BFF0;
    v34 = [v6 description];
    v35 = sub_1BE052434();
    v37 = v36;

    MEMORY[0x1BFB3F610](v35, v37);
    v38 = v37;
    v39 = v26;
    v38, v40, v41, v42, v43, v44, v45, v46;
    v143 = v147;
    v144 = v146;
    v146 = 0;
    v147 = 0xE000000000000000;
    sub_1BE053834();
    v147, v47, v48, v49, v50, v51, v52, v53;
    v54 = swift_getKeyPath();
    v55 = swift_getKeyPath();
    sub_1BE04D8B4(&v146);
    v54, v56, v57, v58, v59, v60, v61, v62;
    v55, v63, v64, v65, v66, v67, v68, v69;
    v70 = sub_1BE053314();
    v72 = v71;
    MEMORY[0x1BFB3F610](v70);
    v72, v73, v74, v75, v76, v77, v78, v79;
    v145 = v6;
    if (v26)
    {
      v80 = sub_1BE051464();
    }

    else
    {
      v80 = sub_1BE0513B4();
    }

    v81 = v80;
    v82 = MEMORY[0x1E69E7CC0];
    v83 = sub_1BE050564();
    v85 = v84;
    v87 = v86;
    v89 = v88;
    0x80000001BE11C010, v84, v86, v88, v90, v91, v92, v93;
    v81, v94, v95, v96, v97, v98, v99, v100;
    if (v39)
    {
      sub_1BE050394();
    }

    else
    {
      sub_1BE050364();
    }

    v101 = sub_1BE050544();
    v103 = v102;
    v105 = v104;
    v107 = v106;
    sub_1BD0DDF10(v83, v85, (v87 & 1), v106, v108, v109, v110, v111);
    v89, v112, v113, v114, v115, v116, v117, v118;
    sub_1BD0D7F18(v144, v143, 0);
    sub_1BE048C84();
    sub_1BD0D7F18(v101, v103, v105 & 1);
    sub_1BE048C84();

    LOBYTE(v146) = 0;
    *a2 = v144;
    *(a2 + 8) = v143;
    *(a2 + 16) = 0;
    *(a2 + 24) = v82;
    *(a2 + 32) = v101;
    *(a2 + 40) = v103;
    *(a2 + 48) = v105 & 1;
    *(a2 + 56) = v107;
    sub_1BD0DDF10(v101, v103, (v105 & 1), v119, v120, v121, v122, v123);
    v107, v124, v125, v126, v127, v128, v129, v130;
    sub_1BD0DDF10(v144, v143, 0, v131, v132, v133, v134, v135);
    v82, v136, v137, v138, v139, v140, v141, v142;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD18A2F4(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE04D8B4(v22);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v3, v11, v12, v13, v14, v15, v16, v17;
  v22[9] = v22[0];
  v18 = swift_allocObject();
  v19 = *(a1 + 48);
  *(v18 + 48) = *(a1 + 32);
  *(v18 + 64) = v19;
  *(v18 + 80) = *(a1 + 64);
  v20 = *(a1 + 16);
  *(v18 + 16) = *a1;
  *(v18 + 32) = v20;
  sub_1BD1967C8(a1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B6E8, &unk_1BE0F5490);
  sub_1BE04AF64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B6E0, &unk_1BE0BCAA0);
  sub_1BD0DE4F4(&qword_1EBD3B6F0, &qword_1EBD3B6E8, &unk_1BE0F5490, MEMORY[0x1E69E6338]);
  sub_1BD0DE4F4(&qword_1EBD3B6D8, &qword_1EBD3B6E0, &unk_1BE0BCAA0, MEMORY[0x1E6981F48]);
  sub_1BD19717C(&qword_1EBD3B6F8, type metadata accessor for AccountDebugTransactionGroup, &unk_1BE0F560C);
  return sub_1BE0519D4();
}

uint64_t sub_1BD18A4E0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v221 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B700, &qword_1BE0BCAB0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v245 = &v214 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v257 = &v214 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v244 = &v214 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v220 = &v214 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v256 = &v214 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v219 = &v214 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v255 = &v214 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v218 = &v214 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v254 = &v214 - v20;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B708, &qword_1BE0BCAB8);
  v228 = *(v216 - 1);
  MEMORY[0x1EEE9AC00](v216);
  v227 = &v214 - v21;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B710, &qword_1BE0BCAC0);
  v225 = *(v226 - 8);
  MEMORY[0x1EEE9AC00](v226);
  v222 = &v214 - v22;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B718, &qword_1BE0BCAC8);
  MEMORY[0x1EEE9AC00](v224);
  v223 = &v214 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B720, &qword_1BE0BCAD0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v243 = &v214 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v242 = &v214 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v217 = &v214 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v253 = &v214 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v246 = &v214 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v252 = &v214 - v35;
  v36 = sub_1BE04FB94();
  v37 = *(v36 - 8);
  v262 = v36;
  v263 = v37;
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v214 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B728, &qword_1BE0BCAD8);
  v261 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v214 - v41;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B730, &qword_1BE0BCAE0);
  v260 = *(v250 - 8);
  MEMORY[0x1EEE9AC00](v250);
  v44 = &v214 - v43;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B738, &qword_1BE0BCAE8);
  MEMORY[0x1EEE9AC00](v249);
  v248 = &v214 - v45;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B740, &qword_1BE0BCAF0);
  v240 = *(v241 - 8);
  MEMORY[0x1EEE9AC00](v241);
  v239 = &v214 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v251 = &v214 - v48;
  v49 = sub_1BD188458();
  v50 = sub_1BE04AE64();
  v51 = [v49 stringFromDate_];

  v52 = sub_1BE052434();
  v54 = v53;

  v272 = 0;
  v273 = 0xE000000000000000;
  sub_1BE053834();
  v273, v55, v56, v57, v58, v59, v60, v61;
  v272 = v52;
  v273 = v54;
  MEMORY[0x1BFB3F610](10272, 0xE200000000000000);
  v264 = type metadata accessor for AccountDebugTransactionGroup(0);
  v276 = *(a1 + v264[5]);
  v62 = sub_1BE053B24();
  v64 = v63;
  MEMORY[0x1BFB3F610](v62);
  v64, v65, v66, v67, v68, v69, v70, v71;
  MEMORY[0x1BFB3F610](0x6361736E61727420, 0xEE0029736E6F6974);
  v72 = v272;
  v73 = v273;
  v268 = v272;
  v269 = v273;
  v265 = a1;
  v270 = a1;
  v271 = v247;
  v266 = a1;
  v267 = v247;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B748, &qword_1BE0BCAF8);
  v75 = sub_1BD196844();
  v235 = v74;
  v234 = v75;
  sub_1BE0504E4();
  sub_1BE04FB84();
  v76 = sub_1BD0DE4F4(&qword_1EBD3B778, &qword_1EBD3B728, &qword_1BE0BCAD8, MEMORY[0x1E697CD20]);
  v77 = MEMORY[0x1E697C750];
  v78 = v44;
  v79 = v39;
  v80 = v40;
  v81 = v262;
  sub_1BE051144();
  v82 = *(v263 + 1);
  v258 = v79;
  v263 += 8;
  v259 = v82;
  v82(v79, v81);
  v83 = *(v261 + 8);
  v237 = v42;
  v261 += 8;
  v232 = v83;
  v83(v42, v80);
  v276 = v72;
  v277 = v73;
  v84 = v73;
  v238 = v80;
  v272 = v80;
  v273 = v81;
  v233 = v76;
  v274 = v76;
  v275 = v77;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v86 = sub_1BD0DDEBC();
  v87 = MEMORY[0x1E69E6158];
  v88 = v250;
  sub_1BE050B74();
  v89 = *(v260 + 8);
  v236 = v78;
  v260 += 8;
  v230 = v89;
  v89(v78, v88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B780, &qword_1BE0BCB18);
  sub_1BD0DE4F4(&qword_1EBD3B788, &qword_1EBD3B780, &qword_1BE0BCB18, MEMORY[0x1E6981870]);
  v272 = v88;
  v273 = v87;
  v231 = OpaqueTypeConformance2;
  v274 = OpaqueTypeConformance2;
  v275 = v86;
  v229 = swift_getOpaqueTypeConformance2();
  sub_1BE04E8B4();
  v84, v90, v91, v92, v93, v94, v95, v96;
  if (*(*&v265[v264[10]] + 16))
  {
    v215 = &v214;
    MEMORY[0x1EEE9AC00](v97);
    v214 = &v214 - 6;
    *(&v214 - 4) = v98;
    *(&v214 - 3) = 0xD00000000000001FLL;
    *(&v214 - 2) = 0x80000001BE11BCF0;
    MEMORY[0x1EEE9AC00](v99);
    *(&v214 - 2) = v100;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B7A8, &qword_1BE0BCB38);
    sub_1BD196A64();
    v101 = v227;
    sub_1BE0504E4();
    v102 = v258;
    sub_1BE04FB84();
    v103 = sub_1BD0DE4F4(&qword_1EBD3B7B8, &qword_1EBD3B708, &qword_1BE0BCAB8, MEMORY[0x1E697CD20]);
    v104 = v222;
    v105 = v216;
    v106 = v262;
    v107 = MEMORY[0x1E697C750];
    sub_1BE051144();
    v259(v102, v106);
    (*(v228 + 8))(v101, v105);
    v276 = 0xD00000000000001FLL;
    v277 = 0x80000001BE11BCF0;
    v272 = v105;
    v273 = v106;
    v274 = v103;
    v275 = v107;
    v108 = swift_getOpaqueTypeConformance2();
    v109 = v226;
    v110 = MEMORY[0x1E69E6158];
    sub_1BE050B74();
    (*(v225 + 8))(v104, v109);
    v272 = v109;
    v273 = v110;
    v274 = v108;
    v275 = v86;
    swift_getOpaqueTypeConformance2();
    sub_1BE04E8B4();
    v111 = 0;
  }

  else
  {
    v105 = v216;
    v111 = 1;
  }

  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B790, &qword_1BE0BCB20);
  v113 = 1;
  v114 = v246;
  (*(*(v112 - 8) + 56))(v246, v111, 1, v112);
  v115 = sub_1BD0DE204(v114, v252, &qword_1EBD3B720, &qword_1BE0BCAD0);
  v116 = *(*&v265[v264[11]] + 16);
  v246 = v86;
  if (v116)
  {
    v216 = &v214;
    v214 = 0x80000001BE11BD10;
    MEMORY[0x1EEE9AC00](v115);
    v215 = &v214 - 6;
    *(&v214 - 4) = v117;
    *(&v214 - 3) = 0xD000000000000020;
    *(&v214 - 2) = v118;
    MEMORY[0x1EEE9AC00](v119);
    *(&v214 - 2) = v120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B7A8, &qword_1BE0BCB38);
    sub_1BD196A64();
    v121 = v227;
    sub_1BE0504E4();
    v122 = v258;
    sub_1BE04FB84();
    v123 = sub_1BD0DE4F4(&qword_1EBD3B7B8, &qword_1EBD3B708, &qword_1BE0BCAB8, MEMORY[0x1E697CD20]);
    v124 = v222;
    v125 = v262;
    v126 = MEMORY[0x1E697C750];
    sub_1BE051144();
    v259(v122, v125);
    (*(v228 + 8))(v121, v105);
    v276 = 0xD000000000000020;
    v277 = v214;
    v272 = v105;
    v273 = v125;
    v274 = v123;
    v275 = v126;
    v127 = swift_getOpaqueTypeConformance2();
    v128 = v226;
    v129 = MEMORY[0x1E69E6158];
    v130 = v246;
    sub_1BE050B74();
    (*(v225 + 8))(v124, v128);
    v272 = v128;
    v273 = v129;
    v274 = v127;
    v275 = v130;
    swift_getOpaqueTypeConformance2();
    v131 = v217;
    sub_1BE04E8B4();
    v113 = 0;
  }

  else
  {
    v131 = v217;
  }

  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B790, &qword_1BE0BCB20);
  v133 = 1;
  (*(*(v132 - 8) + 56))(v131, v113, 1, v132);
  v134 = sub_1BD0DE204(v131, v253, &qword_1EBD3B720, &qword_1BE0BCAD0);
  if (*(*&v265[v264[16]] + 16))
  {
    MEMORY[0x1EEE9AC00](v134);
    *(&v214 - 4) = v135;
    *(&v214 - 3) = 0xD000000000000023;
    *(&v214 - 2) = 0x80000001BE11BD40;
    MEMORY[0x1EEE9AC00](v136);
    *(&v214 - 2) = v137;
    *(&v214 - 1) = v247;
    v138 = v237;
    sub_1BE0504E4();
    v139 = v258;
    sub_1BE04FB84();
    v140 = v236;
    v141 = v238;
    v142 = v262;
    sub_1BE051144();
    v259(v139, v142);
    v232(v138, v141);
    v272 = 0xD000000000000023;
    v273 = 0x80000001BE11BD40;
    v143 = v250;
    sub_1BE050B74();
    v230(v140, v143);
    v144 = v218;
    sub_1BE04E8B4();
    v133 = 0;
  }

  else
  {
    v144 = v218;
  }

  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B798, &qword_1BE0BCB28);
  v146 = 1;
  (*(*(v145 - 8) + 56))(v144, v133, 1, v145);
  v147 = sub_1BD0DE204(v144, v254, &qword_1EBD3B700, &qword_1BE0BCAB0);
  if (*(*&v265[v264[15]] + 16))
  {
    MEMORY[0x1EEE9AC00](v147);
    *(&v214 - 4) = v148;
    *(&v214 - 3) = 0xD00000000000002DLL;
    *(&v214 - 2) = 0x80000001BE11BD70;
    MEMORY[0x1EEE9AC00](v149);
    *(&v214 - 2) = v150;
    *(&v214 - 1) = v247;
    v151 = v237;
    sub_1BE0504E4();
    v152 = v258;
    sub_1BE04FB84();
    v153 = v236;
    v154 = v238;
    v155 = v262;
    sub_1BE051144();
    v259(v152, v155);
    v232(v151, v154);
    v272 = 0xD00000000000002DLL;
    v273 = 0x80000001BE11BD70;
    v156 = v250;
    sub_1BE050B74();
    v230(v153, v156);
    v157 = v219;
    sub_1BE04E8B4();
    v146 = 0;
  }

  else
  {
    v157 = v219;
  }

  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B798, &qword_1BE0BCB28);
  v159 = 1;
  (*(*(v158 - 8) + 56))(v157, v146, 1, v158);
  v160 = sub_1BD0DE204(v157, v255, &qword_1EBD3B700, &qword_1BE0BCAB0);
  if (*(*&v265[v264[18]] + 16))
  {
    v263 = &v214;
    MEMORY[0x1EEE9AC00](v160);
    *(&v214 - 4) = v161;
    *(&v214 - 3) = 0xD00000000000001FLL;
    *(&v214 - 2) = 0x80000001BE11BDA0;
    MEMORY[0x1EEE9AC00](v162);
    *(&v214 - 2) = v163;
    *(&v214 - 1) = v247;
    v164 = v237;
    sub_1BE0504E4();
    v165 = v258;
    sub_1BE04FB84();
    v166 = v236;
    v167 = v238;
    v168 = v262;
    sub_1BE051144();
    v259(v165, v168);
    v232(v164, v167);
    v272 = 0xD00000000000001FLL;
    v273 = 0x80000001BE11BDA0;
    v169 = v250;
    sub_1BE050B74();
    v230(v166, v169);
    v170 = v220;
    sub_1BE04E8B4();
    v159 = 0;
  }

  else
  {
    v170 = v220;
  }

  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B798, &qword_1BE0BCB28);
  (*(*(v171 - 8) + 56))(v170, v159, 1, v171);
  sub_1BD0DE204(v170, v256, &qword_1EBD3B700, &qword_1BE0BCAB0);
  v172 = *&v265[v264[17]];
  if (*(v172 + 16))
  {
    v272 = 0;
    v273 = 0xE000000000000000;
    sub_1BE053834();
    v273, v173, v174, v175, v176, v177, v178, v179;
    v272 = 0xD00000000000001BLL;
    v273 = 0x80000001BE11BDC0;
    v180 = MEMORY[0x1BFB3F7F0](v172, MEMORY[0x1E69E6158]);
    v182 = v181;
    MEMORY[0x1BFB3F610](v180);
    v182, v183, v184, v185, v186, v187, v188, v189;
    v265 = v272;
    v263 = v273;
    sub_1BE048C84();
    v264 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v264 = 0;
    v265 = 0;
    v263 = 0;
  }

  v190 = *(v240 + 16);
  v191 = v239;
  v192 = v241;
  v190(v239, v251, v241);
  v193 = v242;
  sub_1BD0DE19C(v252, v242, &qword_1EBD3B720, &qword_1BE0BCAD0);
  v194 = v243;
  sub_1BD0DE19C(v253, v243, &qword_1EBD3B720, &qword_1BE0BCAD0);
  v195 = v244;
  sub_1BD0DE19C(v254, v244, &qword_1EBD3B700, &qword_1BE0BCAB0);
  sub_1BD0DE19C(v255, v257, &qword_1EBD3B700, &qword_1BE0BCAB0);
  sub_1BD0DE19C(v256, v245, &qword_1EBD3B700, &qword_1BE0BCAB0);
  v196 = v221;
  v190(v221, v191, v192);
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B7A0, &qword_1BE0BCB30);
  sub_1BD0DE19C(v193, &v196[v197[12]], &qword_1EBD3B720, &qword_1BE0BCAD0);
  sub_1BD0DE19C(v194, &v196[v197[16]], &qword_1EBD3B720, &qword_1BE0BCAD0);
  sub_1BD0DE19C(v195, &v196[v197[20]], &qword_1EBD3B700, &qword_1BE0BCAB0);
  sub_1BD0DE19C(v257, &v196[v197[24]], &qword_1EBD3B700, &qword_1BE0BCAB0);
  v198 = v245;
  sub_1BD0DE19C(v245, &v196[v197[28]], &qword_1EBD3B700, &qword_1BE0BCAB0);
  v199 = &v196[v197[32]];
  v201 = v264;
  v200 = v265;
  v202 = v263;
  sub_1BD1969AC(v265, v263, 0, v264);
  sub_1BD1969F0(v200, v202, 0, v201, v203, v204, v205, v206);
  *v199 = v200;
  *(v199 + 1) = v202;
  *(v199 + 2) = 0;
  *(v199 + 3) = v201;
  sub_1BD0DE53C(v256, &qword_1EBD3B700, &qword_1BE0BCAB0);
  sub_1BD0DE53C(v255, &qword_1EBD3B700, &qword_1BE0BCAB0);
  sub_1BD0DE53C(v254, &qword_1EBD3B700, &qword_1BE0BCAB0);
  sub_1BD0DE53C(v253, &qword_1EBD3B720, &qword_1BE0BCAD0);
  sub_1BD0DE53C(v252, &qword_1EBD3B720, &qword_1BE0BCAD0);
  v207 = *(v240 + 8);
  v208 = v241;
  v207(v251, v241);
  sub_1BD1969F0(v200, v202, 0, v201, v209, v210, v211, v212);
  sub_1BD0DE53C(v198, &qword_1EBD3B700, &qword_1BE0BCAB0);
  sub_1BD0DE53C(v257, &qword_1EBD3B700, &qword_1BE0BCAB0);
  sub_1BD0DE53C(v244, &qword_1EBD3B700, &qword_1BE0BCAB0);
  sub_1BD0DE53C(v243, &qword_1EBD3B720, &qword_1BE0BCAD0);
  sub_1BD0DE53C(v242, &qword_1EBD3B720, &qword_1BE0BCAD0);
  return (v207)(v239, v208);
}

double sub_1BD18C19C@<D0>(void *a1@<X0>, char *a2@<X1>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = sub_1BE04F7C4();
  v29 = 1;
  sub_1BD18C328(a1, a2, a4, &v18);
  v36 = v24;
  v37 = v25;
  v38 = v26;
  v39 = v27;
  v32 = v20;
  v33 = v21;
  v34 = v22;
  v35 = v23;
  v30 = v18;
  v31 = v19;
  v40[6] = v24;
  v40[7] = v25;
  v40[8] = v26;
  v40[9] = v27;
  v40[2] = v20;
  v40[3] = v21;
  v40[4] = v22;
  v40[5] = v23;
  v40[0] = v18;
  v40[1] = v19;
  sub_1BD0DE19C(&v30, &v17, &qword_1EBD3B858, &qword_1BE0BCBD8);
  sub_1BD0DE53C(v40, &qword_1EBD3B858, &qword_1BE0BCBD8);
  *&v28[55] = v33;
  *&v28[39] = v32;
  *&v28[103] = v36;
  *&v28[119] = v37;
  *&v28[135] = v38;
  *&v28[151] = v39;
  *&v28[71] = v34;
  *&v28[87] = v35;
  *&v28[7] = v30;
  *&v28[23] = v31;
  v10 = *&v28[96];
  *(a5 + 129) = *&v28[112];
  v11 = *&v28[144];
  *(a5 + 145) = *&v28[128];
  *(a5 + 161) = v11;
  v12 = *&v28[32];
  *(a5 + 65) = *&v28[48];
  v13 = *&v28[80];
  *(a5 + 81) = *&v28[64];
  *(a5 + 97) = v13;
  *(a5 + 113) = v10;
  result = *v28;
  v15 = *&v28[16];
  *(a5 + 17) = *v28;
  *(a5 + 33) = v15;
  v16 = v29;
  *a5 = v9;
  *(a5 + 8) = 0;
  *(a5 + 16) = v16;
  *(a5 + 176) = *&v28[159];
  *(a5 + 49) = v12;
  return result;
}

void sub_1BD18C328(void *a1@<X0>, char *a2@<X1>, void *a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for AccountDebugTransactionGroup(0);
  sub_1BE048C84();
  v153 = sub_1BE053314();
  v7 = v6;
  v155 = sub_1BE053314();
  v9 = v8;
  v10 = sub_1BE053314();
  v12 = v11;
  v156 = sub_1BE053314();
  v14 = v13;
  v15 = sub_1BE053314();
  v158 = v16;
  v159 = v15;
  v157 = sub_1BE053314();
  v18 = v17;
  strcpy(v174, "Daily Cash: $");
  HIWORD(v174[1]) = -4864;
  MEMORY[0x1BFB3F610](v10, v12);
  v12, v19, v20, v21, v22, v23, v24, v25;
  v26 = v174[1];
  v154 = v174[0];
  v174[0] = 0;
  v174[1] = 0xE000000000000000;
  sub_1BE053834();
  v28 = a4[2];
  v27 = a4[3];
  sub_1BE048C84();
  0xE000000000000000, v29, v30, v31, v32, v33, v34, v35;
  v174[0] = v28;
  v174[1] = v27;
  MEMORY[0x1BFB3F610](9248, 0xE200000000000000);
  MEMORY[0x1BFB3F610](v153, v7);
  v7, v36, v37, v38, v39, v40, v41, v42;
  MEMORY[0x1BFB3F610](2128928, 0xE300000000000000);
  MEMORY[0x1BFB3F610](a4[4], a4[5]);
  MEMORY[0x1BFB3F610](9248, 0xE200000000000000);
  MEMORY[0x1BFB3F610](v155, v9);
  v9, v43, v44, v45, v46, v47, v48, v49;
  MEMORY[0x1BFB3F610](2128928, 0xE300000000000000);
  MEMORY[0x1BFB3F610](a4[6], a4[7]);
  MEMORY[0x1BFB3F610](9248, 0xE200000000000000);
  MEMORY[0x1BFB3F610](v156, v14);
  v14, v50, v51, v52, v53, v54, v55, v56;
  MEMORY[0x1BFB3F610](2128928, 0xE300000000000000);
  MEMORY[0x1BFB3F610](v154, v26);
  v26, v57, v58, v59, v60, v61, v62, v63;
  v64 = v27;
  sub_1BE053834();
  0xE000000000000000, v65, v66, v67, v68, v69, v70, v71;
  MEMORY[0x1BFB3F610](v157, v18);
  v18, v72, v73, v74, v75, v76, v77, v78;
  sub_1BE053834();
  0xE000000000000000, v79, v80, v81, v82, v83, v84, v85;
  MEMORY[0x1BFB3F610](v159, v158);
  v158, v86, v87, v88, v89, v90, v91, v92;
  v162[152] = 0;
  v162[144] = 0;
  v162[136] = 0;
  sub_1BD0D7F18(v28, v27, 0);
  v93 = MEMORY[0x1E69E7CC0];
  sub_1BE048C84();
  sub_1BD0D7F18(0xD000000000000014, 0x80000001BE11BDE0, 0);
  sub_1BE048C84();
  sub_1BD0D7F18(0xD000000000000015, 0x80000001BE11BE00, 0);
  sub_1BE048C84();
  sub_1BD0DDF10(0xD000000000000015, 0x80000001BE11BE00, 0, v94, v95, v96, v97, v98);
  v93, v99, v100, v101, v102, v103, v104, v105;
  sub_1BD0DDF10(0xD000000000000014, 0x80000001BE11BDE0, 0, v106, v107, v108, v109, v110);
  v93, v111, v112, v113, v114, v115, v116, v117;
  sub_1BD0DDF10(v28, v64, 0, v118, v119, v120, v121, v122);
  v93, v123, v124, v125, v126, v127, v128, v129;
  v130 = sub_1BE050454();
  KeyPath = swift_getKeyPath();
  v132 = sub_1BE051494();
  v133 = swift_getKeyPath();
  v162[128] = 0;
  *&v166 = v28;
  *(&v166 + 1) = v64;
  LOBYTE(v167) = 0;
  *(&v167 + 1) = *v165;
  DWORD1(v167) = *&v165[3];
  *(&v167 + 1) = v93;
  *&v168 = 0xD000000000000014;
  *(&v168 + 1) = 0x80000001BE11BDE0;
  LOBYTE(v169) = 0;
  *(&v169 + 1) = *v164;
  DWORD1(v169) = *&v164[3];
  *(&v169 + 1) = v93;
  *&v170 = 0xD000000000000015;
  *(&v170 + 1) = 0x80000001BE11BE00;
  LOBYTE(v171) = 0;
  *(&v171 + 1) = *v163;
  DWORD1(v171) = *&v163[3];
  *(&v171 + 1) = v93;
  *&v172 = KeyPath;
  *(&v172 + 1) = v130;
  *&v173 = v133;
  *(&v173 + 1) = v132;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = 0;
  *(a5 + 24) = v93;
  v134 = v166;
  v135 = v167;
  v136 = v169;
  *(a5 + 64) = v168;
  *(a5 + 80) = v136;
  *(a5 + 32) = v134;
  *(a5 + 48) = v135;
  v137 = v170;
  v138 = v171;
  v139 = v173;
  *(a5 + 128) = v172;
  *(a5 + 144) = v139;
  *(a5 + 96) = v137;
  *(a5 + 112) = v138;
  v174[0] = v28;
  v174[1] = v64;
  v175 = 0;
  *&v176[3] = *&v165[3];
  *v176 = *v165;
  v177 = v93;
  v178 = 0xD000000000000014;
  v179 = 0x80000001BE11BDE0;
  v180 = 0;
  *&v181[3] = *&v164[3];
  *v181 = *v164;
  v182 = v93;
  v183 = 0xD000000000000015;
  v184 = 0x80000001BE11BE00;
  v185 = 0;
  *&v186[3] = *&v163[3];
  *v186 = *v163;
  v187 = v93;
  v188 = KeyPath;
  v189 = v130;
  v190 = v133;
  v191 = v132;
  sub_1BD0D7F18(a1, a2, 0);
  sub_1BE048C84();
  sub_1BD0DE19C(&v166, v162, &qword_1EBD3B860, &unk_1BE0BCC40);
  sub_1BD0DE53C(v174, &qword_1EBD3B860, &unk_1BE0BCC40);
  sub_1BD0DDF10(a1, a2, 0, v140, v141, v142, v143, v144);
  v93, v145, v146, v147, v148, v149, v150, v151;
}

uint64_t sub_1BD18C880(uint64_t a1)
{
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B7C0, &qword_1BE0BCB40);
  sub_1BD0DE4F4(&qword_1EBD3B7C8, &qword_1EBD3B7C0, &qword_1BE0BCB40, MEMORY[0x1E69E6338]);
  sub_1BD196AE0();
  return sub_1BE0519D4();
}

void sub_1BD18C950(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 description];
  v4 = sub_1BE052434();
  v6 = v5;

  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = 0;
  *(a2 + 24) = MEMORY[0x1E69E7CC0];
}

void sub_1BD18C9B8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v47 = sub_1BE04F434();
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B850, &qword_1BE0BCB88);
  v7 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v46 = &v44 - v8;
  v9 = [objc_allocWithZone(MEMORY[0x1E69B9300]) initWithTransactionSource_];
  v10 = *(a1 + OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction);
  KeyPath = swift_getKeyPath();
  v12 = swift_getKeyPath();
  v13 = v10;
  sub_1BE04D8B4(v59);
  KeyPath, v14, v15, v16, v17, v18, v19, v20;
  v12, v21, v22, v23, v24, v25, v26, v27;
  v28 = *&v59[0];
  if (*&v59[0])
  {
    v29 = [objc_allocWithZone(MEMORY[0x1E69B8BD8]) init];
    v30 = objc_allocWithZone(PKPaymentTransactionDetailViewController);
    v31 = v9;
    LOBYTE(v43) = 1;
    v32 = [v30 initWithTransaction:v13 transactionSourceCollection:v31 familyCollection:0 account:v28 accountUserCollection:0 bankConnectInstitution:0 physicalCards:0 contactResolver:0 peerPaymentWebService:0 paymentServiceDataProvider:v29 detailViewStyle:0 allowTransactionLinks:v43];

    if (v32)
    {
      v33 = sub_1BE04F7B4();
      v34 = v32;
      sub_1BE051CD4();
      sub_1BE04EE54();
      LOBYTE(v59[0]) = 1;
      v35 = sub_1BE04EC54();
      v36 = sub_1BE0501D4();
      v50 = v33;
      LOBYTE(v51) = 1;
      *(&v51 + 1) = v34;
      v56 = v58[6];
      v57 = v58[7];
      v58[0] = v58[8];
      v52 = v58[2];
      v53 = v58[3];
      v54 = v58[4];
      v55 = v58[5];
      *&v58[1] = v35;
      BYTE8(v58[1]) = v36;
      v37 = v45;
      v38 = v47;
      (*(v45 + 104))(v6, *MEMORY[0x1E697C438], v47);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B810, &unk_1BE0DD8F0);
      sub_1BD196C48();
      v39 = v46;
      sub_1BE050E84();

      (*(v37 + 8))(v6, v38);
      v59[6] = v56;
      v59[7] = v57;
      v60[0] = v58[0];
      *(v60 + 9) = *(v58 + 9);
      v59[2] = v52;
      v59[3] = v53;
      v59[4] = v54;
      v59[5] = v55;
      v59[0] = v50;
      v59[1] = v51;
      sub_1BD0DE53C(v59, &qword_1EBD3B810, &unk_1BE0DD8F0);
      v40 = v49;
      v41 = v39;
      v42 = v48;
      (*(v7 + 32))(v49, v41, v48);
      (*(v7 + 56))(v40, 0, 1, v42);
    }

    else
    {

      (*(v7 + 56))(v49, 1, 1, v48);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD18CDF4(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v3 = swift_allocObject();
  v4 = *(a2 + 48);
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(a2 + 64);
  v5 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v5;
  sub_1BE048C84();
  sub_1BD1967C8(a2, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B7D8, &qword_1BE0BCB48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B760, &qword_1BE0BCB00);
  sub_1BD0DE4F4(&qword_1EBD3B7E0, &qword_1EBD3B7D8, &qword_1BE0BCB48, MEMORY[0x1E69E6338]);
  sub_1BD1968C8();
  sub_1BD196B34();
  return sub_1BE0519D4();
}

int *sub_1BD18CF2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v47 = a3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B7F0, &qword_1BE0BCB50);
  MEMORY[0x1EEE9AC00](v46);
  v6 = v45 - v5;
  v45[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B7F8, &qword_1BE0BCB58);
  MEMORY[0x1EEE9AC00](v45[0]);
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v45 - v10;
  v13 = *a1;
  v12 = *(a1 + 8);
  v14 = objc_opt_self();
  v15 = v13;
  result = [v14 presentationInformationForTransaction:v15 transactionSource:v12 secondaryTransactionSource:0 familyMember:0 account:0 deviceName:0 context:0];
  v45[1] = a2;
  v17 = *(a2 + 64);
  if (v17)
  {
    v18 = result;
    type metadata accessor for TransactionPresentation(0);
    swift_allocObject();
    v19 = v17;
    v20 = v18;
    v21 = sub_1BD6AF5A8(v15, v20, v17);

    v22 = sub_1BE051CD4();
    v23 = v47;
    *v47 = v22;
    v23[1] = v24;
    v25 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B800, &unk_1BE0BCB60) + 44);
    sub_1BD18C9B8(v21, v12, v6);
    sub_1BD196B88();
    sub_1BE04E8B4();
    *&v11[*(v45[0] + 36)] = 0;
    sub_1BD19717C(&qword_1EBD3B840, type metadata accessor for TransactionPresentation, &unk_1BE0EF098);
    sub_1BE048964();
    v26 = sub_1BE04E954();
    v28 = v27;
    sub_1BD6AE91C();
    sub_1BD0DE19C(v11, v8, &qword_1EBD3B7F8, &qword_1BE0BCB58);
    sub_1BD0DE19C(v8, v25, &qword_1EBD3B7F8, &qword_1BE0BCB58);
    v29 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B848, &qword_1BE0BCB80) + 48));
    *v29 = v26;
    v29[1] = v28;
    sub_1BE048964();
    sub_1BD0DE53C(v11, &qword_1EBD3B7F8, &qword_1BE0BCB58);
    v28, v30, v31, v32, v33, v34, v35, v36;
    sub_1BD0DE53C(v8, &qword_1EBD3B7F8, &qword_1BE0BCB58);
    v21, v37, v38, v39, v40, v41, v42, v43;

    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B760, &qword_1BE0BCB00);
    v44 = v23 + result[9];
    v44[32] = 0;
    *v44 = 0u;
    *(v44 + 1) = 0u;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD18D2A0(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_1BE053B24();
  v50 = v6;
  MEMORY[0x1BFB3F610](32, 0xE100000000000000);
  MEMORY[0x1BFB3F610](a1, a2);
  v7 = sub_1BE050454();
  v8 = sub_1BE0505F4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v50, v9, v11, v13, v15, v16, v17, v18;
  v7, v19, v20, v21, v22, v23, v24, v25;
  v26 = sub_1BE051494();
  v27 = sub_1BE050564();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v26, v28, v30, v32, v34, v35, v36, v37;
  sub_1BD0DDF10(v8, v10, (v12 & 1), v38, v39, v40, v41, v42);
  v14, v43, v44, v45, v46, v47, v48, v49;
  *a3 = v27;
  *(a3 + 8) = v29;
  *(a3 + 16) = v31 & 1;
  *(a3 + 24) = v33;
}

uint64_t sub_1BD18D3D4(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE04D8B4(v22);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v3, v11, v12, v13, v14, v15, v16, v17;
  v22[9] = v22[0];
  v18 = swift_allocObject();
  v19 = *(a1 + 48);
  *(v18 + 48) = *(a1 + 32);
  *(v18 + 64) = v19;
  *(v18 + 80) = *(a1 + 64);
  v20 = *(a1 + 16);
  *(v18 + 16) = *a1;
  *(v18 + 32) = v20;
  sub_1BD1967C8(a1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD524A0, &qword_1BE0BCC50);
  sub_1BE04AF64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B6C0, &qword_1BE0BCA90);
  sub_1BD0DE4F4(&qword_1EBD3B868, &qword_1EBD524A0, &qword_1BE0BCC50, MEMORY[0x1E69E6338]);
  sub_1BD0DE4F4(&qword_1EBD3B6B8, &qword_1EBD3B6C0, &qword_1BE0BCA90, MEMORY[0x1E697C090]);
  sub_1BD19717C(&qword_1EBD3B870, type metadata accessor for AccountDebugSavingsStatement, &unk_1BE0F5644);
  return sub_1BE0519D4();
}

uint64_t sub_1BD18D5C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a3;
  v71 = sub_1BE04FB94();
  v74 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v67 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B728, &qword_1BE0BCAD8);
  v69 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v7 = &v63 - v6;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B730, &qword_1BE0BCAE0);
  v72 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v9 = &v63 - v8;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B738, &qword_1BE0BCAE8);
  MEMORY[0x1EEE9AC00](v75);
  v66 = &v63 - v10;
  v11 = type metadata accessor for AccountDebugTransactionGroup(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = *a1;
  v15 = *(type metadata accessor for AccountDebugSavingsStatement(0) + 20);
  v73 = type metadata accessor for AccountDebugTransactionGroup;
  sub_1BD197294(a1 + v15, v14, type metadata accessor for AccountDebugTransactionGroup);
  v16 = sub_1BD188458();
  v17 = sub_1BE04AE64();
  v18 = [v16 stringFromDate_];

  v19 = sub_1BE052434();
  v21 = v20;

  v85 = 0;
  v86 = 0xE000000000000000;
  sub_1BE053834();
  v86, v22, v23, v24, v25, v26, v27, v28;
  v85 = v19;
  v86 = v21;
  MEMORY[0x1BFB3F610](10272, 0xE200000000000000);
  v29 = *(v12 + 28);
  v30 = v14;
  v65 = v14;
  v89 = *&v14[v29];
  v31 = sub_1BE053B24();
  v33 = v32;
  MEMORY[0x1BFB3F610](v31);
  v33, v34, v35, v36, v37, v38, v39, v40;
  MEMORY[0x1BFB3F610](0x6361736E61727420, 0xEE0029736E6F6974);
  v42 = v85;
  v41 = v86;
  v79 = v85;
  v80 = v86;
  v81 = v30;
  v82 = v64;
  v83 = a2;
  v84 = a1;
  v77 = a1;
  v78 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B748, &qword_1BE0BCAF8);
  sub_1BD196844();
  sub_1BE0504E4();
  v43 = v67;
  sub_1BE04FB84();
  v44 = sub_1BD0DE4F4(&qword_1EBD3B778, &qword_1EBD3B728, &qword_1BE0BCAD8, MEMORY[0x1E697CD20]);
  v45 = MEMORY[0x1E697C750];
  v46 = v9;
  v47 = v43;
  v48 = v68;
  v49 = v71;
  sub_1BE051144();
  (*(v74 + 8))(v47, v49);
  (*(v69 + 8))(v7, v48);
  v89 = v42;
  v90 = v41;
  v50 = v41;
  v85 = v48;
  v86 = v49;
  v87 = v44;
  v88 = v45;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = sub_1BD0DDEBC();
  v53 = MEMORY[0x1E69E6158];
  v54 = v70;
  sub_1BE050B74();
  (*(v72 + 8))(v46, v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B878, &qword_1BE0BCC58);
  sub_1BD0DE4F4(&qword_1EBD3B880, &qword_1EBD3B878, &qword_1BE0BCC58, MEMORY[0x1E6981870]);
  v85 = v54;
  v86 = v53;
  v87 = OpaqueTypeConformance2;
  v88 = v52;
  swift_getOpaqueTypeConformance2();
  sub_1BE04E8B4();
  v50, v55, v56, v57, v58, v59, v60, v61;
  return sub_1BD197364(v65, v73);
}

uint64_t sub_1BD18DBF4(uint64_t a1, uint64_t a2)
{
  v3 = a1 + *(type metadata accessor for AccountDebugSavingsStatement(0) + 20);
  v9 = *(v3 + *(type metadata accessor for AccountDebugTransactionGroup(0) + 76));
  v4 = swift_allocObject();
  v5 = *(a2 + 48);
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(a2 + 64);
  v6 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v6;
  sub_1BE048C84();
  sub_1BD1967C8(a2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B7D8, &qword_1BE0BCB48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B760, &qword_1BE0BCB00);
  sub_1BD0DE4F4(&qword_1EBD3B7E0, &qword_1EBD3B7D8, &qword_1BE0BCB48, MEMORY[0x1E69E6338]);
  sub_1BD1968C8();
  sub_1BD196B34();
  return sub_1BE0519D4();
}

double sub_1BD18DD4C@<D0>(void *a2@<X1>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = sub_1BE04F7C4();
  v26 = 1;
  sub_1BD18DE94(a2, a4, a5, a6, &v19);
  v29 = v21;
  v30 = v22;
  v31 = v23;
  v32 = v24;
  v27 = v19;
  v28 = v20;
  v33[2] = v21;
  v33[3] = v22;
  v33[4] = v23;
  v33[5] = v24;
  v33[0] = v19;
  v33[1] = v20;
  sub_1BD0DE19C(&v27, &v18, &qword_1EBD3B888, &unk_1BE0BCC60);
  sub_1BD0DE53C(v33, &qword_1EBD3B888, &unk_1BE0BCC60);
  *&v25[39] = v29;
  *&v25[55] = v30;
  *&v25[71] = v31;
  *&v25[87] = v32;
  *&v25[7] = v27;
  *&v25[23] = v28;
  v13 = *&v25[32];
  *(a7 + 65) = *&v25[48];
  v14 = *&v25[80];
  *(a7 + 81) = *&v25[64];
  *(a7 + 97) = v14;
  v16 = *v25;
  result = *&v25[16];
  *(a7 + 33) = *&v25[16];
  *(a7 + 49) = v13;
  v17 = v26;
  *a7 = v12;
  *(a7 + 8) = 0;
  *(a7 + 16) = v17;
  *(a7 + 112) = *&v25[95];
  *(a7 + 17) = v16;
  return result;
}

void sub_1BD18DE94(void *a2@<X1>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1BE048C84();
  v11 = sub_1BE050414();
  v12 = sub_1BE0505F4();
  v237 = v13;
  v238 = v12;
  v235 = v14;
  v236 = v15;
  a2, v13, v14, v15, v16, v17, v18, v19;
  v11, v20, v21, v22, v23, v24, v25, v26;
  type metadata accessor for AccountDebugTransactionGroup(0);
  v223 = sub_1BE053314();
  v28 = v27;
  v224 = sub_1BE053314();
  v30 = v29;
  v31 = sub_1BE053314();
  v230 = v32;
  v231 = v31;
  v33 = sub_1BE053314();
  v228 = v34;
  v229 = v33;
  sub_1BE053834();
  0xE000000000000000, v35, v36, v37, v38, v39, v40, v41;
  v42 = [a4 openingBalance];
  v43 = [v42 description];
  v44 = sub_1BE052434();
  v46 = v45;

  MEMORY[0x1BFB3F610](v44, v46);
  v46, v47, v48, v49, v50, v51, v52, v53;

  MEMORY[0x1BFB3F610](0x6E69736F6C63202CLL, 0xEB00000000203A67);
  v54 = [a4 closingBalance];
  v55 = [v54 description];
  v56 = sub_1BE052434();
  v58 = v57;

  MEMORY[0x1BFB3F610](v56, v58);
  v58, v59, v60, v61, v62, v63, v64, v65;

  v66 = sub_1BE050454();
  v67 = sub_1BE0505F4();
  v69 = v68;
  LOBYTE(v46) = v70;
  v72 = v71;
  0x80000001BE11BE20, v68, v70, v71, v73, v74, v75, v76;
  v66, v77, v78, v79, v80, v81, v82, v83;
  v84 = sub_1BE051494();
  v85 = sub_1BE050564();
  v225 = v86;
  v226 = v85;
  v222 = v87;
  v227 = v88;
  v84, v86, v87, v88, v89, v90, v91, v92;
  sub_1BD0DDF10(v67, v69, (v46 & 1), v93, v94, v95, v96, v97);
  v72, v98, v99, v100, v101, v102, v103, v104;
  sub_1BE053834();
  v105 = a5[3];
  sub_1BE048C84();
  0xE000000000000000, v106, v107, v108, v109, v110, v111, v112;
  MEMORY[0x1BFB3F610](9248, 0xE200000000000000);
  MEMORY[0x1BFB3F610](v223, v28);
  v28, v113, v114, v115, v116, v117, v118, v119;
  MEMORY[0x1BFB3F610](2128928, 0xE300000000000000);
  MEMORY[0x1BFB3F610](a5[4], a5[5]);
  MEMORY[0x1BFB3F610](9248, 0xE200000000000000);
  MEMORY[0x1BFB3F610](v224, v30);
  v30, v120, v121, v122, v123, v124, v125, v126;
  MEMORY[0x1BFB3F610](2128928, 0xE300000000000000);
  MEMORY[0x1BFB3F610](a5[6], a5[7]);
  MEMORY[0x1BFB3F610](9248, 0xE200000000000000);
  MEMORY[0x1BFB3F610](v229, v228);
  v228, v127, v128, v129, v130, v131, v132, v133;
  MEMORY[0x1BFB3F610](0xD000000000000010, 0x80000001BE11BE40);
  MEMORY[0x1BFB3F610](v231, v230);
  v230, v134, v135, v136, v137, v138, v139, v140;
  v141 = sub_1BE050454();
  v142 = sub_1BE0505F4();
  v144 = v143;
  v146 = v145;
  v148 = v147;
  v105, v143, v145, v147, v149, v150, v151, v152;
  v141, v153, v154, v155, v156, v157, v158, v159;
  if (*(a6 + *(type metadata accessor for AccountDebugSavingsStatement(0) + 24)) == 1)
  {
    v160 = sub_1BE051494();
  }

  else
  {
    v160 = sub_1BE0513B4();
  }

  v161 = v160;
  v162 = sub_1BE050564();
  v232 = v163;
  v234 = v162;
  v165 = v164;
  v167 = v166;
  v161, v163, v164, v166, v168, v169, v170, v171;
  sub_1BD0DDF10(v142, v144, (v146 & 1), v172, v173, v174, v175, v176);
  v148, v177, v178, v179, v180, v181, v182, v183;
  v184 = (v235 & 1);
  v185 = (v222 & 1);
  *a7 = v238;
  *(a7 + 8) = v237;
  *(a7 + 16) = v184;
  *(a7 + 24) = v236;
  *(a7 + 32) = v226;
  *(a7 + 40) = v225;
  *(a7 + 48) = v222 & 1;
  *(a7 + 56) = v227;
  *(a7 + 64) = v234;
  *(a7 + 72) = v232;
  *(a7 + 80) = v165 & 1;
  *(a7 + 88) = v167;
  sub_1BD0D7F18(v238, v237, v235 & 1);
  sub_1BE048C84();
  sub_1BD0D7F18(v226, v225, v185);
  sub_1BE048C84();
  sub_1BD0D7F18(v234, v232, v165 & 1);
  sub_1BE048C84();
  sub_1BD0DDF10(v234, v232, (v165 & 1), v186, v187, v188, v189, v190);
  v167, v191, v192, v193, v194, v195, v196, v197;
  sub_1BD0DDF10(v226, v225, v185, v198, v199, v200, v201, v202);
  v227, v203, v204, v205, v206, v207, v208, v209;
  sub_1BD0DDF10(v238, v237, v184, v210, v211, v212, v213, v214);

  v236, v215, v216, v217, v218, v219, v220, v221;
}

uint64_t sub_1BD18E3F4(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE04D8B4(v22);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v3, v11, v12, v13, v14, v15, v16, v17;
  v22[9] = v22[0];
  v18 = swift_allocObject();
  v19 = *(a1 + 48);
  *(v18 + 48) = *(a1 + 32);
  *(v18 + 64) = v19;
  *(v18 + 80) = *(a1 + 64);
  v20 = *(a1 + 16);
  *(v18 + 16) = *a1;
  *(v18 + 32) = v20;
  sub_1BD1967C8(a1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B6E8, &unk_1BE0F5490);
  sub_1BE04AF64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B6A0, &qword_1BE0BCA80);
  sub_1BD0DE4F4(&qword_1EBD3B6F0, &qword_1EBD3B6E8, &unk_1BE0F5490, MEMORY[0x1E69E6338]);
  sub_1BD0DE4F4(&qword_1EBD3B698, &qword_1EBD3B6A0, &qword_1BE0BCA80, MEMORY[0x1E697C090]);
  sub_1BD19717C(&qword_1EBD3B6F8, type metadata accessor for AccountDebugTransactionGroup, &unk_1BE0F560C);
  return sub_1BE0519D4();
}

void sub_1BD18E5E0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v89 = a2;
  v99 = a3;
  v95 = sub_1BE04FB94();
  v97 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v91 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B728, &qword_1BE0BCAD8);
  v93 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v88 = &v74 - v5;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B730, &qword_1BE0BCAE0);
  v96 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v87 = &v74 - v6;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B738, &qword_1BE0BCAE8);
  MEMORY[0x1EEE9AC00](v98);
  v90 = &v74 - v7;
  v86 = sub_1BE04AC64();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v84 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1BE04ACA4();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1BE04ABD4();
  v77 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE04AD84();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v74 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v74 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v74 - v24;
  type metadata accessor for AccountDebugTransactionGroup(0);
  v80 = sub_1BE053314();
  v101 = v26;
  v75 = a1;
  v78 = sub_1BE053314();
  v100 = v27;
  v76 = sub_1BE053314();
  v29 = v28;
  v83 = v28;
  MEMORY[0x1BFB371E0]();
  sub_1BE04ABC4();
  sub_1BE04AB64();
  (*(v77 + 8))(v12, v79);
  v30 = *(v14 + 8);
  v30(v16, v13);
  sub_1BE04AC24();
  sub_1BE04ABB4();
  (*(v81 + 8))(v10, v82);
  v30(v19, v13);
  v31 = v84;
  sub_1BE04AC44();
  sub_1BE04ABA4();
  (*(v85 + 8))(v31, v86);
  v30(v22, v13);
  sub_1BD19717C(&qword_1EBD4E940, MEMORY[0x1E6969328], MEMORY[0x1E6969320]);
  v32 = v75;
  sub_1BE04AF44();
  v30(v25, v13);
  v34 = v113;
  v33 = v114;
  v104 = v113;
  v105 = v114;
  v106 = v76;
  v107 = v29;
  v108 = v89;
  v109 = v80;
  v110 = v101;
  v111 = v78;
  v112 = v100;
  v102 = v32;
  v103 = v89;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B748, &qword_1BE0BCAF8);
  sub_1BD196844();
  v35 = v88;
  sub_1BE0504E4();
  v36 = v91;
  sub_1BE04FB84();
  v37 = sub_1BD0DE4F4(&qword_1EBD3B778, &qword_1EBD3B728, &qword_1BE0BCAD8, MEMORY[0x1E697CD20]);
  v38 = MEMORY[0x1E697C750];
  v39 = v87;
  v40 = v92;
  v41 = v95;
  sub_1BE051144();
  (*(v97 + 8))(v36, v41);
  (*(v93 + 8))(v35, v40);
  v117 = v34;
  v118 = v33;
  v113 = v40;
  v114 = v41;
  v115 = v37;
  v116 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = sub_1BD0DDEBC();
  v44 = MEMORY[0x1E69E6158];
  v45 = v94;
  sub_1BE050B74();
  (*(v96 + 8))(v39, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B890, &unk_1BE0C2FD0);
  sub_1BD0DE4F4(&unk_1EBD3E160, &qword_1EBD3B890, &unk_1BE0C2FD0, MEMORY[0x1E6981870]);
  v113 = v45;
  v114 = v44;
  v115 = OpaqueTypeConformance2;
  v116 = v43;
  swift_getOpaqueTypeConformance2();
  sub_1BE04E8B4();
  v33, v46, v47, v48, v49, v50, v51, v52;
  v100, v53, v54, v55, v56, v57, v58, v59;
  v101, v60, v61, v62, v63, v64, v65, v66;
  v83, v67, v68, v69, v70, v71, v72, v73;
}

uint64_t sub_1BD18EF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(a1 + *(type metadata accessor for AccountDebugTransactionGroup(0) + 76));
  v5 = swift_allocObject();
  v6 = *(a2 + 48);
  *(v5 + 48) = *(a2 + 32);
  *(v5 + 64) = v6;
  *(v5 + 80) = *(a2 + 64);
  v7 = *(a2 + 16);
  *(v5 + 16) = *a2;
  *(v5 + 32) = v7;
  sub_1BE048C84();
  sub_1BD1967C8(a2, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B7D8, &qword_1BE0BCB48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B760, &qword_1BE0BCB00);
  sub_1BD0DE4F4(&qword_1EBD3B7E0, &qword_1EBD3B7D8, &qword_1BE0BCB48, MEMORY[0x1E69E6338]);
  sub_1BD1968C8();
  sub_1BD196B34();
  return sub_1BE0519D4();
}

void sub_1BD18F098(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v92 = sub_1BE04F7C4();
  sub_1BE048C84();
  sub_1BE053834();
  0xE000000000000000, v17, v18, v19, v20, v21, v22, v23;
  MEMORY[0x1BFB3F610](a3, a4);
  MEMORY[0x1BFB3F610](0xD000000000000011, 0x80000001BE11BE60);
  MEMORY[0x1BFB3F610](a5[2], a5[3]);
  MEMORY[0x1BFB3F610](9248, 0xE200000000000000);
  MEMORY[0x1BFB3F610](a6, a7);
  MEMORY[0x1BFB3F610](2128928, 0xE300000000000000);
  MEMORY[0x1BFB3F610](a5[4], a5[5]);
  MEMORY[0x1BFB3F610](9248, 0xE200000000000000);
  MEMORY[0x1BFB3F610](a8, a10);
  v24 = sub_1BE050454();
  v25 = sub_1BE0505F4();
  v27 = v26;
  LOBYTE(a6) = v28;
  v30 = v29;
  0xEE00203A66666964, v26, v28, v29, v31, v32, v33, v34;
  v24, v35, v36, v37, v38, v39, v40, v41;
  v42 = sub_1BE051494();
  v43 = sub_1BE050564();
  v45 = v44;
  LOBYTE(a8) = v46;
  v48 = v47;
  v42, v44, v46, v47, v49, v50, v51, v52;
  sub_1BD0DDF10(v25, v27, (a6 & 1), v53, v54, v55, v56, v57);
  v30, v58, v59, v60, v61, v62, v63, v64;
  sub_1BD0D7F18(a1, a2, 0);
  v65 = MEMORY[0x1E69E7CC0];
  sub_1BE048C84();
  sub_1BD0D7F18(v43, v45, a8 & 1);
  sub_1BE048C84();
  sub_1BD0DDF10(v43, v45, (a8 & 1), v66, v67, v68, v69, v70);
  v48, v71, v72, v73, v74, v75, v76, v77;
  sub_1BD0DDF10(a1, a2, 0, v78, v79, v80, v81, v82);
  v65, v83, v84, v85, v86, v87, v88, v89;
  *a9 = v92;
  *(a9 + 8) = 0;
  *(a9 + 16) = 1;
  *(a9 + 24) = a1;
  *(a9 + 32) = a2;
  *(a9 + 40) = 0;
  *(a9 + 48) = v65;
  *(a9 + 56) = v43;
  *(a9 + 64) = v45;
  *(a9 + 72) = a8 & 1;
  *(a9 + 80) = v48;
}

uint64_t sub_1BD18F328@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v98 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B898, &qword_1BE0BCC70);
  v4 = *(v3 - 8);
  v114 = v3;
  v115 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v113 = v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v112 = v74 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B8A0, &qword_1BE0BCC78);
  v9 = *(v8 - 8);
  v92 = v8;
  v93 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v89 = v74 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B8A8, &qword_1BE0BCC80);
  v12 = *(v11 - 8);
  v94 = v11;
  v95 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v88 = v74 - v13;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B8B0, &qword_1BE0BCC88);
  MEMORY[0x1EEE9AC00](v96);
  v90 = v74 - v14;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B8B8, &qword_1BE0BCC90);
  v111 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v118 = v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v109 = v74 - v17;
  v18 = sub_1BE04FB94();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B8C0, &qword_1BE0BCC98);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v74 - v24;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B8C8, &qword_1BE0BCCA0);
  v116 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v103 = v74 - v26;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B8D0, &qword_1BE0BCCA8);
  MEMORY[0x1EEE9AC00](v108);
  v102 = v74 - v27;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B8D8, &qword_1BE0BCCB0);
  v110 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v107 = v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v117 = v74 - v30;
  v101 = a1;
  v128 = a1;
  v129 = 0xD00000000000001BLL;
  v130 = 0x80000001BE11BE80;
  v127 = a1;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B8E0, &qword_1BE0BCCB8);
  v86 = sub_1BD196F04();
  v80 = v25;
  sub_1BE0504E4();
  sub_1BE04FB84();
  v77 = MEMORY[0x1E697CD20];
  v31 = sub_1BD0DE4F4(&qword_1EBD3B900, &qword_1EBD3B8C0, &qword_1BE0BCC98, MEMORY[0x1E697CD20]);
  v100 = v21;
  v83 = v31;
  v32 = MEMORY[0x1E697C750];
  sub_1BE051144();
  v33 = *(v19 + 8);
  v105 = v19 + 8;
  v106 = v33;
  v74[0] = v18;
  v33(v21, v18);
  v34 = *(v23 + 8);
  v84 = v23 + 8;
  v85 = v34;
  v82 = v22;
  v34(v25, v22);
  v135 = 0xD00000000000001BLL;
  v136 = 0x80000001BE11BE80;
  v131 = v22;
  v132 = v18;
  v133 = v31;
  v134 = v32;
  v76 = MEMORY[0x1E697D600];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = sub_1BD0DDEBC();
  v37 = v104;
  v38 = MEMORY[0x1E69E6158];
  v39 = OpaqueTypeConformance2;
  v79 = OpaqueTypeConformance2;
  v40 = v36;
  v99 = v36;
  v41 = v103;
  sub_1BE050B74();
  v42 = *(v116 + 8);
  v116 += 8;
  v81 = v42;
  v42(v41, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B908, &qword_1BE0BCCC8);
  v75 = MEMORY[0x1E6981870];
  sub_1BD0DE4F4(&qword_1EBD3B910, &qword_1EBD3B908, &qword_1BE0BCCC8, MEMORY[0x1E6981870]);
  v131 = v37;
  v132 = v38;
  v133 = v39;
  v134 = v40;
  v74[1] = MEMORY[0x1E697CFD8];
  v78 = swift_getOpaqueTypeConformance2();
  sub_1BE04E8B4();
  v124 = v101;
  v125 = 0x2073647261776552;
  v126 = 0xEF7364726F636552;
  v123 = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B918, &qword_1BE0BCCD0);
  sub_1BD196FC8();
  v43 = v89;
  sub_1BE0504E4();
  v44 = v100;
  sub_1BE04FB84();
  v45 = sub_1BD0DE4F4(&qword_1EBD3B938, &qword_1EBD3B8A0, &qword_1BE0BCC78, v77);
  v46 = v88;
  v47 = v92;
  v48 = v74[0];
  v49 = MEMORY[0x1E697C750];
  sub_1BE051144();
  v106(v44, v48);
  (*(v93 + 8))(v43, v47);
  v135 = 0x2073647261776552;
  v136 = 0xEF7364726F636552;
  v131 = v47;
  v132 = v48;
  v133 = v45;
  v134 = v49;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = v94;
  v52 = MEMORY[0x1E69E6158];
  v53 = v99;
  sub_1BE050B74();
  (*(v95 + 8))(v46, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B940, &qword_1BE0BCCE0);
  sub_1BD0DE4F4(&qword_1EBD3B948, &qword_1EBD3B940, &qword_1BE0BCCE0, v75);
  v131 = v51;
  v132 = v52;
  v133 = v50;
  v134 = v53;
  swift_getOpaqueTypeConformance2();
  v54 = v109;
  sub_1BE04E8B4();
  v120 = v101;
  v121 = 0xD00000000000001ELL;
  v122 = 0x80000001BE11BEA0;
  v119 = v101;
  v55 = v80;
  sub_1BE0504E4();
  v56 = v100;
  sub_1BE04FB84();
  v57 = v103;
  v58 = v82;
  sub_1BE051144();
  v106(v56, v48);
  v85(v55, v58);
  v131 = 0xD00000000000001ELL;
  v132 = 0x80000001BE11BEA0;
  v59 = v104;
  sub_1BE050B74();
  v81(v57, v59);
  v60 = v112;
  sub_1BE04E8B4();
  v108 = *(v110 + 16);
  v61 = v107;
  v62 = v91;
  v108(v107, v117, v91);
  v116 = *(v111 + 16);
  v63 = v97;
  (v116)(v118, v54, v97);
  v64 = *(v115 + 16);
  v65 = v113;
  v64(v113, v60, v114);
  v66 = v98;
  v108(v98, v61, v62);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B950, &qword_1BE0BCCE8);
  (v116)(&v66[*(v67 + 48)], v118, v63);
  v68 = v114;
  v64(&v66[*(v67 + 64)], v65, v114);
  v69 = *(v115 + 8);
  v70 = v68;
  v69(v112, v68);
  v71 = *(v111 + 8);
  v71(v109, v63);
  v72 = *(v110 + 8);
  v72(v117, v62);
  v69(v113, v70);
  v71(v118, v63);
  return (v72)(v107, v62);
}

uint64_t sub_1BD190004@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v122 = a1;
  v121 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B968, &qword_1BE0BCD40);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v120 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v119 = &v83 - v5;
  v112 = sub_1BE04FB94();
  v114 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v108 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B970, &qword_1BE0BCD48);
  v110 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v106 = &v83 - v7;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B978, &qword_1BE0BCD50);
  v113 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v105 = &v83 - v8;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B980, &qword_1BE0BCD58);
  MEMORY[0x1EEE9AC00](v118);
  v107 = &v83 - v9;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B988, &qword_1BE0BCD60);
  v116 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v115 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v124 = &v83 - v12;
  v104 = sub_1BE04ACE4();
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v102 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1BE04ACC4();
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v99 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1BE04AC04();
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v94 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1BE04AC14();
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v93 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1BE04AC64();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v89 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1BE04ACA4();
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v19 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1BE04ABD4();
  v20 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v22 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BE04AD84();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v83 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v83 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v83 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v83 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v85 = &v83 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v86 = &v83 - v42;
  v90 = *(type metadata accessor for AccountDebugCKTransaction(0) + 32);
  MEMORY[0x1BFB371E0]();
  sub_1BE04ABC4();
  sub_1BE04AB64();
  (*(v20 + 8))(v22, v84);
  v43 = *(v24 + 8);
  v43(v26, v23);
  sub_1BE04AC24();
  sub_1BE04ABB4();
  (*(v87 + 8))(v19, v88);
  v43(v29, v23);
  v44 = v89;
  sub_1BE04AC44();
  sub_1BE04ABA4();
  (*(v91 + 8))(v44, v92);
  v43(v32, v23);
  v45 = v94;
  sub_1BE04ABF4();
  v46 = v93;
  sub_1BE04ABE4();
  (*(v97 + 8))(v45, v98);
  sub_1BE04AB84();
  (*(v95 + 8))(v46, v96);
  v43(v35, v23);
  v47 = v99;
  sub_1BE04ACB4();
  v48 = v85;
  sub_1BE04AD44();
  (*(v100 + 8))(v47, v101);
  v43(v38, v23);
  v49 = v102;
  sub_1BE04ACB4();
  v50 = v86;
  sub_1BE04AD54();
  (*(v103 + 8))(v49, v104);
  v43(v48, v23);
  sub_1BD19717C(&qword_1EBD4E940, MEMORY[0x1E6969328], MEMORY[0x1E6969320]);
  v51 = v122;
  sub_1BE04AF44();
  v43(v50, v23);
  v53 = v130;
  v52 = v131;
  v127 = v51;
  v128 = v130;
  v129 = v131;
  v125 = v51;
  v126 = v123;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B990, &qword_1BE0BCD68);
  sub_1BD0DE4F4(&qword_1EBD3B998, &qword_1EBD3B990, &qword_1BE0BCD68, MEMORY[0x1E6981F48]);
  v54 = v106;
  sub_1BE0504E4();
  v55 = v108;
  sub_1BE04FB84();
  v56 = sub_1BD0DE4F4(&qword_1EBD3B9A0, &qword_1EBD3B970, &qword_1BE0BCD48, MEMORY[0x1E697CD20]);
  v57 = MEMORY[0x1E697C750];
  v58 = v105;
  v59 = v109;
  v60 = v112;
  sub_1BE051144();
  (*(v114 + 8))(v55, v60);
  (*(v110 + 8))(v54, v59);
  v134 = v53;
  v135 = v52;
  v130 = v59;
  v131 = v60;
  v132 = v56;
  v133 = v57;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v62 = sub_1BD0DDEBC();
  v63 = MEMORY[0x1E69E6158];
  v64 = v111;
  sub_1BE050B74();
  (*(v113 + 8))(v58, v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B9A8, &qword_1BE0BCD70);
  sub_1BD0DE4F4(&qword_1EBD3B9B0, &qword_1EBD3B9A8, &qword_1BE0BCD70, MEMORY[0x1E6981870]);
  v130 = v64;
  v131 = v63;
  v132 = OpaqueTypeConformance2;
  v133 = v62;
  swift_getOpaqueTypeConformance2();
  v65 = v124;
  sub_1BE04E8B4();
  v52, v66, v67, v68, v69, v70, v71, v72;
  v73 = v119;
  sub_1BD1920E0(v122, v119);
  v74 = v116;
  v75 = *(v116 + 16);
  v76 = v115;
  v77 = v117;
  v75(v115, v65, v117);
  v78 = v120;
  sub_1BD0DE19C(v73, v120, &qword_1EBD3B968, &qword_1BE0BCD40);
  v79 = v121;
  v75(v121, v76, v77);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B9B8, &qword_1BE0BCD78);
  sub_1BD0DE19C(v78, &v79[*(v80 + 48)], &qword_1EBD3B968, &qword_1BE0BCD40);
  sub_1BD0DE53C(v73, &qword_1EBD3B968, &qword_1BE0BCD40);
  v81 = *(v74 + 8);
  v81(v124, v77);
  sub_1BD0DE53C(v78, &qword_1EBD3B968, &qword_1BE0BCD40);
  return (v81)(v76, v77);
}

id sub_1BD190EE0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v98 = a2;
  v101 = a3;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B7F0, &qword_1BE0BCB50);
  MEMORY[0x1EEE9AC00](v96);
  v95 = &v85 - v4;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B7F8, &qword_1BE0BCB58);
  MEMORY[0x1EEE9AC00](v94);
  v6 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v97 = &v85 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B760, &qword_1BE0BCB00);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v85 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B9C0, &qword_1BE0BCD80);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v85 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B9C8, &qword_1BE0BCD88);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v100 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v85 - v21;
  v23 = a1 + *(type metadata accessor for AccountDebugCKTransaction(0) + 36);
  v24 = *v23;
  v99 = v9;
  if (!v24)
  {
    v61 = sub_1BE0513B4();
    v62 = sub_1BE050564();
    v64 = v63;
    v65 = v22;
    v67 = v66;
    v69 = v68;
    v61, v63, v66, v68, v70, v71, v72, v73;
    *v17 = v62;
    *(v17 + 1) = v64;
    v74 = v67 & 1;
    v60 = v65;
    v17[16] = v74;
    *(v17 + 3) = v69;
    swift_storeEnumTagMultiPayload();
    sub_1BD1968C8();
    sub_1BE04F9A4();
    goto LABEL_5;
  }

  v88 = v17;
  v89 = v6;
  v90 = v15;
  v91 = v14;
  v92 = v22;
  v93 = a1;
  v25 = *(v23 + 8);
  v26 = objc_opt_self();
  v27 = v24;
  sub_1BD1703C4(v24, v25);
  result = [v26 presentationInformationForTransaction:v27 transactionSource:v25 secondaryTransactionSource:0 familyMember:0 account:0 deviceName:0 context:0];
  v29 = v98[8];
  if (v29)
  {
    v30 = result;
    type metadata accessor for TransactionPresentation(0);
    swift_allocObject();
    v31 = v29;
    v32 = v30;
    v86 = v32;
    v33 = sub_1BD6AF5A8(v27, v32, v29);

    v34 = sub_1BE051CD4();
    v87 = v27;
    v35 = v11;
    *v11 = v34;
    v11[1] = v36;
    v37 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B800, &unk_1BE0BCB60) + 44);
    sub_1BD18C9B8(v33, v25, v95);
    sub_1BD196B88();
    v38 = v97;
    sub_1BE04E8B4();
    *(v38 + *(v94 + 36)) = 0;
    sub_1BD19717C(&qword_1EBD3B840, type metadata accessor for TransactionPresentation, &unk_1BE0EF098);
    sub_1BE048964();
    v39 = sub_1BE04E954();
    v41 = v40;
    sub_1BD6AE91C();
    v98 = v25;
    v42 = v89;
    sub_1BD0DE19C(v38, v89, &qword_1EBD3B7F8, &qword_1BE0BCB58);
    sub_1BD0DE19C(v42, v37, &qword_1EBD3B7F8, &qword_1BE0BCB58);
    v43 = (v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B848, &qword_1BE0BCB80) + 48));
    *v43 = v39;
    v43[1] = v41;
    sub_1BE048964();
    sub_1BD0DE53C(v38, &qword_1EBD3B7F8, &qword_1BE0BCB58);
    v41, v44, v45, v46, v47, v48, v49, v50;
    sub_1BD0DE53C(v42, &qword_1EBD3B7F8, &qword_1BE0BCB58);
    v33, v51, v52, v53, v54, v55, v56, v57;

    v58 = v35 + *(v99 + 36);
    *(v58 + 32) = 0;
    *v58 = 0u;
    *(v58 + 16) = 0u;
    v59 = v91;
    sub_1BD0DE204(v35, v91, &qword_1EBD3B760, &qword_1BE0BCB00);
    sub_1BD0DE19C(v59, v88, &qword_1EBD3B760, &qword_1BE0BCB00);
    swift_storeEnumTagMultiPayload();
    sub_1BD1968C8();
    v60 = v92;
    sub_1BE04F9A4();

    sub_1BD0DE53C(v59, &qword_1EBD3B760, &qword_1BE0BCB00);
    a1 = v93;
LABEL_5:
    v75 = sub_1BE04F7C4();
    LOBYTE(v106[0]) = 1;
    sub_1BD19168C(a1, v103);
    *&v102[7] = v103[0];
    *&v102[23] = v103[1];
    *&v102[39] = v103[2];
    *&v102[55] = v103[3];
    v76 = v106[0];
    v77 = v100;
    sub_1BD0DE19C(v60, v100, &qword_1EBD3B9C8, &qword_1BE0BCD88);
    v78 = v101;
    sub_1BD0DE19C(v77, v101, &qword_1EBD3B9C8, &qword_1BE0BCD88);
    v79 = v78 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B9D0, &qword_1BE0BCD90) + 48);
    v104 = v75;
    v105[0] = v76;
    *&v105[1] = *v102;
    *&v105[17] = *&v102[16];
    *&v105[33] = *&v102[32];
    *&v105[49] = *&v102[48];
    v80 = *&v102[63];
    *&v105[64] = *&v102[63];
    v81 = *v105;
    *v79 = v75;
    *(v79 + 16) = v81;
    v82 = *&v105[16];
    v83 = *&v105[32];
    v84 = *&v105[48];
    *(v79 + 80) = v80;
    *(v79 + 48) = v83;
    *(v79 + 64) = v84;
    *(v79 + 32) = v82;
    sub_1BD0DE19C(&v104, v106, &qword_1EBD3B890, &unk_1BE0C2FD0);
    sub_1BD0DE53C(v60, &qword_1EBD3B9C8, &qword_1BE0BCD88);
    v106[0] = v75;
    v106[1] = 0;
    v107 = v76;
    v109 = *&v102[16];
    v110 = *&v102[32];
    *v111 = *&v102[48];
    *&v111[15] = *&v102[63];
    v108 = *v102;
    sub_1BD0DE53C(v106, &qword_1EBD3B890, &unk_1BE0C2FD0);
    return sub_1BD0DE53C(v77, &qword_1EBD3B9C8, &qword_1BE0BCD88);
  }

  __break(1u);
  return result;
}

void sub_1BD19168C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*(a1 + *(type metadata accessor for AccountDebugCKTransaction(0) + 48)) debugDescription];
  v4 = sub_1BE052434();
  v6 = v5;

  *a2 = xmmword_1BE0BC6D0;
  v7 = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = 0;
  *(a2 + 24) = v7;
  *(a2 + 32) = v4;
  *(a2 + 40) = v6;
  *(a2 + 48) = 0;
  *(a2 + 56) = v7;
  sub_1BD0D7F18(0x3A64726F636552, 0xE700000000000000, 0);
  sub_1BE048C84();
  sub_1BD0D7F18(v4, v6, 0);
  sub_1BE048C84();
  sub_1BD0DDF10(v4, v6, 0, v8, v9, v10, v11, v12);
  v7, v13, v14, v15, v16, v17, v18, v19;
  sub_1BD0DDF10(0x3A64726F636552, 0xE700000000000000, 0, v20, v21, v22, v23, v24);

  v7, v25, v26, v27, v28, v29, v30, v31;
}

double sub_1BD1917A4@<D0>(void *a1@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1BE04F7C4();
  v29 = 1;
  sub_1BD191990(a1, a2, a3, &v17);
  v38 = v25;
  v39 = v26;
  v34 = v21;
  v35 = v22;
  v36 = v23;
  v37 = v24;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  v33 = v20;
  v41[8] = v25;
  v41[9] = v26;
  v41[4] = v21;
  v41[5] = v22;
  v41[6] = v23;
  v41[7] = v24;
  v41[0] = v17;
  v41[1] = v18;
  v40 = v27;
  v42 = v27;
  v41[2] = v19;
  v41[3] = v20;
  sub_1BD0DE19C(&v30, v16, &qword_1EBD3B9D8, &qword_1BE0BCD98);
  sub_1BD0DE53C(v41, &qword_1EBD3B9D8, &qword_1BE0BCD98);
  *(&v28[7] + 7) = v37;
  *(&v28[8] + 7) = v38;
  *(&v28[9] + 7) = v39;
  *(&v28[10] + 7) = v40;
  *(&v28[3] + 7) = v33;
  *(&v28[4] + 7) = v34;
  *(&v28[5] + 7) = v35;
  *(&v28[6] + 7) = v36;
  *(v28 + 7) = v30;
  *(&v28[1] + 7) = v31;
  *(&v28[2] + 7) = v32;
  v9 = v28[6];
  *(a4 + 129) = v28[7];
  v10 = v28[9];
  *(a4 + 145) = v28[8];
  *(a4 + 161) = v10;
  *(a4 + 176) = *(&v28[9] + 15);
  v11 = v28[2];
  *(a4 + 65) = v28[3];
  v12 = v28[5];
  *(a4 + 81) = v28[4];
  *(a4 + 97) = v12;
  *(a4 + 113) = v9;
  result = *v28;
  v14 = v28[1];
  *(a4 + 17) = v28[0];
  *(a4 + 33) = v14;
  v15 = v29;
  *a4 = v8;
  *(a4 + 8) = 0;
  *(a4 + 16) = v15;
  *(a4 + 49) = v11;
  return result;
}

void sub_1BD191990(void *a1@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for AccountDebugCKTransaction(0);
  if (*(a1 + *(v7 + 44)))
  {
    v8 = 7562585;
  }

  else
  {
    v8 = 28494;
  }

  if (*(a1 + *(v7 + 44)))
  {
    v9 = 0xE300000000000000;
  }

  else
  {
    v9 = 0xE200000000000000;
  }

  if (a1[5])
  {
    v285 = a1[5];
    v287 = a1[4];
    v10 = a1[7];
    if (v10)
    {
LABEL_9:
      v11 = a1[6];
      v12 = v10;
      goto LABEL_12;
    }
  }

  else
  {
    v285 = 0xE000000000000000;
    v287 = 0;
    v10 = a1[7];
    if (v10)
    {
      goto LABEL_9;
    }
  }

  v11 = 0;
  v12 = 0xE000000000000000;
LABEL_12:
  v282 = a1;
  v13 = *(a1 + *(v7 + 36));
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BE048C84();
  if (v13)
  {
    v294 = 0;
    v295 = 0;
    v292 = 0;
    v293 = 0;
  }

  else
  {
    v14 = sub_1BE0513B4();
    v289 = v9;
    v15 = v8;
    v16 = sub_1BE050564();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v14, v17, v19, v21, v23, v24, v25, v26;
    v294 = v18;
    v295 = v16;
    v27 = v16;
    v8 = v15;
    v9 = v289;
    v292 = v20 & 1;
    sub_1BD0D7F18(v27, v18, v20 & 1);
    v293 = v22;
    sub_1BE048C84();
  }

  v291 = a3;
  if (v11 == 0x6573727562736964 && v12 == 0xEC000000746E656DLL || (sub_1BE053B84() & 1) != 0)
  {
    sub_1BE053834();
    0xE000000000000000, v35, v36, v37, v38, v39, v40, v41;
    *&v296 = 0x203A65707954;
    *(&v296 + 1) = 0xE600000000000000;
    MEMORY[0x1BFB3F610](v11, v12);
    v12, v42, v43, v44, v45, v46, v47, v48;
    MEMORY[0x1BFB3F610](0x657270707573202CLL, 0xEE00203A64657373);
    MEMORY[0x1BFB3F610](v8, v9);
    v9, v49, v50, v51, v52, v53, v54, v55;
    v56 = sub_1BE050454();
    v57 = sub_1BE0505F4();
    v59 = v58;
    v61 = v60;
    v63 = v62;
    0xE600000000000000, v58, v60, v62, v64, v65, v66, v67;
    v56, v68, v69, v70, v71, v72, v73, v74;
    v75 = sub_1BE051494();
    sub_1BE050564();
    v75, v76, v77, v78, v79, v80, v81, v82;
    sub_1BD0DDF10(v57, v59, (v61 & 1), v83, v84, v85, v86, v87);
    v63, v88, v89, v90, v91, v92, v93, v94;
  }

  else
  {
    v9, v28, v29, v30, v31, v32, v33, v34;
    *&v296 = 0x203A65707954;
    *(&v296 + 1) = 0xE600000000000000;
    MEMORY[0x1BFB3F610](v11, v12);
    v12, v95, v96, v97, v98, v99, v100, v101;
    v102 = sub_1BE050454();
    v103 = sub_1BE0505F4();
    v105 = v104;
    v107 = v106;
    v109 = v108;
    0xE600000000000000, v104, v106, v108, v110, v111, v112, v113;
    v102, v114, v115, v116, v117, v118, v119, v120;
    v121 = sub_1BE051494();
    sub_1BE050564();
    v121, v122, v123, v124, v125, v126, v127, v128;
    sub_1BD0DDF10(v103, v105, (v107 & 1), v129, v130, v131, v132, v133);
    v109, v134, v135, v136, v137, v138, v139, v140;
  }

  sub_1BE04F9A4();
  sub_1BD1970E0(0x203A65707954, 0xE600000000000000, v297, *(&v297 + 1));
  MEMORY[0x1BFB3F610](v287, v285);
  v285, v141, v142, v143, v144, v145, v146, v147;
  v148 = sub_1BE050454();
  v149 = MEMORY[0x1E69E7CC0];
  v150 = sub_1BE0505F4();
  v152 = v151;
  v154 = v153;
  v156 = v155;
  0xE900000000000024, v151, v153, v155, v157, v158, v159, v160;
  v148, v161, v162, v163, v164, v165, v166, v167;
  v168 = sub_1BE051494();
  v169 = sub_1BE050564();
  v286 = v170;
  v288 = v169;
  v281 = v171;
  v284 = v172;
  v168, v170, v171, v172, v173, v174, v175, v176;
  sub_1BD0DDF10(v150, v152, (v154 & 1), v177, v178, v179, v180, v181);
  v156, v182, v183, v184, v185, v186, v187, v188;
  MEMORY[0x1BFB3F610](*v282, v282[1]);
  v189 = sub_1BE050454();
  v190 = v149;
  v191 = sub_1BE0505F4();
  v193 = v192;
  v195 = v194;
  v197 = v196;
  0xE400000000000000, v192, v194, v196, v198, v199, v200, v201;
  v189, v202, v203, v204, v205, v206, v207, v208;
  v209 = sub_1BE051494();
  v279 = sub_1BE050564();
  v280 = v210;
  LOBYTE(v149) = v211;
  v283 = v212;
  v209, v210, v211, v212, v213, v214, v215, v216;
  sub_1BD0DDF10(v191, v193, (v195 & 1), v217, v218, v219, v220, v221);
  v197, v222, v223, v224, v225, v226, v227, v228;
  *a4 = a2;
  *(a4 + 8) = v291;
  *(a4 + 16) = 0;
  *(a4 + 24) = v190;
  *(a4 + 32) = v295;
  *(a4 + 40) = v294;
  *(a4 + 48) = v292;
  *(a4 + 56) = v293;
  *(a4 + 64) = v296;
  *(a4 + 80) = v297;
  *(a4 + 96) = v298;
  *(a4 + 104) = v288;
  *(a4 + 112) = v286;
  *(a4 + 120) = v281 & 1;
  *(a4 + 128) = v284;
  *(a4 + 136) = v279;
  *(a4 + 144) = v280;
  *(a4 + 152) = v149 & 1;
  *(a4 + 160) = v283;
  sub_1BD0D7F18(a2, v291, 0);
  sub_1BE048C84();
  sub_1BD1969AC(v295, v294, v292, v293);
  sub_1BD1970E0(0x203A65707954, 0xE600000000000000, v297, *(&v297 + 1));
  sub_1BD0D7F18(v288, v286, v281 & 1);
  sub_1BE048C84();
  sub_1BD0D7F18(v279, v280, v149 & 1);
  sub_1BE048C84();
  sub_1BD19711C(0x203A65707954, 0xE600000000000000, v297, *(&v297 + 1), v298, v229, v230, v231);
  sub_1BD1969F0(v295, v294, v292, v293, v232, v233, v234, v235);
  sub_1BD0DDF10(v279, v280, (v149 & 1), v236, v237, v238, v239, v240);
  v283, v241, v242, v243, v244, v245, v246, v247;
  sub_1BD0DDF10(v288, v286, (v281 & 1), v248, v249, v250, v251, v252);
  v284, v253, v254, v255, v256, v257, v258, v259;
  sub_1BD19711C(0x203A65707954, 0xE600000000000000, v297, *(&v297 + 1), v298, v260, v261, v262);
  sub_1BD1969F0(v295, v294, v292, v293, v263, v264, v265, v266);
  sub_1BD0DDF10(a2, v291, 0, v267, v268, v269, v270, v271);
  MEMORY[0x1E69E7CC0], v272, v273, v274, v275, v276, v277, v278;
}

id sub_1BD1920E0@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  v116 = a1;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B9C0, &qword_1BE0BCD80);
  MEMORY[0x1EEE9AC00](v112);
  v113 = &v100 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B7F0, &qword_1BE0BCB50);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v100 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B7F8, &qword_1BE0BCB58);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v100 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B760, &qword_1BE0BCB00);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v100 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B9C8, &qword_1BE0BCD88);
  v114 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v100 - v19;
  v21 = type metadata accessor for AccountDebugCKTransaction(0);
  if (!*&v116[*(v21 + 36)])
  {
    v101 = v6;
    v102 = v5;
    v103 = v3;
    v104 = v14;
    v105 = v11;
    v106 = v8;
    v107 = v17;
    v108 = v20;
    v109 = v12;
    v110 = v18;
    v25 = &v116[*(v21 + 40)];
    v26 = *v25;
    if (*v25)
    {
      v27 = *(v25 + 1);
      v28 = objc_opt_self();
      v29 = v26;
      sub_1BD1703C4(v26, v27);
      result = [v28 presentationInformationForTransaction:v29 transactionSource:v27 secondaryTransactionSource:0 familyMember:0 account:0 deviceName:0 context:0];
      v30 = *(v111 + 64);
      if (!v30)
      {
        __break(1u);
        return result;
      }

      v31 = result;
      type metadata accessor for TransactionPresentation(0);
      swift_allocObject();
      v32 = v30;
      v33 = v31;
      v34 = sub_1BD6AF5A8(v29, v33, v30);

      v35 = sub_1BE051CD4();
      v36 = v104;
      *v104 = v35;
      *(v36 + 8) = v37;
      v38 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B800, &unk_1BE0BCB60) + 44);
      v100 = v29;
      sub_1BD18C9B8(v34, v27, v102);
      sub_1BD196B88();
      v39 = v105;
      sub_1BE04E8B4();
      *(v39 + *(v101 + 36)) = 0;
      sub_1BD19717C(&qword_1EBD3B840, type metadata accessor for TransactionPresentation, &unk_1BE0EF098);
      sub_1BE048964();
      v40 = sub_1BE04E954();
      v42 = v41;
      sub_1BD6AE91C();
      v116 = v27;
      v43 = v106;
      sub_1BD0DE19C(v39, v106, &qword_1EBD3B7F8, &qword_1BE0BCB58);
      sub_1BD0DE19C(v43, v38, &qword_1EBD3B7F8, &qword_1BE0BCB58);
      v44 = (v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B848, &qword_1BE0BCB80) + 48));
      *v44 = v40;
      v44[1] = v42;
      sub_1BE048964();
      sub_1BD0DE53C(v39, &qword_1EBD3B7F8, &qword_1BE0BCB58);
      v42, v45, v46, v47, v48, v49, v50, v51;
      sub_1BD0DE53C(v43, &qword_1EBD3B7F8, &qword_1BE0BCB58);
      v34, v52, v53, v54, v55, v56, v57, v58;

      v59 = v36 + *(v109 + 36);
      *(v59 + 32) = 0;
      *v59 = 0u;
      *(v59 + 16) = 0u;
      v60 = v107;
      sub_1BD0DE204(v36, v107, &qword_1EBD3B760, &qword_1BE0BCB00);
      sub_1BD0DE19C(v60, v113, &qword_1EBD3B760, &qword_1BE0BCB00);
      swift_storeEnumTagMultiPayload();
      sub_1BD1968C8();
      v61 = v108;
      sub_1BE04F9A4();

      sub_1BD0DE53C(v60, &qword_1EBD3B760, &qword_1BE0BCB00);
    }

    else
    {
      v62 = sub_1BE050454();
      v63 = sub_1BE0505F4();
      v65 = v64;
      v67 = v66;
      v68 = v113;
      v70 = v69;
      v62, v64, v66, v69, v71, v72, v73, v74;
      v75 = sub_1BE0513B4();
      v76 = sub_1BE050564();
      v78 = v77;
      v80 = v79;
      v82 = v81;
      v75, v77, v79, v81, v83, v84, v85, v86;
      sub_1BD0DDF10(v63, v65, (v67 & 1), v87, v88, v89, v90, v91);
      v70, v92, v93, v94, v95, v96, v97, v98;
      *v68 = v76;
      *(v68 + 8) = v78;
      *(v68 + 16) = v80 & 1;
      *(v68 + 24) = v82;
      swift_storeEnumTagMultiPayload();
      sub_1BD1968C8();
      v61 = v108;
      sub_1BE04F9A4();
    }

    v99 = v115;
    sub_1BD0DE204(v61, v115, &qword_1EBD3B9C8, &qword_1BE0BCD88);
    return (*(v114 + 56))(v99, 0, 1, v110);
  }

  v22 = v115;
  v23 = *(v114 + 56);

  return v23(v22, 1, 1, v18);
}

uint64_t sub_1BD1927FC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  v8 = swift_getKeyPath();
  sub_1BE04D8B4(&v33);
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  v8, v16, v17, v18, v19, v20, v21, v22;
  v33, v23, v24, v25, v26, v27, v28, v29;
  v33 = sub_1BE053B24();
  v34 = v30;
  MEMORY[0x1BFB3F610](32, 0xE100000000000000);
  result = MEMORY[0x1BFB3F610](a2, a3);
  v32 = v34;
  *a4 = v33;
  *(a4 + 8) = v32;
  *(a4 + 16) = 0;
  *(a4 + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1BD1928E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  sub_1BE04D8B4(v26);
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
  v7, v15, v16, v17, v18, v19, v20, v21;
  v26[9] = v26[0];
  v22 = swift_allocObject();
  v23 = *(a1 + 48);
  *(v22 + 48) = *(a1 + 32);
  *(v22 + 64) = v23;
  *(v22 + 80) = *(a1 + 64);
  v24 = *(a1 + 16);
  *(v22 + 16) = *a1;
  *(v22 + 32) = v24;
  sub_1BD1967C8(a1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD524B0, &unk_1BE0F54A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B8F8, &qword_1BE0BCCC0);
  sub_1BD0DE4F4(&qword_1EBD3B958, &qword_1EBD524B0, &unk_1BE0F54A0, MEMORY[0x1E69E6338]);
  sub_1BD0DE4F4(&qword_1EBD3B8F0, &qword_1EBD3B8F8, &qword_1BE0BCCC0, MEMORY[0x1E6981F48]);
  sub_1BD19717C(&qword_1EBD3B960, type metadata accessor for AccountDebugCKTransaction, &unk_1BE0F56B4);
  return sub_1BE0519D4();
}

double sub_1BD192ABC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1BE04F7C4();
  v34 = 1;
  sub_1BD192C9C(a1, a2, a3, &v19);
  v45 = v29;
  v46 = v30;
  v47 = v31;
  v48 = v32;
  v41 = v25;
  v42 = v26;
  v43 = v27;
  v44 = v28;
  v37 = v21;
  v38 = v22;
  v39 = v23;
  v40 = v24;
  v35 = v19;
  v36 = v20;
  v49[10] = v29;
  v49[11] = v30;
  v49[12] = v31;
  v49[13] = v32;
  v49[6] = v25;
  v49[7] = v26;
  v49[8] = v27;
  v49[9] = v28;
  v49[2] = v21;
  v49[3] = v22;
  v49[4] = v23;
  v49[5] = v24;
  v49[0] = v19;
  v49[1] = v20;
  sub_1BD0DE19C(&v35, &v18, &qword_1EBD3BA30, &qword_1BE0BCDD0);
  sub_1BD0DE53C(v49, &qword_1EBD3BA30, &qword_1BE0BCDD0);
  *&v33[167] = v45;
  *&v33[183] = v46;
  *&v33[199] = v47;
  *&v33[215] = v48;
  *&v33[103] = v41;
  *&v33[119] = v42;
  *&v33[135] = v43;
  *&v33[151] = v44;
  *&v33[39] = v37;
  *&v33[55] = v38;
  *&v33[71] = v39;
  *&v33[87] = v40;
  *&v33[7] = v35;
  *&v33[23] = v36;
  v9 = *&v33[160];
  *(a4 + 193) = *&v33[176];
  v10 = *&v33[208];
  *(a4 + 209) = *&v33[192];
  *(a4 + 225) = v10;
  v11 = *&v33[96];
  *(a4 + 129) = *&v33[112];
  v12 = *&v33[144];
  *(a4 + 145) = *&v33[128];
  *(a4 + 161) = v12;
  *(a4 + 177) = v9;
  v13 = *&v33[32];
  *(a4 + 65) = *&v33[48];
  v14 = *&v33[80];
  *(a4 + 81) = *&v33[64];
  *(a4 + 97) = v14;
  *(a4 + 113) = v11;
  result = *v33;
  v16 = *&v33[16];
  *(a4 + 17) = *v33;
  *(a4 + 33) = v16;
  v17 = v34;
  *a4 = v8;
  *(a4 + 8) = 0;
  *(a4 + 16) = v17;
  *(a4 + 240) = *&v33[223];
  *(a4 + 49) = v13;
  return result;
}

void sub_1BD192C9C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v333 = a4;
  v7 = type metadata accessor for AccountDebugCKTransaction(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v341 = &v330 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v337 = &v330 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v342 = &v330 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v338 = &v330 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v343 = &v330 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v345 = &v330 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v344 = &v330 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v339 = &v330 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v340 = &v330 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v330 - v27;
  v29 = *(a1 + 8);
  KeyPath = swift_getKeyPath();
  v31 = swift_getKeyPath();
  sub_1BE04D8B4(v365);
  KeyPath, v32, v33, v34, v35, v36, v37, v38;
  v31, v39, v40, v41, v42, v43, v44, v45;
  v46 = *(*&v365[0] + 16);
  *&v365[0], v47, v48, v49, v50, v51, v52, v53;
  *&v355 = v46;
  *&v365[0] = sub_1BE053B24();
  *(&v365[0] + 1) = v54;
  MEMORY[0x1BFB3F610](32, 0xE100000000000000);
  MEMORY[0x1BFB3F610](a2, a3);
  v331 = *(&v365[0] + 1);
  v332 = *&v365[0];
  v55 = swift_getKeyPath();
  v56 = swift_getKeyPath();
  v334 = v29;
  sub_1BE04D8B4(v365);
  v55, v57, v58, v59, v60, v61, v62, v63;
  v56, v64, v65, v66, v67, v68, v69, v70;
  v78 = *&v365[0];
  v79 = *(*&v365[0] + 16);
  if (v79)
  {
    v80 = 0;
    v81 = MEMORY[0x1E69E7CC0];
    v335 = *(*&v365[0] + 16);
    v336 = v7;
    while (v80 < v78[2])
    {
      v82 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v83 = *(v8 + 72);
      sub_1BD197294(v78 + v82 + v83 * v80, v28, type metadata accessor for AccountDebugCKTransaction);
      if (*&v28[*(v7 + 36)])
      {
        sub_1BD197364(v28, type metadata accessor for AccountDebugCKTransaction);
      }

      else
      {
        sub_1BD1972FC(v28, v340, type metadata accessor for AccountDebugCKTransaction);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v365[0] = v81;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BD531BAC(0, v81[2] + 1, 1);
          v81 = *&v365[0];
        }

        v86 = v81[2];
        v85 = v81[3];
        if (v86 >= v85 >> 1)
        {
          sub_1BD531BAC((v85 > 1), v86 + 1, 1);
          v81 = *&v365[0];
        }

        v81[2] = v86 + 1;
        sub_1BD1972FC(v340, v81 + v82 + v86 * v83, type metadata accessor for AccountDebugCKTransaction);
        v79 = v335;
        v7 = v336;
      }

      if (v79 == ++v80)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_85;
  }

  v81 = MEMORY[0x1E69E7CC0];
LABEL_13:
  v78, v71, v72, v73, v74, v75, v76, v77;
  v87 = v81[2];
  v81, v88, v89, v90, v91, v92, v93, v94;
  if (v87)
  {
    *&v365[0] = 0;
    *(&v365[0] + 1) = 0xE000000000000000;
    sub_1BE053834();
    v95 = *(&v365[0] + 1);
    *&v355 = v87;
    v96 = sub_1BE053B24();
    v98 = v97;
    v95, v97, v99, v100, v101, v102, v103, v104;
    *&v365[0] = v96;
    *(&v365[0] + 1) = v98;
    MEMORY[0x1BFB3F610](0xD000000000000015, 0x80000001BE11BF90);
    v105 = *(&v365[0] + 1);
    v106 = sub_1BE0513B4();
    v107 = sub_1BE050564();
    v109 = v108;
    LOBYTE(v96) = v110;
    v112 = v111;
    v105, v108, v110, v111, v113, v114, v115, v116;
    v106, v117, v118, v119, v120, v121, v122, v123;
    v340 = v107;
    v336 = v109;
    v330 = v96 & 1;
    sub_1BD0D7F18(v107, v109, v96 & 1);
    v335 = v112;
    sub_1BE048C84();
  }

  else
  {
    v340 = 0;
    v335 = 0;
    v336 = 0;
    v330 = 0;
  }

  v124 = v345;
  v125 = v339;
  v126 = swift_getKeyPath();
  v127 = swift_getKeyPath();
  sub_1BE04D8B4(v365);
  v126, v128, v129, v130, v131, v132, v133, v134;
  v127, v135, v136, v137, v138, v139, v140, v141;
  v149 = *&v365[0];
  v150 = *(*&v365[0] + 16);
  if (v150)
  {
    v151 = 0;
    v152 = MEMORY[0x1E69E7CC0];
    while (v151 < v149[2])
    {
      v153 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v154 = *(v8 + 72);
      sub_1BD197294(v149 + v153 + v154 * v151, v125, type metadata accessor for AccountDebugCKTransaction);
      v155 = *(v125 + 56);
      if (v155 && (*(v125 + 48) == 0x7761726468746977 ? (v156 = v155 == 0xEA00000000006C61) : (v156 = 0), v156 || (sub_1BE053B84() & 1) != 0))
      {
        sub_1BD1972FC(v125, v344, type metadata accessor for AccountDebugCKTransaction);
        v157 = swift_isUniquelyReferenced_nonNull_native();
        *&v365[0] = v152;
        if ((v157 & 1) == 0)
        {
          sub_1BD531BAC(0, v152[2] + 1, 1);
          v152 = *&v365[0];
        }

        v159 = v152[2];
        v158 = v152[3];
        if (v159 >= v158 >> 1)
        {
          sub_1BD531BAC((v158 > 1), v159 + 1, 1);
          v152 = *&v365[0];
        }

        v152[2] = v159 + 1;
        sub_1BD1972FC(v344, v152 + v153 + v159 * v154, type metadata accessor for AccountDebugCKTransaction);
        v124 = v345;
        v125 = v339;
      }

      else
      {
        sub_1BD197364(v125, type metadata accessor for AccountDebugCKTransaction);
      }

      if (v150 == ++v151)
      {
        goto LABEL_33;
      }
    }

LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v152 = MEMORY[0x1E69E7CC0];
LABEL_33:
  v149, v142, v143, v144, v145, v146, v147, v148;
  v344 = v152[2];
  v152, v160, v161, v162, v163, v164, v165, v166;
  v167 = swift_getKeyPath();
  v168 = swift_getKeyPath();
  sub_1BE04D8B4(v365);
  v167, v169, v170, v171, v172, v173, v174, v175;
  v168, v176, v177, v178, v179, v180, v181, v182;
  v190 = *&v365[0];
  v191 = *(*&v365[0] + 16);
  if (v191)
  {
    v192 = 0;
    v193 = MEMORY[0x1E69E7CC0];
    while (v192 < v190[2])
    {
      v194 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v195 = *(v8 + 72);
      sub_1BD197294(v190 + v194 + v195 * v192, v124, type metadata accessor for AccountDebugCKTransaction);
      v196 = *(v124 + 56);
      if (v196 && (*(v124 + 48) == 0x6573727562736964 ? (v197 = v196 == 0xEC000000746E656DLL) : (v197 = 0), v197 || (sub_1BE053B84() & 1) != 0))
      {
        sub_1BD1972FC(v124, v343, type metadata accessor for AccountDebugCKTransaction);
        v198 = swift_isUniquelyReferenced_nonNull_native();
        *&v365[0] = v193;
        if ((v198 & 1) == 0)
        {
          sub_1BD531BAC(0, v193[2] + 1, 1);
          v193 = *&v365[0];
        }

        v200 = v193[2];
        v199 = v193[3];
        if (v200 >= v199 >> 1)
        {
          sub_1BD531BAC((v199 > 1), v200 + 1, 1);
          v193 = *&v365[0];
        }

        v193[2] = v200 + 1;
        sub_1BD1972FC(v343, v193 + v194 + v200 * v195, type metadata accessor for AccountDebugCKTransaction);
        v124 = v345;
      }

      else
      {
        sub_1BD197364(v124, type metadata accessor for AccountDebugCKTransaction);
      }

      if (v191 == ++v192)
      {
        goto LABEL_50;
      }
    }

    goto LABEL_86;
  }

  v193 = MEMORY[0x1E69E7CC0];
LABEL_50:
  v190, v183, v184, v185, v186, v187, v188, v189;
  v345 = v193[2];
  v193, v201, v202, v203, v204, v205, v206, v207;
  v208 = swift_getKeyPath();
  v209 = swift_getKeyPath();
  sub_1BE04D8B4(v365);
  v208, v210, v211, v212, v213, v214, v215, v216;
  v209, v217, v218, v219, v220, v221, v222, v223;
  v231 = *&v365[0];
  v232 = *(*&v365[0] + 16);
  if (v232)
  {
    v233 = 0;
    v234 = MEMORY[0x1E69E7CC0];
    v235 = v338;
    while (v233 < v231[2])
    {
      v236 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v237 = *(v8 + 72);
      sub_1BD197294(v231 + v236 + v237 * v233, v235, type metadata accessor for AccountDebugCKTransaction);
      v238 = *(v235 + 56);
      if (v238 && (*(v235 + 48) == 0x7055706F74 ? (v239 = v238 == 0xE500000000000000) : (v239 = 0), v239 || (sub_1BE053B84() & 1) != 0))
      {
        sub_1BD1972FC(v235, v342, type metadata accessor for AccountDebugCKTransaction);
        v240 = swift_isUniquelyReferenced_nonNull_native();
        *&v365[0] = v234;
        if ((v240 & 1) == 0)
        {
          sub_1BD531BAC(0, v234[2] + 1, 1);
          v234 = *&v365[0];
        }

        v242 = v234[2];
        v241 = v234[3];
        if (v242 >= v241 >> 1)
        {
          sub_1BD531BAC((v241 > 1), v242 + 1, 1);
          v234 = *&v365[0];
        }

        v234[2] = v242 + 1;
        sub_1BD1972FC(v342, v234 + v236 + v242 * v237, type metadata accessor for AccountDebugCKTransaction);
        v235 = v338;
      }

      else
      {
        sub_1BD197364(v235, type metadata accessor for AccountDebugCKTransaction);
      }

      if (v232 == ++v233)
      {
        goto LABEL_67;
      }
    }

    goto LABEL_87;
  }

  v234 = MEMORY[0x1E69E7CC0];
LABEL_67:
  v231, v224, v225, v226, v227, v228, v229, v230;
  v343 = v234[2];
  v234, v243, v244, v245, v246, v247, v248, v249;
  v250 = swift_getKeyPath();
  v251 = swift_getKeyPath();
  sub_1BE04D8B4(v365);
  v250, v252, v253, v254, v255, v256, v257, v258;
  v251, v259, v260, v261, v262, v263, v264, v265;
  v273 = *&v365[0];
  v274 = *(*&v365[0] + 16);
  v275 = MEMORY[0x1E69E7CC0];
  if (!v274)
  {
LABEL_83:
    v273, v266, v267, v268, v269, v270, v271, v272;
    v275, v285, v286, v287, v288, v289, v290, v291;
    sub_1BD193B2C(&v347);
    v292 = sub_1BE050454();
    v345 = v292;
    v293 = swift_getKeyPath();
    v344 = v293;
    v294 = sub_1BE051494();
    v295 = swift_getKeyPath();
    v346 = 0;
    v359 = v351;
    v360 = v352;
    v361 = v353;
    v362 = v354;
    v355 = v347;
    v356 = v348;
    v357 = v349;
    v358 = v350;
    *&v363 = v293;
    *(&v363 + 1) = v292;
    *&v364 = v295;
    *(&v364 + 1) = v294;
    v297 = v331;
    v296 = v332;
    sub_1BD0D7F18(v332, v331, 0);
    v298 = MEMORY[0x1E69E7CC0];
    sub_1BE048C84();
    v299 = v340;
    v301 = v335;
    v300 = v336;
    v302 = v330;
    sub_1BD1969AC(v340, v336, v330, v335);
    sub_1BD0DE19C(&v355, v365, &qword_1EBD3BA38, &qword_1BE0BCDD8);
    sub_1BD1969F0(v299, v300, v302, v301, v303, v304, v305, v306);
    v307 = v346;
    v308 = v333;
    *v333 = v296;
    v308[1] = v297;
    *(v308 + 16) = v307;
    v308[3] = v298;
    v308[4] = v299;
    v308[5] = v300;
    v308[6] = v302;
    v308[7] = v301;
    v309 = v362;
    *(v308 + 10) = v361;
    *(v308 + 11) = v309;
    v310 = v364;
    *(v308 + 12) = v363;
    *(v308 + 13) = v310;
    v311 = v358;
    *(v308 + 6) = v357;
    *(v308 + 7) = v311;
    v312 = v360;
    *(v308 + 8) = v359;
    *(v308 + 9) = v312;
    v313 = v356;
    *(v308 + 4) = v355;
    *(v308 + 5) = v313;
    v365[4] = v351;
    v365[5] = v352;
    v365[6] = v353;
    v365[7] = v354;
    v365[0] = v347;
    v365[1] = v348;
    v365[2] = v349;
    v365[3] = v350;
    v366 = v344;
    v367 = v345;
    v368 = v295;
    v369 = v294;
    sub_1BD0DE53C(v365, &qword_1EBD3BA38, &qword_1BE0BCDD8);
    sub_1BD1969F0(v299, v300, v302, v301, v314, v315, v316, v317);
    sub_1BD0DDF10(v296, v297, 0, v318, v319, v320, v321, v322);
    v298, v323, v324, v325, v326, v327, v328, v329;
    return;
  }

  v276 = 0;
  v277 = v337;
  while (v276 < v273[2])
  {
    v278 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v279 = *(v8 + 72);
    sub_1BD197294(v273 + v278 + v279 * v276, v277, type metadata accessor for AccountDebugCKTransaction);
    v280 = *(v277 + 56);
    if (v280 && (*(v277 + 48) == 0x7473657265746E69 ? (v281 = v280 == 0xE800000000000000) : (v281 = 0), v281 || (sub_1BE053B84() & 1) != 0))
    {
      sub_1BD1972FC(v277, v341, type metadata accessor for AccountDebugCKTransaction);
      v282 = swift_isUniquelyReferenced_nonNull_native();
      v370 = v275;
      if ((v282 & 1) == 0)
      {
        sub_1BD531BAC(0, v275[2] + 1, 1);
        v275 = v370;
      }

      v284 = v275[2];
      v283 = v275[3];
      if (v284 >= v283 >> 1)
      {
        sub_1BD531BAC((v283 > 1), v284 + 1, 1);
        v275 = v370;
      }

      v275[2] = v284 + 1;
      sub_1BD1972FC(v341, v275 + v278 + v284 * v279, type metadata accessor for AccountDebugCKTransaction);
      v277 = v337;
    }

    else
    {
      sub_1BD197364(v277, type metadata accessor for AccountDebugCKTransaction);
    }

    if (v274 == ++v276)
    {
      goto LABEL_83;
    }
  }

LABEL_88:
  __break(1u);
}

void sub_1BD193B2C(uint64_t a1@<X8>)
{
  v84 = sub_1BE053B24();
  v85 = v2;
  MEMORY[0x1BFB3F610](0x7469736F70656420, 0xEB00000000297328);
  v3 = v85;
  sub_1BE053834();
  v4 = sub_1BE053B24();
  v6 = v5;
  0xE000000000000000, v5, v7, v8, v9, v10, v11, v12;
  v86 = v6;
  MEMORY[0x1BFB3F610](0x6172646874697720, 0xEE002973286C6177);
  v13 = v4;
  v14 = v86;
  sub_1BE053834();
  v15 = sub_1BE053B24();
  v17 = v16;
  0xE000000000000000, v16, v18, v19, v20, v21, v22, v23;
  MEMORY[0x1BFB3F610](0xD00000000000001BLL, 0x80000001BE11BFB0);
  v24 = v15;
  sub_1BE053834();
  v25 = sub_1BE053B24();
  v27 = v26;
  0xE000000000000000, v26, v28, v29, v30, v31, v32, v33;
  v87 = v27;
  MEMORY[0x1BFB3F610](0xD000000000000018, 0x80000001BE11BFD0);
  v34 = v25;
  *a1 = v84;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  v35 = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  *(a1 + 48) = 0;
  *(a1 + 56) = v35;
  *(a1 + 64) = v24;
  *(a1 + 72) = v17;
  *(a1 + 80) = 0;
  *(a1 + 88) = v35;
  *(a1 + 96) = v34;
  *(a1 + 104) = v87;
  *(a1 + 112) = 0;
  *(a1 + 120) = v35;
  sub_1BD0D7F18(v84, v3, 0);
  sub_1BE048C84();
  sub_1BD0D7F18(v13, v14, 0);
  sub_1BE048C84();
  sub_1BD0D7F18(v24, v17, 0);
  sub_1BE048C84();
  sub_1BD0D7F18(v34, v87, 0);
  sub_1BE048C84();
  sub_1BD0DDF10(v34, v87, 0, v36, v37, v38, v39, v40);
  v35, v41, v42, v43, v44, v45, v46, v47;
  sub_1BD0DDF10(v24, v17, 0, v48, v49, v50, v51, v52);
  v35, v53, v54, v55, v56, v57, v58, v59;
  sub_1BD0DDF10(v13, v14, 0, v60, v61, v62, v63, v64);
  v35, v65, v66, v67, v68, v69, v70, v71;
  sub_1BD0DDF10(v84, v3, 0, v72, v73, v74, v75, v76);
  v35, v77, v78, v79, v80, v81, v82, v83;
}

uint64_t sub_1BD193E20(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE04D8B4(v22);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v3, v11, v12, v13, v14, v15, v16, v17;
  v22[9] = v22[0];
  v18 = swift_allocObject();
  v19 = *(a1 + 48);
  *(v18 + 48) = *(a1 + 32);
  *(v18 + 64) = v19;
  *(v18 + 80) = *(a1 + 64);
  v20 = *(a1 + 16);
  *(v18 + 16) = *a1;
  *(v18 + 32) = v20;
  sub_1BD1967C8(a1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD524C0, &qword_1BE0BCDA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B930, &qword_1BE0BCCD8);
  sub_1BD0DE4F4(&qword_1EBD3B9E0, &unk_1EBD524C0, &qword_1BE0BCDA0, MEMORY[0x1E69E6338]);
  sub_1BD0DE4F4(&qword_1EBD3B928, &qword_1EBD3B930, &qword_1BE0BCCD8, MEMORY[0x1E697C090]);
  sub_1BD19717C(&qword_1EBD3B9E8, type metadata accessor for AccountDebugCKReward, &unk_1BE0F56EC);
  return sub_1BE0519D4();
}

void sub_1BD193FFC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v154 = a2;
  v151 = sub_1BE04FB94();
  v149 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v146 = &v111 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B9F0, &qword_1BE0BCDA8);
  v144 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v143 = &v111 - v4;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B9F8, &qword_1BE0BCDB0);
  v148 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v145 = &v111 - v5;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BA00, &qword_1BE0BCDB8);
  MEMORY[0x1EEE9AC00](v152);
  v150 = &v111 - v6;
  v142 = sub_1BE04ACE4();
  v141 = *(v142 - 1);
  MEMORY[0x1EEE9AC00](v142);
  v140 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_1BE04ACC4();
  v138 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v137 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_1BE04AC04();
  v135 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v132 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_1BE04AC14();
  v133 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v131 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_1BE04AC64();
  v128 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v126 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_1BE04ACA4();
  v122 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v119 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_1BE04ABD4();
  v115 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v14 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BE04AD84();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v111 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v116 = &v111 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v118 = &v111 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v120 = &v111 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v124 = &v111 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v127 = &v111 - v31;
  v32 = *(a1 + 24);
  if (v32)
  {
    v129 = *(a1 + 16);
    v157 = v32;
  }

  else
  {
    v129 = 0;
    v157 = 0xE000000000000000;
  }

  v33 = type metadata accessor for AccountDebugCKReward(0);
  v34 = (a1 + v33[7]);
  v35 = v34[1];
  if (v35)
  {
    v125 = *v34;
    v156 = v35;
  }

  else
  {
    v125 = 0;
    v156 = 0xE000000000000000;
  }

  v36 = v33[8];
  v158 = a1;
  v37 = (a1 + v36);
  if (v37[1])
  {
    v38 = *v37;
    v39 = v37[1];
  }

  else
  {
    v38 = 0;
    v39 = 0xE000000000000000;
  }

  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BE048C84();
  v40 = sub_1BE052534();
  v41 = (v158 + v33[9]);
  v42 = v41[1];
  v155 = v39;
  v121 = v38;
  if (v42)
  {
    v43 = *v41;
    v44 = v42;
  }

  else
  {
    v43 = 0;
    v44 = 0xE000000000000000;
  }

  v114 = v40 > 0;
  sub_1BE048C84();
  v113 = sub_1BE052534() > 0;
  MEMORY[0x1BFB371E0]();
  sub_1BE04ABC4();
  sub_1BE04AB64();
  (*(v115 + 8))(v14, v117);
  v45 = *(v16 + 8);
  v45(v18, v15);
  v46 = v119;
  sub_1BE04AC24();
  v47 = v116;
  sub_1BE04ABB4();
  (*(v122 + 8))(v46, v123);
  v45(v21, v15);
  v48 = v126;
  sub_1BE04AC44();
  v49 = v118;
  sub_1BE04ABA4();
  (*(v128 + 8))(v48, v130);
  v45(v47, v15);
  v50 = v132;
  sub_1BE04ABF4();
  v51 = v131;
  sub_1BE04ABE4();
  (*(v135 + 8))(v50, v136);
  v52 = v120;
  sub_1BE04AB84();
  (*(v133 + 8))(v51, v134);
  v45(v49, v15);
  v53 = v137;
  sub_1BE04ACB4();
  v54 = v124;
  sub_1BE04AD44();
  (*(v138 + 8))(v53, v139);
  v45(v52, v15);
  v55 = v140;
  sub_1BE04ACB4();
  v56 = v127;
  sub_1BE04AD54();
  (v141[1])(v55, v142);
  v45(v54, v15);
  sub_1BD19717C(&qword_1EBD4E940, MEMORY[0x1E6969328], MEMORY[0x1E6969320]);
  v57 = v158;
  sub_1BE04AF44();
  v58 = (v45)(v56, v15);
  v142 = &v111;
  v60 = v159;
  v59 = v160;
  MEMORY[0x1EEE9AC00](v58);
  v141 = &v111 - 16;
  v112 = v44;
  *(&v111 - 14) = v60;
  *(&v111 - 13) = v59;
  v61 = v129;
  *(&v111 - 12) = v57;
  *(&v111 - 11) = v61;
  v62 = v125;
  *(&v111 - 10) = v157;
  *(&v111 - 9) = v62;
  *(&v111 - 8) = v156;
  *(&v111 - 56) = v114;
  v63 = v155;
  *(&v111 - 6) = v121;
  *(&v111 - 5) = v63;
  *(&v111 - 32) = v113;
  *(&v111 - 3) = v43;
  *(&v111 - 2) = v44;
  MEMORY[0x1EEE9AC00](v64);
  *(&v111 - 2) = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BA08, &qword_1BE0BCDC0);
  sub_1BD0DE4F4(&qword_1EBD3BA10, &qword_1EBD3BA08, &qword_1BE0BCDC0, MEMORY[0x1E6981F48]);
  v65 = v143;
  sub_1BE0504E4();
  v66 = v146;
  sub_1BE04FB84();
  v67 = sub_1BD0DE4F4(&qword_1EBD3BA18, &qword_1EBD3B9F0, &qword_1BE0BCDA8, MEMORY[0x1E697CD20]);
  v68 = MEMORY[0x1E697C750];
  v69 = v145;
  v70 = v147;
  v71 = v151;
  sub_1BE051144();
  (*(v149 + 8))(v66, v71);
  (*(v144 + 8))(v65, v70);
  v163 = v60;
  v164 = v59;
  v159 = v70;
  v160 = v71;
  v161 = v67;
  v162 = v68;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v73 = sub_1BD0DDEBC();
  v74 = MEMORY[0x1E69E6158];
  v75 = v153;
  sub_1BE050B74();
  (*(v148 + 8))(v69, v75);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BA20, &qword_1BE0BCDC8);
  sub_1BD0DE4F4(&qword_1EBD3BA28, &qword_1EBD3BA20, &qword_1BE0BCDC8, MEMORY[0x1E6981870]);
  v159 = v75;
  v160 = v74;
  v161 = OpaqueTypeConformance2;
  v162 = v73;
  swift_getOpaqueTypeConformance2();
  sub_1BE04E8B4();
  v59, v76, v77, v78, v79, v80, v81, v82;
  v112, v83, v84, v85, v86, v87, v88, v89;
  v155, v90, v91, v92, v93, v94, v95, v96;
  v156, v97, v98, v99, v100, v101, v102, v103;
  v157, v104, v105, v106, v107, v108, v109, v110;
}

__n128 sub_1BD194E7C@<Q0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_1BE04F7C4();
  sub_1BD194F28(a2, a3, v10);
  *&v9[55] = v10[3];
  *&v9[39] = v10[2];
  *&v9[23] = v10[1];
  *&v9[7] = v10[0];
  *(a4 + 33) = *&v9[16];
  result = *&v9[32];
  *(a4 + 49) = *&v9[32];
  *(a4 + 65) = *&v9[48];
  *a4 = v7;
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  *(a4 + 80) = *&v9[63];
  *(a4 + 17) = *v9;
  return result;
}

void sub_1BD194F28(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v159 = a4;
  v161 = type metadata accessor for AccountDebugCKReward(0);
  v6 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v8 = &v157 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v157 - v10;
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  sub_1BE04D8B4(&v163);
  KeyPath, v14, v15, v16, v17, v18, v19, v20;
  v13, v21, v22, v23, v24, v25, v26, v27;
  v28 = v163[2];
  v163, v29, v30, v31, v32, v33, v34, v35;
  v162 = v28;
  v163 = sub_1BE053B24();
  v164 = v36;
  MEMORY[0x1BFB3F610](32, 0xE100000000000000);
  MEMORY[0x1BFB3F610](a2, a3);
  v157 = v164;
  v158 = v163;
  v37 = swift_getKeyPath();
  v38 = swift_getKeyPath();
  sub_1BE04D8B4(&v163);
  v37, v39, v40, v41, v42, v43, v44, v45;
  v38, v46, v47, v48, v49, v50, v51, v52;
  v60 = v163;
  v61 = v163[2];
  v62 = MEMORY[0x1E69E7CC0];
  if (v61)
  {
    v63 = 0;
    v160 = v8;
    while (v63 < v60[2])
    {
      v64 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v65 = *(v6 + 72);
      sub_1BD197294(v60 + v64 + v65 * v63, v11, type metadata accessor for AccountDebugCKReward);
      if (*&v11[*(v161 + 32) + 8] && sub_1BE052534())
      {
        sub_1BD197364(v11, type metadata accessor for AccountDebugCKReward);
      }

      else
      {
        sub_1BD1972FC(v11, v8, type metadata accessor for AccountDebugCKReward);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v163 = v62;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BD531BF0(0, v62[2] + 1, 1);
          v62 = v163;
        }

        v68 = v62[2];
        v67 = v62[3];
        if (v68 >= v67 >> 1)
        {
          sub_1BD531BF0((v67 > 1), v68 + 1, 1);
          v62 = v163;
        }

        v62[2] = v68 + 1;
        v69 = v62 + v64 + v68 * v65;
        v8 = v160;
        sub_1BD1972FC(v160, v69, type metadata accessor for AccountDebugCKReward);
      }

      if (v61 == ++v63)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    v60, v53, v54, v55, v56, v57, v58, v59;
    v70 = v62[2];
    v62, v71, v72, v73, v74, v75, v76, v77;
    if (v70)
    {
      v163 = 0;
      v164 = 0xE000000000000000;
      sub_1BE053834();
      v78 = v164;
      v162 = v70;
      v79 = sub_1BE053B24();
      v81 = v80;
      v78, v80, v82, v83, v84, v85, v86, v87;
      v163 = v79;
      v164 = v81;
      MEMORY[0x1BFB3F610](0xD000000000000021, 0x80000001BE11BF60);
      v88 = v164;
      v89 = sub_1BE050454();
      v90 = sub_1BE0505F4();
      v92 = v91;
      v94 = v93;
      v96 = v95;
      v88, v91, v93, v95, v97, v98, v99, v100;
      v89, v101, v102, v103, v104, v105, v106, v107;
      v108 = sub_1BE051494();
      v109 = sub_1BE050564();
      v111 = v110;
      v113 = v112;
      v115 = v114;
      v108, v110, v112, v114, v116, v117, v118, v119;
      sub_1BD0DDF10(v90, v92, (v94 & 1), v120, v121, v122, v123, v124);
      v96, v125, v126, v127, v128, v129, v130, v131;
      v132 = v113 & 1;
      sub_1BD0D7F18(v109, v111, v113 & 1);
      sub_1BE048C84();
    }

    else
    {
      v109 = 0;
      v111 = 0;
      v132 = 0;
      v115 = 0;
    }

    v134 = v157;
    v133 = v158;
    sub_1BD0D7F18(v158, v157, 0);
    v135 = MEMORY[0x1E69E7CC0];
    sub_1BE048C84();
    sub_1BD1969AC(v109, v111, v132, v115);
    sub_1BD1969F0(v109, v111, v132, v115, v136, v137, v138, v139);
    LOBYTE(v163) = 0;
    v140 = v159;
    *v159 = v133;
    v140[1] = v134;
    *(v140 + 16) = 0;
    v140[3] = v135;
    v140[4] = v109;
    v140[5] = v111;
    v140[6] = v132;
    v140[7] = v115;
    sub_1BD1969F0(v109, v111, v132, v115, v141, v142, v143, v144);
    sub_1BD0DDF10(v133, v134, 0, v145, v146, v147, v148, v149);
    v135, v150, v151, v152, v153, v154, v155, v156;
  }
}

uint64_t sub_1BD19541C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1BE04F7C4();
  LOBYTE(v29[0]) = 1;
  sub_1BD195660(a1, v16);
  *&v15[7] = v16[0];
  *&v15[23] = v16[1];
  *&v15[39] = v16[2];
  *&v15[55] = v16[3];
  v5 = v29[0];
  v6 = sub_1BE04F7C4();
  LOBYTE(v29[0]) = 1;
  sub_1BD1957B8(a1, v17);
  *&v14[7] = v17[0];
  *&v14[23] = v17[1];
  *&v14[39] = v17[2];
  *&v14[55] = v18;
  v7 = v29[0];
  v19 = v4;
  v20[0] = v5;
  *&v20[1] = *v15;
  *&v20[33] = *&v15[32];
  *&v20[17] = *&v15[16];
  *&v20[49] = *&v15[48];
  *&v20[64] = *&v15[63];
  *v13 = *&v15[63];
  v11 = *&v20[32];
  v12 = *&v20[48];
  v10 = *&v20[16];
  v21[0] = v6;
  v21[1] = 0;
  v22[0] = v29[0];
  *&v22[1] = *v14;
  *&v22[64] = *(&v18 + 1);
  *&v22[49] = *&v14[48];
  *&v22[33] = *&v14[32];
  *&v22[17] = *&v14[16];
  *&v13[24] = *v22;
  *&v13[8] = v6;
  *&v13[72] = *&v22[48];
  *&v13[88] = *&v22[64];
  *&v13[56] = *&v22[32];
  *&v13[40] = *&v22[16];
  v8 = *v20;
  *a2 = v4;
  a2[1] = v8;
  a2[4] = v12;
  a2[5] = *v13;
  a2[2] = v10;
  a2[3] = v11;
  a2[9] = *&v13[64];
  a2[10] = *&v13[80];
  a2[7] = *&v13[32];
  a2[8] = *&v13[48];
  a2[6] = *&v13[16];
  v23[0] = v6;
  v23[1] = 0;
  v24 = v7;
  v26 = *&v14[16];
  v27 = *&v14[32];
  *v28 = *&v14[48];
  *&v28[15] = *&v14[63];
  v25 = *v14;
  sub_1BD0DE19C(&v19, v29, &qword_1EBD3B890, &unk_1BE0C2FD0);
  sub_1BD0DE19C(v21, v29, &qword_1EBD3B890, &unk_1BE0C2FD0);
  sub_1BD0DE53C(v23, &qword_1EBD3B890, &unk_1BE0C2FD0);
  v29[0] = v4;
  v29[1] = 0;
  v30 = v5;
  v32 = *&v15[16];
  v33 = *&v15[32];
  *v34 = *&v15[48];
  *&v34[15] = *&v15[63];
  v31 = *v15;
  return sub_1BD0DE53C(v29, &qword_1EBD3B890, &unk_1BE0C2FD0);
}

void sub_1BD195660(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AccountDebugCKReward(0) + 48));
  if (v3)
  {
    v4 = [v3 debugDescription];
    v5 = sub_1BE052434();
    v7 = v6;
  }

  else
  {
    v7 = 0xEF746E6576652074;
    v5 = 0x6E65726170206F4ELL;
  }

  *a2 = xmmword_1BE0BC6E0;
  v8 = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = 0;
  *(a2 + 24) = v8;
  *(a2 + 32) = v5;
  *(a2 + 40) = v7;
  *(a2 + 48) = 0;
  *(a2 + 56) = v8;
  sub_1BD0D7F18(0x45746E756F636341, 0xED00003A746E6576, 0);
  sub_1BE048C84();
  sub_1BD0D7F18(v5, v7, 0);
  sub_1BE048C84();
  sub_1BD0DDF10(v5, v7, 0, v9, v10, v11, v12, v13);
  v8, v14, v15, v16, v17, v18, v19, v20;
  sub_1BD0DDF10(0x45746E756F636341, 0xED00003A746E6576, 0, v21, v22, v23, v24, v25);

  v8, v26, v27, v28, v29, v30, v31, v32;
}

void sub_1BD1957B8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*(a1 + *(type metadata accessor for AccountDebugCKReward(0) + 44)) debugDescription];
  v4 = sub_1BE052434();
  v6 = v5;

  *a2 = xmmword_1BE0BC6F0;
  v7 = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = 0;
  *(a2 + 24) = v7;
  *(a2 + 32) = v4;
  *(a2 + 40) = v6;
  *(a2 + 48) = 0;
  *(a2 + 56) = v7;
  sub_1BD0D7F18(0x3A73647261776552, 0xE800000000000000, 0);
  sub_1BE048C84();
  sub_1BD0D7F18(v4, v6, 0);
  sub_1BE048C84();
  sub_1BD0DDF10(v4, v6, 0, v8, v9, v10, v11, v12);
  v7, v13, v14, v15, v16, v17, v18, v19;
  sub_1BD0DDF10(0x3A73647261776552, 0xE800000000000000, 0, v20, v21, v22, v23, v24);

  v7, v25, v26, v27, v28, v29, v30, v31;
}

__n128 sub_1BD1958D0@<Q0>(void *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  v283 = sub_1BE04F7C4();
  v300 = 1;
  *&v297 = 540689481;
  *(&v297 + 1) = 0xE400000000000000;
  v19 = *a3;
  v20 = a3[1];
  v294 = a2;
  sub_1BE048C84();
  MEMORY[0x1BFB3F610](v19, v20);
  v21 = sub_1BE050454();
  v22 = sub_1BE0505F4();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  0xE400000000000000, v23, v25, v27, v29, v30, v31, v32;
  v21, v33, v34, v35, v36, v37, v38, v39;
  v40 = sub_1BE051494();
  v41 = sub_1BE050564();
  v291 = v42;
  v292 = v41;
  v284 = v43;
  v290 = v44;
  v40, v42, v43, v44, v45, v46, v47, v48;
  sub_1BD0DDF10(v22, v24, (v26 & 1), v49, v50, v51, v52, v53);
  v28, v54, v55, v56, v57, v58, v59, v60;
  sub_1BE053834();
  0xE000000000000000, v61, v62, v63, v64, v65, v66, v67;
  *&v297 = 0x203A746E756F6D41;
  *(&v297 + 1) = 0xE900000000000024;
  MEMORY[0x1BFB3F610](a4, a5);
  MEMORY[0x1BFB3F610](0xD000000000000010, 0x80000001BE11BF10);
  MEMORY[0x1BFB3F610](a6, a7);
  v68 = sub_1BE050454();
  v69 = sub_1BE0505F4();
  v71 = v70;
  LOBYTE(a5) = v72;
  v74 = v73;
  0xE900000000000024, v70, v72, v73, v75, v76, v77, v78;
  v68, v79, v80, v81, v82, v83, v84, v85;
  v86 = sub_1BE051494();
  v87 = sub_1BE050564();
  v288 = v88;
  v289 = v87;
  v296 = v89;
  v281 = v90;
  v86, v89, v90, v88, v91, v92, v93, v94;
  sub_1BD0DDF10(v69, v71, (a5 & 1), v95, v96, v97, v98, v99);
  v74, v100, v101, v102, v103, v104, v105, v106;
  if (a8)
  {
    *&v297 = 0x203A734449207254;
    *(&v297 + 1) = 0xE800000000000000;
    MEMORY[0x1BFB3F610](a10, a11);
    v107 = sub_1BE050454();
    v108 = sub_1BE0505F4();
    v110 = v109;
    v112 = v111;
    v114 = v113;
    0xE800000000000000, v109, v111, v113, v115, v116, v117, v118;
    v107, v119, v120, v121, v122, v123, v124, v125;
    v126 = sub_1BE051494();
    sub_1BE050564();
    v126, v127, v128, v129, v130, v131, v132, v133;
    sub_1BD0DDF10(v108, v110, (v112 & 1), v134, v135, v136, v137, v138);
    v114, v139, v140, v141, v142, v143, v144, v145;
  }

  else
  {
    v146 = sub_1BE050454();
    v147 = sub_1BE0505F4();
    v149 = v148;
    v151 = v150;
    v153 = v152;
    v146, v148, v150, v152, v154, v155, v156, v157;
    v158 = sub_1BE051434();
    sub_1BE050564();
    v158, v159, v160, v161, v162, v163, v164, v165;
    sub_1BD0DDF10(v147, v149, (v151 & 1), v166, v167, v168, v169, v170);
    v153, v171, v172, v173, v174, v175, v176, v177;
  }

  sub_1BE04F9A4();
  v178 = v297;
  v179 = v299;
  v285 = v297;
  v180 = *(&v297 + 1);
  v287 = v298;
  v280 = *(&v297 + 1);
  if (a12)
  {
    strcpy(&v297, "Rewards IDs: ");
    HIWORD(v297) = -4864;
    sub_1BD1970E0(v178, v180, v298, *(&v298 + 1));
    MEMORY[0x1BFB3F610](a13, a14);
    v181 = sub_1BE050454();
    v182 = sub_1BE0505F4();
    v184 = v183;
    v186 = v185;
    v188 = v187;
    *(&v297 + 1), v183, v185, v187, v189, v190, v191, v192;
    v181, v193, v194, v195, v196, v197, v198, v199;
    v200 = sub_1BE051494();
    v201 = sub_1BE050564();
    v203 = v202;
    v205 = v204;
    v207 = v206;
    v200, v202, v204, v206, v208, v209, v210, v211;
    sub_1BD0DDF10(v182, v184, (v186 & 1), v212, v213, v214, v215, v216);
    v188, v217, v218, v219, v220, v221, v222, v223;
    v224 = v201;
    v282 = v203;
    v225 = v205 & 1;
    sub_1BD0D7F18(v201, v203, v205 & 1);
    v278 = v207;
    sub_1BE048C84();
  }

  else
  {
    sub_1BD1970E0(v297, *(&v297 + 1), v298, *(&v298 + 1));
    v224 = 0;
    v282 = 0;
    v225 = 0;
    v278 = 0;
  }

  sub_1BD0D7F18(a1, v294, 0);
  sub_1BE048C84();
  sub_1BD0D7F18(v292, v291, v284 & 1);
  sub_1BE048C84();
  sub_1BD0D7F18(v289, v296, v281 & 1);
  sub_1BE048C84();
  sub_1BD1970E0(v285.n128_i64[0], v280, v298, *(&v298 + 1));
  sub_1BD1969AC(v224, v282, v225, v278);
  sub_1BD19711C(v285.n128_u64[0], v280, v298, *(&v298 + 1), v299, v226, v227, v228);
  sub_1BD1969F0(v224, v282, v225, v278, v229, v230, v231, v232);
  sub_1BD1969F0(v224, v282, v225, v278, v233, v234, v235, v236);
  sub_1BD19711C(v285.n128_u64[0], v280, v298, *(&v298 + 1), v299, v237, v238, v239);
  sub_1BD0DDF10(v289, v296, (v281 & 1), v240, v241, v242, v243, v244);
  v288, v245, v246, v247, v248, v249, v250, v251;
  sub_1BD0DDF10(v292, v291, (v284 & 1), v252, v253, v254, v255, v256);
  v290, v257, v258, v259, v260, v261, v262, v263;
  sub_1BD0DDF10(a1, v294, 0, v264, v265, v266, v267, v268);
  MEMORY[0x1E69E7CC0], v269, v270, v271, v272, v273, v274, v275;
  v276 = v300;
  *a9 = v283;
  *(a9 + 8) = 0;
  *(a9 + 16) = v276;
  *(a9 + 24) = a1;
  *(a9 + 32) = v294;
  *(a9 + 40) = 0;
  *(a9 + 48) = MEMORY[0x1E69E7CC0];
  *(a9 + 56) = v292;
  *(a9 + 64) = v291;
  *(a9 + 72) = v284 & 1;
  *(a9 + 80) = v290;
  *(a9 + 88) = v289;
  *(a9 + 96) = v296;
  *(a9 + 104) = v281 & 1;
  *(a9 + 112) = v288;
  result = v285;
  *(a9 + 136) = v287;
  *(a9 + 120) = v285;
  *(a9 + 152) = v179;
  *(a9 + 160) = v224;
  *(a9 + 168) = v282;
  *(a9 + 176) = v225;
  *(a9 + 184) = v278;
  return result;
}

void sub_1BD196014(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD196094(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_1BE04D8C4();
}

void sub_1BD196108(_BYTE *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD196188(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_1BE04D8C4();
}

void sub_1BD196200(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(v20);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  v19 = v20[1];
  *a2 = v20[0];
  a2[1] = v19;
}

uint64_t sub_1BD196280(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  v3 = v2;
  return sub_1BE04D8C4();
}

double sub_1BD196328@<D0>(uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v21);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  v19 = v22;
  result = *&v21;
  *a2 = v21;
  *(a2 + 16) = v19;
  return result;
}

uint64_t sub_1BD1963B8(__int128 *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD1964F8(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  v7 = v6;
  return sub_1BE04D8C4();
}

unint64_t sub_1BD196584()
{
  result = qword_1EBD3B690;
  if (!qword_1EBD3B690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B688, &qword_1BE0BCA78);
    sub_1BD0DE4F4(&qword_1EBD3B698, &qword_1EBD3B6A0, &qword_1BE0BCA80, MEMORY[0x1E697C090]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B690);
  }

  return result;
}

unint64_t sub_1BD19663C()
{
  result = qword_1EBD3B6B0;
  if (!qword_1EBD3B6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B6A8, &qword_1BE0BCA88);
    sub_1BD0DE4F4(&qword_1EBD3B6B8, &qword_1EBD3B6C0, &qword_1BE0BCA90, MEMORY[0x1E697C090]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B6B0);
  }

  return result;
}

unint64_t sub_1BD1966F4()
{
  result = qword_1EBD3B6D0;
  if (!qword_1EBD3B6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B6C8, &qword_1BE0BCA98);
    sub_1BD0DE4F4(&qword_1EBD3B6D8, &qword_1EBD3B6E0, &unk_1BE0BCAA0, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B6D0);
  }

  return result;
}

unint64_t sub_1BD196844()
{
  result = qword_1EBD3B750;
  if (!qword_1EBD3B750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B748, &qword_1BE0BCAF8);
    sub_1BD1968C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B750);
  }

  return result;
}

unint64_t sub_1BD1968C8()
{
  result = qword_1EBD3B758;
  if (!qword_1EBD3B758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B760, &qword_1BE0BCB00);
    sub_1BD0DE4F4(&qword_1EBD3B768, &qword_1EBD3B770, &unk_1BE0BCB08, MEMORY[0x1E6981880]);
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8, &qword_1BE0B8CD0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B758);
  }

  return result;
}

uint64_t sub_1BD1969AC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1BD0D7F18(result, a2, a3 & 1);

    return sub_1BE048C84();
  }

  return result;
}

void sub_1BD1969F0(void *result, char *a2, char a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a4)
  {
    sub_1BD0DDF10(result, a2, (a3 & 1), a4, a5, a6, a7, a8);

    a4, v9, v10, v11, v12, v13, v14, v15;
  }
}

unint64_t sub_1BD196A64()
{
  result = qword_1EBD3B7B0;
  if (!qword_1EBD3B7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B7A8, &qword_1BE0BCB38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B7B0);
  }

  return result;
}

unint64_t sub_1BD196AE0()
{
  result = qword_1EBD3B7D0;
  if (!qword_1EBD3B7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B7D0);
  }

  return result;
}

unint64_t sub_1BD196B34()
{
  result = qword_1EBD3B7E8;
  if (!qword_1EBD3B7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B7E8);
  }

  return result;
}

unint64_t sub_1BD196B88()
{
  result = qword_1EBD3B808;
  if (!qword_1EBD3B808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B7F0, &qword_1BE0BCB50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B810, &unk_1BE0DD8F0);
    sub_1BD196C48();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B808);
  }

  return result;
}

unint64_t sub_1BD196C48()
{
  result = qword_1EBD3B818;
  if (!qword_1EBD3B818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B810, &unk_1BE0DD8F0);
    sub_1BD196CD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B818);
  }

  return result;
}

unint64_t sub_1BD196CD4()
{
  result = qword_1EBD3B820;
  if (!qword_1EBD3B820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B828, &unk_1BE0BCB70);
    sub_1BD0DE4F4(&qword_1EBD3B830, &qword_1EBD3B838, &qword_1BE0DD900, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B820);
  }

  return result;
}

uint64_t sub_1BD196DA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260, &unk_1BE0C0F20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD196F04()
{
  result = qword_1EBD3B8E8;
  if (!qword_1EBD3B8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B8E0, &qword_1BE0BCCB8);
    sub_1BD0DE4F4(&qword_1EBD3B8F0, &qword_1EBD3B8F8, &qword_1BE0BCCC0, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B8E8);
  }

  return result;
}

unint64_t sub_1BD196FC8()
{
  result = qword_1EBD3B920;
  if (!qword_1EBD3B920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B918, &qword_1BE0BCCD0);
    sub_1BD0DE4F4(&qword_1EBD3B928, &qword_1EBD3B930, &qword_1BE0BCCD8, MEMORY[0x1E697C090]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B920);
  }

  return result;
}

uint64_t sub_1BD1970E0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_1BD0D7F18(a1, a2, a3 & 1);

  return sub_1BE048C84();
}

void sub_1BD19711C(void *a1, char *a2, char a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  sub_1BD0DDF10(a1, a2, (a3 & 1), a4, a5, a6, a7, a8);

  a4, v9, v10, v11, v12, v13, v14, v15;
}

uint64_t sub_1BD19717C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_7()
{
  v0[5], v1, v2, v3, v4, v5, v6, v7;
  v0[7], v8, v9, v10, v11, v12, v13, v14;
  v0[9], v15, v16, v17, v18, v19, v20, v21;

  return swift_deallocObject();
}

uint64_t sub_1BD197294(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD1972FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD197364(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD1973C4()
{
  result = qword_1EBD38840;
  if (!qword_1EBD38840)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD38840);
  }

  return result;
}

unint64_t sub_1BD197410()
{
  result = qword_1EBD3BA40;
  if (!qword_1EBD3BA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BA48, &qword_1BE0BCE28);
    sub_1BD0DE4F4(&qword_1EBD3B600, &qword_1EBD3B5E0, &qword_1BE0BC7C0, MEMORY[0x1E6981870]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B5C8, &qword_1BE0BC7A8);
    sub_1BE04FB94();
    sub_1BD0DE4F4(&qword_1EBD3B5F8, &qword_1EBD3B5C8, &qword_1BE0BC7A8, MEMORY[0x1E697CD20]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3BA40);
  }

  return result;
}

void FKAmount.negate()()
{
  v1 = [v0 decimal];
  v2 = [v1 pk_negativeValue];

  if (v2)
  {
    v3 = [v0 currency];
    if (!v3)
    {
      sub_1BE052434();
      v5 = v4;
      v3 = sub_1BE052404();
      v5, v6, v7, v8, v9, v10, v11, v12;
    }

    [objc_allocWithZone(MEMORY[0x1E6967D90]) initWithDecimalNumber:v2 currency:v3];
  }

  else
  {
    __break(1u);
  }
}