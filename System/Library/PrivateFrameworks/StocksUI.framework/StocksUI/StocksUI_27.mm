uint64_t sub_2207818E8()
{
  MEMORY[0x223D8B910](v0 + 16);
  sub_22054B9F8(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  return swift_deallocClassInstance();
}

uint64_t sub_220781998(uint64_t a1, uint64_t a2)
{
  result = sub_220448DD8(qword_281292B70, a2, type metadata accessor for StockListRouter, &unk_2208B35F0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_220781A00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_220781A68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_220781AC8(uint64_t a1)
{
  v2 = sub_220884E9C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StockListRouteModel(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277CC9260];
  sub_22047A2F0(0, &qword_2812994E0, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v24 - v18;
  sub_220781E18(a1, v10, type metadata accessor for StockListRouteModel);
  sub_220781E80(v10, v19, &qword_2812994E0, v11);
  sub_220781EEC(v19, v15, &qword_2812994E0, v11);
  if ((*(v3 + 48))(v15, 1, v2) == 1)
  {
    sub_220781F58(v19, &qword_2812994E0, MEMORY[0x277CC9260]);
  }

  else
  {
    (*(v3 + 32))(v6, v15, v2);
    v20 = [objc_opt_self() sharedApplication];
    v21 = sub_220884E3C();
    sub_2205CE854(MEMORY[0x277D84F90]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_220448DD8(&qword_27CF57590, 255, type metadata accessor for OpenExternalURLOptionsKey, &unk_2208990A8);
    v22 = sub_22089125C();

    [v20 openURL:v21 options:v22 completionHandler:0];

    (*(v3 + 8))(v6, v2);
    v15 = v19;
  }

  return sub_220781F58(v15, &qword_2812994E0, MEMORY[0x277CC9260]);
}

uint64_t sub_220781E18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_220781E80(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22047A2F0(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_220781EEC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22047A2F0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_220781F58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22047A2F0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_12Tm()
{
  sub_22047A2F0(0, &qword_281298480, MEMORY[0x277D686D0]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_22088969C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v3));
  }

  if (*(v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_22078212C()
{
  sub_22047A2F0(0, &qword_281298480, MEMORY[0x277D686D0]);

  return sub_220598700();
}

uint64_t sub_220782200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  sub_220782704(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v44 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22089022C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22089041C();
  v38 = *(v11 - 8);
  v39 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v40 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2208906CC();
  v35 = *(v14 - 8);
  v36 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v37 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205D23FC();
  v42 = v17;
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v41 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22088A84C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22048D2F4();
  sub_2208922FC();
  sub_22088A85C();
  v26 = sub_22088A82C();
  v27 = sub_220891AFC();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v34 = v7;
    v29 = v28;
    *v28 = 0;
    _os_log_impl(&dword_22043F000, v26, v27, "Observed audio finished playing, closing player", v28, 2u);
    v7 = v34;
    MEMORY[0x223D8B7F0](v29, -1, -1);
  }

  (*(v22 + 8))(v25, v21);
  (*(v35 + 104))(v37, *MEMORY[0x277D33A68], v36);
  (*(v38 + 104))(v40, *MEMORY[0x277D33568], v39);
  (*(v7 + 104))(v10, *MEMORY[0x277D33290], v6);
  v45 = 0u;
  v46 = 0u;
  v30 = v41;
  sub_2208905CC();
  swift_getObjectType();
  sub_22088E33C();
  v31 = v44;
  v32 = v42;
  (*(v18 + 16))(v44, v30, v42);
  (*(v18 + 56))(v31, 0, 1, v32);
  sub_22088B81C();

  sub_22078275C(v31);
  return (*(v18 + 8))(v30, v32);
}

void sub_220782704(uint64_t a1)
{
  if (!qword_27CF59840)
  {
    sub_2205D23FC();
    v1 = sub_22089230C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF59840);
    }
  }
}

uint64_t sub_22078275C(uint64_t a1)
{
  sub_220782704(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_2207828CC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v182 = a3;
  v6 = sub_220886D4C();
  v193 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v181 = &v169 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22088516C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v169 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 8);
  v15 = *(a2 + 24);
  v16 = *(a2 + 40);
  v189 = *a2;
  v17 = v189 - v15;
  v18 = *(a1 + 64);
  v19 = *(a1 + 72);

  v194 = sub_22067A850(v18, v19);

  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  if (qword_28128FE98 != -1)
  {
    swift_once();
  }

  v20 = v17 - v16;
  v21 = qword_28128FEA0;
  v180 = v16;
  if (qword_28128FEA0)
  {
    sub_22088515C();
    v22 = sub_22088509C();
    (*(v10 + 8))(v13, v9);
    v23 = [v21 stringFromDate_];

    v24 = sub_22089136C();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0xE000000000000000;
  }

  v27 = sub_22067A4F4(v24, v26);

  v28 = v194;
  [v194 boundingRectWithSize:1 options:0 context:{v20, v14}];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = [v28 su_containsExcessiveLineHeightCharacter];
  v38 = MEMORY[0x277D768C8];
  if (v37)
  {
    [*(a2 + 48) displayScale];
    [v28 su_languageAwareOutsetsAtScale_];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
  }

  else
  {
    v40 = *MEMORY[0x277D768C8];
    v42 = *(MEMORY[0x277D768C8] + 8);
    v44 = *(MEMORY[0x277D768C8] + 16);
    v46 = *(MEMORY[0x277D768C8] + 24);
  }

  v47 = UIEdgeInsetsInsetRect_0(v30, v32, v34, v36, v40, v42, v44, v46);
  v187 = v48;
  [v27 boundingRectWithSize:0 options:0 context:{v20, v14}];
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  if ([v27 su_containsExcessiveLineHeightCharacter])
  {
    [*(a2 + 48) displayScale];
    [v27 su_languageAwareOutsetsAtScale_];
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v64 = v63;
  }

  else
  {
    v58 = *v38;
    v60 = v38[1];
    v62 = v38[2];
    v64 = v38[3];
  }

  v65 = v6;
  v66 = v193;
  v67 = UIEdgeInsetsInsetRect_0(v50, v52, v54, v56, v58, v60, v62, v64);
  v69 = v68;
  v70 = [v27 su_containsExcessiveLineHeightCharacter];
  v71 = v181;
  if (v70)
  {
    [*(a2 + 48) displayScale];
    [v27 su_languageAwareOutsetsAtScale_];
    v186 = v72;
    v185 = v73;
    v184 = v74;
    v183 = v75;
  }

  else
  {
    v76 = *(v38 + 1);
    v186 = *v38;
    v185 = v76;
    v77 = *(v38 + 3);
    v184 = *(v38 + 2);
    v183 = v77;
  }

  v78 = sub_220891D8C();
  [v78 ascender];
  v80 = v79;

  v81 = sub_220891D8C();
  [v81 capHeight];
  v83 = v82;

  v84 = sub_22088F0DC();
  v188 = v14;
  if ((v84 & 1) != 0 && [*(a2 + 48) horizontalSizeClass] != 1)
  {
    sub_220891A7C();
    v123 = fmax(-v122, 5.0);
    v124 = objc_opt_self();
    v125 = sub_22089002C();
    v126 = *(*&v66 + 104);
    v172 = *MEMORY[0x277D6D198];
    v171 = v126;
    v126(v71);
    v173 = v125;
    sub_22089001C();
    v128 = v127;
    v169 = *(*&v66 + 8);
    v169(v71, v65);
    v129 = *MEMORY[0x277D743F8];
    v174 = v124;
    v170 = v129;
    v130 = [v124 systemFontOfSize:v128 weight:?];
    v131 = sub_220891F4C();

    [v131 descender];
    v133 = v132;

    v134 = v123 - v133;
    v135 = sub_220891D8C();
    [v135 ascender];
    v137 = v136;

    v138 = v14 - v137 - v134;
    v178 = v15;
    v218.origin.x = v15;
    v218.origin.y = v138;
    v177 = v47;
    v218.size.width = v47;
    v218.size.height = v187;
    v219 = CGRectIntegral(v218);
    x = v219.origin.x;
    y = v219.origin.y;
    width = v219.size.width;
    height = v219.size.height;
    v220.origin.x = CGRectGetMaxX(v219) + 8.0;
    v220.origin.y = v138;
    v220.size.width = v67;
    v220.size.height = v69;
    v221 = CGRectIntegral(v220);
    v193 = v221.origin.x;
    v179 = v221.origin.y;
    v107 = v221.size.width;
    v102 = v221.size.height;
    v139 = sub_220812FFC();
    v111 = 0.0;
    v176 = v69;
    v175 = v67;
    if (v139)
    {
      if (qword_281299530 != -1)
      {
        swift_once();
      }

      type metadata accessor for ForYouMastheadModel();
      sub_22054FCC8();
      sub_220886B3C();
      v119 = 0.0;
      v120 = 0.0;
      v121 = 0.0;
      if (v202 == 1)
      {
        sub_22088A26C();
        sub_22088A23C();
        v222.size.width = v140;
        v222.size.height = v141;
        v222.origin.x = v189 - v140 - v180;
        v222.origin.y = v188 - v141 + -5.0;
        v223 = CGRectIntegral(v222);
        v111 = v223.origin.x;
        v119 = v223.origin.y;
        v120 = v223.size.width;
        v121 = v223.size.height;
      }
    }

    else
    {
      v119 = 0.0;
      v120 = 0.0;
      v121 = 0.0;
    }

    v224.origin.x = v111;
    v224.origin.y = v119;
    v224.size.width = v120;
    v224.size.height = v121;
    v230.origin.x = v193;
    v230.origin.y = v179;
    v230.size.width = v107;
    v230.size.height = v102;
    v109 = CGRectIntersectsRect(v224, v230);
    if ((v109 & 1) == 0)
    {
      v112 = v194;
      v106 = v179;
      goto LABEL_34;
    }

    sub_220891A7C();
    v143 = fmax(-v142, 5.0);
    v171(v71, v172, v65);
    sub_22089001C();
    v145 = v144;
    v169(v71, v65);
    v146 = [v174 systemFontOfSize:v145 weight:v170];
    v147 = sub_220891F4C();

    [v147 descender];
    v149 = v148;

    v150 = v143 - v149;
    v151 = sub_220891D8C();
    [v151 ascender];
    v153 = v152;

    v225.origin.y = v188 - v153 - v150;
    v154 = v178;
    v225.origin.x = v178;
    v225.size.width = v175;
    v225.size.height = v176;
    v226 = CGRectIntegral(v225);
    v155 = v226.origin.x;
    v107 = v226.size.width;
    v156 = v226.size.height;
    v106 = v226.origin.y;
    sub_2207839C4();
    v158 = v157;
    v193 = v155;
    v227.origin.x = v155;
    v102 = v156;
    v227.origin.y = v106;
    v227.size.width = v107;
    v227.size.height = v156;
    MinY = CGRectGetMinY(v227);
    v228.size.height = v187;
    v228.origin.y = MinY - v158 - v187;
    v228.origin.x = v154;
    v228.size.width = v177;
    v229 = CGRectIntegral(v228);
    x = v229.origin.x;
    y = v229.origin.y;
    width = v229.size.width;
    height = v229.size.height;
    v109 = sub_220812FFC();
    v111 = 0.0;
    if (v109)
    {
      if (qword_281299530 != -1)
      {
        swift_once();
      }

      type metadata accessor for ForYouMastheadModel();
      sub_22054FCC8();
      v109 = sub_220886B3C();
      if (v202)
      {
        goto LABEL_21;
      }
    }

LABEL_33:
    v119 = 0.0;
    v120 = 0.0;
    v121 = 0.0;
    v112 = v194;
    goto LABEL_34;
  }

  v193 = v80 - v83;
  sub_220891A7C();
  v86 = fmax(-v85, 5.0);
  v87 = objc_opt_self();
  sub_22089002C();
  (*(*&v66 + 104))(v71, *MEMORY[0x277D6D198], v65);
  sub_22089001C();
  v89 = v88;
  (*(*&v66 + 8))(v71, v65);
  v90 = [v87 systemFontOfSize:v89 weight:*MEMORY[0x277D743F8]];
  v91 = sub_220891F4C();

  [v91 descender];
  v93 = v92;

  v94 = v86 - v93;
  v95 = sub_220891D8C();
  [v95 ascender];
  v97 = v96;

  v209.origin.y = v14 - v97 - v94;
  v209.origin.x = v15;
  v209.size.width = v67;
  v209.size.height = v69;
  v210 = CGRectIntegral(v209);
  v98 = v187;
  v99 = v210.origin.y;
  v100 = v47;
  v101 = v210.size.width;
  v102 = v210.size.height;
  v103 = v210.origin.x;
  sub_2207839C4();
  v105 = v104;
  v193 = v103;
  v211.origin.x = v103;
  v106 = v99;
  v211.origin.y = v99;
  v107 = v101;
  v211.size.width = v101;
  v211.size.height = v102;
  v212.origin.y = CGRectGetMinY(v211) - v105 - v98;
  v212.origin.x = v15;
  v212.size.width = v100;
  v212.size.height = v98;
  v213 = CGRectIntegral(v212);
  x = v213.origin.x;
  y = v213.origin.y;
  width = v213.size.width;
  height = v213.size.height;
  v109 = sub_220812FFC();
  v111 = 0.0;
  if ((v109 & 1) == 0)
  {
    goto LABEL_33;
  }

  if (qword_281299530 != -1)
  {
    swift_once();
  }

  type metadata accessor for ForYouMastheadModel();
  sub_22054FCC8();
  v109 = sub_220886B3C();
  if (v202 != 1)
  {
    goto LABEL_33;
  }

LABEL_21:
  v112 = v194;
  sub_22088A26C();
  sub_22088A23C();
  v114 = v113;
  v116 = v115;
  v117 = v189 - v113 - v180;
  v214.origin.x = v193;
  v214.origin.y = v106;
  v214.size.width = v107;
  v214.size.height = v102;
  MaxY = CGRectGetMaxY(v214);
  v215.origin.x = x;
  v215.origin.y = y;
  v215.size.width = width;
  v215.size.height = height;
  v216.origin.y = (MaxY + CGRectGetMinY(v215)) * 0.5 - v116 * 0.5;
  v216.origin.x = v117;
  v216.size.width = v114;
  v216.size.height = v116;
  v217 = CGRectIntegral(v216);
  v111 = v217.origin.x;
  v119 = v217.origin.y;
  v120 = v217.size.width;
  v121 = v217.size.height;
LABEL_34:
  MEMORY[0x28223BE20](v109, v110);
  *(&v169 - 14) = a2;
  v160 = y;
  *(&v169 - 13) = x;
  *(&v169 - 12) = v160;
  v161 = height;
  *(&v169 - 11) = width;
  *(&v169 - 10) = v161;
  *(&v169 - 9) = v193;
  *(&v169 - 8) = v106;
  *(&v169 - 7) = v107;
  *(&v169 - 6) = v102;
  *(&v169 - 5) = v111;
  *(&v169 - 4) = v119;
  *(&v169 - 3) = v120;
  *(&v169 - 2) = v121;
  sub_22088C18C();

  result = v196;
  v163 = v195;
  v202 = v195;
  v164 = v201;
  v165 = v200;
  v207 = v200;
  v208 = v201;
  v166 = v197;
  v167 = v198;
  v203 = v196;
  v204 = v197;
  v205 = v198;
  v206 = v199;
  v168 = v182;
  *(v182 + 64) = v199;
  *(v168 + 80) = v165;
  *(v168 + 96) = v164;
  *v168 = v163;
  *(v168 + 16) = result;
  *(v168 + 32) = v166;
  *(v168 + 48) = v167;
  return result;
}

double sub_220783724@<D0>(uint64_t *a1@<X1>, double *a2@<X8>, double a11, double a12, double a13, double a14)
{
  v54 = a11;
  v53 = a12;
  v52 = a13;
  v51 = a14;
  v16 = sub_22088ABEC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *a1;
  v49 = a1[1];
  v21 = *MEMORY[0x277D6D320];
  v22 = *(v17 + 104);
  v22(v20, v21, v16);
  sub_22088ABDC();
  v47 = v24;
  v48 = v23;
  v45 = v26;
  v46 = v25;
  v27 = *(v17 + 8);
  v27(v20, v16);
  v22(v20, v21, v16);
  sub_22088ABDC();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v27(v20, v16);
  v22(v20, v21, v16);
  sub_22088ABDC();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v27(v20, v16);
  *a2 = v50;
  *(a2 + 1) = v49;
  *(a2 + 2) = v48;
  *(a2 + 3) = v47;
  *(a2 + 4) = v46;
  result = v45;
  a2[5] = v45;
  *(a2 + 6) = v29;
  *(a2 + 7) = v31;
  *(a2 + 8) = v33;
  *(a2 + 9) = v35;
  *(a2 + 10) = v37;
  *(a2 + 11) = v39;
  *(a2 + 12) = v41;
  *(a2 + 13) = v43;
  return result;
}

uint64_t sub_2207839C4()
{
  sub_220783DE0(0, &unk_281299440, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v20 - v2;
  v4 = sub_2208852BC();
  v22 = *(v4 - 8);
  v23 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2208852DC();
  v8 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22088521C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v20 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220783DE0(0, &qword_28127E1D0, MEMORY[0x277D84560]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22089B140;
  sub_22088520C();
  sub_22088520C();
  sub_22088520C();
  v17 = sub_2207E1DF8(v16);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_22088528C();
  sub_2208852CC();
  (*(v8 + 8))(v11, v21);
  sub_22088529C();
  (*(v22 + 8))(v7, v23);
  if ((*(v13 + 48))(v3, 1, v12) == 1)
  {

    return sub_220783E40(v3);
  }

  else
  {
    v19 = v20;
    (*(v13 + 32))(v20, v3, v12);
    sub_22056F7D4(v19, v17);

    return (*(v13 + 8))(v19, v12);
  }
}

void sub_220783DE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_22088521C();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220783E40(uint64_t a1)
{
  sub_220783DE0(0, &unk_281299440, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for StockFeedMastheadViewLayoutAttributes(uint64_t a1)
{
  result = qword_281281298;
  if (!qword_281281298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220783F3C(uint64_t a1)
{
  sub_22088D61C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UIUserInterfaceSizeClass(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_220784008@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22088D61C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_220784070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((sub_22088F0DC() & 1) != 0 || *(v2 + *(a1 + 60)))
  {
    v5 = MEMORY[0x277D6E860];
  }

  else
  {
    v10 = *MEMORY[0x277D6E850];
    v11 = sub_22088D82C();
    (*(*(v11 - 8) + 104))(a2, v10, v11);
    v5 = MEMORY[0x277D6E858];
  }

  v6 = *v5;
  v7 = sub_22088D83C();
  v8 = *(*(v7 - 8) + 104);

  return v8(a2, v6, v7);
}

uint64_t sub_220784158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + *(a1 + 60));
  v5 = sub_22088DDDC();
  v6 = *(*(v5 - 8) + 104);
  v7 = MEMORY[0x277D6EA88];
  if (v4)
  {
    v7 = MEMORY[0x277D6EA80];
  }

  v8 = *v7;

  return v6(a2, v8, v5);
}

double sub_2207841F4(uint64_t a1)
{
  sub_2207842B4(&qword_2812812B0, &unk_2208B37C0);

  sub_22088D90C();
  return result;
}

uint64_t sub_2207842B4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StockFeedMastheadViewLayoutAttributes(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2207842F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v76 = a3;
  v66 = a2;
  v4 = sub_22088B28C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_220884E9C();
  v71 = *(v9 - 8);
  v72 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v70 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2208878AC();
  v68 = *(v12 - 8);
  v69 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v67 = v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2208877BC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = v65 - v22;
  MEMORY[0x28223BE20](v24, v25);
  v27 = v65 - v26;
  v28 = sub_22088743C();
  v74 = *(v28 - 8);
  v75 = v28;
  MEMORY[0x28223BE20](v28, v29);
  v73 = (v65 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v31, v32);
  v34 = v65 - v33;
  v77 = a1;
  if (sub_22074BA08())
  {
    (*(v5 + 104))(v8, *MEMORY[0x277D6D6F8], v4);
    sub_2208889AC();
    return (*(v5 + 8))(v8, v4);
  }

  v36 = v78[6];
  v65[1] = v78[7];
  v65[0] = __swift_project_boxed_opaque_existential_1(v78 + 3, v36);
  v37 = MEMORY[0x277D2FBB0];
  sub_22047A344(0, &unk_27CF5A400, MEMORY[0x277D2FBB0], MEMORY[0x277D84560]);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_220899360;
  sub_2208877AC();
  v79 = v38;
  v39 = MEMORY[0x277D2FBB0];
  sub_2207872A0(&qword_27CF599B0, MEMORY[0x277D2FBB0], MEMORY[0x277D2FBC8]);
  sub_22047A344(0, &qword_27CF5A410, v37, MEMORY[0x277D83940]);
  sub_22055F7F4();
  sub_2208923FC();
  sub_2207872A0(&qword_27CF59858, v39, MEMORY[0x277D2FBC0]);
  sub_22089167C();
  sub_2207872A0(&qword_27CF5A880, v39, MEMORY[0x277D2FBD0]);
  sub_220892A8C();
  (*(v16 + 16))(v19, v23, v15);
  sub_2208923DC();
  v40 = *(v16 + 8);
  v40(v23, v15);
  v41 = v77;
  sub_2208875FC();
  v40(v27, v15);
  v43 = v73;
  v42 = v74;
  v44 = v75;
  (*(v74 + 16))(v73, v34, v75);
  v45 = (*(v42 + 88))(v43, v44);
  v46 = v34;
  if (v45 == *MEMORY[0x277D2F978])
  {
    goto LABEL_4;
  }

  v50 = v78;
  if (v45 == *MEMORY[0x277D2F968])
  {
    (*(v42 + 96))(v43, v44);
    __swift_project_boxed_opaque_existential_1(v50 + 8, v50[11]);
    sub_220887F0C();
    (*(v42 + 8))(v34, v44);
    return (*(v71 + 8))(v43, v72);
  }

  if (v45 == *MEMORY[0x277D2F960])
  {
    (*(v42 + 96))(v43, v44);
    v52 = *v43;
    v51 = v43[1];
    sub_220786F34(0);
    v54 = 48;
LABEL_11:
    v55 = *(v53 + v54);
    v56 = sub_220887C9C();
    (*(*(v56 - 8) + 8))(v43 + v55, v56);
    v58 = v67;
    v57 = v68;
    v59 = v66;
    v60 = v69;
    (*(v68 + 16))(v67, v66, v69);
    v61 = (*(v57 + 88))(v58, v60);
    if (v61 == *MEMORY[0x277D2FC50])
    {
      sub_2207856A4(v52, v51, v50[13]);
    }

    else
    {
      if (v61 != *MEMORY[0x277D2FC58] && v61 != *MEMORY[0x277D2FC40] && v61 != *MEMORY[0x277D2FC48])
      {

        (*(v42 + 8))(v46, v44);
        return (*(v68 + 8))(v67, v69);
      }

      sub_220784FB0(v52, v51, v59, v62);
    }

    return (*(v42 + 8))(v46, v44);
  }

  if (v45 == *MEMORY[0x277D2F970])
  {
    (*(v42 + 96))(v43, v44);
    v52 = *v43;
    v51 = v43[1];

    sub_220786E8C(0);
    v54 = 64;
    goto LABEL_11;
  }

  if (v45 == *MEMORY[0x277D2F958])
  {
    (*(v42 + 8))(v43, v44);
LABEL_23:
    sub_220784D20(v41, v34);
    return (*(v42 + 8))(v46, v44);
  }

  if (v45 == *MEMORY[0x277D2F950])
  {
    (*(v42 + 96))(v43, v44);

    sub_220786FA0(0);
    sub_220787240(v43 + *(v63 + 48), &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_22047A344);
    goto LABEL_23;
  }

  if (v45 == *MEMORY[0x277D2F948])
  {
LABEL_4:
    (*(v42 + 96))(v43, v44);
    v48 = v70;
    v47 = v71;
    v49 = v72;
    (*(v71 + 32))(v70, v43, v72);
    sub_220784D20(v48, v34);
    (*(v47 + 8))(v48, v49);
    return (*(v42 + 8))(v46, v44);
  }

  v64 = *(v42 + 8);
  v64(v34, v44);
  return (v64)(v43, v44);
}

void sub_220784D20(uint64_t a1, uint64_t a2)
{
  v3 = sub_22088743C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v7 = [objc_opt_self() sharedApplication];
  v8 = sub_220884E3C();
  sub_2205CE854(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_2207872A0(&qword_27CF57590, type metadata accessor for OpenExternalURLOptionsKey, &unk_2208990A8);
  v9 = sub_22089125C();

  v10 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
  v11 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  (*(v4 + 32))(v12 + v11, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  aBlock[4] = sub_2207872E8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2206B2490;
  aBlock[3] = &block_descriptor_41;
  v13 = _Block_copy(aBlock);

  [v7 openURL:v8 options:v9 completionHandler:v13];
  _Block_release(v13);
}

uint64_t sub_220784FB0(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v68 = a1;
  v54 = a3;
  v4 = sub_2208878AC();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v53 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088D1DC();
  v59 = *(v7 - 8);
  v60 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v57 = (&v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10, v11);
  v58 = &v53 - v12;
  v67 = sub_220887C9C();
  v13 = *(v67 - 8);
  MEMORY[0x28223BE20](v67, v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x277CC9260];
  v65 = MEMORY[0x277D83D88];
  sub_22047A344(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v53 - v19;
  v64 = sub_2208874DC();
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64, v21);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v63, v24);
  v26 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204481D8(0);
  v61 = *(v27 + 48);
  v28 = &v26[*(v27 + 64)];
  v29 = sub_220884E9C();
  v30 = *(*(v29 - 8) + 56);
  v30(v20, 1, 1, v29);

  v31 = v26;
  sub_2208874CC();
  v30(v20, 1, 1, v29);
  v32 = v67;
  (*(v13 + 104))(v16, *MEMORY[0x277D2FF08], v67);
  sub_22088764C();
  (*(v13 + 8))(v16, v32);
  sub_220787240(v20, &qword_2812994E0, v66, v65, sub_22047A344);
  (*(v62 + 8))(v23, v64);
  v33 = v69;
  *(v28 + 4) = 0;
  *v28 = 0u;
  *(v28 + 1) = 0u;
  *(v31 + v61) = 0;
  type metadata accessor for StocksActivity.Article(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  __swift_project_boxed_opaque_existential_1((v33 + 120), *(v33 + 144));
  v34 = sub_22088B89C();
  if (v34)
  {
    v35 = v34;
    v36 = v55;
    v37 = v53;
    v38 = v56;
    (*(v55 + 16))(v53, v54, v56);
    v39 = (*(v36 + 88))(v37, v38);
    v40 = v58;
    if (v39 == *MEMORY[0x277D2FC50])
    {
LABEL_3:
      __swift_project_boxed_opaque_existential_1((v33 + 120), *(v33 + 144));
      v41 = v35;
      sub_22088B8AC();

      v42 = MEMORY[0x277D6E598];
      v43 = v57;
LABEL_11:
      v51 = v59;
      v50 = v60;
      (*(v59 + 104))(v43, *v42, v60);
      (*(v51 + 32))(v40, v43, v50);
      sub_22088B01C();

      (*(v51 + 8))(v40, v50);
      return sub_2205BA954(v31);
    }

    if (v39 == *MEMORY[0x277D2FC58])
    {
      __swift_project_boxed_opaque_existential_1((v33 + 120), *(v33 + 144));
      v44 = v35;
      v45 = sub_22088B8AC();

      v43 = v57;
      *v57 = v45;
      v42 = MEMORY[0x277D6E588];
      goto LABEL_11;
    }

    if (v39 == *MEMORY[0x277D2FC40])
    {
      __swift_project_boxed_opaque_existential_1((v33 + 120), *(v33 + 144));
      v46 = v35;
      v47 = sub_22088B8AC();

      v43 = v57;
      *v57 = 0;
      v43[1] = v47;
    }

    else
    {
      if (v39 != *MEMORY[0x277D2FC48])
      {
        (*(v36 + 8))(v37, v38);
        goto LABEL_3;
      }

      __swift_project_boxed_opaque_existential_1((v33 + 120), *(v33 + 144));
      v48 = v35;
      v49 = sub_22088B8AC();
      v43 = v57;
      *v57 = v35;
      v43[1] = v49;
    }

    v42 = MEMORY[0x277D6E590];
    goto LABEL_11;
  }

  return sub_2205BA954(v31);
}

uint64_t sub_2207856A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = a3;
  v54 = a2;
  v55 = a1;
  v4 = MEMORY[0x277D83D88];
  v52 = MEMORY[0x277D83D88];
  sub_22047A344(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v57 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v58 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v7;
  MEMORY[0x28223BE20](v8, v9);
  v60 = &v45 - v10;
  v53 = sub_220887C9C();
  v11 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x277CC9260];
  sub_22047A344(0, &qword_2812994E0, MEMORY[0x277CC9260], v4);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v45 - v17;
  v49 = sub_2208874DC();
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v19);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v48, v22);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(v3 + 112);
  sub_2204481D8(0);
  v46 = *(v25 + 48);
  v26 = &v24[*(v25 + 64)];
  v27 = sub_220884E9C();
  v28 = *(*(v27 - 8) + 56);
  v28(v18, 1, 1, v27);

  sub_2208874CC();
  v28(v18, 1, 1, v27);
  v29 = v53;
  (*(v11 + 104))(v14, *MEMORY[0x277D2FF08], v53);
  sub_22088764C();
  (*(v11 + 8))(v14, v29);
  sub_220787240(v18, &qword_2812994E0, v51, v52, sub_22047A344);
  (*(v47 + 8))(v21, v49);
  *(v26 + 4) = 0;
  *v26 = 0u;
  *(v26 + 1) = 0u;
  *&v24[v46] = 0;
  type metadata accessor for StocksActivity.Article(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v30 = sub_22088969C();
  (*(*(v30 - 8) + 56))(v60, 1, 1, v30);
  v69 = 0;
  memset(v68, 0, sizeof(v68));
  v67 = 0;
  memset(v66, 0, sizeof(v66));
  v65 = v50;
  sub_2207870E8(v66, &v61, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  if (v62)
  {
    sub_220458198(&v61, v63);
    v31 = sub_220597454(v63);
    v33 = v32;
    v35 = v34;
    __swift_destroy_boxed_opaque_existential_1(v63);
  }

  else
  {
    sub_220787240(&v61, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    if (qword_2812908F0 != -1)
    {
      swift_once();
    }

    v31 = qword_2812908F8;
    v33 = qword_281290900;
    v35 = qword_281290908;

    sub_2204A80F4(v33, v35);
  }

  v62 = sub_22088731C();
  v36 = v59;
  *&v61 = v59;
  v37 = v58;
  sub_2207870E8(v60, v58, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_22047A344);
  sub_2207870E8(v68, v63, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  v38 = (*(v57 + 80) + 24) & ~*(v57 + 80);
  v39 = (v56 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  *(v40 + 16) = v36;
  sub_2205A0994(v37, v40 + v38);
  v41 = v40 + v39;
  v42 = v63[1];
  *v41 = v63[0];
  *(v41 + 16) = v42;
  *(v41 + 32) = v64;
  v43 = (v40 + ((v39 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v43 = v31;
  v43[1] = v33;
  v43[2] = v35;
  swift_retain_n();

  sub_2204A80F4(v33, v35);
  sub_2204549FC(0);
  sub_2207872A0(&unk_281297EC0, sub_2204549FC, MEMORY[0x277D6D5F8]);
  sub_22088E92C();

  sub_2204DA45C(v33, v35);
  sub_220787240(v66, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  sub_220787240(v68, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  sub_220787240(v60, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_22047A344);
  sub_2205BA954(v24);
  return sub_220787240(&v61, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2204B1F2C);
}

uint64_t sub_2207860E4(uint64_t a1)
{
  v79 = a1;
  v2 = sub_220887C9C();
  v75 = *(v2 - 8);
  v76 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v74 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22047A344(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v72 = &v66 - v7;
  v73 = sub_2208874DC();
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73, v8);
  v70 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v78, v10);
  v69 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v81 = &v66 - v14;
  v15 = sub_2208877BC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22088743C();
  v82 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v21);
  v23 = (&v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v66 - v26;
  v28 = v1[6];
  v80 = v1[7];
  v77 = v1;
  __swift_project_boxed_opaque_existential_1(v1 + 3, v28);
  v83 = MEMORY[0x277D84F90];
  sub_2207872A0(&qword_27CF599B0, MEMORY[0x277D2FBB0], MEMORY[0x277D2FBC8]);
  sub_22047A344(0, &qword_27CF5A410, MEMORY[0x277D2FBB0], MEMORY[0x277D83940]);
  sub_22055F7F4();
  v29 = v79;
  sub_2208923FC();
  sub_2208875FC();
  v30 = v19;
  v31 = v20;
  v32 = v82;
  (*(v16 + 8))(v30, v15);
  v33 = *(v32 + 16);
  v80 = v27;
  v34 = v27;
  v35 = v23;
  v33(v23, v34, v31);
  v36 = (*(v32 + 88))(v23, v31);
  if (v36 == *MEMORY[0x277D2F960])
  {
    v37 = *(v32 + 96);
    v69 = v31;
    v37(v23, v31);
    v38 = v23[1];
    v79 = *v23;
    v68 = v38;
    sub_220786F34(0);
    v40 = 48;
LABEL_5:
    v43 = *(v39 + v40);
    v45 = v75;
    v44 = v76;
    v66 = *(v75 + 8);
    v66(v23 + v43, v76);
    v83 = v77[14];
    v46 = v83;
    sub_2204481D8(0);
    v67 = *(v47 + 48);
    v48 = v81;
    v49 = v81 + *(v47 + 64);
    v50 = sub_220884E9C();
    v51 = *(*(v50 - 8) + 56);
    v52 = v72;
    v51(v72, 1, 1, v50);
    v77 = v46;

    v53 = v70;
    sub_2208874CC();
    v51(v52, 1, 1, v50);
    v54 = v74;
    (*(v45 + 104))(v74, *MEMORY[0x277D2FF08], v44);
    sub_22088764C();
    v66(v54, v44);
    sub_220787240(v52, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_22047A344);
    (*(v71 + 8))(v53, v73);
    *(v48 + v67) = 0;
    type metadata accessor for StocksActivity.Article(0);
    *v49 = 0u;
    *(v49 + 16) = 0u;
    *(v49 + 32) = 0;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_2204549FC(0);
    sub_2207872A0(&unk_281297EC0, sub_2204549FC, MEMORY[0x277D6D5F8]);
    v55 = sub_22088E94C();
    v56 = v69;
    sub_2205BA954(v81);

    (*(v82 + 8))(v80, v56);
    return v55;
  }

  if (v36 == *MEMORY[0x277D2F970])
  {
    v41 = *(v32 + 96);
    v69 = v31;
    v41(v23, v31);
    v42 = v23[1];
    v79 = *v23;
    v68 = v42;

    sub_220786E8C(0);
    v40 = 64;
    goto LABEL_5;
  }

  if ((sub_220884DBC() & 1) != 0 && (v58 = sub_220884E3C(), v59 = [v58 fc_isNewsURL], v58, (v59 & 1) == 0))
  {
    v83 = v77[14];
    sub_22061013C(0);
    v62 = *(v61 + 48);
    v63 = sub_220884E9C();
    v64 = v69;
    (*(*(v63 - 8) + 16))(v69, v29, v63);
    *(v64 + v62) = 0;
    swift_storeEnumTagMultiPayload();
    sub_2204549FC(0);
    sub_2207872A0(&unk_281297EC0, sub_2204549FC, MEMORY[0x277D6D5F8]);

    v55 = sub_22088E94C();
    sub_2205BA954(v64);

    v65 = *(v32 + 8);
    v65(v80, v31);
    v65(v35, v31);
  }

  else
  {
    v60 = *(v32 + 8);
    v60(v80, v31);
    v60(v35, v31);
    return 0;
  }

  return v55;
}

uint64_t sub_220786A00()
{
  MEMORY[0x223D8B910](v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);

  __swift_destroy_boxed_opaque_existential_1(v0 + 15);

  return swift_deallocClassInstance();
}

uint64_t sub_220786A68(uint64_t a1)
{
  v2 = sub_2208877BC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2208878AC();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v12, *MEMORY[0x277D2FC50], v7, v10);
  v14[1] = MEMORY[0x277D84F90];
  sub_2207872A0(&qword_27CF599B0, MEMORY[0x277D2FBB0], MEMORY[0x277D2FBC8]);
  sub_22047A344(0, &qword_27CF5A410, MEMORY[0x277D2FBB0], MEMORY[0x277D83940]);
  sub_22055F7F4();
  sub_2208923FC();
  sub_2207842F8(a1, v12, v6);
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_220786CB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2208877BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = MEMORY[0x277D84F90];
  sub_2207872A0(&qword_27CF599B0, MEMORY[0x277D2FBB0], MEMORY[0x277D2FBC8]);
  sub_22047A344(0, &qword_27CF5A410, MEMORY[0x277D2FBB0], MEMORY[0x277D83940]);
  sub_22055F7F4();
  sub_2208923FC();
  sub_2207842F8(a1, a2, v8);
  return (*(v5 + 8))(v8, v4);
}

void sub_220786E8C(uint64_t a1)
{
  if (!qword_27CF599D0)
  {
    sub_2204B1F2C(255, &qword_28127E9C0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_220887C9C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CF599D0);
    }
  }
}

void sub_220786F34(uint64_t a1)
{
  if (!qword_27CF599E0)
  {
    sub_220887C9C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF599E0);
    }
  }
}

void sub_220786FA0(uint64_t a1)
{
  if (!qword_27CF59860)
  {
    sub_22047A344(255, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF59860);
    }
  }
}

double sub_22078703C(char a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if ((a1 & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1((Strong + 64), *(Strong + 88));

      sub_220887F0C();
    }
  }

  return result;
}

uint64_t sub_2207870E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_22078715C()
{
  sub_22047A344(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);

  return sub_220598700();
}

uint64_t sub_220787240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_2207872A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_2207872E8(char a1)
{
  v3 = *(sub_22088743C() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_22078703C(a1, v4, v5);
}

char *sub_22078735C(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  sub_2207889D8(0, &qword_27CF56D60, sub_22057E51C, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v33 - v15;
  v17 = OBJC_IVAR____TtC8StocksUI19StockSearchCellView_symbolLabel;
  *&v7[v17] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v18 = OBJC_IVAR____TtC8StocksUI19StockSearchCellView_nameLabel;
  *&v7[v18] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v19 = OBJC_IVAR____TtC8StocksUI19StockSearchCellView_exchangeLabel;
  *&v7[v19] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v20 = OBJC_IVAR____TtC8StocksUI19StockSearchCellView_priceLabel;
  *&v7[v20] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v21 = OBJC_IVAR____TtC8StocksUI19StockSearchCellView_priceChangeLabel;
  *&v7[v21] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v22 = OBJC_IVAR____TtC8StocksUI19StockSearchCellView_watchlistSelectionButton;
  if (qword_281296FD8 != -1)
  {
    swift_once();
  }

  sub_22057E51C(0);
  (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
  sub_22057E588(0);
  v25 = objc_allocWithZone(v24);

  *&v7[v22] = sub_22088BB5C();
  v7[OBJC_IVAR____TtC8StocksUI19StockSearchCellView_isSelectable] = 1;
  v7[OBJC_IVAR____TtC8StocksUI19StockSearchCellView_isSelected] = 0;
  v7[OBJC_IVAR____TtC8StocksUI19StockSearchCellView_isHighlightable] = 1;
  v7[OBJC_IVAR____TtC8StocksUI19StockSearchCellView_isHighlighted] = 0;
  v33.receiver = v7;
  v33.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v33, sel_initWithFrame_, a1, a2, a3, a4);
  v27 = *&v26[OBJC_IVAR____TtC8StocksUI19StockSearchCellView_symbolLabel];
  v28 = v26;
  [v28 addSubview_];
  v29 = OBJC_IVAR____TtC8StocksUI19StockSearchCellView_nameLabel;
  [v28 addSubview_];
  v30 = OBJC_IVAR____TtC8StocksUI19StockSearchCellView_exchangeLabel;
  [v28 addSubview_];
  [v28 addSubview_];
  [v28 addSubview_];
  v31 = OBJC_IVAR____TtC8StocksUI19StockSearchCellView_watchlistSelectionButton;
  [v28 addSubview_];
  [*&v28[v29] setNumberOfLines_];
  [*&v28[v30] setNumberOfLines_];
  [*&v28[v31] setClipsToBounds_];
  sub_22088F0DC();

  return v28;
}

uint64_t sub_2207877F4()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC8StocksUI19StockSearchCellView_isSelected;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_22078783C(char a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8StocksUI19StockSearchCellView_isSelected;
  result = swift_beginAccess();
  *(v3 + v4) = a1;
  return result;
}

uint64_t sub_2207878F4()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC8StocksUI19StockSearchCellView_isHighlighted;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_22078793C(char a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8StocksUI19StockSearchCellView_isHighlighted;
  result = swift_beginAccess();
  *(v3 + v4) = a1;
  return result;
}

void sub_220787A24()
{
  sub_2207883A8(&qword_28128F7B0, &unk_2208B395C);

  JUMPOUT(0x223D86790);
}

uint64_t sub_220787AB0(uint64_t a1, uint64_t a2)
{
  v17.receiver = v2;
  v17.super_class = swift_getObjectType();
  if (objc_msgSendSuper2(&v17, sel_isAccessibilityElement))
  {
    v3 = [objc_opt_self() currentRequest];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 technology];

      sub_2207889D8(0, &qword_28127DE98, type metadata accessor for AccessibilityTechnology, MEMORY[0x277D84560]);
      inited = swift_initStackObject();
      *(inited + 32) = *MEMORY[0x277CB8880];
      *(inited + 16) = xmmword_220899920;
      v7 = *MEMORY[0x277CB8890];
      *(inited + 40) = *MEMORY[0x277CB8890];
      v16 = v5;
      MEMORY[0x28223BE20](inited, v8);
      v15[2] = &v16;
      v10 = v9;
      v11 = v7;
      v12 = sub_2206A3C78(sub_22078871C, v15, inited);
      swift_setDeallocating();
      type metadata accessor for AccessibilityTechnology(0);
      swift_arrayDestroy();

      v13 = v12 ^ 1;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

unint64_t sub_220787CD8(uint64_t a1, uint64_t a2)
{
  v8.receiver = v2;
  v8.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v8, sel_accessibilityTraits);
  sub_22088BB3C();
  if (v7 == 2)
  {
    goto LABEL_2;
  }

  if (v7)
  {
    v5 = sub_2208928BC();

    if ((v5 & 1) == 0)
    {
LABEL_2:
      if ((*MEMORY[0x277D76598] & v3) != 0)
      {
        return v3 & ~*MEMORY[0x277D76598];
      }

      else
      {
        return v3;
      }
    }
  }

  else
  {
  }

  v6 = *MEMORY[0x277D76598];
  if ((*MEMORY[0x277D76598] & ~v3) == 0)
  {
    v6 = 0;
  }

  return v6 | v3;
}

uint64_t sub_220787FC0(uint64_t a1, uint64_t a2)
{
  v18.receiver = v2;
  v18.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v18, sel_accessibilityCustomActions);
  if (v3)
  {
    v4 = v3;
    sub_22044D56C(0, &unk_281299868, 0x277D75088);
    v5 = sub_2208916EC();
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v19 = v5;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  v8 = [objc_opt_self() configurationWithPointSize_];
  v9 = sub_22089132C();
  v10 = [objc_opt_self() systemImageNamed:v9 withConfiguration:v8];

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = objc_allocWithZone(MEMORY[0x277D75088]);

  v13 = sub_22089132C();

  aBlock[4] = sub_220788714;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22060CBAC;
  aBlock[3] = &block_descriptor_42;
  v14 = _Block_copy(aBlock);
  [v12 initWithName:v13 image:v10 actionHandler:v14];

  _Block_release(v14);

  MEMORY[0x223D89870](v15);
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22089177C();
  }

  sub_22089179C();
  return v19;
}

uint64_t sub_2207883A8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StockSearchCellView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2207883E8(uint64_t a1, uint64_t a2)
{
  v2 = sub_2208854AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v25 - v9;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    sub_22044D56C(0, &qword_27CF59750, 0x277D752A8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    while (![v12 isKindOfClass_])
    {
      v14 = [v12 superview];

      v12 = v14;
      if (!v14)
      {
        return 0;
      }
    }

    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v16 = v15;
      v25 = v3;
      sub_22044D56C(0, &qword_28127E820, 0x277D752A0);
      v17 = swift_getObjCClassFromMetadata();
      v12 = v12;
      v18 = v12;
      while (![v18 isKindOfClass_])
      {
        v19 = [v18 superview];

        v18 = v19;
        if (!v19)
        {
          goto LABEL_10;
        }
      }

      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();
      if (!v20)
      {

        return 0;
      }

      v21 = v20;
      v22 = [v20 indexPathForCell_];
      if (v22)
      {
        v23 = v22;
        sub_22088545C();

        v24 = v25;
        (*(v25 + 32))(v10, v6, v2);
        if ([v21 delegate])
        {
          sub_22088D15C();
          if (swift_dynamicCastClass())
          {
            sub_22088D13C();
            swift_unknownObjectRelease();

            (*(v24 + 8))(v10, v2);
            return 1;
          }

          swift_unknownObjectRelease();
        }

        else
        {
        }

        (*(v24 + 8))(v10, v2);
        return 0;
      }
    }

LABEL_10:

    return 0;
  }

  return result;
}

void sub_22078873C()
{
  v1 = v0;
  sub_2207889D8(0, &qword_27CF56D60, sub_22057E51C, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v14 - v4;
  v6 = OBJC_IVAR____TtC8StocksUI19StockSearchCellView_symbolLabel;
  *(v1 + v6) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v7 = OBJC_IVAR____TtC8StocksUI19StockSearchCellView_nameLabel;
  *(v1 + v7) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v8 = OBJC_IVAR____TtC8StocksUI19StockSearchCellView_exchangeLabel;
  *(v1 + v8) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v9 = OBJC_IVAR____TtC8StocksUI19StockSearchCellView_priceLabel;
  *(v1 + v9) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v10 = OBJC_IVAR____TtC8StocksUI19StockSearchCellView_priceChangeLabel;
  *(v1 + v10) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v11 = OBJC_IVAR____TtC8StocksUI19StockSearchCellView_watchlistSelectionButton;
  if (qword_281296FD8 != -1)
  {
    swift_once();
  }

  sub_22057E51C(0);
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  sub_22057E588(0);
  objc_allocWithZone(v13);

  *(v1 + v11) = sub_22088BB5C();
  *(v1 + OBJC_IVAR____TtC8StocksUI19StockSearchCellView_isSelectable) = 1;
  *(v1 + OBJC_IVAR____TtC8StocksUI19StockSearchCellView_isSelected) = 0;
  *(v1 + OBJC_IVAR____TtC8StocksUI19StockSearchCellView_isHighlightable) = 1;
  *(v1 + OBJC_IVAR____TtC8StocksUI19StockSearchCellView_isHighlighted) = 0;
  sub_22089267C();
  __break(1u);
}

void sub_2207889D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_220788A4C()
{
  sub_2205A9918(0);
  v0 = sub_22088C37C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2208AB1B0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277D6DE38], v0);
  v6(v5 + v2, *MEMORY[0x277D6DE28], v0);
  v6(v5 + 2 * v2, *MEMORY[0x277D6DE48], v0);
  v6(v5 + 3 * v2, *MEMORY[0x277D6DE50], v0);
  v6(v5 + 4 * v2, *MEMORY[0x277D6DE30], v0);
  v6(v5 + 5 * v2, *MEMORY[0x277D6DE58], v0);
  v7 = sub_2207E15E8(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v7;
}

uint64_t sub_220788C1C(uint64_t a1, void (*a2)(char *))
{
  sub_22051D794(0, &qword_281297840, MEMORY[0x277D6DF88]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v16 - v8;
  sub_220525DD8(0);
  v11 = *(v10 + 48);
  sub_22051D794(0, &qword_281296EA0, MEMORY[0x277D6EC60]);
  (*(*(v12 - 8) + 16))(v9, a1, v12);
  v13 = *MEMORY[0x277D6D850];
  v14 = sub_22088B64C();
  (*(*(v14 - 8) + 104))(&v9[v11], v13, v14);
  (*(v6 + 104))(v9, *MEMORY[0x277D6DF48], v5);
  a2(v9);
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_220788DEC()
{
  result = qword_281281F48;
  if (!qword_281281F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281281F48);
  }

  return result;
}

uint64_t _s5TeaUI15ContextMenuItemC06StocksB0E8copyLink5stockAC0F4Core5StockV_tFZ_0(uint64_t a1, __n128 a2)
{
  v3 = sub_22088BA1C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088685C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22047C320(0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22088BA4C();
  MEMORY[0x28223BE20](v17 - 8, v18);
  sub_22088E4CC();
  v24[1] = sub_22088E4BC();
  sub_22088678C();
  v19 = sub_220884E9C();
  (*(*(v19 - 8) + 56))(v16, 0, 1, v19);
  (*(v9 + 16))(v12, a1, v8);
  sub_22088BA3C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  v22 = [objc_opt_self() ts_link];
  (*(v4 + 104))(v7, *MEMORY[0x277D6D9A8], v3);
  sub_22088B17C();
  swift_allocObject();
  return sub_22088B10C();
}

uint64_t sub_22078925C(uint64_t a1)
{
  v2 = sub_22088BE7C();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = sub_22088685C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22047C320(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22088BA4C();
  MEMORY[0x28223BE20](v13 - 8, v14);
  sub_22088E4CC();
  sub_22088E4BC();
  sub_22088678C();
  v15 = sub_220884E9C();
  (*(*(v15 - 8) + 56))(v12, 0, 1, v15);
  (*(v5 + 16))(v8, a1, v4);
  sub_22088BA3C();
  sub_22089132C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  v18 = [objc_opt_self() ts_link];
  sub_22088BE6C();
  sub_22088B25C();
  swift_allocObject();
  return sub_22088B24C();
}

uint64_t sub_2207895A8(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v6 = type metadata accessor for StockListStockModel(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *a3;
  sub_22046B36C(0);
  sub_22088AD8C();
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      sub_2204AE454(v13, type metadata accessor for StockListModel);
      __swift_project_boxed_opaque_existential_1((v4 + 48), *(v4 + 72));
      return sub_22078040C();
    }
  }

  else
  {
    sub_2204CDB9C(v13, v9);
    __swift_project_boxed_opaque_existential_1((v4 + 48), *(v4 + 72));
    v16 = sub_2208276B0();
    v18 = v14;
    sub_22077F41C(v9, v16, &v18);

    return sub_2204AE454(v9, type metadata accessor for StockListStockModel);
  }

  return result;
}

uint64_t sub_22078974C(uint64_t a1)
{
  sub_22046D664(0, &qword_2812993D0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v16 - v4;
  v6 = sub_2208854AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_2204D59E8(a1, v5);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      swift_unknownObjectRelease();
      return sub_22057E664(v5);
    }

    else
    {
      (*(v7 + 32))(v10, v5, v6);
      v12 = *MEMORY[0x277D76488];
      sub_22088C71C();
      v13 = sub_22088BFCC();

      v14 = sub_22088544C();
      v15 = [v13 cellForItemAtIndexPath_];

      UIAccessibilityPostNotification(v12, v15);
      swift_unknownObjectRelease();

      return (*(v7 + 8))(v10, v6);
    }
  }

  return result;
}

void sub_22078997C(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = __swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR____TtC8StocksUI23StockListViewController_renderer), *(Strong + OBJC_IVAR____TtC8StocksUI23StockListViewController_renderer + 24));
    v9 = sub_2204A28F0();
    v4 = *v3;
    v5 = sub_2204CF368();
    if (v6)
    {
      v7 = v5;
      v8 = v6;
      __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
      sub_22087D43C(v7, v8);
    }

    sub_22088BA7C();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_220789A70(uint64_t a1)
{
  v1 = type metadata accessor for StockSearchMode(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    *(swift_allocObject() + 16) = result;
    swift_unknownObjectRetain();
    sub_220888FEC();

    __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC8StocksUI23StockListViewController_activeWatchlistProvider), *(v6 + OBJC_IVAR____TtC8StocksUI23StockListViewController_activeWatchlistProvider + 24));
    sub_2208863EC();
    v7 = sub_220886A4C();
    (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
    sub_220766FCC(v4);
    swift_unknownObjectRelease();
    return sub_2204AE454(v4, type metadata accessor for StockSearchMode);
  }

  return result;
}

uint64_t sub_220789BE4(uint64_t a1)
{
  v1 = type metadata accessor for StockSearchMode(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    swift_unknownObjectRetain();
    sub_220888FEC();

    v6 = sub_220886A4C();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    sub_220766FCC(v4);
    swift_unknownObjectRelease();
    return sub_2204AE454(v4, type metadata accessor for StockSearchMode);
  }

  return result;
}

uint64_t sub_220789D3C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for StockFeedModel(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055E01C(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055E050(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22078A05C(0, &unk_281296F10, MEMORY[0x277D6EC60]);
  sub_22088E83C();
  sub_22078A05C(0, &qword_281297DE0, MEMORY[0x277D6D710]);
  v15 = v14;
  v16 = *(v14 - 8);
  if ((*(v16 + 48))(v9, 1, v14) == 1)
  {
    v17 = sub_22055E01C;
    v18 = v9;
LABEL_5:
    sub_22078A150(v18, v17);
    v22 = sub_22088676C();
    return (*(*(v22 - 8) + 56))(a1, 1, 1, v22);
  }

  sub_22088B3AC();
  (*(v16 + 8))(v9, v15);
  sub_22055D328(0);
  v20 = v19;
  v21 = *(v19 - 8);
  if ((*(v21 + 48))(v13, 1, v19) == 1)
  {
    v17 = sub_22055E050;
    v18 = v13;
    goto LABEL_5;
  }

  sub_22088AD8C();
  (*(v21 + 8))(v13, v20);
  sub_2207A8350(a1);
  return sub_22078A150(v5, type metadata accessor for StockFeedModel);
}

void sub_22078A05C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for StockFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for StockFeedModel(255);
    v8[2] = sub_22044456C(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A1FAC);
    v8[3] = sub_22044456C(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_22078A150(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void __swiftcall WelcomeModule.createViewController()(UIViewController *__return_ptr retstr)
{
  v2 = sub_22088A07C();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x277D68FC0], v2, v5);
  sub_22088721C();
  (*(v3 + 8))(v7, v2);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC8StocksUI13WelcomeModule_resolver), *(v1 + OBJC_IVAR____TtC8StocksUI13WelcomeModule_resolver + 24));
  type metadata accessor for WelcomeViewController();

  v8 = sub_2208884AC();

  if (v8)
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22078A330(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  return sub_22088836C();
}

id WelcomeModule.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WelcomeModule.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_22078A644()
{
  v1 = sub_22088A07C();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  (*(v2 + 104))(v6, *MEMORY[0x277D68FC0], v1, v4);
  sub_22088721C();
  (*(v2 + 8))(v6, v1);
  __swift_project_boxed_opaque_existential_1((v7 + OBJC_IVAR____TtC8StocksUI13WelcomeModule_resolver), *(v7 + OBJC_IVAR____TtC8StocksUI13WelcomeModule_resolver + 24));
  type metadata accessor for WelcomeViewController();

  v8 = sub_2208884AC();

  if (v8)
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22078A7E0()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2208854FC();
  v12 = MEMORY[0x28223BE20](v10, v11);
  (*(v14 + 104))(&v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D69120], v12);
  (*(v6 + 104))(v9, *MEMORY[0x277D6D0A8], v5);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  sub_22078AA64(0);
  swift_allocObject();
  result = sub_220886C5C();
  qword_281298FB0 = result;
  return result;
}

void sub_22078AA64(uint64_t a1)
{
  if (!qword_281298CE8)
  {
    sub_2208854FC();
    sub_22078AAC8();
    v1 = sub_220886C4C();
    if (!v2)
    {
      atomic_store(v1, &qword_281298CE8);
    }
  }
}

unint64_t sub_22078AAC8()
{
  result = qword_2812993B8;
  if (!qword_2812993B8)
  {
    sub_2208854FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812993B8);
  }

  return result;
}

unint64_t sub_22078AB48()
{
  result = qword_27CF598C8;
  if (!qword_27CF598C8)
  {
    type metadata accessor for BilingualFeedCommandHandler();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF598C8);
  }

  return result;
}

void sub_22078AB9C()
{
  v1 = v0;
  v2 = *(v0 + 40);
  v3 = __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v4 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v3, v3);
  v7 = &v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  sub_220885E3C();
  (*(v4 + 8))(v7, v2);
  sub_22046DA2C(v1 + 16, v12);
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_220885E4C();
  __swift_destroy_boxed_opaque_existential_1(v12);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  v10 = sub_22089132C();

  MEMORY[0x223D8ADB0](v10);
}

uint64_t sub_22078ADA4(uint64_t a1)
{
  v3 = sub_2208877BC();
  v61 = *(v3 - 8);
  v62 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v60 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22088743C();
  v63 = *(v6 - 8);
  v64 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v65 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_220884E9C();
  v10 = *(v9 - 8);
  v67 = v9;
  v68 = v10;
  MEMORY[0x28223BE20](v9, v11);
  v66 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22088685C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22078C150(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v25 = v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v29 = v57 - v28;
  v70 = &unk_283496E68;
  v30 = swift_dynamicCastObjCProtocolConditional();
  if (!v30)
  {
    return 0;
  }

  v31 = v30;
  swift_unknownObjectRetain();
  sub_22078B634(v31, v1, v29);
  v59 = v29;
  sub_220576A98(v29, v25);
  v32 = (*(v18 + 48))(v25, 1, v17);
  v58 = v1;
  if (v32 != 1)
  {
    v57[1] = a1;
    (*(v18 + 32))(v21, v25, v17);
    v69 = *(*(v1 + OBJC_IVAR____TtC8StocksUI21ActionPreviewActivity_router) + 112);
    sub_2205DE35C(0);
    v34 = *(v33 + 48);
    (*(v18 + 16))(v16, v21, v17);
    *&v16[v34] = 0;
    type metadata accessor for StocksActivity.StockFeed(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_2204549FC(0);
    sub_22078C108(&unk_281297EC0, sub_2204549FC, MEMORY[0x277D6D5F8]);

    sub_22088E94C();
    sub_2205BA954(v16);

    v55 = objc_allocWithZone(sub_22088C0BC());
    v38 = sub_22088C0AC();
    swift_unknownObjectRelease();
    (*(v18 + 8))(v21, v17);
LABEL_13:
    sub_22078C1B4(v59, &qword_281299060, MEMORY[0x277D69810]);
    return v38;
  }

  sub_22078C1B4(v25, &qword_281299060, MEMORY[0x277D69810]);
  v35 = v58;
  v36 = [v31 URL];
  v37 = v66;
  sub_220884E4C();

  v38 = sub_2207860E4(v37);
  v39 = v68 + 8;
  v40 = *(v68 + 8);
  v40(v37, v67);
  if (v38)
  {
    v41 = *(v35 + OBJC_IVAR____TtC8StocksUI21ActionPreviewActivity_handler + 24);
    v58 = *(v35 + OBJC_IVAR____TtC8StocksUI21ActionPreviewActivity_handler + 32);
    __swift_project_boxed_opaque_existential_1((v35 + OBJC_IVAR____TtC8StocksUI21ActionPreviewActivity_handler), v41);
    v42 = [v31 URL];
    v68 = v39;
    v43 = v42;
    sub_220884E4C();

    v69 = MEMORY[0x277D84F90];
    sub_22078C108(&qword_27CF599B0, MEMORY[0x277D2FBB0], MEMORY[0x277D2FBC8]);
    sub_22078C150(0, &qword_27CF5A410, MEMORY[0x277D2FBB0], MEMORY[0x277D83940]);
    sub_22055F7F4();
    v44 = v60;
    v45 = v62;
    sub_2208923FC();
    v46 = v65;
    sub_2208875FC();
    (*(v61 + 8))(v44, v45);
    v40(v37, v67);
    v48 = v63;
    v47 = v64;
    v49 = (*(v63 + 88))(v46, v64);
    if (v49 == *MEMORY[0x277D2F960])
    {
      (*(v48 + 96))(v46, v47);

      sub_220786F34(0);
      v51 = 48;
    }

    else
    {
      if (v49 != *MEMORY[0x277D2F970])
      {
        sub_22078C1B4(v59, &qword_281299060, MEMORY[0x277D69810]);
        swift_unknownObjectRelease();
        (*(v48 + 8))(v46, v47);
        return v38;
      }

      (*(v48 + 96))(v46, v47);

      sub_220786E8C(0);
      v51 = 64;
    }

    v52 = *(v50 + v51);
    v53 = sub_220887C9C();
    (*(*(v53 - 8) + 8))(&v46[v52], v53);
    v54 = objc_allocWithZone(sub_22088C0BC());
    v38 = sub_22088C0AC();
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  sub_22078C1B4(v59, &qword_281299060, MEMORY[0x277D69810]);
  swift_unknownObjectRelease();
  return v38;
}

double sub_22078B634@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32[1] = a2;
  v38 = a3;
  v5 = sub_2208887CC();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v34 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22078C150(0, &qword_281298898, MEMORY[0x277D6CBF0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v32 - v10;
  v12 = sub_22088880C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v33 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_220884E9C();
  v18 = [a1 URL];
  sub_220884E4C();

  sub_220888A0C();
  swift_allocObject();
  sub_2208889EC();
  v19 = MEMORY[0x277D84560];
  sub_22078C150(0, &qword_28127E130, MEMORY[0x277D6CCC0], MEMORY[0x277D84560]);
  sub_220888A9C();
  v20 = swift_allocObject();
  v37 = xmmword_220899360;
  *(v20 + 16) = xmmword_220899360;
  sub_22078C150(0, &qword_28127E140, MEMORY[0x277D6CCA0], v19);
  v21 = *(sub_220888A2C() - 8);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v37;
  v24 = (v23 + v22);
  *v24 = 0x6C6F626D7973;
  v24[1] = 0xE600000000000000;
  (*(v21 + 104))();
  sub_2205CEF04(MEMORY[0x277D84F90]);
  sub_220888A3C();
  sub_2208889FC();

  (*(v13 + 56))(v11, 0, 1, v12);
  v26 = v33;
  (*(v13 + 32))(v33, v11, v12);
  v27 = v34;
  sub_2208887EC();
  v28 = sub_2208887BC();
  v30 = v29;
  (*(v35 + 8))(v27, v36);
  if (v30)
  {
    v39 = v28;
    v40 = v30;

    sub_220888D3C();

    (*(v13 + 8))(v26, v12);
  }

  else
  {
    (*(v13 + 8))(v26, v12);

    v25 = sub_22088685C();
    (*(*(v25 - 8) + 56))(v38, 1, 1, v25);
  }

  return result;
}

void *sub_22078BDC0(uint64_t a1)
{
  v2 = sub_2208877BC();
  v20 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2208878AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_220884E9C();
  v11 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v12);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = &unk_283496E68;
  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    v16 = result;
    v18[1] = *(v1 + OBJC_IVAR____TtC8StocksUI21ActionPreviewActivity_router);
    swift_unknownObjectRetain();
    v17 = [v16 URL];
    sub_220884E4C();

    (*(v7 + 104))(v10, *MEMORY[0x277D2FC50], v6);
    v21 = MEMORY[0x277D84F90];
    sub_22078C108(&qword_27CF599B0, MEMORY[0x277D2FBB0], MEMORY[0x277D2FBC8]);
    sub_22078C150(0, &qword_27CF5A410, MEMORY[0x277D2FBB0], MEMORY[0x277D83940]);
    sub_22055F7F4();
    sub_2208923FC();
    sub_2207842F8(v14, v10, v5);
    swift_unknownObjectRelease();
    (*(v20 + 8))(v5, v2);
    (*(v7 + 8))(v10, v6);
    return (*(v11 + 8))(v14, v19);
  }

  return result;
}

uint64_t sub_22078C108(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22078C150(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22078C1B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22078C150(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22078C274()
{

  return swift_deallocClassInstance();
}

void *sub_22078C2B4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_22078C2F8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_22078C390()
{
  sub_22054B9F8(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

char *sub_22078C4B0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = Strong;
  v3 = [objc_opt_self() currentRequest];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 technology];

    v6 = sub_22089136C();
    v8 = v7;
    if (v6 == sub_22089136C() && v8 == v9)
    {
    }

    else
    {
      v11 = sub_2208928BC();

      if ((v11 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

LABEL_8:
  v12 = *&v2[OBJC_IVAR____TtC8StocksUI9StockView_axElement];
  if (v12)
  {
    v13 = type metadata accessor for StockView.StockViewAXElement();
  }

  else
  {
    v13 = 0;
    v23[1] = 0;
    v23[2] = 0;
  }

  v23[0] = v12;
  v23[3] = v13;
  v15 = v12;
  sub_2205BF038(v23, &v21);
  v19[0] = v21;
  v19[1] = v22;
  if (*(&v22 + 1))
  {
    sub_2204A62A4(v19, v20);
    v14 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_220588200(0, *(v14 + 2) + 1, 1, v14);
    }

    v17 = *(v14 + 2);
    v16 = *(v14 + 3);
    if (v17 >= v16 >> 1)
    {
      v14 = sub_220588200((v16 > 1), v17 + 1, 1, v14);
    }

    *(v14 + 2) = v17 + 1;
    sub_2204A62A4(v20, &v14[32 * v17 + 32]);
  }

  else
  {
    sub_22056D130(v19);
    v14 = MEMORY[0x277D84F90];
  }

  sub_22056D130(v23);

  return v14;
}

id sub_22078C6DC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    v4 = sub_2208916DC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_22078C960()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC8StocksUI9StockView_symbolLabel);

    v4 = [v3 text];
    if (v4)
    {
      v5 = sub_22089136C();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    v47 = v5;
    v48 = v7;
  }

  else
  {
    v47 = 0;
    v48 = 0;
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = *(v8 + OBJC_IVAR____TtC8StocksUI9StockView_companyLabel);

    v11 = [v10 text];
    if (v11)
    {
      v12 = sub_22089136C();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    v49 = v12;
    v50 = v14;
  }

  else
  {
    v49 = 0;
    v50 = 0;
  }

  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    v17 = *(v15 + OBJC_IVAR____TtC8StocksUI9StockView_companyLabelLong);

    v18 = [v17 text];
    if (v18)
    {
      v19 = sub_22089136C();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    v51 = v19;
    v52 = v21;
  }

  else
  {
    v51 = 0;
    v52 = 0;
  }

  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
    v24 = *(v22 + OBJC_IVAR____TtC8StocksUI9StockView_accessibilityUserInputCompanyLabel);
    v23 = *(v22 + OBJC_IVAR____TtC8StocksUI9StockView_accessibilityUserInputCompanyLabel + 8);
    v25 = v22;
  }

  else
  {
    v24 = 0;
    v23 = 0;
  }

  v53 = v24;
  v54 = v23;
  v26 = swift_unknownObjectWeakLoadStrong();
  if (v26)
  {
    v28 = *(v26 + OBJC_IVAR____TtC8StocksUI9StockView_accessibilityUserInputCompanyName);
    v27 = *(v26 + OBJC_IVAR____TtC8StocksUI9StockView_accessibilityUserInputCompanyName + 8);
    v29 = v26;
  }

  else
  {
    v28 = 0;
    v27 = 0;
  }

  v55 = v28;
  v56 = v27;
  isUniquelyReferenced_nonNull_native = [v0 accessibilityLabel];
  if (isUniquelyReferenced_nonNull_native)
  {
    v32 = isUniquelyReferenced_nonNull_native;
    v33 = sub_22089136C();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0;
  }

  v36 = 0;
  v57 = v33;
  v58 = v35;
  v37 = MEMORY[0x277D84F90];
  do
  {
    v38 = *(&v48 + v36 * 8);
    if (v38)
    {
      v39 = v46[v36 + 6];
      v40 = HIBYTE(v38) & 0xF;
      if ((v38 & 0x2000000000000000) == 0)
      {
        v40 = v39 & 0xFFFFFFFFFFFFLL;
      }

      if (v40)
      {
        v46[0] = v46[v36 + 6];
        v46[1] = v38;
        MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native, v31);
        v45[2] = v46;

        if (sub_2206A3BCC(sub_2205AB898, v45, v37))
        {
        }

        else
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_22045E924(0, *(v37 + 16) + 1, 1, v37);
            v37 = isUniquelyReferenced_nonNull_native;
          }

          v42 = *(v37 + 16);
          v41 = *(v37 + 24);
          if (v42 >= v41 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_22045E924((v41 > 1), v42 + 1, 1, v37);
            v37 = isUniquelyReferenced_nonNull_native;
          }

          *(v37 + 16) = v42 + 1;
          v43 = v37 + 16 * v42;
          *(v43 + 32) = v39;
          *(v43 + 40) = v38;
        }
      }
    }

    v36 += 2;
  }

  while (v36 != 12);
  sub_2204D05C8(0, &qword_28127EBE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  swift_arrayDestroy();
  return v37;
}

uint64_t sub_22078CDB0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = *(Strong + OBJC_IVAR____TtC8StocksUI9StockView_makeAccessibilityCustomActions);
  v2 = *(Strong + OBJC_IVAR____TtC8StocksUI9StockView_makeAccessibilityCustomActions + 8);
  v3 = Strong;
  sub_2204A80F4(v1, v2);

  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = v1();
  sub_2204DA45C(v1, v2);
  return v4;
}

uint64_t sub_22078CFB0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = [*(Strong + OBJC_IVAR____TtC8StocksUI9StockView_companyLabelLong) text];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithString_];
  }

  else
  {
    v4 = 0;
  }

  v6 = [*&v1[OBJC_IVAR____TtC8StocksUI9StockView_symbolLabel] text];
  if (!v6)
  {
    v22 = 0;
    goto LABEL_17;
  }

  v42 = v4;
  v7 = v6;
  sub_22089136C();

  sub_22078E05C(0, &qword_28127DE80, sub_2204A5D84);
  inited = swift_initStackObject();
  v9 = *MEMORY[0x277D76508];
  *(inited + 32) = *MEMORY[0x277D76508];
  v41 = xmmword_220899360;
  *(inited + 16) = xmmword_220899360;
  *(inited + 64) = MEMORY[0x277D839B0];
  *(inited + 40) = 1;
  v10 = v9;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2205613E0(inited + 32);
  sub_22078E05C(0, &qword_28127DE98, type metadata accessor for AccessibilityTechnology);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_220899920;
  v12 = *MEMORY[0x277CB88B0];
  *(v11 + 32) = *MEMORY[0x277CB88B0];
  v13 = *MEMORY[0x277CB88A0];
  *(v11 + 40) = *MEMORY[0x277CB88A0];
  v14 = objc_opt_self();
  v15 = v12;
  v16 = v13;
  v17 = [v14 currentRequest];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 technology];

    v43 = v19;
    MEMORY[0x28223BE20](v20, v21);
    v40[2] = &v43;
    LOBYTE(v18) = sub_2206A3C78(sub_22078871C, v40, v11);
    swift_setDeallocating();
    type metadata accessor for AccessibilityTechnology(0);
    swift_arrayDestroy();
    if (v18)
    {
      if (!v1[OBJC_IVAR____TtC8StocksUI9StockView_accessibilitySymbolLabelSpeechType])
      {

        v23 = swift_initStackObject();
        *(v23 + 16) = v41;
        v24 = *MEMORY[0x277D76518];
        *(v23 + 32) = *MEMORY[0x277D76518];
        *(v23 + 64) = MEMORY[0x277D839B0];
        *(v23 + 40) = 1;
        v25 = v24;
        sub_2204A5EAC(v23);
        swift_setDeallocating();
        sub_2205613E0(v23 + 32);
        sub_2208913EC();

        goto LABEL_16;
      }

      if (v1[OBJC_IVAR____TtC8StocksUI9StockView_accessibilitySymbolLabelSpeechType] != 1)
      {

        sub_2204A5EAC(MEMORY[0x277D84F90]);
      }
    }
  }

  else
  {
    swift_setDeallocating();
    type metadata accessor for AccessibilityTechnology(0);
    swift_arrayDestroy();
  }

LABEL_16:
  v26 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v27 = sub_22089132C();

  type metadata accessor for Key(0);
  sub_22049F468(&qword_28127E6A8, 255, type metadata accessor for Key, &unk_220899024);
  v28 = sub_22089125C();

  v22 = [v26 initWithString:v27 attributes:v28];

  v4 = v42;
LABEL_17:
  sub_22088E00C();
  if (v43 != 2 && (v43 & 1) != 0 && (v29 = [*&v1[OBJC_IVAR____TtC8StocksUI9StockView_exchangeLabel] text]) != 0)
  {
    v30 = v29;
    v31 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithString_];
  }

  else
  {
    v31 = 0;
  }

  v32 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v33 = sub_22089132C();
  v34 = [v32 initWithString_];

  sub_22078E05C(0, &qword_28127DE88, sub_2204DD854);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_22089B140;
  *(v35 + 32) = v4;
  *(v35 + 40) = v22;
  *(v35 + 48) = v31;
  v36 = v31;
  v37 = v4;
  v38 = v22;
  v5 = sub_22088AD2C();

  return v5;
}

char *sub_22078D550()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v1 = Strong, , v1, sub_22088E00C(), , v20 == 2) || (v20 & 1) == 0)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v3 = result;
    v4 = OBJC_IVAR____TtC8StocksUI9StockView_priceChangeButton;
    v5 = [*&result[OBJC_IVAR____TtC8StocksUI9StockView_priceChangeButton] accessibilityLabel];
    if (v5)
    {
      v6 = v5;
      v7 = [*&v3[v4] accessibilityValue];
      if (v7)
      {
        v8 = v7;
        v9 = *&v3[OBJC_IVAR____TtC8StocksUI9StockView_accessibilityPriceString];
        if (v9)
        {
          v10 = objc_allocWithZone(MEMORY[0x277CCA898]);
          v11 = v9;
          v12 = sub_22089132C();
          v13 = [v10 initWithString_];

          sub_22078E05C(0, &qword_28127DE88, sub_2204DD854);
          v14 = swift_allocObject();
          *(v14 + 16) = xmmword_22089B140;
          *(v14 + 32) = v9;
          v15 = objc_allocWithZone(MEMORY[0x277CCA898]);
          v16 = v11;
          v17 = [v15 initWithString_];

          *(v14 + 40) = v17;
          v18 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithString_];

          *(v14 + 48) = v18;
          v19 = sub_22088AD2C();

          return v19;
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return 0;
}

id sub_22078D818(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_22078D968()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC8StocksUI9StockView_isSelected;
  swift_beginAccess();
  return *(v1 + v2);
}

id sub_22078DA14(uint64_t a1, double a2)
{
  [*(a1 + OBJC_IVAR____TtC8StocksUI9StockView_sparklineView) setAlpha_];
  [*(a1 + OBJC_IVAR____TtC8StocksUI9StockView_priceLabel) setAlpha_];
  [*(a1 + OBJC_IVAR____TtC8StocksUI9StockView_priceChangeButton) setAlpha_];
  [*(a1 + OBJC_IVAR____TtC8StocksUI9StockView_companyLabel) setAlpha_];
  v4 = 1.0 - a2;
  [*(a1 + OBJC_IVAR____TtC8StocksUI9StockView_exchangeLabel) setAlpha_];
  v5 = *(a1 + OBJC_IVAR____TtC8StocksUI9StockView_companyLabelLong);

  return [v5 setAlpha_];
}

void sub_22078DAE4(uint64_t a1, uint64_t a2)
{
  sub_22049F468(&qword_28127EE30, a2, type metadata accessor for StockView, &unk_2208B4084);

  JUMPOUT(0x223D86790);
}

uint64_t sub_22078DB50()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8StocksUI9StockView_sparklineView);
  v3 = sub_220890CCC();
  [v3 setImage_];

  v4 = OBJC_IVAR____TtC8StocksUI18StockSparklineView_baselineIndicatorLayer;
  v5 = 0.0;
  [*&v2[OBJC_IVAR____TtC8StocksUI18StockSparklineView_baselineIndicatorLayer] setFrame_];
  [*&v2[v4] setPath_];
  v6 = *(v1 + OBJC_IVAR____TtC8StocksUI9StockView_priceChangeButton);
  v7 = *&v6[OBJC_IVAR____TtCC8StocksUI9StockView17PriceChangeButton_onTap];

  sub_22088E00C();
  if (v10 != 2)
  {
    if (v10)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = 1.0;
    }

    if (v10)
    {
      v5 = 1.0;
    }

    [v2 setAlpha_];
    [*(v1 + OBJC_IVAR____TtC8StocksUI9StockView_priceLabel) setAlpha_];
    [v6 setAlpha_];
    [*(v1 + OBJC_IVAR____TtC8StocksUI9StockView_companyLabel) setAlpha_];
    [*(v1 + OBJC_IVAR____TtC8StocksUI9StockView_exchangeLabel) setAlpha_];
    [*(v1 + OBJC_IVAR____TtC8StocksUI9StockView_companyLabelLong) setAlpha_];
  }

  return sub_22088E02C();
}

uint64_t sub_22078DD14()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC8StocksUI9StockView_revision;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_22078DD5C(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8StocksUI9StockView_revision;
  result = swift_beginAccess();
  *(v3 + v4) = a1;
  return result;
}

id sub_22078DE90()
{
  sub_22088E03C();
  if (v4 != 1)
  {
    return 0;
  }

  result = [*(v0 + OBJC_IVAR____TtC8StocksUI9StockView_companyLabel) text];
  if (result)
  {
    v2 = result;
    v3 = sub_22089136C();

    return v3;
  }

  return result;
}

unint64_t sub_22078DFE8()
{
  result = qword_27CF59B40;
  if (!qword_27CF59B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59B40);
  }

  return result;
}

