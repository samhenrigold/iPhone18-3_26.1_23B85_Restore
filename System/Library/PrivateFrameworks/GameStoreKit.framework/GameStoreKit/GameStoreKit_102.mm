double sub_24F06E034@<D0>(_OWORD *a1@<X8>)
{
  sub_24F072B1C();
  sub_24F924868();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_24F06E0D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v35 = a2;
  v31 = a1;
  v4 = a1 - 8;
  v30 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v29[1] = v5;
  v32 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v4 + 32);
  sub_24F92C4A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2382A8, &unk_24F9C3758);
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  v7 = sub_24F927108();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v29 - v12;
  sub_24F924C98();
  v14 = *(v4 + 24);
  v37 = v14;
  v38 = v6;
  v36 = *(v4 + 40);
  v39 = v36;
  v40 = v2;
  sub_24F9270F8();
  WitnessTable = swift_getWitnessTable();
  v34 = v13;
  v33 = WitnessTable;
  sub_24E7896B8();
  v16 = *(v8 + 8);
  v16(v10, v7);
  if (*(v2 + 32))
  {
    goto LABEL_2;
  }

  (*(v36 + 112))(&v44, v14);
  if (v47)
  {
    sub_24E612B0C(&v44, &v48);
  }

  else
  {

    v48 = v44;
    v49 = v45;
  }

  v44 = v48;
  v45 = v49;
  v19 = *(&v49 + 1);
  sub_24E601704(&v44, &qword_27F2129B0, &unk_24F945320);
  if (!v19)
  {
LABEL_2:
    v48 = 0uLL;
    *&v44 = v14;
    *(&v44 + 1) = v6;
    v45 = v36;
    type metadata accessor for BaseShelfPageView.PaginationView(0, &v44);
    swift_getWitnessTable();
    sub_24E8D5004(&v48, &v44);
    v18 = *(&v44 + 1);
    v17 = v44;
  }

  else
  {
    v29[0] = v16;
    v20 = v30;
    v21 = v31;
    (*(v30 + 16))(v32, v3, v31);
    v22 = (*(v20 + 80) + 48) & ~*(v20 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v14;
    *(v23 + 24) = v6;
    *(v23 + 32) = v36;
    (*(v20 + 32))(v23 + v22, v32, v21);
    v16 = v29[0];
    *&v48 = &unk_24F9C3770;
    *(&v48 + 1) = v23;
    *&v44 = v14;
    *(&v44 + 1) = v6;
    v45 = v36;
    type metadata accessor for BaseShelfPageView.PaginationView(0, &v44);
    swift_getWitnessTable();
    sub_24E7896B8();

    v43 = v44;
    sub_24E7896B8();

    v42 = v48;
    sub_24E8D5004(&v42, &v43);

    v18 = *(&v43 + 1);
    v17 = v43;
  }

  v24 = v34;
  (*(v8 + 16))(v10, v34, v7);
  *&v43 = v17;
  *(&v43 + 1) = v18;
  *&v48 = v10;
  *(&v48 + 1) = &v43;
  sub_24E5FCA4C(v17, v18);
  *&v42 = v7;
  *&v25 = v14;
  *(&v25 + 1) = v6;
  v44 = v25;
  v45 = v36;
  type metadata accessor for BaseShelfPageView.PaginationView(255, &v44);
  *(&v42 + 1) = sub_24F92C4A8();
  *&v44 = v33;
  v41 = swift_getWitnessTable();
  *(&v44 + 1) = swift_getWitnessTable();
  sub_24F57BA64(&v48, 2uLL, &v42);
  v26 = sub_24E824448(v17, v18);
  (v16)(v24, v7, v26);
  v27 = sub_24E824448(v43, *(&v43 + 1));
  return (v16)(v10, v7, v27);
}

uint64_t sub_24F06E6C0@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v265 = a6;
  v307 = a2;
  v321[0] = a2;
  v321[1] = a3;
  v321[2] = a4;
  v321[3] = a5;
  v309 = type metadata accessor for BaseShelfPageView.ShelfContentView(0, v321);
  v262 = *(v309 - 1);
  v258 = *(v262 + 64);
  MEMORY[0x28223BE20](v309);
  v260 = &v231 - v10;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
  MEMORY[0x28223BE20](v257);
  v256 = &v231 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v255 = &v231 - v13;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2382A8, &unk_24F9C3758);
  MEMORY[0x28223BE20](v259);
  v264 = &v231 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v261 = &v231 - v16;
  v17 = sub_24F924848();
  v251 = *(v17 - 8);
  v252 = v17;
  MEMORY[0x28223BE20](v17);
  v248 = &v231 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v304 = sub_24F925218();
  v301 = *(v304 - 1);
  MEMORY[0x28223BE20](v304);
  v245 = &v231 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  MEMORY[0x28223BE20](v305);
  v274 = &v231 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v244 = &v231 - v22;
  MEMORY[0x28223BE20](v23);
  v279 = &v231 - v24;
  MEMORY[0x28223BE20](v25);
  v240 = &v231 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v27 - 8);
  v233 = &v231 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v272 = &v231 - v30;
  MEMORY[0x28223BE20](v31);
  v273 = (&v231 - v32);
  MEMORY[0x28223BE20](v33);
  v232 = &v231 - v34;
  MEMORY[0x28223BE20](v35);
  v270 = &v231 - v36;
  MEMORY[0x28223BE20](v37);
  v271 = (&v231 - v38);
  MEMORY[0x28223BE20](v39);
  v239 = &v231 - v40;
  MEMORY[0x28223BE20](v41);
  v268 = &v231 - v42;
  MEMORY[0x28223BE20](v43);
  v269 = (&v231 - v44);
  MEMORY[0x28223BE20](v45);
  v236 = &v231 - v46;
  MEMORY[0x28223BE20](v47);
  v266 = &v231 - v48;
  MEMORY[0x28223BE20](v49);
  v267 = (&v231 - v50);
  v289 = sub_24F923E98();
  v303 = *(v289 - 8);
  MEMORY[0x28223BE20](v289);
  v288 = (&v231 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v52);
  v278 = (&v231 - v53);
  v306 = type metadata accessor for PageEnvironment(0);
  MEMORY[0x28223BE20](v306);
  v290 = &v231 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v280 = (&v231 - v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A690, &qword_24F982880);
  MEMORY[0x28223BE20](v57 - 8);
  v247 = &v231 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v246 = &v231 - v60;
  MEMORY[0x28223BE20](v61);
  v287 = &v231 - v62;
  MEMORY[0x28223BE20](v63);
  v286 = &v231 - v64;
  MEMORY[0x28223BE20](v65);
  v277 = &v231 - v66;
  MEMORY[0x28223BE20](v67);
  v276 = &v231 - v68;
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  v302 = *(v285 - 8);
  MEMORY[0x28223BE20](v285);
  v284 = &v231 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70);
  v275 = &v231 - v71;
  v72 = *(a3 - 8);
  MEMORY[0x28223BE20](v73);
  v75 = &v231 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v76);
  v78 = &v231 - v77;
  v79 = sub_24F92C4A8();
  v292 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v81 = &v231 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = MEMORY[0x28223BE20](v82);
  v293 = &v231 - v84;
  v294 = a5;
  v85 = *(a1 + 3);
  v308 = a4;
  if (v85)
  {
    v86 = 1;
  }

  else
  {
    (*(a1 + v309[17]))(v83);
    sub_24E7896B8();
    v87 = *(v72 + 8);
    v87(v75, a3);
    sub_24E7896B8();
    v87(v78, a3);
    (*(v72 + 32))(v81, v75, a3);
    v86 = 0;
  }

  (*(v72 + 56))(v81, v86, 1, a3, v83);
  v263 = a3;
  sub_24E8D5004(v81, v293);
  v88 = *(v292 + 8);
  v253 = v81;
  v254 = v79;
  v249 = v88;
  v250 = v292 + 8;
  v88(v81, v79);
  [objc_opt_self() _readableWidth];
  v89 = a1[5];
  v91 = (v89 - v90) * 0.5;
  if (v91 < 0.0)
  {
    v92 = 0.0;
  }

  else
  {
    v92 = v91;
  }

  v93 = *a1;
  v94 = *(v308 + 72);
  v282 = v308 + 72;
  v283 = v93;
  v281 = v94;
  (v94)(v323, v307);
  v237 = v325;
  v238 = v324;
  v235 = __swift_project_boxed_opaque_existential_1(v323, v324);
  *v321 = a1[1];
  v95 = v321[0];
  v96 = type metadata accessor for Shelf(0);
  v291 = v95;
  swift_retain_n();
  v243 = v96;
  sub_24F928A78();
  sub_24F06B050(v276, v277, *(a1 + 2), *(a1 + 3), *(a1 + 4));
  v97 = a1[6];
  v98 = v309;
  v242 = a1 + v309[21];
  sub_24F769788(v278);
  v99 = v267;
  v241 = a1 + v98[22];
  sub_24F769764(v267);
  v100 = v301;
  v101 = *(v301 + 104);
  v102 = v266;
  v299 = *MEMORY[0x277CE0558];
  v103 = v304;
  v298 = v301 + 104;
  v297 = v101;
  v101(v266);
  v104 = *(v100 + 56);
  v296 = v100 + 56;
  v295 = v104;
  v104(v102, 0, 1, v103);
  v105 = *(v305 + 48);
  v106 = v240;
  sub_24E60169C(v99, v240, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v102, v106 + v105, &qword_27F215598, &qword_24F945EF0);
  v107 = *(v100 + 48);
  v108 = (v107)(v106, 1, v103);
  v310 = a1;
  v300 = v100 + 48;
  if (v108 == 1)
  {
    sub_24E601704(v102, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v99, &qword_27F215598, &qword_24F945EF0);
    v109 = (v107)(v106 + v105, 1, v103);
    v110 = v269;
    v111 = v107;
    if (v109 == 1)
    {
      sub_24E601704(v106, &qword_27F215598, &qword_24F945EF0);
      v234 = 1;
      v112 = v309;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v113 = v236;
  sub_24E60169C(v106, v236, &qword_27F215598, &qword_24F945EF0);
  v111 = v107;
  if ((v107)(v106 + v105, 1, v103) == 1)
  {
    sub_24E601704(v266, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v267, &qword_27F215598, &qword_24F945EF0);
    (*(v301 + 8))(v113, v103);
    v110 = v269;
LABEL_12:
    sub_24E601704(v106, &unk_27F254F20, &qword_24F940790);
    v234 = 0;
    v112 = v309;
    goto LABEL_14;
  }

  v114 = v301;
  v115 = v245;
  (*(v301 + 32))(v245, v106 + v105, v103);
  sub_24F074340(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v234 = sub_24F92AFF8();
  v116 = *(v114 + 8);
  v116(v115, v304);
  sub_24E601704(v266, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v267, &qword_27F215598, &qword_24F945EF0);
  v116(v113, v304);
  v103 = v304;
  sub_24E601704(v106, &qword_27F215598, &qword_24F945EF0);
  v112 = v309;
  v110 = v269;
LABEL_14:
  v117 = v268;
  v240 = v112[23];
  sub_24F769764(v110);
  v297(v117, v299, v103);
  v295(v117, 0, 1, v103);
  v118 = *(v305 + 48);
  v119 = v279;
  sub_24E60169C(v110, v279, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v117, &v119[v118], &qword_27F215598, &qword_24F945EF0);
  if ((v111)(v119, 1, v103) == 1)
  {
    sub_24E601704(v117, &qword_27F215598, &qword_24F945EF0);
    v120 = v279;
    sub_24E601704(v110, &qword_27F215598, &qword_24F945EF0);
    if ((v111)(&v120[v118], 1, v103) == 1)
    {
      sub_24E601704(v120, &qword_27F215598, &qword_24F945EF0);
      v121 = 1;
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v122 = v239;
  sub_24E60169C(v119, v239, &qword_27F215598, &qword_24F945EF0);
  if ((v111)(&v119[v118], 1, v103) == 1)
  {
    sub_24E601704(v268, &qword_27F215598, &qword_24F945EF0);
    v120 = v279;
    sub_24E601704(v269, &qword_27F215598, &qword_24F945EF0);
    (*(v301 + 8))(v122, v103);
LABEL_19:
    sub_24E601704(v120, &unk_27F254F20, &qword_24F940790);
    v121 = 0;
    goto LABEL_21;
  }

  v123 = v301;
  v124 = &v119[v118];
  v125 = v245;
  (*(v301 + 32))(v245, v124, v103);
  sub_24F074340(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v121 = sub_24F92AFF8();
  v126 = *(v123 + 8);
  v126(v125, v304);
  sub_24E601704(v268, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v269, &qword_27F215598, &qword_24F945EF0);
  v126(v122, v304);
  v103 = v304;
  sub_24E601704(v119, &qword_27F215598, &qword_24F945EF0);
LABEL_21:
  v127 = v309;
  v279 = v111;
  v128 = *MEMORY[0x277D768C8];
  v129 = *(MEMORY[0x277D768C8] + 8);
  v130 = *(MEMORY[0x277D768C8] + 16);
  v131 = *(MEMORY[0x277D768C8] + 24);
  v132 = v280 + *(v306 + 28);
  v133 = v310;
  v239 = v309[25];
  sub_24F7699B0(v132);
  v134 = v133 + v127[24];
  v135 = *v134;
  v136 = *(v134 + 1);
  v137 = *(v134 + 2);
  v138 = *(v134 + 3);
  LODWORD(v236) = v134[32];
  v268 = v138;
  v269 = v137;
  v266 = v135;
  v267 = v136;
  if (v236 == 1)
  {
    v139 = *&v136;
    v321[49] = v135;
    v321[50] = v136;
    v140 = *&v138;
    v321[51] = v137;
    v322 = *&v138;
  }

  else
  {

    sub_24F92BDC8();
    v141 = v121;
    v142 = sub_24F9257A8();
    sub_24F921FD8();

    v143 = v248;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v135, v136, v137, v138, 0);
    v144 = v252;
    v231 = *(v251 + 8);
    v231(v143, v252);
    v139 = *&v321[1];

    sub_24F92BDC8();
    v145 = sub_24F9257A8();
    sub_24F921FD8();

    v121 = v141;
    v133 = v310;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v135, v136, v269, v138, 0);
    v146 = v143;
    v103 = v304;
    v231(v146, v144);
    v140 = v322;
  }

  v147 = v244;
  v148 = v271;
  v149 = v139 + v140 > 0.0;
  v150 = v280;
  v151 = v278;
  v278 = *(v303 + 32);
  v303 += 32;
  (v278)(v280, v151, v289);
  v152 = v306;
  *(v150 + *(v306 + 20)) = v234 & 1;
  *(v150 + *(v152 + 24)) = v121 & 1;
  *(v150 + *(v152 + 32)) = v149;
  v154 = v275;
  v153 = v276;
  v155 = v277;
  (*(v237 + 8))(v321, v275, v276, v277, v150, v238, v89, v97, 0.0, v92, 0.0, v92, v128, v129, v130, v131);
  sub_24F073D6C(v150, type metadata accessor for PageEnvironment);
  sub_24E601704(v155, &unk_27F23A690, &qword_24F982880);
  sub_24E601704(v153, &unk_27F23A690, &qword_24F982880);
  v156 = *(v302 + 8);
  v302 += 8;
  v280 = v156;
  v156(v154, v285);
  __swift_destroy_boxed_opaque_existential_1(v323);
  v281(v318, v307, v308);
  v276 = v320;
  v277 = v319;
  v275 = __swift_project_boxed_opaque_existential_1(v318, v319);
  v316[0] = v291;
  sub_24F928A78();
  sub_24F06B050(v286, v287, v133[2], v133[3], v133[4]);
  sub_24F769788(v288);
  sub_24F769764(v148);
  v157 = v270;
  v297(v270, v299, v103);
  v295(v157, 0, 1, v103);
  v158 = *(v305 + 48);
  sub_24E60169C(v148, v147, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v157, v147 + v158, &qword_27F215598, &qword_24F945EF0);
  v159 = v279;
  if ((v279)(v147, 1, v103) == 1)
  {
    sub_24E601704(v157, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v148, &qword_27F215598, &qword_24F945EF0);
    if ((v159)(v147 + v158, 1, v103) == 1)
    {
      sub_24E601704(v147, &qword_27F215598, &qword_24F945EF0);
      LODWORD(v244) = 1;
LABEL_30:
      v161 = v272;
      v162 = v273;
      goto LABEL_32;
    }

LABEL_29:
    sub_24E601704(v147, &unk_27F254F20, &qword_24F940790);
    LODWORD(v244) = 0;
    goto LABEL_30;
  }

  v160 = v232;
  sub_24E60169C(v147, v232, &qword_27F215598, &qword_24F945EF0);
  if ((v159)(v147 + v158, 1, v103) == 1)
  {
    sub_24E601704(v270, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v271, &qword_27F215598, &qword_24F945EF0);
    (*(v301 + 8))(v160, v103);
    goto LABEL_29;
  }

  v163 = v301;
  v164 = v245;
  (*(v301 + 32))(v245, v147 + v158, v103);
  sub_24F074340(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  LODWORD(v244) = sub_24F92AFF8();
  v165 = *(v163 + 8);
  v165(v164, v304);
  sub_24E601704(v270, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v271, &qword_27F215598, &qword_24F945EF0);
  v165(v160, v304);
  v103 = v304;
  sub_24E601704(v147, &qword_27F215598, &qword_24F945EF0);
  v161 = v272;
  v162 = v273;
LABEL_32:
  sub_24F769764(v162);
  v297(v161, v299, v103);
  v295(v161, 0, 1, v103);
  v166 = *(v305 + 48);
  v167 = v274;
  sub_24E60169C(v162, v274, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v161, v167 + v166, &qword_27F215598, &qword_24F945EF0);
  v168 = v279;
  if ((v279)(v167, 1, v103) == 1)
  {
    sub_24E601704(v161, &qword_27F215598, &qword_24F945EF0);
    v169 = v274;
    sub_24E601704(v162, &qword_27F215598, &qword_24F945EF0);
    v170 = (v168)(v169 + v166, 1, v103);
    v171 = v268;
    v172 = v310;
    if (v170 == 1)
    {
      sub_24E601704(v169, &qword_27F215598, &qword_24F945EF0);
      LODWORD(v173) = 1;
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  v174 = v233;
  sub_24E60169C(v167, v233, &qword_27F215598, &qword_24F945EF0);
  v175 = (v168)(v167 + v166, 1, v103);
  v171 = v268;
  if (v175 == 1)
  {
    sub_24E601704(v272, &qword_27F215598, &qword_24F945EF0);
    v169 = v274;
    sub_24E601704(v273, &qword_27F215598, &qword_24F945EF0);
    (*(v301 + 8))(v174, v103);
    v172 = v310;
LABEL_37:
    sub_24E601704(v169, &unk_27F254F20, &qword_24F940790);
    LODWORD(v173) = 0;
    goto LABEL_39;
  }

  v176 = v301;
  v177 = v245;
  (*(v301 + 32))(v245, v167 + v166, v103);
  sub_24F074340(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  LODWORD(v173) = sub_24F92AFF8();
  v178 = *(v176 + 8);
  v178(v177, v103);
  sub_24E601704(v272, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v273, &qword_27F215598, &qword_24F945EF0);
  v178(v174, v103);
  sub_24E601704(v167, &qword_27F215598, &qword_24F945EF0);
  v172 = v310;
LABEL_39:
  sub_24F7699B0(&v290[*(v306 + 28)]);
  if (v236)
  {
    v179 = v267;
    v316[49] = v266;
    v316[50] = v267;
    v180 = *&v171;
    v316[51] = v269;
    v317 = *&v171;
  }

  else
  {
    LODWORD(v305) = v173;
    v173 = v266;

    sub_24F92BDC8();
    v181 = sub_24F9257A8();
    sub_24F921FD8();

    v182 = v248;
    sub_24F924838();
    swift_getAtKeyPath();
    v183 = v171;
    v184 = v267;
    v185 = v269;
    sub_24E669FC4(v173, v267, v269, v183, 0);
    v186 = v252;
    v304 = *(v251 + 8);
    (v304)(v182, v252);
    v179 = v316[1];

    sub_24F92BDC8();
    v187 = sub_24F9257A8();
    sub_24F921FD8();

    v172 = v310;
    sub_24F924838();
    swift_getAtKeyPath();
    v188 = v173;
    LOBYTE(v173) = v305;
    sub_24E669FC4(v188, v184, v185, v183, 0);
    (v304)(v182, v186);
    v180 = v317;
  }

  v189 = *&v179 + v180 > 0.0;
  v190 = v290;
  (v278)(v290, v288, v289);
  v191 = v306;
  *(v190 + *(v306 + 20)) = v244 & 1;
  *(v190 + *(v191 + 24)) = v173 & 1;
  *(v190 + *(v191 + 32)) = v189;
  v192 = v284;
  v194 = v286;
  v193 = v287;
  (*(v276 + 16))(v316, v284, v286, v287, v190, v277, v89, v97, 0.0, v92, 0.0, v92, v128, v129, v130, v131);
  sub_24F073D6C(v190, type metadata accessor for PageEnvironment);
  sub_24E601704(v193, &unk_27F23A690, &qword_24F982880);
  sub_24E601704(v194, &unk_27F23A690, &qword_24F982880);
  v280(v192, v285);
  __swift_destroy_boxed_opaque_existential_1(v318);
  v195 = v246;
  v196 = v247;
  sub_24F06B050(v246, v247, v172[2], v172[3], v172[4]);
  v197 = v172;
  v198 = type metadata accessor for ShelfView(0);
  v199 = v261;
  v200 = v307;
  v201 = v308;
  (v281)(v307, v308);
  (*(v201 + 80))(v200, v201);
  sub_24E60169C(v197 + v309[18], v199 + v198[11], &qword_27F2325E8, &unk_24F9C3400);
  v306 = (*(v201 + 88))(v200, v201);
  v202 = v195;
  v203 = v255;
  sub_24E6009C8(v202, v255, &unk_27F23A690, &qword_24F982880);
  v204 = v257;
  sub_24E6009C8(v196, v203 + *(v257 + 48), &unk_27F23A690, &qword_24F982880);
  v315[0] = 0x3FF0000000000000;
  sub_24E62C088();
  sub_24F9237C8();
  v205 = v198[16];
  *(v199 + v205) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  v206 = v198[17];
  *(v199 + v206) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  v207 = v198[18];
  *(v199 + v207) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v208 = v199 + v198[19];
  *v208 = swift_getKeyPath();
  *(v208 + 1) = 0;
  *(v208 + 2) = 0;
  *(v208 + 3) = 0;
  v208[32] = 0;
  v209 = v198[20];
  *(v199 + v209) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  swift_storeEnumTagMultiPayload();
  v210 = v291;
  *v199 = v291;
  v211 = v203;
  v212 = v256;
  sub_24E6009C8(v211, v256, &unk_27F23A680, &unk_24F981ED0);
  v213 = *(v204 + 48);
  v214 = v199 + v198[5];
  sub_24E6009C8(v212, v214, &unk_27F23A690, &qword_24F982880);
  sub_24E6009C8(v212 + v213, v214 + *(v204 + 48), &unk_27F23A690, &qword_24F982880);
  memcpy(v199 + v198[6], v321, 0x188uLL);
  memcpy(v199 + v198[7], v316, 0x188uLL);
  v215 = (v199 + v198[10]);
  *v215 = v89;
  v215[1] = v97;
  *(v199 + v198[12]) = v306;
  *(v199 + v198[13]) = *(*(v210 + 24) + 16);
  *(v199 + v198[14]) = *(v210 + 16);
  v216 = v262;
  v217 = v260;
  v218 = v309;
  (*(v262 + 16))(v260, v310, v309);
  v219 = (*(v216 + 80) + 48) & ~*(v216 + 80);
  v220 = swift_allocObject();
  v221 = v263;
  *(v220 + 2) = v307;
  *(v220 + 3) = v221;
  v222 = v294;
  *(v220 + 4) = v308;
  *(v220 + 5) = v222;
  (*(v216 + 32))(&v220[v219], v217, v218);
  v223 = v259;
  v224 = (v199 + *(v259 + 36));
  *v224 = sub_24F0741E0;
  v224[1] = v220;
  v224[2] = 0;
  v224[3] = 0;
  v225 = v293;
  v227 = v253;
  v226 = v254;
  (*(v292 + 16))(v253, v293, v254);
  v315[0] = v227;
  v228 = v264;
  sub_24E60169C(v199, v264, &qword_27F2382A8, &unk_24F9C3758);
  v315[1] = v228;

  v314[0] = v226;
  v314[1] = v223;
  v311 = v222;
  WitnessTable = swift_getWitnessTable();
  v313 = sub_24F074284();
  sub_24F57BA64(v315, 2uLL, v314);
  sub_24E601704(v199, &qword_27F2382A8, &unk_24F9C3758);
  v229 = v249;
  v249(v225, v226);
  sub_24E601704(v228, &qword_27F2382A8, &unk_24F9C3758);
  return v229(v227, v226);
}

double sub_24F070870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  v8 = *(type metadata accessor for BaseShelfPageView.ShelfContentView(0, v11) + 64);
  v9 = (*(a4 + 88))(a2, a4);
  (*(a4 + 216))(a1 + v8, v9, a2, a4);

  return result;
}

uint64_t sub_24F070918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  sub_24F92B7F8();
  v4[5] = sub_24F92B7E8();
  v6 = sub_24F92B778();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_24F0709B4, v6, v5);
}

uint64_t sub_24F0709B4()
{
  v5 = (*(v0[4] + 240) + **(v0[4] + 240));
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_24F070AC4;
  v3 = v0[3];
  v2 = v0[4];

  return v5(v3, v2);
}

uint64_t sub_24F070AC4()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_24E847734, v3, v2);
}

uint64_t sub_24F070BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v61 = a6;
  v60 = a5;
  v58 = a4;
  v57 = a3;
  v59 = a1;
  v63 = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211A80, &qword_24F935578);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v56 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238340, &unk_24F9C3820);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v56 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215FD0, &qword_24F9415F0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v56 - v18;
  sub_24F923798();
  sub_24F927618();
  sub_24F9242E8();
  (*(v17 + 32))(v15, v19, v16);
  v20 = &v15[*(v13 + 44)];
  v21 = v72;
  *(v20 + 4) = v71;
  *(v20 + 5) = v21;
  *(v20 + 6) = v73;
  v22 = v68;
  *v20 = v67;
  *(v20 + 1) = v22;
  v23 = v70;
  *(v20 + 2) = v69;
  *(v20 + 3) = v23;
  LOBYTE(v13) = sub_24F925828();
  sub_24F923318();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_24E6009C8(v15, v11, &qword_27F238340, &unk_24F9C3820);
  v32 = *(v9 + 44);
  v62 = v11;
  v33 = &v11[v32];
  *v33 = v13;
  *(v33 + 1) = v25;
  *(v33 + 2) = v27;
  *(v33 + 3) = v29;
  *(v33 + 4) = v31;
  v33[40] = 0;
  sub_24F92B7F8();

  v34 = sub_24F92B7E8();
  v35 = swift_allocObject();
  v36 = MEMORY[0x277D85700];
  v35[2] = v34;
  v35[3] = v36;
  v37 = v58;
  v35[4] = v57;
  v35[5] = v37;
  v38 = v61;
  v35[6] = v60;
  v35[7] = v38;
  v35[8] = v59;
  v35[9] = a2;
  v39 = sub_24F92B858();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  v43 = &v56 - v42;
  sub_24F92B818();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v60 = sub_24F923DD8();
    v61 = &v56;
    v59 = *(v60 - 8);
    MEMORY[0x28223BE20](v60);
    v58 = &v56 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
    v65 = 0;
    v66 = 0xE000000000000000;
    sub_24F92C888();

    v65 = 0xD000000000000031;
    v66 = 0x800000024FA69C60;
    v64 = 264;
    v45 = sub_24F92CD88();
    MEMORY[0x253050C20](v45);

    v47 = MEMORY[0x28223BE20](v46);
    (*(v40 + 16))(&v56 - v42, &v56 - v42, v39, v47);
    v48 = v58;
    sub_24F923DC8();
    (*(v40 + 8))(v43, v39);
    v49 = v63;
    sub_24E6009C8(v62, v63, &qword_27F211A80, &qword_24F935578);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211A88, &qword_24F935580);
    return (*(v59 + 32))(v49 + *(v50 + 36), v48, v60);
  }

  else
  {
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211A90, &qword_24F935588);
    v53 = v63;
    v54 = (v63 + *(v52 + 36));
    v55 = sub_24F923AD8();
    (*(v40 + 32))(&v54[*(v55 + 20)], &v56 - v42, v39);
    *v54 = &unk_24F9C3838;
    *(v54 + 1) = v35;
    return sub_24E6009C8(v62, v53, &qword_27F211A80, &qword_24F935578);
  }
}

uint64_t sub_24F071244(uint64_t a1, uint64_t a2, int *a3)
{
  v3[2] = sub_24F92B7F8();
  v3[3] = sub_24F92B7E8();
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_24E8FAC50;

  return v7();
}

uint64_t ShelfPageContext.shelfOffset.getter@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, v2, AssociatedTypeWitness);
}

uint64_t ShelfPageContext.previousShelf.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  swift_getAssociatedTypeWitness();
  v5 = sub_24F92C4A8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t ShelfPageContext.nextShelf.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  swift_getAssociatedTypeWitness();
  v5 = sub_24F92C4A8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24F071530(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = sub_24F92C4A8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24F071604(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v9 + 80);
  if (v10)
  {
    v14 = *(*(v8 - 8) + 64);
  }

  else
  {
    v14 = *(*(v8 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v6 + 64) + v13;
  if (a2 <= v12)
  {
    goto LABEL_34;
  }

  v16 = ((v14 + v13 + (v15 & ~v13)) & ~v13) + v14;
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v19 < 2)
    {
LABEL_33:
      if (v12)
      {
LABEL_34:
        if (v7 >= v11)
        {
          v25 = *(v6 + 48);

          return v25(a1, v7, AssociatedTypeWitness);
        }

        else
        {
          v23 = (*(v9 + 48))((a1 + v15) & ~v13);
          if (v23 >= 2)
          {
            return v23 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_33;
  }

LABEL_20:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v12 + (v22 | v20) + 1;
}

void sub_24F0718C0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = 0;
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = *(v11 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v11 + 80);
  v16 = *(v8 + 64) + v15;
  if (v12)
  {
    v17 = *(v11 + 64);
  }

  else
  {
    v17 = *(v11 + 64) + 1;
  }

  v18 = ((v17 + v15 + (v16 & ~v15)) & ~v15) + v17;
  if (a3 <= v14)
  {
    goto LABEL_20;
  }

  if (v18 <= 3)
  {
    v19 = ((a3 - v14 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
    if (HIWORD(v19))
    {
      v10 = 4;
      if (v14 >= a2)
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }

    if (v19 >= 2)
    {
      v10 = v20;
    }

    else
    {
      v10 = 0;
    }

LABEL_20:
    if (v14 >= a2)
    {
      goto LABEL_30;
    }

    goto LABEL_21;
  }

  v10 = 1;
  if (v14 >= a2)
  {
LABEL_30:
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        *&a1[v18] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_37;
      }

      *&a1[v18] = 0;
    }

    else if (v10)
    {
      a1[v18] = 0;
      if (!a2)
      {
        return;
      }

LABEL_37:
      if (v9 >= v13)
      {
        v28 = *(v8 + 56);

        v28(a1, a2, v9, AssociatedTypeWitness);
      }

      else
      {
        v24 = (&a1[v16] & ~v15);
        if (v13 >= a2)
        {
          v29 = *(v11 + 56);

          v29(v24, (a2 + 1));
        }

        else
        {
          if (v17 <= 3)
          {
            v25 = ~(-1 << (8 * v17));
          }

          else
          {
            v25 = -1;
          }

          if (v17)
          {
            v26 = v25 & (~v13 + a2);
            if (v17 <= 3)
            {
              v27 = v17;
            }

            else
            {
              v27 = 4;
            }

            bzero(v24, v17);
            if (v27 > 2)
            {
              if (v27 == 3)
              {
                *v24 = v26;
                v24[2] = BYTE2(v26);
              }

              else
              {
                *v24 = v26;
              }
            }

            else if (v27 == 1)
            {
              *v24 = v26;
            }

            else
            {
              *v24 = v26;
            }
          }
        }
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

LABEL_21:
  v21 = ~v14 + a2;
  if (v18 >= 4)
  {
    bzero(a1, ((v17 + v15 + (v16 & ~v15)) & ~v15) + v17);
    *a1 = v21;
    v22 = 1;
    if (v10 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v22 = (v21 >> (8 * v18)) + 1;
  if (!v18)
  {
LABEL_58:
    if (v10 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v23 = v21 & ~(-1 << (8 * v18));
  bzero(a1, v18);
  if (v18 == 3)
  {
    *a1 = v23;
    a1[2] = BYTE2(v23);
    goto LABEL_58;
  }

  if (v18 == 2)
  {
    *a1 = v23;
    if (v10 > 1)
    {
LABEL_62:
      if (v10 == 2)
      {
        *&a1[v18] = v22;
      }

      else
      {
        *&a1[v18] = v22;
      }

      return;
    }
  }

  else
  {
    *a1 = v21;
    if (v10 > 1)
    {
      goto LABEL_62;
    }
  }

LABEL_59:
  if (v10)
  {
    a1[v18] = v22;
  }
}

void sub_24F071CE4(uint64_t a1)
{
  sub_24F923C48();
  if (v1 <= 0x3F)
  {
    sub_24F073750(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_24E6C5550();
      if (v3 <= 0x3F)
      {
        sub_24F073750(319, &qword_27F2381D8, MEMORY[0x277CDF3E0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24F071E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 52);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2325E8, &unk_24F9C3400);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F071F68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 52);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2325E8, &unk_24F9C3400);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

double sub_24F0720C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v9 = *(type metadata accessor for BaseShelfPageView(0, v12) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_24F06B70C(a1, v10, v5, v6, v7, v8, a2);
}

uint64_t sub_24F072194()
{
  v1 = *(v0 + 32);
  v15[0] = *(v0 + 16);
  v15[1] = v1;
  v2 = type metadata accessor for BaseShelfPageView(0, v15);
  v3 = (*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80);
  v14 = *(*(v2 - 8) + 64);
  v4 = sub_24F9239C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v3;
  swift_unknownObjectRelease();
  v8 = *(v2 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_24F923E98();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  v10 = *(v2 + 60);
  v11 = sub_24F9234D8();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v7 + v10, 1, v11))
  {
    (*(v12 + 8))(v7 + v10, v11);
  }

  (*(v5 + 8))(v0 + ((v3 + v14 + v6) & ~v6), v4);
  return swift_deallocObject();
}

uint64_t sub_24F0723DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v15[0] = v2[2];
  v5 = v15[0];
  v15[1] = v6;
  v15[2] = v7;
  v15[3] = v8;
  v9 = *(type metadata accessor for BaseShelfPageView(0, v15) - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_24F9239C8() - 8);
  v13 = v2 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80));

  return sub_24F06BCC4(a1, v2 + v10, v13, v5, v6, v7, v8, a2);
}

uint64_t sub_24F0724FC()
{
  v1 = *(v0 + 32);
  v15[0] = *(v0 + 16);
  v15[1] = v1;
  v2 = type metadata accessor for BaseShelfPageView(0, v15);
  v3 = (*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80);
  v14 = *(*(v2 - 8) + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v3;
  swift_unknownObjectRelease();
  v8 = *(v2 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_24F923E98();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  v10 = *(v2 + 60);
  v11 = sub_24F9234D8();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v7 + v10, 1, v11))
  {
    (*(v12 + 8))(v7 + v10, v11);
  }

  (*(v5 + 8))(v0 + ((((v14 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6), v4);
  return swift_deallocObject();
}

uint64_t sub_24F07275C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v17[0] = v2[2];
  v6 = v17[0];
  v17[1] = v5;
  v17[2] = v7;
  v17[3] = v8;
  v9 = *(type metadata accessor for BaseShelfPageView(0, v17) - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710) - 8);
  v13 = *(v2 + v11);
  v14 = *(v2 + v11 + 8);
  v15 = v2 + ((v11 + *(v12 + 80) + 16) & ~*(v12 + 80));

  return sub_24F06D090(a1, v2 + v10, v15, v6, v5, v7, v8, a2, v13, v14);
}

uint64_t objectdestroyTm_51()
{
  v1 = *(v0 + 32);
  v10[0] = *(v0 + 16);
  v10[1] = v1;
  v2 = type metadata accessor for BaseShelfPageView(0, v10);
  v3 = v0 + ((*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80));
  swift_unknownObjectRelease();
  v4 = *(v2 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24F923E98();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = *(v2 + 60);
  v7 = sub_24F9234D8();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_24F072A50(uint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v9 = *(type metadata accessor for BaseShelfPageView(0, v12) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_24F06DE98(a1, a2, v10, v5, v6, v7, v8);
}

unint64_t sub_24F072B1C()
{
  result = qword_27F238208;
  if (!qword_27F238208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238208);
  }

  return result;
}

uint64_t sub_24F072B78()
{
  v1 = *(v0 + 32);
  v15[0] = *(v0 + 16);
  v15[1] = v1;
  v2 = type metadata accessor for BaseShelfPageView(0, v15);
  v3 = (*(*(v2 - 8) + 80) + 56) & ~*(*(v2 - 8) + 80);
  v14 = *(*(v2 - 8) + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);

  v7 = v0 + v3;
  swift_unknownObjectRelease();
  v8 = *(v2 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_24F923E98();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  v10 = *(v2 + 60);
  v11 = sub_24F9234D8();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v7 + v10, 1, v11))
  {
    (*(v12 + 8))(v7 + v10, v11);
  }

  (*(v5 + 8))(v0 + ((((v14 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6), v4);
  return swift_deallocObject();
}

uint64_t sub_24F072DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  v16[0] = v3[2];
  v7 = v16[0];
  v16[1] = v8;
  v16[2] = v9;
  v16[3] = v10;
  v11 = *(type metadata accessor for BaseShelfPageView(0, v16) - 8);
  v12 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710) - 8);
  return sub_24F06D6EC(a1, a2, v3[6], v3 + v12, v3 + ((v13 + *(v14 + 80) + 16) & ~*(v14 + 80)), v7, v8, v9, a3, *(v3 + v13), *(v3 + v13 + 8), v10);
}

uint64_t sub_24F072F20()
{

  return swift_deallocObject();
}

void sub_24F072FDC(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Shelf(319);
    if (v2 <= 0x3F)
    {
      sub_24F0736AC(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CGSize(319);
        if (v4 <= 0x3F)
        {
          sub_24F073750(319, &qword_27F2382A0, MEMORY[0x277D21DB0], MEMORY[0x277D21E28]);
          if (v5 <= 0x3F)
          {
            sub_24E6C5550();
            if (v6 <= 0x3F)
            {
              sub_24F073750(319, &qword_27F2381D8, MEMORY[0x277CDF3E0], MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_24F073750(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
                if (v8 <= 0x3F)
                {
                  sub_24E684120(319);
                  if (v9 <= 0x3F)
                  {
                    sub_24EA5C338();
                    if (v10 <= 0x3F)
                    {
                      sub_24F073750(319, &qword_27F2168D0, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
                      if (v11 <= 0x3F)
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

uint64_t sub_24F073228(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[16];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2325E8, &unk_24F9C3400);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[18];
    goto LABEL_13;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[21];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[22];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
  v17 = *(*(v16 - 8) + 48);
  v18 = &a1[a3[25]];

  return v17(v18, a2, v16);
}

char *sub_24F073474(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[16];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2325E8, &unk_24F9C3400);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[18];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[21];
    goto LABEL_11;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[22];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
  v17 = *(*(v16 - 8) + 56);
  v18 = &v5[a4[25]];

  return v17(v18, a2, a2, v16);
}

void sub_24F0736AC(uint64_t a1)
{
  if (!qword_27F238298)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225188, &qword_24F974D98);
    v3 = sub_24E602068(qword_27F238210, &qword_27F225188, &qword_24F974D98, MEMORY[0x277D83980]);
    v5 = type metadata accessor for ShelfPageContext(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27F238298);
    }
  }
}

void sub_24F073750(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24F0737B4(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225188, &qword_24F974D98);
  v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2381E0, &unk_24F9C3490);
  v3 = a1[1];
  v13 = *a1;
  v14 = v3;
  v4 = type metadata accessor for BaseShelfPageView.ShelfContentView(255, &v13);
  v5 = sub_24E602068(&qword_27F2381E8, &qword_27F2381E0, &unk_24F9C3490, MEMORY[0x277D7EC38]);
  *&v13 = v2;
  *(&v13 + 1) = MEMORY[0x277D84030];
  *&v14 = v4;
  *(&v14 + 1) = v5;
  v15 = MEMORY[0x277D84038];
  sub_24F927248();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v6 = sub_24F921D68();
  WitnessTable = swift_getWitnessTable();
  *&v13 = v6;
  *(&v13 + 1) = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v9 = sub_24F928FD8();
  *&v13 = v6;
  *(&v13 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v13 = OpaqueTypeMetadata2;
  *(&v13 + 1) = v9;
  *&v14 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C7A0, &qword_24F990BE8);
  sub_24F924038();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2381F0, &unk_24F9C34A0);
  sub_24F924038();
  *&v13 = OpaqueTypeMetadata2;
  *(&v13 + 1) = v9;
  *&v14 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v11 = MEMORY[0x277CE0868];
  sub_24E602068(&qword_27F22C798, &qword_27F22C7A0, &qword_24F990BE8, MEMORY[0x277CE0868]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24E602068(&qword_27F2381F8, &qword_27F2381F0, &unk_24F9C34A0, v11);
  swift_getWitnessTable();
  sub_24F924278();
  swift_getWitnessTable();
  sub_24F923B88();
  return swift_getWitnessTable();
}

uint64_t sub_24F073B74()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v6 = *(type metadata accessor for BaseShelfPageView.ShelfContentView(0, (v1 + 2)) - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  v1[6] = v8;
  *v8 = v1;
  v8[1] = sub_24F073C78;

  return sub_24F070918(v0 + v7, v2, v3, v4);
}

uint64_t sub_24F073C78()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24F073D6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_69Tm()
{
  v1 = *(v0 + 32);
  v21[0] = *(v0 + 16);
  v21[1] = v1;
  v2 = type metadata accessor for BaseShelfPageView.ShelfContentView(0, v21);
  v3 = v0 + ((*(*(v2 - 1) + 80) + 48) & ~*(*(v2 - 1) + 80));
  swift_unknownObjectRelease();

  v4 = v2[16];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);
  (*(*(v5 - 8) + 8))(v3 + v4, v5);

  v6 = v2[18];
  v7 = sub_24F9234D8();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  v9 = v2[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_24F923E98();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  else
  {
  }

  v11 = v2[22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_24F925218();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v3 + v11, 1, v12))
    {
      (*(v13 + 8))(v3 + v11, v12);
    }
  }

  else
  {
  }

  v14 = v2[23];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_24F925218();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v3 + v14, 1, v15))
    {
      (*(v16 + 8))(v3 + v14, v15);
    }
  }

  else
  {
  }

  v17 = v3 + v2[24];
  sub_24E669FC4(*v17, *(v17 + 8), *(v17 + 16), *(v17 + 24), *(v17 + 32));
  v18 = v2[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_24F923F78();
    (*(*(v19 - 8) + 8))(v3 + v18, v19);
  }

  else
  {
  }

  return swift_deallocObject();
}

double sub_24F0741E0()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v8[0] = v0[2];
  v1 = v8[0];
  v8[1] = v2;
  v8[2] = v3;
  v8[3] = v4;
  v5 = *(type metadata accessor for BaseShelfPageView.ShelfContentView(0, v8) - 8);
  v6 = v0 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_24F070870(v6, v1, v2, v3, v4);
}

unint64_t sub_24F074284()
{
  result = qword_27F2382B0;
  if (!qword_27F2382B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2382A8, &unk_24F9C3758);
    sub_24F074340(qword_27F2382B8, type metadata accessor for ShelfView, &unk_24F9CEF88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2382B0);
  }

  return result;
}

uint64_t sub_24F074340(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F074388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24F0743C4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[3];
  v4 = *(a1 + 1);
  sub_24F92C4A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2382A8, &unk_24F9C3758);
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  v5 = v1;
  v6 = v4;
  v7 = v2;
  type metadata accessor for BaseShelfPageView.PaginationView(255, &v5);
  sub_24F92C4A8();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  return swift_getWitnessTable();
}

uint64_t sub_24F074524()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F074564()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[8];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24E614970;

  return sub_24F071244(v2, v3, v4);
}

uint64_t sub_24F074638()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F211A80, &qword_24F935578);
  sub_24F07469C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24F07469C()
{
  result = qword_27F238348;
  if (!qword_27F238348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F211A80, &qword_24F935578);
    sub_24F074728();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238348);
  }

  return result;
}

unint64_t sub_24F074728()
{
  result = qword_27F238350;
  if (!qword_27F238350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238340, &unk_24F9C3820);
    sub_24E602068(&qword_27F255080, &qword_27F215FD0, &qword_24F9415F0, MEMORY[0x277CDD7F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238350);
  }

  return result;
}

uint64_t sub_24F0747E8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F928818();
  v114 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_24F91F6B8();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v110 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v10 - 8);
  v113 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v96 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v96 - v16;
  type metadata accessor for UpdatesLockup(0);
  v18 = sub_24F91F648();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v19 = a1;
  v20 = sub_24EEFE3B8(v19, v17, 0, 0, a2, a3, 0);
  if (!v20)
  {
    goto LABEL_18;
  }

  v21 = v20;
  v22 = [v19 updateDictionary];
  if (!v22)
  {

LABEL_18:

    return 0;
  }

  v23 = v22;
  v24 = sub_24F92AE38();

  v128 = MEMORY[0x277D84F90];
  *&v115 = 0xD000000000000016;
  *(&v115 + 1) = 0x800000024FA629E0;
  sub_24F92C7F8();
  v25 = *(v24 + 16);
  v109 = v8;
  if (v25 && (v26 = sub_24E76D934(&v125), (v27 & 1) != 0))
  {
    sub_24E643A9C(*(v24 + 56) + 32 * v26, &v120);
    sub_24E6585F8(&v125);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238358, &unk_24F9C3840);
    if (swift_dynamicCast())
    {
      v28 = v115;
      if (!*(v115 + 16) || (v29 = sub_24E76D644(0x6C70704173707061, 0xE900000000000065), (v30 & 1) == 0))
      {
LABEL_25:

        goto LABEL_14;
      }

      v31 = *(*(v28 + 56) + 8 * v29);
      swift_unknownObjectRetain();

      *&v125 = v31;
      if (swift_dynamicCast())
      {
        v32 = v120;
        if (*(v120 + 16))
        {
          v33 = sub_24E76D644(1701667182, 0xE400000000000000);
          if (v34)
          {
            v35 = *(*(v32 + 56) + 8 * v33);
            swift_unknownObjectRetain();

            *&v120 = v35;
            swift_unknownObjectRetain();
            v36 = swift_dynamicCast();
            v97 = v6;
            if (v36)
            {
              v38 = *(&v125 + 1);
              v37 = v125;
              v39._countAndFlagsBits = 0xD00000000000002CLL;
              v39._object = 0x800000024FA69CA0;
              v40._countAndFlagsBits = 0;
              v40._object = 0xE000000000000000;
              v41 = localizedString(_:comment:)(v39, v40);
              countAndFlagsBits = v41._countAndFlagsBits;
              object = v41._object;
            }

            else
            {
              countAndFlagsBits = 0;
              object = 0;
              v37 = 0;
              v38 = 0;
            }

            v127 = 0;
            v125 = 0u;
            v126 = 0u;
            v78._countAndFlagsBits = 0x495441525F454741;
            v78._object = 0xEA0000000000474ELL;
            v79._countAndFlagsBits = 0;
            v79._object = 0xE000000000000000;
            v80 = localizedString(_:comment:)(v78, v79);
            v107 = v80._countAndFlagsBits;
            v106 = v80._object;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140, &unk_24F96D8D0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_24F93DE60;
            strcpy((inited + 32), "contentRating");
            *(inited + 46) = -4864;
            *(inited + 72) = swift_getObjectType();
            *(inited + 48) = v35;
            swift_unknownObjectRetain();
            v105 = sub_24E608448(inited);
            swift_setDeallocating();
            sub_24E601704(inited + 32, &qword_27F2135C0, &qword_24F970400);
            v82 = sub_24F929608();
            (*(*(v82 - 8) + 56))(v14, 1, 1, v82);
            type metadata accessor for Badge(0);
            v83 = swift_allocObject();
            *(v83 + 152) = 0u;
            *(v83 + 168) = 0u;
            sub_24E60169C(&v125, &v115, &qword_27F235830, &qword_24F93B8C0);
            if (*(&v116 + 1))
            {
              v120 = v115;
              v121 = v116;
              v122 = v117;
            }

            else
            {
              v84 = v110;
              sub_24F91F6A8();
              v85 = sub_24F91F668();
              v104 = countAndFlagsBits;
              v86 = v38;
              v87 = v37;
              v88 = v85;
              v90 = v89;
              (*(v111 + 8))(v84, v112);
              v123 = v88;
              v124 = v90;
              v37 = v87;
              v38 = v86;
              countAndFlagsBits = v104;
              sub_24F92C7F8();
              sub_24E601704(&v115, &qword_27F235830, &qword_24F93B8C0);
            }

            sub_24E601704(&v125, &qword_27F235830, &qword_24F93B8C0);
            v91 = v121;
            *(v83 + 184) = v120;
            *(v83 + 200) = v91;
            *(v83 + 216) = v122;
            v92 = sub_24E65E0D4(v14, v83 + OBJC_IVAR____TtC12GameStoreKit5Badge_impressionMetrics);
            *(v83 + 16) = 3328;
            *(v83 + 40) = 0;
            *(v83 + 48) = 0;
            v93 = v106;
            *(v83 + 24) = v107;
            *(v83 + 32) = v93;
            v94 = v105;
            *(v83 + 64) = 0;
            *(v83 + 72) = v94;
            *(v83 + 80) = 0;
            *(v83 + 56) = 0;
            *(v83 + 88) = v37;
            *(v83 + 96) = v38;
            v95 = object;
            *(v83 + 104) = countAndFlagsBits;
            *(v83 + 112) = v95;
            *(v83 + 144) = 0;
            *(v83 + 120) = 0;
            *(v83 + 128) = 0;
            *(v83 + 136) = 1;
            MEMORY[0x253050F00](v92);
            if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_24F92B5E8();
            }

            sub_24F92B638();
            swift_unknownObjectRelease();
            v43 = v128;
            v6 = v97;
            v8 = v109;
            goto LABEL_15;
          }
        }

        goto LABEL_25;
      }
    }
  }

  else
  {

    sub_24E6585F8(&v125);
  }

LABEL_14:
  v43 = MEMORY[0x277D84F90];
LABEL_15:
  v44 = v21[3];
  v107 = v21[2];

  object = v44;

  v45 = [v19 bundleIdentifier];
  v46 = v6;
  if (v45)
  {
    v47 = v45;
    v104 = sub_24F92B0D8();
    v103 = v48;
  }

  else
  {
    v104 = 0;
    v103 = 0;
  }

  v50 = v21[6];
  v51 = v21[11];
  v101 = v21[10];
  v52 = v21[13];
  v99 = v21[12];
  v53 = v21[29];
  v105 = v21[30];

  v98 = v50;

  v102 = v51;

  v100 = v52;

  v106 = v53;

  sub_24F928808();
  type metadata accessor for ProductPage(0);
  v49 = swift_allocObject();
  v54 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_media;
  v55 = MEMORY[0x277D84F90];
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_media) = MEMORY[0x277D84F90];
  v56 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_shelfMapping;
  *(v49 + v56) = sub_24E609890(v55);
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_shareAction) = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_developerAction) = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_ageRatingAction) = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberArtwork) = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberArtworkForCompactDisplay) = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberVideo) = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberStyle) = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_logoArtwork) = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_navigationBarIconArtwork) = 0;
  swift_beginAccess();
  *(v49 + v54) = v55;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_badges) = v43;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_isComplete) = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageTopBackgroundColor) = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageBottomBackgroundColor) = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_hasDarkUserInterfaceStyle) = 2;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_purchasedOrdering) = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_notPurchasedOrdering) = 0;
  v57 = sub_24E609890(v55);
  swift_beginAccess();
  *(v49 + v56) = v57;

  v58 = v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy;
  *v58 = 0u;
  *(v58 + 16) = 0u;
  *(v58 + 32) = 0u;
  *(v58 + 48) = 0;
  v59 = (v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_mediaSectionTitle);
  *v59 = 0;
  v59[1] = 0;
  v60 = v114;
  v61 = v46;
  (*(v114 + 16))(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageMetrics, v8, v46);
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageRenderEvent) = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_expandedOfferDetails) = 0;
  v62 = (v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_regularPriceFormatted);
  *v62 = 0;
  v62[1] = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_theme) = 0;
  v63 = v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_externalVersionIdentifier;
  *v63 = 0;
  *(v63 + 8) = 1;
  v64 = (v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_updateBuyParams);
  *v64 = 0;
  v64[1] = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_titleOfferDisplayProperties) = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_banner) = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_secondaryBanner) = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_fullProductFetchedAction) = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_appPromotionDetailPageAction) = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageRefreshPolicy) = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_alwaysAllowReviews) = 0;
  v65 = sub_24F929608();
  v125 = 0u;
  v126 = 0u;
  v127 = 0;
  v66 = v113;
  (*(*(v65 - 8) + 56))(v113, 1, 1, v65);
  *(v49 + 424) = 4;
  sub_24E60169C(&v125, &v120, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v121 + 1))
  {
    v67 = v121;
    *(v49 + 448) = v120;
    *(v49 + 464) = v67;
    *(v49 + 480) = v122;
  }

  else
  {
    v68 = v110;
    sub_24F91F6A8();
    v69 = sub_24F91F668();
    v71 = v70;
    (*(v111 + 8))(v68, v112);
    v118 = v69;
    v119 = v71;
    sub_24F92C7F8();
    sub_24E601704(&v120, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E60169C(v66, v49 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  v72 = object;
  *(v49 + 16) = v107;
  *(v49 + 24) = v72;
  v73 = v103;
  *(v49 + 32) = v104;
  *(v49 + 40) = v73;
  *(v49 + 48) = v98;
  *(v49 + 56) = 0;
  *(v49 + 64) = 0;
  *(v49 + 72) = 0;
  v74 = v102;
  *(v49 + 80) = v101;
  *(v49 + 88) = v74;
  v75 = v100;
  *(v49 + 96) = v99;
  *(v49 + 104) = v75;
  *(v49 + 120) = 0;
  *(v49 + 128) = 0;
  *(v49 + 112) = 0;
  *(v49 + 136) = 2;
  *(v49 + 144) = 0;
  *(v49 + 152) = 0;
  *(v49 + 216) = 0u;
  *(v49 + 200) = 0u;
  *(v49 + 184) = 0u;
  *(v49 + 376) = 0u;
  *(v49 + 392) = 0u;
  *(v49 + 408) = 0x8000;
  *(v49 + 360) = 0;
  *(v49 + 416) = 0;
  *(v49 + 432) = MEMORY[0x277D84FA0];
  *(v49 + 168) = 0;
  *(v49 + 176) = 0;
  *(v49 + 160) = 0;
  *(v49 + 248) = 0;
  *(v49 + 256) = 0;
  v76 = v105;
  *(v49 + 232) = v106;
  *(v49 + 240) = v76;
  *(v49 + 264) = 0u;
  *(v49 + 280) = 0u;
  *(v49 + 296) = 0u;
  *(v49 + 312) = 0u;
  *(v49 + 328) = 0u;
  sub_24E601704(v66, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(&v125, &qword_27F235830, &qword_24F93B8C0);
  (*(v60 + 8))(v109, v61);
  *(v49 + 344) = MEMORY[0x277D84F90];
  *(v49 + 352) = 0;
  *(v49 + 440) = 0;
  *(v49 + 368) = 0;
  return v49;
}

uint64_t sub_24F075674(double a1, double a2)
{
  v5 = sub_24F91F6B8();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v35 - v9;
  v11 = sub_24F91EAA8();
  v12 = *(v11 - 8);
  *&v13 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v2;
  v17 = [v2 playerID];
  v18 = sub_24F92B0D8();
  v20 = v19;

  v37[0] = v18;
  v37[1] = v20;
  sub_24F91EA28();
  sub_24E600AEC();
  v21 = sub_24F92C578();
  v23 = v22;
  (*(v12 + 8))(v15, v11);

  if (!v23)
  {
    v24 = [v16 playerID];
    v21 = sub_24F92B0D8();
    v23 = v25;
  }

  strcpy(v37, "avatarimage://");
  HIBYTE(v37[1]) = -18;
  MEMORY[0x253050C20](v21, v23);

  v26 = v37[0];
  v27 = v37[1];
  v28 = sub_24F929608();
  (*(*(v28 - 8) + 56))(v10, 1, 1, v28);
  type metadata accessor for Artwork(0);
  v29 = swift_allocObject();
  *(v29 + 152) = 0u;
  *(v29 + 168) = 0u;
  *(v29 + 184) = 0;
  sub_24F91F6A8();
  v30 = sub_24F91F668();
  v32 = v31;
  (*(v35 + 8))(v7, v36);
  v37[0] = v30;
  v37[1] = v32;
  sub_24F92C7F8();
  sub_24E643844(v10, v29 + OBJC_IVAR____TtC12GameStoreKit7Artwork_impressionMetrics);
  *(v29 + 16) = v26;
  *(v29 + 24) = v27;
  *(v29 + 32) = a1;
  *(v29 + 40) = a2;
  *(v29 + 48) = 0;
  *(v29 + 56) = 0;
  *(v29 + 72) = 25186;
  *(v29 + 80) = 0xE200000000000000;
  *(v29 + 64) = 0;
  *(v29 + 104) = MEMORY[0x277D84F90];
  v37[0] = 25186;
  v37[1] = 0xE200000000000000;
  v33 = Artwork.Crop.preferredContentMode.getter();
  sub_24EB05BC8(v10);
  *(v29 + 88) = v33;
  *(v29 + 96) = 3;
  return v29;
}

void PlayableFocusAreaConfiguration.init(horizontalContainerPercentage:verticalContainerPercentage:pauseVisiblityThreshold:playVisiblityThreshold:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

uint64_t sub_24F075A4C()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F39D7E8);
  __swift_project_value_buffer(v4, qword_27F39D7E8);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

void sub_24F075C44(uint64_t a1, uint64_t a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v37 - v7;
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9298F8();
  v13 = MEMORY[0x25304F260]();
  if (v13)
  {
    v39 = v13;
    sub_24F92C2D8();
    if (v3)
    {
      if (qword_27F210EB0 != -1)
      {
        swift_once();
      }

      v14 = sub_24F92AAE8();
      __swift_project_value_buffer(v14, qword_27F39D7E8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A400;
      sub_24F9283A8();
      swift_getErrorValue();
      v15 = v41;
      v16 = v42;
      v45 = v42;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v43);
      (*(*(v16 - 8) + 16))(boxed_opaque_existential_1, v15, v16);
      sub_24F928438();
      sub_24E601704(&v43, &qword_27F2129B0, &unk_24F945320);
      sub_24F92A5A8();

      v43 = 0;
      v44 = 0xE000000000000000;
      sub_24F92C888();
      MEMORY[0x253050C20](0xD000000000000021, 0x800000024FA6A150);
      MEMORY[0x253050C20](0xD00000000000003ALL, 0x800000024FA6A180);
      v40 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
      sub_24F92CA38();
      MEMORY[0x253050C20](46, 0xE100000000000000);
      sub_24F92A868();
      sub_24E979414();
      swift_allocError();
      sub_24F92A808();
      swift_willThrow();

      return;
    }

    v38 = a1;
    sub_24F9282B8();
    v19 = sub_24F92AC28();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v8, 1, v19) == 1)
    {
      (*(v10 + 8))(v12, v9);
      sub_24E601704(v8, &qword_27F2213B0, &qword_24F965EC0);
    }

    else
    {
      v37[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238370, &qword_24F9C38B8);
      v21 = sub_24F92ABC8();
      (*(v10 + 8))(v12, v9);
      (*(v20 + 8))(v8, v19);
      if (v21)
      {
        v22 = objc_opt_self();
        v23 = sub_24F92B588();
        v24 = [v22 selectionFromRawMarketingItems_];

        if (a3)
        {
          v25 = a3;
          [v25 doubleValue];
          v26 = [v24 promiseWithTimeout_];

          v24 = v26;
        }

        v27 = v38;
        v43 = 0;
        v28 = [v24 resultWithError_];
        if (v28)
        {
          v29 = v28;
          v30 = v43;
          v31 = [v29 rawValues];

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F24E870, &qword_24F967D90);
          v32 = sub_24F92AE38();

          v43 = v32;

          v33 = sub_24F92CF68();
          v34 = [objc_opt_self() valueWithObject:v33 inContext:v27];
          swift_unknownObjectRelease();
          if (v34)
          {
          }

          else
          {
            __break(1u);
          }

          return;
        }

        v35 = v43;

        v36 = sub_24F91F278();

        swift_willThrow();
        v43 = 0;
        v44 = 0xE000000000000000;
        sub_24F92C888();
        MEMORY[0x253050C20](0xD000000000000021, 0x800000024FA6A150);
        MEMORY[0x253050C20](0xD00000000000002ELL, 0x800000024FA6A200);
        v40 = v36;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
        sub_24F92CA38();
        MEMORY[0x253050C20](46, 0xE100000000000000);
        sub_24F92A868();
        sub_24E979414();
        swift_allocError();
        sub_24F92A808();
        swift_willThrow();

LABEL_18:

        return;
      }
    }

    v43 = 0;
    v44 = 0xE000000000000000;
    sub_24F92C888();
    MEMORY[0x253050C20](0xD000000000000021, 0x800000024FA6A150);
    MEMORY[0x253050C20](0xD000000000000031, 0x800000024FA6A1C0);
    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
    goto LABEL_18;
  }

  if (qword_27F210EB0 != -1)
  {
    swift_once();
  }

  v18 = sub_24F92AAE8();
  __swift_project_value_buffer(v18, qword_27F39D7E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A5A8();

  sub_24F92A868();
  sub_24E979414();
  swift_allocError();
  sub_24F92A808();
  swift_willThrow();
}

const char *sub_24F076724(void *a1, uint64_t a2, void *a3, __n128 a4)
{
  v8 = sub_24F92AC68();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9298F8();
  v12 = MEMORY[0x25304F260]();
  if (v12)
  {
    v13 = v12;
    v22 = v9;
    v14 = *(a2 + OBJC_IVAR____TtC12GameStoreKit14JSArcadeObject_accounts);
    v15 = *(a2 + OBJC_IVAR____TtC12GameStoreKit14JSArcadeObject_arcadeStore);
    v16 = swift_allocObject();
    v16[2] = v14;
    v16[3] = a3;
    v16[4] = v13;
    v16[5] = v15;
    v17 = a3;

    v18 = v15;
    v19 = a1;

    sub_24F92AC48();
    if (v4)
    {
    }

    else
    {
      v14 = sub_24F92AC58();

      (*(v22 + 8))(v11, v8);
    }
  }

  else
  {
    v14 = "GameStoreKit.JSArcadeObject";
    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
  }

  return v14;
}

void sub_24F076944(void *a1, unint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v74 = a7;
  v84 = a6;
  v72 = a5;
  v82 = a3;
  v73 = a2;
  v83 = a1;
  v86 = sub_24F922028();
  v80 = *(v86 - 8);
  v7 = *(v80 + 64);
  MEMORY[0x28223BE20](v86);
  v78 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v79 = &v66 - v9;
  v76 = sub_24F9281B8();
  v75 = *(v76 - 8);
  v10 = *(v75 + 64);
  MEMORY[0x28223BE20](v76);
  v77 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v85 = &v66 - v12;
  v71 = sub_24F9298B8();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v69 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F92A868();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E0, &unk_24F9694C0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v66 - v20;
  MEMORY[0x2530504F0](v19);
  v22 = sub_24F92AB18();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_24E601704(v21, &qword_27F2330E0, &unk_24F9694C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_24F93DE60;
    sub_24F92A808();
    v25 = sub_24F92A848();
    (*(v15 + 8))(v17, v14);
    *(v24 + 56) = sub_24E69A5C4(0, &qword_27F21C8E0, 0x277CD4658);
    *(v24 + 32) = v25;
    v26 = v81;
    v27 = sub_24F9281A8();
    if (v26)
    {

      if (qword_27F210EB0 != -1)
      {
        swift_once();
      }

      v28 = sub_24F92AAE8();
      __swift_project_value_buffer(v28, qword_27F39D7E8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A400;
      sub_24F9283A8();
      swift_getErrorValue();
      v29 = v91;
      v30 = v92;
      v88 = v92;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(aBlock);
      (*(*(v30 - 1) + 16))(boxed_opaque_existential_1, v29, v30);
      sub_24F928438();
      sub_24E601704(aBlock, &qword_27F2129B0, &unk_24F945320);
      sub_24F92A5A8();
    }

    else
    {
      v46 = v27;
    }
  }

  else
  {
    v68 = sub_24F92AB08();
    (*(v23 + 8))(v21, v22);
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    v33 = v82;
    if (v72)
    {
      v34 = v72;
      [v34 doubleValue];
      if (v35 <= COERCE_DOUBLE(1))
      {
      }

      else
      {
        [v34 doubleValue];
        v36 = v75;
        v37 = v33;
        v38 = v32;
        v39 = v76;
        (*(v75 + 16))(v85, v37, v76);
        v40 = (*(v36 + 80) + 24) & ~*(v36 + 80);
        v41 = swift_allocObject();
        *(v41 + 16) = v38;
        v42 = v39;
        v32 = v38;
        v33 = v82;
        (*(v36 + 32))(v41 + v40, v85, v42);
        v43 = v83;
        *(v41 + ((v10 + v40 + 7) & 0xFFFFFFFFFFFFFFF8)) = v83;

        v44 = v43;
        v45 = v69;
        sub_24F9298C8();

        (*(v70 + 8))(v45, v71);
      }
    }

    v67 = v32;
    sub_24F929778();
    sub_24F929768();
    v47 = v79;
    sub_24F921FF8();
    sub_24F92C058();
    v48 = sub_24F929768();
    sub_24F921FE8();

    v49 = v80;
    (*(v80 + 16))(v78, v47, v86);
    v50 = v75;
    v51 = *(v75 + 16);
    v52 = v76;
    v51(v85, v33, v76);
    v51(v77, v73, v52);
    v53 = (*(v49 + 80) + 16) & ~*(v49 + 80);
    v82 = (v7 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = (v82 + 15) & 0xFFFFFFFFFFFFFFF8;
    v55 = *(v50 + 80);
    v56 = (v55 + 8 + v54) & ~v55;
    v57 = (v10 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v58 = (v55 + 8 + v57) & ~v55;
    v59 = swift_allocObject();
    (*(v49 + 32))(v59 + v53, v78, v86);
    v60 = v85;
    *(v59 + v82) = v84;
    *(v59 + v54) = v67;
    v61 = *(v50 + 32);
    v61(v59 + v56, v60, v52);
    v62 = v83;
    *(v59 + v57) = v83;
    v61(v59 + v58, v77, v52);
    v89 = sub_24F0786EC;
    v90 = v59;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24F0782AC;
    v88 = &block_descriptor_108;
    v63 = _Block_copy(aBlock);

    v64 = v62;

    v65 = v68;
    [v74 topAppsForAccount:v68 completionBlock:v63];
    _Block_release(v63);

    (*(v80 + 8))(v79, v86);
  }
}

void sub_24F077354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (*(a1 + 16))
  {
    if (qword_27F210EB0 != -1)
    {
      swift_once();
    }

    v5 = sub_24F92AAE8();
    __swift_project_value_buffer(v5, qword_27F39D7E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();
  }

  else
  {
    if (qword_27F210EB0 != -1)
    {
      swift_once();
    }

    v6 = sub_24F92AAE8();
    __swift_project_value_buffer(v6, qword_27F39D7E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_24F93DE60;
    v8 = sub_24E69A5C4(0, &qword_27F21C8E0, 0x277CD4658);
    sub_24F92A868();
    sub_24E979414();
    v9 = swift_allocError();
    sub_24F92A808();
    v10 = MEMORY[0x253051C90](v9, a3);

    *(v7 + 56) = v8;
    *(v7 + 32) = v10;
    v11 = sub_24F9281A8();

    swift_beginAccess();
    *(a1 + 16) = 1;
  }
}

double sub_24F0777EC(uint64_t a1, void *a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v35 = a9;
  v36 = a2;
  v38 = a8;
  v39 = a5;
  v33[1] = a6;
  v37 = a1;
  v11 = sub_24F9281B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v34 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v33 - v15;
  sub_24F92C048();
  sub_24F929778();
  v17 = sub_24F929768();
  sub_24F921FE8();

  v18 = *(v12 + 16);
  v18(v16, a7, v11);
  v19 = v11;
  v18(v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v11);
  v20 = *(v12 + 80);
  v21 = (v20 + 32) & ~v20;
  v22 = (v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v20 + v23 + 8) & ~v20;
  v25 = swift_allocObject();
  *(v25 + 16) = a6;
  v26 = v36;
  *(v25 + 24) = v36;
  v27 = *(v12 + 32);
  v27(v25 + v21, v16, v19);
  v29 = v37;
  v28 = v38;
  *(v25 + v22) = v38;
  *(v25 + v23) = v29;
  v27(v25 + v24, v34, v19);

  v30 = v26;

  v31 = v28;
  sub_24F9298E8();

  return result;
}

void sub_24F077A40(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_24F92AAE8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a1 + 16))
  {
    if (qword_27F210EB0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v9, qword_27F39D7E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();
  }

  else
  {
    v30 = a4;
    if (a2)
    {
      v13 = a2;
      if (qword_27F210EB0 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v9, qword_27F39D7E8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A400;
      sub_24F9283A8();
      swift_getErrorValue();
      v14 = v31;
      v15 = v32;
      v34 = v32;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
      (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v14, v15);
      sub_24F928438();
      sub_24E601704(v33, &qword_27F2129B0, &unk_24F945320);
      sub_24F92A588();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_24F93DE60;
      v18 = sub_24E69A5C4(0, &qword_27F21C8E0, 0x277CD4658);
      v19 = MEMORY[0x253051C90](a2, v30);
      *(v17 + 56) = v18;
      *(v17 + 32) = v19;
      v24 = sub_24F9281A8();
    }

    else
    {
      if (qword_27F210EB0 != -1)
      {
        swift_once();
      }

      v20 = __swift_project_value_buffer(v9, qword_27F39D7E8);
      (*(v10 + 16))(v12, v20, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A400;
      sub_24F9283A8();
      if (a5)
      {
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
        v22 = a5;
        v23 = a5;
      }

      else
      {
        v23 = 0;
        v21 = 0;
        v33[1] = 0;
        v33[2] = 0;
        v22 = MEMORY[0x277D84F90];
      }

      v33[0] = v23;
      v34 = v21;

      sub_24F9283B8();
      sub_24E601704(v33, &qword_27F2129B0, &unk_24F945320);
      sub_24F92A588();

      (*(v10 + 8))(v12, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_24F93DE60;
      v33[0] = v22;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
      v26 = sub_24F92CF68();
      v27 = [objc_opt_self() valueWithObject:v26 inContext:v30];
      swift_unknownObjectRelease();
      *(v25 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214928, &unk_24F93DFD0);
      *(v25 + 32) = v27;
      v28 = sub_24F9281A8();
    }

    swift_beginAccess();
    *(a1 + 16) = 1;
  }
}

uint64_t sub_24F0782AC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_24F92B5A8();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_24F0784C0()
{

  return swift_deallocObject();
}

uint64_t sub_24F078540()
{
  v12 = sub_24F922028();
  v1 = *(v12 - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = sub_24F9281B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 8 + v3) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v6 + 8 + v8) & ~v6;
  (*(v1 + 8))(v0 + v2, v12);

  v10 = *(v5 + 8);
  v10(v0 + v7, v4);

  v10(v0 + v9, v4);

  return swift_deallocObject();
}

double sub_24F0786EC(uint64_t a1, void *a2)
{
  v5 = *(sub_24F922028() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_24F9281B8() - 8);
  v11 = *(v9 + 80);
  v12 = (v11 + 8 + v8) & ~v11;
  v13 = (*(v9 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v2 + v7);
  v15 = *(v2 + v8);
  v16 = *(v2 + v13);

  return sub_24F0777EC(a1, a2, v10, v2 + v6, v14, v15, v2 + v12, v16, v2 + ((v11 + 8 + v13) & ~v11));
}

uint64_t block_copy_helper_108(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F07883C(__n128 a1)
{
  v2 = sub_24F9281B8();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

void sub_24F078914(__n128 a1)
{
  v2 = *(sub_24F9281B8() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_24F077354(v4, v1 + v3, v5);
}

uint64_t sub_24F0789A4(__n128 a1)
{
  v2 = sub_24F9281B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  v7 = *(v3 + 8);
  v7(v1 + v5, v2);

  v7(v1 + ((v4 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v4), v2);

  return swift_deallocObject();
}

void sub_24F078AC4(__n128 a1)
{
  v2 = *(sub_24F9281B8() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + v4);
  v8 = *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_24F077A40(v5, v6, v1 + v3, v7, v8);
}

__n128 ReviewsContainerLayout.init(metrics:ratingsView:tapToRateView:actionsView:reviewSummaryView:reviewsShelf:editorsChoiceView:ratingsSeparatorView:)@<Q0>(void *__src@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  memcpy((a9 + 280), __src, 0x160uLL);
  sub_24E612C80(a2, a9);
  sub_24E612C80(a3, a9 + 40);
  sub_24E612C80(a4, a9 + 80);
  v17 = *(a5 + 16);
  *(a9 + 120) = *a5;
  *(a9 + 136) = v17;
  *(a9 + 152) = *(a5 + 32);
  v18 = *(a6 + 16);
  *(a9 + 160) = *a6;
  *(a9 + 176) = v18;
  *(a9 + 192) = *(a6 + 32);
  *(a9 + 232) = *(a7 + 4);
  v19 = *a7;
  *(a9 + 216) = a7[1];
  *(a9 + 200) = v19;
  *(a9 + 272) = *(a8 + 32);
  result = *(a8 + 16);
  *(a9 + 240) = *a8;
  *(a9 + 256) = result;
  return result;
}

uint64_t ReviewsContainerLayout.Metrics.init(ratingsBottomSpace:tapToRateTopSpace:tapToRateBottomSpace:reviewSummaryBottomSpace:reviewsShelfTopSpace:editorsChoiceTopSpace:columnSpacer:marginInsets:bottomEdgeSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>)
{
  *(a9 + 112) = 0;
  *(a9 + 96) = 0u;
  *(a9 + 80) = 0u;
  v25 = a9 + 80;
  sub_24E612C80(a1, a9);
  sub_24E612C80(a2, a9 + 40);
  sub_24EA63A70(a3, v25);
  sub_24E612C80(a4, a9 + 120);
  sub_24E612C80(a5, a9 + 160);
  sub_24E612C80(a6, a9 + 200);
  sub_24E612C80(a7, a9 + 240);
  *(a9 + 280) = a10;
  *(a9 + 288) = a11;
  *(a9 + 296) = a12;
  *(a9 + 304) = a13;

  return sub_24E612C80(a8, a9 + 312);
}

uint64_t ReviewsContainerLayout.Metrics.ratingsBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

uint64_t ReviewsContainerLayout.Metrics.tapToRateTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));

  return sub_24E612C80(a1, v1 + 40);
}

uint64_t ReviewsContainerLayout.Metrics.reviewSummaryBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 120));

  return sub_24E612C80(a1, v1 + 120);
}

uint64_t ReviewsContainerLayout.Metrics.reviewsShelfTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 160));

  return sub_24E612C80(a1, v1 + 160);
}

uint64_t ReviewsContainerLayout.Metrics.editorsChoiceTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 200));

  return sub_24E612C80(a1, v1 + 200);
}