void sub_22078E05C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089288C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22078E0B0(void *a1, uint64_t *a2)
{
  v2 = sub_22089136C();
  v4 = v3;
  if (v2 == sub_22089136C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2208928BC();
  }

  return v7 & 1;
}

void sub_22078E140()
{
  v1 = OBJC_IVAR____TtC8StocksUI9StockView_symbolLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v2 = OBJC_IVAR____TtC8StocksUI9StockView_companyLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v3 = OBJC_IVAR____TtC8StocksUI9StockView_companyLabelLong;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v4 = OBJC_IVAR____TtC8StocksUI9StockView_exchangeLabel;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v5 = OBJC_IVAR____TtC8StocksUI9StockView_priceLabel;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v6 = OBJC_IVAR____TtC8StocksUI9StockView_priceChangeButton;
  *(v0 + v6) = sub_2204D673C();
  v7 = OBJC_IVAR____TtC8StocksUI9StockView_sparklineView;
  *(v0 + v7) = [objc_allocWithZone(type metadata accessor for StockSparklineView()) initWithFrame_];
  *(v0 + OBJC_IVAR____TtC8StocksUI9StockView_axElement) = 0;
  *(v0 + OBJC_IVAR____TtC8StocksUI9StockView_isSelected) = 0;
  *(v0 + OBJC_IVAR____TtC8StocksUI9StockView_revision) = 0;
  v8 = OBJC_IVAR____TtC8StocksUI9StockView_isEditing;
  sub_2204D05C8(0, &qword_2812971A0, MEMORY[0x277D839B0], MEMORY[0x277D6EB40]);
  swift_allocObject();
  *(v0 + v8) = sub_22088DFFC();
  v9 = (v0 + OBJC_IVAR____TtC8StocksUI9StockView_makeAccessibilityCustomActions);
  *v9 = 0;
  v9[1] = 0;
  *(v0 + OBJC_IVAR____TtC8StocksUI9StockView_accessibilityPriceString) = 0;
  v10 = (v0 + OBJC_IVAR____TtC8StocksUI9StockView_accessibilityUserInputCompanyLabel);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v0 + OBJC_IVAR____TtC8StocksUI9StockView_accessibilityUserInputCompanyName);
  *v11 = 0;
  v11[1] = 0;
  *(v0 + OBJC_IVAR____TtC8StocksUI9StockView_accessibilitySymbolLabelSpeechType) = 1;
  sub_22089267C();
  __break(1u);
}