uint64_t ReviewsContainerLayout.Metrics.columnSpacer.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 240));

  return sub_24E612C80(a1, v1 + 240);
}

void ReviewsContainerLayout.Metrics.marginInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[35] = a1;
  v4[36] = a2;
  v4[37] = a3;
  v4[38] = a4;
}

uint64_t ReviewsContainerLayout.Metrics.bottomEdgeSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 312));

  return sub_24E612C80(a1, v1 + 312);
}

double ReviewsContainerLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  v4 = v3;
  v35 = sub_24F92CDB8();
  v7 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v3 + 5, v3[8]);
  v10 = sub_24F922238();
  sub_24E60169C((v3 + 20), v38, &qword_27F229780, &unk_24F965BB0);
  if (v39)
  {
    __swift_project_boxed_opaque_existential_1(v38, v39);
    v34 = sub_24F922238();
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  else
  {
    sub_24E601704(v38, &qword_27F229780, &unk_24F965BB0);
    v34 = 1;
  }

  sub_24E60169C((v3 + 25), v38, &qword_27F229780, &unk_24F965BB0);
  if (v39)
  {
    __swift_project_boxed_opaque_existential_1(v38, v39);
    v33 = sub_24F922238();
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  else
  {
    sub_24E601704(v38, &qword_27F229780, &unk_24F965BB0);
    v33 = 1;
  }

  __swift_project_boxed_opaque_existential_1(v3 + 10, v3[13]);
  v11 = sub_24F922238();
  sub_24E60169C((v3 + 15), v38, &qword_27F229780, &unk_24F965BB0);
  if (v39)
  {
    __swift_project_boxed_opaque_existential_1(v38, v39);
    v12 = sub_24F922238();
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  else
  {
    sub_24E601704(v38, &qword_27F229780, &unk_24F965BB0);
    v12 = 1;
  }

  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_24F922298();
  if ((v10 & v34 & v33 & v11 & 1) == 0)
  {
    v13 = v3[38];
    __swift_project_boxed_opaque_existential_1(v4 + 35, v4[38]);
    sub_24E8ED7D8(v13);
    sub_24F9223A8();
    (*(v7 + 8))(v9, v35);
  }

  if ((v12 & 1) == 0)
  {
    v14 = v4[53];
    __swift_project_boxed_opaque_existential_1(v4 + 50, v14);
    sub_24E8ED7D8(v14);
    sub_24F9223A8();
    (*(v7 + 8))(v9, v35);
  }

  sub_24F92C228();
  v15 = &selRef_hasManagedStateChangedFromAccount_toAccount_;
  v16 = [a1 traitCollection];
  v17 = sub_24F92BF68();

  if (v17 & 1) != 0 || (v18 = [a1 traitCollection], v19 = sub_24F92BF98(), v18, (v19))
  {
    if ((v10 & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1(v4 + 5, v4[8]);
      sub_24F922298();
    }

    if ((v12 & 1) == 0)
    {
      sub_24E60169C((v4 + 15), v38, &qword_27F229780, &unk_24F965BB0);
      if (v39)
      {
        __swift_project_boxed_opaque_existential_1(v38, v39);
        sub_24F922298();
        __swift_destroy_boxed_opaque_existential_1(v38);
      }

      else
      {
        sub_24E601704(v38, &qword_27F229780, &unk_24F965BB0);
      }
    }
  }

  else
  {
    v20 = v4[68];
    __swift_project_boxed_opaque_existential_1(v4 + 65, v20);
    sub_24E8ED7D8(v20);
    sub_24F9223A8();
    (*(v7 + 8))(v9, v35);
    if (v12)
    {
      v15 = &selRef_hasManagedStateChangedFromAccount_toAccount_;
    }

    else
    {
      sub_24F92C228();
      v32 = v21;
      sub_24E60169C((v4 + 15), v38, &qword_27F229780, &unk_24F965BB0);
      if (v39)
      {
        __swift_project_boxed_opaque_existential_1(v38, v39);
        sub_24F922298();
        __swift_destroy_boxed_opaque_existential_1(v38);
      }

      else
      {
        sub_24E601704(v38, &qword_27F229780, &unk_24F965BB0);
      }

      v15 = &selRef_hasManagedStateChangedFromAccount_toAccount_;
    }

    if ((v10 & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1(v4 + 5, v4[8]);
      sub_24F922298();
    }

    if ((v11 & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1(v4 + 10, v4[13]);
      sub_24F922298();
    }
  }

  sub_24E60169C((v4 + 20), &v36, &qword_27F229780, &unk_24F965BB0);
  if (v37)
  {
    sub_24E612C80(&v36, v38);
    if ((v34 & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1(v38, v39);
      sub_24F922298();
    }

    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  else
  {
    sub_24E601704(&v36, &qword_27F229780, &unk_24F965BB0);
  }

  sub_24E60169C((v4 + 25), &v36, &qword_27F229780, &unk_24F965BB0);
  if (v37)
  {
    sub_24E612C80(&v36, v38);
    if ((v33 & 1) == 0)
    {
      if ((v34 & 1) == 0)
      {
        v22 = v4[63];
        __swift_project_boxed_opaque_existential_1(v4 + 60, v22);
        sub_24E8ED7D8(v22);
        sub_24F9223A8();
        (*(v7 + 8))(v9, v35);
      }

      __swift_project_boxed_opaque_existential_1(v38, v39);
      sub_24F922298();
    }

    __swift_destroy_boxed_opaque_existential_1(v38);
    if (v11)
    {
LABEL_43:
      if (v10)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }
  }

  else
  {
    sub_24E601704(&v36, &qword_27F229780, &unk_24F965BB0);
    if (v11)
    {
      goto LABEL_43;
    }
  }

  v23 = [a1 v15[353]];
  v24 = sub_24F92BF68();

  if (v24 & 1) != 0 || (v25 = [a1 v15[353]], v26 = sub_24F92BF98(), v25, (v26))
  {
    __swift_project_boxed_opaque_existential_1(v4 + 10, v4[13]);
    sub_24F922298();
  }

LABEL_49:
  v27 = [a1 v15[353]];
  v28 = sub_24F92BF78();

  if (v28)
  {
    v29 = v4[43];
    __swift_project_boxed_opaque_existential_1(v4 + 40, v29);
    sub_24E8ED7D8(v29);
    sub_24F9223A8();
    (*(v7 + 8))(v9, v35);
  }

LABEL_51:
  v30 = v4[77];
  __swift_project_boxed_opaque_existential_1(v4 + 74, v30);
  sub_24E8ED7D8(v30);
  sub_24F9223A8();
  (*(v7 + 8))(v9, v35);
  return a2;
}

uint64_t ReviewsContainerLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v117 = a2;
  v13 = sub_24F92CDB8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = *(v6 + 568);
  v116 = a3;
  v125 = a4;
  v17 = a5;
  v18 = a6;
  sub_24F92C1C8();
  x = v131.origin.x;
  y = v131.origin.y;
  width = v131.size.width;
  height = v131.size.height;
  MinX = CGRectGetMinX(v131);
  v119 = x;
  v132.origin.x = x;
  v118 = y;
  v132.origin.y = y;
  v122 = width;
  v132.size.width = width;
  v121 = height;
  v132.size.height = height;
  MinY = CGRectGetMinY(v132);
  __swift_project_boxed_opaque_existential_1((v6 + 40), *(v6 + 64));
  v25 = sub_24F922238();
  sub_24E60169C(v6 + 160, v129, &qword_27F229780, &unk_24F965BB0);
  if (v130)
  {
    __swift_project_boxed_opaque_existential_1(v129, v130);
    v124 = sub_24F922238();
    __swift_destroy_boxed_opaque_existential_1(v129);
  }

  else
  {
    sub_24E601704(v129, &qword_27F229780, &unk_24F965BB0);
    v124 = 1;
  }

  sub_24E60169C(v6 + 200, v129, &qword_27F229780, &unk_24F965BB0);
  if (v130)
  {
    __swift_project_boxed_opaque_existential_1(v129, v130);
    v123 = sub_24F922238();
    __swift_destroy_boxed_opaque_existential_1(v129);
  }

  else
  {
    sub_24E601704(v129, &qword_27F229780, &unk_24F965BB0);
    v123 = 1;
  }

  __swift_project_boxed_opaque_existential_1((v6 + 80), *(v6 + 104));
  v126 = sub_24F922238();
  sub_24E60169C(v6 + 120, v129, &qword_27F229780, &unk_24F965BB0);
  v120 = MinX;
  if (v130)
  {
    __swift_project_boxed_opaque_existential_1(v129, v130);
    v26 = sub_24F922238();
    __swift_destroy_boxed_opaque_existential_1(v129);
  }

  else
  {
    sub_24E601704(v129, &qword_27F229780, &unk_24F965BB0);
    v26 = 1;
  }

  __swift_project_boxed_opaque_existential_1(v6, *(v6 + 24));
  sub_24F922288();
  v28 = v27;
  v30 = v29;
  v31 = v116;
  v133.origin.x = v116;
  v32 = v125;
  v133.origin.y = v125;
  v133.size.width = v17;
  v133.size.height = v18;
  v33 = CGRectGetMinX(v133);
  v34 = UIEdgeInsetsInsetRect(v33, floor(MinY), v28, v30, 0.0, v115);
  v36 = v35;
  v38 = v37;
  v40 = v39;
  __swift_project_boxed_opaque_existential_1(v6, *(v6 + 24));
  sub_24F92C1D8();
  sub_24F922228();
  v134.origin.x = v34;
  v134.origin.y = v36;
  v134.size.width = v38;
  v134.size.height = v40;
  MaxY = CGRectGetMaxY(v134);
  if ((v25 & v124 & v26 & v123 & v126 & 1) == 0)
  {
    v42 = *(v6 + 304);
    __swift_project_boxed_opaque_existential_1(v7 + 35, v7[38]);
    sub_24E8ED7D8(v42);
    v43 = sub_24F9223A8();
    (*(v14 + 8))(v16, v13);
    MaxY = MaxY + v43;
  }

  v44 = &selRef_hasManagedStateChangedFromAccount_toAccount_;
  v45 = [a1 traitCollection];
  v46 = sub_24F92BF68();

  v47 = v120;
  if (v46 & 1) != 0 || (v48 = [a1 traitCollection], v49 = sub_24F92BF98(), v48, (v49))
  {
    if ((v26 & 1) == 0)
    {
      sub_24E60169C((v7 + 15), v129, &qword_27F229780, &unk_24F965BB0);
      if (v130)
      {
        __swift_project_boxed_opaque_existential_1(v129, v130);
        sub_24F922288();
        v51 = v50;
        v53 = v52;
        __swift_destroy_boxed_opaque_existential_1(v129);
        v54 = floor(MaxY);
        sub_24E60169C((v7 + 15), v129, &qword_27F229780, &unk_24F965BB0);
        if (v130)
        {
          __swift_project_boxed_opaque_existential_1(v129, v130);
          sub_24F92C1D8();
          sub_24F922228();
          __swift_destroy_boxed_opaque_existential_1(v129);
        }

        else
        {
          sub_24E601704(v129, &qword_27F229780, &unk_24F965BB0);
        }

        v136.origin.x = v47;
        v136.origin.y = v54;
        v136.size.width = v51;
        v136.size.height = v53;
        v62 = CGRectGetMaxY(v136);
        v63 = v7[53];
        __swift_project_boxed_opaque_existential_1(v7 + 50, v63);
        sub_24E8ED7D8(v63);
        v64 = sub_24F9223A8();
        (*(v14 + 8))(v16, v13);
        MaxY = v62 + v64;
        v32 = v125;
      }

      else
      {
        sub_24E601704(v129, &qword_27F229780, &unk_24F965BB0);
      }
    }

    goto LABEL_47;
  }

  v55 = v7[68];
  __swift_project_boxed_opaque_existential_1(v7 + 65, v55);
  sub_24E8ED7D8(v55);
  v115 = sub_24F9223A8();
  v56 = *(v14 + 8);
  v56(v16, v13);
  v135.origin.x = v119;
  v135.origin.y = v118;
  v135.size.width = v122;
  v135.size.height = v121;
  v114 = CGRectGetWidth(v135);
  sub_24F92C228();
  if ((v26 & 1) == 0)
  {
    sub_24E60169C((v7 + 15), v129, &qword_27F229780, &unk_24F965BB0);
    if (v130)
    {
      v113 = v56;
      __swift_project_boxed_opaque_existential_1(v129, v130);
      sub_24F922288();
      v58 = v57;
      v60 = v59;
      __swift_destroy_boxed_opaque_existential_1(v129);
      v61 = floor(MaxY);
      sub_24E60169C((v7 + 15), v129, &qword_27F229780, &unk_24F965BB0);
      if (v130)
      {
        __swift_project_boxed_opaque_existential_1(v129, v130);
        sub_24F92C1D8();
        sub_24F922228();
        __swift_destroy_boxed_opaque_existential_1(v129);
      }

      else
      {
        sub_24E601704(v129, &qword_27F229780, &unk_24F965BB0);
      }

      v137.origin.x = v47;
      v137.origin.y = v61;
      v137.size.width = v58;
      v137.size.height = v60;
      v65 = CGRectGetMaxY(v137);
      v66 = v7[53];
      __swift_project_boxed_opaque_existential_1(v7 + 50, v66);
      sub_24E8ED7D8(v66);
      v67 = sub_24F9223A8();
      v56 = v113;
      v113(v16, v13);
      MaxY = v65 + v67;
    }

    else
    {
      sub_24E601704(v129, &qword_27F229780, &unk_24F965BB0);
    }

    v32 = v125;
  }

  if (v25 & v126)
  {
    v44 = &selRef_hasManagedStateChangedFromAccount_toAccount_;
    goto LABEL_47;
  }

  v68 = (v114 - v115) * 0.5;
  sub_24E60169C((v7 + 30), &v127, &qword_27F229780, &unk_24F965BB0);
  if (v128)
  {
    sub_24E612C80(&v127, v129);
    v69 = [a1 traitCollection];
    v70 = sub_24F92BF78();

    if (v70)
    {
      v71 = [objc_opt_self() mainScreen];
      [v71 scale];

      v138.origin.x = v119;
      v138.origin.y = v118;
      v138.size.width = v122;
      v138.size.height = v121;
      CGRectGetWidth(v138);
      v113 = v56;
      __swift_project_boxed_opaque_existential_1(v129, v130);
      v47 = v120;
      sub_24F922228();
      v72 = v7[43];
      __swift_project_boxed_opaque_existential_1(v7 + 40, v72);
      sub_24E8ED7D8(v72);
      v73 = sub_24F9223A8();
      v113(v16, v13);
      MaxY = MaxY + v73;
    }

    __swift_destroy_boxed_opaque_existential_1(v129);
  }

  else
  {
    sub_24E601704(&v127, &qword_27F229780, &unk_24F965BB0);
  }

  v74 = floor(v68);
  v44 = &selRef_hasManagedStateChangedFromAccount_toAccount_;
  if (v25)
  {
    if (v126)
    {
      v32 = v125;
      goto LABEL_47;
    }

    v115 = floor(MaxY);
    v75 = v125;
  }

  else
  {
    v32 = v125;
    if (v126)
    {
      __swift_project_boxed_opaque_existential_1(v7 + 5, v7[8]);
      sub_24F922288();
      __swift_project_boxed_opaque_existential_1(v7 + 5, v7[8]);
      sub_24F92C1D8();
      sub_24F922228();
      goto LABEL_44;
    }

    __swift_project_boxed_opaque_existential_1(v7 + 10, v7[13]);
    sub_24F922288();
    __swift_project_boxed_opaque_existential_1(v7 + 5, v7[8]);
    sub_24F922288();
    v114 = v74;
    __swift_project_boxed_opaque_existential_1(v7 + 5, v7[8]);
    sub_24F92C1D8();
    sub_24F922228();
    v75 = v32;
    __swift_project_boxed_opaque_existential_1(v7 + 10, v7[13]);
    v115 = floor(MaxY);
    sub_24F92C1D8();
    sub_24F922228();
  }

  __swift_project_boxed_opaque_existential_1(v7 + 10, v7[13]);
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1(v7 + 10, v7[13]);
  sub_24F92C1D8();
  sub_24F922228();
  v32 = v75;
  v47 = v120;
  if ((v25 & 1) == 0)
  {
LABEL_44:
    __swift_project_boxed_opaque_existential_1(v7 + 5, v7[8]);
    sub_24F922218();
    MaxY = CGRectGetMaxY(v139);
    if (v126)
    {
      goto LABEL_47;
    }
  }

  __swift_project_boxed_opaque_existential_1(v7 + 10, v7[13]);
  sub_24F922218();
  v76 = CGRectGetMaxY(v140);
  if (MaxY <= v76)
  {
    MaxY = v76;
  }

LABEL_47:
  sub_24E60169C((v7 + 20), &v127, &qword_27F229780, &unk_24F965BB0);
  if (v128)
  {
    sub_24E612C80(&v127, v129);
    if ((v124 & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1(v129, v130);
      sub_24F922288();
      v78 = v77;
      v80 = v79;
      v141.origin.x = v31;
      v141.origin.y = v32;
      v141.size.width = v17;
      v141.size.height = v18;
      v81 = CGRectGetMinX(v141);
      __swift_project_boxed_opaque_existential_1(v129, v130);
      sub_24F92C1D8();
      sub_24F922228();
      v142.origin.x = v81;
      v47 = v120;
      v142.origin.y = floor(MaxY);
      v142.size.width = v78;
      v142.size.height = v80;
      MaxY = CGRectGetMaxY(v142);
    }

    __swift_destroy_boxed_opaque_existential_1(v129);
  }

  else
  {
    sub_24E601704(&v127, &qword_27F229780, &unk_24F965BB0);
  }

  sub_24E60169C((v7 + 25), &v127, &qword_27F229780, &unk_24F965BB0);
  if (!v128)
  {
    sub_24E601704(&v127, &qword_27F229780, &unk_24F965BB0);
    if (v25)
    {
      goto LABEL_66;
    }

    goto LABEL_60;
  }

  sub_24E612C80(&v127, v129);
  if ((v123 & 1) == 0)
  {
    if ((v124 & 1) == 0)
    {
      v82 = v7[63];
      __swift_project_boxed_opaque_existential_1(v7 + 60, v82);
      sub_24E8ED7D8(v82);
      v83 = sub_24F9223A8();
      (*(v14 + 8))(v16, v13);
      MaxY = MaxY + v83;
    }

    __swift_project_boxed_opaque_existential_1(v129, v130);
    sub_24F922288();
    v85 = v84;
    v87 = v86;
    __swift_project_boxed_opaque_existential_1(v129, v130);
    sub_24F92C1D8();
    sub_24F922228();
    v143.origin.x = v47;
    v143.origin.y = floor(MaxY);
    v143.size.width = v85;
    v143.size.height = v87;
    MaxY = CGRectGetMaxY(v143);
  }

  __swift_destroy_boxed_opaque_existential_1(v129);
  if ((v25 & 1) == 0)
  {
LABEL_60:
    v88 = [a1 v44[353]];
    v89 = sub_24F92BF68();

    if (v89 & 1) != 0 || (v90 = [a1 v44[353]], v91 = sub_24F92BF98(), v90, (v91))
    {
      __swift_project_boxed_opaque_existential_1(v7 + 5, v7[8]);
      sub_24F922288();
      v93 = v92;
      v144.origin.x = v119;
      v144.origin.y = v118;
      v144.size.width = v122;
      v144.size.height = v121;
      v94 = CGRectGetWidth(v144);
      __swift_project_boxed_opaque_existential_1(v7 + 5, v7[8]);
      sub_24F92C1D8();
      sub_24F922228();
      v145.origin.x = v47;
      v145.origin.y = floor(MaxY);
      v145.size.width = v94;
      v145.size.height = v93;
      v95 = CGRectGetMaxY(v145);
      sub_24E60169C((v7 + 45), v129, &qword_27F22F780, &qword_24F968620);
      v96 = v130;
      if (v130)
      {
        __swift_project_boxed_opaque_existential_1(v129, v130);
        sub_24E8ED7D8(v96);
        v97 = sub_24F9223A8();
        (*(v14 + 8))(v16, v13);
        __swift_destroy_boxed_opaque_existential_1(v129);
      }

      else
      {
        sub_24E601704(v129, &qword_27F22F780, &qword_24F968620);
        v97 = 0.0;
      }

      MaxY = v95 + v97;
    }
  }

LABEL_66:
  if ((v126 & 1) == 0)
  {
    v98 = [a1 v44[353]];
    v99 = sub_24F92BF68();

    if (v99 & 1) != 0 || (v100 = [a1 v44[353]], v101 = sub_24F92BF98(), v100, (v101))
    {
      __swift_project_boxed_opaque_existential_1(v7 + 10, v7[13]);
      v102 = v122;
      v103 = v31;
      v104 = v17;
      v105 = v18;
      v106 = v47;
      v107 = v121;
      sub_24F922288();
      v109 = v108;
      v146.origin.x = v119;
      v146.origin.y = v118;
      v146.size.width = v102;
      v146.size.height = v107;
      v110 = CGRectGetWidth(v146);
      __swift_project_boxed_opaque_existential_1(v7 + 10, v7[13]);
      sub_24F92C1D8();
      sub_24F922228();
      v147.origin.x = v106;
      v18 = v105;
      v17 = v104;
      v31 = v103;
      v32 = v125;
      v147.origin.y = floor(MaxY);
      v147.size.width = v110;
      v147.size.height = v109;
      CGRectGetMaxY(v147);
    }
  }

  v111 = v7[77];
  __swift_project_boxed_opaque_existential_1(v7 + 74, v111);
  sub_24E8ED7D8(v111);
  sub_24F9223A8();
  (*(v14 + 8))(v16, v13);
  v148.origin.x = v31;
  v148.origin.y = v32;
  v148.size.width = v17;
  v148.size.height = v18;
  CGRectGetMinY(v148);
  v149.origin.x = v31;
  v149.origin.y = v32;
  v149.size.width = v17;
  v149.size.height = v18;
  CGRectGetWidth(v149);
  return sub_24F922128();
}

uint64_t sub_24F07B0B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 632))
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

uint64_t sub_24F07B0FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
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
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 632) = 1;
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

    *(result + 632) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OverlaySocialPageIntent.bundleID.getter()
{
  v1 = *(v0 + *(type metadata accessor for OverlaySocialPageIntent(0) + 20));

  return v1;
}

uint64_t type metadata accessor for OverlaySocialPageIntent(uint64_t a1)
{
  result = qword_27F238390;
  if (!qword_27F238390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OverlaySocialPageIntent.commonOnboardingStatus.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for OverlaySocialPageIntent(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t OverlaySocialPageIntent.init(_:for:commonOnboardingStatus:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  sub_24E6364A0(a3, a5);
  v10 = type metadata accessor for OverlaySocialPageIntent(0);
  v11 = (a5 + v10[5]);
  *v11 = a1;
  v11[1] = a2;
  v13[3] = &_s14descr2861AC041O5GamesON;
  v13[4] = sub_24EDA569C();
  LOBYTE(v13[0]) = 0;
  LOBYTE(a2) = sub_24F91FE68();
  sub_24E637048(a3);
  result = __swift_destroy_boxed_opaque_existential_1(v13);
  *(a5 + v10[6]) = a2 & 1;
  *(a5 + v10[7]) = v9;
  return result;
}

unint64_t OverlaySocialPageIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93FC20;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  *(inited + 80) = sub_24E7EDBB4();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E6364A0(v2, boxed_opaque_existential_1);
  *(inited + 88) = 0x4449656C646E7562;
  *(inited + 96) = 0xE800000000000000;
  v6 = type metadata accessor for OverlaySocialPageIntent(0);
  v7 = (v2 + v6[5]);
  v9 = *v7;
  v8 = v7[1];
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  v10 = sub_24E605DB4();
  *(inited + 104) = v9;
  *(inited + 112) = v8;
  *(inited + 136) = v10;
  *(inited + 144) = 0xD000000000000010;
  *(inited + 152) = 0x800000024FA46670;
  v11 = *(v2 + v6[6]);
  v12 = MEMORY[0x277D22598];
  *(inited + 184) = MEMORY[0x277D839B0];
  *(inited + 192) = v12;
  *(inited + 160) = v11;
  *(inited + 200) = 0xD000000000000016;
  *(inited + 208) = 0x800000024FA55B30;
  v13 = *(v2 + v6[7]);
  *(inited + 240) = &type metadata for CommonOnboardingStatus;
  *(inited + 248) = sub_24EBB9898();
  *(inited + 216) = v13;

  v14 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v14;
  return result;
}

unint64_t sub_24F07B5BC()
{
  v1 = 0x726579616C70;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = 0x4449656C646E7562;
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

uint64_t sub_24F07B638@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F07C164(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F07B660(uint64_t a1)
{
  v2 = sub_24F07BCD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F07B69C(uint64_t a1)
{
  v2 = sub_24F07BCD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OverlaySocialPageIntent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238378, &qword_24F9C3B60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F07BCD4();
  sub_24F92D128();
  v15 = 0;
  type metadata accessor for Player(0);
  sub_24E61C064(&qword_27F213E28, &protocol conformance descriptor for Player);
  sub_24F92CCF8();
  if (!v2)
  {
    v9 = type metadata accessor for OverlaySocialPageIntent(0);
    v14 = 1;
    sub_24F92CCA8();
    v13 = 2;
    sub_24F92CD18();
    v12 = *(v3 + *(v9 + 28));
    v11[15] = 3;
    sub_24EBB9844();
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t OverlaySocialPageIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238388, &qword_24F9C3B68);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for OverlaySocialPageIntent(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F07BCD4();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v19;
  type metadata accessor for Player(0);
  v25 = 0;
  sub_24E61C064(&qword_27F213E38, &protocol conformance descriptor for Player);
  sub_24F92CC18();
  sub_24E6365D4(v6, v12);
  v24 = 1;
  v14 = sub_24F92CBC8();
  v15 = &v12[v10[5]];
  *v15 = v14;
  v15[1] = v16;
  v23 = 2;
  v12[v10[6]] = sub_24F92CC38() & 1;
  v22 = 3;
  sub_24EBB96D8();
  sub_24F92CC68();
  (*(v13 + 8))(v9, v20);
  *&v12[v10[7]] = v21;
  sub_24F07BD28(v12, v18);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F07BD8C(v12);
}

unint64_t sub_24F07BCD4()
{
  result = qword_27F238380;
  if (!qword_27F238380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238380);
  }

  return result;
}

uint64_t sub_24F07BD28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverlaySocialPageIntent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F07BD8C(uint64_t a1)
{
  v2 = type metadata accessor for OverlaySocialPageIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F07BDFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_24F07BEE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_24F07BFB0(uint64_t a1)
{
  sub_24E637694(319);
  if (v1 <= 0x3F)
  {
    sub_24E6BCB04();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24F07C060()
{
  result = qword_27F2383A0;
  if (!qword_27F2383A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2383A0);
  }

  return result;
}

unint64_t sub_24F07C0B8()
{
  result = qword_27F2383A8;
  if (!qword_27F2383A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2383A8);
  }

  return result;
}

unint64_t sub_24F07C110()
{
  result = qword_27F2383B0;
  if (!qword_27F2383B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2383B0);
  }

  return result;
}

uint64_t sub_24F07C164(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726579616C70 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA46670 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA55B30 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

id static AppleSilicon.makeEnableAlmondFeatureFlag()()
{
  v0 = sub_24F92B098();
  v1 = sub_24F92B098();
  v2 = [objc_opt_self() flagForFeature:v0 domain:v1];

  return v2;
}

void sub_24F07C3A0()
{
  v1 = sub_24F927D88();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC12GameStoreKit12AppleSilicon_isSupportEnabled;
  swift_beginAccess();
  if (*(v0 + v5) == 1)
  {
    v6 = OBJC_IVAR____TtC12GameStoreKit12AppleSilicon_rosettaAvailabilityConditionLock;
    [*(v0 + OBJC_IVAR____TtC12GameStoreKit12AppleSilicon_rosettaAvailabilityConditionLock) lock];
    v7 = *(v0 + OBJC_IVAR____TtC12GameStoreKit12AppleSilicon_isRosettaAvailableBox);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0, &unk_24F96BDB0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_24F93DE60;

    sub_24F927D78();
    v10[2] = v8;
    sub_24E858250();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
    sub_24E8582A8();
    v9 = sub_24F92C6A8();
    MEMORY[0x28223BE20](v9);
    v10[-4] = sub_24F07C930;
    v10[-3] = 0;
    v10[-2] = v7;
    sub_24F92BF08();
    (*(v2 + 8))(v4, v1);

    [*(v0 + v6) unlockWithCondition_];
  }
}

uint64_t AppleSilicon.isSupportEnabled.getter()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit12AppleSilicon_isSupportEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void AppleSilicon.isSupportEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit12AppleSilicon_isSupportEnabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t AppleSilicon.isRosettaAvailable.getter()
{
  v1 = v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2383C8, &unk_24F9C4EF0);
  sub_24F92BF18();

  v2 = v6;
  if (v6 == 2)
  {
    v3 = OBJC_IVAR____TtC12GameStoreKit12AppleSilicon_rosettaAvailabilityConditionLock;
    v4 = [*(v1 + OBJC_IVAR____TtC12GameStoreKit12AppleSilicon_rosettaAvailabilityConditionLock) lockWhenCondition_];
    MEMORY[0x28223BE20](v4);

    sub_24F92BF18();

    v2 = (v6 == 2) | v6;
    [*(v1 + v3) unlock];
  }

  return v2 & 1;
}

id AppleSilicon.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppleSilicon.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_24F07CA54@<X0>(void *(*a1)(uint64_t *__return_ptr, char *, __n128)@<X0>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  swift_beginAccess();
  v7 = *(a2 + 24);
  result = (a1)(&v8, &v7);
  *a3 = v8;
  return result;
}

uint64_t WidgetKind.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_24F92CB88();

  *a3 = v4 != 0;
  return result;
}

unint64_t sub_24F07CBC0()
{
  result = qword_27F2383D8;
  if (!qword_27F2383D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2383D8);
  }

  return result;
}

uint64_t sub_24F07CC14()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24F07CC88()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24F07CCDC@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_24F92CB88();

  *a2 = v3 != 0;
  return result;
}

uint64_t ProductCapability.title.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void *ProductCapability.artworkTintColor.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t ProductCapability.__allocating_init(id:title:caption:captionTrailingArtwork:clickAction:linkAction:artwork:artworkTintColor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v14 = a9;
  v15 = sub_24F91F6B8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  sub_24E65E064(a1, &v38);
  if (*(&v39 + 1))
  {
    v20 = v39;
    *(v19 + 72) = v38;
    *(v19 + 88) = v20;
    *(v19 + 104) = v40;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v31 = a9;
    v32 = a6;
    v22 = a5;
    v23 = a8;
    v24 = v21;
    v25 = a7;
    v27 = v26;
    (*(v16 + 8))(v18, v15);
    v36 = v24;
    v37 = v27;
    a8 = v23;
    a5 = v22;
    a7 = v25;
    v14 = v31;
    a6 = v32;
    sub_24F92C7F8();
    sub_24E9BBAA8(&v38);
  }

  sub_24E9BBAA8(a1);
  v28 = v34;
  *(v19 + 32) = v33;
  *(v19 + 40) = v28;
  *(v19 + 112) = a6;
  v29 = v35;
  *(v19 + 16) = a7;
  *(v19 + 24) = v29;
  *(v19 + 48) = a5;
  *(v19 + 56) = a8;
  *(v19 + 64) = v14;
  return v19;
}

uint64_t ProductCapability.init(id:title:caption:captionTrailingArtwork:clickAction:linkAction:artwork:artworkTintColor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v35 = a3;
  v36 = a4;
  v37 = a2;
  v16 = a9;
  v17 = sub_24F91F6B8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65E064(a1, &v40);
  if (*(&v41 + 1))
  {
    v43 = v40;
    v44 = v41;
    v45 = v42;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v33 = a9;
    v34 = a6;
    v22 = a5;
    v23 = a8;
    v24 = v21;
    v25 = a7;
    v27 = v26;
    (*(v18 + 8))(v20, v17);
    v38 = v24;
    v39 = v27;
    a8 = v23;
    a5 = v22;
    a7 = v25;
    v16 = v33;
    a6 = v34;
    sub_24F92C7F8();
    sub_24E9BBAA8(&v40);
  }

  sub_24E9BBAA8(a1);
  v28 = v44;
  *(v10 + 72) = v43;
  *(v10 + 88) = v28;
  v29 = v45;
  v30 = v36;
  *(v10 + 32) = v35;
  *(v10 + 40) = v30;
  *(v10 + 104) = v29;
  *(v10 + 112) = a6;
  v31 = v37;
  *(v10 + 16) = a7;
  *(v10 + 24) = v31;
  *(v10 + 48) = a5;
  *(v10 + 56) = a8;
  *(v10 + 64) = v16;
  return v10;
}

uint64_t ProductCapability.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v72 = a2;
  v56 = sub_24F91F6B8();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_24F9285B8();
  v4 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v57 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v50 - v14;
  sub_24F928398();
  v16 = sub_24F928348();
  v18 = v17;
  v19 = *(v8 + 8);
  v63 = v8 + 8;
  v64 = v7;
  v62 = v19;
  v19(v15, v7);
  v60 = v18;
  v61 = v4;
  if (!v18)
  {
    v29 = v65;
    v22 = v72;
    v20 = 0x656C746974;
    v30 = 0xE500000000000000;
LABEL_7:
    v31 = sub_24F92AC38();
    sub_24F07DAD8(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v32 = v20;
    v32[1] = v30;
    v32[2] = v59;
    (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D22530], v31);
    swift_willThrow();
    (*(v61 + 8))(v22, v29);
    v62(a1, v64);
    return v29;
  }

  v53 = v16;
  v20 = 0x6E6F6974706163;
  type metadata accessor for LinkableText();
  sub_24F928398();
  v21 = a1;
  v22 = v72;
  v23 = v65;
  v58 = *(v4 + 16);
  v58(v6, v72, v65);
  sub_24F07DAD8(&qword_27F21C360, 255, type metadata accessor for LinkableText, &protocol conformance descriptor for LinkableText);
  sub_24F929548();
  if (!v71[0])
  {
    v29 = v23;

    v30 = 0xE700000000000000;
    a1 = v21;
    goto LABEL_7;
  }

  v59 = v71[0];
  type metadata accessor for Artwork(0);
  sub_24F928398();
  v58(v6, v22, v23);
  sub_24F07DAD8(&qword_27F219660, 255, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  sub_24F929548();
  v52 = v71[0];
  sub_24F928398();
  v58(v6, v22, v23);
  sub_24F929548();
  v58 = v71[0];
  sub_24F928398();
  v51 = JSONObject.appStoreColor.getter();
  v24 = v64;
  v25 = v62;
  v62(v12, v64);
  v26 = v57;
  sub_24F928398();
  v27 = sub_24F928348();
  if (v28)
  {
    *&v68 = v27;
    *(&v68 + 1) = v28;
  }

  else
  {
    v33 = v54;
    sub_24F91F6A8();
    v34 = sub_24F91F668();
    v36 = v35;
    (*(v55 + 8))(v33, v56);
    *&v68 = v34;
    *(&v68 + 1) = v36;
  }

  sub_24F92C7F8();
  v25(v26, v24);
  type metadata accessor for Action(0);
  sub_24F928398();
  v37 = v72;
  v57 = static Action.tryToMakeInstance(byDeserializing:using:)(v12, v72);
  v25(v12, v24);
  v38 = v21;
  sub_24F928398();
  v39 = static Action.tryToMakeInstance(byDeserializing:using:)(v12, v37);
  v25(v12, v24);
  type metadata accessor for ProductCapability();
  v29 = swift_allocObject();
  sub_24E65E064(v71, &v68);
  v40 = v65;
  if (*(&v69 + 1))
  {
    v41 = v69;
    *(v29 + 72) = v68;
    *(v29 + 88) = v41;
    *(v29 + 104) = v70;
  }

  else
  {
    v42 = v54;
    sub_24F91F6A8();
    v43 = sub_24F91F668();
    v45 = v44;
    (*(v55 + 8))(v42, v56);
    v66 = v43;
    v67 = v45;
    sub_24F92C7F8();
    sub_24E9BBAA8(&v68);
  }

  (*(v61 + 8))(v37, v40);
  v62(v38, v64);
  sub_24E9BBAA8(v71);
  v46 = v59;
  *(v29 + 32) = v60;
  *(v29 + 40) = v46;
  *(v29 + 112) = v57;
  v47 = v53;
  *(v29 + 16) = v39;
  *(v29 + 24) = v47;
  v48 = v58;
  *(v29 + 48) = v52;
  *(v29 + 56) = v48;
  *(v29 + 64) = v51;
  return v29;
}

uint64_t sub_24F07D9C4@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for ProductCapability();
  *a1 = v1;
}

uint64_t ProductCapability.deinit()
{

  sub_24E6585F8(v0 + 72);

  return v0;
}

uint64_t ProductCapability.__deallocating_deinit()
{
  ProductCapability.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24F07DAD8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_24F07DB40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = ProductCapability.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24F07DB78@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for ProductCapability();
  *a1 = v3;
}

uint64_t type metadata accessor for AchievementsByGameShelfConstructionIntent(uint64_t a1)
{
  result = qword_27F238420;
  if (!qword_27F238420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AchievementsByGameShelfConstructionIntent.pageID.getter()
{
  v1 = *(v0 + *(type metadata accessor for AchievementsByGameShelfConstructionIntent(0) + 24));

  return v1;
}

uint64_t AchievementsByGameShelfConstructionIntent.sortOption.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AchievementsByGameShelfConstructionIntent(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t AchievementsByGameShelfConstructionIntent.platformFilterOption.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AchievementsByGameShelfConstructionIntent(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

unint64_t AchievementsByGameShelfConstructionIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F942000;
  *(inited + 32) = 0x73656D6167;
  v4 = 0xE500000000000000;
  *(inited + 40) = 0xE500000000000000;
  v5 = *v1;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FD0, &qword_24F944DC0);
  v6 = sub_24F07EA58(&qword_27F219830, &qword_27F217960, &protocol conformance descriptor for Game, MEMORY[0x277D22590]);
  *(inited + 48) = v5;
  *(inited + 80) = v6;
  *(inited + 88) = 0x726579616C70;
  *(inited + 96) = 0xE600000000000000;
  v7 = type metadata accessor for AchievementsByGameShelfConstructionIntent(0);
  v8 = v7[5];
  *(inited + 128) = type metadata accessor for Player(0);
  *(inited + 136) = sub_24E81A5FC(&qword_27F215388, type metadata accessor for Player, &protocol conformance descriptor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24F07EC44(v1 + v8, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 144) = 0x444965676170;
  *(inited + 152) = 0xE600000000000000;
  v10 = (v1 + v7[6]);
  v11 = MEMORY[0x277D837D0];
  v12 = *v10;
  v13 = v10[1];
  v14 = MEMORY[0x277D22580];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = v14;
  *(inited + 160) = v12;
  *(inited + 168) = v13;
  *(inited + 200) = 0x6974704F74726F73;
  *(inited + 208) = 0xEA00000000006E6FLL;
  v15 = 1701667182;
  if (!*(v1 + v7[7]))
  {
    v15 = 0x796C746E65636572;
  }

  v16 = 0xEE00646579616C50;
  if (*(v1 + v7[7]))
  {
    v16 = 0xE400000000000000;
  }

  *(inited + 240) = v11;
  *(inited + 248) = v14;
  *(inited + 216) = v15;
  *(inited + 224) = v16;
  *(inited + 256) = 0xD000000000000014;
  *(inited + 264) = 0x800000024FA6A4F0;
  v17 = *(v1 + v7[8]);
  if (v17 <= 1)
  {
    v4 = 0xE300000000000000;
    if (*(v1 + v7[8]))
    {
      v18 = 5459817;
    }

    else
    {
      v18 = 7105633;
    }
  }

  else if (v17 == 2)
  {
    v18 = 0x534F63616DLL;
  }

  else if (v17 == 3)
  {
    v4 = 0xE400000000000000;
    v18 = 1397716596;
  }

  else
  {
    v4 = 0xE800000000000000;
    v18 = 0x534F6E6F69736976;
  }

  *(inited + 296) = v11;
  *(inited + 304) = v14;
  *(inited + 272) = v18;
  *(inited + 280) = v4;

  v19 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v19;
  return result;
}

uint64_t sub_24F07E0DC()
{
  v1 = *v0;
  v2 = 0x73656D6167;
  v3 = 0x444965676170;
  v4 = 0x6974704F74726F73;
  if (v1 != 3)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x726579616C70;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F07E174@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F07F03C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F07E19C(uint64_t a1)
{
  v2 = sub_24F07EA04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F07E1D8(uint64_t a1)
{
  v2 = sub_24F07EA04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AchievementsByGameShelfConstructionIntent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2383E8, &qword_24F9C4030);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F07EA04();
  sub_24F92D128();
  v12 = *v3;
  v11[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FD0, &qword_24F944DC0);
  sub_24F07EA58(&qword_27F219848, &qword_27F214950, &protocol conformance descriptor for Game, MEMORY[0x277D83948]);
  sub_24F92CD48();
  if (!v2)
  {
    v9 = type metadata accessor for AchievementsByGameShelfConstructionIntent(0);
    v11[6] = 1;
    type metadata accessor for Player(0);
    sub_24E81A5FC(&qword_27F213E28, type metadata accessor for Player, &protocol conformance descriptor for Player);
    sub_24F92CD48();
    v11[5] = 2;
    sub_24F92CD08();
    v11[4] = *(v3 + *(v9 + 28));
    v11[3] = 3;
    sub_24F07EAF4();
    sub_24F92CD48();
    v11[2] = *(v3 + *(v9 + 32));
    v11[1] = 4;
    sub_24F07EB48();
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t AchievementsByGameShelfConstructionIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v3);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238408, &qword_24F9C4038);
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v21 - v7;
  v9 = type metadata accessor for AchievementsByGameShelfConstructionIntent(0);
  MEMORY[0x28223BE20](v9);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F07EA04();
  v25 = v8;
  v12 = v26;
  sub_24F92D108();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v23;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FD0, &qword_24F944DC0);
  v33 = 0;
  sub_24F07EA58(&qword_27F219858, &qword_27F214968, &protocol conformance descriptor for Game, MEMORY[0x277D83978]);
  v15 = v24;
  sub_24F92CC68();
  v21[1] = v34;
  v26 = v14;
  *v14 = v34;
  v32 = 1;
  sub_24E81A5FC(&qword_27F213E38, type metadata accessor for Player, &protocol conformance descriptor for Player);
  sub_24F92CC68();
  v16 = v26;
  sub_24E61C0A8(v5, v26 + v9[5]);
  v31 = 2;
  v17 = sub_24F92CC28();
  v18 = (v16 + v9[6]);
  *v18 = v17;
  v18[1] = v19;
  v29 = 3;
  sub_24F07EB9C();
  sub_24F92CC68();
  *(v16 + v9[7]) = v30;
  v27 = 4;
  sub_24F07EBF0();
  sub_24F92CC68();
  (*(v13 + 8))(v25, v15);
  *(v16 + v9[8]) = v28;
  sub_24F07EC44(v16, v22, type metadata accessor for AchievementsByGameShelfConstructionIntent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F07ECAC(v16, type metadata accessor for AchievementsByGameShelfConstructionIntent);
}

unint64_t sub_24F07EA04()
{
  result = qword_27F2383F0;
  if (!qword_27F2383F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2383F0);
  }

  return result;
}

uint64_t sub_24F07EA58(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216FD0, &qword_24F944DC0);
    sub_24E81A5FC(a2, type metadata accessor for Game, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F07EAF4()
{
  result = qword_27F2383F8;
  if (!qword_27F2383F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2383F8);
  }

  return result;
}

unint64_t sub_24F07EB48()
{
  result = qword_27F238400;
  if (!qword_27F238400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238400);
  }

  return result;
}

unint64_t sub_24F07EB9C()
{
  result = qword_27F238410;
  if (!qword_27F238410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238410);
  }

  return result;
}

unint64_t sub_24F07EBF0()
{
  result = qword_27F238418;
  if (!qword_27F238418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238418);
  }

  return result;
}

uint64_t sub_24F07EC44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F07ECAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F07ED20(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24F07EDE0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Player(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F07EE84(uint64_t a1)
{
  sub_24E7B7820(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Player(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24F07EF38()
{
  result = qword_27F238430;
  if (!qword_27F238430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238430);
  }

  return result;
}

unint64_t sub_24F07EF90()
{
  result = qword_27F238438;
  if (!qword_27F238438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238438);
  }

  return result;
}

unint64_t sub_24F07EFE8()
{
  result = qword_27F238440;
  if (!qword_27F238440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238440);
  }

  return result;
}

uint64_t sub_24F07F03C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656D6167 && a2 == 0xE500000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x444965676170 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974704F74726F73 && a2 == 0xEA00000000006E6FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA6A4F0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

id UIColor.rgbaComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = 0;
  v11[0] = 0;
  v8 = 0;
  v9 = 0;
  result = [v1 getRed:v11 green:&v10 blue:&v9 alpha:&v8];
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (result)
  {
    v5 = v10;
    v4 = v11[0];
    v7 = v8;
    v6 = v9;
  }

  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = result ^ 1;
  return result;
}

float64x2_t static UIColor.RGBAComponents.solvedValue(between:and:forInput:)@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>, double a4@<D0>)
{
  v8 = *MEMORY[0x277CDA7C8];
  v9 = objc_opt_self();
  v10 = [v9 functionWithName_];
  v11 = [v9 functionWithName_];
  v12 = [v9 functionWithName_];
  v13 = [v9 functionWithName_];
  *&a4 = a4;
  LODWORD(v14) = LODWORD(a4);
  [v10 _solveForInput_];
  v34 = v15;
  LODWORD(v16) = LODWORD(a4);
  [v11 _solveForInput_];
  v33 = v17;
  LODWORD(v18) = LODWORD(a4);
  [v12 _solveForInput_];
  v32 = v19;
  LODWORD(v20) = LODWORD(a4);
  [v13 _solveForInput_];
  v31 = v21;

  v22 = vcvtq_f64_f32(__PAIR64__(v31, v32));
  v23 = vcvtq_f64_f32(__PAIR64__(v33, v34));
  __asm { FMOV            V6.2D, #1.0 }

  result = vaddq_f64(vmulq_f64(*a2, v23), vmulq_f64(*a1, vsubq_f64(_Q6, v23)));
  v30 = vaddq_f64(vmulq_f64(a2[1], v22), vmulq_f64(a1[1], vsubq_f64(_Q6, v22)));
  *a3 = result;
  a3[1] = v30;
  return result;
}

id static UIColor.RGBAComponents.interpolator(fromValue:toValue:curve:)@<X0>(__int128 *a1@<X0>, int8x16_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (a1[2])
  {
    v5 = xmmword_24F98B440;
    v6 = 0uLL;
  }

  else
  {
    v6 = *a1;
    v5 = a1[1];
  }

  v7 = vdup_n_s32(a2[2].u8[0]);
  v8.i64[0] = v7.u32[0];
  v8.i64[1] = v7.u32[1];
  v9 = vcgezq_s64(vshlq_n_s64(v8, 0x3FuLL));
  v10 = vandq_s8(a2[1], v9);
  *(a3 + 8) = v6;
  *(a3 + 24) = v5;
  *(a3 + 40) = vandq_s8(v4, v9);
  *(a3 + 56) = v10;
  result = TimingCurve.caMediaTimingFunction.getter();
  *a3 = result;
  return result;
}

id UIColor.RGBAComponents.color.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v5 initWithRed:v1 green:v2 blue:v3 alpha:v4];
}

uint64_t sub_24F07F548(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F07F618(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F07F6E8(uint64_t a1)
{
  sub_24E6C55A0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_24F07F79C@<X0>(void *a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for FadeOutTruncationTextView(0);
  sub_24F07FCA8(v1 + *(v10 + 36), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F923F78();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_24F07F98C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238460, &qword_24F9C4330);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  v3 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v4 = objc_opt_self();
  v5 = *MEMORY[0x277D76940];
  v6 = *MEMORY[0x277D74410];
  v7 = v3;
  *(inited + 40) = [v4 _preferredFontForTextStyle_weight_];
  v8 = sub_24E60FE74(inited);
  swift_setDeallocating();
  sub_24E601704(inited + 32, &qword_27F238468, &qword_24F9C4338);
  v9 = sub_24F92B098();
  sub_24E954FE0(v8);

  type metadata accessor for Key(0);
  sub_24F08105C(&qword_27F212318, type metadata accessor for Key, &unk_24F937754);
  v10 = sub_24F92AE28();

  [v9 sizeWithAttributes_];
  v12 = v11;

  return v12;
}

uint64_t sub_24F07FB44@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F925C98();
  v20 = v4;
  v21 = v3;
  v19 = v5;
  v22 = v6;
  v7 = *(v1 + 72);
  v18 = *(v1 + 64);
  v8 = sub_24F07F98C(v18, v7);
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  v11 = *(v1 + 48);
  v12 = *(v1 + 56);
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238458, &unk_24F9C4320) + 36);
  v14 = type metadata accessor for FadeOutRenderer(0);
  v15 = v14[7];
  sub_24E5FD138(v9, v10, v11);

  sub_24F07F79C((v13 + v15));
  v16 = *(v1 + 88);
  *(v13 + v14[9]) = 0x4046800000000000;
  *v13 = v8;
  *(v13 + 8) = v9;
  *(v13 + 16) = v10;
  *(v13 + 24) = v11;
  *(v13 + 32) = v12;
  *(v13 + 40) = v18;
  *(v13 + 48) = v7;
  *(v13 + v14[8]) = v16;
  *a1 = v21;
  *(a1 + 8) = v20;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v22;
}

uint64_t sub_24F07FCA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F07FD18(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v100 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2384A0, &qword_24F9C43E8);
  MEMORY[0x28223BE20](v5);
  v7 = v91 - v6;
  v99 = sub_24F923F28();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v97 = v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2384A8, &unk_24F9C43F0);
  MEMORY[0x28223BE20](v102);
  v103 = v91 - v9;
  v10 = sub_24F923F78();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F925CF8();
  v101 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v96 = v91 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = v91 - v20;
  if (sub_24F925CC8())
  {
    v22 = sub_24F925CD8();
    v23 = __OFSUB__(v22, 1);
    result = v22 - 1;
    if (v23)
    {
      __break(1u);
    }

    else
    {
      v25 = a1;
      sub_24F925D18();
      sub_24F925CE8();
      v26 = *(v101 + 8);
      v95 = v101 + 8;
      v94 = v26;
      v26(v21, v14);
      v27 = v107[0];
      v28 = v107[2];
      v29 = v107[1] - v108;
      v30 = v108 + v109;
      v31 = type metadata accessor for FadeOutRenderer(0);
      (*(v11 + 104))(v13, *MEMORY[0x277CDFA88], v10);
      v32 = sub_24F923F68();
      (*(v11 + 8))(v13, v10);
      v33 = v27;
      v34 = v29;
      v35 = v28;
      v36 = v30;
      if (v32)
      {
        MaxX = CGRectGetMaxX(*&v33);
        v38 = *v3;
        v39 = *(v3 + *(v31 + 36));
        MinX = MaxX - *v3 + v39 * -0.25;
        v113.origin.x = v27;
        v113.origin.y = v29;
        v113.size.width = v28;
        v113.size.height = v30;
        MinY = CGRectGetMinY(v113);
        v42 = v38 + v39;
        v114.origin.x = v27;
        v114.origin.y = v29;
        v114.size.width = v28;
        v114.size.height = v30;
        Height = CGRectGetHeight(v114);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560, &unk_24F9424E0);
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_24F93A400;
        sub_24F926C88();
        *(v44 + 32) = sub_24F9273C8();
        *(v44 + 40) = v45;
        sub_24F926C88();
        sub_24F926D08();

        *(v44 + 48) = sub_24F9273C8();
        *(v44 + 56) = v46;
        v47 = sub_24F9273D8();
        v115.origin.x = MinX;
        v115.origin.y = MinY;
        v115.size.width = v42;
        v115.size.height = Height;
        CGRectGetMinX(v115);
        v116.origin.x = MinX;
        v116.origin.y = MinY;
        v116.size.width = v42;
        v116.size.height = Height;
        v48 = CGRectGetMinY(v116);
        v49 = 0x6F6761206432;
        v50 = 0xE600000000000000;
      }

      else
      {
        MinX = CGRectGetMinX(*&v33);
        v117.origin.x = v27;
        v117.origin.y = v29;
        v117.size.width = v28;
        v117.size.height = v30;
        MinY = CGRectGetMinY(v117);
        v42 = *v3 + *(v3 + *(v31 + 36));
        v118.origin.x = v27;
        v118.origin.y = v29;
        v118.size.width = v28;
        v118.size.height = v30;
        Height = CGRectGetHeight(v118);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560, &unk_24F9424E0);
        v56 = swift_allocObject();
        *(v56 + 16) = xmmword_24F93A400;
        sub_24F926C88();
        *(v56 + 32) = sub_24F9273C8();
        *(v56 + 40) = v57;
        sub_24F926C88();
        sub_24F926D08();

        *(v56 + 48) = sub_24F9273C8();
        *(v56 + 56) = v58;
        v47 = sub_24F9273D8();
        v119.origin.x = MinX;
        v119.origin.y = MinY;
        v119.size.width = v42;
        v119.size.height = Height;
        CGRectGetMaxX(v119);
        v120.origin.x = MinX;
        v120.origin.y = MinY;
        v120.size.width = v42;
        v120.size.height = Height;
        CGRectGetWidth(v120);
        v121.origin.x = MinX;
        v121.origin.y = MinY;
        v121.size.width = v42;
        v121.size.height = Height;
        v48 = CGRectGetMinY(v121);
        v49 = *(v3 + 40);
        v50 = *(v3 + 48);
      }

      v59 = v48 - sub_24F080A04(v49, v50, v107);
      v122.origin.x = MinX;
      v122.origin.y = MinY;
      v122.size.width = v42;
      v122.size.height = Height;
      Width = CGRectGetWidth(v122);
      v123.origin.x = MinX;
      v123.origin.y = MinY;
      v123.size.width = v42;
      v123.size.height = Height;
      v61 = CGRectGetHeight(v123);
      v62 = v25;
      result = sub_24F925CD8();
      if ((result & 0x8000000000000000) == 0)
      {
        v63 = result;
        v93 = v31;
        v111 = 0;
        v112 = result;
        v64 = sub_24F925D08();
        sub_24F08105C(&qword_27F2384B0, MEMORY[0x277CE0B80], MEMORY[0x277CE0B98]);
        sub_24F92BB88();
        result = sub_24F92BC08();
        if (v106 >= v104)
        {
          *v91 = v61;
          *&v91[1] = Width;
          v91[2] = v47;
          *&v91[3] = v59;
          v92 = v3;
          v110[0] = v104;
          v110[1] = v106;
          sub_24F92BBB8();
          v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2384B8, &qword_24F9C4400);
          v66 = v103;
          (*(*(v64 - 8) + 16))(&v103[*(v65 + 40)], v62, v64);
          v67 = v66;
          *v66 = 0;
          v66[1] = v63;
          v68 = *(v102 + 36);
          *(v66 + v68) = 0;
          v69 = v96;
          v70 = v95;
          v71 = v94;
          if (v63)
          {
            v72 = v14;
            v73 = 0;
            v102 = *v100;
            v101 += 16;
            do
            {
              v110[0] = v73;
              v111 = 0;
              v112 = v63;
              v74 = v63;
              v75 = v71;
              v76 = v70;
              v77 = v68;
              sub_24F92BBA8();
              v78 = sub_24F92BC88();
              (*v101)(v69);
              v78(&v111, 0);
              sub_24F92BC18();
              v70 = v76;
              v71 = v75;
              v63 = v74;
              sub_24F923ED8();
              v71(v69, v72);
              v68 = v77;
              v67 = v103;
              v73 = *&v103[v77];
            }

            while (v73 != v74);
          }

          sub_24E601704(v67, &qword_27F2384A8, &unk_24F9C43F0);
          v106 = *v100;

          sub_24F925B38();
          sub_24F923EA8();
          sub_24F0810A4(v110);
          sub_24F923F48();
          sub_24F925B38();
          v124.origin.x = MinX;
          v124.origin.y = MinY;
          v124.size.width = v42;
          v124.size.height = Height;
          CGRectGetMinX(v124);
          v125.origin.x = MinX;
          v125.origin.y = MinY;
          v125.size.width = v42;
          v125.size.height = Height;
          CGRectGetMidY(v125);
          v126.origin.x = MinX;
          v126.origin.y = MinY;
          v126.size.width = v42;
          v126.size.height = Height;
          CGRectGetMaxX(v126);
          v127.origin.x = MinX;
          v127.origin.y = MinY;
          v127.size.width = v42;
          v127.size.height = Height;
          CGRectGetMidY(v127);
          v79 = v97;
          sub_24F923F18();

          sub_24F923EE8();
          sub_24F0810A4(&v111);
          (*(v98 + 8))(v79, v99);
          v80 = *(v92 + 48);
          v104 = *(v92 + 40);
          v105 = v80;
          sub_24E600AEC();

          v81 = sub_24F925E18();
          v83 = v82;
          v85 = v84;
          v86 = sub_24F925C98();
          v88 = v87;
          v90 = v89;
          sub_24E600B40(v81, v83, v85 & 1);

          sub_24F923EC8();
          sub_24E600B40(v86, v88, v90 & 1);
        }

LABEL_18:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  v51 = sub_24F925D08();
  (*(*(v51 - 8) + 16))(v7, a1, v51);
  v52 = *(v5 + 36);
  sub_24F08105C(&qword_27F2384B0, MEMORY[0x277CE0B80], MEMORY[0x277CE0B98]);
  sub_24F92BB88();
  sub_24F92BC08();
  if (*&v7[v52] != *&v107[0])
  {
    v53 = (v101 + 16);
    v54 = (v101 + 8);
    do
    {
      v55 = sub_24F92BC88();
      (*v53)(v16);
      v55(v107, 0);
      sub_24F92BC18();
      sub_24F923ED8();
      (*v54)(v16, v14);
      sub_24F92BC08();
    }

    while (*&v7[v52] != *&v107[0]);
  }

  return sub_24E601704(v7, &qword_27F2384A0, &qword_24F9C43E8);
}

CGFloat sub_24F080A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ascent[10] = *MEMORY[0x277D85DE8];
  v3 = *(a3 + 24);
  descent = 0.0;
  ascent[0] = 0.0;
  leading = 0.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221880, &unk_24F947748);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  v5 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v6 = objc_opt_self();
  v7 = *MEMORY[0x277D76940];
  v8 = *MEMORY[0x277D74410];
  v9 = v5;
  v10 = [v6 _preferredFontForTextStyle_weight_];
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F2227E0, &unk_24F96AFB0);
  *(inited + 40) = v10;
  sub_24E608940(inited);
  swift_setDeallocating();
  sub_24E601704(inited + 32, &qword_27F221890, &qword_24F93AD40);
  v11 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v12 = sub_24F92B098();
  type metadata accessor for Key(0);
  sub_24F08105C(&qword_27F212318, type metadata accessor for Key, &unk_24F937754);
  v13 = sub_24F92AE28();

  v14 = [v11 initWithString:v12 attributes:v13];

  v15 = CTLineCreateWithAttributedString(v14);
  CTLineGetTypographicBounds(v15, ascent, &descent, &leading);

  return ascent[0] - v3;
}

void (*sub_24F080C7C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24F923238();
  return sub_24E622878;
}

uint64_t sub_24F080D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24F923F78();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F080DD8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F923F78();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24F080E7C(uint64_t a1)
{
  result = sub_24F923F78();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24F080F24()
{
  result = qword_27F238480;
  if (!qword_27F238480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238458, &unk_24F9C4320);
    sub_24F080FB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238480);
  }

  return result;
}

unint64_t sub_24F080FB0()
{
  result = qword_27F238488;
  if (!qword_27F238488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238490, &qword_24F9C4350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238488);
  }

  return result;
}

uint64_t sub_24F08105C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24F0810F8(uint64_t a1)
{
  v1 = a1;
  v18 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_24F92C6F8();
    sub_24E69A5C4(0, &qword_27F220358, 0x277D75940);
    sub_24E890DCC();
    sub_24F92BAE8();
    v1 = v13;
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!sub_24F92C778() || (sub_24E69A5C4(0, &qword_27F220358, 0x277D75940), swift_dynamicCast(), (v11 = v12) == 0))
    {
LABEL_21:
      sub_24E6586B4(v1);
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x253050F00]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      sub_24F92B638();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

id CommerceDialogHandler.presentingSceneIdentifier.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    result = sub_24F084238();
    if (!result)
    {
      return result;
    }

    Strong = result;
  }

  result = [Strong view];
  if (result)
  {
    v2 = result;
    v3 = [result window];

    if (v3 && (v4 = [v3 windowScene], v3, v4))
    {
      v5 = [v4 _sceneIdentifier];

      v6 = sub_24F92B0D8();
      return v6;
    }

    else
    {

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_24F081480(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x253052270](v2, v26);
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject windows];
      sub_24E69A5C4(0, &qword_27F216450, 0x277D75DA0);
      v8 = sub_24F92B5A8();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_24F92C738();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_24F92C738();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_24F92C738();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_24F92C8F8();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v33 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_24F92C738();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_42;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_44;
            }

            sub_24E602068(&qword_27F2385A8, &qword_27F2385A0, &unk_24F9C4660, MEMORY[0x277D83988]);
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2385A0, &unk_24F9C4660);
              v19 = sub_24E951AFC(v32, i, v8);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_25;
        }
      }

      v3 = v33;
      if (v10 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v31;
      if (v31 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_24F92C738();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

void CommerceDialogHandler.isActive.setter(char a1)
{
  v3 = objc_opt_self();
  v4 = [v3 defaultCenter];
  v5 = v4;
  if (a1)
  {
    [v4 setDialogObserver_];
  }

  else
  {
    v7 = [v4 dialogObserver];

    if (!v7)
    {
      return;
    }

    swift_unknownObjectRelease();
    if (v7 != v1)
    {
      return;
    }

    v5 = [v3 defaultCenter];
    [v5 setDialogObserver_];
  }

  if (qword_27F210588 != -1)
  {
    swift_once();
  }

  v6 = sub_24F92AAE8();
  __swift_project_value_buffer(v6, qword_27F39C3F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F9479A0;
  sub_24F928448();
  sub_24F9283A8();
  v9 = MEMORY[0x277D839B0];
  v8[0] = a1 & 1;
  sub_24F928438();
  sub_24E601704(v8, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A598();
}

id CommerceDialogHandler.__allocating_init(_:_:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC12GameStoreKit21CommerceDialogHandler_bag;
  v8 = sub_24F92A498();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v6[v7], a2, v8);
  (*(v9 + 56))(&v6[v7], 0, 1, v8);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v12.receiver = v6;
  v12.super_class = v3;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  (*(v9 + 8))(a2, v8);
  return v10;
}

id CommerceDialogHandler.init(_:_:)(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC12GameStoreKit21CommerceDialogHandler_bag;
  v8 = sub_24F92A498();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v3[v7], a2, v8);
  (*(v9 + 56))(&v3[v7], 0, 1, v8);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v12.receiver = v3;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  (*(v9 + 8))(a2, v8);
  return v10;
}

void CommerceDialogHandler.sheetPresentationViewController.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*CommerceDialogHandler.sheetPresentationViewController.modify(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC12GameStoreKit21CommerceDialogHandler_sheetPresentationViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_24F081EB8;
}

void sub_24F081EB8(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

BOOL CommerceDialogHandler.isActive.getter()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = [v1 dialogObserver];

  if (!v2)
  {
    return 0;
  }

  swift_unknownObjectRelease();
  return v2 == v0;
}

void sub_24F081FB4(void **a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = [objc_opt_self() defaultCenter];
  v5 = [v4 dialogObserver];

  if (v5)
  {
    swift_unknownObjectRelease();
    v6 = v5 == v3;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
}

double (*CommerceDialogHandler.isActive.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = [objc_opt_self() defaultCenter];
  v4 = [v3 dialogObserver];

  if (v4)
  {
    swift_unknownObjectRelease();
    v5 = v4 == v1;
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 8) = v5;
  return sub_24F0820F4;
}

uint64_t CommerceDialogHandler.handle(_:resultHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  return sub_24F08271C(a1, a2, a3, &unk_286206F60, sub_24F084420, &block_descriptor_109);
}

{
  return sub_24F08271C(a1, a2, a3, &unk_286206FB0, sub_24F084444, &block_descriptor_10_0);
}

{
  return sub_24F08271C(a1, a2, a3, &unk_286207028, sub_24F0845B4, &block_descriptor_20_1);
}

void sub_24F082144(uint64_t a1, uint64_t (*a2)(uint64_t a1), uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v8 = Strong, swift_beginAccess(), v9 = swift_unknownObjectWeakLoadStrong(), v8, v9) || (swift_beginAccess(), (v10 = swift_unknownObjectWeakLoadStrong()) != 0) && (v11 = v10, v9 = sub_24F084238(), v11, v9))
  {
    v12 = [v9 frontmostViewController];
    v13 = [v12 view];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 window];

      if (v15)
      {

        v23 = [objc_allocWithZone(MEMORY[0x277CEE878]) initWithRequest:a4 presentingViewController:v12];
        v16 = [v23 performAuthentication];
        v17 = swift_allocObject();
        *(v17 + 16) = a4;
        v28 = sub_24F085204;
        v29 = v17;
        aBlock = MEMORY[0x277D85DD0];
        v25 = 1107296256;
        v26 = sub_24E955CC4;
        v27 = &block_descriptor_79_0;
        v18 = _Block_copy(&aBlock);
        v19 = a4;

        [v16 addErrorBlock_];
        _Block_release(v18);
        v28 = a2;
        v29 = a3;
        aBlock = MEMORY[0x277D85DD0];
        v25 = 1107296256;
        v26 = sub_24F13C6AC;
        v27 = &block_descriptor_82_4;
        v20 = _Block_copy(&aBlock);

        [v16 addFinishBlock_];
        _Block_release(v20);
      }

      else
      {
        sub_24F0845C8();
        v22 = swift_allocError();
        (a2)(0, v22);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_24F084450();
    v21 = swift_allocError();
    (a2)(0, v21);
  }
}

uint64_t sub_24F082478(uint64_t a1, void *a2)
{
  if (qword_27F210588 != -1)
  {
    swift_once();
  }

  v3 = sub_24F92AAE8();
  __swift_project_value_buffer(v3, qword_27F39C3F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93FC20;
  sub_24F9283A8();
  v9 = sub_24E69A5C4(0, &unk_27F238580, 0x277CEE3E0);
  v8[0] = a2;
  v4 = a2;
  sub_24F9283B8();
  sub_24E601704(v8, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283A8();
  swift_getErrorValue();
  v9 = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1);
  sub_24F9283B8();
  sub_24E601704(v8, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A5A8();
}

uint64_t sub_24F08271C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a2;
  v8 = sub_24F927D88();
  v27 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_24F927DC8();
  v11 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  v14 = sub_24F92BEF8();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v18 = v23;
  v17 = v24;
  v16[2] = v15;
  v16[3] = v18;
  v16[4] = a3;
  v16[5] = a1;
  aBlock[4] = v17;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = v25;
  v19 = _Block_copy(aBlock);

  v20 = a1;

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24E858250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v13, v10, v19);
  _Block_release(v19);

  (*(v27 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v26);
}

void sub_24F082A10(uint64_t a1, uint64_t (*a2)(uint64_t a1), uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v11 = sub_24F082C7C(v8);
    v17 = [objc_allocWithZone(MEMORY[0x277CEE868]) initWithRequest:a4 presentingViewController:v11];
    v12 = [v17 present];
    v13 = swift_allocObject();
    *(v13 + 16) = a4;
    v22 = sub_24F0851FC;
    v23 = v13;
    aBlock = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v20 = sub_24E955CC4;
    v21 = &block_descriptor_70_0;
    v14 = _Block_copy(&aBlock);
    v15 = a4;

    [v12 addErrorBlock_];
    _Block_release(v14);
    v22 = a2;
    v23 = a3;
    aBlock = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v20 = sub_24F13C6AC;
    v21 = &block_descriptor_73;
    v16 = _Block_copy(&aBlock);

    [v12 addFinishBlock_];

    _Block_release(v16);
  }

  else
  {
    sub_24F084450();
    v10 = swift_allocError();
    (a2)(0, v10);
  }
}

char *sub_24F082C7C(__n128 a1)
{
  v2 = v1;
  v3 = sub_24F927E38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  *v6 = sub_24F92BEF8();
  (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
  v7 = sub_24F927E68();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        Strong = sub_24F084238();
        if (!Strong)
        {
          sub_24F084450();
          swift_allocError();
          swift_willThrow();
          return v2;
        }
      }
    }

    v10 = Strong;
    v2 = [Strong frontmostViewController];
    result = [v2 view];
    if (result)
    {
      v11 = result;
      v12 = [result window];

      if (v12)
      {
      }

      else
      {
        sub_24F0845C8();
        swift_allocError();
        swift_willThrow();
      }

      return v2;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24F082ECC(uint64_t a1, void *a2)
{
  if (qword_27F210588 != -1)
  {
    swift_once();
  }

  v3 = sub_24F92AAE8();
  __swift_project_value_buffer(v3, qword_27F39C3F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93FC20;
  sub_24F9283A8();
  v9 = sub_24E69A5C4(0, &qword_27F238578, 0x277CEE488);
  v8[0] = a2;
  v4 = a2;
  sub_24F9283B8();
  sub_24E601704(v8, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283A8();
  swift_getErrorValue();
  v9 = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1);
  sub_24F9283B8();
  sub_24E601704(v8, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A5A8();
}

void CommerceDialogHandler.handle(_:resultHandler:)(void *a1, void (*a2)(void, void *), uint64_t a3)
{
  v4 = v3;
  v50 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290, &qword_24F966880);
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - v8;
  v10 = sub_24F92A498();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v46 = &v45 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2384D0, &unk_24F9AC950);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v45 - v20;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong || (Strong = sub_24F084238()) != 0)
  {
    v45 = v9;
    v51 = a2;
    v52 = a3;
    v22 = OBJC_IVAR____TtC12GameStoreKit21CommerceDialogHandler_bag;
    sub_24F0844A4(v4 + OBJC_IVAR____TtC12GameStoreKit21CommerceDialogHandler_bag, v21);
    v23 = *(v11 + 48);
    if (v23(v21, 1, v10) == 1)
    {
      sub_24E601704(v21, &qword_27F2384D0, &unk_24F9AC950);
      v49 = [objc_opt_self() createBagForSubProfile];
      if (!v49)
      {
        sub_24F084514();
        v24 = swift_allocError();
        v51(0, v24);

        return;
      }
    }

    else
    {
      v49 = sub_24F92A328();
      (*(v11 + 8))(v21, v10);
    }

    sub_24F0844A4(v4 + v22, v18);
    if (v23(v18, 1, v10) == 1)
    {
      sub_24E601704(v18, &qword_27F2384D0, &unk_24F9AC950);
      v26 = v51;
      v25 = v52;
      v27 = v50;
    }

    else
    {
      v28 = *(v11 + 32);
      v29 = v46;
      v28();
      (*(v11 + 16))(v13, v29, v10);
      type metadata accessor for ASKBagContract(0);
      v30 = swift_allocObject();
      (v28)(v30 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag, v13, v10);
      v31 = v30 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bagOfflinePolicy;
      *v31 = 0;
      *(v31 + 8) = 0;
      *(v31 + 16) = 1;
      if (qword_27F210B80 != -1)
      {
        swift_once();
      }

      v32 = v45;
      sub_24F92A3B8();
      v33 = v48;
      sub_24F92A408();
      (*(v47 + 8))(v32, v33);
      swift_setDeallocating();
      v34 = *(v11 + 8);
      v34(v30 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag, v10);
      swift_deallocClassInstance();
      v27 = v50;
      [v50 setAnonymousMetrics_];
      v34(v29, v10);
      v26 = v51;
      v25 = v52;
    }

    v35 = objc_allocWithZone(MEMORY[0x277CEE8D8]);
    v36 = Strong;
    v37 = [v35 initWithRequest:v27 bag:v49 presentingViewController:Strong];
    if (qword_27F211090 != -1)
    {
      swift_once();
    }

    v38 = qword_27F23E090 + OBJC_IVAR____TtC12GameStoreKit21HostProcessIdentifier_hostBundleId;
    swift_beginAccess();
    if (*(v38 + 8))
    {
      v39 = objc_opt_self();

      v40 = [v39 currentProcess];
      v41 = sub_24F92B098();

      [v40 setProxyAppBundleID_];

      [v37 setClientInfo_];
    }

    v42 = [v37 presentEngagement];
    aBlock[4] = v26;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E6251C8;
    aBlock[3] = &block_descriptor_13_2;
    v43 = _Block_copy(aBlock);

    [v42 addFinishBlock_];
    _Block_release(v43);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_24F084450();
    v44 = swift_allocError();
    a2(0, v44);
  }
}

double sub_24F083914(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = sub_24F92B858();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_24F92B7F8();

  v13 = a4;
  v14 = sub_24F92B7E8();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v11;
  v15[5] = a2;
  v15[6] = a3;
  v15[7] = v13;

  sub_24EA998B8(0, 0, v9, &unk_24F9C4658, v15);

  return result;
}

uint64_t sub_24F083AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  sub_24F92B7F8();
  v7[11] = sub_24F92B7E8();
  v9 = sub_24F92B778();
  v7[12] = v9;
  v7[13] = v8;

  return MEMORY[0x2822009F8](sub_24F083B60, v9, v8);
}