void *sub_22078E398@<X0>(uint64_t a2@<X8>)
{
  v41 = sub_22089226C();
  v3 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088C20C();
  v8 = v7;
  sub_22088C20C();
  v10 = v9;
  sub_22088C21C();
  v12 = v11;
  sub_2204A5DF0(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899360;
  v14 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v15 = sub_220561394();
  v16 = v14;
  v17 = sub_220891F2C();
  *(inited + 64) = v15;
  *(inited + 40) = v17;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2205613E0(inited + 32);
  v18 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v19 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v20 = sub_22089125C();

  v21 = [v18 initWithString:v19 attributes:v20];

  sub_22089224C();
  v22 = sub_220891F2C();
  v23 = [objc_opt_self() configurationWithFont_];

  sub_2208920DC();
  sub_22089216C();
  v24 = sub_22089132C();
  v25 = [objc_opt_self() systemImageNamed_];

  sub_22089223C();
  sub_22089218C();
  sub_22089213C();
  result = sub_22089222C();
  if (result)
  {
    v27 = result;
    result = sub_2208920CC();
    if (result)
    {
      v28 = result;
      v29 = v12 - v8 - v10;
      v30 = [v27 imageWithConfiguration_];

      [v30 size];
      sub_22089212C();
      sub_22089215C();
      sub_220891D9C();
      v32 = v31;
      sub_22089215C();
      v35 = v29 + v33 + v34;
      sub_22089215C();
      v38 = v32 + v36 + v37;
      v42.origin.x = 0.0;
      v42.origin.y = 0.0;
      v42.size.width = v35;
      v42.size.height = v38;
      Height = CGRectGetHeight(v42);

      *a2 = Height;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = v35;
      *(a2 + 32) = v38;
      WatchlistViewLayoutAttributes = type metadata accessor for CreateWatchlistViewLayoutAttributes(0);
      return (*(v3 + 32))(a2 + *(WatchlistViewLayoutAttributes + 24), v6, v41);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double UIEdgeInsets.macUnscaled.getter(double a1, double a2, double a3, double a4)
{
  sub_22088736C();
  v5 = v4;
  sub_22088736C();
  sub_22088736C();
  sub_22088736C();
  return v5;
}

uint64_t sub_22078E808()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  return swift_deallocClassInstance();
}

uint64_t sub_22078E858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_2208854FC();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, a3, v6, v9);
  v12 = (*(v7 + 88))(v11, v6);
  if (v12 == *MEMORY[0x277D69120])
  {
    v13 = sub_22078F120(&OBJC_IVAR____TtC8StocksUI30StockChartCalloutDateFormatter____lazy_storage___dateFormatter, &selRef_setDateStyle_, 2);
    v14 = sub_22088509C();
    v15 = [v13 stringFromDate_];

    v16 = sub_22089136C();
    v18 = v17;

    v64 = v16;
    v65 = v18;
    MEMORY[0x223D89680](8236, 0xE200000000000000);
    v19 = sub_22078F120(&OBJC_IVAR____TtC8StocksUI30StockChartCalloutDateFormatter____lazy_storage___timeFormatter, &selRef_setTimeStyle_, 1);
    v20 = sub_22088509C();
    v21 = [v19 stringFromDate_];

    v22 = sub_22089136C();
    v24 = v23;

    MEMORY[0x223D89680](v22, v24);

    MEMORY[0x223D89680](0x209380E220, 0xA500000000000000);
    v25 = *(v4 + OBJC_IVAR____TtC8StocksUI30StockChartCalloutDateFormatter____lazy_storage___timeFormatter);
    v26 = sub_22088509C();
    v27 = [v25 stringFromDate_];
LABEL_5:
    v46 = v27;

    v47 = sub_22089136C();
    v49 = v48;

    MEMORY[0x223D89680](v47, v49);

    return v64;
  }

  if (v12 == *MEMORY[0x277D69128])
  {
    v64 = 0;
    v65 = 0xE000000000000000;
    sub_22089254C();
    v28 = sub_22078F120(&OBJC_IVAR____TtC8StocksUI30StockChartCalloutDateFormatter____lazy_storage___dateFormatter, &selRef_setDateStyle_, 2);
    v29 = sub_22088509C();
    v30 = [v28 stringFromDate_];

    v31 = sub_22089136C();
    v33 = v32;

    v64 = v31;
    v65 = v33;
    MEMORY[0x223D89680](8236, 0xE200000000000000);
    v34 = sub_22078F120(&OBJC_IVAR____TtC8StocksUI30StockChartCalloutDateFormatter____lazy_storage___timeFormatter, &selRef_setTimeStyle_, 1);
    v35 = sub_22088509C();
    v36 = [v34 stringFromDate_];

    v37 = sub_22089136C();
    v39 = v38;

    MEMORY[0x223D89680](v37, v39);

    MEMORY[0x223D89680](0x209380E220, 0xA500000000000000);
    v40 = *(v4 + OBJC_IVAR____TtC8StocksUI30StockChartCalloutDateFormatter____lazy_storage___dateFormatter);
    v41 = sub_22088509C();
    v42 = [v40 stringFromDate_];

    v43 = sub_22089136C();
    v45 = v44;

    MEMORY[0x223D89680](v43, v45);

    MEMORY[0x223D89680](8236, 0xE200000000000000);
    v25 = *(v4 + OBJC_IVAR____TtC8StocksUI30StockChartCalloutDateFormatter____lazy_storage___timeFormatter);
    v26 = sub_22088509C();
    v27 = [v25 stringFromDate_];
    goto LABEL_5;
  }

  v51 = sub_22078F120(&OBJC_IVAR____TtC8StocksUI30StockChartCalloutDateFormatter____lazy_storage___dateFormatter, &selRef_setDateStyle_, 2);
  v52 = sub_22088509C();
  v53 = [v51 stringFromDate_];

  v54 = sub_22089136C();
  v56 = v55;

  v64 = v54;
  v65 = v56;
  MEMORY[0x223D89680](0x209380E220, 0xA500000000000000);
  v57 = *(v4 + OBJC_IVAR____TtC8StocksUI30StockChartCalloutDateFormatter____lazy_storage___dateFormatter);
  v58 = sub_22088509C();
  v59 = [v57 stringFromDate_];

  v60 = sub_22089136C();
  v62 = v61;

  MEMORY[0x223D89680](v60, v62);

  v63 = v64;
  (*(v7 + 8))(v11, v6);
  return v63;
}

uint64_t sub_22078EE00(uint64_t a1, uint64_t a2)
{
  v4 = sub_2208854FC();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a2, v4, v7);
  v10 = (*(v5 + 88))(v9, v4);
  v11 = *MEMORY[0x277D69120];
  v12 = *MEMORY[0x277D69128];
  v13 = sub_22078F120(&OBJC_IVAR____TtC8StocksUI30StockChartCalloutDateFormatter____lazy_storage___dateFormatter, &selRef_setDateStyle_, 2);
  v33[1] = a1;
  v14 = sub_22088509C();
  v15 = [v13 stringFromDate_];

  v16 = sub_22089136C();
  v18 = v17;

  if (v10 == v11 || v10 == v12)
  {
    v20 = v18;
    v21 = sub_22078F120(&OBJC_IVAR____TtC8StocksUI30StockChartCalloutDateFormatter____lazy_storage___timeFormatter, &selRef_setTimeStyle_, 1);
    v22 = sub_22088509C();
    v23 = [v21 stringFromDate_];

    v24 = sub_22089136C();
    v26 = v25;

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v28 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    sub_22048D7F8(0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_220899920;
    v30 = MEMORY[0x277D837D0];
    *(v29 + 56) = MEMORY[0x277D837D0];
    v31 = sub_22048D860();
    *(v29 + 32) = v16;
    *(v29 + 40) = v20;
    *(v29 + 96) = v30;
    *(v29 + 104) = v31;
    *(v29 + 64) = v31;
    *(v29 + 72) = v24;
    *(v29 + 80) = v26;
    v16 = sub_22089133C();
  }

  else
  {
    (*(v5 + 8))(v9, v4);
  }

  return v16;
}

id sub_22078F120(uint64_t *a1, SEL *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v9 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    [v9 *a2];
    v10 = v3;
    v11 = sub_2208853FC();
    [v9 setTimeZone_];

    v12 = *(v3 + v4);
    *(v10 + v4) = v9;
    v6 = v9;

    v5 = 0;
  }

  v13 = v5;
  return v6;
}

uint64_t sub_22078F1E0()
{
  v1 = OBJC_IVAR____TtC8StocksUI30StockChartCalloutDateFormatter_timezone;
  v2 = sub_22088543C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StockChartCalloutDateFormatter(uint64_t a1)
{
  result = qword_281285780;
  if (!qword_281285780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22078F2F0(uint64_t a1)
{
  result = sub_22088543C();
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

id sub_22078F38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_220790790(0, &qword_27CF56CA8, type metadata accessor for WatchlistMembershipCommandContext);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v103 = v98 - v8;
  v9 = sub_22088CA0C();
  v100 = *(v9 - 8);
  v101 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v102 = v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_220886A4C();
  v107 = *(v12 - 8);
  v108 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v106 = v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220790790(0, &qword_281298FF0, MEMORY[0x277D698E0]);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v104 = (v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18, v19);
  v21 = v98 - v20;
  v22 = type metadata accessor for StockViewModel(0);
  v105 = *(v22 - 8);
  v23 = *(v105 + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  v110 = v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v28 = v98 - v27;
  MEMORY[0x28223BE20](v29, v30);
  v32 = v98 - v31;
  v33 = type metadata accessor for StockSearchLayoutModel(0);
  MEMORY[0x28223BE20](v33 - 8, v34);
  v36 = v98 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220576F2C(0);
  sub_22088BC3C();
  sub_220496328(0);
  v38 = *(v37 + 48);
  v39 = &v36[*(v37 + 64)];
  v129 = *(v39 + 28);
  v40 = *(v39 + 13);
  v127 = *(v39 + 12);
  v128 = v40;
  v41 = *(v39 + 11);
  v125 = *(v39 + 10);
  v126 = v41;
  v42 = *(v39 + 9);
  v123 = *(v39 + 8);
  v124 = v42;
  v43 = *(v39 + 7);
  v121 = *(v39 + 6);
  v122 = v43;
  v44 = *(v39 + 5);
  v119 = *(v39 + 4);
  v120 = v44;
  v45 = *(v39 + 1);
  v115 = *v39;
  v116 = v45;
  v46 = *(v39 + 3);
  v117 = *(v39 + 2);
  v118 = v46;
  v109 = v32;
  sub_22050381C(v36, v32);
  v111 = v21;
  sub_2207907E4(&v36[v38], v21);
  sub_220790864(0);
  v47 = sub_220891C1C();
  v48 = [v47 backgroundView];
  if (v48)
  {
    v49 = v48;
    swift_beginAccess();
    v50 = v5[7];
    v51 = v5[8];
    v52 = __swift_project_boxed_opaque_existential_1(v5 + 4, v50);
    v99 = v98;
    v53 = v47;
    v54 = *(v50 - 8);
    v55 = MEMORY[0x28223BE20](v52, v52);
    v57 = v98 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v54 + 16))(v57, v55);
    v58 = (*(*(v51 + 16) + 56))(v50);
    (*(v54 + 8))(v57, v50);
    v47 = v53;
    [v49 setBackgroundColor_];
  }

  sub_22078FE68(v47);
  v59 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v60 = v109;
  sub_220527BCC(v109, v28);
  sub_220527BCC(v28, v110);
  v61 = (*(v105 + 80) + 24) & ~*(v105 + 80);
  v62 = (v23 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
  v63 = swift_allocObject();
  *(v63 + 16) = v5;
  sub_22050381C(v28, v63 + v61);
  v64 = v63 + v62;
  v65 = v128;
  *(v64 + 192) = v127;
  *(v64 + 208) = v65;
  *(v64 + 224) = v129;
  v66 = v124;
  *(v64 + 128) = v123;
  *(v64 + 144) = v66;
  v67 = v126;
  *(v64 + 160) = v125;
  *(v64 + 176) = v67;
  v68 = v120;
  *(v64 + 64) = v119;
  *(v64 + 80) = v68;
  v69 = v122;
  *(v64 + 96) = v121;
  *(v64 + 112) = v69;
  v70 = v116;
  *v64 = v115;
  *(v64 + 16) = v70;
  v71 = v118;
  *(v64 + 32) = v117;
  *(v64 + 48) = v71;
  *(v63 + ((v62 + 239) & 0xFFFFFFFFFFFFFFF8)) = v59;
  swift_unownedRetain();
  v105 = v59;

  v72 = sub_22088C45C();
  v73 = swift_allocObject();
  *(v73 + 16) = sub_2207908F8;
  *(v73 + 24) = v63;

  v74 = sub_22088C3FC();
  v75 = swift_allocObject();
  *(v75 + 16) = sub_2207908F8;
  *(v75 + 24) = v63;

  v76 = sub_22088C40C();
  v77 = swift_allocObject();
  *(v77 + 16) = sub_2207908F8;
  *(v77 + 24) = v63;

  v78 = v104;
  sub_2205B7424(v111, v104);
  v80 = v107;
  v79 = v108;
  if ((*(v107 + 48))(v78, 1, v108) == 1)
  {
    sub_2204AA93C(v78, &qword_281298FF0, MEMORY[0x277D698E0]);
  }

  else
  {
    v81 = v106;
    (*(v80 + 32))(v106, v78, v79);
    v82 = sub_22088C42C();
    v99 = *&v82[OBJC_IVAR____TtC8StocksUI19StockSearchCellView_watchlistSelectionButton];

    v83 = v5[11];
    v98[1] = v5[12];
    v98[2] = v83;
    (*(v100 + 104))(v102, *MEMORY[0x277D6E0F8], v101);
    v84 = v5[13];
    v113 = sub_22088731C();
    v114 = sub_220790994(&qword_281298BF0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    v112 = v84;
    v130 = 0u;
    v131 = 0u;
    v132 = 1;
    sub_22088C4DC();
    swift_allocObject();

    v102 = sub_22088C4BC();
    v85 = v103;
    (*(v80 + 16))(v103, v81, v108);
    v86 = type metadata accessor for WatchlistMembershipCommandContext(0);
    v104 = v5;
    v87 = v47;
    v88 = *(v86 + 20);
    v89 = sub_22088685C();
    v90 = *(v89 - 8);
    (*(v90 + 16))(v85 + v88, v109, v89);
    v91 = v85 + v88;
    v47 = v87;
    (*(v90 + 56))(v91, 0, 1, v89);
    (*(*(v86 - 8) + 56))(v85, 0, 1, v86);
    v92 = v99;
    sub_22088BB7C();

    v60 = v109;
    sub_2204AA93C(v85, &qword_27CF56CA8, type metadata accessor for WatchlistMembershipCommandContext);
    (*(v80 + 8))(v106, v108);
  }

  swift_unownedRetainStrong();
  swift_unknownObjectRetain();

  Strong = swift_unknownObjectUnownedLoadStrong();
  v94 = sub_22088C42C();

  v95 = swift_unknownObjectUnownedLoadStrong();
  sub_22088C3EC();

  v96 = v110;
  sub_22083D978(v110, &v115, v94, 0);

  swift_unknownObjectRelease();
  swift_unownedRelease();

  sub_2204EFAD0(v96);
  sub_2204AA93C(v111, &qword_281298FF0, MEMORY[0x277D698E0]);
  sub_2204EFAD0(v60);

  return v47;
}

uint64_t sub_22078FE68(void *a1)
{
  v3 = sub_22088B8CC();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v42 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_22088DDFC();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v39 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22088C5AC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22088C3CC();
  swift_beginAccess();
  v15 = v1[7];
  v16 = v1[8];
  v17 = __swift_project_boxed_opaque_existential_1(v1 + 4, v15);
  v18 = *(v15 - 8);
  v19 = MEMORY[0x28223BE20](v17, v17);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, v19);
  v22 = (*(*(v16 + 16) + 112))(v15);
  (*(v18 + 8))(v21, v15);
  [v14 setBackgroundColor_];

  v23 = sub_22088C3CC();
  sub_22088C59C();

  v24 = sub_22088C3CC();
  (*(v10 + 104))(v13, *MEMORY[0x277D6DEE8], v9);
  sub_22088C5BC();

  [a1 setFocusEffect_];
  v25 = sub_22088C3CC();
  sub_22088C58C();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = [Strong presentingViewController];
    v28 = [v27 splitViewController];
    swift_unknownObjectRelease();
  }

  v29 = v39;
  sub_22088DDEC();
  v30 = swift_allocObject();
  v31 = MEMORY[0x277D6EAA0];
  v32 = v41;
  v30[5] = v41;
  v30[6] = v31;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30 + 2);
  v34 = v40;
  (*(v40 + 16))(boxed_opaque_existential_1, v29, v32);
  v36 = v42;
  v35 = v43;
  *v42 = v30;
  (*(v35 + 104))(v36, *MEMORY[0x277D6D928], v44);
  sub_22088C41C();
  return (*(v34 + 8))(v29, v32);
}

void sub_2207902BC(uint64_t a1, uint64_t a2, double *a3, uint64_t a4)
{
  swift_unownedRetainStrong();
  swift_unknownObjectRetain();

  Strong = swift_unknownObjectUnownedLoadStrong();
  v8 = sub_22088C42C();

  v7 = swift_unknownObjectUnownedLoadStrong();
  sub_22088C3EC();

  sub_22083D978(a2, a3, v8, 0);
  swift_unknownObjectRelease();
}

uint64_t sub_220790378()
{
  sub_22054B9F8(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_220790408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  result = sub_22078F38C(a1, a2, *a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_220790438(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_22046DA2C(v2 + 32, v12);
  v4 = v13;
  v5 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v6 = *(v5 + 8);
  v7 = *(v6 + 8);
  v10 = v4;
  v11 = v5;
  __swift_allocate_boxed_opaque_existential_1(&v9);
  v7(a2, v4, v6);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v2 + 32));
  sub_220457328(&v9, v2 + 32);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v12);
  swift_getObjectType();
  return sub_22088D31C();
}

uint64_t sub_22079054C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 horizontalSizeClass] == 2)
  {
    sub_2204D62A8(0, v4);
    v7 = *(v5 + 48);
    sub_22088DF4C();
  }

  else
  {
    sub_2204D62A8(0, v4);
    v7 = *(v6 + 48);
    sub_22088DF3C();
  }

  swift_beginAccess();
  v8 = v2[7];
  v9 = v2[8];
  v10 = __swift_project_boxed_opaque_existential_1(v2 + 4, v8);
  v11 = *(v8 - 8);
  v12 = MEMORY[0x28223BE20](v10, v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v12);
  v15 = (*(*(v9 + 16) + 176))(v8);
  (*(v11 + 8))(v14, v8);
  *(a2 + v7) = v15;
  v16 = *MEMORY[0x277D6EAE0];
  v17 = sub_22088DEBC();
  return (*(*(v17 - 8) + 104))(a2, v16, v17);
}