uint64_t sub_24F083B60()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_24F082C7C(v2);
    *(v0 + 112) = v4;
    v9 = *(v0 + 80);
    v10 = v4;

    v11 = type metadata accessor for ViewPresentationTask();
    v12 = objc_allocWithZone(v11);
    *&v12[OBJC_IVAR____TtC12GameStoreKit20ViewPresentationTask_request] = v9;
    *(v0 + 40) = v12;
    *(v0 + 48) = v11;
    v13 = v9;
    *(v0 + 120) = objc_msgSendSuper2((v0 + 40), sel_init);
    v14 = swift_task_alloc();
    *(v0 + 128) = v14;
    *v14 = v0;
    v14[1] = sub_24F083D44;

    return sub_24ED739E0(v10);
  }

  else
  {
    v5 = *(v0 + 64);

    sub_24F084450();
    v6 = swift_allocError();
    v5(0, v6);

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_24F083D44(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = v4[12];
    v6 = v4[13];
    v7 = sub_24F083F10;
  }

  else
  {
    v4[18] = a1;
    v5 = v4[12];
    v6 = v4[13];
    v7 = sub_24F083E6C;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_24F083E6C()
{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[8];

  v5 = v1;
  v4(v1, 0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_24F083F10()
{
  v1 = v0[14];
  v2 = v0[15];

  v3 = v0[17];
  v4 = v0[8];
  v5 = v3;
  v4(0, v3);

  v6 = v0[1];

  return v6();
}

double sub_24F083FE8(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);

  return result;
}

void sub_24F084090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_24F91F268();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id CommerceDialogHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CommerceDialogHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_24F084238()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_24E69A5C4(0, &qword_27F220358, 0x277D75940);
  sub_24E890DCC();
  v2 = sub_24F92BAA8();

  sub_24F0810F8(v2);
  v4 = v3;

  v5 = sub_24F081480(v4);

  if (v5 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x253052270](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if ([v8 isKeyWindow])
      {
        goto LABEL_16;
      }

      ++v7;
      if (v10 == i)
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
  v9 = 0;
LABEL_16:

  v11 = [v9 rootViewController];

  return v11;
}

uint64_t sub_24F0843E8()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t block_copy_helper_109(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24F084450()
{
  result = qword_27F2384D8;
  if (!qword_27F2384D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2384D8);
  }

  return result;
}

uint64_t sub_24F0844A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2384D0, &unk_24F9AC950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F084514()
{
  result = qword_27F2384E0;
  if (!qword_27F2384E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2384E0);
  }

  return result;
}

uint64_t objectdestroy_2Tm_1()
{

  return swift_deallocObject();
}

unint64_t sub_24F0845C8()
{
  result = qword_27F2384E8;
  if (!qword_27F2384E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2384E8);
  }

  return result;
}

uint64_t keypath_getTm_5@<X0>(uint64_t *a3@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a3 = result;
  return result;
}

uint64_t type metadata accessor for CommerceDialogHandler(uint64_t a1)
{
  result = qword_27F238558;
  if (!qword_27F238558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F084780(uint64_t a1)
{
  sub_24F084848(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24F084848(uint64_t a1)
{
  if (!qword_27F238568)
  {
    sub_24F92A498();
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F238568);
    }
  }
}

double sub_24F0848D0(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290, &qword_24F966880);
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x28223BE20](v6);
  v49 = &v48 - v7;
  v8 = sub_24F92A498();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v50 = &v48 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2384D0, &unk_24F9AC950);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  _Block_copy(a3);
  if (!Strong)
  {
    v22 = sub_24F084238();
    if (!v22)
    {
      sub_24F084450();
      v46 = swift_allocError();
      v47 = sub_24F91F268();
      (a3)[2](a3, 0, v47);

      return result;
    }

    Strong = v22;
  }

  v48 = v11;
  v54 = a1;
  v55 = Strong;
  v56 = v20;
  v23 = OBJC_IVAR____TtC12GameStoreKit21CommerceDialogHandler_bag;
  sub_24F0844A4(a2 + OBJC_IVAR____TtC12GameStoreKit21CommerceDialogHandler_bag, v19);
  v24 = *(v9 + 48);
  if (v24(v19, 1, v8) == 1)
  {
    sub_24E601704(v19, &qword_27F2384D0, &unk_24F9AC950);
    v53 = [objc_opt_self() createBagForSubProfile];
    if (!v53)
    {
      sub_24F084514();
      v25 = swift_allocError();
      v26 = sub_24F91F268();
      (a3)[2](a3, 0, v26);

      return result;
    }
  }

  else
  {
    v53 = sub_24F92A328();
    (*(v9 + 8))(v19, v8);
  }

  sub_24F0844A4(a2 + v23, v16);
  if (v24(v16, 1, v8) == 1)
  {
    sub_24E601704(v16, &qword_27F2384D0, &unk_24F9AC950);
    v29 = v55;
    v28 = v56;
    v30 = v54;
  }

  else
  {
    v31 = *(v9 + 32);
    v32 = v50;
    v31(v50, v16, v8);
    v33 = v48;
    (*(v9 + 16))(v48, v32, v8);
    type metadata accessor for ASKBagContract(0);
    v34 = swift_allocObject();
    v31((v34 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag), v33, v8);
    v35 = v34 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bagOfflinePolicy;
    *v35 = 0;
    *(v35 + 8) = 0;
    *(v35 + 16) = 1;
    v30 = v54;
    if (qword_27F210B80 != -1)
    {
      swift_once();
    }

    v36 = v49;
    sub_24F92A3B8();
    v37 = v52;
    sub_24F92A408();
    (*(v51 + 8))(v36, v37);
    swift_setDeallocating();
    v38 = *(v9 + 8);
    v38(v34 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag, v8);
    swift_deallocClassInstance();
    [v30 setAnonymousMetrics_];
    v38(v32, v8);
    v29 = v55;
    v28 = v56;
  }

  v39 = [objc_allocWithZone(MEMORY[0x277CEE8D8]) initWithRequest:v30 bag:v53 presentingViewController:v29];
  if (qword_27F211090 != -1)
  {
    swift_once();
  }

  v40 = qword_27F23E090 + OBJC_IVAR____TtC12GameStoreKit21HostProcessIdentifier_hostBundleId;
  swift_beginAccess();
  if (*(v40 + 8))
  {
    v41 = objc_opt_self();

    v42 = [v41 currentProcess];
    v43 = sub_24F92B098();

    [v42 setProxyAppBundleID_];

    [v39 setClientInfo_];
  }

  v44 = [v39 presentEngagement];
  aBlock[4] = sub_24F085090;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E6251C8;
  aBlock[3] = &block_descriptor_49_2;
  v45 = _Block_copy(aBlock);

  [v44 addFinishBlock_];
  _Block_release(v45);

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_24F085058()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_24F0850A0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F0850F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24E614970;

  return sub_24F083AC4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_24F0851C4()
{

  return swift_deallocObject();
}

id _sSo25NSCollectionLayoutSectionC12GameStoreKitE05emptybC03forAbC05ShelfB7ContextVSg_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232618, &qword_24F9DAE90);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v28 - v3;
  sub_24F08578C(a1, &v28 - v3);
  v5 = type metadata accessor for ShelfLayoutContext(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    sub_24F0857FC(v4);
    v6 = 1.0;
    v7 = &selRef_fractionalWidthDimension_;
  }

  else
  {
    v8 = &v4[*(v5 + 28)];
    v9 = v8[3];
    v10 = v8[42];
    v11 = v8[44];
    sub_24F085864(v4);
    v6 = v9 - (v10 + v11);
    v7 = &selRef_absoluteDimension_;
  }

  v12 = [objc_opt_self() *v7];
  v13 = objc_opt_self();
  v14 = objc_opt_self();
  v15 = v12;
  v16 = [v14 absoluteDimension_];
  v17 = objc_opt_self();
  v18 = v15;
  v19 = [v17 sizeWithWidthDimension:v18 heightDimension:v16];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_24F941C80;
  v21 = [v14 absoluteDimension_];
  v22 = [v17 sizeWithWidthDimension:v18 heightDimension:v21];

  v23 = [objc_opt_self() itemWithLayoutSize_];
  *(v20 + 32) = v23;
  sub_24EE1E790();
  v24 = sub_24F92B588();

  v25 = [v13 verticalGroupWithLayoutSize:v19 subitems:v24];

  v26 = [objc_opt_self() sectionWithGroup_];
  return v26;
}

id _sSo23NSCollectionLayoutGroupC12GameStoreKitE05emptybC03forAbC05ShelfB7ContextV_tFZ_0(uint64_t a1)
{
  v2 = type metadata accessor for ShelfLayoutContext(0);
  v3 = *(a1 + *(v2 + 28) + 24) - (*(a1 + *(v2 + 28) + 336) + *(a1 + *(v2 + 28) + 352));
  v4 = objc_opt_self();
  v5 = objc_opt_self();
  v6 = [v5 absoluteDimension_];
  v7 = [v5 absoluteDimension_];
  v8 = objc_opt_self();
  v9 = [v8 sizeWithWidthDimension:v6 heightDimension:v7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24F941C80;
  v11 = [v5 absoluteDimension_];
  v12 = [v5 absoluteDimension_];
  v13 = [v8 sizeWithWidthDimension:v11 heightDimension:v12];

  v14 = [objc_opt_self() itemWithLayoutSize_];
  *(v10 + 32) = v14;
  sub_24EE1E790();
  v15 = sub_24F92B588();

  v16 = [v4 verticalGroupWithLayoutSize:v9 subitems:v15];

  return v16;
}

uint64_t sub_24F08578C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232618, &qword_24F9DAE90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F0857FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232618, &qword_24F9DAE90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F085864(uint64_t a1)
{
  v2 = type metadata accessor for ShelfLayoutContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F0858D4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for GameActivityDraftGameInfo(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8, &unk_24F94CFA0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[12];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = type metadata accessor for Player(0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[13];
    goto LABEL_11;
  }

  v17 = sub_24F928AD8();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[14];

  return v18(v19, a2, v17);
}

uint64_t sub_24F085AB4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for GameActivityDraftGameInfo(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8, &unk_24F94CFA0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[12];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = type metadata accessor for Player(0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[13];
    goto LABEL_9;
  }

  v17 = sub_24F928AD8();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[14];

  return v18(v19, a2, a2, v17);
}

uint64_t type metadata accessor for CreateChallengeRematchAction(uint64_t a1)
{
  result = qword_27F2385B0;
  if (!qword_27F2385B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F085CCC(uint64_t a1)
{
  type metadata accessor for GameActivityDraftGameInfo(319);
  if (v1 <= 0x3F)
  {
    v2 = MEMORY[0x277D837D0];
    sub_24F085E8C(319, &qword_27F2153E8, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      sub_24F085E8C(319, &qword_27F2191B8, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      if (v4 <= 0x3F)
      {
        sub_24F085E8C(319, &qword_27F2182A8, &type metadata for GameActivityDraftPlayerInfo, MEMORY[0x277D83940]);
        if (v5 <= 0x3F)
        {
          sub_24F085E8C(319, &qword_27F254DE0, v2, MEMORY[0x277D83D88]);
          if (v6 <= 0x3F)
          {
            sub_24F085EDC(319);
            if (v7 <= 0x3F)
            {
              sub_24F085F40(319);
              if (v8 <= 0x3F)
              {
                type metadata accessor for Player(319);
                if (v9 <= 0x3F)
                {
                  sub_24F928AD8();
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

void sub_24F085E8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_24F085EDC(uint64_t a1)
{
  if (!qword_27F2349E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2325A0, &unk_24F9B4020);
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F2349E8);
    }
  }
}

void sub_24F085F40(uint64_t a1)
{
  if (!qword_27F2349F0)
  {
    sub_24F920A88();
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F2349F0);
    }
  }
}

unint64_t sub_24F085F98(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6F666E49656D6167;
    v7 = 0xD000000000000010;
    v8 = 0x6E6F697461727564;
    if (a1 != 3)
    {
      v8 = 0x5473726579616C70;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6F6272656461656CLL;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x4C74706D65747461;
    v2 = 0x6F74616974696E69;
    if (a1 != 9)
    {
      v2 = 0x654D6E6F69746361;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000013;
    v4 = 0x6974696E69666564;
    if (a1 != 6)
    {
      v4 = 0x6E6F697461727564;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24F086140@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v39 = sub_24F928AD8();
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v40 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v41);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8, &unk_24F94CFA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - v7;
  v9 = type metadata accessor for GameActivityDraftGameInfo(0);
  MEMORY[0x28223BE20](v9);
  v42 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2385C0, &unk_24F9C46E8);
  v43 = *(v11 - 8);
  v44 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  ChallengeRematchAction = type metadata accessor for CreateChallengeRematchAction(0);
  MEMORY[0x28223BE20](ChallengeRematchAction);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_24F086BB0();
  v45 = v13;
  v18 = v46;
  sub_24F92D108();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(v47);
  }

  v19 = v8;
  LOBYTE(v49) = 0;
  sub_24F086DC8(&qword_27F22E380, type metadata accessor for GameActivityDraftGameInfo, &protocol conformance descriptor for GameActivityDraftGameInfo);
  v20 = v42;
  sub_24F92CC68();
  sub_24F086D60(v20, v16, type metadata accessor for GameActivityDraftGameInfo);
  LOBYTE(v49) = 1;
  v21 = sub_24F92CC28();
  v22 = &v16[ChallengeRematchAction[5]];
  *v22 = v21;
  v22[1] = v23;
  LOBYTE(v49) = 2;
  v46 = 0;
  v24 = sub_24F92CC08();
  v25 = &v16[ChallengeRematchAction[6]];
  *v25 = v24;
  v25[8] = v26 & 1;
  LOBYTE(v49) = 3;
  v27 = sub_24F92CBE8();
  v28 = &v16[ChallengeRematchAction[7]];
  *v28 = v27;
  v28[8] = v29 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F90, &unk_24F9482A0);
  v48 = 4;
  sub_24F086C6C();
  sub_24F92CC68();
  *&v16[ChallengeRematchAction[8]] = v49;
  LOBYTE(v49) = 5;
  v30 = sub_24F92CC28();
  v31 = &v16[ChallengeRematchAction[9]];
  *v31 = v30;
  v31[1] = v32;
  LOBYTE(v49) = 6;
  v33 = sub_24F92CBC8();
  v34 = &v16[ChallengeRematchAction[10]];
  *v34 = v33;
  v34[1] = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2325A0, &unk_24F9B4020);
  v48 = 7;
  sub_24EE88870();
  sub_24F92CC18();
  *&v16[ChallengeRematchAction[11]] = v49;
  sub_24F920A88();
  LOBYTE(v49) = 8;
  sub_24F086DC8(&qword_27F2325B8, MEMORY[0x277D0D0F8], MEMORY[0x277D0D110]);
  v46 = 0;
  sub_24F92CC18();
  sub_24F086CF0(v19, &v16[ChallengeRematchAction[12]]);
  LOBYTE(v49) = 9;
  sub_24F086DC8(&qword_27F213E38, type metadata accessor for Player, &protocol conformance descriptor for Player);
  sub_24F92CC68();
  sub_24F086D60(v5, &v16[ChallengeRematchAction[13]], type metadata accessor for Player);
  LOBYTE(v49) = 10;
  sub_24F086DC8(&qword_27F254CB0, MEMORY[0x277D21C88], MEMORY[0x277D21C98]);
  sub_24F92CC68();
  (*(v43 + 8))(v45, v44);
  (*(v37 + 32))(&v16[ChallengeRematchAction[14]], v40, v39);
  sub_24F086E10(v16, v38);
  __swift_destroy_boxed_opaque_existential_1(v47);
  return sub_24F086E74(v16, type metadata accessor for CreateChallengeRematchAction);
}

uint64_t sub_24F086A84@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F086FEC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F086AAC(uint64_t a1)
{
  v2 = sub_24F086BB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F086AE8(uint64_t a1)
{
  v2 = sub_24F086BB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F086B24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = sub_24F928AD8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

unint64_t sub_24F086BB0()
{
  result = qword_27F2385C8;
  if (!qword_27F2385C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2385C8);
  }

  return result;
}

uint64_t sub_24F086C04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8, &unk_24F94CFA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F086C6C()
{
  result = qword_27F212FE8;
  if (!qword_27F212FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F212F90, &unk_24F9482A0);
    sub_24E607FD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212FE8);
  }

  return result;
}

uint64_t sub_24F086CF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8, &unk_24F94CFA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F086D60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F086DC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F086E10(uint64_t a1, uint64_t a2)
{
  ChallengeRematchAction = type metadata accessor for CreateChallengeRematchAction(0);
  (*(*(ChallengeRematchAction - 8) + 16))(a2, a1, ChallengeRematchAction);
  return a2;
}

uint64_t sub_24F086E74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F086EE8()
{
  result = qword_27F2385D0;
  if (!qword_27F2385D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2385D0);
  }

  return result;
}

unint64_t sub_24F086F40()
{
  result = qword_27F2385D8;
  if (!qword_27F2385D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2385D8);
  }

  return result;
}

unint64_t sub_24F086F98()
{
  result = qword_27F2385E0;
  if (!qword_27F2385E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2385E0);
  }

  return result;
}

uint64_t sub_24F086FEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F666E49656D6167 && a2 == 0xE800000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6272656461656CLL && a2 == 0xED00004449647261 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA6A840 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5473726579616C70 && a2 == 0xEF657469766E496FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA6A860 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6974696E69666564 && a2 == 0xEC00000044496E6FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xEC000000656C7552 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4C74706D65747461 && a2 == 0xEC00000074696D69 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F74616974696E69 && a2 == 0xE900000000000072 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 10;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_24F0873BC(uint64_t a1)
{
  v2 = sub_24F087598();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F0873F8(uint64_t a1)
{
  v2 = sub_24F087598();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GameLibraryRefsDataIntent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2385E8, &qword_24F9C4830);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F087598();
  sub_24F92D128();
  type metadata accessor for Player(0);
  sub_24E61C064(&qword_27F213E28, &protocol conformance descriptor for Player);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F087598()
{
  result = qword_27F2385F0;
  if (!qword_27F2385F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2385F0);
  }

  return result;
}

uint64_t GameLibraryRefsDataIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2385F8, &qword_24F9C4838);
  v15 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for GameLibraryRefsDataIntent(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F087598();
  sub_24F92D108();
  if (!v2)
  {
    v12 = v16;
    sub_24E61C064(&qword_27F213E38, &protocol conformance descriptor for Player);
    v13 = v17;
    sub_24F92CC68();
    (*(v15 + 8))(v8, v6);
    sub_24F087898(v13, v11, type metadata accessor for Player);
    sub_24F087898(v11, v12, type metadata accessor for GameLibraryRefsDataIntent);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for GameLibraryRefsDataIntent(uint64_t a1)
{
  result = qword_27F238600;
  if (!qword_27F238600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F087898(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F087938(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2385E8, &qword_24F9C4830);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F087598();
  sub_24F92D128();
  type metadata accessor for Player(0);
  sub_24E61C064(&qword_27F213E28, &protocol conformance descriptor for Player);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24F087AB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F087B30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_24F087BB4()
{
  result = qword_27F238610;
  if (!qword_27F238610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238610);
  }

  return result;
}

unint64_t sub_24F087C0C()
{
  result = qword_27F238618;
  if (!qword_27F238618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238618);
  }

  return result;
}

unint64_t sub_24F087C64()
{
  result = qword_27F238620;
  if (!qword_27F238620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238620);
  }

  return result;
}

double EditorialCard.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;

  return result;
}

uint64_t EditorialCard.caption.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t EditorialCard.title.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t EditorialCard.subtitle.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_24F087D64()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B00, &unk_24F93B6F0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_24F93DE60;
    *(v2 + 56) = type metadata accessor for Lockup(0);
    *(v2 + 64) = sub_24F089820(&qword_27F2289F8, type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);
    *(v2 + 32) = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

double sub_24F087E14@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 96);
  v5 = *(v3 + 104);
  v6 = *(v3 + 112);
  v7 = *(v3 + 120);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  v8 = *(v3 + 128);
  *(a2 + 32) = v8;
  return sub_24E951F10(v4, v5, v6, v7, v8);
}

void sub_24F087E70(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a1 + 32);
  swift_beginAccess();
  v8 = *(v6 + 104);
  v12 = *(v6 + 96);
  v9 = *(v6 + 112);
  v10 = *(v6 + 120);
  *(v6 + 96) = v2;
  *(v6 + 104) = v3;
  *(v6 + 112) = v4;
  *(v6 + 120) = v5;
  v11 = *(v6 + 128);
  *(v6 + 128) = v7;
  sub_24E951F10(v2, v3, v4, v5, v7);
  sub_24E951FEC(v12, v8, v9, v10, v11);
}