void sub_220790790(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2207907E4(uint64_t a1, uint64_t a2)
{
  sub_220790790(0, &qword_281298FF0, MEMORY[0x277D698E0]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_220790864(uint64_t a1)
{
  if (!qword_281297958)
  {
    type metadata accessor for StockSearchCellView();
    sub_220790994(&qword_28128F7B0, type metadata accessor for StockSearchCellView, &unk_2208B395C);
    v1 = sub_22088C46C();
    if (!v2)
    {
      atomic_store(v1, &qword_281297958);
    }
  }
}

void sub_2207908F8()
{
  v1 = *(type metadata accessor for StockViewModel(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + ((v3 + 239) & 0xFFFFFFFFFFFFFFF8));

  sub_2207902BC(v4, v0 + v2, (v0 + v3), v5);
}

uint64_t sub_220790994(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2207909DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_220889FFC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22088A20C();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = (&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(a1 + 16);
  if (v15)
  {
    v28 = v8;
    v29 = v5;
    v30 = v4;
    v31 = v10;
    v32 = a2;
    v18 = *(v10 + 16);
    v17 = v10 + 16;
    v16 = v18;
    v19 = *MEMORY[0x277D34DD8];
    v20 = a1 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v21 = *(v17 + 56);
    while (1)
    {
      v16(v14, v20, v9, v12);
      if ((*(v17 + 72))(v14, v9) == v19)
      {
        break;
      }

      (*(v17 - 8))(v14, v9);
      v20 += v21;
      if (!--v15)
      {
        goto LABEL_11;
      }
    }

    (*(v31 + 96))(v14, v9);
    v23 = *v14;
    v24 = v14[2];

    if (!v24)
    {
LABEL_11:
      v22 = 1;
      a2 = v32;
      goto LABEL_12;
    }

    if (v23 < 0x16 && ((0x3DFFFFu >> v23) & 1) != 0)
    {
      (*(v29 + 104))(v28, **(&unk_27844A710 + v23), v30);
      a2 = v32;
      sub_220889FCC();
      v22 = 0;
      goto LABEL_12;
    }

    result = sub_22089267C();
    __break(1u);
  }

  else
  {
    v22 = 1;
LABEL_12:
    v25 = sub_220889FEC();
    return (*(*(v25 - 8) + 56))(a2, v22, 1, v25);
  }

  return result;
}

uint64_t sub_220790CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22088A0EC();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088A20C();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a1 + 16);
  if (!v14)
  {
    v21 = 1;
LABEL_12:
    v26 = sub_22088A0DC();
    return (*(*(v26 - 8) + 56))(a2, v21, 1, v26);
  }

  v29 = v7;
  v30 = a2;
  v28 = v9;
  v17 = *(v9 + 16);
  v15 = v9 + 16;
  v16 = v17;
  v18 = *MEMORY[0x277D34DE0];
  v19 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
  v20 = *(v15 + 56);
  while (1)
  {
    v16(v13, v19, v8, v11);
    if ((*(v15 + 72))(v13, v8) == v18)
    {
      break;
    }

    (*(v15 - 8))(v13, v8);
    v19 += v20;
    if (!--v14)
    {
      v21 = 1;
      a2 = v30;
      goto LABEL_12;
    }
  }

  (*(v28 + 96))(v13, v8);
  v22 = v13[2];
  v24 = v13[5];
  v23 = v13[6];

  result = FCFeedGroupType.groupType()(v22, v29);
  if (v24 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v24 < 0xFFFFFFFF80000000 || v23 < 0xFFFFFFFF80000000)
  {
    goto LABEL_14;
  }

  if (v23 <= 0x7FFFFFFF)
  {
    a2 = v30;
    sub_22088A0BC();
    v21 = 0;
    goto LABEL_12;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_220790F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_22088A20C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (v11)
  {
    v21 = v6;
    v22 = a2;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = *MEMORY[0x277D34E08];
    v16 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v17 = *(v12 + 56);
    while (1)
    {
      v13(v10, v16, v5, v8);
      if ((*(v12 + 72))(v10, v5) == v15)
      {
        break;
      }

      (*(v12 - 8))(v10, v5);
      v16 += v17;
      if (!--v11)
      {
        v18 = 1;
        a2 = v22;
        goto LABEL_8;
      }
    }

    (*(v21 + 96))(v10, v5);
    a2 = v22;
    sub_2208892DC();
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

LABEL_8:
  v19 = sub_22088931C();
  return (*(*(v19 - 8) + 56))(a2, v18, 1, v19);
}

uint64_t sub_220791164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_22088A20C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (v11)
  {
    v21 = v6;
    v22 = a2;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = *MEMORY[0x277D34DD0];
    v16 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v17 = *(v12 + 56);
    while (1)
    {
      v13(v10, v16, v5, v8);
      if ((*(v12 + 72))(v10, v5) == v15)
      {
        break;
      }

      (*(v12 - 8))(v10, v5);
      v16 += v17;
      if (!--v11)
      {
        v18 = 1;
        a2 = v22;
        goto LABEL_8;
      }
    }

    (*(v21 + 96))(v10, v5);
    a2 = v22;
    sub_2208894AC();
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

LABEL_8:
  v19 = sub_2208894CC();
  return (*(*(v19 - 8) + 56))(a2, v18, 1, v19);
}

uint64_t sub_220791340(uint64_t a1, __n128 a2)
{
  v3 = sub_22088A20C();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 16);
  if (!v9)
  {
    return 0;
  }

  v19 = v4;
  v12 = *(v4 + 16);
  v10 = v4 + 16;
  v11 = v12;
  v13 = *MEMORY[0x277D34DF8];
  v14 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
  v15 = *(v10 + 56);
  while (1)
  {
    v11(v8, v14, v3, v6);
    if ((*(v10 + 72))(v8, v3) == v13)
    {
      break;
    }

    (*(v10 - 8))(v8, v3);
    v14 += v15;
    if (!--v9)
    {
      return 0;
    }
  }

  (*(v19 + 96))(v8, v3);
  v17 = *v8;

  return v17;
}

uint64_t sub_2207914E8()
{

  return swift_deallocClassInstance();
}

double sub_220791528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_22079159C(a1, a2);
  }

  return result;
}

void sub_22079159C(uint64_t a1, uint64_t a2)
{
  sub_2205715CC(0);
  v5 = v4;
  MEMORY[0x28223BE20](v4, v6);
  v79 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088519C();
  v83 = *(v8 - 8);
  v84 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v81 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StocksAudioTrack(0);
  v85 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v77 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v78 = (&v74 - v16);
  sub_220571538(0);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FC5D8(0, qword_281296160, type metadata accessor for StocksAudioTrack, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v82 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v28 = (&v74 - v27);
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v74 - v31;
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v74 - v35;
  v80 = a1;
  sub_2208878BC();
  v86 = a2;
  v87 = v5;
  v37 = v85;
  sub_2208878BC();
  v38 = v36;
  v39 = *(v18 + 56);
  sub_2207A0578(v36, v21, qword_281296160, type metadata accessor for StocksAudioTrack);
  sub_2207A0578(v32, &v21[v39], qword_281296160, type metadata accessor for StocksAudioTrack);
  v40 = *(v37 + 6);
  v41 = v40(v21, 1, v11);
  v85 = v40;
  if (v41 == 1)
  {
    sub_2207A11D0(v32, qword_281296160, type metadata accessor for StocksAudioTrack);
    sub_2207A11D0(v38, qword_281296160, type metadata accessor for StocksAudioTrack);
    if (v40(&v21[v39], 1, v11) == 1)
    {
      sub_2207A11D0(v21, qword_281296160, type metadata accessor for StocksAudioTrack);
      v42 = v88;
      v43 = v86;
      goto LABEL_25;
    }

    goto LABEL_6;
  }

  v76 = v38;
  sub_2207A0578(v21, v28, qword_281296160, type metadata accessor for StocksAudioTrack);
  if (v40(&v21[v39], 1, v11) == 1)
  {
    sub_2207A11D0(v32, qword_281296160, type metadata accessor for StocksAudioTrack);
    sub_2207A11D0(v76, qword_281296160, type metadata accessor for StocksAudioTrack);
    sub_2207A0448(v28, type metadata accessor for StocksAudioTrack);
LABEL_6:
    sub_2207A0448(v21, sub_220571538);
    v42 = v88;
    v43 = v86;
LABEL_7:
    if ((sub_2208878CC() & 1) == 0)
    {

      sub_22088724C();
    }

    if (v42[5])
    {
      v44 = v42[5];
    }

    else
    {
      v44 = v42[4];
    }

    type metadata accessor for AudioSessionManager.Session();
    v54 = swift_allocObject();

    v55 = v81;
    sub_22088518C();
    v56 = sub_22088517C();
    v58 = v57;
    (*(v83 + 8))(v55, v84);
    *(v54 + 16) = v56;
    *(v54 + 24) = v58;
    *(v54 + 48) = 1;
    *(v54 + 56) = 0;
    *(v54 + 64) = 0;
    *(v54 + 32) = v44;
    *(v54 + 40) = 0;
    v42[13] = v54;

    if ((sub_2208878CC() & 1) == 0)
    {

      sub_22088723C();
    }

    v42[5] = 0;

    v59 = v82;
    sub_2208878BC();
    if (v85(v59, 1, v11) == 1)
    {
      sub_2207A11D0(v59, qword_281296160, type metadata accessor for StocksAudioTrack);
    }

    else
    {
      v60 = v77;
      sub_2207A0510(v59, v77, type metadata accessor for StocksAudioTrack);
      swift_beginAccess();
      v61 = v42[14];
      if (v61)
      {
        v62 = v42[15];
        swift_endAccess();

        v61(v60);
        sub_2204DA45C(v61, v62);
        sub_2207A0448(v60, type metadata accessor for StocksAudioTrack);
      }

      else
      {
        sub_2207A0448(v60, type metadata accessor for StocksAudioTrack);
        swift_endAccess();
      }

      v64 = v42[14];
      v65 = v42[15];
      v42[14] = 0;
      v42[15] = 0;
      sub_2204DA45C(v64, v65);
    }

    goto LABEL_25;
  }

  v45 = v78;
  sub_2207A0510(&v21[v39], v78, type metadata accessor for StocksAudioTrack);
  v75 = v28;
  v46 = [*v28 identifier];
  v47 = sub_22089136C();
  v49 = v48;

  v50 = [*v45 identifier];
  v51 = sub_22089136C();
  v53 = v52;

  if (v47 == v51 && v49 == v53)
  {

    sub_2207A11D0(v32, qword_281296160, type metadata accessor for StocksAudioTrack);
    sub_2207A11D0(v76, qword_281296160, type metadata accessor for StocksAudioTrack);
    sub_2207A0448(v78, type metadata accessor for StocksAudioTrack);
    sub_2207A0448(v75, type metadata accessor for StocksAudioTrack);
    sub_2207A11D0(v21, qword_281296160, type metadata accessor for StocksAudioTrack);
    v42 = v88;
    v43 = v86;
    goto LABEL_25;
  }

  v63 = sub_2208928BC();

  sub_2207A11D0(v32, qword_281296160, type metadata accessor for StocksAudioTrack);
  sub_2207A11D0(v76, qword_281296160, type metadata accessor for StocksAudioTrack);
  sub_2207A0448(v78, type metadata accessor for StocksAudioTrack);
  sub_2207A0448(v75, type metadata accessor for StocksAudioTrack);
  sub_2207A11D0(v21, qword_281296160, type metadata accessor for StocksAudioTrack);
  v42 = v88;
  v43 = v86;
  if ((v63 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_25:
  if (*(v42[13] + 48) == 1)
  {
    v66 = v79;
    sub_2207A04A8(v43, v79, sub_2205715CC);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_2207A0448(v66, sub_2205715CC);
    }

    else
    {
      sub_2205D153C(0, v67);
      v69 = *(v66 + v68[12]);
      v70 = v68[16];
      v71 = *(v66 + v68[20]);
      v72 = sub_22088774C();
      (*(*(v72 - 8) + 8))(v66 + v70, v72);
      sub_2207A0448(v66, type metadata accessor for StocksAudioTrack);
      if ((v71 & 1) == 0)
      {
        v73 = v42[13];
        *(v73 + 40) = v69;
        *(v73 + 48) = 0;
      }
    }
  }
}

uint64_t sub_220791F68()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  sub_2204DA45C(*(v0 + 112), *(v0 + 120));
  __swift_destroy_boxed_opaque_existential_1((v0 + 128));
  return v0;
}

uint64_t sub_220791FD0()
{
  sub_220791F68();

  return swift_deallocClassInstance();
}

void sub_220792004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v234 = a3;
  v237 = a2;
  v232 = a1;
  v242 = sub_2208895AC();
  v235 = *(v242 - 8);
  MEMORY[0x28223BE20](v242, v3);
  v230 = v4;
  v241 = &v182 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = sub_220889ACC();
  v233 = *(v238 - 8);
  MEMORY[0x28223BE20](v238, v5);
  v231 = v6;
  v243 = &v182 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = sub_2208895BC();
  v208 = *(v212 - 8);
  MEMORY[0x28223BE20](v212, v7);
  v206 = &v182 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = v8;
  MEMORY[0x28223BE20](v9, v10);
  v207 = &v182 - v11;
  v245 = sub_22088959C();
  v239 = *(v245 - 8);
  MEMORY[0x28223BE20](v245, v12);
  v236 = v13;
  v244 = &v182 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = sub_22088698C();
  v211 = *(v217 - 8);
  MEMORY[0x28223BE20](v217, v14);
  v204 = v15;
  v216 = &v182 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x277D83D88];
  sub_2204FC5D8(0, &qword_27CF59B88, MEMORY[0x277D68648], MEMORY[0x277D83D88]);
  v203 = *(v17 - 8);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v222 = &v182 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = v19;
  MEMORY[0x28223BE20](v20, v21);
  v219 = &v182 - v22;
  sub_2204FC5D8(0, qword_281296160, type metadata accessor for StocksAudioTrack, v16);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v210 = (&v182 - v25);
  v220 = type metadata accessor for StocksAudioTrack(0);
  v221 = *(v220 - 8);
  MEMORY[0x28223BE20](v220, v26);
  v213 = &v182 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = v27;
  MEMORY[0x28223BE20](v28, v29);
  v218 = (&v182 - v30);
  sub_2205715CC(0);
  v228 = v31;
  v200 = *(v31 - 1);
  MEMORY[0x28223BE20](v31, v32);
  v214 = &v182 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v35);
  v215 = &v182 - v36;
  MEMORY[0x28223BE20](v37, v38);
  v199 = &v182 - v39;
  MEMORY[0x28223BE20](v40, v41);
  v198 = &v182 - v42;
  MEMORY[0x28223BE20](v43, v44);
  v209 = &v182 - v45;
  MEMORY[0x28223BE20](v46, v47);
  v229 = (&v182 - v48);
  MEMORY[0x28223BE20](v49, v50);
  v227 = (&v182 - v51);
  v202 = v52;
  MEMORY[0x28223BE20](v53, v54);
  v226 = &v182 - v55;
  v225 = sub_22088516C();
  v224 = *(v225 - 1);
  MEMORY[0x28223BE20](v225, v56);
  v58 = &v182 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = sub_22088519C();
  v59 = *(v223 - 8);
  MEMORY[0x28223BE20](v223, v60);
  v62 = &v182 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_22088720C();
  v64 = *(v63 - 8);
  v66 = MEMORY[0x28223BE20](v63, v65);
  v68 = &v182 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v64 + 104))(v68, *MEMORY[0x277CEAE68], v63, v66);
  sub_22088518C();
  sub_22088517C();
  (*(v59 + 8))(v62, v223);
  sub_22088515C();
  sub_220886FDC();

  (*(v224 + 1))(v58, v225);
  v69 = v240;
  (*(v64 + 8))(v68, v63);
  v70 = *(v69 + 104);
  v71 = v69;

  v72 = v226;
  sub_22088867C();
  v73 = v227;
  sub_2207A0510(v72, v227, sub_2205715CC);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v76 = 0.0;
    v77 = v229;
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_6;
    }

    sub_2205D1464(0);
  }

  else
  {
    sub_2205D153C(0, v75);
    v77 = v229;
  }

  v76 = *(v73 + *(v78 + 48));
  v79 = *(v78 + 64);
  v80 = sub_22088774C();
  (*(*(v80 - 8) + 8))(v73 + v79, v80);
  sub_2207A0448(v73, type metadata accessor for StocksAudioTrack);
LABEL_6:
  if ((*(v70 + 48) & 1) == 0)
  {
    v81 = v76 - *(v70 + 40);
    if (v81 <= 0.0)
    {
      v81 = 0.0;
    }

    *(v70 + 56) = *(v70 + 56) + v81;
    *(v70 + 64) = v81;
    *(v70 + 40) = 0;
    *(v70 + 48) = 1;
  }

  sub_22088867C();
  if (swift_getEnumCaseMultiPayload())
  {
    v83 = sub_2205715CC;
    v84 = v77;
LABEL_22:
    sub_2207A0448(v84, v83);
    goto LABEL_23;
  }

  sub_2205D153C(0, v82);
  v86 = v85;
  v87 = *(v85 + 64);
  v88 = sub_22088774C();
  v89 = *(*(v88 - 8) + 8);
  v89(v77 + v87, v88);
  sub_2207A0448(v77, type metadata accessor for StocksAudioTrack);
  v90 = v209;
  sub_22088867C();
  v91 = v210;
  sub_2208878BC();
  sub_2207A0448(v90, sub_2205715CC);
  if ((*(v221 + 48))(v91, 1, v220) != 1)
  {
    v92 = v218;
    sub_2207A0510(v91, v218, type metadata accessor for StocksAudioTrack);
    v229 = *(v71 + 96);
    v93 = v198;
    sub_22088867C();
    v94 = v199;
    sub_2207A0510(v93, v199, sub_2205715CC);
    v95 = swift_getEnumCaseMultiPayload();
    if (v95)
    {
      if (v95 != 1)
      {
LABEL_18:
        v97 = v220;
        [*(v92 + *(v220 + 24)) duration];
        if (sub_22088808C())
        {
          v98 = v235;
          v99 = v219;
          v100 = v242;
          (*(v235 + 16))(v219, v234, v242);
          (*(v98 + 56))(v99, 0, 1, v100);
          v101 = v215;
          sub_22088867C();
          v226 = *v92;
          v102 = *(v97 + 20);
          v227 = *(v71 + 104);
          v229 = *(v227 + 4);
          v225 = type metadata accessor for StocksAudioTrack;
          sub_2207A04A8(v92, v213, type metadata accessor for StocksAudioTrack);
          v103 = v211;
          (*(v211 + 16))(v216, v92 + v102, v217);
          v224 = sub_2205715CC;
          sub_2207A04A8(v101, v214, sub_2205715CC);
          v228 = MEMORY[0x277D68648];
          sub_2207A0578(v99, v222, &qword_27CF59B88, MEMORY[0x277D68648]);
          v104 = v239;
          (*(v239 + 16))(v244, v237, v245);
          v105 = (*(v221 + 80) + 16) & ~*(v221 + 80);
          v106 = (v201 + v105 + 7) & 0xFFFFFFFFFFFFFFF8;
          v107 = (v106 + 15) & 0xFFFFFFFFFFFFFFF8;
          v108 = (*(v103 + 80) + v107 + 8) & ~*(v103 + 80);
          v109 = (v204 + *(v200 + 80) + v108) & ~*(v200 + 80);
          v110 = (v202 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
          v111 = (v203[80] + v110 + 8) & ~v203[80];
          v112 = (v205 + *(v104 + 80) + v111) & ~*(v104 + 80);
          v113 = swift_allocObject();
          sub_2207A0510(v213, v113 + v105, v225);
          *(v113 + v106) = v226;
          *(v113 + v107) = v240;
          (*(v103 + 32))(v113 + v108, v216, v217);
          sub_2207A0510(v214, v113 + v109, v224);
          *(v113 + v110) = v227;
          v114 = v240;
          sub_2207A066C(v222, v113 + v111);
          (*(v239 + 32))(v113 + v112, v244, v245);
          swift_retain_n();
          swift_unknownObjectRetain();
          v71 = v114;

          sub_22088726C();

          sub_2207A0448(v215, sub_2205715CC);
          sub_2207A11D0(v219, &qword_27CF59B88, v228);
        }

        else
        {
          v115 = v208;
          v116 = v207;
          (*(v208 + 104))(v207, *MEMORY[0x277D68668], v212);
          v117 = v235;
          v118 = v219;
          v119 = v242;
          (*(v235 + 16))(v219, v234, v242);
          (*(v117 + 56))(v118, 0, 1, v119);
          v120 = v215;
          sub_22088867C();
          v223 = *v92;
          v121 = *(v97 + 20);
          v220 = v121;
          v191 = *(v71 + 104);
          v196 = *(v191 + 32);
          v228 = type metadata accessor for StocksAudioTrack;
          sub_2207A04A8(v92, v213, type metadata accessor for StocksAudioTrack);
          v122 = v211;
          v123 = *(v211 + 16);
          v209 = (v211 + 16);
          v210 = v123;
          v123(v216, v92 + v121, v217);
          v227 = sub_2205715CC;
          sub_2207A04A8(v120, v214, sub_2205715CC);
          v124 = v233;
          v125 = *(v233 + 16);
          v198 = (v233 + 16);
          v199 = v125;
          (v125)(v243, v232, v238);
          v126 = *(v115 + 16);
          v194 = v115 + 16;
          v195 = v126;
          v126(v206, v116, v212);
          v229 = MEMORY[0x277D68648];
          sub_2207A0578(v118, v222, &qword_27CF59B88, MEMORY[0x277D68648]);
          v127 = v239;
          v128 = *(v239 + 16);
          v192 = v239 + 16;
          v193 = v128;
          v128(v244, v237, v245);
          v129 = *(v221 + 80);
          v130 = (v129 + 16) & ~v129;
          v190 = v130;
          v131 = (v201 + v130 + 7) & 0xFFFFFFFFFFFFFFF8;
          v221 = v131;
          v132 = *(v122 + 80);
          v133 = (v131 + 15) & 0xFFFFFFFFFFFFFFF8;
          v201 = v133;
          v134 = (v132 + v133 + 8) & ~v132;
          v135 = *(v200 + 80);
          v189 = v134;
          v137 = *(v124 + 80);
          v204 = (v204 + v135 + v134) & ~v135;
          v136 = v204;
          v138 = (v202 + v137 + v204) & ~v137;
          v200 = v138;
          v139 = (v231 + v138 + 7) & 0xFFFFFFFFFFFFFFF8;
          v140 = *(v115 + 80);
          v202 = v139;
          v224 = ((v140 + v139 + 8) & ~v140);
          v225 = ((v224 + v197 + 3) & 0xFFFFFFFFFFFFFFFCLL);
          v141 = v203[80];
          v226 = ((v225 + v141 + 5) & ~v141);
          v142 = *(v127 + 80);
          v143 = &v226[v205 + v142] & ~v142;
          v205 = v129 | v132 | v135 | v137 | v140 | v141 | v142;
          v183 = v143;
          v144 = swift_allocObject();
          sub_2207A0510(v213, v144 + v130, v228);
          *(v144 + v131) = v223;
          *(v144 + v133) = v240;
          v145 = *(v122 + 32);
          v211 = v122 + 32;
          v203 = v145;
          (v145)(v144 + v134, v216, v217);
          v146 = v214;
          sub_2207A0510(v214, v144 + v136, v227);
          v147 = *(v233 + 32);
          v188 = v233 + 32;
          v197 = v147;
          v148 = v243;
          v147(v144 + v138, v243, v238);
          *(v144 + v139) = v191;
          v149 = *(v208 + 32);
          v186 = v208 + 32;
          v187 = v149;
          v150 = v206;
          v149(v224 + v144, v206, v212);
          v151 = v225 + v144;
          *v151 = 0;
          v151[4] = 1;
          sub_2207A066C(v222, &v226[v144]);
          v152 = *(v239 + 32);
          v184 = v239 + 32;
          v185 = v152;
          v153 = v144 + v143;
          v154 = v244;
          v152(v153, v244, v245);
          swift_retain_n();

          swift_unknownObjectRetain();
          sub_22088726C();

          v191 = *(v240 + 104);
          v196 = *(v191 + 32);
          v155 = v218;
          v156 = v213;
          v157 = v228;
          sub_2207A04A8(v218, v213, v228);
          v158 = v216;
          v159 = v217;
          v210(v216, v155 + v220, v217);
          v160 = v146;
          v161 = v227;
          sub_2207A04A8(v215, v160, v227);
          v162 = v238;
          (v199)(v148, v232, v238);
          v163 = v212;
          v195(v150, v207, v212);
          sub_2207A0578(v219, v222, &qword_27CF59B88, v229);
          v164 = v154;
          v165 = v245;
          v193(v164, v237, v245);
          v166 = v183;
          v167 = swift_allocObject();
          sub_2207A0510(v156, v167 + v190, v157);
          *(v167 + v221) = v223;
          *(v167 + v201) = v240;
          (v203)(v167 + v189, v158, v159);
          sub_2207A0510(v214, v167 + v204, v161);
          v197(v167 + v200, v243, v162);
          *(v167 + v202) = v191;
          v187(v224 + v167, v206, v163);
          v168 = v240;
          v169 = v225 + v167;
          *v169 = 0;
          v169[4] = 1;
          sub_2207A066C(v222, &v226[v167]);
          v185(v167 + v166, v244, v165);
          swift_retain_n();
          v71 = v168;

          swift_unknownObjectRetain();
          sub_22088726C();

          sub_2207A0448(v215, sub_2205715CC);
          sub_2207A11D0(v219, &qword_27CF59B88, v229);
          (*(v208 + 8))(v207, v163);
        }

        v83 = type metadata accessor for StocksAudioTrack;
        v84 = v218;
        goto LABEL_22;
      }

      sub_2205D1464(0);
      v86 = v96;
    }

    v89(&v94[*(v86 + 64)], v88);
    sub_2207A0448(v94, type metadata accessor for StocksAudioTrack);
    goto LABEL_18;
  }

  sub_2207A11D0(v91, qword_281296160, type metadata accessor for StocksAudioTrack);
LABEL_23:
  v170 = swift_allocObject();
  v171 = v71;
  swift_weakInit();
  v172 = v233;
  v173 = v238;
  (*(v233 + 16))(v243, v232, v238);
  v174 = v239;
  (*(v239 + 16))(v244, v237, v245);
  v175 = v235;
  (*(v235 + 16))(v241, v234, v242);
  v176 = (*(v172 + 80) + 24) & ~*(v172 + 80);
  v177 = (v231 + *(v174 + 80) + v176) & ~*(v174 + 80);
  v178 = (v236 + *(v175 + 80) + v177) & ~*(v175 + 80);
  v179 = swift_allocObject();
  *(v179 + 16) = v170;
  (*(v172 + 32))(v179 + v176, v243, v173);
  (*(v174 + 32))(v179 + v177, v244, v245);
  (*(v175 + 32))(v179 + v178, v241, v242);
  swift_beginAccess();
  v180 = *(v171 + 112);
  v181 = *(v171 + 120);
  *(v171 + 112) = sub_2207A1244;
  *(v171 + 120) = v179;

  sub_2204DA45C(v180, v181);
}

double sub_220793A9C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v134 = a4;
  v132 = a3;
  v131 = a1;
  v140 = sub_22088959C();
  v147 = *(v140 - 8);
  MEMORY[0x28223BE20](v140, v6);
  v133 = v7;
  v142 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_220889ACC();
  v151 = *(v146 - 8);
  v8 = v151[8];
  MEMORY[0x28223BE20](v146, v9);
  v145 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_22088698C();
  v150 = *(v144 - 8);
  MEMORY[0x28223BE20](v144, v10);
  v126 = v11;
  v149 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for StocksAudioTrack(0);
  v12 = *(v130 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v130, v14);
  v141 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205715CC(0);
  v124 = *(v15 - 8);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v139 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = v17;
  MEMORY[0x28223BE20](v18, v19);
  v143 = &v96 - v20;
  sub_2204FC5D8(0, &qword_27CF59B88, MEMORY[0x277D68648], MEMORY[0x277D83D88]);
  v121 = *(v21 - 8);
  v22 = *(v121 + 64);
  MEMORY[0x28223BE20](v21 - 8, v23);
  v148 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v137 = &v96 - v26;
  v27 = sub_2208895BC();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27, v30);
  v138 = &v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v96 - v33;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v37 = *MEMORY[0x277D68660];
    v38 = *(v28 + 104);
    v109 = v13;
    v39 = Strong;
    v135 = v27;
    v136 = v34;
    v38(v34, v37, v27);
    v40 = sub_2208895AC();
    v41 = *(v40 - 8);
    v42 = v137;
    (*(v41 + 16))(v137, a5, v40);
    v43 = v8;
    v44 = v42;
    (*(v41 + 56))(v42, 0, 1, v40);
    v122 = v39;
    v45 = v143;
    sub_22088867C();
    v46 = v131;
    v123 = *v131;
    v47 = *(v130 + 5);
    v120 = v47;
    v110 = *(v39 + 104);
    v115 = *(v110 + 32);
    v127 = type metadata accessor for StocksAudioTrack;
    sub_2207A04A8(v131, v141, type metadata accessor for StocksAudioTrack);
    v48 = v150;
    v49 = *(v150 + 16);
    v118 = v150 + 16;
    v119 = v49;
    v49(v149, &v46[v47], v144);
    v128 = sub_2205715CC;
    sub_2207A04A8(v45, v139, sub_2205715CC);
    v50 = v151;
    v51 = v151[2];
    v116 = v151 + 2;
    v117 = v51;
    v51(v145, v132, v146);
    v129 = v28;
    v52 = *(v28 + 16);
    v113 = v28 + 16;
    v114 = v52;
    v52(v138, v136, v135);
    v130 = MEMORY[0x277D68648];
    sub_2207A0578(v44, v148, &qword_27CF59B88, MEMORY[0x277D68648]);
    v106 = v22;
    v53 = v147;
    v54 = *(v147 + 16);
    v111 = v147 + 16;
    v112 = v54;
    v54(v142, v134, v140);
    v55 = *(v12 + 80);
    v56 = (v55 + 16) & ~v55;
    v108 = v56;
    v57 = (v109 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v109 = v57;
    v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
    v59 = *(v48 + 80);
    v107 = v58;
    v60 = (v59 + v58 + 8) & ~v59;
    v61 = *(v124 + 80);
    v104 = v60;
    v62 = *(v50 + 80);
    v63 = (v126 + v61 + v60) & ~v61;
    v105 = v63;
    v64 = v43 + ((v125 + v62 + v63) & ~v62);
    v65 = (v125 + v62 + v63) & ~v62;
    v103 = v65;
    v66 = (v64 + 7) & 0xFFFFFFFFFFFFFFF8;
    v67 = *(v28 + 80);
    v101 = v66;
    v68 = (v67 + v66 + 8) & ~v67;
    v100 = v68;
    v125 = (v29 + v68 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v69 = *(v121 + 80);
    v126 = (v69 + v125 + 5) & ~v69;
    v70 = *(v53 + 80);
    v124 = (v106 + v70 + v126) & ~v70;
    v121 = v55 | v59 | v61 | v62 | v67 | v69 | v70;
    v71 = swift_allocObject();
    sub_2207A0510(v141, v71 + v56, v127);
    *(v71 + v57) = v123;
    v72 = v122;
    *(v71 + v58) = v122;
    v73 = *(v150 + 32);
    v150 += 32;
    v106 = v73;
    v73(v71 + v60, v149, v144);
    sub_2207A0510(v139, v71 + v63, v128);
    v74 = v151[4];
    v151 += 4;
    v102 = v74;
    v75 = v71 + v65;
    v76 = v145;
    v74(v75, v145, v146);
    *(v71 + v66) = v110;
    v77 = *(v129 + 32);
    v98 = v129 + 32;
    v99 = v77;
    v78 = v71 + v68;
    v79 = v138;
    v80 = v135;
    v77(v78, v138, v135);
    v81 = v71 + v125;
    *v81 = 0;
    *(v81 + 4) = 1;
    sub_2207A066C(v148, v71 + v126);
    v82 = *(v53 + 32);
    v147 = v53 + 32;
    v97 = v82;
    v83 = v142;
    v82(v71 + v124, v142, v140);
    swift_retain_n();
    swift_unknownObjectRetain();

    sub_22088726C();

    v110 = *(v72 + 104);
    v115 = *(v110 + 32);
    v84 = v131;
    v85 = v141;
    v86 = v127;
    sub_2207A04A8(v131, v141, v127);
    v87 = v144;
    v119(v149, &v84[v120], v144);
    v88 = v139;
    v89 = v128;
    sub_2207A04A8(v143, v139, v128);
    v90 = v146;
    v117(v76, v132, v146);
    v114(v79, v136, v80);
    sub_2207A0578(v137, v148, &qword_27CF59B88, v130);
    v91 = v140;
    v112(v83, v134, v140);
    v92 = v124;
    v93 = swift_allocObject();
    sub_2207A0510(v85, v93 + v108, v86);
    *(v93 + v109) = v123;
    *(v93 + v107) = v122;
    v106(v93 + v104, v149, v87);
    sub_2207A0510(v88, v93 + v105, v89);
    v102(v93 + v103, v145, v90);
    *(v93 + v101) = v110;
    v94 = v135;
    v99(v93 + v100, v138, v135);
    v95 = v93 + v125;
    *v95 = 0;
    *(v95 + 4) = 1;
    sub_2207A066C(v148, v93 + v126);
    v97(v93 + v92, v142, v91);
    swift_retain_n();
    swift_unknownObjectRetain();

    sub_22088726C();

    sub_2207A0448(v143, sub_2205715CC);
    sub_2207A11D0(v137, &qword_27CF59B88, v130);
    (*(v129 + 8))(v136, v94);
  }

  return result;
}