double sub_24F087F24@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  v5 = *(v1 + 112);
  v6 = *(v1 + 120);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v7 = *(v1 + 128);
  *(a1 + 32) = v7;
  return sub_24E951F10(v3, v4, v5, v6, v7);
}

__n128 sub_24F087F7C(uint64_t a1)
{
  v3 = *(a1 + 32);
  swift_beginAccess();
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  v6 = *(v1 + 112);
  v7 = *(v1 + 120);
  v8 = *(a1 + 16);
  *(v1 + 96) = *a1;
  *(v1 + 112) = v8;
  v9 = *(v1 + 128);
  *(v1 + 128) = v3;
  sub_24E951FEC(v4, v5, v6, v7, v9);
  return result;
}

uint64_t sub_24F08804C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 160) = v2;
}

double sub_24F0880AC()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_24F0880E4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 160) = a1;
}

uint64_t EditorialCard.__allocating_init(id:adamId:caption:title:subtitle:artwork:shelfBackground:clickAction:impressionMetrics:lockup:decorations:flowPreviewActionsConfiguration:mediaOverlayStyle:appEventFormattedDates:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 *a16, uint64_t a17)
{
  v48 = a7;
  v49 = a8;
  v46 = a5;
  v47 = a6;
  v44 = a3;
  v45 = a4;
  v42 = a12;
  v19 = sub_24F91F6B8();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  v25 = *a2;
  v24 = a2[1];
  v26 = *a10;
  v39 = a10[1];
  v40 = v26;
  v38 = *(a10 + 16);
  v41 = *a16;
  v43 = a1;
  sub_24E60169C(a1, &v52, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v53 + 1))
  {
    v27 = v53;
    *(v23 + 176) = v52;
    *(v23 + 192) = v27;
    *(v23 + 208) = v54;
  }

  else
  {
    sub_24F91F6A8();
    v28 = sub_24F91F668();
    v30 = v29;
    (*(v20 + 8))(v22, v19);
    v50 = v28;
    v51 = v30;
    sub_24F92C7F8();
    sub_24E601704(&v52, &qword_27F235830, &qword_24F93B8C0);
  }

  v31 = v42;
  sub_24E60169C(v42, v23 + OBJC_IVAR____TtC12GameStoreKit13EditorialCard_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  if (!v24)
  {
    if (qword_27F2110C8 != -1)
    {
      swift_once();
    }

    v25 = qword_27F23E358;
    v24 = qword_27F23E360;
  }

  sub_24E601704(v31, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v43, &qword_27F235830, &qword_24F93B8C0);
  *(v23 + 16) = v25;
  *(v23 + 24) = v24;
  v32 = v45;
  *(v23 + 32) = v44;
  *(v23 + 40) = v32;
  v33 = v47;
  *(v23 + 48) = v46;
  *(v23 + 56) = v33;
  v34 = v49;
  *(v23 + 64) = v48;
  *(v23 + 72) = v34;
  v35 = v39;
  *(v23 + 96) = v40;
  *(v23 + 112) = v35;
  *(v23 + 128) = v38;
  *(v23 + 80) = a9;
  *(v23 + 88) = a11;
  *(v23 + 136) = a13;
  *(v23 + 160) = a14;
  *(v23 + 168) = a15;
  *(v23 + 144) = v41;
  *(v23 + 152) = a17;
  return v23;
}