uint64_t sub_2207947F4(uint64_t a1, uint64_t a2)
{
  v153 = a2;
  v151 = a1;
  v3 = sub_22088959C();
  v171 = *(v3 - 8);
  v172 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v152 = v5;
  v170 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_220889ACC();
  v169 = *(v166 - 8);
  MEMORY[0x28223BE20](v166, v6);
  v150 = v7;
  v165 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_22088698C();
  v168 = *(v161 - 8);
  MEMORY[0x28223BE20](v161, v8);
  v149 = v9;
  v159 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D83D88];
  sub_2204FC5D8(0, &qword_27CF59B88, MEMORY[0x277D68648], MEMORY[0x277D83D88]);
  v147 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v158 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = v13;
  MEMORY[0x28223BE20](v14, v15);
  v163 = &v118 - v16;
  v164 = sub_2208895BC();
  v162 = *(v164 - 8);
  MEMORY[0x28223BE20](v164, v17);
  v167 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = v18;
  MEMORY[0x28223BE20](v19, v20);
  v160 = &v118 - v21;
  sub_2204FC5D8(0, qword_281296160, type metadata accessor for StocksAudioTrack, v10);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v25 = &v118 - v24;
  sub_2205715CC(0);
  v27 = v26;
  v145 = *(v26 - 1);
  MEMORY[0x28223BE20](v26, v28);
  v156 = &v118 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31);
  v157 = &v118 - v32;
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v118 - v35;
  MEMORY[0x28223BE20](v37, v38);
  v40 = &v118 - v39;
  v141 = v41;
  MEMORY[0x28223BE20](v42, v43);
  v45 = &v118 - v44;
  v46 = type metadata accessor for StocksAudioTrack(0);
  v47 = *(v46 - 1);
  MEMORY[0x28223BE20](v46, v48);
  v155 = &v118 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = v49;
  MEMORY[0x28223BE20](v50, v51);
  v53 = (&v118 - v52);
  v154 = v2;
  sub_22088867C();
  v140 = v27;
  sub_2208878BC();
  sub_2207A0448(v45, sub_2205715CC);
  v144 = v47;
  v54 = *(v47 + 48);
  v142 = v46;
  if (v54(v25, 1, v46) == 1)
  {
    return sub_2207A11D0(v25, qword_281296160, type metadata accessor for StocksAudioTrack);
  }

  sub_2207A0510(v25, v53, type metadata accessor for StocksAudioTrack);
  v56 = v154;
  v57 = *(v154 + 104);

  sub_22088867C();
  sub_2207A0510(v40, v36, sub_2205715CC);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_2205D153C(0, v59);
    goto LABEL_7;
  }

  v60 = 0.0;
  if (EnumCaseMultiPayload == 1)
  {
    sub_2205D1464(0);
LABEL_7:
    v60 = *&v36[*(v61 + 48)];
    v62 = *(v61 + 64);
    v63 = sub_22088774C();
    (*(*(v63 - 8) + 8))(&v36[v62], v63);
    sub_2207A0448(v36, type metadata accessor for StocksAudioTrack);
  }

  if ((*(v57 + 48) & 1) == 0)
  {
    v64 = v60 - *(v57 + 40);
    if (v64 <= 0.0)
    {
      v64 = 0.0;
    }

    *(v57 + 56) = *(v57 + 56) + v64;
    *(v57 + 64) = v64;
    *(v57 + 40) = 0;
    *(v57 + 48) = 1;
  }

  v65 = v162;
  v66 = v160;
  v67 = v164;
  (*(v162 + 104))(v160, *MEMORY[0x277D68668], v164);
  v68 = sub_2208895AC();
  v69 = v163;
  (*(*(v68 - 8) + 56))(v163, 1, 1, v68);
  v70 = v157;
  sub_22088867C();
  v138 = *v53;
  v71 = *(v142 + 5);
  v136 = v71;
  v126 = *(v56 + 104);
  v131 = *(v126 + 32);
  v137 = type metadata accessor for StocksAudioTrack;
  sub_2207A04A8(v53, v155, type metadata accessor for StocksAudioTrack);
  v139 = v53;
  v72 = v168;
  v73 = *(v168 + 16);
  v134 = v168 + 16;
  v135 = v73;
  v73(v159, v53 + v71, v161);
  v140 = sub_2205715CC;
  sub_2207A04A8(v70, v156, sub_2205715CC);
  v74 = v169;
  v75 = *(v169 + 16);
  v132 = v169 + 16;
  v133 = v75;
  v75(v165, v151, v166);
  v76 = *(v65 + 16);
  v129 = v65 + 16;
  v130 = v76;
  v76(v167, v66, v67);
  v142 = MEMORY[0x277D68648];
  sub_2207A0578(v69, v158, &qword_27CF59B88, MEMORY[0x277D68648]);
  v77 = v171;
  v78 = *(v171 + 16);
  v127 = v171 + 16;
  v128 = v78;
  v78(v170, v153, v172);
  v79 = *(v144 + 80);
  v80 = (v79 + 16) & ~v79;
  v144 = v80;
  v81 = (v143 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
  v143 = v81;
  v82 = *(v72 + 80);
  v83 = (v81 + 15) & 0xFFFFFFFFFFFFFFF8;
  v125 = v83;
  v84 = (v82 + v83 + 8) & ~v82;
  v85 = *(v145 + 80);
  v124 = v84;
  v86 = (v149 + v85 + v84) & ~v85;
  v87 = *(v74 + 80);
  v145 = v86;
  v88 = (v141 + v87 + v86) & ~v87;
  v122 = v88;
  v89 = *(v65 + 80);
  v90 = (v150 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
  v123 = v90;
  v150 = (v89 + v90 + 8) & ~v89;
  v146 = (v146 + v150 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v91 = v147[80];
  v149 = (v91 + v146 + 5) & ~v91;
  v92 = *(v77 + 80);
  v93 = (v148 + v92 + v149) & ~v92;
  v148 = v79 | v82 | v85 | v87 | v89 | v91 | v92;
  v118 = v93;
  v94 = swift_allocObject();
  v95 = v94 + v80;
  v96 = v137;
  sub_2207A0510(v155, v95, v137);
  *(v94 + v81) = v138;
  *(v94 + v83) = v154;
  v97 = *(v168 + 32);
  v168 += 32;
  v147 = v97;
  (v97)(v94 + v84, v159, v161);
  v98 = v156;
  sub_2207A0510(v156, v94 + v86, v140);
  v99 = *(v169 + 32);
  v169 += 32;
  v141 = v99;
  v99(v94 + v88, v165, v166);
  *(v94 + v90) = v126;
  v100 = *(v162 + 32);
  v120 = v162 + 32;
  v121 = v100;
  v100(v94 + v150, v167, v164);
  v101 = v94 + v146;
  *v101 = 0;
  *(v101 + 4) = 1;
  v102 = v158;
  sub_2207A066C(v158, v94 + v149);
  v103 = *(v171 + 32);
  v171 += 32;
  v119 = v103;
  v103(v94 + v93, v170, v172);
  swift_retain_n();
  swift_unknownObjectRetain();
  v104 = v154;

  sub_22088726C();

  v126 = *(v104 + 104);
  v105 = v104;
  v131 = *(v126 + 32);
  v106 = v139;
  v107 = v155;
  sub_2207A04A8(v139, v155, v96);
  v108 = v159;
  v109 = v161;
  v135(v159, v106 + v136, v161);
  v110 = v98;
  v111 = v140;
  sub_2207A04A8(v157, v110, v140);
  v112 = v165;
  v113 = v166;
  v133(v165, v151, v166);
  v114 = v164;
  v130(v167, v160, v164);
  sub_2207A0578(v163, v102, &qword_27CF59B88, v142);
  v128(v170, v153, v172);
  v115 = v118;
  v116 = swift_allocObject();
  sub_2207A0510(v107, v116 + v144, v137);
  *(v116 + v143) = v138;
  *(v116 + v125) = v105;
  (v147)(v116 + v124, v108, v109);
  sub_2207A0510(v156, v116 + v145, v111);
  v141(v116 + v122, v112, v113);
  *(v116 + v123) = v126;
  v121(v116 + v150, v167, v114);
  v117 = v116 + v146;
  *v117 = 0;
  *(v117 + 4) = 1;
  sub_2207A066C(v158, v116 + v149);
  v119(v116 + v115, v170, v172);
  swift_retain_n();
  swift_unknownObjectRetain();

  sub_22088726C();

  sub_2207A0448(v157, sub_2205715CC);
  sub_2207A11D0(v163, &qword_27CF59B88, v142);
  (*(v162 + 8))(v160, v114);

  return sub_2207A0448(v139, type metadata accessor for StocksAudioTrack);
}

void sub_2207957C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v137 = a3;
  v149 = a2;
  v147 = a1;
  v4 = sub_22088959C();
  v158 = *(v4 - 8);
  v159 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v138 = v6;
  v150 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_220889ACC();
  v157 = *(v148 - 8);
  MEMORY[0x28223BE20](v148, v7);
  v135 = v8;
  v156 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_22088698C();
  v154 = *(v144 - 8);
  MEMORY[0x28223BE20](v144, v9);
  v134 = v10;
  v143 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83D88];
  sub_2204FC5D8(0, &qword_27CF59B88, MEMORY[0x277D68648], MEMORY[0x277D83D88]);
  v132 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v152 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = v14;
  MEMORY[0x28223BE20](v15, v16);
  v145 = &v105 - v17;
  v146 = sub_2208895BC();
  v155 = *(v146 - 8);
  MEMORY[0x28223BE20](v146, v18);
  v151 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = v19;
  MEMORY[0x28223BE20](v20, v21);
  v153 = &v105 - v22;
  v129 = sub_22088516C();
  v128 = *(v129 - 1);
  MEMORY[0x28223BE20](v129, v23);
  v127 = &v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_22088519C();
  v122 = *(v123 - 1);
  MEMORY[0x28223BE20](v123, v25);
  v120 = &v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_22088720C();
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125, v27);
  v121 = &v105 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FC5D8(0, qword_281296160, type metadata accessor for StocksAudioTrack, v11);
  MEMORY[0x28223BE20](v29 - 8, v30);
  v32 = &v105 - v31;
  sub_2205715CC(0);
  v130 = *(v33 - 8);
  v34 = *(v130 + 64);
  MEMORY[0x28223BE20](v33, v35);
  v141 = &v105 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v37);
  v142 = &v105 - v38;
  MEMORY[0x28223BE20](v39, v40);
  v42 = &v105 - v41;
  v43 = type metadata accessor for StocksAudioTrack(0);
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43, v46);
  v140 = &v105 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47, v48);
  v50 = &v105 - v49;
  v118 = *(v3 + 48);
  sub_22088867C();
  sub_2208878BC();
  sub_2207A0448(v42, sub_2205715CC);
  v126 = v44;
  if ((*(v44 + 48))(v32, 1, v43) == 1)
  {
    sub_2207A11D0(v32, qword_281296160, type metadata accessor for StocksAudioTrack);
    sub_220792004(v147, v149, v137);
  }

  else
  {
    v139 = type metadata accessor for StocksAudioTrack;
    v136 = v50;
    sub_2207A0510(v32, v50, type metadata accessor for StocksAudioTrack);
    v119 = v3;
    v51 = v124;
    v52 = v121;
    v53 = v125;
    (*(v124 + 104))(v121, *MEMORY[0x277CEAE68], v125);
    v54 = v120;
    sub_22088518C();
    sub_22088517C();
    (*(v122 + 8))(v54, v123);
    v55 = v127;
    sub_22088515C();
    sub_220886FDC();

    (*(v128 + 8))(v55, v129);
    (*(v51 + 8))(v52, v53);
    v56 = v146;
    (*(v155 + 104))(v153, *MEMORY[0x277D68678], v146);
    v57 = sub_2208895AC();
    v58 = *(v57 - 8);
    v59 = v145;
    (*(v58 + 16))(v145, v137, v57);
    (*(v58 + 56))(v59, 0, 1, v57);
    v60 = v142;
    sub_22088867C();
    v61 = v136;
    v128 = *v136;
    v62 = *(v43 + 20);
    v127 = v62;
    v115 = *(v119 + 104);
    v118 = *(v115 + 32);
    sub_2207A04A8(v136, v140, v139);
    v63 = v154;
    v124 = *(v154 + 16);
    v125 = v154 + 16;
    (v124)(v143, &v62[v61], v144);
    v129 = sub_2205715CC;
    sub_2207A04A8(v60, v141, sub_2205715CC);
    v64 = v157;
    v65 = *(v157 + 16);
    v122 = v157 + 16;
    v123 = v65;
    v65(v156, v147, v148);
    v66 = v155;
    v67 = *(v155 + 16);
    v120 = (v155 + 16);
    v121 = v67;
    (v67)(v151, v153, v56);
    v137 = MEMORY[0x277D68648];
    sub_2207A0578(v59, v152, &qword_27CF59B88, MEMORY[0x277D68648]);
    v68 = v158;
    v69 = *(v158 + 16);
    v116 = v158 + 16;
    v117 = v69;
    v69(v150, v149, v159);
    v70 = *(v126 + 80);
    v71 = (v70 + 16) & ~v70;
    v114 = v71;
    v72 = (v45 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
    v126 = v72;
    v73 = (v72 + 15) & 0xFFFFFFFFFFFFFFF8;
    v74 = *(v63 + 80);
    v113 = v73;
    v75 = (v74 + v73 + 8) & ~v74;
    v76 = *(v130 + 80);
    v112 = v75;
    v77 = (v134 + v76 + v75) & ~v76;
    v78 = *(v64 + 80);
    v130 = v77;
    v79 = (v34 + v78 + v77) & ~v78;
    v109 = v79;
    v80 = *(v66 + 80);
    v81 = (v135 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
    v110 = v81;
    v134 = (v80 + v81 + 8) & ~v80;
    v131 = (v131 + v134 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v82 = v132[80];
    v135 = (v82 + v131 + 5) & ~v82;
    v83 = *(v68 + 80);
    v84 = (v133 + v83 + v135) & ~v83;
    v133 = v70 | v74 | v76 | v78 | v80 | v82 | v83;
    v105 = v84;
    v85 = swift_allocObject();
    sub_2207A0510(v140, v85 + v71, v139);
    *(v85 + v72) = v128;
    v86 = v119;
    *(v85 + v73) = v119;
    v87 = *(v154 + 32);
    v154 += 32;
    v132 = v87;
    (v87)(v85 + v75, v143, v144);
    sub_2207A0510(v141, v85 + v77, v129);
    v88 = *(v157 + 32);
    v157 += 32;
    v111 = v88;
    v88(v85 + v79, v156, v148);
    *(v85 + v81) = v115;
    v89 = *(v155 + 32);
    v107 = v155 + 32;
    v108 = v89;
    v89(v85 + v134, v151, v146);
    v90 = v85 + v131;
    *v90 = 0;
    *(v90 + 4) = 1;
    sub_2207A066C(v152, v85 + v135);
    v91 = *(v158 + 32);
    v158 += 32;
    v106 = v91;
    v92 = v150;
    v91(v85 + v84, v150, v159);
    swift_retain_n();
    swift_unknownObjectRetain();

    sub_22088726C();

    v115 = *(v86 + 104);
    v118 = *(v115 + 32);
    v93 = v136;
    v94 = v140;
    sub_2207A04A8(v136, v140, v139);
    v95 = &v127[v93];
    v97 = v143;
    v96 = v144;
    (v124)(v143, v95, v144);
    v98 = v141;
    v99 = v129;
    sub_2207A04A8(v142, v141, v129);
    v100 = v148;
    v123(v156, v147, v148);
    v101 = v146;
    (v121)(v151, v153, v146);
    sub_2207A0578(v145, v152, &qword_27CF59B88, v137);
    v117(v92, v149, v159);
    v102 = v105;
    v103 = swift_allocObject();
    sub_2207A0510(v94, v103 + v114, v139);
    *(v103 + v126) = v128;
    *(v103 + v113) = v86;
    (v132)(v103 + v112, v97, v96);
    sub_2207A0510(v98, v103 + v130, v99);
    v111(v103 + v109, v156, v100);
    *(v103 + v110) = v115;
    v108(v103 + v134, v151, v101);
    v104 = v103 + v131;
    *v104 = 0;
    *(v104 + 4) = 1;
    sub_2207A066C(v152, v103 + v135);
    v106(v103 + v102, v150, v159);
    swift_retain_n();
    swift_unknownObjectRetain();

    sub_22088726C();

    sub_2207A0448(v142, sub_2205715CC);
    sub_2207A11D0(v145, &qword_27CF59B88, v137);
    (*(v155 + 8))(v153, v101);

    sub_2207A0448(v136, type metadata accessor for StocksAudioTrack);
  }
}

uint64_t sub_2207968AC(uint64_t (*a1)(uint64_t), unint64_t a2)
{
  v76 = a2;
  v74 = a1;
  v92 = sub_22088959C();
  v80 = *(v92 - 8);
  MEMORY[0x28223BE20](v92, v3);
  v78 = v4;
  v91 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_220889ACC();
  v79 = *(v90 - 8);
  MEMORY[0x28223BE20](v90, v5);
  v75 = v6;
  v89 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_22088698C();
  v77 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v7);
  v73 = v8;
  v86 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D83D88];
  sub_2204FC5D8(0, &qword_27CF59B88, MEMORY[0x277D68648], MEMORY[0x277D83D88]);
  v71 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v87 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v12;
  MEMORY[0x28223BE20](v13, v14);
  v96 = &v62 - v15;
  v16 = sub_2208895BC();
  v94 = *(v16 - 8);
  v95 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v85 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v18;
  MEMORY[0x28223BE20](v19, v20);
  v93 = &v62 - v21;
  sub_2204FC5D8(0, qword_281296160, type metadata accessor for StocksAudioTrack, v9);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v25 = &v62 - v24;
  sub_2205715CC(0);
  v69 = *(v26 - 8);
  v27 = *(v69 + 64);
  MEMORY[0x28223BE20](v26, v28);
  v83 = &v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30);
  v84 = &v62 - v31;
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v62 - v34;
  v36 = type metadata accessor for StocksAudioTrack(0);
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36, v39);
  v82 = &v62 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v41);
  v43 = (&v62 - v42);
  v81 = v2;
  sub_22088867C();
  sub_2208878BC();
  sub_2207A0448(v35, sub_2205715CC);
  if ((*(v37 + 48))(v25, 1, v36) == 1)
  {
    return sub_2207A11D0(v25, qword_281296160, type metadata accessor for StocksAudioTrack);
  }

  v64 = type metadata accessor for StocksAudioTrack;
  sub_2207A0510(v25, v43, type metadata accessor for StocksAudioTrack);
  (*(v94 + 13))(v93, *MEMORY[0x277D68658], v95);
  v45 = sub_2208895AC();
  v46 = *(*(v45 - 8) + 56);
  v62 = v37;
  v46(v96, 1, 1, v45);
  v47 = v84;
  sub_22088867C();
  v65 = *v43;
  v48 = *(v36 + 20);
  v66 = *(v81 + 104);
  v67 = *(v66 + 32);
  v68 = v43;
  sub_2207A04A8(v43, v82, type metadata accessor for StocksAudioTrack);
  v49 = v77;
  (*(v77 + 16))(v86, v43 + v48, v88);
  v63 = sub_2205715CC;
  sub_2207A04A8(v47, v83, sub_2205715CC);
  v50 = v79;
  (*(v79 + 16))(v89, v74, v90);
  v51 = v94;
  (*(v94 + 2))(v85, v93, v95);
  v74 = MEMORY[0x277D68648];
  sub_2207A0578(v96, v87, &qword_27CF59B88, MEMORY[0x277D68648]);
  v52 = v80;
  (*(v80 + 16))(v91, v76, v92);
  v53 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v62 = (v38 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = (v62 + 15) & 0xFFFFFFFFFFFFFFF8;
  v55 = (*(v49 + 80) + v54 + 8) & ~*(v49 + 80);
  v56 = (v73 + *(v69 + 80) + v55) & ~*(v69 + 80);
  v57 = (v27 + *(v50 + 80) + v56) & ~*(v50 + 80);
  v69 = (v75 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v51[80] + v69 + 8) & ~v51[80];
  v75 = (v70 + v73 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v76 = (*(v71 + 80) + v75 + 5) & ~*(v71 + 80);
  v72 = (v72 + *(v52 + 80) + v76) & ~*(v52 + 80);
  v58 = swift_allocObject();
  sub_2207A0510(v82, v58 + v53, v64);
  *(v58 + v62) = v65;
  *(v58 + v54) = v81;
  (*(v49 + 32))(v58 + v55, v86, v88);
  sub_2207A0510(v83, v58 + v56, v63);
  (*(v50 + 32))(v58 + v57, v89, v90);
  *(v58 + v69) = v66;
  v60 = v94;
  v59 = v95;
  (*(v94 + 4))(v58 + v73, v85, v95);
  v61 = v58 + v75;
  *v61 = 0;
  *(v61 + 4) = 1;
  sub_2207A066C(v87, v58 + v76);
  (*(v52 + 32))(v58 + v72, v91, v92);
  swift_retain_n();
  swift_unknownObjectRetain();

  sub_22088726C();

  sub_2207A0448(v84, sub_2205715CC);
  sub_2207A11D0(v96, &qword_27CF59B88, v74);
  (v60[1])(v93, v59);

  return sub_2207A0448(v68, type metadata accessor for StocksAudioTrack);
}

uint64_t sub_220797310(uint64_t a1, unint64_t a2)
{
  v196 = a2;
  v186 = a1;
  v189 = sub_22088516C();
  v188 = *(v189 - 8);
  MEMORY[0x28223BE20](v189, v3);
  v187 = &v152 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_220889ACC();
  v198 = *(v191 - 1);
  MEMORY[0x28223BE20](v191, v5);
  v176 = v6;
  v197 = (&v152 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_2208895BC();
  v194 = *(v7 - 8);
  v195 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v190 = &v152 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = v9;
  MEMORY[0x28223BE20](v10, v11);
  v192 = (&v152 - v12);
  v13 = sub_22088959C();
  v205 = *(v13 - 8);
  v206 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v193 = v15;
  v209 = &v152 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22088698C();
  v201 = *(v16 - 8);
  v202 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v184 = v18;
  v200 = &v152 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x277D83D88];
  sub_2204FC5D8(0, &qword_27CF59B88, MEMORY[0x277D68648], MEMORY[0x277D83D88]);
  v183 = *(v20 - 8);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v208 = &v152 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = v22;
  MEMORY[0x28223BE20](v23, v24);
  v204 = &v152 - v25;
  sub_2204FC5D8(0, qword_281296160, type metadata accessor for StocksAudioTrack, v19);
  MEMORY[0x28223BE20](v26 - 8, v27);
  v29 = &v152 - v28;
  sub_2205715CC(0);
  v182 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v31);
  v207 = &v152 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v34);
  v203 = &v152 - v35;
  MEMORY[0x28223BE20](v36, v37);
  v178 = (&v152 - v38);
  MEMORY[0x28223BE20](v39, v40);
  v177 = (&v152 - v41);
  MEMORY[0x28223BE20](v42, v43);
  v45 = &v152 - v44;
  MEMORY[0x28223BE20](v46, v47);
  v49 = &v152 - v48;
  v179 = v50;
  MEMORY[0x28223BE20](v51, v52);
  v54 = &v152 - v53;
  v55 = type metadata accessor for StocksAudioTrack(0);
  v56 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v57);
  v199 = &v152 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = v58;
  MEMORY[0x28223BE20](v59, v60);
  v62 = &v152 - v61;
  v210 = v2;
  sub_22088867C();
  sub_2208878BC();
  sub_2207A0448(v54, sub_2205715CC);
  v180 = v56;
  v63 = v56;
  v64 = v55;
  if ((*(v63 + 48))(v29, 1, v55) == 1)
  {
    return sub_2207A11D0(v29, qword_281296160, type metadata accessor for StocksAudioTrack);
  }

  v66 = v62;
  sub_2207A0510(v29, v62, type metadata accessor for StocksAudioTrack);
  v67 = *(v210 + 104);

  sub_22088867C();
  sub_2207A0510(v49, v45, sub_2205715CC);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v70 = v45;
  if (EnumCaseMultiPayload)
  {
    v71 = 0.0;
    v72 = v66;
    v73 = v178;
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_8;
    }

    sub_2205D1464(0);
  }

  else
  {
    sub_2205D153C(0, v69);
    v72 = v66;
    v73 = v178;
  }

  v71 = *(v70 + *(v74 + 48));
  v75 = *(v74 + 64);
  v76 = sub_22088774C();
  (*(*(v76 - 8) + 8))(v70 + v75, v76);
  sub_2207A0448(v70, type metadata accessor for StocksAudioTrack);
LABEL_8:
  if ((*(v67 + 48) & 1) == 0)
  {
    v77 = v71 - *(v67 + 40);
    if (v77 <= 0.0)
    {
      v77 = 0.0;
    }

    *(v67 + 56) = *(v67 + 56) + v77;
    *(v67 + 64) = v77;
    *(v67 + 40) = 0;
    *(v67 + 48) = 1;
  }

  v78 = v177;
  sub_22088867C();
  sub_2207A0510(v78, v73, sub_2205715CC);
  v79 = swift_getEnumCaseMultiPayload();
  if (!v79)
  {
    sub_2205D153C(0, v80);
    goto LABEL_16;
  }

  if (v79 == 1)
  {
    sub_2205D1464(0);
LABEL_16:
    v82 = *(v81 + 64);
    v83 = sub_22088774C();
    (*(*(v83 - 8) + 8))(v73 + v82, v83);
    sub_2207A0448(v73, type metadata accessor for StocksAudioTrack);
  }

  [*(v72 + *(v55 + 24)) duration];
  v84 = sub_22088808C();
  v174 = v72;
  if (v84)
  {
    v85 = sub_2208895AC();
    v86 = v204;
    (*(*(v85 - 8) + 56))(v204, 1, 1, v85);
    v87 = v203;
    sub_22088867C();
    v88 = *(v55 + 20);
    v89 = *(v210 + 104);
    v194 = *v72;
    v195 = v89;
    v198 = *(v89 + 32);
    v192 = type metadata accessor for StocksAudioTrack;
    sub_2207A04A8(v72, v199, type metadata accessor for StocksAudioTrack);
    v90 = v201;
    (*(v201 + 16))(v200, v72 + v88, v202);
    v191 = sub_2205715CC;
    sub_2207A04A8(v87, v207, sub_2205715CC);
    v197 = MEMORY[0x277D68648];
    sub_2207A0578(v86, v208, &qword_27CF59B88, MEMORY[0x277D68648]);
    v91 = v205;
    (*(v205 + 16))(v209, v196, v206);
    v92 = (*(v180 + 80) + 16) & ~*(v180 + 80);
    v93 = (v181 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
    v94 = (v93 + 15) & 0xFFFFFFFFFFFFFFF8;
    v95 = (*(v90 + 80) + v94 + 8) & ~*(v90 + 80);
    v96 = (v184 + *(v182 + 80) + v95) & ~*(v182 + 80);
    v196 = (v179 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
    v97 = (*(v183 + 80) + v196 + 8) & ~*(v183 + 80);
    v98 = (v185 + *(v91 + 80) + v97) & ~*(v91 + 80);
    v99 = swift_allocObject();
    sub_2207A0510(v199, v99 + v92, v192);
    *(v99 + v93) = v194;
    *(v99 + v94) = v210;
    (*(v90 + 32))(v99 + v95, v200, v202);
    v100 = v195;
    sub_2207A0510(v207, v99 + v96, v191);
    *(v99 + v196) = v100;
    sub_2207A066C(v208, v99 + v97);
    (*(v91 + 32))(v99 + v98, v209, v206);
    swift_retain_n();
    swift_unknownObjectRetain();

    sub_22088726C();

    sub_2207A0448(v203, sub_2205715CC);
    sub_2207A11D0(v204, &qword_27CF59B88, v197);
  }

  else
  {
    v101 = v195;
    v102 = v194;
    v103 = v192;
    (*(v194 + 104))(v192, *MEMORY[0x277D68668], v195);
    v104 = sub_2208895AC();
    v105 = v204;
    (*(*(v104 - 8) + 56))(v204, 1, 1, v104);
    v106 = v203;
    sub_22088867C();
    v172 = *v72;
    v107 = *(v55 + 20);
    v171 = *(v64 + 20);
    v161 = *(v210 + 104);
    v164 = *(v161 + 32);
    v173 = type metadata accessor for StocksAudioTrack;
    sub_2207A04A8(v72, v199, type metadata accessor for StocksAudioTrack);
    v108 = v201;
    v109 = *(v201 + 16);
    v169 = v201 + 16;
    v170 = v109;
    v109(v200, v72 + v107, v202);
    v177 = sub_2205715CC;
    sub_2207A04A8(v106, v207, sub_2205715CC);
    v110 = v198;
    v111 = *(v198 + 16);
    v167 = v198 + 16;
    v168 = v111;
    v111(v197, v186, v191);
    v112 = *(v102 + 16);
    v165 = v102 + 16;
    v166 = v112;
    v112(v190, v103, v101);
    v178 = MEMORY[0x277D68648];
    sub_2207A0578(v105, v208, &qword_27CF59B88, MEMORY[0x277D68648]);
    v113 = v205;
    v114 = *(v205 + 16);
    v162 = v205 + 16;
    v163 = v114;
    v114(v209, v196, v206);
    v115 = *(v180 + 80);
    v116 = (v115 + 16) & ~v115;
    v180 = v116;
    v117 = (v181 + v116 + 7) & 0xFFFFFFFFFFFFFFF8;
    v181 = v117;
    v118 = *(v108 + 80);
    v119 = (v117 + 15) & 0xFFFFFFFFFFFFFFF8;
    v160 = v119;
    v120 = (v118 + v119 + 8) & ~v118;
    v121 = *(v182 + 80);
    v159 = v120;
    v122 = *(v110 + 80);
    v123 = (v184 + v121 + v120) & ~v121;
    v158 = v123;
    v124 = (v179 + v122 + v123) & ~v122;
    v156 = v124;
    v125 = (v176 + v124 + 7) & 0xFFFFFFFFFFFFFFF8;
    v126 = *(v102 + 80);
    v157 = v125;
    v184 = (v126 + v125 + 8) & ~v126;
    v127 = (v175 + v184 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v128 = *(v183 + 80);
    v155 = v127;
    v183 = (v128 + v127 + 5) & ~v128;
    v129 = *(v113 + 80);
    v185 = (v185 + v129 + v183) & ~v129;
    v182 = v115 | v118 | v121 | v122 | v126 | v128 | v129;
    v130 = swift_allocObject();
    v131 = v199;
    sub_2207A0510(v199, v130 + v116, v173);
    *(v130 + v117) = v172;
    *(v130 + v119) = v210;
    v132 = *(v201 + 32);
    v201 += 32;
    v179 = v132;
    v132(v130 + v120, v200, v202);
    sub_2207A0510(v207, v130 + v123, v177);
    v133 = *(v198 + 32);
    v198 += 32;
    v176 = v133;
    v133(v130 + v124, v197, v191);
    *(v130 + v125) = v161;
    v134 = *(v194 + 32);
    v154 = v194 + 32;
    v175 = v134;
    v135 = v190;
    v134(v130 + v184, v190, v195);
    v136 = v130 + v127;
    *v136 = 0;
    *(v136 + 4) = 1;
    sub_2207A066C(v208, v130 + v183);
    v137 = *(v205 + 32);
    v205 += 32;
    v153 = v137;
    v138 = v206;
    v137(v130 + v185, v209, v206);
    swift_retain_n();

    swift_unknownObjectRetain();
    sub_22088726C();

    v139 = *(v210 + 104);
    v164 = *(v139 + 32);
    v140 = v174;
    v141 = v131;
    v142 = v173;
    sub_2207A04A8(v174, v141, v173);
    v143 = v200;
    v144 = v202;
    v170(v200, v140 + v171, v202);
    v145 = v177;
    sub_2207A04A8(v203, v207, v177);
    v146 = v191;
    v168(v197, v186, v191);
    v147 = v195;
    v166(v135, v192, v195);
    sub_2207A0578(v204, v208, &qword_27CF59B88, v178);
    v163(v209, v196, v138);
    v148 = v185;
    v149 = swift_allocObject();
    sub_2207A0510(v199, v149 + v180, v142);
    *(v149 + v181) = v172;
    *(v149 + v160) = v210;
    v179(v149 + v159, v143, v144);
    sub_2207A0510(v207, v149 + v158, v145);
    v176(v149 + v156, v197, v146);
    *(v149 + v157) = v139;
    v175(v149 + v184, v190, v147);
    v150 = v149 + v155;
    *v150 = 0;
    *(v150 + 4) = 1;
    sub_2207A066C(v208, v149 + v183);
    v153(v149 + v148, v209, v206);
    swift_retain_n();

    swift_unknownObjectRetain();
    sub_22088726C();

    sub_2207A0448(v203, sub_2205715CC);
    sub_2207A11D0(v204, &qword_27CF59B88, v178);
    (*(v194 + 8))(v192, v147);
  }

  v151 = v187;
  sub_22088515C();
  sub_220886FCC();
  (*(v188 + 8))(v151, v189);
  return sub_2207A0448(v174, type metadata accessor for StocksAudioTrack);
}

uint64_t sub_2207987FC(uint64_t (*a1)(uint64_t), unint64_t a2, double a3)
{
  v115 = a2;
  v113 = a1;
  v132 = sub_22088959C();
  v119 = *(v132 - 8);
  MEMORY[0x28223BE20](v132, v5);
  v117 = v6;
  v131 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_220889ACC();
  v118 = *(v130 - 8);
  MEMORY[0x28223BE20](v130, v7);
  v114 = v8;
  v129 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_22088698C();
  v116 = *(v128 - 8);
  MEMORY[0x28223BE20](v128, v9);
  v112 = v10;
  v126 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83D88];
  sub_2204FC5D8(0, &qword_27CF59B88, MEMORY[0x277D68648], MEMORY[0x277D83D88]);
  v110 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v127 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v14;
  MEMORY[0x28223BE20](v15, v16);
  v136 = &v99 - v17;
  v137 = sub_2208895BC();
  v135 = *(v137 - 8);
  MEMORY[0x28223BE20](v137, v18);
  v125 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v19;
  MEMORY[0x28223BE20](v20, v21);
  v134 = &v99 - v22;
  sub_2204FC5D8(0, qword_281296160, type metadata accessor for StocksAudioTrack, v11);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = &v99 - v25;
  sub_2205715CC(0);
  v107 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v28);
  v124 = &v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31);
  v122 = &v99 - v32;
  MEMORY[0x28223BE20](v33, v34);
  v121 = &v99 - v35;
  MEMORY[0x28223BE20](v36, v37);
  v133 = &v99 - v38;
  MEMORY[0x28223BE20](v39, v40);
  v42 = &v99 - v41;
  MEMORY[0x28223BE20](v43, v44);
  v46 = &v99 - v45;
  v104 = v47;
  MEMORY[0x28223BE20](v48, v49);
  v51 = &v99 - v50;
  v52 = type metadata accessor for StocksAudioTrack(0);
  v53 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v54);
  v123 = &v99 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v55;
  MEMORY[0x28223BE20](v56, v57);
  v59 = &v99 - v58;
  v120 = v3;
  sub_22088867C();
  sub_2208878BC();
  sub_2207A0448(v51, sub_2205715CC);
  v105 = v53;
  v60 = v53;
  v61 = v52;
  if ((*(v60 + 48))(v26, 1, v52) == 1)
  {
    return sub_2207A11D0(v26, qword_281296160, type metadata accessor for StocksAudioTrack);
  }

  v109 = v59;
  sub_2207A0510(v26, v59, type metadata accessor for StocksAudioTrack);
  v63 = v120;
  v64 = *(v120 + 104);

  sub_22088867C();
  sub_2207A0510(v46, v42, sub_2205715CC);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v67 = 0.0;
    v68 = v122;
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_8;
    }

    sub_2205D1464(0);
  }

  else
  {
    sub_2205D153C(0, v66);
    v68 = v122;
  }

  v67 = *&v42[*(v69 + 48)];
  v70 = *(v69 + 64);
  v71 = sub_22088774C();
  (*(*(v71 - 8) + 8))(&v42[v70], v71);
  sub_2207A0448(v42, type metadata accessor for StocksAudioTrack);
LABEL_8:
  if ((*(v64 + 48) & 1) == 0)
  {
    v72 = v67 - *(v64 + 40);
    if (v72 <= 0.0)
    {
      v72 = 0.0;
    }

    *(v64 + 56) = *(v64 + 56) + v72;
    *(v64 + 64) = v72;
    *(v64 + 40) = 0;
    *(v64 + 48) = 1;
  }

  v73 = *(v63 + 104);
  *(v73 + 40) = 0;
  *(v73 + 48) = 1;
  (*(v135 + 13))(v134, *MEMORY[0x277D68688], v137);
  v74 = sub_2208895AC();
  (*(*(v74 - 8) + 56))(v136, 1, 1, v74);
  sub_22088867C();
  v75 = v121;
  sub_22088867C();
  sub_2207A0510(v75, v68, sub_2205715CC);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    v77 = 0.0;
    v78 = v109;
    if (result != 1)
    {
      goto LABEL_17;
    }

    sub_2205D1464(0);
  }

  else
  {
    sub_2205D153C(0, v76);
    v78 = v109;
  }

  v77 = *(v68 + *(v79 + 48));
  v80 = *(v79 + 64);
  v81 = sub_22088774C();
  (*(*(v81 - 8) + 8))(v68 + v80, v81);
  result = sub_2207A0448(v68, type metadata accessor for StocksAudioTrack);
LABEL_17:
  v82 = v77 - a3;
  v83 = COERCE__INT64(fabs(v77 - a3)) > 0x7FEFFFFFFFFFFFFFLL;
  if (v77 - a3 > 0.0)
  {
    if (v83)
    {
      __break(1u);
      goto LABEL_24;
    }
  }

  else
  {
    v82 = 0.0;
  }

  if (v82 <= -2147483650.0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v82 < 2147483650.0)
  {
    LODWORD(v121) = v82;
    v102 = *v78;
    v84 = *(v61 + 20);
    v103 = *(v63 + 104);
    v122 = *(v103 + 32);
    v101 = type metadata accessor for StocksAudioTrack;
    sub_2207A04A8(v78, v123, type metadata accessor for StocksAudioTrack);
    v85 = v116;
    (*(v116 + 16))(v126, &v78[v84], v128);
    v100 = sub_2205715CC;
    sub_2207A04A8(v133, v124, sub_2205715CC);
    v86 = v118;
    (*(v118 + 16))(v129, v113, v130);
    v87 = v135;
    (*(v135 + 2))(v125, v134, v137);
    v113 = MEMORY[0x277D68648];
    sub_2207A0578(v136, v127, &qword_27CF59B88, MEMORY[0x277D68648]);
    v88 = v119;
    (*(v119 + 16))(v131, v115, v132);
    v89 = (*(v105 + 80) + 16) & ~*(v105 + 80);
    v90 = (v106 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
    v91 = v63;
    v92 = (v90 + 15) & 0xFFFFFFFFFFFFFFF8;
    v93 = (*(v85 + 80) + v92 + 8) & ~*(v85 + 80);
    v94 = (v112 + *(v107 + 80) + v93) & ~*(v107 + 80);
    v106 = (v104 + *(v86 + 80) + v94) & ~*(v86 + 80);
    v107 = (v114 + v106 + 7) & 0xFFFFFFFFFFFFFFF8;
    v112 = (v87[80] + v107 + 8) & ~v87[80];
    v114 = (v108 + v112 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v115 = (*(v110 + 80) + v114 + 5) & ~*(v110 + 80);
    v111 = (v111 + *(v88 + 80) + v115) & ~*(v88 + 80);
    v95 = swift_allocObject();
    sub_2207A0510(v123, v95 + v89, v101);
    *(v95 + v90) = v102;
    *(v95 + v92) = v91;
    (*(v85 + 32))(v95 + v93, v126, v128);
    sub_2207A0510(v124, v95 + v94, v100);
    (*(v86 + 32))(v95 + v106, v129, v130);
    *(v95 + v107) = v103;
    v96 = v135;
    v97 = v137;
    (*(v135 + 4))(v95 + v112, v125, v137);
    v98 = v95 + v114;
    *v98 = v121;
    *(v98 + 4) = 0;
    sub_2207A066C(v127, v95 + v115);
    (*(v88 + 32))(v95 + v111, v131, v132);
    swift_retain_n();
    swift_unknownObjectRetain();

    sub_22088726C();

    sub_2207A0448(v133, sub_2205715CC);
    sub_2207A11D0(v136, &qword_27CF59B88, v113);
    (v96[1])(v134, v97);

    return sub_2207A0448(v109, type metadata accessor for StocksAudioTrack);
  }

LABEL_25:
  __break(1u);
  return result;
}

id sub_220799590(uint64_t (*a1)(uint64_t), unint64_t a2, double a3)
{
  v117 = a2;
  v115 = a1;
  v133 = sub_22088959C();
  v121 = *(v133 - 8);
  MEMORY[0x28223BE20](v133, v5);
  v119 = v6;
  v132 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_220889ACC();
  v120 = *(v131 - 8);
  MEMORY[0x28223BE20](v131, v7);
  v116 = v8;
  v130 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_22088698C();
  v118 = *(v129 - 8);
  MEMORY[0x28223BE20](v129, v9);
  v114 = v10;
  v127 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83D88];
  sub_2204FC5D8(0, &qword_27CF59B88, MEMORY[0x277D68648], MEMORY[0x277D83D88]);
  v112 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v128 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = v14;
  MEMORY[0x28223BE20](v15, v16);
  v138 = &v101 - v17;
  v139 = sub_2208895BC();
  v137 = *(v139 - 8);
  MEMORY[0x28223BE20](v139, v18);
  v126 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v19;
  MEMORY[0x28223BE20](v20, v21);
  v136 = &v101 - v22;
  sub_2204FC5D8(0, qword_281296160, type metadata accessor for StocksAudioTrack, v11);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = &v101 - v25;
  sub_2205715CC(0);
  v109 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v28);
  v125 = &v101 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31);
  v123 = &v101 - v32;
  MEMORY[0x28223BE20](v33, v34);
  v122 = &v101 - v35;
  MEMORY[0x28223BE20](v36, v37);
  v135 = &v101 - v38;
  MEMORY[0x28223BE20](v39, v40);
  v42 = &v101 - v41;
  MEMORY[0x28223BE20](v43, v44);
  v46 = &v101 - v45;
  v106 = v47;
  MEMORY[0x28223BE20](v48, v49);
  v51 = &v101 - v50;
  v52 = type metadata accessor for StocksAudioTrack(0);
  v53 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v54);
  v124 = &v101 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v55;
  MEMORY[0x28223BE20](v56, v57);
  v59 = &v101 - v58;
  v134 = v3;
  sub_22088867C();
  sub_2208878BC();
  sub_2207A0448(v51, sub_2205715CC);
  v107 = v53;
  v60 = v53;
  v61 = v52;
  if ((*(v60 + 48))(v26, 1, v52) == 1)
  {
    return sub_2207A11D0(v26, qword_281296160, type metadata accessor for StocksAudioTrack);
  }

  v111 = v59;
  sub_2207A0510(v26, v59, type metadata accessor for StocksAudioTrack);
  v63 = v134;
  v64 = *(v134 + 104);

  sub_22088867C();
  sub_2207A0510(v46, v42, sub_2205715CC);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v67 = 0.0;
    v68 = v123;
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_8;
    }

    sub_2205D1464(0);
  }

  else
  {
    sub_2205D153C(0, v66);
    v68 = v123;
  }

  v67 = *&v42[*(v69 + 48)];
  v70 = *(v69 + 64);
  v71 = sub_22088774C();
  (*(*(v71 - 8) + 8))(&v42[v70], v71);
  sub_2207A0448(v42, type metadata accessor for StocksAudioTrack);
LABEL_8:
  if ((*(v64 + 48) & 1) == 0)
  {
    v72 = v67 - *(v64 + 40);
    if (v72 <= 0.0)
    {
      v72 = 0.0;
    }

    *(v64 + 56) = *(v64 + 56) + v72;
    *(v64 + 64) = v72;
    *(v64 + 40) = 0;
    *(v64 + 48) = 1;
  }

  v73 = *(v63 + 104);
  *(v73 + 40) = 0;
  *(v73 + 48) = 1;
  (*(v137 + 13))(v136, *MEMORY[0x277D68650], v139);
  v74 = sub_2208895AC();
  (*(*(v74 - 8) + 56))(v138, 1, 1, v74);
  sub_22088867C();
  v75 = v122;
  sub_22088867C();
  sub_2207A0510(v75, v68, sub_2205715CC);
  v76 = swift_getEnumCaseMultiPayload();
  if (v76)
  {
    v78 = 0.0;
    if (v76 != 1)
    {
      goto LABEL_17;
    }

    sub_2205D1464(0);
  }

  else
  {
    sub_2205D153C(0, v77);
  }

  v78 = *(v68 + *(v79 + 48));
  v80 = *(v79 + 64);
  v81 = sub_22088774C();
  (*(*(v81 - 8) + 8))(v68 + v80, v81);
  sub_2207A0448(v68, type metadata accessor for StocksAudioTrack);
LABEL_17:
  v82 = v78 + a3;
  v83 = v111;
  result = [*&v111[*(v61 + 24)] duration];
  if (v84 >= v82)
  {
    v84 = v82;
  }

  if ((*&v84 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v84 <= -2147483650.0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v84 < 2147483650.0)
  {
    LODWORD(v122) = v84;
    v104 = *v83;
    v85 = *(v61 + 20);
    v105 = *(v63 + 104);
    v123 = *(v105 + 32);
    v103 = type metadata accessor for StocksAudioTrack;
    sub_2207A04A8(v83, v124, type metadata accessor for StocksAudioTrack);
    v86 = v118;
    (*(v118 + 16))(v127, &v83[v85], v129);
    v102 = sub_2205715CC;
    sub_2207A04A8(v135, v125, sub_2205715CC);
    v87 = v120;
    (*(v120 + 16))(v130, v115, v131);
    v88 = v137;
    (*(v137 + 2))(v126, v136, v139);
    v115 = MEMORY[0x277D68648];
    sub_2207A0578(v138, v128, &qword_27CF59B88, MEMORY[0x277D68648]);
    v89 = v121;
    (*(v121 + 16))(v132, v117, v133);
    v90 = (*(v107 + 80) + 16) & ~*(v107 + 80);
    v91 = (v108 + v90 + 7) & 0xFFFFFFFFFFFFFFF8;
    v92 = (v91 + 15) & 0xFFFFFFFFFFFFFFF8;
    v93 = (*(v86 + 80) + v92 + 8) & ~*(v86 + 80);
    v94 = (v114 + *(v109 + 80) + v93) & ~*(v109 + 80);
    v108 = (v106 + *(v87 + 80) + v94) & ~*(v87 + 80);
    v109 = (v116 + v108 + 7) & 0xFFFFFFFFFFFFFFF8;
    v114 = (v88[80] + v109 + 8) & ~v88[80];
    v116 = (v110 + v114 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v117 = (*(v112 + 80) + v116 + 5) & ~*(v112 + 80);
    v113 = (v113 + *(v89 + 80) + v117) & ~*(v89 + 80);
    v95 = swift_allocObject();
    v96 = v134;
    v97 = v95;
    sub_2207A0510(v124, v95 + v90, v103);
    *(v97 + v91) = v104;
    *(v97 + v92) = v96;
    (*(v86 + 32))(v97 + v93, v127, v129);
    sub_2207A0510(v125, v97 + v94, v102);
    (*(v87 + 32))(v97 + v108, v130, v131);
    *(v97 + v109) = v105;
    v98 = v137;
    v99 = v139;
    (*(v137 + 4))(v97 + v114, v126, v139);
    v100 = v97 + v116;
    *v100 = v122;
    *(v100 + 4) = 0;
    sub_2207A066C(v128, v97 + v117);
    (*(v89 + 32))(v97 + v113, v132, v133);
    swift_retain_n();
    swift_unknownObjectRetain();

    sub_22088726C();

    sub_2207A0448(v135, sub_2205715CC);
    sub_2207A11D0(v138, &qword_27CF59B88, v115);
    (v98[1])(v136, v99);

    return sub_2207A0448(v111, type metadata accessor for StocksAudioTrack);
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_22079A324(uint64_t a1, uint64_t a2, double a3)
{
  v199 = a2;
  v198 = a1;
  v5 = sub_22088959C();
  v206 = *(v5 - 8);
  v207 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v176 = v7;
  v218 = &v158 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = sub_220889ACC();
  v216 = *(v201 - 8);
  MEMORY[0x28223BE20](v201, v8);
  v196 = v9;
  v205 = &v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = sub_22088698C();
  v203 = *(v214 - 8);
  MEMORY[0x28223BE20](v214, v10);
  v195 = v11;
  v212 = &v158 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D83D88];
  sub_2204FC5D8(0, &qword_27CF59B88, MEMORY[0x277D68648], MEMORY[0x277D83D88]);
  v175 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v211 = &v158 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = v15;
  MEMORY[0x28223BE20](v16, v17);
  v215 = &v158 - v18;
  v204 = sub_2208895BC();
  v208 = *(v204 - 8);
  MEMORY[0x28223BE20](v204, v19);
  v217 = &v158 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = v20;
  MEMORY[0x28223BE20](v21, v22);
  v213 = &v158 - v23;
  sub_2204FC5D8(0, qword_281296160, type metadata accessor for StocksAudioTrack, v12);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v27 = &v158 - v26;
  sub_2205715CC(0);
  v29 = v28;
  v193 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v30);
  v209 = &v158 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v210 = &v158 - v34;
  MEMORY[0x28223BE20](v35, v36);
  v38 = &v158 - v37;
  MEMORY[0x28223BE20](v39, v40);
  v42 = &v158 - v41;
  v183 = v43;
  MEMORY[0x28223BE20](v44, v45);
  v47 = &v158 - v46;
  v48 = type metadata accessor for StocksAudioTrack(0);
  v49 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v50);
  v202 = &v158 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = v51;
  MEMORY[0x28223BE20](v52, v53);
  v55 = (&v158 - v54);
  v200 = v3;
  v56 = *(v3 + 48);
  sub_22088867C();
  v197 = v29;
  sub_2208878BC();
  sub_2207A0448(v47, sub_2205715CC);
  v184 = v49;
  v57 = *(v49 + 48);
  v192 = v48;
  if (v57(v27, 1, v48) == 1)
  {
    return sub_2207A11D0(v27, qword_281296160, type metadata accessor for StocksAudioTrack);
  }

  sub_2207A0510(v27, v55, type metadata accessor for StocksAudioTrack);
  v59 = v200;
  v60 = *(v200 + 104);

  sub_22088867C();
  sub_2207A0510(v42, v38, sub_2205715CC);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v63 = 0.0;
    v64 = v56;
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_8;
    }

    sub_2205D1464(0);
  }

  else
  {
    sub_2205D153C(0, v62);
    v64 = v56;
  }

  v63 = *&v38[*(v65 + 48)];
  v66 = *(v65 + 64);
  v67 = sub_22088774C();
  (*(*(v67 - 8) + 8))(&v38[v66], v67);
  sub_2207A0448(v38, type metadata accessor for StocksAudioTrack);