uint64_t EditorialCard.init(id:adamId:caption:title:subtitle:artwork:shelfBackground:clickAction:impressionMetrics:lockup:decorations:flowPreviewActionsConfiguration:mediaOverlayStyle:appEventFormattedDates:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 *a16, uint64_t a17)
{
  v18 = v17;
  v47 = a7;
  v48 = a8;
  v45 = a5;
  v46 = a6;
  v43 = a3;
  v44 = a4;
  v21 = sub_24F91F6B8();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a2;
  v25 = a2[1];
  v27 = *a10;
  v39 = a10[1];
  v40 = v27;
  v38 = *(a10 + 16);
  v41 = *a16;
  v42 = a1;
  sub_24E60169C(a1, &v51, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v52 + 1))
  {
    v54 = v51;
    v55 = v52;
    v56 = v53;
  }

  else
  {
    sub_24F91F6A8();
    v28 = sub_24F91F668();
    v30 = v29;
    (*(v22 + 8))(v24, v21);
    v49 = v28;
    v50 = v30;
    sub_24F92C7F8();
    sub_24E601704(&v51, &qword_27F235830, &qword_24F93B8C0);
  }

  v31 = v55;
  *(v18 + 176) = v54;
  *(v18 + 192) = v31;
  *(v18 + 208) = v56;
  sub_24E60169C(a12, v18 + OBJC_IVAR____TtC12GameStoreKit13EditorialCard_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  if (!v25)
  {
    if (qword_27F2110C8 != -1)
    {
      swift_once();
    }

    v26 = qword_27F23E358;
    v25 = qword_27F23E360;
  }

  sub_24E601704(a12, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v42, &qword_27F235830, &qword_24F93B8C0);
  *(v18 + 16) = v26;
  *(v18 + 24) = v25;
  v32 = v44;
  *(v18 + 32) = v43;
  *(v18 + 40) = v32;
  v33 = v46;
  *(v18 + 48) = v45;
  *(v18 + 56) = v33;
  v34 = v48;
  *(v18 + 64) = v47;
  *(v18 + 72) = v34;
  v35 = v39;
  *(v18 + 96) = v40;
  *(v18 + 112) = v35;
  *(v18 + 128) = v38;
  *(v18 + 80) = a9;
  *(v18 + 88) = a11;
  *(v18 + 136) = a13;
  *(v18 + 160) = a14;
  *(v18 + 168) = a15;
  *(v18 + 144) = v41;
  *(v18 + 152) = a17;
  return v18;
}

uint64_t EditorialCard.__allocating_init(deserializing:using:)(uint64_t a1, char *a2)
{
  v4 = swift_allocObject();
  EditorialCard.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t EditorialCard.init(deserializing:using:)(uint64_t a1, char *a2)
{
  v95 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v3 - 8);
  v88 = &v84 - v4;
  v101 = sub_24F9285B8();
  v5 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v100 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v94 = &v84 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v84 - v10;
  v12 = sub_24F91F6B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F928388();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v87 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v86 = &v84 - v20;
  MEMORY[0x28223BE20](v21);
  v91 = &v84 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v84 - v24;
  v107 = a1;
  sub_24F928398();
  v26 = sub_24F928348();
  v99 = v16;
  if (v27)
  {
    v102 = v26;
    v103 = v27;
  }

  else
  {
    sub_24F91F6A8();
    v28 = sub_24F91F668();
    v29 = v13;
    v30 = v5;
    v32 = v31;
    (*(v29 + 8))(v15, v12);
    v102 = v28;
    v103 = v32;
    v5 = v30;
  }

  sub_24F92C7F8();
  v33 = *(v17 + 8);
  v98 = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v96 = v33;
  v33(v25, v16);
  v34 = v105;
  v35 = v93;
  *(v93 + 176) = v104;
  *(v35 + 192) = v34;
  *(v35 + 208) = v106;
  sub_24F929608();
  sub_24F928398();
  v89 = v5;
  v36 = *(v5 + 16);
  v37 = v95;
  v38 = v101;
  v36(v94, v95, v101);
  sub_24F929548();
  v85 = OBJC_IVAR____TtC12GameStoreKit13EditorialCard_impressionMetrics;
  sub_24E65E0D4(v11, v35 + OBJC_IVAR____TtC12GameStoreKit13EditorialCard_impressionMetrics);
  v92 = v5 + 16;
  v97 = v36;
  v36(v100, v37, v38);
  v39 = v86;
  sub_24F928398();
  v40 = sub_24F928348();
  v42 = v41;
  v43 = v98;
  v44 = v99;
  v45 = v96;
  v96(v39, v99);
  if (!v42)
  {
    if (qword_27F2110C8 != -1)
    {
      swift_once();
    }

    v40 = qword_27F23E358;
    v42 = qword_27F23E360;
  }

  v46 = v93;
  *(v93 + 16) = v40;
  *(v46 + 24) = v42;
  v47 = v91;
  sub_24F928398();
  v48 = sub_24F928348();
  v50 = v49;
  v45(v47, v44);
  *(v46 + 32) = v48;
  *(v46 + 40) = v50;
  sub_24F928398();
  v51 = sub_24F928348();
  v53 = v52;
  v45(v47, v44);
  v96 = v45;
  *(v46 + 48) = v51;
  *(v46 + 56) = v53;
  sub_24F928398();
  v54 = sub_24F928348();
  v56 = v55;
  v45(v47, v44);
  *(v46 + 64) = v54;
  *(v46 + 72) = v56;
  type metadata accessor for Artwork(0);
  sub_24F928398();
  v57 = v94;
  v58 = v100;
  v59 = v101;
  v98 = v43;
  v60 = v97;
  v97(v94, v100, v101);
  sub_24F089820(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  sub_24F929548();
  *(v46 + 80) = v104;
  sub_24F928398();
  v60(v57, v58, v59);
  sub_24EAFF164(v47, v57, &v104);
  v61 = v106;
  v62 = v105;
  *(v46 + 96) = v104;
  *(v46 + 112) = v62;
  *(v46 + 128) = v61;
  type metadata accessor for Action(0);
  sub_24F928398();
  v63 = static Action.tryToMakeInstance(byDeserializing:using:)(v47, v58);
  v64 = v96;
  v96(v47, v99);
  *(v46 + 88) = v63;
  type metadata accessor for Lockup(0);
  sub_24F928398();
  v97(v57, v95, v101);
  sub_24F089820(&qword_27F221FB8, type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);
  sub_24F929548();
  *(v46 + 136) = v104;
  v65 = v87;
  sub_24F928398();
  v66 = v88;
  sub_24F9282B8();
  v64(v65, v99);
  v67 = sub_24F92AC28();
  v68 = *(v67 - 8);
  if ((*(v68 + 48))(v66, 1, v67) == 1)
  {
    sub_24E601704(v66, &qword_27F2213B0, &qword_24F965EC0);
    v69 = MEMORY[0x277D84F90];
LABEL_12:
    v72 = sub_24F45D7F4(v69);

    v73 = v93;
    *(v93 + 160) = v72;
    type metadata accessor for FlowPreviewActionsConfiguration();
    v74 = v91;
    sub_24F928398();
    v75 = v94;
    v76 = v101;
    v97(v94, v100, v101);
    sub_24F089820(&qword_27F222748, type metadata accessor for FlowPreviewActionsConfiguration, &protocol conformance descriptor for FlowPreviewActionsConfiguration);
    sub_24F929548();
    *(v73 + 168) = v104;
    sub_24F928398();
    sub_24EA303C8();
    sub_24F928208();
    v77 = v99;
    v78 = v96;
    v96(v74, v99);
    *(v73 + 144) = v104;
    sub_24F928398();
    v79 = v100;
    v97(v75, v100, v76);
    type metadata accessor for AppEventFormattedDate(0);
    sub_24F089820(&qword_27F22D450, type metadata accessor for AppEventFormattedDate, &protocol conformance descriptor for AppEventFormattedDate);
    v80 = sub_24F92B698();
    v81 = *(v89 + 8);
    v81(v95, v76);
    v78(v107, v77);
    v81(v79, v76);
    *(v73 + 152) = v80;
    return v73;
  }

  v70 = v90;
  v71 = sub_24F92ABB8();
  if (!v70)
  {
    v69 = v71;
    v90 = 0;
    (*(v68 + 8))(v66, v67);
    goto LABEL_12;
  }

  v83 = v93;

  sub_24E951FEC(*(v83 + 96), *(v83 + 104), *(v83 + 112), *(v83 + 120), *(v83 + 128));

  sub_24E6585F8(v83 + 176);
  sub_24E601704(v83 + v85, &qword_27F213E68, &unk_24F93BC80);
  type metadata accessor for EditorialCard(0);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_24F089398@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for EditorialCard(0);
  *a1 = v1;
}

uint64_t EditorialCard.deinit()
{

  sub_24E951FEC(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128));

  sub_24E6585F8(v0 + 176);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13EditorialCard_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  return v0;
}

uint64_t EditorialCard.__deallocating_deinit()
{
  EditorialCard.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24F0894E4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for EditorialCard(0);
  v7 = swift_allocObject();
  result = EditorialCard.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24F089550@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for EditorialCard(0);
  *a1 = v3;
}

uint64_t sub_24F089598()
{
  v1 = *(*v0 + 136);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B00, &unk_24F93B6F0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_24F93DE60;
    *(v2 + 56) = type metadata accessor for Lockup(0);
    *(v2 + 64) = sub_24F089820(&qword_27F2289F8, type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);
    *(v2 + 32) = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

double sub_24F08964C@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 96);
  v5 = *(v3 + 104);
  v6 = *(v3 + 112);
  v7 = *(v3 + 120);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(v3 + 128);
  *(a1 + 32) = v8;
  return sub_24E951F10(v4, v5, v6, v7, v8);
}

double sub_24F0896A8()
{
  swift_beginAccess();

  return result;
}

uint64_t type metadata accessor for EditorialCard(uint64_t a1)
{
  result = qword_27F238630;
  if (!qword_27F238630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F0897C8(uint64_t a1)
{
  result = sub_24F089820(&qword_27F232898, type metadata accessor for EditorialCard, &protocol conformance descriptor for EditorialCard);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24F089820(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_24F089870@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 160);

  return result;
}

void sub_24F0898C8(uint64_t a1)
{
  sub_24E61C938(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void AnnotationImagesLayout.Metrics.init(horizontalSpacing:verticalSpacing:artworkSize:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

__n128 AnnotationImagesLayout.init(views:metrics:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  result = *a2;
  v4 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v4;
  return result;
}

__n128 AnnotationImagesLayout.metrics.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void AnnotationImagesLayout.placeChildren(relativeTo:in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = *v5;
  r1 = v5[1];
  v44 = v5[2];
  MinX = CGRectGetMinX(*&a2);
  v53.origin.x = a2;
  v53.origin.y = a3;
  v53.size.width = a4;
  v53.size.height = a5;
  MinY = CGRectGetMinY(v53);
  v13 = *(*&v10 + 16);
  if (!v13)
  {
    goto LABEL_14;
  }

  v14 = MinY;
  *&v50[0] = MEMORY[0x277D84F90];
  sub_24F45820C(0, v13, 0);
  v15 = *&v50[0];
  v16 = *&v10 + 32;
  v17 = *&v10 + 32;
  v49 = a5;
  do
  {
    sub_24E615E00(v17, v51);
    __swift_project_boxed_opaque_existential_1(v51, v52);
    sub_24F922218();
    v18 = MinX + CGRectGetWidth(v54);
    v55.origin.x = a2;
    v55.origin.y = a3;
    v55.size.width = a4;
    v55.size.height = a5;
    Width = CGRectGetWidth(v55);
    v56.origin.x = a2;
    v56.origin.y = a3;
    v56.size.width = a4;
    v56.size.height = a5;
    if (Width + CGRectGetMinX(v56) < v18)
    {
      v57.origin.x = a2;
      v57.origin.y = a3;
      v57.size.width = a4;
      v57.size.height = a5;
      MinX = CGRectGetMinX(v57);
      __swift_project_boxed_opaque_existential_1(v51, v52);
      sub_24F922218();
      v14 = v14 + v44 + CGRectGetHeight(v58);
    }

    __swift_project_boxed_opaque_existential_1(v51, v52);
    sub_24F922288();
    v21 = v20;
    v23 = v22;
    __swift_project_boxed_opaque_existential_1(v51, v52);
    sub_24F922218();
    v24 = CGRectGetWidth(v59);
    __swift_destroy_boxed_opaque_existential_1(v51);
    *&v50[0] = v15;
    v26 = *(v15 + 16);
    v25 = *(v15 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_24F45820C((v25 > 1), v26 + 1, 1);
      v15 = *&v50[0];
    }

    *(v15 + 16) = v26 + 1;
    v27 = v15 + 32 * v26;
    *(v27 + 32) = MinX;
    *(v27 + 40) = v14;
    *(v27 + 48) = v21;
    *(v27 + 56) = v23;
    v17 += 40;
    MinX = MinX + r1 + v24;
    --v13;
    a5 = v49;
  }

  while (v13);
  v28 = *(*&v10 + 16);
  if (v28)
  {
    v29 = 0;
    v30 = v15 + 56;
    height = 0.0;
    v32 = 0.0;
    y = 0.0;
    x = 0.0;
    while (v29 < *(*&v10 + 16))
    {
      sub_24E615E00(v16, v50);
      v35 = *(v15 + 16);
      if (v29 == v35)
      {

        __swift_destroy_boxed_opaque_existential_1(v50);
        goto LABEL_15;
      }

      if (v29 >= v35)
      {
        goto LABEL_18;
      }

      ++v29;
      v46 = v32;
      r1a = height;
      v45 = x;
      sub_24E612E28(v50, v51);
      __swift_project_boxed_opaque_existential_1(v51, v52);
      sub_24F92C1D8();
      sub_24F922228();
      __swift_project_boxed_opaque_existential_1(v51, v52);
      sub_24F922218();
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v43 = v42;
      __swift_destroy_boxed_opaque_existential_1(v51);
      v60.origin.x = v45;
      v60.size.width = v46;
      v60.origin.y = y;
      v60.size.height = r1a;
      v62.origin.x = v37;
      v62.origin.y = v39;
      v62.size.width = v41;
      v62.size.height = v43;
      v61 = CGRectUnion(v60, v62);
      x = v61.origin.x;
      y = v61.origin.y;
      v32 = v61.size.width;
      height = v61.size.height;
      v16 += 40;
      v30 += 32;
      if (v28 == v29)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_14:

LABEL_15:
    sub_24F922128();
  }
}

double AnnotationImagesLayout.measurements(fitting:in:)(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v5 = *v3;
  v6 = *(v3 + 24);
  v8[0] = *(v3 + 8);
  v8[1] = v6;
  return _s12GameStoreKit22AnnotationImagesLayoutV12measurements3for7fitting7metrics2inSo14JUMeasurementsVSay5JetUI0F4View_pG_So6CGSizeVAC7MetricsVSo18UITraitEnvironment_ptFZ_0(v5, v8, a1, a2, a3);
}

double sub_24F089FF4(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v5 = *v3;
  v6 = *(v3 + 24);
  v8[0] = *(v3 + 8);
  v8[1] = v6;
  return _s12GameStoreKit22AnnotationImagesLayoutV12measurements3for7fitting7metrics2inSo14JUMeasurementsVSay5JetUI0F4View_pG_So6CGSizeVAC7MetricsVSo18UITraitEnvironment_ptFZ_0(v5, v8, a1, a2, a3);
}

__n128 sub_24F08A02C@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

double _s12GameStoreKit22AnnotationImagesLayoutV12measurements3for7fitting7metrics2inSo14JUMeasurementsVSay5JetUI0F4View_pG_So6CGSizeVAC7MetricsVSo18UITraitEnvironment_ptFZ_0(uint64_t a1, double *a2, uint64_t a3, CGFloat a4, CGFloat a5)
{
  v32 = a2[1];
  v33 = *a2;
  v8 = 0.0;
  v37.origin.x = 0.0;
  v37.origin.y = 0.0;
  v37.size.width = a4;
  v37.size.height = a5;
  MinX = CGRectGetMinX(v37);
  v38.origin.x = 0.0;
  v38.origin.y = 0.0;
  v38.size.width = a4;
  v38.size.height = a5;
  MinY = CGRectGetMinY(v38);
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = MinY;
    v36 = MEMORY[0x277D84F90];
    sub_24F45820C(0, v11, 0);
    v13 = v36;
    v14 = a1 + 32;
    do
    {
      sub_24E615E00(v14, v34);
      __swift_project_boxed_opaque_existential_1(v34, v35);
      sub_24F922218();
      v15 = MinX + CGRectGetWidth(v39);
      v40.origin.x = 0.0;
      v40.origin.y = 0.0;
      v40.size.width = a4;
      v40.size.height = a5;
      Width = CGRectGetWidth(v40);
      v41.origin.x = 0.0;
      v41.origin.y = 0.0;
      v41.size.width = a4;
      v41.size.height = a5;
      if (Width + CGRectGetMinX(v41) < v15)
      {
        v42.origin.x = 0.0;
        v42.origin.y = 0.0;
        v42.size.width = a4;
        v42.size.height = a5;
        MinX = CGRectGetMinX(v42);
        __swift_project_boxed_opaque_existential_1(v34, v35);
        sub_24F922218();
        v12 = v12 + v32 + CGRectGetHeight(v43);
      }

      __swift_project_boxed_opaque_existential_1(v34, v35);
      sub_24F922288();
      v18 = v17;
      v20 = v19;
      __swift_project_boxed_opaque_existential_1(v34, v35);
      sub_24F922218();
      v21 = CGRectGetWidth(v44);
      __swift_destroy_boxed_opaque_existential_1(v34);
      v36 = v13;
      v23 = *(v13 + 16);
      v22 = *(v13 + 24);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        sub_24F45820C((v22 > 1), v23 + 1, 1);
        v13 = v36;
      }

      *(v13 + 16) = v24;
      v25 = v13 + 32 * v23;
      *(v25 + 32) = MinX;
      *(v25 + 40) = v12;
      *(v25 + 48) = v18;
      *(v25 + 56) = v20;
      v14 += 40;
      MinX = MinX + v33 + v21;
      --v11;
    }

    while (v11);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
    v24 = *(MEMORY[0x277D84F90] + 16);
    if (!v24)
    {
      goto LABEL_13;
    }
  }

  v26 = v13 + 56;
  v27 = 0.0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  do
  {
    *&v29 = CGRectUnion(*&v29, *(v26 - 24));
    v26 += 32;
    --v24;
  }

  while (v24);
  v8 = v27;
LABEL_13:

  return v8;
}