LABEL_8:
  if ((*(v60 + 48) & 1) == 0)
  {
    v68 = v63 - *(v60 + 40);
    if (v68 <= 0.0)
    {
      v68 = 0.0;
    }

    *(v60 + 56) = *(v60 + 56) + v68;
    *(v60 + 64) = v68;
    *(v60 + 40) = 0;
    *(v60 + 48) = 1;
  }

  v69 = *(v59 + 104);
  *(v69 + 40) = 0;
  *(v69 + 48) = 1;
  v70 = *MEMORY[0x277D68668];
  v71 = v208;
  v72 = v208[13];
  v164 = v208 + 13;
  v165 = v72;
  v73 = v213;
  v74 = v59;
  v75 = v204;
  v72(v213, v70, v204);
  v162 = sub_2208895AC();
  v76 = *(v162 - 1);
  v161 = *(v76 + 56);
  v163 = (v76 + 56);
  v77 = v215;
  v161(v215, 1, 1, v162);
  v78 = v210;
  sub_22088867C();
  v197 = *v55;
  v191 = v55 + *(v192 + 5);
  v79 = v191;
  v158 = *(v74 + 104);
  v159 = *(v158 + 32);
  v167 = type metadata accessor for StocksAudioTrack;
  sub_2207A04A8(v55, v202, type metadata accessor for StocksAudioTrack);
  v80 = v203;
  v81 = *(v203 + 16);
  v190 = v203 + 16;
  v189 = v81;
  v81(v212, v79, v214);
  v166 = sub_2205715CC;
  v160 = v64;
  sub_2207A04A8(v78, v209, sub_2205715CC);
  v82 = v216;
  v83 = *(v216 + 16);
  v179 = v216 + 16;
  v188 = v83;
  v83(v205, v198, v201);
  v84 = v71[2];
  v187 = v71 + 2;
  v186 = v84;
  v84(v217, v73, v75);
  v168 = MEMORY[0x277D68648];
  sub_2207A0578(v77, v211, &qword_27CF59B88, MEMORY[0x277D68648]);
  v192 = v55;
  v85 = v206;
  v86 = *(v206 + 16);
  v178 = v206 + 16;
  v177 = v86;
  v86(v218, v199, v207);
  v87 = *(v184 + 80);
  v88 = (v87 + 16) & ~v87;
  v182 = v88;
  v89 = (v185 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
  v185 = v89;
  v90 = *(v80 + 80);
  v91 = (v89 + 15) & 0xFFFFFFFFFFFFFFF8;
  v184 = v91;
  v92 = (v90 + v91 + 8) & ~v90;
  v93 = *(v193 + 80);
  v180 = v92;
  v94 = *(v82 + 80);
  v95 = (v195 + v93 + v92) & ~v93;
  v181 = v95;
  v183 = (v183 + v94 + v95) & ~v94;
  v96 = v183;
  v97 = (v196 + v183 + 7) & 0xFFFFFFFFFFFFFFF8;
  v98 = *(v71 + 80);
  v169 = v97;
  v193 = (v98 + v97 + 8) & ~v98;
  v196 = (v174 + v193 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v99 = *(v175 + 80);
  v195 = (v99 + v196 + 5) & ~v99;
  v100 = *(v85 + 80);
  v101 = v85;
  v194 = (v194 + v100 + v195) & ~v100;
  v176 += v194;
  v175 = v87 | v90 | v93 | v94 | v98 | v99 | v100;
  v102 = swift_allocObject();
  sub_2207A0510(v202, v102 + v88, v167);
  v103 = v197;
  *(v102 + v89) = v197;
  v104 = v200;
  *(v102 + v91) = v200;
  v105 = *(v80 + 32);
  v203 = v80 + 32;
  v174 = v105;
  v106 = v212;
  v105(v102 + v92, v212, v214);
  v107 = v209;
  sub_2207A0510(v209, v102 + v95, v166);
  v108 = *(v216 + 32);
  v216 += 32;
  v173 = v108;
  v109 = v205;
  v108(v102 + v96, v205, v201);
  *(v102 + v97) = v158;
  v110 = v104;
  v111 = v208[4];
  v172 = v208 + 4;
  v171 = v111;
  v112 = v217;
  v111(v102 + v193, v217, v204);
  v113 = v102 + v196;
  *v113 = 0;
  *(v113 + 4) = 1;
  sub_2207A066C(v211, v102 + v195);
  v114 = *(v101 + 32);
  v206 = v101 + 32;
  v170 = v114;
  v115 = v218;
  v114(v102 + v194, v218, v207);
  swift_retain_n();
  v116 = v103;
  swift_unknownObjectRetain();

  sub_22088726C();

  v158 = *(v110 + 104);
  v159 = *(v158 + 32);
  v117 = v202;
  v118 = v167;
  sub_2207A04A8(v192, v202, v167);
  v119 = v214;
  v189(v106, v191, v214);
  v120 = v107;
  v121 = v166;
  sub_2207A04A8(v210, v120, v166);
  v122 = v109;
  v123 = v201;
  v188(v122, v198, v201);
  v124 = v204;
  v186(v112, v213, v204);
  v125 = v211;
  sub_2207A0578(v215, v211, &qword_27CF59B88, v168);
  v126 = v115;
  v127 = v207;
  v177(v126, v199, v207);
  v128 = swift_allocObject();
  sub_2207A0510(v117, v128 + v182, v118);
  *(v128 + v185) = v116;
  v129 = v200;
  *(v128 + v184) = v200;
  v174(v128 + v180, v212, v119);
  sub_2207A0510(v209, v128 + v181, v121);
  v173(v128 + v183, v205, v123);
  *(v128 + v169) = v158;
  v171(v128 + v193, v217, v124);
  v130 = v128 + v196;
  *v130 = 0;
  *(v130 + 4) = 1;
  sub_2207A066C(v125, v128 + v195);
  v170(v128 + v194, v218, v127);
  swift_retain_n();
  swift_unknownObjectRetain();
  v131 = v129;

  sub_22088726C();

  sub_2207A0448(v210, sub_2205715CC);
  v132 = v215;
  sub_2207A11D0(v215, &qword_27CF59B88, v168);
  v133 = v208[1];
  v134 = v213;
  ++v208;
  (v133)(v213, v124);

  v165(v134, *MEMORY[0x277D68678], v124);
  v161(v132, 1, 1, v162);
  result = sub_22088867C();
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (a3 <= -2147483650.0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a3 < 2147483650.0)
  {
    LODWORD(v167) = a3;
    v135 = v131;
    v164 = *(v131 + 104);
    v165 = v164[4];
    v136 = v202;
    v163 = type metadata accessor for StocksAudioTrack;
    sub_2207A04A8(v192, v202, type metadata accessor for StocksAudioTrack);
    v189(v212, v191, v214);
    v162 = sub_2205715CC;
    sub_2207A04A8(v210, v209, sub_2205715CC);
    v137 = v205;
    v166 = v133;
    v138 = v201;
    v188(v205, v198, v201);
    v139 = v204;
    v186(v217, v213, v204);
    v168 = MEMORY[0x277D68648];
    sub_2207A0578(v215, v211, &qword_27CF59B88, MEMORY[0x277D68648]);
    v140 = v207;
    v177(v218, v199, v207);
    v141 = swift_allocObject();
    sub_2207A0510(v136, v141 + v182, type metadata accessor for StocksAudioTrack);
    *(v141 + v185) = v197;
    *(v141 + v184) = v131;
    v174(v141 + v180, v212, v214);
    v142 = v209;
    sub_2207A0510(v209, v141 + v181, sub_2205715CC);
    v143 = v138;
    v173(v141 + v183, v137, v138);
    *(v141 + v169) = v164;
    v171(v141 + v193, v217, v139);
    v144 = v141 + v196;
    *v144 = v167;
    *(v144 + 4) = 0;
    v145 = v211;
    sub_2207A066C(v211, v141 + v195);
    v170(v141 + v194, v218, v140);
    swift_retain_n();
    swift_unknownObjectRetain();

    sub_22088726C();

    v164 = *(v135 + 104);
    v165 = v164[4];
    v146 = v202;
    v147 = v163;
    sub_2207A04A8(v192, v202, v163);
    v148 = v212;
    v149 = v214;
    v189(v212, v191, v214);
    v150 = v142;
    v151 = v162;
    sub_2207A04A8(v210, v150, v162);
    v152 = v205;
    v153 = v143;
    v188(v205, v198, v143);
    v154 = v204;
    v186(v217, v213, v204);
    sub_2207A0578(v215, v145, &qword_27CF59B88, v168);
    v155 = v207;
    v177(v218, v199, v207);
    v156 = swift_allocObject();
    sub_2207A0510(v146, v156 + v182, v147);
    *(v156 + v185) = v197;
    *(v156 + v184) = v200;
    v174(v156 + v180, v148, v149);
    sub_2207A0510(v209, v156 + v181, v151);
    v173(v156 + v183, v152, v153);
    *(v156 + v169) = v164;
    v171(v156 + v193, v217, v154);
    v157 = v156 + v196;
    *v157 = v167;
    *(v157 + 4) = 0;
    sub_2207A066C(v211, v156 + v195);
    v170(v156 + v194, v218, v155);
    swift_retain_n();
    swift_unknownObjectRetain();

    sub_22088726C();

    sub_2207A0448(v210, sub_2205715CC);
    sub_2207A11D0(v215, &qword_27CF59B88, v168);
    (v166)(v213, v154);

    return sub_2207A0448(v192, type metadata accessor for StocksAudioTrack);
  }

LABEL_18:
  __break(1u);
  return result;
}

double sub_22079BBE0(uint64_t a1)
{
  v2 = v1;
  sub_220889F2C();
  sub_2204FFF04(&qword_27CF59C10, MEMORY[0x277D68E48], MEMORY[0x277D68E40]);
  sub_2208872BC();
  sub_220889FEC();
  sub_2204FFF04(&qword_2812982D8, MEMORY[0x277D68ED8], MEMORY[0x277D68ED0]);
  sub_2208872BC();
  sub_22088A0DC();
  sub_2204FFF04(&unk_281298290, MEMORY[0x277D68FD8], MEMORY[0x277D68FD0]);
  sub_2208872BC();
  v3 = sub_2208872FC();
  sub_22088A01C();
  sub_2204FFF04(&unk_2812982B0, MEMORY[0x277D68F18], MEMORY[0x277D68F10]);
  sub_2208872BC();
  *(v2 + 40) = v3;

  return result;
}

id sub_22079BDEC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v141 = a7;
  v142 = a8;
  v145 = a6;
  v138 = a5;
  v118 = a4;
  v137 = a3;
  v157 = a1;
  v13 = sub_22088959C();
  v127 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x277D83D88];
  sub_2204FC5D8(0, &qword_27CF59B88, MEMORY[0x277D68648], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v124 = &v111 - v20;
  v123 = sub_2208895BC();
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123, v21);
  v146 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_22088998C();
  v126 = *(v128 - 8);
  MEMORY[0x28223BE20](v128, v23);
  v125 = &v111 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FC5D8(0, &unk_27CF59BA8, MEMORY[0x277D68DE0], v17);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v114 = &v111 - v27;
  v140 = sub_220889E9C();
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140, v28);
  v119 = &v111 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_220889ACC();
  v30 = *(v144 - 8);
  MEMORY[0x28223BE20](v144, v31);
  v143 = &v111 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_22088935C();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v35);
  v37 = &v111 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_2208898CC();
  v135 = *(v136 - 8);
  MEMORY[0x28223BE20](v136, v38);
  v147 = &v111 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_22088A10C();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113, v40);
  v111 = &v111 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_2208891DC();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117, v42);
  v115 = &v111 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_2208895EC();
  v134 = *(v152 - 8);
  MEMORY[0x28223BE20](v152, v44);
  v133 = &v111 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_2208893AC();
  MEMORY[0x28223BE20](v46 - 8, v47);
  v49 = &v111 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_22088A17C();
  v151 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v51);
  v53 = &v111 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(a2 + *(type metadata accessor for StocksAudioTrack(0) + 24)) duration];
  if ((*&v55 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v55 <= -2147483650.0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v55 >= 2147483650.0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v129 = v37;
  v130 = v34;
  v131 = v33;
  v132 = v30;
  v120 = v16;
  v121 = v13;
  sub_22067DEE0(v49);
  v56 = v53;
  sub_22088A16C();
  sub_2204FC5D8(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v153 = v57;
  v58 = sub_220886F8C();
  v154 = v58;
  v59 = *(v58 - 8);
  v156 = *(v59 + 72);
  v60 = v50;
  v61 = *(v59 + 80);
  v62 = (v61 + 32) & ~v61;
  v63 = swift_allocObject();
  v155 = xmmword_220899360;
  *(v63 + 16) = xmmword_220899360;
  v64 = *MEMORY[0x277CEAD18];
  v65 = *(v59 + 104);
  v65(v63 + v62, v64, v58);
  sub_2204FFF04(&qword_27CF59BB8, MEMORY[0x277D690B0], MEMORY[0x277D690A8]);
  sub_220886F1C();

  v66 = *(v151 + 1);
  v150 = v64;
  v66(v56, v60);
  v67 = v137;
  swift_getObjectType();
  v68 = v133;
  sub_2206F61F0(v133);
  v148 = v61;
  v69 = v59 + 104;
  v70 = v62;
  v71 = swift_allocObject();
  *(v71 + 16) = v155;
  v149 = v65;
  v65(v71 + v62, v64, v154);
  sub_2204FFF04(&qword_2812984B0, MEMORY[0x277D686A0], MEMORY[0x277D68698]);
  v151 = "baseAssetProvider transform ";
  v72 = v152;
  sub_220886F1C();

  (*(v134 + 8))(v68, v72);
  v73 = [v67 sourceChannel];
  if (v73)
  {
    v74 = v73;
    __swift_project_boxed_opaque_existential_1((v118 + 56), *(v118 + 80));
    v75 = v115;
    sub_2206EC95C(v74, v76);
    v77 = swift_allocObject();
    *(v77 + 16) = v155;
    v149(&v70[v77], v150, v154);
    sub_2204FFF04(&qword_281298560, MEMORY[0x277D68340], MEMORY[0x277D68338]);
    v78 = v117;
    sub_220886F1C();
    swift_unknownObjectRelease();

    (*(v116 + 8))(v75, v78);
  }

  v152 = v69;
  if ([v67 respondsToSelector_])
  {
    v79 = [v67 parentIssue];
    if (v79)
    {
      v80 = v79;
      v81 = [v79 identifier];
      sub_22089136C();

      v82 = v111;
      sub_22088A0FC();
      v83 = swift_allocObject();
      *(v83 + 16) = v155;
      v149(&v70[v83], v150, v154);
      sub_2204FFF04(&qword_281298280, MEMORY[0x277D69030], MEMORY[0x277D69028]);
      v84 = v113;
      sub_220886F1C();

      (*(v112 + 8))(v82, v84);
    }
  }

  sub_22057BB68();
  v85 = swift_allocObject();
  *(v85 + 16) = v155;
  v86 = v150;
  v87 = v154;
  v88 = v149;
  v149(&v70[v85], v150, v154);
  sub_2204FFF04(&qword_281298430, MEMORY[0x277D68860], MEMORY[0x277D68858]);
  v89 = v136;
  sub_220886F1C();

  (*(v135 + 8))(v147, v89);
  v90 = v129;
  sub_22079D1CC();
  v91 = swift_allocObject();
  *(v91 + 16) = v155;
  v147 = v70;
  v88(&v70[v91], v86, v87);
  sub_2204FFF04(&qword_27CF59BC0, MEMORY[0x277D68400], MEMORY[0x277D683F8]);
  v92 = v131;
  sub_220886F1C();

  (*(v130 + 8))(v90, v92);
  v93 = *MEMORY[0x277D68A28];
  v94 = v132;
  v95 = *(v132 + 104);
  v97 = v143;
  v96 = v144;
  v95(v143, v93, v144);
  sub_2204FFF04(&qword_27CF59BD0, MEMORY[0x277D68A30], MEMORY[0x277D68A38]);
  v98 = v141;
  v99 = sub_2208912FC();
  (*(v94 + 8))(v97, v96);
  if (v99)
  {
    sub_2204FFF04(&qword_27CF59BD8, MEMORY[0x277D68DE0], MEMORY[0x277D68DD8]);
    v100 = v114;
    v101 = v140;
    sub_220886F0C();
    v102 = v139;
    v103 = (*(v139 + 48))(v100, 1, v101);
    result = sub_2207A11D0(v100, &unk_27CF59BA8, MEMORY[0x277D68DE0]);
    v104 = v147;
    if (v103 != 1)
    {
      goto LABEL_14;
    }

    v95(v143, v93, v144);
    v105 = v119;
    sub_220889E8C();
    sub_220886F1C();
  }

  else
  {
    (*(v94 + 16))(v97, v98, v96);
    v105 = v119;
    sub_220889E8C();
    sub_2204FFF04(&qword_27CF59BD8, MEMORY[0x277D68DE0], MEMORY[0x277D68DD8]);
    v101 = v140;
    sub_220886F1C();
    v104 = v147;
    v102 = v139;
  }

  result = (*(v102 + 8))(v105, v101);
LABEL_14:
  v106 = *(v142 + 56);
  if ((*&v106 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v106 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v106 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v107 = *(v142 + 64);
  if ((*&v107 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v107 <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v107 >= 9.22337204e18)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  (*(v122 + 16))(v146, a9, v123);
  if ((a10 & 0x100000000) != 0)
  {
    sub_22079D394();
  }

  sub_2207A0578(a11, v124, &qword_27CF59B88, MEMORY[0x277D68648]);
  (*(v127 + 16))(v120, a12, v121);

  v108 = v125;
  sub_22088997C();
  v109 = swift_allocObject();
  *(v109 + 16) = v155;
  v149(&v104[v109], v150, v154);
  sub_2204FFF04(&unk_27CF59BE0, MEMORY[0x277D68918], MEMORY[0x277D68910]);
  v110 = v128;
  sub_220886F1C();

  (*(v126 + 8))(v108, v110);
  sub_220889D2C();
  sub_2204FFF04(&qword_27CF59C00, MEMORY[0x277D68C68], MEMORY[0x277D68C60]);
  return sub_220886E9C();
}

uint64_t sub_22079D1CC()
{
  v1 = v0;
  v2 = sub_22088774C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205715CC(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207A04A8(v1, v10, sub_2205715CC);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_2205D153C(0, v12);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_2205D1464(0);
LABEL_5:
    (*(v3 + 32))(v6, &v10[*(v13 + 64)], v2);
    sub_22088773C();
    sub_22088934C();
    (*(v3 + 8))(v6, v2);
    return sub_2207A0448(v10, type metadata accessor for StocksAudioTrack);
  }

  return sub_22088934C();
}

uint64_t sub_22079D394()
{
  sub_2205715CC(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207A04A8(v0, v4, sub_2205715CC);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v7 = 0.0;
    if (EnumCaseMultiPayload != 1)
    {
      return v7;
    }

    sub_2205D1464(0);
  }

  else
  {
    sub_2205D153C(0, v6);
  }

  v7 = *&v4[*(v8 + 48)];
  v9 = *(v8 + 64);
  v10 = sub_22088774C();
  (*(*(v10 - 8) + 8))(&v4[v9], v10);
  result = sub_2207A0448(v4, type metadata accessor for StocksAudioTrack);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v7 <= -2147483650.0)
    {
      __break(1u);
    }

    else if (v7 < 2147483650.0)
    {
      return v7;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22079D508(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(char *, uint64_t, uint64_t, __n128), uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v178 = a8;
  v177 = a7;
  v179 = a6;
  v173 = a5;
  v180 = a4;
  v172 = a3;
  v191 = a1;
  v14 = sub_22088944C();
  v160 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v158 = &v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v156 = &v134 - v19;
  v157 = sub_220886A4C();
  v155 = *(v157 - 8);
  MEMORY[0x28223BE20](v157, v20);
  v154 = &v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22088943C();
  v161 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v23);
  v159 = &v134 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_22088959C();
  v150 = *(v153 - 8);
  MEMORY[0x28223BE20](v153, v25);
  v152 = &v134 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x277D83D88];
  sub_2204FC5D8(0, &qword_27CF59B88, MEMORY[0x277D68648], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v28 - 8, v29);
  v147 = &v134 - v30;
  v146 = sub_2208895BC();
  v145 = *(v146 - 8);
  MEMORY[0x28223BE20](v146, v31);
  v181 = &v134 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_22088998C();
  v149 = *(v151 - 8);
  MEMORY[0x28223BE20](v151, v33);
  v148 = &v134 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FC5D8(0, &unk_27CF59BA8, MEMORY[0x277D68DE0], v27);
  MEMORY[0x28223BE20](v35 - 8, v36);
  v38 = &v134 - v37;
  v176 = sub_220889E9C();
  v175 = *(v176 - 8);
  MEMORY[0x28223BE20](v176, v39);
  v142 = &v134 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_220889ACC();
  v174 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v42);
  v44 = &v134 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_22088935C();
  v170 = *(v171 - 8);
  MEMORY[0x28223BE20](v171, v45);
  v169 = &v134 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_2208898CC();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168, v47);
  v166 = &v134 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_22088A10C();
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137, v49);
  v135 = &v134 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_2208891DC();
  v141 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v52);
  v140 = &v134 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_2208895EC();
  v165 = *(v183 - 1);
  MEMORY[0x28223BE20](v183, v54);
  v164 = &v134 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_2208893AC();
  MEMORY[0x28223BE20](v56 - 8, v57);
  v59 = &v134 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_22088A17C();
  v190 = *(v60 - 1);
  MEMORY[0x28223BE20](v60, v61);
  v63 = &v134 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(a2 + *(type metadata accessor for StocksAudioTrack(0) + 24)) duration];
  if ((*&v64 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v64 <= -2147483650.0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v64 >= 2147483650.0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
    goto LABEL_10;
  }

  v139 = v51;
  v162 = v44;
  v163 = v41;
  v138 = v38;
  v143 = v14;
  v144 = v22;
  sub_22067DEE0(v59);
  sub_22088A16C();
  sub_2204FC5D8(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v187 = v65;
  v66 = sub_220886F8C();
  v186 = v66;
  v67 = *(v66 - 8);
  v188 = *(v67 + 72);
  v68 = *(v67 + 80);
  v69 = (v68 + 32) & ~v68;
  v70 = swift_allocObject();
  v192 = xmmword_220899360;
  *(v70 + 16) = xmmword_220899360;
  v71 = *MEMORY[0x277CEAD18];
  v72 = *(v67 + 104);
  v72(v70 + v69, v71, v66);
  v185 = "baseAssetProvider transform ";
  sub_2204FFF04(&qword_27CF59BB8, MEMORY[0x277D690B0], MEMORY[0x277D690A8]);
  sub_220886F1C();
  v73 = v68;

  (*(v190 + 8))(v63, v60);
  v74 = v172;
  swift_getObjectType();
  v75 = v164;
  sub_2206F61F0(v164);
  v189 = v73;
  v76 = swift_allocObject();
  *(v76 + 16) = v192;
  v182 = v69;
  v184 = v71;
  v77 = v71;
  v78 = v186;
  v190 = v67 + 104;
  v72(v76 + v69, v77, v186);
  v79 = v72;
  sub_2204FFF04(&qword_2812984B0, MEMORY[0x277D686A0], MEMORY[0x277D68698]);
  v80 = v183;
  sub_220886F1C();

  v81 = v75;
  v82 = v78;
  (*(v165 + 8))(v81, v80);
  v83 = [v74 sourceChannel];
  if (v83)
  {
    v84 = v83;
    __swift_project_boxed_opaque_existential_1(v180 + 7, v180[10]);
    v85 = v140;
    sub_2206EC95C(v84, v86);
    v87 = v182;
    v88 = swift_allocObject();
    *(v88 + 16) = v192;
    v79(v88 + v87, v184, v82);
    sub_2204FFF04(&qword_281298560, MEMORY[0x277D68340], MEMORY[0x277D68338]);
    v89 = v139;
    sub_220886F1C();
    swift_unknownObjectRelease();

    (*(v141 + 8))(v85, v89);
  }

  v183 = v79;
  if ([v74 respondsToSelector_])
  {
    v90 = [v74 parentIssue];
    if (v90)
    {
      v91 = v90;
      v92 = [v90 identifier];
      sub_22089136C();

      v93 = v135;
      v82 = v186;
      sub_22088A0FC();
      v94 = v182;
      v95 = swift_allocObject();
      *(v95 + 16) = v192;
      (v183)(v95 + v94, v184, v82);
      sub_2204FFF04(&qword_281298280, MEMORY[0x277D69030], MEMORY[0x277D69028]);
      v96 = v137;
      sub_220886F1C();

      (*(v136 + 8))(v93, v96);
    }
  }

  v97 = v166;
  sub_22057BB68();
  v14 = v182;
  v98 = swift_allocObject();
  *(v98 + 16) = v192;
  v99 = v184;
  (v183)(v98 + v14, v184, v82);
  sub_2204FFF04(&qword_281298430, MEMORY[0x277D68860], MEMORY[0x277D68858]);
  v100 = v168;
  sub_220886F1C();

  (*(v167 + 8))(v97, v100);
  v101 = v169;
  sub_22079D1CC();
  v59 = v99;
  v22 = v186;
  v102 = swift_allocObject();
  *(v102 + 16) = v192;
  v60 = v183;
  (v183)(v102 + v14, v99, v22);
  sub_2204FFF04(&qword_27CF59BC0, MEMORY[0x277D68400], MEMORY[0x277D683F8]);
  v103 = v171;
  sub_220886F1C();

  (*(v170 + 8))(v101, v103);
  if (qword_27CF55BA8 != -1)
  {
    goto LABEL_29;
  }

LABEL_10:
  v104 = sub_22088735C();
  __swift_project_value_buffer(v104, qword_27CF59B50);
  v105 = swift_allocObject();
  *(v105 + 16) = v192;
  v60(v105 + v14, v59, v22);
  sub_2204FFF04(&qword_27CF59BC8, MEMORY[0x277CEAED0], MEMORY[0x277CEAEC8]);
  sub_220886F1C();

  v106 = *MEMORY[0x277D68A28];
  v107 = v174;
  v108 = v162;
  v109 = v163;
  v173 = *(v174 + 104);
  (v173)(v162, v106, v163);
  sub_2204FFF04(&qword_27CF59BD0, MEMORY[0x277D68A30], MEMORY[0x277D68A38]);
  v110 = v177;
  v111 = sub_2208912FC();
  (*(v107 + 8))(v108, v109);
  if (v111)
  {
    sub_2204FFF04(&qword_27CF59BD8, MEMORY[0x277D68DE0], MEMORY[0x277D68DD8]);
    v112 = v138;
    v113 = v176;
    sub_220886F0C();
    v114 = v175;
    v115 = (*(v175 + 48))(v112, 1, v113);
    result = sub_2207A11D0(v112, &unk_27CF59BA8, MEMORY[0x277D68DE0]);
    if (v115 != 1)
    {
      goto LABEL_15;
    }

    (v173)(v108, v106, v109);
    v117 = v142;
    sub_220889E8C();
    sub_220886F1C();
  }

  else
  {
    (*(v107 + 16))(v108, v110, v109);
    v117 = v142;
    sub_220889E8C();
    sub_2204FFF04(&qword_27CF59BD8, MEMORY[0x277D68DE0], MEMORY[0x277D68DD8]);
    v113 = v176;
    sub_220886F1C();
    v114 = v175;
  }

  result = (*(v114 + 8))(v117, v113);
LABEL_15:
  v118 = *(v178 + 56);
  if ((*&v118 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v118 <= -9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v118 >= 9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v119 = *(v178 + 64);
  if ((*&v119 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v119 <= -9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v119 >= 9.22337204e18)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  (*(v145 + 16))(v181, a10, v146);
  if ((a11 & 0x100000000) != 0)
  {
    sub_22079D394();
  }

  sub_2207A0578(a12, v147, &qword_27CF59B88, MEMORY[0x277D68648]);
  (*(v150 + 16))(v152, a13, v153);

  v120 = v148;
  sub_22088997C();
  v121 = v182;
  v122 = swift_allocObject();
  *(v122 + 16) = v192;
  v123 = v183;
  (v183)(v122 + v121, v184, v186);
  sub_2204FFF04(&unk_27CF59BE0, MEMORY[0x277D68918], MEMORY[0x277D68910]);
  v124 = v151;
  sub_220886F1C();

  (*(v149 + 8))(v120, v124);
  __swift_project_boxed_opaque_existential_1(v180 + 16, v180[19]);
  v125 = v154;
  sub_2208863EC();
  v126 = sub_2208869AC();
  v127 = v160;
  v128 = MEMORY[0x277D68560];
  if ((v126 & 1) == 0)
  {
    v128 = MEMORY[0x277D68558];
  }

  v129 = v156;
  v130 = v143;
  (*(v160 + 104))(v156, *v128, v143);
  (*(v127 + 16))(v158, v129, v130);
  v131 = v159;
  sub_22088942C();
  (*(v127 + 8))(v129, v130);
  (*(v155 + 8))(v125, v157);
  v132 = swift_allocObject();
  *(v132 + 16) = v192;
  v123(v132 + v121, v184, v186);
  sub_2204FFF04(&qword_2812984F0, MEMORY[0x277D68550], MEMORY[0x277D68548]);
  v133 = v144;
  sub_220886F1C();

  (*(v161 + 8))(v131, v133);
  sub_2208896EC();
  sub_2204FFF04(&unk_27CF59BF0, MEMORY[0x277D68700], MEMORY[0x277D686F8]);
  memset(v193, 0, sizeof(v193));
  sub_220886F3C();
  return sub_2207A0448(v193, sub_22055F87C);
}

void sub_22079EDEC(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10)
{
  v125 = a8;
  v144 = a7;
  v146 = a6;
  v143 = a5;
  v145 = a4;
  v142 = a3;
  v153 = a1;
  v11 = sub_22088944C();
  v132 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v130 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v128 = &v106 - v16;
  v129 = sub_220886A4C();
  v127 = *(v129 - 8);
  MEMORY[0x28223BE20](v129, v17);
  v126 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22088943C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v131 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_22088959C();
  v121 = *(v124 - 8);
  MEMORY[0x28223BE20](v124, v23);
  v123 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FC5D8(0, &qword_27CF59B88, MEMORY[0x277D68648], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v118 = &v106 - v27;
  v116 = sub_2208895BC();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116, v28);
  v117 = &v106 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_22088998C();
  v120 = *(v122 - 8);
  MEMORY[0x28223BE20](v122, v30);
  v119 = &v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_22088935C();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v106 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_2208898CC();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141, v37);
  v139 = &v106 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_22088A10C();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108, v39);
  v106 = &v106 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_2208891DC();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111, v41);
  v109 = &v106 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_2208895EC();
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138, v43);
  v136 = &v106 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_2208893AC();
  MEMORY[0x28223BE20](v45 - 8, v46);
  v48 = &v106 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_22088A17C();
  v49 = *(v155 - 8);
  MEMORY[0x28223BE20](v155, v50);
  v52 = &v106 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(a2 + *(type metadata accessor for StocksAudioTrack(0) + 24)) duration];
  if ((*&v53 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v53 <= -2147483650.0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v53 >= 2147483650.0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_10;
  }

  v133 = v36;
  v134 = v33;
  v135 = v32;
  v112 = v11;
  v113 = v20;
  v114 = v19;
  sub_22067DEE0(v48);
  sub_22088A16C();
  sub_2204FC5D8(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v157 = v54;
  v55 = sub_220886F8C();
  v56 = *(v55 - 8);
  v154 = *(v56 + 72);
  v57 = *(v56 + 80);
  v58 = swift_allocObject();
  v156 = xmmword_220899360;
  *(v58 + 16) = xmmword_220899360;
  v152 = *MEMORY[0x277CEAD18];
  v147 = *(v56 + 104);
  v150 = v56 + 104;
  v147(v58 + ((v57 + 32) & ~v57));
  sub_2204FFF04(&qword_27CF59BB8, MEMORY[0x277D690B0], MEMORY[0x277D690A8]);
  v59 = v155;
  sub_220886F1C();
  v149 = v57;

  (*(v49 + 8))(v52, v59);
  v60 = v142;
  swift_getObjectType();
  v61 = v136;
  sub_2206F61F0(v136);
  v62 = swift_allocObject();
  *(v62 + 16) = v156;
  v148 = (v57 + 32) & ~v57;
  v63 = v147;
  v155 = v55;
  v64 = v55;
  v65 = v60;
  (v147)(v62 + v148, v152, v64);
  sub_2204FFF04(&qword_2812984B0, MEMORY[0x277D686A0], MEMORY[0x277D68698]);
  v151 = "baseAssetProvider transform ";
  v66 = v138;
  sub_220886F1C();

  (*(v137 + 8))(v61, v66);
  v67 = [v60 sourceChannel];
  if (v67)
  {
    v68 = v67;
    __swift_project_boxed_opaque_existential_1(v145 + 7, v145[10]);
    v69 = v109;
    sub_2206EC95C(v68, v70);
    v71 = v148;
    v72 = swift_allocObject();
    *(v72 + 16) = v156;
    (v63)(v72 + v71, v152, v155);
    sub_2204FFF04(&qword_281298560, MEMORY[0x277D68340], MEMORY[0x277D68338]);
    v73 = v111;
    sub_220886F1C();
    swift_unknownObjectRelease();

    (*(v110 + 8))(v69, v73);
  }

  if ([v65 respondsToSelector_])
  {
    v74 = [v65 parentIssue];
    if (v74)
    {
      v75 = v74;
      v76 = [v74 identifier];
      sub_22089136C();

      v77 = v106;
      sub_22088A0FC();
      v78 = v148;
      v79 = swift_allocObject();
      *(v79 + 16) = v156;
      (v63)(v79 + v78, v152, v155);
      sub_2204FFF04(&qword_281298280, MEMORY[0x277D69030], MEMORY[0x277D69028]);
      v80 = v108;
      sub_220886F1C();

      (*(v107 + 8))(v77, v80);
    }
  }

  v81 = v139;
  sub_22057BB68();
  v82 = v148;
  v83 = swift_allocObject();
  *(v83 + 16) = v156;
  (v147)(v83 + v82, v152, v155);
  sub_2204FFF04(&qword_281298430, MEMORY[0x277D68860], MEMORY[0x277D68858]);
  v84 = v141;
  sub_220886F1C();

  (*(v140 + 8))(v81, v84);
  v85 = v133;
  sub_22079D1CC();
  v19 = v152;
  v36 = v147;
  v86 = swift_allocObject();
  *(v86 + 16) = v156;
  (v36)(v86 + v82, v19, v155);
  sub_2204FFF04(&qword_27CF59BC0, MEMORY[0x277D68400], MEMORY[0x277D683F8]);
  v87 = v135;
  sub_220886F1C();

  (*(v134 + 8))(v85, v87);
  if (qword_27CF55BA8 != -1)
  {
    goto LABEL_22;
  }

LABEL_10:
  v88 = sub_22088735C();
  __swift_project_value_buffer(v88, qword_27CF59B50);
  v89 = v148;
  v90 = swift_allocObject();
  *(v90 + 16) = v156;
  (v36)(v90 + v89, v19, v155);
  sub_2204FFF04(&qword_27CF59BC8, MEMORY[0x277CEAED0], MEMORY[0x277CEAEC8]);
  sub_220886F1C();

  v91 = *(v144 + 56);
  if ((*&v91 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v91 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v91 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v92 = *(v144 + 64);
  if ((*&v92 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v92 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v92 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v143 = v92;
  (*(v115 + 104))(v117, *MEMORY[0x277D68680], v116);
  sub_22079D394();
  sub_2207A0578(v125, v118, &qword_27CF59B88, MEMORY[0x277D68648]);
  (*(v121 + 16))(v123, a10, v124);

  v93 = v119;
  sub_22088997C();
  v94 = v148;
  v95 = swift_allocObject();
  *(v95 + 16) = v156;
  (v36)(v95 + v94, v19, v155);
  sub_2204FFF04(&unk_27CF59BE0, MEMORY[0x277D68918], MEMORY[0x277D68910]);
  v96 = v122;
  sub_220886F1C();

  (*(v120 + 8))(v93, v96);
  __swift_project_boxed_opaque_existential_1(v145 + 16, v145[19]);
  v97 = v126;
  sub_2208863EC();
  v98 = sub_2208869AC();
  v99 = v132;
  v100 = MEMORY[0x277D68560];
  if ((v98 & 1) == 0)
  {
    v100 = MEMORY[0x277D68558];
  }

  v101 = v128;
  v102 = v112;
  (*(v132 + 104))(v128, *v100, v112);
  (*(v99 + 16))(v130, v101, v102);
  v103 = v131;
  sub_22088942C();
  (*(v99 + 8))(v101, v102);
  (*(v127 + 8))(v97, v129);
  v104 = swift_allocObject();
  *(v104 + 16) = v156;
  (v36)(v104 + v94, v152, v155);
  sub_2204FFF04(&qword_2812984F0, MEMORY[0x277D68550], MEMORY[0x277D68548]);
  v105 = v114;
  sub_220886F1C();

  (*(v113 + 8))(v103, v105);
  sub_220889E6C();
  sub_2204FFF04(&qword_27CF59C08, MEMORY[0x277D68DA0], MEMORY[0x277D68D98]);
  memset(v158, 0, sizeof(v158));
  sub_220886F3C();
  sub_2207A0448(v158, sub_22055F87C);
}

uint64_t sub_2207A02A0()
{
  v0 = sub_22088516C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v16 - v7;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v16 - v11;
  v13 = sub_22088735C();
  __swift_allocate_value_buffer(v13, qword_27CF59B50);
  __swift_project_value_buffer(v13, qword_27CF59B50);
  sub_22088515C();
  v14 = *(v1 + 16);
  v14(v8, v12, v0);
  v14(v4, v12, v0);
  sub_22088734C();
  return (*(v1 + 8))(v12, v0);
}

uint64_t sub_2207A0448(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2207A04A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2207A0510(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2207A0578(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2204FC5D8(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_2207A05F8(uint64_t a1)
{
  if (!qword_27CF59B90)
  {
    sub_220448488();
    sub_220887D5C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF59B90);
    }
  }
}

uint64_t sub_2207A066C(uint64_t a1, uint64_t a2)
{
  sub_2204FC5D8(0, &qword_27CF59B88, MEMORY[0x277D68648], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_13()
{
  v1 = type metadata accessor for StocksAudioTrack(0);
  v57 = *(*(v1 - 1) + 80);
  v2 = (v57 + 16) & ~v57;
  v3 = (((*(*(v1 - 1) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = sub_22088698C();
  v5 = *(v4 - 8);
  v6 = (v3 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  sub_2205715CC(0);
  v45 = v6;
  v56 = *(*(v8 - 8) + 80);
  v9 = (v6 + v7 + v56) & ~v56;
  v10 = *(*(v8 - 8) + 64);
  v11 = sub_220889ACC();
  v54 = *(v11 - 8);
  v55 = v11;
  v44 = v9;
  v50 = (v9 + v10 + *(v54 + 80)) & ~*(v54 + 80);
  v12 = (*(v54 + 64) + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = sub_2208895BC();
  v49 = *(v53 - 8);
  v46 = (v12 + *(v49 + 80) + 8) & ~*(v49 + 80);
  v13 = (*(v49 + 64) + v46 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  sub_2204FC5D8(0, &qword_27CF59B88, MEMORY[0x277D68648], MEMORY[0x277D83D88]);
  v15 = *(*(v14 - 8) + 80);
  v16 = v13 + v15 + 5;
  v51 = *(*(v14 - 8) + 64);
  v52 = sub_22088959C();
  v48 = *(v52 - 8);
  v47 = *(v48 + 80);
  v17 = v0 + v2;
  swift_unknownObjectRelease();
  v18 = *(v5 + 8);
  v18(v17 + v1[5], v4);

  v19 = v17 + v1[12];
  sub_2208875EC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    sub_2207A05F8(0);
    v22 = *(v21 + 48);
    v23 = sub_220887D5C();
    (*(*(v23 - 8) + 8))(v19 + v22, v23);
  }

  v24 = v16 & ~v15;
  swift_unknownObjectRelease();

  v18(v0 + v45, v4);
  v25 = v0 + v44;
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    swift_unknownObjectRelease();
    v18(v25 + v1[5], v4);

    v34 = v25 + v1[12];
    v35 = swift_getEnumCaseMultiPayload();

    if (v35 == 1)
    {
      sub_2207A05F8(0);
      v37 = *(v36 + 48);
      v38 = sub_220887D5C();
      (*(*(v38 - 8) + 8))(v34 + v37, v38);
    }

    sub_2205D1464(0);
  }

  else
  {
    if (v26)
    {
      goto LABEL_12;
    }

    swift_unknownObjectRelease();
    v18(v25 + v1[5], v4);

    v27 = v25 + v1[12];
    v28 = swift_getEnumCaseMultiPayload();

    if (v28 == 1)
    {
      sub_2207A05F8(0);
      v31 = *(v30 + 48);
      v32 = sub_220887D5C();
      (*(*(v32 - 8) + 8))(v27 + v31, v32);
    }

    sub_2205D153C(0, v29);
  }

  v39 = *(v33 + 64);
  v40 = sub_22088774C();
  (*(*(v40 - 8) + 8))(v25 + v39, v40);
LABEL_12:
  (*(v54 + 8))(v0 + v50, v55);

  (*(v49 + 8))(v0 + v46, v53);
  v41 = sub_2208895AC();
  v42 = *(v41 - 8);
  if (!(*(v42 + 48))(v0 + v24, 1, v41))
  {
    (*(v42 + 8))(v0 + v24, v41);
  }

  (*(v48 + 8))(v0 + ((v24 + v51 + v47) & ~v47), v52);

  return swift_deallocObject();
}

uint64_t sub_2207A0E84(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, void, void, unint64_t, unint64_t, unint64_t, void, unint64_t, unint64_t, unint64_t, unint64_t))
{
  v3 = *(type metadata accessor for StocksAudioTrack(0) - 8);
  v24 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = (*(v3 + 64) + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_22088698C() - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v23 = v7;
  v8 = *(v6 + 64);
  sub_2205715CC(0);
  v10 = (v7 + v8 + *(*(v9 - 8) + 80)) & ~*(*(v9 - 8) + 80);
  v11 = *(*(v9 - 8) + 64);
  v12 = *(sub_220889ACC() - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = (*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(sub_2208895BC() - 8);
  v16 = (v14 + *(v15 + 80) + 8) & ~*(v15 + 80);
  v17 = (*(v15 + 64) + v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  sub_2204FC5D8(0, &qword_27CF59B88, MEMORY[0x277D68648], MEMORY[0x277D83D88]);
  v19 = (v17 + *(*(v18 - 8) + 80) + 5) & ~*(*(v18 - 8) + 80);
  v20 = *(*(v18 - 8) + 64);
  v21 = *(sub_22088959C() - 8);
  return a2(a1, v2 + v24, *(v2 + v4), *(v2 + v5), v2 + v23, v2 + v10, v2 + v13, *(v2 + v14), v2 + v16, *(v2 + v17) | (*(v2 + v17 + 4) << 32), v2 + v19, v2 + ((v19 + v20 + *(v21 + 80)) & ~*(v21 + 80)));
}

uint64_t sub_2207A11D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2204FC5D8(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double sub_2207A1244(char *a1)
{
  v3 = *(sub_220889ACC() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_22088959C() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_2208895AC() - 8);
  v10 = *(v1 + 16);
  v11 = v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_220793A9C(a1, v10, v1 + v4, v1 + v7, v11);
}

uint64_t objectdestroy_49Tm()
{
  v1 = type metadata accessor for StocksAudioTrack(0);
  v47 = *(*(v1 - 1) + 80);
  v2 = (v47 + 16) & ~v47;
  v3 = (((*(*(v1 - 1) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = sub_22088698C();
  v5 = *(v4 - 8);
  v6 = (v3 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  sub_2205715CC(0);
  v40 = v6;
  v46 = *(*(v8 - 8) + 80);
  v9 = (v6 + v7 + v46) & ~v46;
  v10 = (*(*(v8 - 8) + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_2204FC5D8(0, &qword_27CF59B88, MEMORY[0x277D68648], MEMORY[0x277D83D88]);
  v45 = *(*(v11 - 8) + 80);
  v12 = v10 + v45 + 8;
  v43 = *(*(v11 - 8) + 64);
  v44 = sub_22088959C();
  v42 = *(v44 - 8);
  v41 = *(v42 + 80);
  v13 = v0 + v2;
  swift_unknownObjectRelease();
  v14 = *(v5 + 8);
  v14(v13 + v1[5], v4);

  v15 = v13 + v1[12];
  sub_2208875EC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    sub_2207A05F8(0);
    v18 = *(v17 + 48);
    v19 = sub_220887D5C();
    (*(*(v19 - 8) + 8))(v15 + v18, v19);
  }

  v20 = v12 & ~v45;
  swift_unknownObjectRelease();

  v14(v0 + v40, v4);
  v21 = v0 + v9;
  v22 = swift_getEnumCaseMultiPayload();
  if (v22 == 1)
  {
    swift_unknownObjectRelease();
    v14(v21 + v1[5], v4);

    v30 = v21 + v1[12];
    v31 = swift_getEnumCaseMultiPayload();

    if (v31 == 1)
    {
      sub_2207A05F8(0);
      v33 = *(v32 + 48);
      v34 = sub_220887D5C();
      (*(*(v34 - 8) + 8))(v30 + v33, v34);
    }

    sub_2205D1464(0);
  }

  else
  {
    if (v22)
    {
      goto LABEL_12;
    }

    swift_unknownObjectRelease();
    v14(v21 + v1[5], v4);

    v23 = v21 + v1[12];
    v24 = swift_getEnumCaseMultiPayload();

    if (v24 == 1)
    {
      sub_2207A05F8(0);
      v27 = *(v26 + 48);
      v28 = sub_220887D5C();
      (*(*(v28 - 8) + 8))(v23 + v27, v28);
    }

    sub_2205D153C(0, v25);
  }

  v35 = *(v29 + 64);
  v36 = sub_22088774C();
  (*(*(v36 - 8) + 8))(v21 + v35, v36);
LABEL_12:

  v37 = sub_2208895AC();
  v38 = *(v37 - 8);
  if (!(*(v38 + 48))(v0 + v20, 1, v37))
  {
    (*(v38 + 8))(v0 + v20, v37);
  }

  (*(v42 + 8))(v0 + ((v20 + v43 + v41) & ~v41), v44);

  return swift_deallocObject();
}

void sub_2207A19B0(uint64_t a1)
{
  v3 = *(type metadata accessor for StocksAudioTrack(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_22088698C() - 8);
  v8 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  sub_2205715CC(0);
  v11 = (v8 + v9 + *(*(v10 - 8) + 80)) & ~*(*(v10 - 8) + 80);
  v12 = (*(*(v10 - 8) + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_2204FC5D8(0, &qword_27CF59B88, MEMORY[0x277D68648], MEMORY[0x277D83D88]);
  v14 = (v12 + *(*(v13 - 8) + 80) + 8) & ~*(*(v13 - 8) + 80);
  v15 = *(*(v13 - 8) + 64);
  v16 = *(sub_22088959C() - 8);
  sub_22079EDEC(a1, v1 + v4, *(v1 + v5), *(v1 + v6), v1 + v8, v1 + v11, *(v1 + v12), v1 + v14, v17, v1 + ((v14 + v15 + *(v16 + 80)) & ~*(v16 + 80)));
}

uint64_t sub_2207A1C18()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_2207A1C78(char a1)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  v3 = sub_22089139C();

  return v3;
}

uint64_t sub_2207A1DAC()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t sub_2207A1E68()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  v2 = sub_22089139C();

  return v2;
}

unint64_t sub_2207A1F68()
{
  result = qword_27CF59C18;
  if (!qword_27CF59C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59C18);
  }

  return result;
}

double sub_2207A1FBC(uint64_t a1, double *a2, char *a3)
{
  v4 = v3;
  v8 = *&a3[OBJC_IVAR____TtC8StocksUI28StockSearchSectionHeaderView_watchlistSwitcherButton];
  [v8 setFrame_];
  swift_beginAccess();
  v9 = __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  v11 = *(*v9 + 40);
  v10 = *(*v9 + 48);
  __swift_project_boxed_opaque_existential_1((*v9 + 16), v11);
  v12 = (*(*(v10 + 16) + 56))(v11);
  [a3 setBackgroundColor_];

  v13 = *(a1 + 24);
  if (v13)
  {
    v14 = *(a1 + 16);
    __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
    v15 = type metadata accessor for StockSearchSectionHeaderViewLayoutAttributes(0);
    sub_2207C9204(v8, v14, v13, *(a2 + *(v15 + 28)));
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();

  return result;
}

uint64_t sub_2207A213C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  sub_22046DA2C(v3 + 16, v13);
  v5 = v14;
  v6 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v7 = *(v6 + 8);
  v8 = *(v7 + 8);
  v11 = v5;
  v12 = v6;
  __swift_allocate_boxed_opaque_existential_1(&v10);
  v8(a2, v5, v7);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v3 + 16));
  sub_220458198(&v10, v3 + 16);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

double sub_2207A2224(uint64_t a1, void (*a2)(uint64_t *, char *, uint64_t), uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v5 = *(a4 + 16);
  if (v5)
  {
    v7 = (a4 + 32);
    while (1)
    {
      v8 = *v7++;
      v10 = v8;
      a2(&v11, &v10, a3);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return result;
      }
    }
  }

  return result;
}

void sub_2207A22A4(uint64_t a1, void (*a2)(uint64_t *, void *, __n128), uint64_t a3, uint64_t a4)
{
  v13 = a1;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 56); ; i += 32)
    {
      v8 = *i;
      v10 = *(i - 2);
      v9 = *(i - 1);
      v11[0] = *(i - 3);
      v11[1] = v10;
      v11[2] = v9;
      v12 = v8;

      (a2)(&v13, v11);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return;
      }
    }
  }
}

void sub_2207A235C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, CGFloat a4@<D0>)
{
  v5 = v4;
  v10 = MEMORY[0x277D83D88];
  sub_2207A60D0(0, &qword_281299370, MEMORY[0x277D69178], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v77 - v13;
  sub_2207A60D0(0, &qword_2812994E0, MEMORY[0x277CC9260], v10);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v77 - v17;
  v19 = type metadata accessor for QuoteDetailViewModel(0);
  sub_2207A5FCC(a1 + *(v19 + 20), v14);
  v20 = sub_2208855EC();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v14, 1, v20) == 1)
  {
    sub_2207A6060(v14, &qword_281299370, MEMORY[0x277D69178]);
    v22 = sub_220884E9C();
    (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
LABEL_4:
    sub_2207A6060(v18, &qword_2812994E0, MEMORY[0x277CC9260]);
    v24 = 1;
    LOBYTE(v84) = 1;
    v25 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v30 = 0uLL;
    goto LABEL_9;
  }

  sub_22088550C();
  (*(v21 + 8))(v14, v20);
  v23 = sub_220884E9C();
  if ((*(*(v23 - 8) + 48))(v18, 1, v23) == 1)
  {
    goto LABEL_4;
  }

  sub_2207A6060(v18, &qword_2812994E0, MEMORY[0x277CC9260]);
  sub_22088C31C();
  v32 = v31;
  sub_22088C22C();
  sub_220891A6C();
  v34 = v32 - v33;
  v81 = a2;
  sub_22088C20C();
  sub_220891A6C();
  v36 = v34 - v35;
  v37 = __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  v38 = (a1 + *(v19 + 24));
  v39 = v38[1];
  *&v83 = *v38;
  size.width = v39;
  v40 = *v37;
  sub_2207A60D0(0, &qword_28127DE80, sub_2204A5D84, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899920;
  v42 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v43 = sub_22044D56C(0, &qword_28127E570, 0x277D74300);
  v44 = v42;
  v45 = sub_220891F2C();
  v46 = MEMORY[0x277D740C0];
  *(inited + 40) = v45;
  v47 = *v46;
  *(inited + 64) = v43;
  *(inited + 72) = v47;
  v49 = v40[5];
  v48 = v40[6];
  __swift_project_boxed_opaque_existential_1(v40 + 2, v49);
  v50 = *(v48 + 16);
  v51 = *(v50 + 128);
  v52 = v47;
  v53 = v51(v49, v50);
  *(inited + 104) = sub_22044D56C(0, &qword_28127E530, 0x277D75348);
  *(inited + 80) = v53;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84(0);
  swift_arrayDestroy();
  v54 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v55 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v56 = sub_22089125C();

  v57 = [v54 initWithString:v55 attributes:v56];

  [v57 boundingRectWithSize:1 options:0 context:{v36, 1.79769313e308}];
  x = v86.origin.x;
  y = v86.origin.y;
  width = v86.size.width;
  height = v86.size.height;
  v62 = CGRectGetWidth(v86);
  v63 = *(v38 + 2);
  if (v63)
  {
    [v63 size];
  }

  else
  {
    v64 = 0.0;
  }

  v65 = v62 + v64;
  v87.origin.x = x;
  v87.origin.y = y;
  v87.size.width = width;
  v87.size.height = height;
  v88.size.height = CGRectGetHeight(v87);
  v88.origin.x = 0.0;
  v88.origin.y = 0.0;
  v88.size.width = v65;
  v89 = CGRectIntegral(v88);
  v66 = v89.origin.x;
  v67 = v89.origin.y;
  v68 = v89.size.width;
  v69 = v89.size.height;
  v70 = v81;
  sub_22088C20C();
  v72 = v71;
  v90.origin.x = v66;
  v90.origin.y = v67;
  v90.size.width = v68;
  v90.size.height = v69;
  v91.size.height = CGRectGetHeight(v90);
  v91.origin.x = v72;
  v91.origin.y = a4;
  v91.size.width = v36;
  v92 = CGRectIntegral(v91);
  origin = v92.origin;
  v80 = *&v92.origin.y;
  size = v92.size;
  v83 = *&v92.size.height;
  MEMORY[0x28223BE20](v73, v74);
  *(&v77 - 4) = v66;
  *(&v77 - 3) = v67;
  *(&v77 - 2) = v68;
  *(&v77 - 1) = v69;
  type metadata accessor for CGRect(0);
  sub_22088C18C();

  v78 = v84;
  v77 = v85;
  v75 = type metadata accessor for QuoteDetailViewLayoutOptions(0);
  v26 = v77;
  *&v28 = size.width;
  *&v27 = origin.x;
  v24 = 0;
  v76 = (v70 + *(v75 + 28));
  v29 = *v76;
  v30 = v76[1];
  LOBYTE(v84) = 0;
  *(&v27 + 1) = v80;
  *(&v28 + 1) = v83;
  v25 = v78;
LABEL_9:
  *a3 = v25;
  *(a3 + 16) = v26;
  *(a3 + 32) = v27;
  *(a3 + 48) = v28;
  *(a3 + 64) = v29;
  *(a3 + 80) = v30;
  *(a3 + 96) = v24;
}

void sub_2207A2A70(CGRect *a1@<X8>)
{
  v6 = sub_22088ABEC();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v11, *MEMORY[0x277D6D320], v6, v9);
  sub_22088ABDC();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  (*(v7 + 8))(v11, v6);
  v21.origin.x = v13;
  v21.origin.y = v15;
  v21.size.width = v17;
  v21.size.height = v19;
  *a1 = CGRectIntegral(v21);
}

void sub_2207A2BC4(uint64_t *a1, unsigned __int8 *a2, double a3, double a4, uint64_t a5, void *a6)
{
  v8 = *a2;
  v36 = *a2;
  v9 = __swift_project_boxed_opaque_existential_1(a6, a6[3]);
  sub_220635404(v8);

  v10 = *v9;
  sub_2207A60D0(0, &qword_28127DE80, sub_2204A5D84, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899920;
  v12 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v13 = sub_22044D56C(0, &qword_28127E570, 0x277D74300);
  v14 = v12;
  v15 = sub_220891F2C();
  v16 = MEMORY[0x277D740C0];
  *(inited + 40) = v15;
  v17 = *v16;
  *(inited + 64) = v13;
  *(inited + 72) = v17;
  v19 = v10[5];
  v18 = v10[6];
  __swift_project_boxed_opaque_existential_1(v10 + 2, v19);
  v20 = *(v18 + 16);
  v21 = *(v20 + 216);
  v22 = v17;
  v23 = v21(v19, v20);
  *(inited + 104) = sub_22044D56C(0, &qword_28127E530, 0x277D75348);
  *(inited + 80) = v23;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84(0);
  swift_arrayDestroy();
  v24 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v25 = sub_22089132C();

  type metadata accessor for Key(0);
  sub_2204A63B8();
  v26 = sub_22089125C();

  v27 = [v24 initWithString:v25 attributes:v26];

  [v27 boundingRectWithSize:0 options:0 context:{a3, a4}];
  x = v38.origin.x;
  y = v38.origin.y;
  width = v38.size.width;
  height = v38.size.height;
  v32 = ceil(CGRectGetWidth(v38));
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  v33 = ceil(CGRectGetHeight(v39));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *a1;
  sub_2207CF3D8(v27, v36, isUniquelyReferenced_nonNull_native, v32, v33);
  *a1 = v37;
}

uint64_t sub_2207A2ECC@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X3>, __int128 *a5@<X4>, int a6@<W5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>, double a13@<D5>, double a14@<D6>, double a15@<D7>, double a16, uint64_t a17, double a18, double a19, uint64_t a20, double a21)
{
  v91 = a13;
  v90 = a12;
  v89 = a11;
  v88 = a10;
  v87 = a9;
  v86 = a8;
  v28 = a20;
  v27 = a21;
  v29 = a17;
  v30 = a5[5];
  v100 = a5[4];
  v101 = v30;
  v102 = *(a5 + 96);
  v31 = a5[1];
  v96 = *a5;
  v97 = v31;
  v32 = a5[3];
  v98 = a5[2];
  v99 = v32;
  v93 = sub_22088ABEC();
  v82 = *(v93 - 8);
  MEMORY[0x28223BE20](v93, v33);
  v35 = &v73 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2208852DC();
  v85 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v37);
  v83 = &v73 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);

  v84 = sub_2207A61FC(v39, a1);

  v41 = sub_2207A61FC(v40, a1);

  v94 = a1;

  v42 = *a4;
  v43 = *(*a4 + 16);
  v44 = MEMORY[0x277D84F90];
  if (v43)
  {
    v74 = v41;
    v75 = v36;
    v76 = a15;
    v77 = a6;
    v78 = a17;
    v79 = a20;
    v80 = a21;
    v81 = a7;
    v95 = MEMORY[0x277D84F90];

    sub_22070BD84(0, v43, 0);
    v44 = v95;
    v92 = *MEMORY[0x277D6D320];
    v45 = v82 + 104;
    v46 = *(v82 + 104);
    v47 = (v82 + 8);
    v82 = v42;
    v48 = v42 + 56;
    do
    {
      v49 = v93;
      v50 = v45;
      v46(v35, v92, v93);
      sub_22088ABDC();
      v52 = v51;
      v54 = v53;
      v56 = v55;
      v58 = v57;
      (*v47)(v35, v49);
      v95 = v44;
      v60 = *(v44 + 16);
      v59 = *(v44 + 24);
      if (v60 >= v59 >> 1)
      {
        sub_22070BD84((v59 > 1), v60 + 1, 1);
        v44 = v95;
      }

      *(v44 + 16) = v60 + 1;
      v61 = (v44 + 32 * v60);
      v61[4] = v52;
      v61[5] = v54;
      v61[6] = v56;
      v61[7] = v58;
      v48 += 32;
      --v43;
      v45 = v50;
    }

    while (v43);

    a7 = v81;
    v27 = v80;
    v28 = v79;
    v29 = v78;
    LOBYTE(a6) = v77;
    a15 = v76;
    v36 = v75;
    v41 = v74;
  }

  v62 = v83;
  sub_22088528C();
  v63 = sub_2208851AC();
  result = (*(v85 + 8))(v62, v36);
  v65 = -a19;
  v66 = v87;
  *a7 = v86;
  *(a7 + 8) = v66;
  if (v63)
  {
    v65 = a16 - a14 + v27;
  }

  v67 = 0.0;
  if ((v63 & 1) == 0)
  {
    v67 = a18;
  }

  v68 = v89;
  *(a7 + 16) = v88;
  *(a7 + 24) = v68;
  v69 = v91;
  *(a7 + 32) = v90;
  *(a7 + 40) = v69;
  *(a7 + 48) = a14;
  *(a7 + 56) = a15;
  *(a7 + 64) = 1;
  *(a7 + 72) = v84;
  *(a7 + 80) = v41;
  *(a7 + 88) = v44;
  v70 = v101;
  *(a7 + 160) = v100;
  *(a7 + 176) = v70;
  *(a7 + 192) = v102;
  v71 = v97;
  *(a7 + 96) = v96;
  *(a7 + 112) = v71;
  v72 = v99;
  *(a7 + 128) = v98;
  *(a7 + 144) = v72;
  *(a7 + 200) = a16;
  *(a7 + 208) = v29;
  *(a7 + 216) = a18;
  *(a7 + 224) = a19;
  *(a7 + 232) = v28;
  *(a7 + 240) = v27;
  *(a7 + 248) = v65;
  *(a7 + 256) = v67;
  *(a7 + 264) = a6 & 1;
  return result;
}

void sub_2207A33DC(uint64_t *a1, unsigned __int8 *a2, double a3, double a4, uint64_t a5, void *a6)
{
  v8 = *a2;
  v36 = *a2;
  v9 = __swift_project_boxed_opaque_existential_1(a6, a6[3]);
  sub_220635F94(v8, 0);
  v10 = *v9;
  sub_2207A60D0(0, &qword_28127DE80, sub_2204A5D84, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899920;
  v12 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v13 = sub_22044D56C(0, &qword_28127E570, 0x277D74300);
  v14 = v12;
  v15 = sub_220891F3C();
  v16 = MEMORY[0x277D740C0];
  *(inited + 40) = v15;
  v17 = *v16;
  *(inited + 64) = v13;
  *(inited + 72) = v17;
  v19 = v10[5];
  v18 = v10[6];
  __swift_project_boxed_opaque_existential_1(v10 + 2, v19);
  v20 = *(v18 + 16);
  v21 = *(v20 + 40);
  v22 = v17;
  v23 = v21(v19, v20);
  *(inited + 104) = sub_22044D56C(0, &qword_28127E530, 0x277D75348);
  *(inited + 80) = v23;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84(0);
  swift_arrayDestroy();
  v24 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v25 = sub_22089132C();

  type metadata accessor for Key(0);
  sub_2204A63B8();
  v26 = sub_22089125C();

  v27 = [v24 initWithString:v25 attributes:v26];

  [v27 boundingRectWithSize:0 options:0 context:{a3, a4}];
  x = v38.origin.x;
  y = v38.origin.y;
  width = v38.size.width;
  height = v38.size.height;
  v32 = ceil(CGRectGetWidth(v38));
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  v33 = ceil(CGRectGetHeight(v39));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *a1;
  sub_2207CF3D8(v27, v36, isUniquelyReferenced_nonNull_native, v32, v33);
  *a1 = v37;
}

uint64_t sub_2207A36E0@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X3>, __int128 *a5@<X4>, int a6@<W5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>, double a13@<D5>, double a14@<D6>, double a15@<D7>, uint64_t a16, uint64_t a17, double a18, double a19, uint64_t a20, uint64_t a21)
{
  v92 = a13;
  v91 = a12;
  v90 = a11;
  v89 = a10;
  v88 = a9;
  v87 = a8;
  v28 = a20;
  v27 = a21;
  v30 = a16;
  v29 = a17;
  v31 = a5[5];
  v101 = a5[4];
  v102 = v31;
  v103 = *(a5 + 96);
  v32 = a5[1];
  v97 = *a5;
  v98 = v32;
  v33 = a5[3];
  v99 = a5[2];
  v100 = v33;
  v94 = sub_22088ABEC();
  v83 = *(v94 - 8);
  MEMORY[0x28223BE20](v94, v34);
  v36 = &v74 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_2208852DC();
  v86 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v38);
  v84 = &v74 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);

  v85 = sub_2207A61FC(v40, a1);

  v42 = sub_2207A61FC(v41, a1);

  v95 = a1;

  v43 = *a4;
  v44 = *(*a4 + 16);
  v45 = MEMORY[0x277D84F90];
  if (v44)
  {
    v75 = v42;
    v76 = v37;
    v77 = a14;
    v78 = a6;
    v79 = a15;
    v80 = a16;
    v81 = a17;
    v82 = a7;
    v96 = MEMORY[0x277D84F90];

    sub_22070BD84(0, v44, 0);
    v45 = v96;
    v93 = *MEMORY[0x277D6D320];
    v46 = v83 + 104;
    v47 = *(v83 + 104);
    v48 = (v83 + 8);
    v83 = v43;
    v49 = v43 + 56;
    do
    {
      v50 = v94;
      v51 = v46;
      v47(v36, v93, v94);
      sub_22088ABDC();
      v53 = v52;
      v55 = v54;
      v57 = v56;
      v59 = v58;
      (*v48)(v36, v50);
      v96 = v45;
      v61 = *(v45 + 16);
      v60 = *(v45 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_22070BD84((v60 > 1), v61 + 1, 1);
        v45 = v96;
      }

      *(v45 + 16) = v61 + 1;
      v62 = (v45 + 32 * v61);
      v62[4] = v53;
      v62[5] = v55;
      v62[6] = v57;
      v62[7] = v59;
      v49 += 32;
      --v44;
      v46 = v51;
    }

    while (v44);

    a7 = v82;
    v27 = a21;
    v28 = a20;
    v29 = v81;
    v30 = v80;
    a15 = v79;
    LOBYTE(a6) = v78;
    a14 = v77;
    v37 = v76;
    v42 = v75;
  }

  v63 = v84;
  sub_22088528C();
  v64 = sub_2208851AC();
  result = (*(v86 + 8))(v63, v37);
  v66 = -a19;
  v67 = 0.0;
  v68 = v88;
  *a7 = v87;
  *(a7 + 8) = v68;
  if (v64)
  {
    v66 = 0.0;
  }

  else
  {
    v67 = a18;
  }

  v69 = v90;
  *(a7 + 16) = v89;
  *(a7 + 24) = v69;
  v70 = v92;
  *(a7 + 32) = v91;
  *(a7 + 40) = v70;
  *(a7 + 48) = a14;
  *(a7 + 56) = a15;
  *(a7 + 64) = 0;
  *(a7 + 72) = v85;
  *(a7 + 80) = v42;
  *(a7 + 88) = v45;
  v71 = v102;
  *(a7 + 160) = v101;
  *(a7 + 176) = v71;
  *(a7 + 192) = v103;
  v72 = v98;
  *(a7 + 96) = v97;
  *(a7 + 112) = v72;
  v73 = v100;
  *(a7 + 128) = v99;
  *(a7 + 144) = v73;
  *(a7 + 200) = v30;
  *(a7 + 208) = v29;
  *(a7 + 216) = a18;
  *(a7 + 224) = a19;
  *(a7 + 232) = v28;
  *(a7 + 240) = v27;
  *(a7 + 248) = v66;
  *(a7 + 256) = v67;
  *(a7 + 264) = a6 & 1;
  return result;
}

uint64_t sub_2207A3BF4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

void sub_2207A3C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10)
{
  v105 = type metadata accessor for QuoteDetailViewStyler();
  v106 = &off_283425760;
  v104[0] = a4;

  sub_22088C1CC();
  sub_22088C1CC();
  sub_22088C31C();
  v18 = v17;
  sub_22088C22C();
  sub_220891A6C();
  v20 = v19;
  sub_22088C31C();
  sub_220891A6C();
  v22 = v21;
  sub_22088C31C();
  v24 = v23;
  sub_22088C22C();
  sub_220891A6C();
  v26 = v24 - v25;
  v79 = a2;
  sub_22088C31C();
  v82 = a7;
  v98 = a7;
  v99 = v104;
  v100 = a1;
  v101 = v26;
  v102 = 0x7FEFFFFFFFFFFFFFLL;
  sub_2207A2224(MEMORY[0x277D84F98], sub_2207A64B4, v97, a5);
  v28 = v27;
  v29 = sub_2205CE738(MEMORY[0x277D84F90]);
  v89 = a5;
  v30 = *(a5 + 16);
  if (!v30)
  {
LABEL_14:
    __swift_destroy_boxed_opaque_existential_1(v104);
    return;
  }

  v83 = a6;
  v86 = (v18 - v20 - v22 - a9) / a6;
  v85 = *MEMORY[0x277D740A8];
  v84 = *MEMORY[0x277D740C0];
  v31 = 32;
  v93 = v26;
  v87 = v28;
  v78 = a9;
  while (1)
  {
    if (!*(v28 + 16))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v34 = *(v89 + v31);
    v35 = sub_2205CDFF4(*(v89 + v31));
    if ((v36 & 1) == 0)
    {
      goto LABEL_16;
    }

    v95 = v30;
    v96 = v29;
    v37 = v86 - *(*(v28 + 56) + 24 * v35) - a10;
    sub_220635404(v34);
    v38 = *__swift_project_boxed_opaque_existential_1(v104, v105);
    sub_2207A60D0(0, &qword_28127DE80, sub_2204A5D84, MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_220899920;
    *(inited + 32) = v85;
    v94 = v34;
    v40 = sub_22044D56C(0, &qword_28127E570, 0x277D74300);
    v92 = v85;
    *(inited + 40) = sub_220891F2C();
    *(inited + 64) = v40;
    *(inited + 72) = v84;
    v42 = v38[5];
    v41 = v38[6];
    __swift_project_boxed_opaque_existential_1(v38 + 2, v42);
    v43 = *(v41 + 16);
    v44 = *(v43 + 216);
    v91 = v84;
    v45 = v44(v42, v43);
    v90 = sub_22044D56C(0, &qword_28127E530, 0x277D75348);
    *(inited + 104) = v90;
    *(inited + 80) = v45;
    sub_2204A5EAC(inited);
    swift_setDeallocating();
    sub_2204A5D84(0);
    swift_arrayDestroy();
    v46 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v47 = sub_22089132C();
    type metadata accessor for Key(0);
    sub_2204A63B8();
    v48 = sub_22089125C();

    v49 = [v46 initWithString:v47 attributes:v48];

    [v49 boundingRectWithSize:0 options:0 context:{v26, 1.79769313e308}];
    x = v107.origin.x;
    y = v107.origin.y;
    width = v107.size.width;
    height = v107.size.height;
    v54 = ceil(CGRectGetWidth(v107));
    v108.origin.x = x;
    v108.origin.y = y;
    v108.size.width = width;
    v108.size.height = height;
    v55 = CGRectGetHeight(v108);
    if (v54 >= v37)
    {
      break;
    }

    v32 = v55;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v103 = v96;
    sub_2207CF3D8(v49, v94, isUniquelyReferenced_nonNull_native, v54, ceil(v32));
LABEL_4:
    v29 = v103;
    v28 = v87;
    ++v31;
    v30 = v95 - 1;
    v26 = v93;
    if (v95 == 1)
    {
      goto LABEL_14;
    }
  }

  v56 = *__swift_project_boxed_opaque_existential_1(v104, v105);
  v57 = swift_initStackObject();
  *(v57 + 16) = xmmword_220899920;
  *(v57 + 32) = v92;
  v58 = v92;
  *(v57 + 40) = sub_220891F2C();
  *(v57 + 64) = v40;
  *(v57 + 72) = v91;
  v59 = v56[5];
  v60 = v56[6];
  __swift_project_boxed_opaque_existential_1(v56 + 2, v59);
  v61 = *(v60 + 16);
  v62 = *(v61 + 216);
  v63 = v91;
  v64 = v62(v59, v61);
  *(v57 + 104) = v90;
  *(v57 + 80) = v64;
  sub_2204A5EAC(v57);
  swift_setDeallocating();
  swift_arrayDestroy();
  v65 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v66 = sub_22089132C();
  v67 = sub_22089125C();

  v68 = [v65 initWithString:v66 attributes:v67];

  [v68 boundingRectWithSize:0 options:0 context:{v93, 1.79769313e308}];
  v69 = v109.origin.x;
  v70 = v109.origin.y;
  v71 = v109.size.width;
  v72 = v109.size.height;
  v73 = ceil(CGRectGetWidth(v109));
  v110.origin.x = v69;
  v110.origin.y = v70;
  v110.size.width = v71;
  v110.size.height = v72;
  v74 = CGRectGetHeight(v110);
  if (v73 < v37 || v83 == 1)
  {
    v75 = ceil(v74);
    v76 = swift_isUniquelyReferenced_nonNull_native();
    v103 = v96;
    sub_2207CF3D8(v68, v94, v76, v73, v75);

    goto LABEL_4;
  }

  if (!__OFSUB__(v83, 1))
  {
    v77 = __swift_project_boxed_opaque_existential_1(v104, v105);
    sub_2207A3C50(a1, v79, a3, *v77, v89, v83 - 1, v82, a8, v78, a10);

    goto LABEL_14;
  }

LABEL_17:
  __break(1u);
}

void sub_2207A43B0(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v188[3] = a7;
  v188[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v188);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_1, a4, a7);
  sub_22088C31C();
  v18 = v17;
  sub_22088C22C();
  sub_220891A6C();
  v20 = v19;
  sub_22088C31C();
  v22 = v21;
  sub_22088C22C();
  sub_220891A6C();
  v24 = v22 - v23;
  v167 = a2;
  sub_22088C31C();
  v183[2] = a6;
  v183[3] = v188;
  v183[4] = a1;
  *&v183[5] = v24;
  v183[6] = 0x7FEFFFFFFFFFFFFFLL;
  v25 = MEMORY[0x277D84F98];
  sub_2207A2224(MEMORY[0x277D84F98], sub_2207A4F64, v183, a5);
  v179 = v26;
  v161 = a1;
  v162 = a6;
  v182[2] = a6;
  v182[3] = v188;
  v182[4] = a1;
  *&v182[5] = v24;
  v182[6] = 0x7FEFFFFFFFFFFFFFLL;
  sub_2207A2224(v25, sub_2207A6588, v182, a5);
  v178 = v27;
  v28 = a5[2];
  v171 = a3;
  if (v28)
  {
    v29 = (a5 + 4);
    v30 = 0.0;
    v31 = (a5 + 4);
    v32 = a5[2];
    do
    {
      if (!*(v179 + 16))
      {
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

      v34 = *v31++;
      v33 = v34;
      v35 = sub_2205CDFF4(v34);
      if ((v36 & 1) == 0)
      {
        goto LABEL_85;
      }

      if (!*(v178 + 16))
      {
        goto LABEL_86;
      }

      v37 = *(*(v179 + 56) + 24 * v35);
      v38 = sub_2205CDFF4(v33);
      if ((v39 & 1) == 0)
      {
        goto LABEL_87;
      }

      v40 = *(v178 + 56);
      if (v30 <= v37 + *(v40 + 24 * v38))
      {
        v30 = v37 + *(v40 + 24 * v38);
      }

      --v32;
    }

    while (v32);
    v177 = 0.0;
    v41 = v28;
    while (*(v179 + 16))
    {
      v43 = *v29++;
      v42 = v43;
      v44 = sub_2205CDFF4(v43);
      if ((v45 & 1) == 0)
      {
        goto LABEL_89;
      }

      if (!*(v178 + 16))
      {
        goto LABEL_90;
      }

      v46 = *(*(v179 + 56) + 24 * v44 + 8);
      v47 = sub_2205CDFF4(v42);
      if ((v48 & 1) == 0)
      {
        goto LABEL_91;
      }

      v49 = *(*(v178 + 56) + 24 * v47 + 8);
      if (v46 > v49)
      {
        v49 = v46;
      }

      v50 = v177;
      if (v177 <= v49)
      {
        v50 = v49;
      }

      v177 = v50;
      if (!--v41)
      {
        v25 = MEMORY[0x277D84F98];
        v51 = *a3;
        if (!*a3)
        {
          goto LABEL_57;
        }

        goto LABEL_21;
      }
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v30 = 0.0;
  v177 = 0.0;
  v51 = *a3;
  if (!*a3)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

LABEL_21:
  v52 = v18 - v20;

  sub_2207A5C10(0, v28, v51, a5, a3);
  v54 = v53;

  v55 = a3[3];
  if (a3[2] > v30 + a3[4])
  {
    v56 = a3[2];
  }

  else
  {
    v56 = v30 + a3[4];
  }

  sub_22088C1CC();
  v58 = v57;
  sub_22088C1CC();
  v59 = *(v54 + 16);
  v61 = (v59 - 1);
  v62 = v52 - v58 - v60 - (v56 * v59 + v55 * v61);
  if (v62 <= 0.0)
  {
    v63 = v56;
  }

  else
  {
    v63 = v56 + v62 * 0.666666667 / v59;
    v55 = v55 + v62 * 0.333333333 / v61;
  }

  v64 = v179;
  v187 = v25;
  v186 = v25;
  v18 = 0.0;
  v170 = v63;
  if (!v59)
  {
LABEL_58:
    v66 = MEMORY[0x277D84F90];
    v132 = 15.0;
    v69 = 0.0;
LABEL_60:

    v185[34] = v66;
    v133 = 1 << *(v25 + 32);
    v134 = -1;
    if (v133 < 64)
    {
      v134 = ~(-1 << v133);
    }

    v135 = v134 & *(v25 + 64);
    v136 = (v133 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v137 = 0;
    while (v135)
    {
      v138 = v137;
LABEL_68:
      v139 = __clz(__rbit64(v135));
      v135 &= v135 - 1;
      MaxY = CGRectGetMaxY(*(*(v25 + 56) + 48 * (v139 | (v138 << 6))));
      if (v18 <= MaxY)
      {
        v18 = MaxY;
      }
    }

    while (1)
    {
      v138 = v137 + 1;
      if (__OFADD__(v137, 1))
      {
        break;
      }

      if (v138 >= v136)
      {

        sub_22088C31C();
        v141 = v18;
        v143 = v142;
        sub_22088C22C();
        sub_220891A6C();
        v213.size.width = v143 - v144;
        v213.size.height = v141 + 15.0 + 15.0;
        v213.origin.x = 0.0;
        v213.origin.y = 0.0;
        v214 = CGRectIntegral(v213);
        x = v214.origin.x;
        y = v214.origin.y;
        width = v214.size.width;
        height = v214.size.height;
        v149 = type metadata accessor for QuoteDetailViewLayoutOptions(0);
        sub_2207A235C(v161, v167, v189, v69 + v132 + *(v167 + *(v149 + 24)));
        sub_22088C31C();
        v151 = v150;
        sub_22088C22C();
        sub_220891A6C();
        v153 = v152;
        sub_22088C31C();
        v154 = x;
        v155 = y;
        v156 = width;
        v157 = height;
        if ((v190 & 1) == 0)
        {
          v157 = *&v189[7];
          v156 = *&v189[6];
          v155 = *&v189[5];
          v154 = *&v189[4];
        }

        v215.size.height = CGRectGetMaxY(*&v154);
        v158 = v151 - v153;
        v215.origin.x = 0.0;
        v215.origin.y = 0.0;
        v215.size.width = v158;
        CGRectIntegral(v215);
        *(v162 + 56) = v158;
        *(v162 + 64) = 0;
        MEMORY[0x28223BE20](v159, v160);
        sub_22088C18C();
        memcpy(v185, v184, 0x109uLL);

        __swift_destroy_boxed_opaque_existential_1(v188);
        memcpy(a9, v185, 0x109uLL);
        return;
      }

      v135 = *(v25 + 64 + 8 * v138);
      ++v137;
      if (v135)
      {
        v137 = v138;
        goto LABEL_68;
      }
    }

LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v65 = 0;
  v169 = v54 + 32;
  v164 = v55 * 0.5;
  v168 = v55 + v63;
  v66 = MEMORY[0x277D84F90];
  v67 = 0.0;
  v68 = 0.0;
  v181 = 0.0;
  v69 = 0.0;
  v165 = v59;
  v166 = v54;
  while (v65 < *(v54 + 16))
  {
    v70 = v63;
    v176 = v65;
    v71 = *(v169 + 8 * v65);
    v72 = *(v71 + 16);

    v175 = v72;
    if (v72)
    {
      v73 = 0;
      v174 = v71 + 32;
      v74 = 0.0;
      v75 = v70;
      v173 = v67;
      v172 = v71;
      while (v73 < *(v71 + 16))
      {
        v76 = *(v174 + v73);
        v77 = v67;
        v78 = v177;
        v201 = CGRectIntegral(*(&v74 - 1));
        if (!*(v64 + 16))
        {
          goto LABEL_76;
        }

        v79 = v201.origin.x;
        v80 = v201.origin.y;
        v81 = v201.size.width;
        v82 = v201.size.height;
        v83 = sub_2205CDFF4(v76);
        if ((v84 & 1) == 0)
        {
          goto LABEL_77;
        }

        v180 = v68;
        v85 = *(v64 + 56) + 24 * v83;
        v87 = *v85;
        v86 = *(v85 + 8);
        v88 = *(v85 + 16);
        v202.origin.x = v79;
        v202.origin.y = v80;
        v202.size.width = v81;
        v202.size.height = v82;
        MinX = CGRectGetMinX(v202);
        v203.origin.x = v79;
        v203.origin.y = v80;
        v203.size.width = v81;
        v203.size.height = v82;
        v204.origin.y = CGRectGetMaxY(v203) - v86;
        v204.origin.x = MinX;
        v204.size.width = v87;
        v204.size.height = v86;
        v205 = CGRectIntegral(v204);
        *&v196 = v205.origin.x;
        *(&v196 + 1) = *&v205.origin.y;
        v197 = v205.size.width;
        v198 = v205.size.height;
        v199 = v88;
        v200 = v176;
        v90 = v88;
        v91 = v187;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v185[0] = v91;
        sub_2207CF268(&v196, v76, isUniquelyReferenced_nonNull_native);
        v93 = v185[0];
        v187 = v185[0];
        if (!*(v178 + 16))
        {
          goto LABEL_78;
        }

        v94 = sub_2205CDFF4(v76);
        if ((v95 & 1) == 0)
        {
          goto LABEL_79;
        }

        v96 = *(v178 + 56) + 24 * v94;
        v97 = *v96;
        v98 = *(v96 + 8);
        v99 = *(v96 + 16);
        v206.origin.x = v79;
        v206.origin.y = v80;
        v206.size.width = v81;
        v206.size.height = v82;
        v100 = CGRectGetMaxX(v206) - v97;
        v207.origin.x = v79;
        v207.origin.y = v80;
        v207.size.width = v81;
        v207.size.height = v82;
        v208.origin.y = CGRectGetMaxY(v207) - v98;
        v208.origin.x = v100;
        v208.size.width = v97;
        v208.size.height = v98;
        v209 = CGRectIntegral(v208);
        *&v191 = v209.origin.x;
        *(&v191 + 1) = *&v209.origin.y;
        v192 = v209.size.width;
        v193 = v209.size.height;
        v194 = v99;
        v195 = v176;
        v101 = v99;
        v102 = v186;
        v103 = swift_isUniquelyReferenced_nonNull_native();
        v185[0] = v102;
        sub_2207CF268(&v191, v76, v103);
        v104 = v185[0];
        v186 = v185[0];
        if (!*(v93 + 16))
        {
          goto LABEL_80;
        }

        v105 = sub_2205CDFF4(v76);
        if ((v106 & 1) == 0)
        {
          goto LABEL_81;
        }

        MinY = CGRectGetMinY(*(*(v93 + 56) + 48 * v105));
        sub_22044D56C(0, &qword_28127E570, 0x277D74300);
        v108 = sub_220891F2C();
        [v108 ascender];
        v110 = v109;

        v111 = sub_220891F2C();
        [v111 capHeight];
        v113 = v112;

        v114 = MinY + v110 - v113;
        v68 = v180;
        if (v114 < v180)
        {
          v68 = v114;
        }

        if (!*(v93 + 16))
        {
          goto LABEL_82;
        }

        v115 = sub_2205CDFF4(v76);
        if ((v116 & 1) == 0)
        {
          goto LABEL_83;
        }

        ++v73;
        v117 = CGRectGetMaxY(*(*(v93 + 56) + 48 * v115));
        v118 = sub_220891F2C();
        [v118 descender];
        v120 = v119;

        v121 = v181;
        if (v181 <= v117 + v120)
        {
          v121 = v117 + v120;
        }

        v181 = v121;
        v210.origin.x = v79;
        v210.origin.y = v80;
        v210.size.width = v81;
        v210.size.height = v82;
        v122 = CGRectGetMaxY(v210);

        v71 = v172;
        v74 = v122 + v171[1];
        v75 = v170;
        v64 = v179;
        v67 = v173;
        if (v175 == v73)
        {
          v70 = v170;
          v69 = v68;
          v18 = v181;
          v59 = v165;
          v54 = v166;
          v25 = v104;
          goto LABEL_49;
        }
      }

      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

LABEL_49:

    if (v67 <= 0.0)
    {
      v63 = v70;
    }

    else
    {
      sub_22088C1FC();
      v211.size.height = v181 - v68;
      v211.size.width = 1.0 / v123;
      v211.origin.x = v67 - v164;
      v211.origin.y = v68;
      v212 = CGRectIntegral(v211);
      v124 = v212.origin.x;
      v125 = v212.origin.y;
      v126 = v212.size.width;
      v127 = v212.size.height;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = sub_220587A04(0, *(v66 + 2) + 1, 1, v66);
      }

      v129 = *(v66 + 2);
      v128 = *(v66 + 3);
      if (v129 >= v128 >> 1)
      {
        v131 = sub_220587A04((v128 > 1), v129 + 1, 1, v66);
        v63 = v70;
        v66 = v131;
      }

      else
      {
        v63 = v70;
      }

      *(v66 + 2) = v129 + 1;
      v130 = &v66[32 * v129];
      v130[4] = v124;
      v130[5] = v125;
      v130[6] = v126;
      v130[7] = v127;
      v69 = v68;
      v18 = v181;
    }

    v65 = v176 + 1;
    v67 = v168 + v67;
    if (v176 + 1 == v59)
    {
      v132 = v18 + 15.0;
      v18 = 0.0;
      goto LABEL_60;
    }
  }

LABEL_93:
  __break(1u);
}