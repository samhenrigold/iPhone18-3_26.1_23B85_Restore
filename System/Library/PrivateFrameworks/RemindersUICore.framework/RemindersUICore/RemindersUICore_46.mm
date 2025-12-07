uint64_t sub_21D530D58(uint64_t a1, __int16 a2, __n128 a3)
{
  v5 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
  MEMORY[0x28223BE20](v5);
  v163 = &v151 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D998, &unk_21DC1D520);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v151 - v8;
  v10 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v164 = &v151 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v151 - v14;
  sub_21D0D3954(a1, v9, &qword_27CE5D998, &unk_21DC1D520);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_21D0CF7E0(v9, &qword_27CE5D998, &unk_21DC1D520);
LABEL_6:
    sub_21D52E74C();
    sub_21D5D3E3C();

    sub_21D52E7AC();
    sub_21D5D3E3C();

    sub_21D52E80C();
    sub_21D5D3E3C();
  }

  sub_21D539B30(v9, v15, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  if ((a2 & 0x2000) != 0 || (v16 = v164, sub_21D539D14(v15, v164, type metadata accessor for TTRReminderDetailViewModel.DueDateState), v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678, &unk_21DC16600), v18 = (*(*(v17 - 8) + 48))(v16, 1, v17), v19 = v165, v18 == 1))
  {
    sub_21D539CB4(v15, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
    goto LABEL_6;
  }

  v21 = v163;
  sub_21D539B30(v16, v163, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
  v22 = v21 + v5[8];
  v23 = *(v22 + 16);
  if (v23 == 2)
  {
    v24 = 0;
  }

  else
  {
    v24 = *v22;
  }

  if (v23 == 2)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(v22 + 8);
  }

  if (*(v21 + v5[9]) != 1)
  {
    sub_21D539CB4(v21, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
    sub_21D539CB4(v15, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
LABEL_57:
    sub_21D0CF7E0(v16 + *(v17 + 64), &unk_27CE628E0, &unk_21DC17980);
    goto LABEL_6;
  }

  v26 = *(v21 + v5[5]);
  if ((v23 & 1) == 0)
  {
LABEL_56:
    *&v210 = v24;
    *(&v210 + 1) = v25;
    LOBYTE(v211) = v23 & 1;
    sub_21D5337A0(&v210, v26);
    sub_21D539CB4(v21, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
    sub_21D539CB4(v15, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
    goto LABEL_57;
  }

  v161 = v25;
  v162 = v24;
  v27 = *(v21 + v5[10]);
  v158 = 1;
  v156 = v26;
  if (v27)
  {
    v160 = [objc_opt_self() ttr_systemRedColor];
  }

  else
  {
    v160 = 0;
  }

  sub_21D52E80C();

  v28 = *(*(v19 + 136) + 32);
  v29 = v162;
  sub_21D5C732C(v162, v161, 1);

  v30 = *(sub_21D52E7AC() + 32);

  v159 = v15;
  v157 = v23;
  v155 = v27;
  if (v29 < 0)
  {
    result = -v29;
    if (__OFSUB__(0, v29))
    {
      __break(1u);
      goto LABEL_59;
    }

    v31 = _s15RemindersUICore21TTRLocalizableStringsO14ReminderDetailO25earlyAlertBeforeCountText5count12intervalUnitSSSi_So015REMDueDateDeltaN0VtFZ_0(result, v161);
  }

  else
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v31 = sub_21DBF516C();
  }

  v153 = v32;
  v154 = v31;
  v33 = MEMORY[0x277D85000];
  v34 = v30 + *((*MEMORY[0x277D85000] & *v30) + 0x78);
  swift_beginAccess();
  v35 = *(v34 + 1);
  v202 = *v34;
  v203 = v35;
  v36 = *(v34 + 2);
  v37 = *(v34 + 3);
  v38 = *(v34 + 5);
  v206 = *(v34 + 4);
  v207 = v38;
  v204 = v36;
  v205 = v37;
  v39 = *(v34 + 6);
  v40 = *(v34 + 7);
  v41 = *(v34 + 9);
  v209[1] = *(v34 + 8);
  v209[2] = v41;
  v208 = v39;
  v209[0] = v40;
  v42 = *(v34 + 10);
  v43 = *(v34 + 11);
  v44 = *(v34 + 12);
  *&v209[6] = *(v34 + 26);
  v209[4] = v43;
  v209[5] = v44;
  v209[3] = v42;
  sub_21D313A94(&v202, v269);

  v269[4] = v206;
  v269[5] = v207;
  v269[0] = v202;
  v269[1] = v203;
  v269[2] = v204;
  v269[3] = v205;
  v274 = *(&v209[1] + 8);
  v273 = *(v209 + 8);
  v278 = *(&v209[5] + 8);
  v277 = *(&v209[4] + 8);
  v276 = *(&v209[3] + 8);
  v275 = *(&v209[2] + 8);
  v270 = v208;
  v271 = v154;
  v272 = v153;
  sub_21D5C62E8(v269);

  v45 = v165;
  v46 = *(*(v165 + 128) + 32);
  v47 = v46 + *((*v33 & *v46) + 0x78);
  swift_beginAccess();
  v48 = *(v47 + 1);
  v210 = *v47;
  v211 = v48;
  v49 = *(v47 + 2);
  v50 = *(v47 + 3);
  v51 = *(v47 + 5);
  v214 = *(v47 + 4);
  v215 = v51;
  v212 = v49;
  v213 = v50;
  v52 = *(v47 + 6);
  v53 = *(v47 + 7);
  v54 = *(v47 + 9);
  v218 = *(v47 + 8);
  v219 = v54;
  v216 = v52;
  v217 = v53;
  v55 = *(v47 + 10);
  v56 = *(v47 + 11);
  v57 = *(v47 + 12);
  v223 = *(v47 + 26);
  v221 = v56;
  v222 = v57;
  v220 = v55;
  v58 = *(&v217 + 1);
  v59 = v160;
  v154 = v160;
  v60 = v46;
  sub_21D313A94(&v210, v260);

  v268 = v223;
  v260[4] = v214;
  v260[5] = v215;
  v260[6] = v216;
  v260[0] = v210;
  v260[1] = v211;
  v260[2] = v212;
  v260[3] = v213;
  v263 = v218;
  v264 = v219;
  v266 = v221;
  v267 = v222;
  v265 = v220;
  v261 = v217;
  v262 = v59;
  sub_21D5C62E8(v260);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_21DC08D00;
  if ((v162 & 0x8000000000000000) == 0)
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v62 = sub_21DBF516C();
    goto LABEL_32;
  }

  result = -v162;
  if (!__OFSUB__(0, v162))
  {
    v62 = _s15RemindersUICore21TTRLocalizableStringsO14ReminderDetailO25earlyAlertBeforeCountText5count12intervalUnitSSSi_So015REMDueDateDeltaN0VtFZ_0(result, v161);
LABEL_32:
    *(v61 + 32) = v62;
    *(v61 + 40) = v63;
    v152 = v17;
    if (v155)
    {
      if (qword_27CE57508 != -1)
      {
        swift_once();
      }

      v65 = qword_27CE67100;
      v64 = *algn_27CE67108;
      v66 = v61;
      v67 = *(v61 + 16);
      v68 = *(v61 + 24);
      sub_21DBF8E0C();
      if (v67 >= v68 >> 1)
      {
        v66 = sub_21D210A84((v68 > 1), v67 + 1, 1, v66);
      }

      v61 = v66;
      *(v66 + 2) = v67 + 1;
      v69 = &v66[16 * v67];
      *(v69 + 4) = v65;
      *(v69 + 5) = v64;
      v45 = v165;
      v70 = *(*(v165 + 128) + 32);
      v71 = v70 + *((*MEMORY[0x277D85000] & *v70) + 0x78);
      swift_beginAccess();
      v72 = *(v71 + 1);
      v235 = *v71;
      v236 = v72;
      v73 = *(v71 + 2);
      v74 = *(v71 + 3);
      v75 = *(v71 + 5);
      v239 = *(v71 + 4);
      v240 = v75;
      v237 = v73;
      v238 = v74;
      v76 = *(v71 + 6);
      v77 = *(v71 + 7);
      v78 = *(v71 + 9);
      v243 = *(v71 + 8);
      v244 = v78;
      v241 = v76;
      v242 = v77;
      v79 = *(v71 + 10);
      v80 = *(v71 + 11);
      v81 = *(v71 + 12);
      *&v245[3] = *(v71 + 26);
      v245[1] = v80;
      v245[2] = v81;
      v245[0] = v79;
      v82 = v70;
      sub_21D313A94(&v235, &v246);

      v256 = v245[0];
      v257 = v245[1];
      v258 = *&v245[2];
      v252 = v241;
      v253 = v242;
      v254 = v243;
      v255 = v244;
      v248 = v237;
      v249 = v238;
      v250 = v239;
      v251 = v240;
      v246 = v235;
      v247 = v236;
      v259 = xmmword_21DC1A0E0;
    }

    else
    {
      v83 = *(*(v45 + 128) + 32);
      v84 = v83 + *((*MEMORY[0x277D85000] & *v83) + 0x78);
      swift_beginAccess();
      v85 = *(v84 + 1);
      v235 = *v84;
      v236 = v85;
      v86 = *(v84 + 2);
      v87 = *(v84 + 3);
      v88 = *(v84 + 5);
      v239 = *(v84 + 4);
      v240 = v88;
      v237 = v86;
      v238 = v87;
      v89 = *(v84 + 6);
      v90 = *(v84 + 7);
      v91 = *(v84 + 9);
      v243 = *(v84 + 8);
      v244 = v91;
      v241 = v89;
      v242 = v90;
      v92 = *(v84 + 10);
      v93 = *(v84 + 11);
      v94 = *(v84 + 12);
      *&v245[3] = *(v84 + 26);
      v245[1] = v93;
      v245[2] = v94;
      v245[0] = v92;
      v82 = v83;
      sub_21D313A94(&v235, &v246);

      v256 = v245[0];
      v257 = v245[1];
      v252 = v241;
      v253 = v242;
      v254 = v243;
      v255 = v244;
      v248 = v237;
      v249 = v238;
      v250 = v239;
      v251 = v240;
      v246 = v235;
      v247 = v236;
      v258 = *&v245[2];
      v259 = 0uLL;
    }

    sub_21D5C62E8(&v246);

    v160 = v61;
    v95 = *(*(v45 + 128) + 32);
    *&v235 = v61;
    v96 = qword_280D1B938;
    v97 = v95;
    v21 = v163;
    if (v96 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
    sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83958]);
    v98 = sub_21DBFA07C();
    v100 = v99;

    v101 = v97 + *((*MEMORY[0x277D85000] & *v97) + 0x78);
    swift_beginAccess();
    v102 = *(v101 + 1);
    v191 = *v101;
    v192 = v102;
    v103 = *(v101 + 2);
    v104 = *(v101 + 3);
    v105 = *(v101 + 5);
    v195 = *(v101 + 4);
    v196 = v105;
    v193 = v103;
    v194 = v104;
    v106 = *(v101 + 6);
    v107 = *(v101 + 7);
    v108 = *(v101 + 9);
    v199 = *(v101 + 8);
    v200 = v108;
    v197 = v106;
    v198 = v107;
    v109 = *(v101 + 10);
    v110 = *(v101 + 11);
    v111 = *(v101 + 12);
    *&v201[3] = *(v101 + 26);
    v201[1] = v110;
    v201[2] = v111;
    v201[0] = v109;
    sub_21D313A94(&v191, &v235);

    v241 = v197;
    v242 = v198;
    v243 = v199;
    v237 = v193;
    v238 = v194;
    v239 = v195;
    v240 = v196;
    v235 = v191;
    v236 = v192;
    *(v245 + 8) = *(v201 + 8);
    *(&v245[1] + 8) = *(&v201[1] + 8);
    *(&v245[2] + 8) = *(&v201[2] + 8);
    *&v244 = v200;
    *(&v244 + 1) = v98;
    *&v245[0] = v100;
    sub_21D5C62E8(&v235);

    v112 = v165;
    v113 = *(v165 + 136);
    v114 = *(*(v165 + 128) + 32);
    swift_beginAccess();
    if (*(v113 + 49) == 1)
    {
      v115 = qword_27CE57240;
      v116 = v114;
      v17 = v152;
      if (v115 != -1)
      {
        swift_once();
      }

      v117 = &qword_27CE66C20;
    }

    else
    {
      v118 = qword_280D1AAE8;
      v119 = v114;
      v17 = v152;
      if (v118 != -1)
      {
        swift_once();
      }

      v117 = &qword_280D1AAF0;
    }

    v120 = v117[1];
    v160 = *v117;
    sub_21DBF8E0C();
    v121 = v114 + *((*MEMORY[0x277D85000] & *v114) + 0x78);
    swift_beginAccess();
    v122 = *(v121 + 1);
    v179 = *v121;
    v180 = v122;
    v123 = *(v121 + 2);
    v124 = *(v121 + 3);
    v125 = *(v121 + 5);
    v183 = *(v121 + 4);
    v184 = v125;
    v181 = v123;
    v182 = v124;
    v126 = *(v121 + 6);
    v127 = *(v121 + 7);
    v128 = *(v121 + 9);
    v187 = *(v121 + 8);
    v188 = v128;
    v185 = v126;
    v186 = v127;
    v129 = *(v121 + 10);
    v130 = *(v121 + 11);
    v131 = *(v121 + 12);
    *&v190[2] = *(v121 + 26);
    v190[0] = v130;
    v190[1] = v131;
    v189 = v129;
    sub_21D313A94(&v179, v229);

    v229[8] = v187;
    v229[9] = v188;
    v229[4] = v183;
    v229[5] = v184;
    v229[6] = v185;
    v229[7] = v186;
    v229[0] = v179;
    v229[1] = v180;
    v229[2] = v181;
    v229[3] = v182;
    v233 = *(v190 + 8);
    v234 = *(&v190[1] + 8);
    v230 = v189;
    v231 = v160;
    v232 = v120;
    sub_21D5C62E8(v229);

    v132 = *(v112 + 136);
    v133 = *(*(v112 + 128) + 32);
    swift_beginAccess();
    if (*(v132 + 49) == 1)
    {
      v134 = qword_27CE57278;
      v135 = v133;
      LOBYTE(v23) = v157;
      if (v134 != -1)
      {
        swift_once();
      }

      v136 = &qword_27CE66C70;
    }

    else
    {
      v137 = qword_280D1AA90;
      v138 = v133;
      LOBYTE(v23) = v157;
      if (v137 != -1)
      {
        swift_once();
      }

      v136 = &qword_280D1AA98;
    }

    v139 = v136[1];
    v160 = *v136;
    sub_21DBF8E0C();
    v140 = v133 + *((*MEMORY[0x277D85000] & *v133) + 0x78);
    swift_beginAccess();
    v141 = *(v140 + 1);
    v166 = *v140;
    v167 = v141;
    v142 = *(v140 + 2);
    v143 = *(v140 + 3);
    v144 = *(v140 + 5);
    v170 = *(v140 + 4);
    v171 = v144;
    v168 = v142;
    v169 = v143;
    v145 = *(v140 + 6);
    v146 = *(v140 + 7);
    v147 = *(v140 + 9);
    v174 = *(v140 + 8);
    v175 = v147;
    v173 = v146;
    v172 = v145;
    v148 = *(v140 + 10);
    v149 = *(v140 + 11);
    v150 = *(v140 + 12);
    *&v178[1] = *(v140 + 26);
    v177 = v149;
    v178[0] = v150;
    v176 = v148;
    sub_21D313A94(&v166, v224);

    v224[8] = v174;
    v224[9] = v175;
    v224[10] = v176;
    v224[4] = v170;
    v224[5] = v171;
    v224[6] = v172;
    v224[7] = v173;
    v224[0] = v166;
    v224[1] = v167;
    v224[2] = v168;
    v224[3] = v169;
    v228 = *(v178 + 8);
    v225 = v177;
    v226 = v160;
    v227 = v139;
    sub_21D5C62E8(v224);

    v16 = v164;
    v15 = v159;
    v25 = v161;
    v24 = v162;
    LOBYTE(v26) = v156;
    goto LABEL_56;
  }

LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_21D531E10(uint64_t a1, char *a2)
{
  v221 = a2;
  v4 = sub_21DBF5C4C();
  v204 = *(v4 - 8);
  v205 = v4;
  MEMORY[0x28223BE20](v4);
  v203 = &v201 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = type metadata accessor for TTRITitledDatePickerCellContentState(0);
  MEMORY[0x28223BE20](v206);
  v207 = &v201 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v7 - 8);
  v208 = &v201 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v209 = &v201 - v10;
  v11 = sub_21DBF563C();
  v12 = *(v11 - 8);
  v214 = v11;
  v215 = v12;
  MEMORY[0x28223BE20](v11);
  v210 = &v201 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
  v216 = *(v14 - 8);
  v217 = v14;
  MEMORY[0x28223BE20](v14);
  v211 = &v201 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v213 = (&v201 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0, &unk_21DC17980);
  MEMORY[0x28223BE20](v18 - 8);
  v212 = &v201 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v201 - v21;
  MEMORY[0x28223BE20](v23);
  v218 = &v201 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D998, &unk_21DC1D520);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v201 - v26;
  v28 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v220 = &v201 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v201 - v32;
  v222 = v2;
  v219 = sub_21D52E86C();
  sub_21D0D3954(a1, v27, &qword_27CE5D998, &unk_21DC1D520);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_21D0CF7E0(v27, &qword_27CE5D998, &unk_21DC1D520);
  }

  else
  {
    sub_21D539B30(v27, v33, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
    if ((v221 & 0x1000) != 0 || (v34 = v220, sub_21D539D14(v33, v220, type metadata accessor for TTRReminderDetailViewModel.DueDateState), v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678, &unk_21DC16600), v36 = (*(*(v35 - 1) + 48))(v34, 1, v35), v37 = v222, v36 == 1))
    {
      sub_21D539CB4(v33, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
    }

    else
    {
      v221 = v33;
      v40 = v34 + v35[12];
      v201 = *v40;
      v202 = *(v40 + 8);
      v42 = *(v40 + 16);
      v41 = *(v40 + 24);
      v43 = *(v40 + 40);
      v44 = v35[16];
      v45 = *(v34 + v35[20]);
      v46 = v218;
      sub_21D539AA8(v34 + v44, v218);
      if (v219)
      {
        v203 = v42;
        v205 = v43;
        v208 = v41;
        v47 = v45;
        v48 = *(sub_21D52E8E4() + 32);

        v49 = MEMORY[0x277D85000];
        v50 = (v48 + *((*MEMORY[0x277D85000] & *v48) + 0x78));
        swift_beginAccess();
        v51 = *v50;
        v52 = v50[1];
        v53 = v50[2];
        v268 = v50[3];
        v267 = v53;
        v266 = v52;
        v265 = v51;
        v54 = v50[4];
        v55 = v50[5];
        v56 = v50[6];
        *(v271 + 9) = *(v50 + 105);
        v271[0] = v56;
        v270 = v55;
        v269 = v54;
        v57 = v50[1];
        v238 = *v50;
        v239 = v57;
        v58 = v50[2];
        v59 = v50[3];
        v60 = v50[4];
        v61 = v50[5];
        v244 = *(v50 + 12);
        v242 = v60;
        v243 = v61;
        v240 = v58;
        v241 = v59;
        v62 = BYTE8(v271[1]);
        sub_21D0D3954(&v265, &v293, &unk_27CE5EA10, &qword_21DC1D620);

        if (v47)
        {
          v63 = 11;
        }

        else
        {
          v63 = v201;
        }

        v64 = sub_21D538F58(v202);

        v65 = *(v37[19] + 32);
        v272 = v238;
        v273 = v239;
        v276 = v242;
        v277 = v243;
        v275 = v241;
        v274 = v240;
        *&v278 = v244;
        *(&v278 + 1) = v64;
        *&v279 = v63;
        LODWORD(v204) = v62;
        BYTE8(v279) = v62;
        v66 = v65;
        sub_21D0D3954(&v272, &v293, &unk_27CE5EA10, &qword_21DC1D620);
        sub_21D5C74B4(&v272);

        LODWORD(v213) = v47;
        if (v47)
        {
          v67 = *(sub_21D52E944() + 32);

          v68 = v67 + *((*v49 & *v67) + 0x78);
          swift_beginAccess();
          v69 = *v68;
          v288 = *(v68 + 1);
          v287 = v69;
          v70 = *(v68 + 2);
          v71 = *(v68 + 3);
          v72 = *(v68 + 4);
          v292[0] = *(v68 + 5);
          v291 = v72;
          v290 = v71;
          v289 = v70;
          v73 = *(v68 + 6);
          v74 = *(v68 + 7);
          v75 = *(v68 + 8);
          v292[4] = *(v68 + 9);
          v292[3] = v75;
          v292[2] = v74;
          v292[1] = v73;
          v76 = *(v68 + 10);
          v77 = *(v68 + 11);
          v78 = *(v68 + 12);
          *&v292[8] = *(v68 + 26);
          v292[7] = v78;
          v292[6] = v77;
          v292[5] = v76;
          v79 = v49;
          v80 = v208;
          sub_21DBF8E0C();
          sub_21D313A94(&v287, &v293);

          v295 = v289;
          v296 = v290;
          v294 = v288;
          v293 = v287;
          v302 = *(&v292[4] + 8);
          v303 = *(&v292[5] + 8);
          v304 = *(&v292[6] + 8);
          v305 = *(&v292[7] + 8);
          *&v298[8] = *(v292 + 8);
          v299 = *(&v292[1] + 8);
          v300 = *(&v292[2] + 8);
          v301 = *(&v292[3] + 8);
          *&v297 = v291;
          *(&v297 + 1) = v203;
          *v298 = v80;
          sub_21D5C62E8(&v293);

          v81 = v217;
          v82 = v218;
          v49 = v79;
        }

        else
        {

          v81 = v217;
          v82 = v218;
        }

        v96 = v212;
        v291 = v242;
        v292[0] = v243;
        v287 = v238;
        v288 = v239;
        v290 = v241;
        v289 = v240;
        *&v292[1] = v244;
        *(&v292[1] + 1) = v64;
        *&v292[2] = v63;
        BYTE8(v292[2]) = v204;
        sub_21D0CF7E0(&v287, &unk_27CE5EA10, &qword_21DC1D620);
        sub_21D0D3954(v82, v96, &unk_27CE628E0, &unk_21DC17980);
        if ((*(v216 + 48))(v96, 1, v81) == 1)
        {
          sub_21D0CF7E0(v82, &unk_27CE628E0, &unk_21DC17980);
          sub_21D539CB4(v221, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
          sub_21D0CF7E0(v96, &unk_27CE628E0, &unk_21DC17980);
        }

        else
        {
          v120 = v211;
          sub_21D539B30(v96, v211, type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd);
          v121 = *(sub_21D52E9A4() + 32);

          if (qword_280D1BAA8 != -1)
          {
            swift_once();
          }

          v122 = sub_21DBF516C();
          v216 = 0x800000021DC547E0;
          v123 = v122;
          v125 = v124;
          v126 = v121 + *((*v49 & *v121) + 0x78);
          swift_beginAccess();
          v127 = *(v126 + 6);
          v128 = *(v126 + 56);
          v129 = *(v126 + 4);
          v237[0] = *(v126 + 5);
          v130 = *v126;
          v131 = *(v126 + 1);
          v132 = *(v126 + 3);
          v234 = *(v126 + 2);
          v235 = v132;
          v232 = v130;
          v233 = v131;
          LOWORD(v237[2]) = v128;
          v237[1] = v127;
          v236 = v129;
          sub_21D0D3954(&v232, &v259, &qword_27CE5D9A0, &qword_21DC1A2D0);

          v262 = v235;
          v260 = v233;
          v261 = v234;
          v259 = v232;
          *(v264 + 8) = *(v237 + 8);
          *(&v264[1] + 2) = *(&v237[1] + 2);
          *&v263 = v236;
          *(&v263 + 1) = v123;
          *&v264[0] = v125;
          sub_21D5C74DC(&v259);

          v133 = v209;
          sub_21D0D3954(v120 + *(v217 + 20), v209, &qword_27CE58D68, &unk_21DC0C060);
          v135 = v214;
          v134 = v215;
          if ((*(v215 + 48))(v133, 1, v214) == 1)
          {
            v136 = v120;
            sub_21D0CF7E0(v133, &qword_27CE58D68, &unk_21DC0C060);
            v137 = *(v37[22] + 32);
            v138 = v137 + *((*v49 & *v137) + 0x78);
            swift_beginAccess();
            v139 = *v138;
            v140 = *(v138 + 1);
            v141 = *(v138 + 3);
            v226 = *(v138 + 2);
            v227 = v141;
            v224 = v139;
            v225 = v140;
            v142 = *(v138 + 4);
            v143 = *(v138 + 5);
            v144 = *(v138 + 6);
            v231 = *(v138 + 56);
            v229 = v143;
            v230 = v144;
            v228 = v142;
            v145 = *v138;
            v146 = *(v138 + 2);
            v246 = *(v138 + 1);
            v247 = v146;
            v245 = v145;
            v147 = *(v138 + 3);
            v148 = *(v138 + 4);
            v149 = *(v138 + 6);
            v250 = *(v138 + 5);
            v251 = v149;
            v248 = v147;
            v249 = v148;
            LOBYTE(v252) = 0;
            BYTE1(v252) = HIBYTE(v231);
            v150 = v137;
            sub_21D0D3954(&v224, v223, &qword_27CE5D9A0, &qword_21DC1A2D0);
            sub_21D5C74DC(&v245);

            v200 = v136;
          }

          else
          {
            (*(v134 + 32))(v210, v133, v135);
            v169 = *(v37[22] + 32);
            v170 = v169 + *((*v49 & *v169) + 0x78);
            swift_beginAccess();
            v171 = *v170;
            v172 = *(v170 + 1);
            v173 = *(v170 + 3);
            v226 = *(v170 + 2);
            v227 = v173;
            v224 = v171;
            v225 = v172;
            v174 = *(v170 + 4);
            v175 = *(v170 + 5);
            v176 = *(v170 + 6);
            v231 = *(v170 + 56);
            v229 = v175;
            v230 = v176;
            v228 = v174;
            v177 = *v170;
            v178 = *(v170 + 2);
            v246 = *(v170 + 1);
            v247 = v178;
            v245 = v177;
            v179 = *(v170 + 3);
            v180 = *(v170 + 4);
            v181 = *(v170 + 6);
            v250 = *(v170 + 5);
            v251 = v181;
            v248 = v179;
            v249 = v180;
            LOBYTE(v252) = 1;
            BYTE1(v252) = HIBYTE(v231);
            v182 = v169;
            sub_21D0D3954(&v224, v223, &qword_27CE5D9A0, &qword_21DC1A2D0);
            sub_21D5C74DC(&v245);

            v184 = *(sub_21D52EA04(v183) + 32);

            v185 = sub_21DBF516C();
            v187 = v186;
            v188 = MEMORY[0x277D85000];
            v189 = *((*MEMORY[0x277D85000] & *v184) + 0x78);
            swift_beginAccess();
            v190 = v207;
            sub_21D539D14(v184 + v189, v207, type metadata accessor for TTRITitledDatePickerCellContentState);

            *(v190 + 72) = v185;
            *(v190 + 80) = v187;
            sub_21D5C7798(v190, v191);

            v192 = *(v222[23] + 32);
            v193 = *((*v188 & *v192) + 0x78);
            swift_beginAccess();
            sub_21D539D14(v192 + v193, v190, type metadata accessor for TTRITitledDatePickerCellContentState);
            v194 = *(v206 + 24);
            v195 = v215;
            v196 = *(v215 + 24);
            v197 = v192;
            v198 = v210;
            v199.n128_f64[0] = v196(v190 + v194, v210, v135);
            sub_21D5C7798(v190, v199);

            (*(v195 + 8))(v198, v135);
            v200 = v211;
          }

          sub_21D539CB4(v200, type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd);
          sub_21D0CF7E0(v218, &unk_27CE628E0, &unk_21DC17980);
          sub_21D539CB4(v221, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
        }
      }

      else
      {
        v83 = *(sub_21D52EA64() + 32);

        v84 = v83 + *((*MEMORY[0x277D85000] & *v83) + 0x78);
        swift_beginAccess();
        v85 = *v84;
        v266 = *(v84 + 1);
        v265 = v85;
        v86 = *(v84 + 2);
        v87 = *(v84 + 3);
        v88 = *(v84 + 4);
        v270 = *(v84 + 5);
        v269 = v88;
        v268 = v87;
        v267 = v86;
        v89 = *(v84 + 6);
        v90 = *(v84 + 7);
        v91 = *(v84 + 8);
        v271[3] = *(v84 + 9);
        v271[2] = v91;
        v271[1] = v90;
        v271[0] = v89;
        v92 = *(v84 + 10);
        v93 = *(v84 + 11);
        v94 = *(v84 + 12);
        *&v271[7] = *(v84 + 26);
        v271[6] = v94;
        v271[5] = v93;
        v271[4] = v92;
        sub_21DBF8E0C();
        sub_21D313A94(&v265, &v293);

        v297 = v269;
        *v298 = v270;
        v293 = v265;
        v294 = v266;
        v296 = v268;
        v295 = v267;
        v301 = *(&v271[2] + 8);
        v300 = *(&v271[1] + 8);
        v305 = *(&v271[6] + 8);
        v304 = *(&v271[5] + 8);
        v303 = *(&v271[4] + 8);
        v302 = *(&v271[3] + 8);
        *&v298[16] = *&v271[0];
        *&v299 = v42;
        *(&v299 + 1) = v41;
        sub_21D5C62E8(&v293);

        sub_21D0D3954(v46, v22, &unk_27CE628E0, &unk_21DC17980);
        v95 = v217;
        if ((*(v216 + 48))(v22, 1, v217) == 1)
        {
          sub_21D0CF7E0(v46, &unk_27CE628E0, &unk_21DC17980);
          sub_21D539CB4(v221, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
          sub_21D0CF7E0(v22, &unk_27CE628E0, &unk_21DC17980);
        }

        else
        {
          v97 = v213;
          sub_21D539B30(v22, v213, type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd);
          v98 = *(sub_21D52EAFC() + 32);

          v100 = *v97;
          v99 = v97[1];
          v101 = MEMORY[0x277D85000];
          v102 = v98 + *((*MEMORY[0x277D85000] & *v98) + 0x78);
          swift_beginAccess();
          v103 = *(v102 + 1);
          v259 = *v102;
          v260 = v103;
          v104 = *(v102 + 2);
          v105 = *(v102 + 3);
          v106 = *(v102 + 4);
          v264[0] = *(v102 + 5);
          v263 = v106;
          v262 = v105;
          v261 = v104;
          v107 = *(v102 + 6);
          v108 = *(v102 + 7);
          v109 = *(v102 + 8);
          v264[4] = *(v102 + 9);
          v264[3] = v109;
          v264[2] = v108;
          v264[1] = v107;
          v110 = *(v102 + 10);
          v111 = *(v102 + 11);
          v112 = *(v102 + 12);
          *&v264[8] = *(v102 + 26);
          v264[7] = v112;
          v264[6] = v111;
          v264[5] = v110;
          sub_21DBF8E0C();
          sub_21D313A94(&v259, &v287);

          v291 = v263;
          v292[0] = v264[0];
          v287 = v259;
          v288 = v260;
          v290 = v262;
          v289 = v261;
          *(&v292[3] + 8) = *(&v264[3] + 8);
          *(&v292[2] + 8) = *(&v264[2] + 8);
          *(&v292[7] + 8) = *(&v264[7] + 8);
          *(&v292[6] + 8) = *(&v264[6] + 8);
          *(&v292[5] + 8) = *(&v264[5] + 8);
          *(&v292[4] + 8) = *(&v264[4] + 8);
          *&v292[1] = *&v264[1];
          *(&v292[1] + 1) = v100;
          *&v292[2] = v99;
          sub_21D5C62E8(&v287);

          v113 = *(v37[24] + 32);
          v114 = v208;
          sub_21D0D3954(v97 + *(v95 + 20), v208, &qword_27CE58D68, &unk_21DC0C060);
          v116 = v214;
          v115 = v215;
          if ((*(v215 + 48))(v114, 1, v214) == 1)
          {
            v117 = v113;
            sub_21D0CF7E0(v114, &qword_27CE58D68, &unk_21DC0C060);
            v118 = 0;
            v119 = 0;
          }

          else
          {
            v151 = v115;
            v152 = objc_opt_self();
            v153 = v113;
            v154 = [v152 defaultTimeZone];
            v155 = v203;
            sub_21DBF5C2C();

            v118 = sub_21D7A2624(v155);
            v119 = v156;
            v157 = v155;
            v101 = MEMORY[0x277D85000];
            (*(v204 + 8))(v157, v205);
            (*(v151 + 8))(v114, v116);
          }

          v158 = v113 + *((*v101 & *v113) + 0x78);
          swift_beginAccess();
          v159 = *(v158 + 1);
          v245 = *v158;
          v246 = v159;
          v160 = *(v158 + 2);
          v161 = *(v158 + 3);
          v162 = *(v158 + 5);
          v249 = *(v158 + 4);
          v250 = v162;
          v247 = v160;
          v248 = v161;
          v163 = *(v158 + 6);
          v164 = *(v158 + 7);
          v165 = *(v158 + 9);
          v253 = *(v158 + 8);
          v254 = v165;
          v251 = v163;
          v252 = v164;
          v166 = *(v158 + 10);
          v167 = *(v158 + 11);
          v168 = *(v158 + 12);
          v258 = *(v158 + 26);
          v256 = v167;
          v257 = v168;
          v255 = v166;
          sub_21D313A94(&v245, &v272);

          v276 = v249;
          v277 = v250;
          v278 = v251;
          v279 = v252;
          v272 = v245;
          v273 = v246;
          v274 = v247;
          v275 = v248;
          v286 = v258;
          v285 = v257;
          v284 = v256;
          v282 = v254;
          v283 = v255;
          v280 = v118;
          v281 = v119;
          sub_21D5C62E8(&v272);

          sub_21D539CB4(v213, type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd);
          sub_21D0CF7E0(v218, &unk_27CE628E0, &unk_21DC17980);
          sub_21D539CB4(v221, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
        }
      }

      sub_21D539CB4(v220, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
    }
  }

  sub_21D52E8E4();
  sub_21D5D3E3C();

  sub_21D52E944();
  sub_21D5D3E3C();

  sub_21D52E9A4();
  sub_21D5D3E3C();

  sub_21D52EA04(v38);
  sub_21D5D3E3C();

  sub_21D52EA64();
  sub_21D5D3E3C();

  sub_21D52EAFC();
  sub_21D5D3E3C();
}

void sub_21D5334D0()
{
  v1 = *(v0 + 192);
  v2 = (v1 + 40);
  v3 = -*(v1 + 16);
  v4 = -1;
  do
  {
    v5 = v3 + v4;
    if (v3 + v4 == -1)
    {
      break;
    }

    if (++v4 >= *(v1 + 16))
    {
      __break(1u);
      return;
    }

    v6 = v2 + 2;
    v7 = *v2;
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 32);
    swift_unknownObjectRetain();
    LOBYTE(v7) = v9(ObjectType, v7);
    swift_unknownObjectRelease();
    v2 = v6;
  }

  while ((v7 & 1) != 0);

  TTRITableSection.isHidden.setter(v5 == -1);
}

uint64_t sub_21D5335B4()
{
  v0 = sub_21D52E6EC();
  swift_beginAccess();
  v1 = *(v0 + 200);

  v2 = sub_21D52E3C4();
  if (v1 == 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v10 = 0;
    memset(v9, 0, 24);
  }

  else
  {
    v10 = 0;
    v6 = 0x4010000000000000;
    v5 = sub_21D537CD0;
    v4 = sub_21D537CCC;
    v3 = &type metadata for TTRITableEmptyContentConfigurationProvider;
  }

  v9[3] = v3;
  v9[4] = v4;
  v9[5] = 0;
  v9[6] = v5;
  v9[7] = 0;
  v9[8] = v6;
  swift_beginAccess();
  sub_21D0D3954(v2 + 112, v8, &qword_27CE5E690, &unk_21DC103B0);
  swift_beginAccess();
  sub_21D537CD4(v9, v2 + 112);
  swift_endAccess();
  sub_21DBEE154(v8);

  sub_21D0CF7E0(v8, &qword_27CE5E690, &unk_21DC103B0);
  return sub_21D0CF7E0(v9, &qword_27CE5E690, &unk_21DC103B0);
}

void sub_21D533708()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v1 = [Strong viewIfLoaded];
    if (v1)
    {
      v2 = v1;
      v3 = UIView.firstResponderDescendant.getter();

      if (v3)
      {
        [v3 resignFirstResponder];
      }
    }
  }
}

uint64_t sub_21D5337A0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  type metadata accessor for TTREarlyAlertUtils();
  v40.i64[0] = v5;
  v40.i64[1] = v6;
  LOBYTE(v41) = v7;
  static TTREarlyAlertUtils.earlyAlertOptions(for:isAllDay:)(&v40, a2, &v49);
  v24 = v50.i64[0];
  v25 = *(&v49 + 1);
  v23 = v50.i8[8];
  v8 = v51;
  LOBYTE(v6) = v52.i8[0];
  v9 = *(sub_21D52E74C() + 32);

  v10 = v9 + *((*MEMORY[0x277D85000] & *v9) + 0x78);
  swift_beginAccess();
  v40 = *v10;
  v11 = *(v10 + 1);
  v12 = *(v10 + 2);
  v13 = *(v10 + 4);
  v43 = *(v10 + 3);
  v44 = v13;
  v41 = v11;
  v42 = v12;
  v14 = *(v10 + 5);
  v15 = *(v10 + 6);
  v16 = *(v10 + 7);
  v48 = *(v10 + 64);
  v46 = v15;
  v47 = v16;
  v45 = v14;
  v30 = *(v10 + 4);
  v31 = *(v10 + 5);
  v32 = *(v10 + 12);
  v26 = *v10;
  v27 = *(v10 + 1);
  v28 = *(v10 + 2);
  v29 = *(v10 + 3);
  v17 = HIBYTE(v48);
  sub_21D0D3954(&v40, &v49, &qword_27CE5D9C8, &unk_21DC1A300);

  v49 = v8;
  v50.i8[0] = v6;
  v18 = sub_21DBF8E0C();
  v19 = sub_21D538A94(v18, &v49);

  swift_bridgeObjectRelease_n();
  v20 = *(*(v3 + 120) + 32);
  v33[0] = v26;
  v33[1] = v27;
  v33[4] = v30;
  v33[5] = v31;
  v33[2] = v28;
  v33[3] = v29;
  v34 = v32;
  v35 = v19;
  v36 = v25;
  v37 = v24;
  v38 = v23;
  v39 = v17;
  v21 = v20;
  sub_21D0D3954(v33, &v49, &qword_27CE5D9C8, &unk_21DC1A300);
  sub_21D5C7058(v33);

  v53 = v30;
  v54 = v31;
  v49 = v26;
  v50 = v27;
  v51 = v28;
  v52 = v29;
  v55 = v32;
  v56 = v19;
  v57 = v25;
  v58 = v24;
  v59 = v23;
  v60 = v17;
  return sub_21D0CF7E0(&v49, &qword_27CE5D9C8, &unk_21DC1A300);
}

void sub_21D5339EC(uint64_t a1@<X8>)
{
  v3 = sub_21DBFA12C();
  v4 = [objc_opt_self() _systemImageNamed_];

  if (*(v1 + 64) == 1)
  {
    *a1 = v4;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 64) = 0x80;
  }

  else
  {
    if (qword_280D16960 != -1)
    {
      swift_once();
    }

    v5 = qword_280D16968;
    *a1 = v4;
    *(a1 + 8) = 0;
    *(a1 + 16) = v5;
    *(a1 + 24) = 0;
    *(a1 + 64) = 0;

    v6 = v5;
  }
}

uint64_t sub_21D533ADC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    sub_21D533708();
    v3 = *(v2 + 48);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 16);
    swift_unknownObjectRetain();
    v5(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_21D533B84(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 120);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_21D533708();
    v6 = *(v5 + 48);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 32);
    swift_unknownObjectRetain();
    v8(v2, ObjectType, v6);
    swift_unknownObjectRelease();
    if (v2)
    {
      if (qword_27CE57188 != -1)
      {
        swift_once();
      }

      v9 = &qword_27CE66AD0;
    }

    else
    {
      if (qword_27CE57190 != -1)
      {
        swift_once();
      }

      v9 = &qword_27CE66AE0;
    }

    v10 = *v9;
    v11 = v9[1];
    sub_21DBF8E0C();
    sub_21D5396B4(v10, v11);
  }

  return result;
}

uint64_t sub_21D533CD4()
{
  v0 = type metadata accessor for TTRICalendarPickerCellContentState(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v12[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  sub_21DBF5C3C();
  v3 = objc_allocWithZone(type metadata accessor for TTRICalendarPickerCellContent(0));
  v4 = TTRICalendarPickerCellContent.init(state:)(v2);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = (v4 + qword_27CE8ED38);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = sub_21D539A90;
  v6[1] = v5;

  sub_21D0D0E88(v7, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A748, &unk_21DC1A2C0);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + 48) = 1;
  *(v9 + 49) = 0;
  *(v9 + 56) = 0;
  *(v9 + 64) = 0;
  *(v9 + 72) = 1;
  *(v9 + 32) = v4;
  *(v9 + 40) = 0;
  v10 = v4 + *((*MEMORY[0x277D85000] & *v4) + 0x70);
  swift_beginAccess();
  *(v10 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v9;
}

uint64_t sub_21D533EA8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C668, &unk_21DC1A2B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15[-v4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    sub_21D533708();
    v8 = *(sub_21D52E528() + 32);

    v9 = v8 + *((*MEMORY[0x277D85000] & *v8) + 0x78);
    swift_beginAccess();
    v10 = v9[120];

    v11 = *(v7 + 48);
    ObjectType = swift_getObjectType();
    v13 = sub_21DBF563C();
    (*(*(v13 - 8) + 16))(v5, a1, v13);
    v14 = type metadata accessor for TTRIReminderDetailDueDateModificationInput(0);
    v5[*(v14 + 20)] = (v10 & 1) == 0;
    v5[*(v14 + 24)] = 0;
    (*(*(v14 - 8) + 56))(v5, 0, 1, v14);
    (*(v11 + 48))(v5, ObjectType, v11);
    sub_21D0CF7E0(v5, &qword_27CE5C668, &unk_21DC1A2B0);
  }

  return result;
}

uint64_t sub_21D5340AC(uint64_t a1, void (*a2)(void *__return_ptr), uint64_t a3, uint64_t a4, uint64_t a5)
{
  a2(v34);
  v30 = v34[1];
  v31 = v34[0];
  v28 = v34[3];
  v29 = v34[2];
  v6 = v35;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v7 = sub_21DBF516C();
  v9 = v8;
  memset(v36, 0, 24);
  v36[3] = 0x1FFFFFFFELL;
  v37 = 0u;
  v38 = 0u;
  v39 = 0;
  sub_21D0CF7E0(v36, &unk_27CE5EA00, &unk_21DC0A7C0);
  v10 = objc_allocWithZone(type metadata accessor for TTRIToggleCellContent(0));
  v11 = (v10 + qword_27CE654C0);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v10 + qword_27CE654C8);
  *v12 = 0;
  v12[1] = 0;
  v13 = MEMORY[0x277D85000];
  *(v10 + *((*MEMORY[0x277D85000] & *v10) + 0x68)) = 0;
  *(v10 + *((*v13 & *v10) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v10 + *((*v13 & *v10) + 0x90)) = 0;
  v14 = v10 + *((*v13 & *v10) + 0x78);
  *v14 = v31;
  *(v14 + 1) = v30;
  *(v14 + 2) = v29;
  *(v14 + 3) = v28;
  v14[64] = v6;
  *(v14 + 65) = v40[0];
  *(v14 + 17) = *(v40 + 3);
  *(v14 + 9) = v7;
  *(v14 + 10) = v9;
  *(v14 + 88) = 0u;
  *(v14 + 104) = 0u;
  *(v14 + 118) = 0;
  *(v10 + *((*v13 & *v10) + 0x80)) = 0;
  v15 = (v10 + *((*v13 & *v10) + 0x88));
  *v15 = 0x6543686374697753;
  v15[1] = 0xEA00000000006C6CLL;
  v33.receiver = v10;
  v33.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE622A0, &unk_21DC1A290);
  v16 = objc_msgSendSuper2(&v33, sel_init, 0x800000021DC547E0);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = (v16 + qword_27CE654C0);
  swift_beginAccess();
  v19 = *v18;
  v20 = v18[1];
  *v18 = a4;
  v18[1] = v17;

  sub_21D0D0E88(v19, v20);

  v21 = swift_allocObject();
  swift_weakInit();
  v22 = (v16 + qword_27CE654C8);
  swift_beginAccess();
  v23 = *v22;
  v24 = v22[1];
  *v22 = a5;
  v22[1] = v21;

  sub_21D0D0E88(v23, v24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D980, &unk_21DC2B210);
  v25 = swift_allocObject();
  *(v25 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v25 + 48) = 1;
  *(v25 + 49) = 0;
  *(v25 + 56) = 0;
  *(v25 + 64) = 0;
  *(v25 + 72) = 1;
  *(v25 + 32) = v16;
  *(v25 + 40) = 0;
  v26 = v16 + *((*v13 & *v16) + 0x70);
  swift_beginAccess();
  *(v26 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v25;
}

void sub_21D5344DC(uint64_t a1@<X8>)
{
  if (*(v1 + 64) == 1)
  {
    v3 = sub_21DBFA12C();
    v4 = [objc_opt_self() _systemImageNamed_];

    *a1 = v4;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 64) = 0x80;
  }

  else
  {
    v5 = sub_21DBFA12C();
    v6 = [objc_opt_self() _systemImageNamed_];

    if (qword_280D16918 != -1)
    {
      swift_once();
    }

    v7 = qword_280D16920;
    *a1 = v6;
    *(a1 + 8) = 0;
    *(a1 + 16) = v7;
    *(a1 + 24) = 0;
    *(a1 + 64) = 0;

    v8 = v7;
  }
}

uint64_t sub_21D534614(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    sub_21D533708();
    v3 = *(v2 + 48);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 24);
    swift_unknownObjectRetain();
    v5(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_21D5346BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 120);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_21D533708();
    v6 = *(v5 + 48);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 40);
    swift_unknownObjectRetain();
    v8(v2, ObjectType, v6);
    swift_unknownObjectRelease();
    if (v2)
    {
      if (qword_27CE57188 != -1)
      {
        swift_once();
      }

      v9 = &qword_27CE66AD0;
    }

    else
    {
      if (qword_27CE57190 != -1)
      {
        swift_once();
      }

      v9 = &qword_27CE66AE0;
    }

    v10 = *v9;
    v11 = v9[1];
    sub_21DBF8E0C();
    sub_21D5396B4(v10, v11);
  }

  return result;
}

uint64_t sub_21D53480C(__n128 a1)
{
  v1 = type metadata accessor for TTRIDatePickerCellContentState(0);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  sub_21DBF5C3C();
  *&v4[*(v2 + 32)] = 0;
  *&v4[*(v2 + 36)] = 1;
  v5 = objc_allocWithZone(type metadata accessor for TTRIDatePickerCellContent(0));
  v6 = TTRIDatePickerCellContent.init(state:)(v4);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = (v6 + qword_27CE8EAB0);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = sub_21D53969C;
  v8[1] = v7;

  sub_21D0D0E88(v9, v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D990, &qword_21DC1A2A8);
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v11 + 48) = 1;
  *(v11 + 49) = 0;
  *(v11 + 56) = 0;
  *(v11 + 64) = 0;
  *(v11 + 72) = 1;
  *(v11 + 32) = v6;
  *(v11 + 40) = 0;
  v12 = v6 + *((*MEMORY[0x277D85000] & *v6) + 0x70);
  swift_beginAccess();
  *(v12 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v11;
}

uint64_t sub_21D5349F0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C668, &unk_21DC1A2B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13[-v4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = sub_21D52E5CC();
    swift_beginAccess();
    if (*(v8 + 49))
    {
    }

    else
    {
      if ((*(*(v8 + 32) + qword_27CE60838) & 1) == 0)
      {
        sub_21D533708();
      }

      v9 = *(v7 + 48);
      ObjectType = swift_getObjectType();
      v11 = sub_21DBF563C();
      (*(*(v11 - 8) + 16))(v5, a1, v11);
      v12 = type metadata accessor for TTRIReminderDetailDueDateModificationInput(0);
      v5[*(v12 + 20)] = 0;
      v5[*(v12 + 24)] = 1;
      (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
      (*(v9 + 48))(v5, ObjectType, v9);

      sub_21D0CF7E0(v5, &qword_27CE5C668, &unk_21DC1A2B0);
    }
  }

  return result;
}

uint64_t sub_21D534BE0()
{
  sub_21D534FAC(v23);
  v20 = v23[1];
  v21 = v23[0];
  v18 = v23[3];
  v19 = v23[2];
  v0 = v24;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF516C();
  v3 = v2;
  memset(v25, 0, 24);
  v25[3] = 0x1FFFFFFFELL;
  v26 = 0u;
  v27 = 0u;
  v28 = 0;
  sub_21D0CF7E0(v25, &unk_27CE5EA00, &unk_21DC0A7C0);
  v4 = objc_allocWithZone(type metadata accessor for TTRIToggleCellContent(0));
  v5 = (v4 + qword_27CE654C0);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v4 + qword_27CE654C8);
  *v6 = 0;
  v6[1] = 0;
  v7 = MEMORY[0x277D85000];
  *(v4 + *((*MEMORY[0x277D85000] & *v4) + 0x68)) = 0;
  *(v4 + *((*v7 & *v4) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + *((*v7 & *v4) + 0x90)) = 0;
  v8 = v4 + *((*v7 & *v4) + 0x78);
  *v8 = v21;
  *(v8 + 1) = v20;
  *(v8 + 2) = v19;
  *(v8 + 3) = v18;
  v8[64] = v0;
  *(v8 + 65) = *v29;
  *(v8 + 17) = *&v29[3];
  *(v8 + 9) = v1;
  *(v8 + 10) = v3;
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0u;
  *(v8 + 118) = 0;
  *(v4 + *((*v7 & *v4) + 0x80)) = 0;
  v9 = (v4 + *((*v7 & *v4) + 0x88));
  *v9 = 0x6543686374697753;
  v9[1] = 0xEA00000000006C6CLL;
  v22.receiver = v4;
  v22.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE622A0, &unk_21DC1A290);
  v10 = objc_msgSendSuper2(&v22, sel_init, 0x800000021DC547E0);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = (v10 + qword_27CE654C8);
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  *v12 = sub_21D53968C;
  v12[1] = v11;

  sub_21D0D0E88(v13, v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D980, &unk_21DC2B210);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v15 + 48) = 1;
  *(v15 + 49) = 0;
  *(v15 + 56) = 0;
  *(v15 + 64) = 0;
  *(v15 + 72) = 1;
  *(v15 + 32) = v10;
  *(v15 + 40) = 0;
  v16 = v10 + *((*v7 & *v10) + 0x70);
  swift_beginAccess();
  *(v16 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v15;
}

void sub_21D534FAC(uint64_t a1@<X8>)
{
  v3 = sub_21DBFA12C();
  v4 = [objc_opt_self() _systemImageNamed_];

  if (*(v1 + 64) == 1)
  {
    *a1 = v4;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 64) = 0x80;
  }

  else
  {
    if (qword_280D16948 != -1)
    {
      swift_once();
    }

    v5 = qword_280D16950;
    *a1 = v4;
    *(a1 + 8) = 0;
    *(a1 + 16) = v5;
    *(a1 + 24) = 0;
    *(a1 + 64) = 0;

    v6 = v5;
  }
}

uint64_t sub_21D5350A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 120);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 48);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 56);
    swift_unknownObjectRetain();
    v6(v2, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D535150()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v0 = sub_21DBF516C();
  v2 = v1;
  sub_21D535420(v17);
  v16[0] = v0;
  v16[1] = v2;
  v16[2] = 0;
  v16[3] = 0xE000000000000000;
  v3 = objc_allocWithZone(type metadata accessor for TTRITimeZoneCellContent(0));
  v4 = sub_21DA87D30(0, 0x656E6F5A656D6954, 0xEC0000006C6C6543, 1, v16);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v8 = MEMORY[0x277D85000];
  v9 = (v4 + *((*MEMORY[0x277D85000] & *v4) + 0x108));
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  *v9 = sub_21D539694;
  v9[1] = v7;
  v12 = v4;

  sub_21D0D0E88(v10, v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D988, &qword_21DC1A2A0);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v13 + 48) = 1;
  *(v13 + 49) = 0;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 72) = 1;
  *(v13 + 32) = v12;
  *(v13 + 40) = 0;
  v14 = v12 + *((*v8 & *v12) + 0x70);
  swift_beginAccess();
  *(v14 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v13;
}

void sub_21D535420(uint64_t a1@<X8>)
{
  v3 = sub_21DBFA12C();
  v4 = [objc_opt_self() _systemImageNamed_];

  if (*(v1 + 64) == 1)
  {
    *a1 = v4;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 64) = 0x80;
  }

  else
  {
    if (qword_280D16918 != -1)
    {
      swift_once();
    }

    v5 = qword_280D16920;
    *a1 = v4;
    *(a1 + 8) = 0;
    *(a1 + 16) = v5;
    *(a1 + 24) = 0;
    *(a1 + 64) = 0;

    v6 = v5;
  }
}

uint64_t sub_21D53550C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = *(v3 + 48);
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 64);
      swift_unknownObjectRetain();
      v8(1, ObjectType, v6);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_21D5355F0()
{
  type metadata accessor for TTREarlyAlertUtils();
  v33 = 0uLL;
  LOBYTE(v34) = 0;
  static TTREarlyAlertUtils.earlyAlertOptions(for:isAllDay:)(&v33, 1, &v20);
  v20 = v22;
  LOBYTE(v21) = v23;
  v0 = sub_21DBF8E0C();
  v1 = sub_21D538A94(v0, &v20);
  swift_bridgeObjectRelease_n();
  sub_21D535908(&v20);
  v18 = v21;
  v19 = v20;
  v16 = v23;
  v17 = v22;
  v2 = v24;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v3 = sub_21DBF516C();
  v5 = v4;
  v33 = 0uLL;
  v34 = 0;
  v35 = 0x1FFFFFFFELL;
  v36 = 0u;
  v37 = 0u;
  v38 = 0;
  sub_21D0CF7E0(&v33, &unk_27CE5EA00, &unk_21DC0A7C0);
  v20 = v19;
  v21 = v18;
  v22 = v17;
  v23 = v16;
  v24 = v2;
  v25 = v3;
  v26 = v5;
  v27 = 0;
  v28 = 0;
  v30 = 0;
  v31 = 0;
  v29 = v1;
  v32 = 0;
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D9B0, &qword_21DC1A2E8));
  v7 = sub_21D537D44(&v20, 0, 0);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = MEMORY[0x277D85000];
  v10 = (v7 + *((*MEMORY[0x277D85000] & *v7) + 0x100));
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  *v10 = sub_21D539B28;
  v10[1] = v8;

  sub_21D0D0E88(v11, v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D9B8, &qword_21DC1A2F0);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v13 + 48) = 1;
  *(v13 + 49) = 0;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 72) = 1;
  *(v13 + 32) = v7;
  *(v13 + 40) = 0;
  v14 = v7 + *((*v9 & *v7) + 0x70);
  swift_beginAccess();
  *(v14 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v13;
}

id sub_21D535908@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 64) == 1)
  {
    v3 = sub_21DBFA12C();
    v4 = [objc_opt_self() _systemImageNamed_];

    result = 0;
    v6 = 0x80;
  }

  else
  {
    v7 = sub_21DBFA12C();
    v4 = [objc_opt_self() _systemImageNamed_];

    result = [objc_opt_self() ttr_systemPurpleColor];
    v6 = 0;
  }

  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  *(a1 + 64) = v6;
  return result;
}

uint64_t sub_21D535A04(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v3 = *(a1 + 120);
  v4 = *(a1 + 128);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = *(result + 48);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(v15, ObjectType, v7);
    v9 = v16;
    v10 = *(v6 + 48);
    v11 = swift_getObjectType();
    v15[0] = v2;
    v15[1] = v3;
    v16 = v4;
    (*(v10 + 120))(v15, v11, v10);
    if (v4)
    {
      if ((v9 & 1) == 0)
      {
        if (qword_27CE57188 != -1)
        {
          swift_once();
        }

        v12 = &qword_27CE66AD0;
LABEL_11:
        v13 = *v12;
        v14 = v12[1];
        sub_21DBF8E0C();
        sub_21D5396B4(v13, v14);
      }
    }

    else if (v9)
    {
      if (qword_27CE57190 != -1)
      {
        swift_once();
      }

      v12 = &qword_27CE66AE0;
      goto LABEL_11;
    }
  }

  return result;
}

uint64_t sub_21D535B78()
{
  memset(v29, 0, 24);
  v29[3] = 0x1FFFFFFFELL;
  v30 = 0u;
  v31 = 0u;
  v32 = 0;
  sub_21D0CF7E0(v29, &unk_27CE5EA00, &unk_21DC0A7C0);
  memset(v11, 0, 24);
  v11[3] = 0x1FFFFFFFELL;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  v15 = 0;
  v16 = 0xE000000000000000;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0xE000000000000000;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v24 = 2;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v0 = objc_allocWithZone(type metadata accessor for TTRIDetailCellContent(0));
  v1 = sub_21DA87B30(0, 0x65436C6961746544, 0xEA00000000006C6CLL, 0, v11);
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = MEMORY[0x277D85000];
  v4 = (v1 + *((*MEMORY[0x277D85000] & *v1) + 0x108));
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = sub_21D539B20;
  v4[1] = v2;
  v7 = v1;

  sub_21D0D0E88(v5, v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A750, &qword_21DC1A2E0);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + 48) = 1;
  *(v8 + 49) = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 72) = 1;
  *(v8 + 32) = v7;
  *(v8 + 40) = 0;
  v9 = v7 + *((*v3 & *v7) + 0x70);
  swift_beginAccess();
  *(v9 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v8;
}

uint64_t sub_21D535DB0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 48);
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 112);
    swift_unknownObjectRetain();
    v4(ObjectType, v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D535E50()
{
  v0 = *(sub_21D52E528() + 32);

  v1 = MEMORY[0x277D85000];
  v2 = v0 + *((*MEMORY[0x277D85000] & *v0) + 0x78);
  swift_beginAccess();
  LODWORD(v2) = v2[120];

  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  v13[0] = -1;
  v13[1] = v3;
  v14 = 1;
  v4 = objc_allocWithZone(type metadata accessor for TTRIIntervalPickerCellContent(0));
  v5 = sub_21D978F60(v13);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = (v5 + qword_27CE64228);
  v8 = *(v5 + qword_27CE64228);
  v9 = *(v5 + qword_27CE64228 + 8);
  *v7 = sub_21D539B18;
  v7[1] = v6;

  sub_21D0D0E88(v8, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D9A8, &qword_21DC1A2D8);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v10 + 48) = 1;
  *(v10 + 49) = 0;
  *(v10 + 56) = 0;
  *(v10 + 64) = 0;
  *(v10 + 72) = 1;
  *(v10 + 32) = v5;
  *(v10 + 40) = 0;
  v11 = v5 + *((*v1 & *v5) + 0x70);
  swift_beginAccess();
  *(v11 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v10;
}

uint64_t sub_21D536020(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 48);
    ObjectType = swift_getObjectType();
    v8[0] = v2;
    v8[1] = v3;
    v9 = v4;
    (*(v6 + 128))(v8, ObjectType, v6);
  }

  return result;
}

id sub_21D5360C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBFA12C();
  v4 = [objc_opt_self() _systemImageNamed_];

  if (*(v1 + 64))
  {
    result = 0;
    v6 = 0x80;
  }

  else
  {
    result = [objc_opt_self() tertiaryLabelColor];
    v6 = 0;
  }

  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  *(a1 + 64) = v6;
  return result;
}

uint64_t sub_21D536170(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 48);
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 88);
    swift_unknownObjectRetain();
    v4(1, ObjectType, v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D536214()
{
  sub_21D5360C0(&v19);
  v17 = v20;
  v18 = v19;
  v15 = v22;
  v16 = v21;
  v0 = v23;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF516C();
  v3 = v2;
  v4 = sub_21D538F58(1);
  memset(v31, 0, 24);
  v31[3] = 0x1FFFFFFFELL;
  v32 = 0u;
  v33 = 0u;
  v34 = 0;
  sub_21D0CF7E0(v31, &unk_27CE5EA00, &unk_21DC0A7C0);
  v20 = v17;
  v19 = v18;
  v22 = v15;
  v21 = v16;
  v23 = v0;
  v24 = v1;
  v25 = v3;
  v26 = 0;
  v27 = 0;
  v28 = v4;
  v29 = 0;
  v30 = 0;
  v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D960, &qword_21DC1A260));
  v6 = sub_21D538174(&v19, 0, 0, &qword_27CE5D970, &qword_21DC1A270);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = MEMORY[0x277D85000];
  v9 = (v6 + *((*MEMORY[0x277D85000] & *v6) + 0x100));
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  *v9 = sub_21D5395B4;
  v9[1] = v7;

  sub_21D0D0E88(v10, v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D968, &qword_21DC1A268);
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v12 + 48) = 1;
  *(v12 + 49) = 0;
  *(v12 + 56) = 0;
  *(v12 + 64) = 0;
  *(v12 + 72) = 1;
  *(v12 + 32) = v6;
  *(v12 + 40) = 0;
  v13 = v6 + *((*v8 & *v6) + 0x70);
  swift_beginAccess();
  *(v13 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v12;
}

uint64_t sub_21D5364EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 48);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 72);
    swift_unknownObjectRetain();
    v6(v2, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D53659C()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v0 = sub_21DBF516C();
  v2 = v1;
  v3 = [objc_opt_self() secondaryLabelColor];
  memset(v35, 0, 24);
  v35[3] = 0x1FFFFFFFELL;
  v36 = 0u;
  v37 = 0u;
  v38 = 0;
  sub_21D0CF7E0(v35, &unk_27CE5EA00, &unk_21DC0A7C0);
  memset(v17, 0, 24);
  v17[3] = 0x1FFFFFFFELL;
  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  v21 = v0;
  v22 = v2;
  v23 = v3;
  v24 = 0;
  v25 = 0;
  v26 = 0xE000000000000000;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v30 = 2;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = objc_allocWithZone(type metadata accessor for TTRIDetailDisclosureCellContent(0));
  v5 = sub_21DA87B30(0, 0xD000000000000014, 0x800000021DC5F610, 1, v17);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = MEMORY[0x277D85000];
  v10 = (v5 + *((*MEMORY[0x277D85000] & *v5) + 0x108));
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  *v10 = sub_21D5395AC;
  v10[1] = v8;
  v13 = v5;

  sub_21D0D0E88(v11, v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D958, &unk_21DC1A250);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v14 + 48) = 1;
  *(v14 + 49) = 0;
  *(v14 + 56) = 0;
  *(v14 + 64) = 0;
  *(v14 + 72) = 1;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  v15 = v13 + *((*v9 & *v13) + 0x70);
  swift_beginAccess();
  *(v15 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v14;
}

uint64_t sub_21D5368EC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [Strong viewIfLoaded];
      if (v6)
      {
        v7 = v6;
        v8 = UIView.firstResponderDescendant.getter();

        if (v8)
        {
          [v8 resignFirstResponder];
        }
      }
    }

    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = *(v3 + 56);
      v11 = *((*MEMORY[0x277D85000] & *v9) + 0x68);
      v12 = v9;
      swift_beginAccess();
      v13 = *&v12[v11];
      v14 = v13;
      static TTRIPopoverAnchor.trailingPortion(in:permittedArrowDirections:)(v13, v10, 0, v19);

      v17[1] = v19[1];
      v18[0] = v20[0];
      *(v18 + 9) = *(v20 + 9);
      v17[0] = v19[0];
      v15 = *(v3 + 48);
      ObjectType = swift_getObjectType();
      (*(v15 + 96))(1, v19, ObjectType, v15);

      return sub_21D0CF7E0(v17, &qword_27CE5D558, &qword_21DC1CB50);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_21D536AA0()
{
  if (*(v0 + 168))
  {
    v1 = *(v0 + 168);
  }

  else
  {
    v1 = sub_21D536AFC();
    *(v0 + 168) = v1;
    sub_21DBF8E0C();
  }

  sub_21DBF8E0C();
  return v1;
}

uint64_t sub_21D536AFC()
{
  v18 = MEMORY[0x277D84F90];
  sub_21D18F1B0(0, 2, 0);
  v0 = v18;
  v1 = byte_282EA6FA0;
  if (byte_282EA6FA0)
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }
  }

  else if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF516C();
  v5 = *(v18 + 16);
  v4 = *(v18 + 24);
  if (v5 >= v4 >> 1)
  {
    v17 = v2;
    v14 = v3;
    sub_21D18F1B0((v4 > 1), v5 + 1, 1);
    v2 = v17;
    v3 = v14;
    v0 = v18;
  }

  *(v0 + 16) = v5 + 1;
  v6 = (v0 + 48 * v5);
  v6[4] = v2;
  v6[5] = v3;
  v6[6] = 0;
  v6[7] = v1;
  v6[8] = 0;
  v6[9] = 0;
  v7 = byte_282EA6FA1;
  if (byte_282EA6FA1)
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }
  }

  else if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF516C();
  v19 = v0;
  v11 = *(v0 + 16);
  v10 = *(v0 + 24);
  if (v11 >= v10 >> 1)
  {
    v15 = v8;
    v16 = v9;
    sub_21D18F1B0((v10 > 1), v11 + 1, 1);
    v9 = v16;
    v8 = v15;
    v0 = v19;
  }

  *(v0 + 16) = v11 + 1;
  v12 = (v0 + 48 * v11);
  v12[4] = v8;
  v12[5] = v9;
  v12[6] = 0;
  v12[7] = v7;
  v12[8] = 0;
  v12[9] = 0;
  return v0;
}

uint64_t sub_21D536E58()
{
  sub_21D537070(&v12);
  v0 = v13;
  v1 = sub_21D536AA0();
  memset(v20, 0, 24);
  v20[3] = 0x1FFFFFFFELL;
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  sub_21D0CF7E0(v20, &unk_27CE5EA00, &unk_21DC0A7C0);
  v13 = v0;
  v14 = 0;
  v15 = 0xE000000000000000;
  v16 = 0;
  v17 = 0;
  v18 = v1;
  v19 = 0;
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D938, &qword_21DC1A230));
  v3 = sub_21D537F48(&v12, 0, 0);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = MEMORY[0x277D85000];
  v6 = (v3 + *((*MEMORY[0x277D85000] & *v3) + 0x100));
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = sub_21D5395A4;
  v6[1] = v4;

  sub_21D0D0E88(v7, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D940, &qword_21DC1A238);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + 48) = 1;
  *(v9 + 49) = 0;
  *(v9 + 56) = 0;
  *(v9 + 64) = 0;
  *(v9 + 72) = 1;
  *(v9 + 32) = v3;
  *(v9 + 40) = 0;
  v10 = v3 + *((*v5 & *v3) + 0x70);
  swift_beginAccess();
  *(v10 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v9;
}

uint64_t sub_21D537070@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 216);
  v4 = *(v1 + 248);
  v25[2] = *(v1 + 232);
  v25[3] = v4;
  v5 = *(v1 + 264);
  v26 = *(v1 + 264);
  v25[0] = *(v1 + 200);
  v25[1] = v3;
  if (*(&v3 + 1) >> 1 == 4294967294 && v5 < 2)
  {
    if (*(v1 + 64) == 1)
    {
      v6 = sub_21DBFA12C();
      v7 = [objc_opt_self() _systemImageNamed_];

      v8 = 0;
      v9 = 0x80;
    }

    else
    {
      v7 = 0;
      v9 = 0;
      v23 = 0u;
      v22 = 0u;
      v8 = 0x1FFFFFFFELL;
    }

    v20 = v7;
    *&v21 = 0;
    *(&v21 + 1) = v8;
    v11 = *(v1 + 216);
    v12 = *(v1 + 248);
    v18[2] = *(v1 + 232);
    v18[3] = v12;
    v18[0] = *(v1 + 200);
    v18[1] = v11;
    *(v1 + 216) = v21;
    v13 = v23;
    *(v1 + 232) = v22;
    *(v1 + 248) = v13;
    v24 = v9;
    v19 = *(v1 + 264);
    *(v1 + 264) = v9;
    *(v1 + 200) = v7;
    sub_21D0D3954(&v20, v17, &unk_27CE5EA00, &unk_21DC0A7C0);
    sub_21D0CF7E0(v18, &qword_27CE5D950, &qword_21DC1A248);
    v14 = v23;
    *(a1 + 32) = v22;
    *(a1 + 48) = v14;
    *(a1 + 64) = v24;
    v15 = v21;
    *a1 = v20;
    *(a1 + 16) = v15;
  }

  else
  {
    *a1 = *(v1 + 200);
    *(a1 + 16) = *(v1 + 216);
    *(a1 + 24) = *(&v3 + 1);
    v10 = *(v1 + 248);
    *(a1 + 32) = *(v1 + 232);
    *(a1 + 48) = v10;
    *(a1 + 64) = v5;
  }

  return sub_21D0D3954(v25, &v20, &qword_27CE5D950, &qword_21DC1A248);
}

uint64_t sub_21D53723C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610, &unk_21DC0DF00);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = *(a1 + 112);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = *(result + 48);
    ObjectType = swift_getObjectType();
    if (v6)
    {
      _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
      v10 = type metadata accessor for TTRRecurrenceEndModel(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
    }

    else
    {
      v11 = type metadata accessor for TTRRecurrenceEndModel(0);
      (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    }

    (*(v8 + 80))(v5, ObjectType, v8);
    sub_21D0CF7E0(v5, &unk_27CE62610, &unk_21DC0DF00);
  }

  return result;
}

uint64_t sub_21D5373D4(__n128 a1)
{
  v1 = type metadata accessor for TTRITitledDatePickerCellContentState(0);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  *v4 = 0;
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0x1FFFFFFFELL;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  v4[64] = 0;
  v18 = 0;
  v5 = *(v4 + 3);
  v17[2] = *(v4 + 2);
  v17[3] = v5;
  v6 = *(v4 + 1);
  v17[0] = *v4;
  v17[1] = v6;
  sub_21D0CF7E0(v17, &unk_27CE5EA00, &unk_21DC0A7C0);
  *v4 = 0;
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0x1FFFFFFFELL;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  v4[64] = 0;
  *(v4 + 9) = 0;
  *(v4 + 10) = 0xE000000000000000;
  *&v4[*(v2 + 36)] = 1;
  v7 = objc_allocWithZone(type metadata accessor for TTRITitledDatePickerCellContent(0));
  v8 = TTRITitledDatePickerCellContent.init(state:)(v4);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = (v8 + qword_27CE8EC48);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  *v10 = sub_21D53959C;
  v10[1] = v9;

  sub_21D0D0E88(v11, v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D930, &unk_21DC1A220);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v13 + 48) = 1;
  *(v13 + 49) = 0;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 72) = 1;
  *(v13 + 32) = v8;
  *(v13 + 40) = 0;
  v14 = v8 + *((*MEMORY[0x277D85000] & *v8) + 0x70);
  swift_beginAccess();
  *(v14 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v13;
}

uint64_t sub_21D537608(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610, &unk_21DC0DF00);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = *(result + 48);
    ObjectType = swift_getObjectType();
    v9 = *(type metadata accessor for TTRITitledDatePickerCellContentState(0) + 24);
    v10 = sub_21DBF563C();
    (*(*(v10 - 8) + 16))(v5, a1 + v9, v10);
    v11 = type metadata accessor for TTRRecurrenceEndModel(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
    (*(v7 + 80))(v5, ObjectType, v7);
    sub_21D0CF7E0(v5, &unk_27CE62610, &unk_21DC0DF00);
  }

  return result;
}

uint64_t sub_21D5377AC(uint64_t a1, void (*a2)(__int128 *__return_ptr), uint64_t a3, uint64_t a4, uint64_t a5)
{
  a2(&v26);
  v24 = v27;
  v25 = v26;
  v22 = v29;
  v23 = v28;
  v6 = v30;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v7 = sub_21DBF516C();
  v9 = v8;
  memset(v45, 0, 24);
  v45[3] = 0x1FFFFFFFELL;
  v46 = 0u;
  v47 = 0u;
  v48 = 0;
  sub_21D0CF7E0(v45, &unk_27CE5EA00, &unk_21DC0A7C0);
  v26 = v25;
  v27 = v24;
  v28 = v23;
  v29 = v22;
  v30 = v6;
  v31 = v7;
  v32 = v9;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0xE000000000000000;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  v40 = 2;
  v10 = type metadata accessor for TTRIDetailDisclosureCellContent(0);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v11 = objc_allocWithZone(v10);
  v12 = sub_21DA87B30(0, 0xD000000000000014, 0x800000021DC5F610, 1, &v26);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = MEMORY[0x277D85000];
  v15 = (v12 + *((*MEMORY[0x277D85000] & *v12) + 0x108));
  swift_beginAccess();
  v16 = *v15;
  v17 = v15[1];
  *v15 = a5;
  v15[1] = v13;
  v18 = v12;

  sub_21D0D0E88(v16, v17);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D958, &unk_21DC1A250);
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v19 + 48) = 1;
  *(v19 + 49) = 0;
  *(v19 + 56) = 0;
  *(v19 + 64) = 0;
  *(v19 + 72) = 1;
  *(v19 + 32) = v18;
  *(v19 + 40) = 0;
  v20 = v18 + *((*v14 & *v18) + 0x70);
  swift_beginAccess();
  *(v20 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v19;
}

uint64_t sub_21D537A9C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 48);
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 104);
    swift_unknownObjectRetain();
    v4(1, ObjectType, v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21D537B40()
{
  v0 = *MEMORY[0x277D76438];
  v1 = sub_21DBFA12C();
  UIAccessibilityPostNotification(v0, v1);
}

uint64_t sub_21D537B98()
{
  MEMORY[0x223D46650](v0 + 16);

  swift_unknownObjectRelease();

  sub_21D539D7C(*(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264));
  return v0;
}

uint64_t sub_21D537C74()
{
  sub_21D537B98();

  return swift_deallocClassInstance();
}

uint64_t sub_21D537CD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E690, &unk_21DC103B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_21D537D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = MEMORY[0x277D85000];
  v9 = (v3 + *((*MEMORY[0x277D85000] & *v3) + 0xF8));
  *v9 = 0;
  v9[1] = 0;
  v10 = (v3 + *((*v8 & *v3) + 0x100));
  *v10 = 0;
  v10[1] = 0;
  v11 = (v3 + *((*v8 & *v3) + 0x108));
  *v11 = a2;
  v11[1] = a3;
  v23 = ObjectType;
  swift_getMetatypeMetadata();
  swift_unknownObjectRetain();
  v12 = sub_21DBFA1AC();
  v14 = v13;
  *(v3 + *((*v8 & *v3) + 0x68)) = 0;
  *(v3 + *((*v8 & *v3) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + *((*v8 & *v3) + 0x90)) = 0;
  v15 = v3 + *((*v8 & *v3) + 0x78);
  v16 = *(a1 + 48);
  *(v15 + 2) = *(a1 + 32);
  *(v15 + 3) = v16;
  v17 = *(a1 + 16);
  *v15 = *a1;
  *(v15 + 1) = v17;
  *(v15 + 64) = *(a1 + 128);
  v18 = *(a1 + 112);
  *(v15 + 6) = *(a1 + 96);
  *(v15 + 7) = v18;
  v19 = *(a1 + 80);
  *(v15 + 4) = *(a1 + 64);
  *(v15 + 5) = v19;
  *(v3 + *((*v8 & *v3) + 0x80)) = 0;
  v20 = (v3 + *((*v8 & *v3) + 0x88));
  *v20 = v12;
  v20[1] = v14;
  v22.receiver = v3;
  v22.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D9C0, &qword_21DC1A2F8);
  return objc_msgSendSuper2(&v22, sel_init);
}

id sub_21D537F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = MEMORY[0x277D85000];
  v9 = (v3 + *((*MEMORY[0x277D85000] & *v3) + 0xF8));
  *v9 = 0;
  v9[1] = 0;
  v10 = (v3 + *((*v8 & *v3) + 0x100));
  *v10 = 0;
  v10[1] = 0;
  v11 = (v3 + *((*v8 & *v3) + 0x108));
  *v11 = a2;
  v11[1] = a3;
  v22 = ObjectType;
  swift_getMetatypeMetadata();
  swift_unknownObjectRetain();
  v12 = sub_21DBFA1AC();
  v14 = v13;
  *(v3 + *((*v8 & *v3) + 0x68)) = 0;
  *(v3 + *((*v8 & *v3) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + *((*v8 & *v3) + 0x90)) = 0;
  v15 = v3 + *((*v8 & *v3) + 0x78);
  v16 = *(a1 + 48);
  *(v15 + 2) = *(a1 + 32);
  *(v15 + 3) = v16;
  v17 = *(a1 + 16);
  *v15 = *a1;
  *(v15 + 1) = v17;
  *(v15 + 56) = *(a1 + 112);
  v18 = *(a1 + 96);
  *(v15 + 5) = *(a1 + 80);
  *(v15 + 6) = v18;
  *(v15 + 4) = *(a1 + 64);
  *(v3 + *((*v8 & *v3) + 0x80)) = 0;
  v19 = (v3 + *((*v8 & *v3) + 0x88));
  *v19 = v12;
  v19[1] = v14;
  v21.receiver = v3;
  v21.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D948, &qword_21DC1A240);
  return objc_msgSendSuper2(&v21, sel_init);
}

id sub_21D538174(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  ObjectType = swift_getObjectType();
  v12 = MEMORY[0x277D85000];
  v13 = (v5 + *((*MEMORY[0x277D85000] & *v5) + 0xF8));
  *v13 = 0;
  v13[1] = 0;
  v14 = (v5 + *((*v12 & *v5) + 0x100));
  *v14 = 0;
  v14[1] = 0;
  v15 = (v5 + *((*v12 & *v5) + 0x108));
  *v15 = a2;
  v15[1] = a3;
  v26 = ObjectType;
  swift_getMetatypeMetadata();
  swift_unknownObjectRetain();
  v16 = sub_21DBFA1AC();
  v18 = v17;
  *(v5 + *((*v12 & *v5) + 0x68)) = 0;
  *(v5 + *((*v12 & *v5) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + *((*v12 & *v5) + 0x90)) = 0;
  v19 = (v5 + *((*v12 & *v5) + 0x78));
  v20 = a1[3];
  v19[2] = a1[2];
  v19[3] = v20;
  v21 = a1[1];
  *v19 = *a1;
  v19[1] = v21;
  *(v19 + 105) = *(a1 + 105);
  v22 = a1[6];
  v19[5] = a1[5];
  v19[6] = v22;
  v19[4] = a1[4];
  *(v5 + *((*v12 & *v5) + 0x80)) = 0;
  v23 = (v5 + *((*v12 & *v5) + 0x88));
  *v23 = v16;
  v23[1] = v18;
  v25.receiver = v5;
  v25.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  return objc_msgSendSuper2(&v25, sel_init);
}

id sub_21D538380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = MEMORY[0x277D85000];
  v9 = (v3 + *((*MEMORY[0x277D85000] & *v3) + 0xF8));
  *v9 = 0;
  v9[1] = 0;
  v10 = (v3 + *((*v8 & *v3) + 0x100));
  *v10 = 0;
  v10[1] = 0;
  v11 = (v3 + *((*v8 & *v3) + 0x108));
  *v11 = a2;
  v11[1] = a3;
  v26 = ObjectType;
  swift_getMetatypeMetadata();
  swift_unknownObjectRetain();
  v12 = sub_21DBFA1AC();
  v14 = v13;
  *(v3 + *((*v8 & *v3) + 0x68)) = 0;
  *(v3 + *((*v8 & *v3) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + *((*v8 & *v3) + 0x90)) = 0;
  v15 = v3 + *((*v8 & *v3) + 0x78);
  v16 = *(a1 + 208);
  *(v15 + 12) = *(a1 + 192);
  *(v15 + 13) = v16;
  v15[224] = *(a1 + 224);
  v17 = *(a1 + 144);
  *(v15 + 8) = *(a1 + 128);
  *(v15 + 9) = v17;
  v18 = *(a1 + 176);
  *(v15 + 10) = *(a1 + 160);
  *(v15 + 11) = v18;
  v19 = *(a1 + 80);
  *(v15 + 4) = *(a1 + 64);
  *(v15 + 5) = v19;
  v20 = *(a1 + 112);
  *(v15 + 6) = *(a1 + 96);
  *(v15 + 7) = v20;
  v21 = *(a1 + 16);
  *v15 = *a1;
  *(v15 + 1) = v21;
  v22 = *(a1 + 48);
  *(v15 + 2) = *(a1 + 32);
  *(v15 + 3) = v22;
  *(v3 + *((*v8 & *v3) + 0x80)) = 0;
  v23 = (v3 + *((*v8 & *v3) + 0x88));
  *v23 = v12;
  v23[1] = v14;
  v25.receiver = v3;
  v25.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D9E0, &unk_21DC1A320);
  return objc_msgSendSuper2(&v25, sel_init);
}

uint64_t sub_21D53859C(uint64_t a1)
{
  v2 = sub_21DBF604C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v6 = sub_21DBF516C();
  v8 = v7;
  v29[3] = &type metadata for TTRITablePlainTextContentConfigurationProvider;
  v29[0] = v6;
  v29[1] = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  v29[4] = sub_21D5395CC;
  v29[5] = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v8;
  v29[6] = sub_21D5395D4;
  v29[7] = v10;
  v29[8] = 0;
  v30 = 1;
  v27[3] = &type metadata for TTRITableEmptyContentConfigurationProvider;
  v27[4] = sub_21D539DD0;
  v27[5] = 0;
  v27[6] = sub_21D539DCC;
  v27[7] = 0;
  v27[8] = 0x4010000000000000;
  v28 = 0;
  if (*(a1 + 64) == 1)
  {
    sub_21D539630(v29, v26);
    sub_21D539630(v27, v25);
  }

  else
  {
    memset(v26, 0, 73);
    memset(v25, 0, 73);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D978, &qword_21DC1A278);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21DC10990;
  swift_bridgeObjectRetain_n();
  *(v11 + 32) = sub_21D52E424();
  *(v11 + 40) = &protocol witness table for TTRITableCell<A>;
  *(v11 + 48) = sub_21D52E4C8();
  *(v11 + 56) = &protocol witness table for TTRITableCell<A>;
  *(v11 + 64) = sub_21D52E528();
  *(v11 + 72) = &protocol witness table for TTRITableCell<A>;
  *(v11 + 80) = sub_21D52E5CC(v12);
  *(v11 + 88) = &protocol witness table for TTRITableCell<A>;
  v13 = *(v3 + 104);
  v13(v5, *MEMORY[0x277D44D90], v2);
  v14 = sub_21DBF603C();
  v15 = *(v3 + 8);
  v15(v5, v2);
  if (v14)
  {
    v16 = sub_21D52E62C();
    v17 = &protocol witness table for TTRITableCell<A>;
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  *(v11 + 96) = v16;
  *(v11 + 104) = v17;
  v13(v5, *MEMORY[0x277D44DC0], v2);
  v18 = sub_21DBF603C();
  v15(v5, v2);
  if (v18)
  {
    v19 = sub_21D52E68C();
    v20 = &protocol witness table for TTRITableCell<A>;
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  *(v11 + 112) = v19;
  *(v11 + 120) = v20;
  v24[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EB50, &unk_21DC1A280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5DDC0, &qword_21DC098D0);
  sub_21D0D0F1C(&unk_27CE5EB60, &unk_27CE5EB50, &unk_21DC1A280, MEMORY[0x277D83970]);
  v21 = sub_21DBFA41C();

  type metadata accessor for TTRITableSection();
  v22 = swift_allocObject();
  *(v22 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v22 + 200) = 0;
  *(v22 + 208) = 0;
  *(v22 + 48) = 0u;
  *(v22 + 64) = 0u;
  *(v22 + 80) = 0u;
  *(v22 + 89) = 0u;
  *(v22 + 32) = 0u;
  *(v22 + 128) = 0u;
  *(v22 + 144) = 0u;
  *(v22 + 160) = 0u;
  *(v22 + 169) = 0u;
  *(v22 + 112) = 0u;
  *(v22 + 216) = 1;
  swift_beginAccess();
  sub_21D313A24(v26, v22 + 32);
  swift_endAccess();
  swift_beginAccess();
  sub_21D313A24(v25, v22 + 112);
  swift_endAccess();
  *(v22 + 192) = v21;
  sub_21D5395DC(v27);
  sub_21D5395DC(v29);
  return v22;
}

void *sub_21D538A94(uint64_t a1, __int128 *a2)
{
  v44 = *a2;
  LOBYTE(v3) = *(a2 + 16);
  if (qword_280D1BAA8 != -1)
  {
LABEL_24:
    swift_once();
  }

  v4 = sub_21DBF516C();
  v6 = v5;
  v7 = sub_21D2138B4(0, 1, 1, MEMORY[0x277D84F90]);
  v9 = v7[2];
  v8 = v7[3];
  v10 = v8 >> 1;
  v11 = v9 + 1;
  if (v8 >> 1 <= v9)
  {
    v7 = sub_21D2138B4((v8 > 1), v9 + 1, 1, v7);
    v8 = v7[3];
    v10 = v8 >> 1;
  }

  v7[2] = v11;
  v12 = &v7[8 * v9];
  v12[4] = v4;
  v12[5] = v6;
  v12[7] = 0;
  v12[8] = 0;
  v12[6] = 0;
  *(v12 + 72) = 0;
  v12[10] = 0;
  v12[11] = 0;
  if (v10 < (v9 + 2))
  {
    v7 = sub_21D2138B4((v8 > 1), v9 + 2, 1, v7);
  }

  v7[2] = v9 + 2;
  v13 = &v7[8 * v11];
  v13[2] = 0u;
  v13[3] = 0u;
  v13[4] = 0u;
  v13[5] = 0u;
  v49 = v7;
  v14 = *(a1 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v43 = v3;
    v48 = MEMORY[0x277D84F90];
    sub_21D18F150(0, v14, 0);
    v15 = v48;
    v3 = (a1 + 48);
    while (1)
    {
      v16 = *(v3 - 2);
      a1 = *(v3 - 1);
      v17 = *v3;
      if (v16 < 0)
      {
        if (__OFSUB__(0, v16))
        {
          __break(1u);
          goto LABEL_24;
        }

        v23 = _s15RemindersUICore21TTRLocalizableStringsO14ReminderDetailO25earlyAlertBeforeCountText5count12intervalUnitSSSi_So015REMDueDateDeltaN0VtFZ_0(-v16, *(v3 - 1));
        v45 = v24;
        v46 = v23;
        v21 = _s15RemindersUICore21TTRLocalizableStringsO14ReminderDetailO19earlyAlertCountText5count12intervalUnitSSSi_So015REMDueDateDeltaM0VtFZ_0(-v16, a1);
      }

      else
      {
        v18 = *(v3 - 1);
        v19 = sub_21DBF516C();
        v45 = v20;
        v46 = v19;
        a1 = v18;
        v21 = sub_21DBF516C();
      }

      v48 = v15;
      v26 = *(v15 + 16);
      v25 = *(v15 + 24);
      if (v26 >= v25 >> 1)
      {
        v42 = v21;
        v28 = v22;
        sub_21D18F150((v25 > 1), v26 + 1, 1);
        v22 = v28;
        v21 = v42;
        v15 = v48;
      }

      *(v15 + 16) = v26 + 1;
      v27 = v15 + (v26 << 6);
      *(v27 + 32) = v46;
      *(v27 + 40) = v45;
      *(v27 + 48) = 0;
      *(v27 + 56) = v16;
      *(v27 + 64) = a1;
      *(v27 + 72) = v17;
      *(v27 + 73) = *v47;
      *(v27 + 76) = *&v47[3];
      *(v27 + 80) = v21;
      *(v27 + 88) = v22;
      v3 += 24;
      if (!--v14)
      {
        LOBYTE(v3) = v43;
        break;
      }
    }
  }

  sub_21D562CDC(v15);
  v29 = v49;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = sub_21D2138B4(0, v49[2] + 1, 1, v49);
  }

  v31 = v29[2];
  v30 = v29[3];
  if (v31 >= v30 >> 1)
  {
    v29 = sub_21D2138B4((v30 > 1), v31 + 1, 1, v29);
  }

  v29[2] = v31 + 1;
  v32 = &v29[8 * v31];
  v32[2] = 0u;
  v32[3] = 0u;
  v32[4] = 0u;
  v32[5] = 0u;
  v33 = sub_21DBF516C();
  v36 = v29[2];
  v35 = v29[3];
  if (v36 >= v35 >> 1)
  {
    v39 = v3;
    v3 = v33;
    v40 = v34;
    v41 = sub_21D2138B4((v35 > 1), v36 + 1, 1, v29);
    v34 = v40;
    v29 = v41;
    v33 = v3;
    LOBYTE(v3) = v39;
  }

  v29[2] = v36 + 1;
  v37 = &v29[8 * v36];
  v37[4] = v33;
  v37[5] = v34;
  v37[6] = 0;
  *(v37 + 7) = v44;
  *(v37 + 72) = v3;
  *(v37 + 73) = v48;
  *(v37 + 19) = *(&v48 + 3);
  v37[10] = 0;
  v37[11] = 0;
  return v29;
}

void *sub_21D538F58(char a1)
{
  v45 = objc_opt_self();
  v2 = [v45 localizedDescriptionForRepeatType_];
  v3 = sub_21DBFA16C();
  v5 = v4;

  v6 = MEMORY[0x277D84F90];
  v7 = sub_21D213A0C(0, 1, 1, MEMORY[0x277D84F90]);
  v9 = v7[2];
  v8 = v7[3];
  v10 = v8 >> 1;
  v11 = v9 + 1;
  if (v8 >> 1 <= v9)
  {
    v7 = sub_21D213A0C((v8 > 1), v9 + 1, 1, v7);
    v8 = v7[3];
    v10 = v8 >> 1;
  }

  v7[2] = v11;
  v12 = &v7[6 * v9];
  v12[4] = v3;
  v12[5] = v5;
  v13 = 0uLL;
  *(v12 + 3) = 0u;
  *(v12 + 4) = 0u;
  if (v10 < (v9 + 2))
  {
    v44 = sub_21D213A0C((v8 > 1), v9 + 2, 1, v7);
    v13 = 0uLL;
    v7 = v44;
  }

  v7[2] = v9 + 2;
  v14 = &v7[6 * v11];
  v14[3] = v13;
  v14[4] = v13;
  v14[2] = v13;
  v46 = v7;
  if (a1)
  {
    v15 = [v45 localizedDescriptionForRepeatType_];
    v16 = sub_21DBFA16C();
    v18 = v17;

    v20 = v7[2];
    v19 = v7[3];
    if (v20 >= v19 >> 1)
    {
      v7 = sub_21D213A0C((v19 > 1), v20 + 1, 1, v7);
    }

    v7[2] = v20 + 1;
    v21 = &v7[6 * v20];
    v21[4] = v16;
    v21[5] = v18;
    *(v21 + 3) = xmmword_21DC19C40;
    v21[8] = 0;
    v21[9] = 0;
    v46 = v7;
  }

  sub_21D18F170(0, 9, 0);
  v22 = 0x20u;
  v23 = v6;
  do
  {
    v24 = *(&unk_282EA6F18 + v22);
    v25 = [v45 localizedDescriptionForRepeatType_];
    v26 = sub_21DBFA16C();
    v28 = v27;

    v30 = *(v23 + 16);
    v29 = *(v23 + 24);
    if (v30 >= v29 >> 1)
    {
      sub_21D18F170((v29 > 1), v30 + 1, 1);
    }

    *(v23 + 16) = v30 + 1;
    v31 = (v23 + 48 * v30);
    v31[4] = v26;
    v31[5] = v28;
    v31[6] = 0;
    v31[7] = v24;
    v31[8] = 0;
    v31[9] = 0;
    v22 += 8;
  }

  while (v22 != 104);
  sub_21D562DE0(v23);
  v32 = v46;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v32 = sub_21D213A0C(0, v46[2] + 1, 1, v46);
  }

  v34 = v32[2];
  v33 = v32[3];
  if (v34 >= v33 >> 1)
  {
    v32 = sub_21D213A0C((v33 > 1), v34 + 1, 1, v32);
  }

  v32[2] = v34 + 1;
  v35 = &v32[6 * v34];
  v35[2] = 0u;
  v35[3] = 0u;
  v35[4] = 0u;
  v36 = [v45 localizedDescriptionForRepeatType_];
  v37 = sub_21DBFA16C();
  v39 = v38;

  v41 = v32[2];
  v40 = v32[3];
  if (v41 >= v40 >> 1)
  {
    v32 = sub_21D213A0C((v40 > 1), v41 + 1, 1, v32);
  }

  v32[2] = v41 + 1;
  v42 = &v32[6 * v41];
  v42[4] = v37;
  v42[5] = v39;
  *(v42 + 3) = xmmword_21DC1A0F0;
  v42[8] = 0;
  v42[9] = 0;
  return v32;
}

uint64_t sub_21D5392E0(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 == 1)
  {
    v17 = 0;
    v2 = 0x4010000000000000;
    v3 = sub_21D539DCC;
    v4 = sub_21D539DD0;
    v5 = &type metadata for TTRITableEmptyContentConfigurationProvider;
  }

  else
  {
    v5 = 0;
    v4 = 0;
    v3 = 0;
    v2 = 0;
    v17 = 0;
    memset(v16, 0, 24);
  }

  v16[3] = v5;
  v16[4] = v4;
  v16[5] = 0;
  v16[6] = v3;
  v16[7] = 0;
  v16[8] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EB30, &unk_21DC0CA60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_21DC08D10;
  *(v6 + 32) = sub_21D52E74C();
  *(v6 + 40) = &protocol witness table for TTRITableCell<A>;
  *(v6 + 48) = sub_21D52E7AC();
  *(v6 + 56) = &protocol witness table for TTRITableCell<A>;
  *(v6 + 64) = sub_21D52E80C();
  *(v6 + 72) = &protocol witness table for TTRITableCell<A>;
  v15 = v6;
  if (sub_21D52E86C())
  {
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_21DC0AFB0;
    *(v7 + 32) = sub_21D52E8E4();
    *(v7 + 40) = &protocol witness table for TTRITableCell<A>;
    *(v7 + 48) = sub_21D52E944();
    *(v7 + 56) = &protocol witness table for TTRITableCell<A>;
    *(v7 + 64) = sub_21D52E9A4();
    *(v7 + 72) = &protocol witness table for TTRITableCell<A>;
    *(v7 + 80) = sub_21D52EA04(v8);
    v9 = (v7 + 88);
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_21DC08D20;
    *(v7 + 32) = sub_21D52EA64();
    *(v7 + 40) = &protocol witness table for TTRITableCell<A>;
    *(v7 + 48) = sub_21D52EAFC();
    v9 = (v7 + 56);
  }

  *v9 = &protocol witness table for TTRITableCell<A>;
  if (v1)
  {
    sub_21DBD1864(0, 0, v7);
  }

  else
  {
    sub_21D562A50(v7);
  }

  sub_21D0D3954(v16, v14, &qword_27CE5E690, &unk_21DC103B0);
  memset(v13, 0, 73);
  v10 = v15;
  type metadata accessor for TTRITableSection();
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v11 + 200) = 0;
  *(v11 + 208) = 0;
  *(v11 + 48) = 0u;
  *(v11 + 64) = 0u;
  *(v11 + 80) = 0u;
  *(v11 + 89) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 128) = 0u;
  *(v11 + 144) = 0u;
  *(v11 + 160) = 0u;
  *(v11 + 169) = 0u;
  *(v11 + 112) = 0u;
  *(v11 + 216) = 1;
  swift_beginAccess();
  sub_21D313A24(v14, v11 + 32);
  swift_endAccess();
  swift_beginAccess();
  sub_21D313A24(v13, v11 + 112);
  swift_endAccess();
  *(v11 + 192) = v10;
  sub_21D0CF7E0(v16, &qword_27CE5E690, &unk_21DC103B0);
  return v11;
}

uint64_t sub_21D5396B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF9D2C();
  v26 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D5C();
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF9D7C();
  v23 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v21 - v15;
  sub_21D0CE468();
  v21 = sub_21DBFB12C();
  sub_21DBF9D6C();
  sub_21DBF9D9C();
  v22 = *(v11 + 8);
  v22(v13, v10);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  aBlock[4] = sub_21D539A88;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_45;
  v18 = _Block_copy(aBlock);
  sub_21DBF8E0C();

  sub_21DBF9D4C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21D0F1CF8(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
  sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0, MEMORY[0x277D83970]);
  sub_21DBFBCBC();
  v19 = v21;
  MEMORY[0x223D43880](v16, v9, v6, v18);
  _Block_release(v18);

  (*(v26 + 8))(v6, v4);
  (*(v24 + 8))(v9, v25);
  return (v22)(v16, v23);
}

uint64_t sub_21D539AA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0, &unk_21DC17980);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D539B30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D539C50(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for TTRIDatePickerCellContentState(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D539CB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D539D14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_21D539D7C(void *a1, void *a2, void *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  if (a4 >> 1 != 4294967294 || a9 >= 2u)
  {
    sub_21D539DA4(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  }
}

void sub_21D539DA4(void *a1, void *a2, void *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  if (a4 >> 1 != 0xFFFFFFFF || a9 >= 2u)
  {
    sub_21D362050(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  }
}

uint64_t TTRRemindersBoardPresentationTreesManagementPresenterCapability.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRRemindersBoardPresentationTreesManagementPresenterCapability.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D24989C;
}

uint64_t sub_21D539F3C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v26 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A90, &unk_21DC2E2A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  v15 = OBJC_IVAR____TtC15RemindersUICore63TTRRemindersBoardPresentationTreesManagementPresenterCapability_cachedPresentationTrees;
  swift_beginAccess();
  sub_21D53BDA0(v1 + v15, v14);
  v16 = *(v4 + 48);
  if (v16(v14, 1, v3) == 1)
  {
    v25 = a1;
    sub_21D0CF7E0(v14, &qword_27CE58A90, &unk_21DC2E2A0);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v17 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      (*(v17 + 8))(v1, ObjectType, v17);
      swift_unknownObjectRelease();
      v19 = *(v4 + 56);
      v19(v11, 0, 1, v3);
      v20 = v26;
      sub_21D53BE10(v11, v26, type metadata accessor for TTRRemindersBoardPresentationTrees);
    }

    else
    {
      v19 = *(v4 + 56);
      v19(v11, 1, 1, v3);
      v20 = v26;
      sub_21D53B1B4(v26);
      if (v16(v11, 1, v3) != 1)
      {
        sub_21D0CF7E0(v11, &qword_27CE58A90, &unk_21DC2E2A0);
      }
    }

    sub_21D53BE78(v20, v8);
    v19(v8, 0, 1, v3);
    swift_beginAccess();
    sub_21D0F02F4(v8, v1 + v15, &qword_27CE58A90, &unk_21DC2E2A0);
    swift_endAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v21 = *(v1 + 24);
      v22 = swift_getObjectType();
      (*(v21 + 24))(v1, v22, v21);
      swift_unknownObjectRelease();
    }

    a1 = v25;
  }

  else
  {
    v20 = v14;
  }

  return sub_21D53BE10(v20, a1, type metadata accessor for TTRRemindersBoardPresentationTrees);
}

uint64_t TTRRemindersBoardPresentationTreesManagementPresenterCapability.__allocating_init()()
{
  v0 = sub_21DBF5EDC();
  MEMORY[0x28223BE20](v0);
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC15RemindersUICore63TTRRemindersBoardPresentationTreesManagementPresenterCapability_cachedPresentationTrees;
  v3 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v8 = OBJC_IVAR____TtC15RemindersUICore63TTRRemindersBoardPresentationTreesManagementPresenterCapability_deferredAction;
  sub_21D0CE468();
  v4 = sub_21DBFB12C();
  type metadata accessor for TTRDeferredAction();
  v5 = swift_allocObject();
  v5[3] = 0;
  swift_unknownObjectWeakInit();
  v6 = MEMORY[0x277D84F90];
  sub_21D0D8A08(&qword_280D0C860, MEMORY[0x277D44D10], MEMORY[0x277D44D18]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD90, &unk_21DC0F180);
  sub_21D0D0F1C(&qword_280D0C3D0, &unk_27CE5CD90, &unk_21DC0F180, MEMORY[0x277D83970]);
  sub_21DBFBCBC();
  sub_21DBF5EFC();
  swift_allocObject();
  v5[5] = sub_21DBF5EEC();
  v5[6] = v6;
  v5[4] = v4;
  *(v1 + v8) = v5;
  *(v1 + OBJC_IVAR____TtC15RemindersUICore63TTRRemindersBoardPresentationTreesManagementPresenterCapability_deferredUpdateFlags) = 0;
  swift_beginAccess();
  v5[3] = &protocol witness table for TTRRemindersBoardPresentationTreesManagementPresenterCapability;
  swift_unknownObjectWeakAssign();
  return v1;
}

uint64_t TTRRemindersBoardPresentationTreesManagementPresenterCapability.init()()
{
  v1 = v0;
  v2 = sub_21DBF5EDC();
  MEMORY[0x28223BE20](v2);
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC15RemindersUICore63TTRRemindersBoardPresentationTreesManagementPresenterCapability_cachedPresentationTrees;
  v4 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  v9 = OBJC_IVAR____TtC15RemindersUICore63TTRRemindersBoardPresentationTreesManagementPresenterCapability_deferredAction;
  sub_21D0CE468();
  v5 = sub_21DBFB12C();
  type metadata accessor for TTRDeferredAction();
  v6 = swift_allocObject();
  v6[3] = 0;
  swift_unknownObjectWeakInit();
  v7 = MEMORY[0x277D84F90];
  sub_21D0D8A08(&qword_280D0C860, MEMORY[0x277D44D10], MEMORY[0x277D44D18]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD90, &unk_21DC0F180);
  sub_21D0D0F1C(&qword_280D0C3D0, &unk_27CE5CD90, &unk_21DC0F180, MEMORY[0x277D83970]);
  sub_21DBFBCBC();
  sub_21DBF5EFC();
  swift_allocObject();
  v6[5] = sub_21DBF5EEC();
  v6[6] = v7;
  v6[4] = v5;
  *(v1 + v9) = v6;
  *(v1 + OBJC_IVAR____TtC15RemindersUICore63TTRRemindersBoardPresentationTreesManagementPresenterCapability_deferredUpdateFlags) = 0;
  swift_beginAccess();
  v6[3] = &protocol witness table for TTRRemindersBoardPresentationTreesManagementPresenterCapability;
  swift_unknownObjectWeakAssign();
  return v1;
}

double TTRRemindersBoardPresentationTreesManagementPresenterCapability.makeUpdatesForDataModelUpdate(shouldReload:itemIDsToForceUpdate:animated:)@<D0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A90, &unk_21DC2E2A0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtC15RemindersUICore63TTRRemindersBoardPresentationTreesManagementPresenterCapability_cachedPresentationTrees;
  swift_beginAccess();
  sub_21D0F02F4(v11, v4 + v13, &qword_27CE58A90, &unk_21DC2E2A0);
  swift_endAccess();
  if (a1)
  {
    v14 = 2;
  }

  else
  {
    v14 = a3;
  }

  v15 = type metadata accessor for TTRRemindersBoardPresentationTreeUpdates(0);
  sub_21D539F3C(&a4[*(v15 + 20)]);
  *a4 = v14;
  *&a4[*(v15 + 24)] = a2;
  sub_21DBF8E0C();
  return result;
}

uint64_t sub_21D53A8E4(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A90, &unk_21DC2E2A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v39 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DA38, &qword_21DC1A5C0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v39 - v13;
  v15 = type metadata accessor for TTRRemindersBoardCellPresentationStates(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v20 = v17;
    v21 = v1 + OBJC_IVAR____TtC15RemindersUICore63TTRRemindersBoardPresentationTreesManagementPresenterCapability_cachedPresentationTrees;
    swift_beginAccess();
    v22 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
    if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v23 = *(v1 + 24);
        ObjectType = swift_getObjectType();
        (*(v23 + 16))(v1, ObjectType, v23);
        swift_unknownObjectRelease();
        (*(v16 + 56))(v14, 0, 1, v20);
        sub_21D53BE10(v14, v19, type metadata accessor for TTRRemindersBoardCellPresentationStates);
      }

      else
      {
        v27 = *(v16 + 56);
        v42 = v20;
        v27(v14, 1, 1, v20);
        v28 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
        v29 = *(v28 - 8);
        v30 = *(v29 + 56);
        v41 = v29 + 56;
        v30(v11, 1, 1, v28);
        v30(v8, 1, 1, v28);
        v31 = v30;
        v32 = sub_21D1782FC(MEMORY[0x277D84F90]);
        v33 = v42;
        v39 = *(v42 + 28);
        v40 = v32;
        v31(&v19[v39], 1, 1, v28);
        v34 = *(v33 + 32);
        v31(&v19[v34], 1, 1, v28);
        *v19 = 0;
        v19[2] = 0;
        sub_21D0F02F4(v11, &v19[v39], &qword_27CE5FB90, &unk_21DC09290);
        sub_21D0F02F4(v8, &v19[v34], &qword_27CE5FB90, &unk_21DC09290);
        v35 = v42;
        v36 = MEMORY[0x277D84FA0];
        *&v19[*(v42 + 36)] = MEMORY[0x277D84FA0];
        v37 = &v19[*(v35 + 40)];
        *v37 = 3;
        *(v37 + 1) = v40;
        *&v19[*(v35 + 44)] = v36;
        if ((*(v16 + 48))(v14, 1) != 1)
        {
          sub_21D0CF7E0(v14, &qword_27CE5DA38, &qword_21DC1A5C0);
        }
      }

      sub_21D53BD3C(v19, v21 + *(v22 + 28));
    }
  }

  else
  {
    v25 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
    (*(*(v25 - 8) + 56))(v5, 1, 1, v25);
    v26 = OBJC_IVAR____TtC15RemindersUICore63TTRRemindersBoardPresentationTreesManagementPresenterCapability_cachedPresentationTrees;
    swift_beginAccess();
    sub_21D0F02F4(v5, v1 + v26, &qword_27CE58A90, &unk_21DC2E2A0);
  }

  return swift_endAccess();
}

uint64_t TTRRemindersBoardPresentationTreesManagementPresenterCapability.makeUpdatesForMoves()@<X0>(_BYTE *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A90, &unk_21DC2E2A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC15RemindersUICore63TTRRemindersBoardPresentationTreesManagementPresenterCapability_cachedPresentationTrees;
  swift_beginAccess();
  sub_21D0F02F4(v5, v1 + v7, &qword_27CE58A90, &unk_21DC2E2A0);
  swift_endAccess();
  v8 = type metadata accessor for TTRRemindersBoardPresentationTreeUpdates(0);
  result = sub_21D539F3C(&a1[*(v8 + 20)]);
  *a1 = 1;
  *&a1[*(v8 + 24)] = MEMORY[0x277D84FA0];
  return result;
}

uint64_t TTRRemindersBoardPresentationTreesManagementPresenterCapability.makeUpdatesForUpdatedItems(_:)@<X0>(_BYTE *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3B0, &qword_21DC1A330);
  type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  sub_21D0D0F1C(&qword_280D0C3E8, &qword_27CE5A3B0, &qword_21DC1A330, MEMORY[0x277D83970]);
  sub_21D0D8A08(&qword_280D19570, type metadata accessor for TTRRemindersListViewModel.ItemID, protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
  v2 = sub_21DBFA42C();
  v3 = type metadata accessor for TTRRemindersBoardPresentationTreeUpdates(0);
  result = sub_21D539F3C(&a1[*(v3 + 20)]);
  *a1 = 4;
  *&a1[*(v3 + 24)] = v2;
  return result;
}

uint64_t sub_21D53B050@<X0>(char *a2@<X8>)
{
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(a2);
  v3 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  return (*(*(v3 - 8) + 56))(a2, 0, 1, v3);
}

uint64_t TTRRemindersBoardPresentationTreesManagementPresenterCapability.makeUpdatesForReloadingView()@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for TTRRemindersBoardPresentationTreeUpdates(0);
  result = sub_21D539F3C(&a1[*(v2 + 20)]);
  *a1 = 2;
  *&a1[*(v2 + 24)] = MEMORY[0x277D84FA0];
  return result;
}

Swift::Void __swiftcall TTRRemindersBoardPresentationTreesManagementPresenterCapability.scheduleUpdate(for:)(RemindersUICore::TTRRemindersBoardPresentationTreesManagementPresenterCapability::DeferredUpdateFlags a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore63TTRRemindersBoardPresentationTreesManagementPresenterCapability_deferredUpdateFlags);
  v3 = v2 | *a1.rawValue;
  *(v1 + OBJC_IVAR____TtC15RemindersUICore63TTRRemindersBoardPresentationTreesManagementPresenterCapability_deferredUpdateFlags) = v3;
  if (v3 != v2 && v3 != 0)
  {
    v5._object = 0x800000021DC5F690;
    v5._countAndFlagsBits = 0xD000000000000013;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v5);
  }
}

uint64_t sub_21D53B1B4@<X0>(void *a1@<X8>)
{
  v25 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v3;
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - v5;
  v7 = type metadata accessor for TTRRemindersBoardCellPresentationStates(0);
  v8 = (v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D84F90];
  v12 = sub_21D178314(MEMORY[0x277D84F90]);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DA40, &qword_21DC1A5C8);
  v14 = swift_allocObject();
  v26[0] = v11;
  v27 = MEMORY[0x277D84F98];
  sub_21DB8583C(v11, v26, &v27);
  v15 = v27;
  v14[2] = v26[0];
  v14[3] = v15;
  v14[4] = v12;
  v26[3] = v13;
  v26[4] = sub_21D0D0F1C(&qword_27CE5DA48, &qword_27CE5DA40, &qword_21DC1A5C8, protocol conformance descriptor for TTRMutableTreeStorage<A, B>);
  v26[0] = v14;
  v16 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v17 = *(*(v16 - 8) + 56);
  v17(v6, 1, 1, v16);
  v17(v3, 1, 1, v16);

  v18 = sub_21D1782FC(v11);
  v19 = v8[9];
  v17(&v10[v19], 1, 1, v16);
  v20 = v8[10];
  v17(&v10[v20], 1, 1, v16);
  *v10 = 0;
  v10[2] = 0;
  sub_21D0F02F4(v6, &v10[v19], &qword_27CE5FB90, &unk_21DC09290);
  sub_21D0F02F4(v24, &v10[v20], &qword_27CE5FB90, &unk_21DC09290);
  v21 = MEMORY[0x277D84FA0];
  *&v10[v8[11]] = MEMORY[0x277D84FA0];
  v22 = &v10[v8[12]];
  *v22 = 3;
  *(v22 + 1) = v18;
  *&v10[v8[13]] = v21;
  sub_21DB8FEF8(v26, 0, 0, v10, v25);
}

void sub_21D53B4A0()
{
  v1 = type metadata accessor for TTRRemindersBoardPresentationTreeUpdates(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A90, &unk_21DC2E2A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(v0 + OBJC_IVAR____TtC15RemindersUICore63TTRRemindersBoardPresentationTreesManagementPresenterCapability_deferredUpdateFlags);
  *(v0 + OBJC_IVAR____TtC15RemindersUICore63TTRRemindersBoardPresentationTreesManagementPresenterCapability_deferredUpdateFlags) = 0;
  if (v7)
  {
    if ((v7 & 5) != 0)
    {
      v8 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
      v9 = 1;
      (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
      v10 = OBJC_IVAR____TtC15RemindersUICore63TTRRemindersBoardPresentationTreesManagementPresenterCapability_cachedPresentationTrees;
      swift_beginAccess();
      sub_21D0F02F4(v6, v0 + v10, &qword_27CE58A90, &unk_21DC2E2A0);
      swift_endAccess();
    }

    else
    {
      if ((v7 & 2) != 0)
      {
        sub_21D53A8E4(1);
      }

      v9 = 3;
    }

    sub_21D539F3C(&v3[*(v1 + 20)]);
    *v3 = v9;
    *&v3[*(v1 + 24)] = MEMORY[0x277D84FA0];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v0 + 24);
      ObjectType = swift_getObjectType();
      (*(v11 + 32))(v0, v3, ObjectType, v11);
      swift_unknownObjectRelease();
    }

    sub_21D53B990(v3);
  }
}

uint64_t TTRRemindersBoardPresentationTreesManagementPresenterCapability.deinit()
{
  sub_21D157444(v0 + 16);
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore63TTRRemindersBoardPresentationTreesManagementPresenterCapability_cachedPresentationTrees, &qword_27CE58A90, &unk_21DC2E2A0);

  return v0;
}

uint64_t TTRRemindersBoardPresentationTreesManagementPresenterCapability.__deallocating_deinit()
{
  sub_21D157444(v0 + 16);
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore63TTRRemindersBoardPresentationTreesManagementPresenterCapability_cachedPresentationTrees, &qword_27CE58A90, &unk_21DC2E2A0);

  return swift_deallocClassInstance();
}

void TTRRemindersBoardPresentationTreesManagementPresenterCapability.deferredActionPerform(_:reason:)()
{
  v1 = type metadata accessor for TTRRemindersBoardPresentationTreeUpdates(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A90, &unk_21DC2E2A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(v0 + OBJC_IVAR____TtC15RemindersUICore63TTRRemindersBoardPresentationTreesManagementPresenterCapability_deferredUpdateFlags);
  *(v0 + OBJC_IVAR____TtC15RemindersUICore63TTRRemindersBoardPresentationTreesManagementPresenterCapability_deferredUpdateFlags) = 0;
  if (v7)
  {
    if ((v7 & 5) != 0)
    {
      v8 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
      v9 = 1;
      (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
      v10 = OBJC_IVAR____TtC15RemindersUICore63TTRRemindersBoardPresentationTreesManagementPresenterCapability_cachedPresentationTrees;
      swift_beginAccess();
      sub_21D0F02F4(v6, v0 + v10, &qword_27CE58A90, &unk_21DC2E2A0);
      swift_endAccess();
    }

    else
    {
      if ((v7 & 2) != 0)
      {
        sub_21D53A8E4(1);
      }

      v9 = 3;
    }

    sub_21D539F3C(&v3[*(v1 + 20)]);
    *v3 = v9;
    *&v3[*(v1 + 24)] = MEMORY[0x277D84FA0];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v0 + 24);
      ObjectType = swift_getObjectType();
      (*(v11 + 32))(v0, v3, ObjectType, v11);
      swift_unknownObjectRelease();
    }

    sub_21D53B990(v3);
  }
}

uint64_t sub_21D53B990(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersBoardPresentationTreeUpdates(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21D53B9F0()
{
  result = qword_27CE5DA00;
  if (!qword_27CE5DA00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersBoardPresentationTreesManagementPresenterCapability.DeferredUpdateFlags, &type metadata for TTRRemindersBoardPresentationTreesManagementPresenterCapability.DeferredUpdateFlags, v0, v1);
    atomic_store(result, &qword_27CE5DA00);
  }

  return result;
}

unint64_t sub_21D53BA48()
{
  result = qword_27CE5DA08;
  if (!qword_27CE5DA08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersBoardPresentationTreesManagementPresenterCapability.DeferredUpdateFlags, &type metadata for TTRRemindersBoardPresentationTreesManagementPresenterCapability.DeferredUpdateFlags, v0, v1);
    atomic_store(result, &qword_27CE5DA08);
  }

  return result;
}

unint64_t sub_21D53BAA0()
{
  result = qword_27CE5DA10;
  if (!qword_27CE5DA10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersBoardPresentationTreesManagementPresenterCapability.DeferredUpdateFlags, &type metadata for TTRRemindersBoardPresentationTreesManagementPresenterCapability.DeferredUpdateFlags, v0, v1);
    atomic_store(result, &qword_27CE5DA10);
  }

  return result;
}

unint64_t sub_21D53BAF8()
{
  result = qword_27CE5DA18;
  if (!qword_27CE5DA18)
  {
    result = swift_getWitnessTable("1\nbdH\x1B\b", &type metadata for TTRRemindersBoardPresentationTreesManagementPresenterCapability.DeferredUpdateFlags, v0, v1);
    atomic_store(result, &qword_27CE5DA18);
  }

  return result;
}

uint64_t type metadata accessor for TTRRemindersBoardPresentationTreesManagementPresenterCapability(uint64_t a1)
{
  result = qword_27CE5DA20;
  if (!qword_27CE5DA20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21D53BBF0(uint64_t a1)
{
  sub_21D53BCD4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21D53BCD4(uint64_t a1)
{
  if (!qword_27CE5DA30)
  {
    type metadata accessor for TTRRemindersBoardPresentationTrees(255);
    v1 = sub_21DBFBA8C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CE5DA30);
    }
  }
}

uint64_t sub_21D53BD3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersBoardCellPresentationStates(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D53BDA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A90, &unk_21DC2E2A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D53BE10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D53BE78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D53BEDC()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5DA50);
  v1 = __swift_project_value_buffer(v0, qword_27CE5DA50);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D53BFA4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v23 = a1;
  v24 = a2;
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_21DBF84BC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CE569A0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, qword_27CE5DA50);
  (*(v12 + 16))(v14, v15, v11);
  v16 = *(v3 + 24);
  v17 = *(v3 + 32);
  sub_21D53C300(a3, v7);
  v18 = sub_21DBF66FC();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v7, 1, v18) == 1)
  {
    v20 = 1;
  }

  else
  {
    sub_21DBF66EC();
    (*(v19 + 8))(v7, v18);
    v20 = 0;
  }

  v21 = sub_21DBF54CC();
  (*(*(v21 - 8) + 56))(v10, v20, 1, v21);
  sub_21DAEAF90(v16, v17, v23, v24, v10);
  sub_21D0CF7E0(v10, &qword_27CE5EA20, &qword_21DC0D4A0);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_21D53C29C()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_21D53C300(uint64_t a1, uint64_t a2)
{
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_21D53C374(void (*a1)(uint64_t), uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v7 = v4;
  if (v4)
  {
    v5 = [v4 children];
    sub_21D0D8CF0(0, &qword_27CE5DE90, 0x277D75720);
    v6 = sub_21DBFA5EC();
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  a1(v6);
}

uint64_t _sSo6UIMenuC15RemindersUICoreE12ttr_uncached7options_ABSo0A7OptionsV_ABSgyctFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  aBlock[4] = sub_21D53C5B8;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D67DAF4;
  aBlock[3] = &block_descriptor_46;
  v7 = _Block_copy(aBlock);

  v8 = [v5 elementWithUncachedProvider_];
  _Block_release(v7);
  sub_21D0D8CF0(0, &qword_280D0C1F0, 0x277D75710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21DC09CF0;
  *(v9 + 32) = v8;
  return sub_21DBFB58C();
}

uint64_t sub_21D53C5C0()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5DA68);
  v1 = __swift_project_value_buffer(v0, qword_27CE5DA68);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTREditTodaySectionsInteractor.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTREditTodaySectionsInteractor.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D24989C;
}

uint64_t TTREditTodaySectionsInteractor.sectionOrdering.getter()
{
  v1 = sub_21DBF760C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC15RemindersUICore30TTREditTodaySectionsInteractor_lastFetchResult;
  swift_beginAccess();
  v6 = (*(v2 + 48))(v0 + v5, 1, v1);
  result = 0;
  if (!v6)
  {
    (*(v2 + 16))(v4, v0 + v5, v1);
    v8 = sub_21DBF75FC();
    (*(v2 + 8))(v4, v1);
    return v8;
  }

  return result;
}

uint64_t TTREditTodaySectionsInteractor.__allocating_init(store:undoManager:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  TTREditTodaySectionsInteractor.init(store:undoManager:)(a1, a2);
  return v4;
}

char *TTREditTodaySectionsInteractor.init(store:undoManager:)(void *a1, void *a2)
{
  *(v2 + 3) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 6) = 0;
  v5 = OBJC_IVAR____TtC15RemindersUICore30TTREditTodaySectionsInteractor_lastFetchResult;
  v6 = sub_21DBF760C();
  (*(*(v6 - 8) + 56))(&v2[v5], 1, 1, v6);
  *&v2[OBJC_IVAR____TtC15RemindersUICore30TTREditTodaySectionsInteractor_dataViewMonitor] = 0;
  *(v2 + 4) = a1;
  *(v2 + 5) = a2;
  v7 = a1;
  v8 = a2;
  v9 = sub_21D5512B8(a2, v2, sub_21D53CA2C, 0);

  *(v2 + 6) = v9;

  return v2;
}

uint64_t sub_21D53CA2C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall TTREditTodaySectionsInteractor.start()()
{
  v1 = sub_21DBFB11C();
  v67 = *(v1 - 8);
  v68 = v1;
  MEMORY[0x28223BE20](v1);
  v66 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_21DBFB0BC();
  MEMORY[0x28223BE20](v65);
  v64 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D5C();
  MEMORY[0x28223BE20](v4 - 8);
  v62 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DA90, &unk_21DC1A620);
  MEMORY[0x28223BE20](v6 - 8);
  v57 = &v54 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3D8, &qword_21DC15EF8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v63 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v54 - v12;
  v14 = *(v0 + 32);
  type metadata accessor for TTREditTodaySectionsMonitorableDataView();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v71 = v15;
  v16 = sub_21DBF760C();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v60 = sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  v17 = v14;

  v18 = sub_21DBFB12C();
  v56 = v18;
  sub_21DBF60DC();
  v61 = sub_21DBF60BC();
  v19 = sub_21DBF60AC();
  v55 = v19;
  v70 = *MEMORY[0x277D76648];
  v58 = *MEMORY[0x277D76768];
  v20 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DA98, &qword_21DC1A630);
  v21 = swift_allocObject();
  v22 = *(*v21 + 104);
  v23 = *(v9 + 56);
  v23(v21 + v22, 1, 1, v8);
  v24 = (v21 + *(*v21 + 136));
  *v24 = 0;
  v24[1] = 0;
  *(v21 + *(*v21 + 112)) = v18;
  *(v21 + *(*v21 + 120)) = v19;
  sub_21D0D3954(v13, v21 + *(*v21 + 96), &qword_27CE5C3D8, &qword_21DC15EF8);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3D0, &qword_21DC15EF0);
  swift_storeEnumTagMultiPayload();
  v25 = v13;
  v26 = v13;
  v27 = v57;
  sub_21D0D3954(v25, v57, &qword_27CE5C3D8, &qword_21DC15EF8);
  v23(v27, 0, 1, v8);
  swift_beginAccess();
  v28 = v70;
  v29 = v20;
  v56 = v56;
  v55 = v55;
  sub_21D0F02F4(v27, v21 + v22, &qword_27CE5DA90, &unk_21DC1A620);
  swift_endAccess();
  sub_21DBF9D4C();
  v72 = MEMORY[0x277D84F90];
  sub_21D0D9388(&qword_280D17808, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F00, &unk_21DC0D9A0);
  sub_21D0D9418(&qword_280D178C0, &unk_27CE60F00, &unk_21DC0D9A0);
  sub_21DBFBCBC();
  (*(v67 + 104))(v66, *MEMORY[0x277D85260], v68);
  v30 = sub_21DBFB14C();
  v31 = v63;
  sub_21D0D3954(v26, v63, &qword_27CE5C3D8, &qword_21DC15EF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAA0, &qword_21DC1A638);
  v32 = swift_allocObject();
  *(v32 + 72) = 0u;
  *(v32 + 88) = 0u;
  *(v32 + 104) = 0;
  *(v32 + 108) = -1;
  *(v32 + 120) = 0;
  *(v32 + 128) = 1;
  v33 = *(*v32 + 216);
  v34 = swift_slowAlloc();
  *(v32 + v33) = v34;
  *(v32 + *(*v32 + 224)) = 0;
  v35 = v61;
  *(v32 + 16) = v30;
  *(v32 + 24) = v35;
  v36 = v71;
  *(v32 + 32) = v55;
  *(v32 + 40) = v36;
  sub_21D0D3954(v31, v32 + *(*v32 + 208), &qword_27CE5C3D8, &qword_21DC15EF8);
  swift_storeEnumTagMultiPayload();
  *v34 = 0;

  sub_21D0CF7E0(v31, &qword_27CE5C3D8, &qword_21DC15EF8);
  sub_21D0CF7E0(v26, &qword_27CE5C3D8, &qword_21DC15EF8);
  v37 = v58;
  *(v32 + 48) = v70;
  *(v32 + 56) = v37;
  *(v32 + 64) = 1;
  *(v21 + *(*v21 + 128)) = v32;
  v38 = swift_allocObject();
  swift_weakInit();
  v39 = swift_allocObject();
  v40 = v69;
  swift_weakInit();
  v41 = swift_allocObject();
  *(v41 + 16) = v38;
  *(v41 + 24) = v39;
  v42 = *(v32 + 72);
  v43 = *(v32 + 80);
  *(v32 + 72) = sub_21D55164C;
  *(v32 + 80) = v41;

  sub_21D0D0E88(v42, v43);

  v44 = *(v21 + *(*v21 + 128));
  v45 = swift_allocObject();
  swift_weakInit();
  v46 = *(v44 + 88);
  v47 = *(v44 + 96);
  *(v44 + 88) = sub_21D551654;
  *(v44 + 96) = v45;

  sub_21D0D0E88(v46, v47);

  v48 = swift_allocObject();
  swift_weakInit();
  v49 = swift_allocObject();
  swift_weakInit();
  v50 = swift_allocObject();
  *(v50 + 16) = v48;
  *(v50 + 24) = v49;
  v51 = (v21 + *(*v21 + 136));
  v52 = *v51;
  v53 = v51[1];
  *v51 = sub_21D55165C;
  v51[1] = v50;

  sub_21D0D0E88(v52, v53);

  *(v40 + OBJC_IVAR____TtC15RemindersUICore30TTREditTodaySectionsInteractor_dataViewMonitor) = v21;

  sub_21D400F88(1);
}

uint64_t TTREditTodaySectionsMonitorableDataView.__allocating_init(store:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t TTREditTodaySectionsInteractor.saveNewOrdering(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150, &qword_21DC0D090);
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D53D4AC, 0, 0);
}

uint64_t sub_21D53D4AC(uint64_t a1)
{
  v2 = v1[4];
  v3 = v1[2];
  v4 = *(v1[3] + 32);
  sub_21DBFA85C();
  v5 = sub_21DBFA89C();
  (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;
  v6[5] = v3;
  v7 = v4;
  sub_21DBF8E0C();
  v8 = sub_21D392FF0(0, 0, v2, &unk_21DC1A658, v6);
  v1[5] = v8;
  sub_21D0CF7E0(v2, &unk_27CE5F150, &qword_21DC0D090);
  v9 = swift_task_alloc();
  v1[6] = v9;
  *v9 = v1;
  v9[1] = sub_21D53D620;
  v10 = MEMORY[0x277D839B0];

  return MEMORY[0x282200460](v1 + 7, v8, v10);
}

uint64_t sub_21D53D620()
{

  return MEMORY[0x2822009F8](sub_21D53D71C, 0, 0);
}

uint64_t sub_21D53D71C()
{

  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_21D53D78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  v6 = sub_21DBFB32C();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v7 = sub_21DBFAE6C();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D53D8AC, 0, 0);
}

uint64_t sub_21D53D8AC()
{
  v39 = v0;
  if (qword_27CE569A8 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF84BC();
  *(v0 + 120) = __swift_project_value_buffer(v1, qword_27CE5DA68);
  v2 = sub_21DBF84AC();
  v3 = sub_21DBFAEDC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21D0C9000, v2, v3, "TTREditTodaySectionsInteractor: save new ordering", v4, 2u);
    MEMORY[0x223D46520](v4, -1, -1);
  }

  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 96);

  (*(v6 + 104))(v5, *MEMORY[0x277D459E0], v7);
  v8 = sub_21DBFB73C();
  *(v0 + 128) = v8;
  v19 = *(v0 + 56);
  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  v20 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  *(v0 + 136) = v20;
  v21 = [v20 updateSmartList_];
  *(v0 + 144) = v21;
  v22 = [v21 sectionsContextChangeItem];
  *(v0 + 152) = v22;
  if (v22)
  {
    v23 = *(v0 + 64);
    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = *(v0 + 80);
      v38 = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      v28 = *(v25 + 16);
      v26 = v25 + 16;
      v27 = v28;
      v29 = v23 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
      v30 = *(v26 + 56);
      do
      {
        v31 = *(v0 + 88);
        v32 = *(v0 + 72);
        v27(v31, v29, v32);
        sub_21DBFB30C();
        (*(v26 - 8))(v31, v32);
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        v29 += v30;
        --v24;
      }

      while (v24);
    }

    sub_21D0D8CF0(0, &qword_27CE59840, 0x277D44828);
    sub_21DBF80CC();

    sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
    v33 = sub_21DBFB12C();
    *(v0 + 160) = v33;
    v34 = swift_task_alloc();
    *(v0 + 168) = v34;
    *v34 = v0;
    v34[1] = sub_21D53DDF4;

    return MEMORY[0x2821A7AD0](v33);
  }

  else
  {
    v35 = objc_opt_self();
    v36 = sub_21DBFA12C();
    v37 = [v35 internalErrorWithDebugDescription_];

    swift_willThrow();
    v9 = v37;
    v10 = sub_21DBF84AC();
    v11 = sub_21DBFAEBC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v38 = v13;
      *v12 = 136446210;
      swift_getErrorValue();
      v14 = sub_21DBFC75C();
      v16 = sub_21D0CDFB4(v14, v15, &v38);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_21D0C9000, v10, v11, "TTREditTodaySectionsInteractor: failed to save new ordering {error: %{public}s}", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x223D46520](v13, -1, -1);
      MEMORY[0x223D46520](v12, -1, -1);
    }

    else
    {
    }

    **(v0 + 48) = 0;

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_21D53DDF4()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_21D53E028;
  }

  else
  {

    v3 = sub_21D53DF10;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21D53DF10(uint64_t a1)
{
  v2 = sub_21DBF84AC();
  v3 = sub_21DBFAEBC();
  v4 = os_log_type_enabled(v2, v3);
  v6 = *(v1 + 144);
  v5 = *(v1 + 152);
  v7 = *(v1 + 128);
  v8 = *(v1 + 136);
  if (v4)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_21D0C9000, v2, v3, "TTREditTodaySectionsInteractor: new ordering saved", v9, 2u);
    MEMORY[0x223D46520](v9, -1, -1);
  }

  **(v1 + 48) = 1;

  v10 = *(v1 + 8);

  return v10();
}

uint64_t sub_21D53E028()
{
  v17 = v0;
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 128);

  v5 = *(v0 + 176);
  v6 = v5;
  v7 = sub_21DBF84AC();
  v8 = sub_21DBFAEBC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v11 = sub_21DBFC75C();
    v13 = sub_21D0CDFB4(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_21D0C9000, v7, v8, "TTREditTodaySectionsInteractor: failed to save new ordering {error: %{public}s}", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x223D46520](v10, -1, -1);
    MEMORY[0x223D46520](v9, -1, -1);
  }

  else
  {
  }

  **(v0 + 48) = 0;

  v14 = *(v0 + 8);

  return v14();
}

uint64_t TTREditTodaySectionsInteractor.deinit()
{
  sub_21D157444(v0 + 16);

  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore30TTREditTodaySectionsInteractor_lastFetchResult, &qword_27CE5C3D8, &qword_21DC15EF8);

  return v0;
}

uint64_t TTREditTodaySectionsInteractor.__deallocating_deinit()
{
  sub_21D157444(v0 + 16);

  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore30TTREditTodaySectionsInteractor_lastFetchResult, &qword_27CE5C3D8, &qword_21DC15EF8);

  return swift_deallocClassInstance();
}

uint64_t sub_21D53E2E8()
{
  v1 = sub_21DBF760C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC15RemindersUICore30TTREditTodaySectionsInteractor_lastFetchResult;
  swift_beginAccess();
  v6 = (*(v2 + 48))(v0 + v5, 1, v1);
  result = 0;
  if (!v6)
  {
    (*(v2 + 16))(v4, v0 + v5, v1);
    v8 = sub_21DBF75FC();
    (*(v2 + 8))(v4, v1);
    return v8;
  }

  return result;
}

uint64_t sub_21D53E424(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21D1237C4;

  return TTREditTodaySectionsInteractor.saveNewOrdering(_:)(a1);
}

uint64_t TTREditTodaySectionsMonitorableDataView.fetchData(from:userInteractive:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBF760C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_21DBF761C();
  if (!v1)
  {
    (*(v4 + 32))(a1, v6, v3);
    return (*(v4 + 56))(a1, 0, 1, v3);
  }

  return result;
}

uint64_t TTREditTodaySectionsMonitorableDataView.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21D53E658(uint64_t a1)
{
  v3 = sub_21DBF760C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_21DBF761C();
  if (!v1)
  {
    (*(v4 + 32))(a1, v6, v3);
    return (*(v4 + 56))(a1, 0, 1, v3);
  }

  return result;
}

uint64_t sub_21D53E768(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585C8, &unk_21DC09580);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585D0, &unk_21DC15F10);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_21D0EB8DC(a1, v1 + v9, &qword_27CE585D0, &unk_21DC15F10);
  swift_endAccess();
  sub_21D0CF7E0(a1, &qword_27CE585D0, &unk_21DC15F10);
  sub_21D0D3954(v1 + v9, v8, &qword_27CE585D0, &unk_21DC15F10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21D0CF7E0(v8, &qword_27CE585D0, &unk_21DC15F10);
  }

  sub_21D0D523C(v8, v5, &qword_27CE585A0, &qword_21DC19750);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A0, &qword_21DC19750);
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_21D0F02F4(v5, v1 + v12, &qword_27CE585C8, &unk_21DC09580);
  return swift_endAccess();
}

uint64_t sub_21D53E99C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D390, &unk_21DC1A7E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C208, &qword_21DC19560);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_21D0EB8DC(a1, v1 + v9, &qword_27CE5C208, &qword_21DC19560);
  swift_endAccess();
  sub_21D0CF7E0(a1, &qword_27CE5C208, &qword_21DC19560);
  sub_21D0D3954(v1 + v9, v8, &qword_27CE5C208, &qword_21DC19560);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21D0CF7E0(v8, &qword_27CE5C208, &qword_21DC19560);
  }

  sub_21D0D523C(v8, v5, &qword_27CE5C210, &qword_21DC15D30);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C210, &qword_21DC15D30);
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_21D0F02F4(v5, v1 + v12, &qword_27CE5D390, &unk_21DC1A7E0);
  return swift_endAccess();
}

uint64_t sub_21D53EBD0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3D0, &unk_21DC195B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C250, &unk_21DC15D70);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_21D0EB8DC(a1, v1 + v9, &qword_27CE5C250, &unk_21DC15D70);
  swift_endAccess();
  sub_21D0CF7E0(a1, &qword_27CE5C250, &unk_21DC15D70);
  sub_21D0D3954(v1 + v9, v8, &qword_27CE5C250, &unk_21DC15D70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21D0CF7E0(v8, &qword_27CE5C250, &unk_21DC15D70);
  }

  sub_21D0D523C(v8, v5, &qword_27CE5C258, &qword_21DC377B0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C258, &qword_21DC377B0);
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_21D0F02F4(v5, v1 + v12, &qword_27CE5D3D0, &unk_21DC195B0);
  return swift_endAccess();
}

uint64_t sub_21D53EE04(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3E8, &qword_21DC34290);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C268, &qword_21DC195E0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_21D0EB8DC(a1, v1 + v9, &qword_27CE5C268, &qword_21DC195E0);
  swift_endAccess();
  sub_21D0CF7E0(a1, &qword_27CE5C268, &qword_21DC195E0);
  sub_21D0D3954(v1 + v9, v8, &qword_27CE5C268, &qword_21DC195E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21D0CF7E0(v8, &qword_27CE5C268, &qword_21DC195E0);
  }

  sub_21D0D523C(v8, v5, &qword_27CE5C270, &unk_21DC15D90);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C270, &unk_21DC15D90);
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_21D0F02F4(v5, v1 + v12, &qword_27CE5D3E8, &qword_21DC34290);
  return swift_endAccess();
}

uint64_t sub_21D53F038(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C360, &unk_21DC19680);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C340, &unk_21DC1A870);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_21D0EB8DC(a1, v1 + v9, &qword_27CE5C340, &unk_21DC1A870);
  swift_endAccess();
  sub_21D0CF7E0(a1, &qword_27CE5C340, &unk_21DC1A870);
  sub_21D0D3954(v1 + v9, v8, &qword_27CE5C340, &unk_21DC1A870);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21D0CF7E0(v8, &qword_27CE5C340, &unk_21DC1A870);
  }

  sub_21D0D523C(v8, v5, &qword_27CE5C348, &unk_21DC15E70);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C348, &unk_21DC15E70);
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_21D0F02F4(v5, v1 + v12, &qword_27CE5C360, &unk_21DC19680);
  return swift_endAccess();
}

uint64_t sub_21D53F26C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C240, &qword_21DC15D60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C220, &qword_21DC15D40);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_21D0EB8DC(a1, v1 + v9, &qword_27CE5C220, &qword_21DC15D40);
  swift_endAccess();
  sub_21D0CF7E0(a1, &qword_27CE5C220, &qword_21DC15D40);
  sub_21D0D3954(v1 + v9, v8, &qword_27CE5C220, &qword_21DC15D40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21D0CF7E0(v8, &qword_27CE5C220, &qword_21DC15D40);
  }

  sub_21D0D523C(v8, v5, &qword_27CE5C228, &qword_21DC15D48);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C228, &qword_21DC15D48);
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_21D0F02F4(v5, v1 + v12, &qword_27CE5C240, &qword_21DC15D60);
  return swift_endAccess();
}

uint64_t sub_21D53F4A0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2E0, &qword_21DC15E08);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2C0, &qword_21DC19620);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_21D0EB8DC(a1, v1 + v9, &qword_27CE5C2C0, &qword_21DC19620);
  swift_endAccess();
  sub_21D0CF7E0(a1, &qword_27CE5C2C0, &qword_21DC19620);
  sub_21D0D3954(v1 + v9, v8, &qword_27CE5C2C0, &qword_21DC19620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21D0CF7E0(v8, &qword_27CE5C2C0, &qword_21DC19620);
  }

  sub_21D0D523C(v8, v5, &qword_27CE5C2C8, &unk_21DC15DF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2C8, &unk_21DC15DF0);
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_21D0F02F4(v5, v1 + v12, &qword_27CE5C2E0, &qword_21DC15E08);
  return swift_endAccess();
}

uint64_t sub_21D53F6D4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D440, &unk_21DC1A850);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C310, &unk_21DC15E30);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_21D0EB8DC(a1, v1 + v9, &qword_27CE5C310, &unk_21DC15E30);
  swift_endAccess();
  sub_21D0CF7E0(a1, &qword_27CE5C310, &unk_21DC15E30);
  sub_21D0D3954(v1 + v9, v8, &qword_27CE5C310, &unk_21DC15E30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21D0CF7E0(v8, &qword_27CE5C310, &unk_21DC15E30);
  }

  sub_21D0D523C(v8, v5, &qword_27CE5C318, &qword_21DC19660);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C318, &qword_21DC19660);
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_21D0F02F4(v5, v1 + v12, &qword_27CE5D440, &unk_21DC1A850);
  return swift_endAccess();
}

uint64_t sub_21D53F908(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C388, &unk_21DC1A890);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C370, &qword_21DC15E98);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_21D0EB8DC(a1, v1 + v9, &qword_27CE5C370, &qword_21DC15E98);
  swift_endAccess();
  sub_21D0CF7E0(a1, &qword_27CE5C370, &qword_21DC15E98);
  sub_21D0D3954(v1 + v9, v8, &qword_27CE5C370, &qword_21DC15E98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21D0CF7E0(v8, &qword_27CE5C370, &qword_21DC15E98);
  }

  sub_21D0D523C(v8, v5, &qword_27CE5C378, &unk_21DC15EA0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C378, &unk_21DC15EA0);
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_21D0F02F4(v5, v1 + v12, &qword_27CE5C388, &unk_21DC1A890);
  return swift_endAccess();
}

uint64_t sub_21D53FB3C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D400, &unk_21DC195F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C280, &unk_21DC15DA0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_21D0EB8DC(a1, v1 + v9, &qword_27CE5C280, &unk_21DC15DA0);
  swift_endAccess();
  sub_21D0CF7E0(a1, &qword_27CE5C280, &unk_21DC15DA0);
  sub_21D0D3954(v1 + v9, v8, &qword_27CE5C280, &unk_21DC15DA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21D0CF7E0(v8, &qword_27CE5C280, &unk_21DC15DA0);
  }

  sub_21D0D523C(v8, v5, &qword_27CE5C288, &unk_21DC1A810);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C288, &unk_21DC1A810);
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_21D0F02F4(v5, v1 + v12, &qword_27CE5D400, &unk_21DC195F0);
  return swift_endAccess();
}

uint64_t sub_21D53FD70(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3C0, &qword_21DC15EE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3A0, &unk_21DC15EC0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_21D0EB8DC(a1, v1 + v9, &qword_27CE5C3A0, &unk_21DC15EC0);
  swift_endAccess();
  sub_21D0CF7E0(a1, &qword_27CE5C3A0, &unk_21DC15EC0);
  sub_21D0D3954(v1 + v9, v8, &qword_27CE5C3A0, &unk_21DC15EC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21D0CF7E0(v8, &qword_27CE5C3A0, &unk_21DC15EC0);
  }

  sub_21D0D523C(v8, v5, &qword_27CE5C3A8, &unk_21DC1DC70);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3A8, &unk_21DC1DC70);
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_21D0F02F4(v5, v1 + v12, &qword_27CE5C3C0, &qword_21DC15EE0);
  return swift_endAccess();
}

uint64_t sub_21D53FFA4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3B8, &qword_21DC19588);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1B8, &unk_21DC15CC0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_21D0EB8DC(a1, v1 + v9, &qword_27CE5C1B8, &unk_21DC15CC0);
  swift_endAccess();
  sub_21D0CF7E0(a1, &qword_27CE5C1B8, &unk_21DC15CC0);
  sub_21D0D3954(v1 + v9, v8, &qword_27CE5C1B8, &unk_21DC15CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21D0CF7E0(v8, &qword_27CE5C1B8, &unk_21DC15CC0);
  }

  sub_21D0D523C(v8, v5, &qword_27CE5C1C0, &qword_21DC19590);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C0, &qword_21DC19590);
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_21D0F02F4(v5, v1 + v12, &qword_27CE5D3B8, &qword_21DC19588);
  return swift_endAccess();
}

uint64_t sub_21D5401D8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1F8, &qword_21DC15D10);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1D8, &unk_21DC15CF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_21D0EB8DC(a1, v1 + v9, &qword_27CE5C1D8, &unk_21DC15CF0);
  swift_endAccess();
  sub_21D0CF7E0(a1, &qword_27CE5C1D8, &unk_21DC15CF0);
  sub_21D0D3954(v1 + v9, v8, &qword_27CE5C1D8, &unk_21DC15CF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21D0CF7E0(v8, &qword_27CE5C1D8, &unk_21DC15CF0);
  }

  sub_21D0D523C(v8, v5, &qword_27CE5C1E0, &unk_21DC19260);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1E0, &unk_21DC19260);
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_21D0F02F4(v5, v1 + v12, &qword_27CE5C1F8, &qword_21DC15D10);
  return swift_endAccess();
}

uint64_t sub_21D54040C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DA90, &unk_21DC1A620);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3D0, &qword_21DC15EF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_21D0EB8DC(a1, v1 + v9, &qword_27CE5C3D0, &qword_21DC15EF0);
  swift_endAccess();
  sub_21D0CF7E0(a1, &qword_27CE5C3D0, &qword_21DC15EF0);
  sub_21D0D3954(v1 + v9, v8, &qword_27CE5C3D0, &qword_21DC15EF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21D0CF7E0(v8, &qword_27CE5C3D0, &qword_21DC15EF0);
  }

  sub_21D0D523C(v8, v5, &qword_27CE5C3D8, &qword_21DC15EF8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3D8, &qword_21DC15EF8);
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_21D0F02F4(v5, v1 + v12, &qword_27CE5DA90, &unk_21DC1A620);
  return swift_endAccess();
}

uint64_t sub_21D540640(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D428, &unk_21DC19630);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2F0, &qword_21DC15E18);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_21D0EB8DC(a1, v1 + v9, &qword_27CE5C2F0, &qword_21DC15E18);
  swift_endAccess();
  sub_21D0CF7E0(a1, &qword_27CE5C2F0, &qword_21DC15E18);
  sub_21D0D3954(v1 + v9, v8, &qword_27CE5C2F0, &qword_21DC15E18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21D0CF7E0(v8, &qword_27CE5C2F0, &qword_21DC15E18);
  }

  sub_21D0D523C(v8, v5, &qword_27CE5C2F8, &unk_21DC15E20);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2F8, &unk_21DC15E20);
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_21D0F02F4(v5, v1 + v12, &qword_27CE5D428, &unk_21DC19630);
  return swift_endAccess();
}

uint64_t sub_21D540874(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF9D2C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D5C();
  v22 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3F0, &unk_21DC15F20);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = *(result + *(*result + 112));
    v20 = v4;
    v21 = v7;
    v15 = result;
    sub_21D0D3954(a1, v13, &qword_27CE5C3F0, &unk_21DC15F20);
    v16 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    sub_21D0D523C(v13, v17 + v16, &qword_27CE5C3F0, &unk_21DC15F20);
    aBlock[4] = sub_21D554124;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_317;
    v18 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v23 = MEMORY[0x277D84F90];
    sub_21D0D9388(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v9, v6, v18);
    _Block_release(v18);
    (*(v20 + 8))(v6, v3);
    (*(v22 + 8))(v9, v21);
  }

  return result;
}

uint64_t sub_21D540C44(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF9D2C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D5C();
  v22 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C218, &qword_21DC15D38);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = *(result + *(*result + 112));
    v20 = v4;
    v21 = v7;
    v15 = result;
    sub_21D0D3954(a1, v13, &qword_27CE5C218, &qword_21DC15D38);
    v16 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    sub_21D0D523C(v13, v17 + v16, &qword_27CE5C218, &qword_21DC15D38);
    aBlock[4] = sub_21D552CBC;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_65_0;
    v18 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v23 = MEMORY[0x277D84F90];
    sub_21D0D9388(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v9, v6, v18);
    _Block_release(v18);
    (*(v20 + 8))(v6, v3);
    (*(v22 + 8))(v9, v21);
  }

  return result;
}

uint64_t sub_21D541014(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF9D2C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D5C();
  v22 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C260, &unk_21DC15D80);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = *(result + *(*result + 112));
    v20 = v4;
    v21 = v7;
    v15 = result;
    sub_21D0D3954(a1, v13, &qword_27CE5C260, &unk_21DC15D80);
    v16 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    sub_21D0D523C(v13, v17 + v16, &qword_27CE5C260, &unk_21DC15D80);
    aBlock[4] = sub_21D552D34;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_77;
    v18 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v23 = MEMORY[0x277D84F90];
    sub_21D0D9388(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v9, v6, v18);
    _Block_release(v18);
    (*(v20 + 8))(v6, v3);
    (*(v22 + 8))(v9, v21);
  }

  return result;
}

uint64_t sub_21D5413E4(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF9D2C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D5C();
  v22 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C278, &unk_21DC1A800);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = *(result + *(*result + 112));
    v20 = v4;
    v21 = v7;
    v15 = result;
    sub_21D0D3954(a1, v13, &qword_27CE5C278, &unk_21DC1A800);
    v16 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    sub_21D0D523C(v13, v17 + v16, &qword_27CE5C278, &unk_21DC1A800);
    aBlock[4] = sub_21D55386C;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_110_0;
    v18 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v23 = MEMORY[0x277D84F90];
    sub_21D0D9388(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v9, v6, v18);
    _Block_release(v18);
    (*(v20 + 8))(v6, v3);
    (*(v22 + 8))(v9, v21);
  }

  return result;
}

uint64_t sub_21D5417B4(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF9D2C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D5C();
  v22 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C368, &qword_21DC15E90);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = *(result + *(*result + 112));
    v20 = v4;
    v21 = v7;
    v15 = result;
    sub_21D0D3954(a1, v13, &qword_27CE5C368, &qword_21DC15E90);
    v16 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    sub_21D0D523C(v13, v17 + v16, &qword_27CE5C368, &qword_21DC15E90);
    aBlock[4] = sub_21D553A1C;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_218;
    v18 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v23 = MEMORY[0x277D84F90];
    sub_21D0D9388(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v9, v6, v18);
    _Block_release(v18);
    (*(v20 + 8))(v6, v3);
    (*(v22 + 8))(v9, v21);
  }

  return result;
}

uint64_t sub_21D541B84(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF9D2C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D5C();
  v22 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C248, &qword_21DC15D68);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = *(result + *(*result + 112));
    v20 = v4;
    v21 = v7;
    v15 = result;
    sub_21D0D3954(a1, v13, &qword_27CE5C248, &qword_21DC15D68);
    v16 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    sub_21D0D523C(v13, v17 + v16, &qword_27CE5C248, &qword_21DC15D68);
    aBlock[4] = sub_21D552CE4;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_71_1;
    v18 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v23 = MEMORY[0x277D84F90];
    sub_21D0D9388(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v9, v6, v18);
    _Block_release(v18);
    (*(v20 + 8))(v6, v3);
    (*(v22 + 8))(v9, v21);
  }

  return result;
}

uint64_t sub_21D541F54(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF9D2C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D5C();
  v22 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2E8, &qword_21DC15E10);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = *(result + *(*result + 112));
    v20 = v4;
    v21 = v7;
    v15 = result;
    sub_21D0D3954(a1, v13, &qword_27CE5C2E8, &qword_21DC15E10);
    v16 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    sub_21D0D523C(v13, v17 + v16, &qword_27CE5C2E8, &qword_21DC15E10);
    aBlock[4] = sub_21D553944;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_159;
    v18 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v23 = MEMORY[0x277D84F90];
    sub_21D0D9388(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v9, v6, v18);
    _Block_release(v18);
    (*(v20 + 8))(v6, v3);
    (*(v22 + 8))(v9, v21);
  }

  return result;
}

uint64_t sub_21D542324(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF9D2C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D5C();
  v22 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C320, &unk_21DC15E40);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = *(result + *(*result + 112));
    v20 = v4;
    v21 = v7;
    v15 = result;
    sub_21D0D3954(a1, v13, &qword_27CE5C320, &unk_21DC15E40);
    v16 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    sub_21D0D523C(v13, v17 + v16, &qword_27CE5C320, &unk_21DC15E40);
    aBlock[4] = sub_21D5539D4;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_201;
    v18 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v23 = MEMORY[0x277D84F90];
    sub_21D0D9388(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v9, v6, v18);
    _Block_release(v18);
    (*(v20 + 8))(v6, v3);
    (*(v22 + 8))(v9, v21);
  }

  return result;
}

uint64_t sub_21D5426F4(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF9D2C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D5C();
  v22 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C390, &qword_21DC15EB0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = *(result + *(*result + 112));
    v20 = v4;
    v21 = v7;
    v15 = result;
    sub_21D0D3954(a1, v13, &qword_27CE5C390, &qword_21DC15EB0);
    v16 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    sub_21D0D523C(v13, v17 + v16, &qword_27CE5C390, &qword_21DC15EB0);
    aBlock[4] = sub_21D553A64;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_228;
    v18 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v23 = MEMORY[0x277D84F90];
    sub_21D0D9388(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v9, v6, v18);
    _Block_release(v18);
    (*(v20 + 8))(v6, v3);
    (*(v22 + 8))(v9, v21);
  }

  return result;
}

uint64_t sub_21D542AC4(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF9D2C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D5C();
  v22 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C290, &unk_21DC15DB0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = *(result + *(*result + 112));
    v20 = v4;
    v21 = v7;
    v15 = result;
    sub_21D0D3954(a1, v13, &qword_27CE5C290, &unk_21DC15DB0);
    v16 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    sub_21D0D523C(v13, v17 + v16, &qword_27CE5C290, &unk_21DC15DB0);
    aBlock[4] = sub_21D5538D4;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_138_0;
    v18 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v23 = MEMORY[0x277D84F90];
    sub_21D0D9388(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v9, v6, v18);
    _Block_release(v18);
    (*(v20 + 8))(v6, v3);
    (*(v22 + 8))(v9, v21);
  }

  return result;
}

uint64_t sub_21D542E94(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF9D2C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D5C();
  v22 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3C8, &qword_21DC15EE8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = *(result + *(*result + 112));
    v20 = v4;
    v21 = v7;
    v15 = result;
    sub_21D0D3954(a1, v13, &qword_27CE5C3C8, &qword_21DC15EE8);
    v16 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    sub_21D0D523C(v13, v17 + v16, &qword_27CE5C3C8, &qword_21DC15EE8);
    aBlock[4] = sub_21D55403C;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_256;
    v18 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v23 = MEMORY[0x277D84F90];
    sub_21D0D9388(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v9, v6, v18);
    _Block_release(v18);
    (*(v20 + 8))(v6, v3);
    (*(v22 + 8))(v9, v21);
  }

  return result;
}

uint64_t sub_21D543264(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF9D2C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D5C();
  v22 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1D0, &unk_21DC1A7D0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = *(result + *(*result + 112));
    v20 = v4;
    v21 = v7;
    v15 = result;
    sub_21D0D3954(a1, v13, &qword_27CE5C1D0, &unk_21DC1A7D0);
    v16 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    sub_21D0D523C(v13, v17 + v16, &qword_27CE5C1D0, &unk_21DC1A7D0);
    aBlock[4] = sub_21D552C38;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_47;
    v18 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v23 = MEMORY[0x277D84F90];
    sub_21D0D9388(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v9, v6, v18);
    _Block_release(v18);
    (*(v20 + 8))(v6, v3);
    (*(v22 + 8))(v9, v21);
  }

  return result;
}

uint64_t sub_21D543634(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF9D2C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D5C();
  v22 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C398, &qword_21DC15EB8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = *(result + *(*result + 112));
    v20 = v4;
    v21 = v7;
    v15 = result;
    sub_21D0D3954(a1, v13, &qword_27CE5C398, &qword_21DC15EB8);
    v16 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    sub_21D0D523C(v13, v17 + v16, &qword_27CE5C398, &qword_21DC15EB8);
    aBlock[4] = sub_21D553AAC;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_239;
    v18 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v23 = MEMORY[0x277D84F90];
    sub_21D0D9388(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v9, v6, v18);
    _Block_release(v18);
    (*(v20 + 8))(v6, v3);
    (*(v22 + 8))(v9, v21);
  }

  return result;
}

uint64_t sub_21D543A2C(__int128 *a1, uint64_t a2)
{
  v3 = sub_21DBF9D2C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D5C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = *(result + 56);
    v25 = *a1;
    v26 = *(a1 + 16);
    v23 = *(a1 + 24);
    v24 = *(a1 + 40);
    v12 = result;
    v13 = swift_allocObject();
    v14 = a1[1];
    *(v13 + 24) = *a1;
    *(v13 + 16) = v12;
    v19 = v12;
    *(v13 + 40) = v14;
    *(v13 + 50) = *(a1 + 26);
    aBlock[4] = sub_21D553860;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_83_2;
    v18 = _Block_copy(aBlock);

    sub_21D0D3954(&v25, v21, &qword_27CE5DAC8, &unk_21DC41EF0);
    sub_21D0D3954(&v23, v21, &qword_27CE5DAC8, &unk_21DC41EF0);
    sub_21DBF9D4C();
    v21[0] = MEMORY[0x277D84F90];
    sub_21D0D9388(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
    v15 = v7;
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0);
    sub_21DBFBCBC();
    v16 = v18;
    MEMORY[0x223D438F0](0, v10, v6, v18);
    _Block_release(v16);
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v15);
  }

  return result;
}

uint64_t sub_21D543D9C(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF9D2C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D5C();
  v22 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C200, &qword_21DC15D18);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = *(result + *(*result + 112));
    v20 = v4;
    v21 = v7;
    v15 = result;
    sub_21D0D3954(a1, v13, &qword_27CE5C200, &qword_21DC15D18);
    v16 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    sub_21D0D523C(v13, v17 + v16, &qword_27CE5C200, &qword_21DC15D18);
    aBlock[4] = sub_21D552C80;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_37_0;
    v18 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v23 = MEMORY[0x277D84F90];
    sub_21D0D9388(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v9, v6, v18);
    _Block_release(v18);
    (*(v20 + 8))(v6, v3);
    (*(v22 + 8))(v9, v21);
  }

  return result;
}

uint64_t sub_21D54416C(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF9D2C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D5C();
  v22 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3E0, &unk_21DC15F00);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = *(result + *(*result + 112));
    v20 = v4;
    v21 = v7;
    v15 = result;
    sub_21D0D3954(a1, v13, &qword_27CE5C3E0, &unk_21DC15F00);
    v16 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    sub_21D0D523C(v13, v17 + v16, &qword_27CE5C3E0, &unk_21DC15F00);
    aBlock[4] = sub_21D554064;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_284;
    v18 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v23 = MEMORY[0x277D84F90];
    sub_21D0D9388(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v9, v6, v18);
    _Block_release(v18);
    (*(v20 + 8))(v6, v3);
    (*(v22 + 8))(v9, v21);
  }

  return result;
}

uint64_t sub_21D544564(void *a1, char a2, void *a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a7;
  v28 = a8;
  v12 = sub_21DBF9D2C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21DBF9D5C();
  v29 = *(v16 - 8);
  v30 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = *(result + 40);
    v26 = v13;
    v20 = a2 & 1;
    v35 = a2 & 1;
    v21 = a4 & 1;
    v34 = a4 & 1;
    v33 = HIBYTE(a4) & 1;
    v22 = result;
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = a1;
    *(v23 + 32) = v35;
    *(v23 + 40) = a3;
    *(v23 + 48) = v34;
    *(v23 + 49) = v33;
    aBlock[4] = v27;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = v28;
    v24 = _Block_copy(aBlock);

    sub_21D43DE58(a1, v20);
    sub_21D43DE58(a3, v21);
    sub_21DBF9D4C();
    v31 = MEMORY[0x277D84F90];
    sub_21D0D9388(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v18, v15, v24);
    _Block_release(v24);
    (*(v26 + 8))(v15, v12);
    (*(v29 + 8))(v18, v30);
  }

  return result;
}

uint64_t sub_21D54489C(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF9D2C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D5C();
  v22 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C308, &qword_21DC1A830);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = *(result + *(*result + 112));
    v20 = v4;
    v21 = v7;
    v15 = result;
    sub_21D0D3954(a1, v13, &qword_27CE5C308, &qword_21DC1A830);
    v16 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    sub_21D0D523C(v13, v17 + v16, &qword_27CE5C308, &qword_21DC1A830);
    aBlock[4] = sub_21D55398C;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_190;
    v18 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v23 = MEMORY[0x277D84F90];
    sub_21D0D9388(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v9, v6, v18);
    _Block_release(v18);
    (*(v20 + 8))(v6, v3);
    (*(v22 + 8))(v9, v21);
  }

  return result;
}

uint64_t sub_21D544C6C(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF9D2C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D5C();
  v22 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2B8, &unk_21DC15DE0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = *(result + *(*result + 112));
    v20 = v4;
    v21 = v7;
    v15 = result;
    sub_21D0D3954(a1, v13, &qword_27CE5C2B8, &unk_21DC15DE0);
    v16 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    sub_21D0D523C(v13, v17 + v16, &qword_27CE5C2B8, &unk_21DC15DE0);
    aBlock[4] = sub_21D55391C;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_148_0;
    v18 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v23 = MEMORY[0x277D84F90];
    sub_21D0D9388(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v9, v6, v18);
    _Block_release(v18);
    (*(v20 + 8))(v6, v3);
    (*(v22 + 8))(v9, v21);
  }

  return result;
}

void sub_21D54503C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8, &unk_21DC15CD0);
  MEMORY[0x28223BE20](v4 - 8);
  v41 = &v36 - v5;
  v6 = sub_21DBF76AC();
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x28223BE20](v6);
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A0, &qword_21DC19750);
  MEMORY[0x28223BE20](v39);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585D0, &unk_21DC15F10);
  MEMORY[0x28223BE20](v10);
  v12 = (&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  v16 = sub_21DBF9D8C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = (&v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    swift_beginAccess();
    v22 = swift_weakLoadStrong();
    if (v22)
    {
      v38 = v22;
      v23 = *(v21 + *(*v21 + 112));
      *v19 = v23;
      (*(v17 + 104))(v19, *MEMORY[0x277D85200], v16);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      (*(v17 + 8))(v19, v16);
      if (v23)
      {
        v37 = v9;
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3F0, &unk_21DC15F20);
        v26 = *(v25 + 36);
        sub_21D0D3954(a1 + v26, v15, &qword_27CE585D0, &unk_21DC15F10);
        sub_21D53E768(v15);
        sub_21D0D3954(a1 + v26, v12, &qword_27CE585D0, &unk_21DC15F10);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v27 = *v12;
          sub_21D194030(*v12);
        }

        else
        {
          v28 = v37;
          sub_21D0D523C(v12, v37, &qword_27CE585A0, &qword_21DC19750);
          v29 = v41;
          sub_21D0D3954(a1 + *(v25 + 40), v41, &qword_27CE5C1C8, &unk_21DC15CD0);
          v31 = v42;
          v30 = v43;
          if ((*(v42 + 48))(v29, 1, v43) == 1)
          {
            sub_21D0CF7E0(v29, &qword_27CE5C1C8, &unk_21DC15CD0);
            v32 = objc_opt_self();
            v33 = sub_21DBFA12C();
            v34 = [v32 internalErrorWithDebugDescription_];

            sub_21D194030(v34);
          }

          else
          {
            v35 = v40;
            (*(v31 + 32))(v40, v29, v30);
            TTRShowGroupDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(v21, v28, *&v28[*(v39 + 48)], v35);

            (*(v31 + 8))(v35, v30);
          }

          sub_21D0CF7E0(v28, &qword_27CE585A0, &qword_21DC19750);
        }
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

void sub_21D545590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8, &unk_21DC15CD0);
  MEMORY[0x28223BE20](v4 - 8);
  v42 = &v37 - v5;
  v6 = sub_21DBF76AC();
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x28223BE20](v6);
  v41 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C210, &qword_21DC15D30);
  MEMORY[0x28223BE20](v40);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C208, &qword_21DC19560);
  MEMORY[0x28223BE20](v10);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  v16 = sub_21DBF9D8C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = (&v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    swift_beginAccess();
    v22 = swift_weakLoadStrong();
    if (v22)
    {
      v39 = v22;
      v23 = *(v21 + *(*v21 + 112));
      *v19 = v23;
      (*(v17 + 104))(v19, *MEMORY[0x277D85200], v16);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      (*(v17 + 8))(v19, v16);
      if (v23)
      {
        v38 = v9;
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C218, &qword_21DC15D38);
        v26 = *(v25 + 36);
        sub_21D0D3954(a1 + v26, v15, &qword_27CE5C208, &qword_21DC19560);
        sub_21D53E99C(v15);
        sub_21D0D3954(a1 + v26, v12, &qword_27CE5C208, &qword_21DC19560);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v27 = *v12;
          sub_21DB84548(*v12);
        }

        else
        {
          v28 = v38;
          sub_21D0D523C(v12, v38, &qword_27CE5C210, &qword_21DC15D30);
          v29 = v42;
          sub_21D0D3954(a1 + *(v25 + 40), v42, &qword_27CE5C1C8, &unk_21DC15CD0);
          v31 = v43;
          v30 = v44;
          if ((*(v43 + 48))(v29, 1, v44) == 1)
          {
            sub_21D0CF7E0(v29, &qword_27CE5C1C8, &unk_21DC15CD0);
            v32 = objc_opt_self();
            v33 = sub_21DBFA12C();
            v34 = [v32 internalErrorWithDebugDescription_];

            sub_21DB84548(v34);
          }

          else
          {
            v35 = v41;
            v36.n128_f64[0] = (*(v31 + 32))(v41, v29, v30);
            TTRShowAllRemindersDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(v21, v28, *(v28 + *(v40 + 48)), v35, v36);

            (*(v31 + 8))(v35, v30);
          }

          sub_21D0CF7E0(v28, &qword_27CE5C210, &qword_21DC15D30);
        }
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

void sub_21D545AE4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v123 = a1;
  v116 = sub_21DBF719C();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v114 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8, &unk_21DC15CD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v108 - v5;
  v121 = sub_21DBF76AC();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v117 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C258, &qword_21DC377B0);
  MEMORY[0x28223BE20](v118);
  v9 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v119 = &v108 - v11;
  MEMORY[0x28223BE20](v12);
  v122 = (&v108 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C250, &unk_21DC15D70);
  MEMORY[0x28223BE20](v14);
  v16 = (&v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v19 = &v108 - v18;
  v20 = sub_21DBF9D8C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = (&v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    v112 = v9;
    swift_beginAccess();
    v26 = swift_weakLoadStrong();
    if (!v26)
    {

      return;
    }

    v27 = v26;
    v28 = *(v25 + *(*v25 + 112));
    *v23 = v28;
    (*(v21 + 104))(v23, *MEMORY[0x277D85200], v20);
    v29 = v28;
    LOBYTE(v28) = sub_21DBF9DAC();
    v31 = *(v21 + 8);
    v30 = (v21 + 8);
    v31(v23, v20);
    if ((v28 & 1) == 0)
    {
      __break(1u);
      goto LABEL_49;
    }

    v111 = v6;
    v113 = v27;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C260, &unk_21DC15D80);
    v33 = *(v32 + 36);
    v34 = v123;
    sub_21D0D3954(v123 + v33, v19, &qword_27CE5C250, &unk_21DC15D70);
    sub_21D53EBD0(v19);
    sub_21D0D3954(v34 + v33, v16, &qword_27CE5C250, &unk_21DC15D70);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v35 = *v16;
      sub_21DA3D408(*v16);

      return;
    }

    v110 = v25;
    v36 = v16;
    v16 = v122;
    sub_21D0D523C(v36, v122, &qword_27CE5C258, &qword_21DC377B0);
    v37 = v111;
    sub_21D0D3954(v34 + *(v32 + 40), v111, &qword_27CE5C1C8, &unk_21DC15CD0);
    v20 = v120;
    v19 = v121;
    v38 = (*(v120 + 48))(v37, 1, v121);
    v39 = v113;
    if (v38 == 1)
    {
      sub_21D0CF7E0(v37, &qword_27CE5C1C8, &unk_21DC15CD0);
      v40 = objc_opt_self();
      v41 = sub_21DBFA12C();
      v42 = [v40 internalErrorWithDebugDescription_];

      sub_21DA3D408(v42);

      v43 = v16;
LABEL_57:
      sub_21D0CF7E0(v43, &qword_27CE5C258, &qword_21DC377B0);
      return;
    }

    v44 = v117;
    (*(v20 + 32))(v117, v37, v19);
    v45 = v118;
    v46 = *(v16 + *(v118 + 48));
    v6 = sub_21DBF6DBC();
    v47 = *(v6 - 8);
    v30 = v119;
    (*(v47 + 16))(v119, v16, v6);
    *(v30 + *(v45 + 48)) = v46;
    v48 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_dataViewMonitor;
    swift_beginAccess();
    v49 = *(v39 + v48);
    if (!v49)
    {
      v51 = v46;

      goto LABEL_56;
    }

    v50 = v46;
    if (v110 != v49)
    {

LABEL_56:
      sub_21D0CF7E0(v30, &qword_27CE5C258, &qword_21DC377B0);
      (*(v20 + 8))(v44, v19);
      v43 = v16;
      goto LABEL_57;
    }

    v52 = sub_21DBF6E3C();
    sub_21D4F5F28(v52);
    v53 = v47;
    v55 = v54;

    sub_21DA3A324(v46, v55);

    v56 = v112;
    sub_21D0D3954(v30, v112, &qword_27CE5C258, &qword_21DC377B0);

    v57 = v114;
    MEMORY[0x223D3F550]();
    v58 = *(v53 + 8);
    v123 = (v53 + 8);
    v111 = v58;
    v58(v56, v6);
    v27 = sub_21DBF716C();
    (*(v115 + 8))(v57, v116);
    if (v27 >> 62)
    {
      goto LABEL_50;
    }

    v59 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v59)
    {
LABEL_53:

      v116 = 0;
      v27 = v113;
LABEL_54:
      v97 = v117;
LABEL_55:
      v98 = v112;
      sub_21D0D3954(v30, v112, &qword_27CE5C258, &qword_21DC377B0);

      v99 = sub_21DBF6DAC();
      v111(v98, v6);
      v100 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
      swift_beginAccess();
      v101 = *(v27 + v100);
      *(v27 + v100) = v99;

      v125 = 0;
      v126 = 0xE000000000000000;
      sub_21DBFBEEC();
      v125 = *v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAC0, &unk_21DC1A7F0);
      v102 = sub_21DBFA1AC();
      v103 = v27;
      v105 = v104;

      v125 = v102;
      v126 = v105;
      MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
      v106 = sub_21DBFAEDC();
      v123 = &v108;
      MEMORY[0x28223BE20](v106);
      v107 = v119;
      *(&v108 - 4) = v103;
      *(&v108 - 3) = v107;
      v44 = v97;
      *(&v108 - 2) = v97;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
      v30 = v119;
      sub_21DBF625C();

      goto LABEL_56;
    }

LABEL_15:
    v115 = v6;
    *&v129 = MEMORY[0x277D84F90];
    sub_21D18E6B8(0, v59 & ~(v59 >> 63), 0);
    if (v59 < 0)
    {
      __break(1u);
    }

    else
    {
      v60 = 0;
      v61 = v129;
      do
      {
        if ((v27 & 0xC000000000000001) != 0)
        {
          v62 = MEMORY[0x223D44740](v60, v27);
        }

        else
        {
          v62 = *(v27 + 8 * v60 + 32);
        }

        v63 = v62;
        v64 = [v62 objectID];
        *&v129 = v61;
        v66 = *(v61 + 16);
        v65 = *(v61 + 24);
        if (v66 >= v65 >> 1)
        {
          v68 = v64;
          sub_21D18E6B8((v65 > 1), v66 + 1, 1);
          v64 = v68;
          v61 = v129;
        }

        ++v60;
        *(v61 + 16) = v66 + 1;
        v67 = v61 + 16 * v66;
        *(v67 + 32) = v64;
        *(v67 + 40) = v63;
      }

      while (v59 != v60);

      while (1)
      {
        v16 = v122;
        v19 = v121;
        v20 = v120;
        v30 = v119;
        v27 = v113;
        v6 = v115;
        if (*(v61 + 16))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A8, &qword_21DC09560);
          v69 = sub_21DBFC40C();
        }

        else
        {
          v69 = MEMORY[0x277D84F98];
        }

        *&v129 = v69;
        v70 = sub_21DBF8E0C();
        sub_21D1931C0(v70, 1, &v129);

        v71 = v129;
        v72 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
        swift_beginAccess();
        v73 = *(v27 + v72);
        if (!v73)
        {

          v116 = 0;
          goto LABEL_54;
        }

        sub_21D188810(v71);
        v6 = v74;

        if ((v6 & 0xC000000000000001) != 0)
        {
          if (v6 < 0)
          {
            v75 = v6;
          }

          else
          {
            v75 = v6 & 0xFFFFFFFFFFFFFF8;
          }

          v30 = sub_21D883714(v75);
          v116 = 0;

LABEL_47:
          v122 = &v108;
          *&v129 = *(v73 + 80);
          MEMORY[0x28223BE20](v76);
          *(&v108 - 2) = v73;
          *(&v108 - 1) = v30;
          sub_21DBF5EFC();

          sub_21DBF814C();

          v97 = v117;
          v30 = v119;
          v6 = v115;
          goto LABEL_55;
        }

        v109 = v73;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58308, &qword_21DC0CB20);
        v77 = sub_21DBFC3DC();
        v30 = v77;
        v78 = 0;
        v16 = (v6 + 64);
        v79 = 1 << *(v6 + 32);
        v80 = -1;
        if (v79 < 64)
        {
          v80 = ~(-1 << v79);
        }

        v19 = v80 & *(v6 + 64);
        v20 = (v79 + 63) >> 6;
        v114 = (v77 + 64);
        v116 = 0;
        if (v19)
        {
          break;
        }

LABEL_38:
        v82 = v78;
        while (1)
        {
          v78 = v82 + 1;
          if (__OFADD__(v82, 1))
          {
            break;
          }

          if (v78 >= v20)
          {

            v16 = v122;
            v19 = v121;
            v20 = v120;
            v73 = v109;
            goto LABEL_47;
          }

          v83 = v16[v78];
          ++v82;
          if (v83)
          {
            v81 = __clz(__rbit64(v83));
            v19 = (v83 - 1) & v83;
            goto LABEL_43;
          }
        }

LABEL_49:
        __break(1u);
LABEL_50:
        if (!sub_21DBFBD7C())
        {
          goto LABEL_53;
        }

        v59 = sub_21DBFBD7C();
        if (v59)
        {
          goto LABEL_15;
        }

        v115 = v6;

        v61 = MEMORY[0x277D84F90];
      }

      while (1)
      {
        v81 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_43:
        v84 = v81 | (v78 << 6);
        v85 = *(*(v6 + 56) + 8 * v84);
        v86 = *(*(v6 + 48) + 8 * v84);
        v87 = v85;

        v127 = sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
        v128 = &protocol witness table for REMReminder;
        v125 = v87;
        v124 = 3;
        v88 = v87;
        TTRReminderViewModelComputedProperties.init(reminder:postProcessingOperations:)(&v125, &v124, &v129);
        v89 = v130;
        v90 = v131;
        v91 = v132;
        v92 = v129;
        *&v114[(v84 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v84;
        *(v30[6] + 8 * v84) = v86;
        v93 = v30[7] + 48 * v84;
        *v93 = v88;
        *(v93 + 8) = v92;
        *(v93 + 24) = v89;
        *(v93 + 32) = v90;
        *(v93 + 40) = v91;
        v94 = v30[2];
        v95 = __OFADD__(v94, 1);
        v96 = v94 + 1;
        if (v95)
        {
          break;
        }

        v30[2] = v96;
        v27 = v113;
        if (!v19)
        {
          goto LABEL_38;
        }
      }
    }

    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

void sub_21D546AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8, &unk_21DC15CD0);
  MEMORY[0x28223BE20](v4 - 8);
  v41 = &v36 - v5;
  v6 = sub_21DBF76AC();
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x28223BE20](v6);
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C270, &unk_21DC15D90);
  MEMORY[0x28223BE20](v39);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C268, &qword_21DC195E0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  v16 = sub_21DBF9D8C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = (&v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    swift_beginAccess();
    v22 = swift_weakLoadStrong();
    if (v22)
    {
      v38 = v22;
      v23 = *(v21 + *(*v21 + 112));
      *v19 = v23;
      (*(v17 + 104))(v19, *MEMORY[0x277D85200], v16);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      (*(v17 + 8))(v19, v16);
      if (v23)
      {
        v37 = v9;
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C278, &unk_21DC1A800);
        v26 = *(v25 + 36);
        sub_21D0D3954(a1 + v26, v15, &qword_27CE5C268, &qword_21DC195E0);
        sub_21D53EE04(v15);
        sub_21D0D3954(a1 + v26, v12, &qword_27CE5C268, &qword_21DC195E0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v27 = *v12;
          sub_21D99F2CC(*v12);
        }

        else
        {
          v28 = v37;
          sub_21D0D523C(v12, v37, &qword_27CE5C270, &unk_21DC15D90);
          v29 = v41;
          sub_21D0D3954(a1 + *(v25 + 40), v41, &qword_27CE5C1C8, &unk_21DC15CD0);
          v31 = v42;
          v30 = v43;
          if ((*(v42 + 48))(v29, 1, v43) == 1)
          {
            sub_21D0CF7E0(v29, &qword_27CE5C1C8, &unk_21DC15CD0);
            v32 = objc_opt_self();
            v33 = sub_21DBFA12C();
            v34 = [v32 internalErrorWithDebugDescription_];

            sub_21D99F2CC(v34);
          }

          else
          {
            v35 = v40;
            (*(v31 + 32))(v40, v29, v30);
            TTRShowTaggedDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(v21, v28, *(v28 + *(v39 + 48)), v35);

            (*(v31 + 8))(v35, v30);
          }

          sub_21D0CF7E0(v28, &qword_27CE5C270, &unk_21DC15D90);
        }
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

void sub_21D546FFC(void *a1, uint64_t a2, uint64_t a3)
{
  v122 = a1;
  v3 = sub_21DBF773C();
  v115 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v114 = &v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8, &unk_21DC15CD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v109 - v6;
  v118 = sub_21DBF76AC();
  v120 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v121 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C348, &unk_21DC15E70);
  MEMORY[0x28223BE20](v116);
  v113 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v117 = &v109 - v11;
  MEMORY[0x28223BE20](v12);
  v119 = &v109 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C340, &unk_21DC1A870);
  MEMORY[0x28223BE20](v14);
  v16 = (&v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v19 = &v109 - v18;
  v20 = sub_21DBF9D8C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v109 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    v111 = v3;
    swift_beginAccess();
    v26 = swift_weakLoadStrong();
    if (!v26)
    {

      return;
    }

    v27 = v26;
    v28 = *(v25 + *(*v25 + 112));
    *v23 = v28;
    (*(v21 + 104))(v23, *MEMORY[0x277D85200], v20);
    v29 = v28;
    LOBYTE(v28) = sub_21DBF9DAC();
    (*(v21 + 8))(v23, v20);
    if ((v28 & 1) == 0)
    {
      __break(1u);
      goto LABEL_54;
    }

    v112 = v27;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C368, &qword_21DC15E90);
    v31 = *(v30 + 36);
    v32 = v122;
    sub_21D0D3954(v122 + v31, v19, &qword_27CE5C340, &unk_21DC1A870);
    sub_21D53F038(v19);
    sub_21D0D3954(v32 + v31, v16, &qword_27CE5C340, &unk_21DC1A870);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v33 = *v16;
      sub_21D6EED24(*v16);

      return;
    }

    v110 = v25;
    v23 = v119;
    sub_21D0D523C(v16, v119, &qword_27CE5C348, &unk_21DC15E70);
    sub_21D0D3954(v32 + *(v30 + 40), v7, &qword_27CE5C1C8, &unk_21DC15CD0);
    v34 = v120;
    v20 = v118;
    if ((*(v120 + 48))(v7, 1, v118) == 1)
    {
      sub_21D0CF7E0(v7, &qword_27CE5C1C8, &unk_21DC15CD0);
      v35 = objc_opt_self();
      v36 = sub_21DBFA12C();
      v37 = [v35 internalErrorWithDebugDescription_];

      sub_21D6EED24(v37);

      v38 = v23;
LABEL_61:
      sub_21D0CF7E0(v38, &qword_27CE5C348, &unk_21DC15E70);
      return;
    }

    (*(v34 + 32))(v121, v7, v20);
    v39 = v116;
    v40 = *(v23 + *(v116 + 48));
    v41 = sub_21DBF706C();
    v42 = *(v41 - 8);
    v43 = v117;
    (*(v42 + 16))(v117, v23, v41);
    *(v43 + *(v39 + 48)) = v40;
    v44 = OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_dataViewMonitor;
    v45 = v112;
    swift_beginAccess();
    v46 = *(v45 + v44);
    v47 = v110;
    if (!v46)
    {
      v49 = v40;

      goto LABEL_60;
    }

    v48 = v40;
    if (v47 != v46)
    {

LABEL_60:
      sub_21D0CF7E0(v43, &qword_27CE5C348, &unk_21DC15E70);
      (*(v34 + 8))(v121, v20);
      v38 = v23;
      goto LABEL_61;
    }

    v50 = v48;
    v51 = sub_21DBF6E3C();
    sub_21D4F5F28(v51);
    v53 = v52;

    if (v40)
    {
      v54 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
      v55 = v112;
      swift_beginAccess();
      if (*(v55 + v54))
      {
        v56 = v50;

        sub_21D4F9F64(v56, v53);
      }

      else
      {
        v122 = *(v55 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_store);
        sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
        v57 = v50;
        v58 = sub_21DBFB12C();
        v59 = swift_allocObject();
        *(v59 + 16) = 0;
        v60 = sub_21D87E81C(v122, sub_21D554248, v59, v57, v58);
        *(v55 + v54) = v60;

        swift_beginAccess();
        v60[3] = &protocol witness table for TTRShowFlaggedDataModelSource;
        swift_unknownObjectWeakAssign();
      }
    }

    else
    {
    }

    v61 = v113;
    sub_21D0D3954(v117, v113, &qword_27CE5C348, &unk_21DC15E70);

    v62 = v114;
    MEMORY[0x223D3F810]();
    (*(v42 + 8))(v61, v41);
    v27 = sub_21DBF716C();
    (*(v115 + 8))(v62, v111);
    if (v27 >> 62)
    {
      goto LABEL_55;
    }

    v63 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v63)
    {
LABEL_58:

LABEL_59:
      *&v125 = 0;
      *(&v125 + 1) = 0xE000000000000000;
      sub_21DBFBEEC();
      v103 = v112;
      *&v125 = *v112;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAF8, &unk_21DC1A880);
      v104 = sub_21DBFA1AC();
      v106 = v105;

      *&v125 = v104;
      *(&v125 + 1) = v106;
      MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
      v107 = sub_21DBFAEDC();
      MEMORY[0x28223BE20](v107);
      v108 = v117;
      *(&v109 - 4) = v103;
      *(&v109 - 3) = v108;
      *(&v109 - 2) = v121;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
      sub_21DBF625C();

      v43 = v108;
      v34 = v120;
      goto LABEL_60;
    }

LABEL_20:
    *&v125 = MEMORY[0x277D84F90];
    sub_21D18E6B8(0, v63 & ~(v63 >> 63), 0);
    if (v63 < 0)
    {
      __break(1u);
    }

    else
    {
      v64 = 0;
      v65 = v125;
      do
      {
        if ((v27 & 0xC000000000000001) != 0)
        {
          v66 = MEMORY[0x223D44740](v64, v27);
        }

        else
        {
          v66 = *(v27 + 8 * v64 + 32);
        }

        v67 = v66;
        v68 = [v66 objectID];
        *&v125 = v65;
        v70 = *(v65 + 16);
        v69 = *(v65 + 24);
        if (v70 >= v69 >> 1)
        {
          v72 = v68;
          sub_21D18E6B8((v69 > 1), v70 + 1, 1);
          v68 = v72;
          v65 = v125;
        }

        ++v64;
        *(v65 + 16) = v70 + 1;
        v71 = v65 + 16 * v70;
        *(v71 + 32) = v68;
        *(v71 + 40) = v67;
      }

      while (v63 != v64);

      while (1)
      {
        v23 = v119;
        v20 = v118;
        v73 = v112;
        if (*(v65 + 16))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A8, &qword_21DC09560);
          v74 = sub_21DBFC40C();
        }

        else
        {
          v74 = MEMORY[0x277D84F98];
        }

        *&v125 = v74;
        v75 = sub_21DBF8E0C();
        sub_21D1931C0(v75, 1, &v125);

        v76 = v125;
        v77 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
        swift_beginAccess();
        v27 = *(v73 + v77);
        if (!v27)
        {

          goto LABEL_59;
        }

        sub_21D188810(v76);
        v79 = v78;

        if ((v79 & 0xC000000000000001) != 0)
        {
          if (v79 < 0)
          {
            v80 = v79;
          }

          else
          {
            v80 = v79 & 0xFFFFFFFFFFFFFF8;
          }

          v81 = sub_21D883714(v80);
          v122 = 0;

LABEL_52:
          *&v125 = *(v27 + 80);
          MEMORY[0x28223BE20](v82);
          *(&v109 - 2) = v27;
          *(&v109 - 1) = v81;
          sub_21DBF5EFC();

          sub_21DBF814C();

          goto LABEL_59;
        }

        v122 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58308, &qword_21DC0CB20);
        v83 = sub_21DBFC3DC();
        v81 = v83;
        v23 = 0;
        v84 = 1 << *(v79 + 32);
        v85 = -1;
        if (v84 < 64)
        {
          v85 = ~(-1 << v84);
        }

        v86 = v85 & *(v79 + 64);
        v20 = (v84 + 63) >> 6;
        v116 = v83 + 64;
        if (v86)
        {
          break;
        }

LABEL_43:
        v88 = v23;
        while (1)
        {
          v23 = v88 + 1;
          if (__OFADD__(v88, 1))
          {
            break;
          }

          if (v23 >= v20)
          {

            v23 = v119;
            v20 = v118;
            goto LABEL_52;
          }

          v89 = *(v79 + 64 + 8 * v23);
          ++v88;
          if (v89)
          {
            v87 = __clz(__rbit64(v89));
            v86 = (v89 - 1) & v89;
            goto LABEL_48;
          }
        }

LABEL_54:
        __break(1u);
LABEL_55:
        if (!sub_21DBFBD7C())
        {
          goto LABEL_58;
        }

        v63 = sub_21DBFBD7C();
        if (v63)
        {
          goto LABEL_20;
        }

        v65 = MEMORY[0x277D84F90];
      }

      while (1)
      {
        v87 = __clz(__rbit64(v86));
        v86 &= v86 - 1;
LABEL_48:
        v90 = v87 | (v23 << 6);
        v91 = *(*(v79 + 56) + 8 * v90);
        v92 = *(*(v79 + 48) + 8 * v90);
        v93 = v91;

        v124[3] = sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
        v124[4] = &protocol witness table for REMReminder;
        v124[0] = v93;
        v123 = 3;
        v94 = v93;
        TTRReminderViewModelComputedProperties.init(reminder:postProcessingOperations:)(v124, &v123, &v125);
        v95 = v126;
        v96 = v127;
        v97 = v128;
        v98 = v125;
        *(v116 + ((v90 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v90;
        *(v81[6] + 8 * v90) = v92;
        v99 = v81[7] + 48 * v90;
        *v99 = v94;
        *(v99 + 8) = v98;
        *(v99 + 24) = v95;
        *(v99 + 32) = v96;
        *(v99 + 40) = v97;
        v100 = v81[2];
        v101 = __OFADD__(v100, 1);
        v102 = v100 + 1;
        if (v101)
        {
          break;
        }

        v81[2] = v102;
        if (!v86)
        {
          goto LABEL_43;
        }
      }
    }

    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

void sub_21D547F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8, &unk_21DC15CD0);
  MEMORY[0x28223BE20](v4 - 8);
  v41 = &v36 - v5;
  v6 = sub_21DBF76AC();
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x28223BE20](v6);
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C228, &qword_21DC15D48);
  MEMORY[0x28223BE20](v39);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C220, &qword_21DC15D40);
  MEMORY[0x28223BE20](v10);
  v12 = (&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  v16 = sub_21DBF9D8C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = (&v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    swift_beginAccess();
    v22 = swift_weakLoadStrong();
    if (v22)
    {
      v38 = v22;
      v23 = *(v21 + *(*v21 + 112));
      *v19 = v23;
      (*(v17 + 104))(v19, *MEMORY[0x277D85200], v16);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      (*(v17 + 8))(v19, v16);
      if (v23)
      {
        v37 = v9;
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C248, &qword_21DC15D68);
        v26 = *(v25 + 36);
        sub_21D0D3954(a1 + v26, v15, &qword_27CE5C220, &qword_21DC15D40);
        sub_21D53F26C(v15);
        sub_21D0D3954(a1 + v26, v12, &qword_27CE5C220, &qword_21DC15D40);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v27 = *v12;
          sub_21DB62708(*v12);
        }

        else
        {
          v28 = v37;
          sub_21D0D523C(v12, v37, &qword_27CE5C228, &qword_21DC15D48);
          v29 = v41;
          sub_21D0D3954(a1 + *(v25 + 40), v41, &qword_27CE5C1C8, &unk_21DC15CD0);
          v31 = v42;
          v30 = v43;
          if ((*(v42 + 48))(v29, 1, v43) == 1)
          {
            sub_21D0CF7E0(v29, &qword_27CE5C1C8, &unk_21DC15CD0);
            v32 = objc_opt_self();
            v33 = sub_21DBFA12C();
            v34 = [v32 internalErrorWithDebugDescription_];

            sub_21DB62708(v34);
          }

          else
          {
            v35 = v40;
            (*(v31 + 32))(v40, v29, v30);
            TTRShowAssignedDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(v21, v28, *(v28 + *(v39 + 48)), v35);

            (*(v31 + 8))(v35, v30);
          }

          sub_21D0CF7E0(v28, &qword_27CE5C228, &qword_21DC15D48);
        }
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

void sub_21D5484E8(char *a1, uint64_t a2, uint64_t a3)
{
  v119 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8, &unk_21DC15CD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v110 - v4;
  v117 = sub_21DBF76AC();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v114 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2C8, &unk_21DC15DF0);
  MEMORY[0x28223BE20](v113);
  v8 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v115 = &v110 - v10;
  MEMORY[0x28223BE20](v11);
  v118 = &v110 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2C0, &qword_21DC19620);
  MEMORY[0x28223BE20](v13);
  v15 = (&v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v18 = &v110 - v17;
  v19 = sub_21DBF9D8C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = (&v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v111 = v8;
    swift_beginAccess();
    v25 = swift_weakLoadStrong();
    if (!v25)
    {

      return;
    }

    v26 = v25;
    v27 = *(v24 + *(*v24 + 112));
    *v22 = v27;
    (*(v20 + 104))(v22, *MEMORY[0x277D85200], v19);
    v28 = v27;
    LOBYTE(v27) = sub_21DBF9DAC();
    v30 = *(v20 + 8);
    v29 = v20 + 8;
    v30(v22, v19);
    if ((v27 & 1) == 0)
    {
      __break(1u);
      goto LABEL_55;
    }

    v112 = v26;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2E8, &qword_21DC15E10);
    v32 = *(v31 + 36);
    v33 = v119;
    sub_21D0D3954(&v119[v32], v18, &qword_27CE5C2C0, &qword_21DC19620);
    sub_21D53F4A0(v18);
    sub_21D0D3954(&v33[v32], v15, &qword_27CE5C2C0, &qword_21DC19620);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v34 = *v15;
      sub_21D858FEC(*v15);

      return;
    }

    v110 = v24;
    v35 = v15;
    v36 = v118;
    sub_21D0D523C(v35, v118, &qword_27CE5C2C8, &unk_21DC15DF0);
    sub_21D0D3954(&v33[*(v31 + 40)], v5, &qword_27CE5C1C8, &unk_21DC15CD0);
    v37 = v116;
    v38 = v117;
    if ((*(v116 + 48))(v5, 1, v117) == 1)
    {
      sub_21D0CF7E0(v5, &qword_27CE5C1C8, &unk_21DC15CD0);
      v39 = objc_opt_self();
      v40 = sub_21DBFA12C();
      v41 = [v39 internalErrorWithDebugDescription_];

      sub_21D858FEC(v41);

      v42 = v36;
LABEL_65:
      sub_21D0CF7E0(v42, &qword_27CE5C2C8, &unk_21DC15DF0);
      return;
    }

    v26 = v114;
    (*(v37 + 32))(v114, v5, v38);
    v43 = v113;
    v44 = *(v36 + *(v113 + 48));
    v45 = sub_21DBF6E4C();
    v46 = *(v45 - 8);
    v18 = v115;
    (*(v46 + 16))(v115, v36, v45);
    *&v18[*(v43 + 48)] = v44;
    v47 = OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_dataViewMonitor;
    v48 = v112;
    swift_beginAccess();
    v49 = *&v48[v47];
    if (!v49)
    {
      v51 = v44;

      goto LABEL_13;
    }

    v50 = v44;
    if (v110 != v49)
    {

LABEL_13:

LABEL_64:
      (*(v37 + 8))(v26, v38);
      sub_21D0CF7E0(v18, &qword_27CE5C2C8, &unk_21DC15DF0);
      v42 = v36;
      goto LABEL_65;
    }

    v52 = v50;
    v53 = sub_21DBF6E3C();
    sub_21D4F5F28(v53);
    v55 = v54;

    if (v44)
    {
      v56 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
      v57 = v112;
      swift_beginAccess();
      if (*&v57[v56])
      {
        v58 = v52;

        sub_21D4F9F64(v58, v55);
      }

      else
      {
        v119 = *&v57[OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_store];
        sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
        v59 = v52;
        v60 = sub_21DBFB12C();
        v61 = swift_allocObject();
        *(v61 + 16) = 0;
        v62 = sub_21D87E81C(v119, sub_21D554248, v61, v59, v60);
        *&v57[v56] = v62;

        swift_beginAccess();
        v62[3] = &protocol witness table for TTRShowScheduledDataModelSource;
        swift_unknownObjectWeakAssign();
      }

      v18 = v115;
    }

    else
    {
    }

    v63 = v111;
    sub_21D0D3954(v18, v111, &qword_27CE5C2C8, &unk_21DC15DF0);

    v29 = sub_21DBF6DEC();
    (*(v46 + 8))(v63, v45);
    if (v29 >> 62)
    {
      goto LABEL_56;
    }

    v64 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v64)
    {
LABEL_59:

LABEL_60:
      v106 = &v112[OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_delegate];
      swift_beginAccess();
      v107 = swift_unknownObjectWeakLoadStrong();
      v36 = v118;
      v37 = v116;
      if (v107)
      {
        v108 = *(v106 + 1);
        ObjectType = swift_getObjectType();
        (*(v108 + 16))(v18, v26, ObjectType, v108);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      v38 = v117;
      goto LABEL_64;
    }

LABEL_22:
    *&v122 = MEMORY[0x277D84F90];
    sub_21D18E6B8(0, v64 & ~(v64 >> 63), 0);
    if (v64 < 0)
    {
      __break(1u);
    }

    else
    {
      v65 = 0;
      v66 = v122;
      do
      {
        if ((v29 & 0xC000000000000001) != 0)
        {
          v67 = MEMORY[0x223D44740](v65, v29);
        }

        else
        {
          v67 = *(v29 + 8 * v65 + 32);
        }

        v68 = v67;
        v69 = [v67 objectID];
        *&v122 = v66;
        v71 = *(v66 + 16);
        v70 = *(v66 + 24);
        if (v71 >= v70 >> 1)
        {
          v73 = v69;
          sub_21D18E6B8((v70 > 1), v71 + 1, 1);
          v69 = v73;
          v66 = v122;
        }

        ++v65;
        *(v66 + 16) = v71 + 1;
        v72 = v66 + 16 * v71;
        *(v72 + 32) = v69;
        *(v72 + 40) = v68;
      }

      while (v64 != v65);

      while (1)
      {
        v26 = v114;
        v18 = v115;
        if (*(v66 + 16))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A8, &qword_21DC09560);
          v74 = sub_21DBFC40C();
        }

        else
        {
          v74 = MEMORY[0x277D84F98];
        }

        *&v122 = v74;
        v75 = sub_21DBF8E0C();
        sub_21D1931C0(v75, 1, &v122);

        v76 = v122;
        v77 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
        v78 = v112;
        swift_beginAccess();
        v29 = *&v78[v77];
        if (!v29)
        {

          goto LABEL_60;
        }

        sub_21D188810(v76);
        v80 = v79;

        if ((v80 & 0xC000000000000001) != 0)
        {
          if (v80 < 0)
          {
            v81 = v80;
          }

          else
          {
            v81 = v80 & 0xFFFFFFFFFFFFFF8;
          }

          v82 = sub_21D883714(v81);
LABEL_40:

          *&v122 = *(v29 + 80);
          MEMORY[0x28223BE20](v83);
          *(&v110 - 2) = v29;
          *(&v110 - 1) = v82;
          sub_21DBF5EFC();

          sub_21DBF814C();

          goto LABEL_60;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58308, &qword_21DC0CB20);
        v84 = sub_21DBFC3DC();
        v82 = v84;
        v85 = 0;
        v86 = 1 << *(v80 + 32);
        v87 = -1;
        if (v86 < 64)
        {
          v87 = ~(-1 << v86);
        }

        v88 = v87 & *(v80 + 64);
        v89 = (v86 + 63) >> 6;
        v119 = (v84 + 64);
        if (v88)
        {
          break;
        }

LABEL_46:
        v91 = v85;
        v18 = v115;
        while (1)
        {
          v85 = v91 + 1;
          if (__OFADD__(v91, 1))
          {
            break;
          }

          if (v85 >= v89)
          {
            goto LABEL_40;
          }

          v92 = *(v80 + 64 + 8 * v85);
          ++v91;
          if (v92)
          {
            v90 = __clz(__rbit64(v92));
            v88 = (v92 - 1) & v92;
            goto LABEL_51;
          }
        }

LABEL_55:
        __break(1u);
LABEL_56:
        if (!sub_21DBFBD7C())
        {
          goto LABEL_59;
        }

        v64 = sub_21DBFBD7C();
        if (v64)
        {
          goto LABEL_22;
        }

        v66 = MEMORY[0x277D84F90];
      }

      while (1)
      {
        v90 = __clz(__rbit64(v88));
        v88 &= v88 - 1;
LABEL_51:
        v93 = v90 | (v85 << 6);
        v94 = *(*(v80 + 56) + 8 * v93);
        v95 = *(*(v80 + 48) + 8 * v93);
        v96 = v94;

        v121[3] = sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
        v121[4] = &protocol witness table for REMReminder;
        v121[0] = v96;
        v120 = 3;
        v97 = v96;
        TTRReminderViewModelComputedProperties.init(reminder:postProcessingOperations:)(v121, &v120, &v122);
        v98 = v123;
        v99 = v124;
        v100 = v125;
        v101 = v122;
        *&v119[(v93 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v93;
        *(v82[6] + 8 * v93) = v95;
        v102 = v82[7] + 48 * v93;
        *v102 = v97;
        *(v102 + 8) = v101;
        *(v102 + 24) = v98;
        *(v102 + 32) = v99;
        *(v102 + 40) = v100;
        v103 = v82[2];
        v104 = __OFADD__(v103, 1);
        v105 = v103 + 1;
        if (v104)
        {
          break;
        }

        v82[2] = v105;
        v26 = v114;
        if (!v88)
        {
          goto LABEL_46;
        }
      }
    }

    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

void sub_21D5492E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v128 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8, &unk_21DC15CD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v115 - v4;
  v125 = sub_21DBF76AC();
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v127 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C318, &qword_21DC19660);
  MEMORY[0x28223BE20](v122);
  v8 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v121 = &v115 - v10;
  MEMORY[0x28223BE20](v11);
  v123 = &v115 - v12;
  MEMORY[0x28223BE20](v13);
  v126 = (&v115 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C310, &unk_21DC15E30);
  MEMORY[0x28223BE20](v15);
  v17 = (&v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v20 = &v115 - v19;
  v21 = sub_21DBF9D8C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v115 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    v119 = v8;
    swift_beginAccess();
    v27 = swift_weakLoadStrong();
    if (!v27)
    {

      return;
    }

    v28 = v27;
    v29 = *(v26 + *(*v26 + 112));
    *v24 = v29;
    (*(v22 + 104))(v24, *MEMORY[0x277D85200], v21);
    v30 = v29;
    LOBYTE(v29) = sub_21DBF9DAC();
    (*(v22 + 8))(v24, v21);
    if ((v29 & 1) == 0)
    {
      __break(1u);
      goto LABEL_55;
    }

    v118 = v5;
    v120 = v28;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C320, &unk_21DC15E40);
    v32 = *(v31 + 36);
    v33 = v128;
    sub_21D0D3954(v128 + v32, v20, &qword_27CE5C310, &unk_21DC15E30);
    sub_21D53F6D4(v20);
    sub_21D0D3954(v33 + v32, v17, &qword_27CE5C310, &unk_21DC15E30);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v34 = *v17;
      sub_21D7993C8(*v17);

      return;
    }

    v117 = v26;
    v26 = v126;
    sub_21D0D523C(v17, v126, &qword_27CE5C318, &qword_21DC19660);
    v35 = v33 + *(v31 + 40);
    v36 = v118;
    sub_21D0D3954(v35, v118, &qword_27CE5C1C8, &unk_21DC15CD0);
    v15 = v124;
    v20 = v125;
    v37 = (*(v124 + 48))(v36, 1, v125);
    v38 = v120;
    if (v37 == 1)
    {
      sub_21D0CF7E0(v36, &qword_27CE5C1C8, &unk_21DC15CD0);
      v39 = objc_opt_self();
      v40 = sub_21DBFA12C();
      v41 = [v39 internalErrorWithDebugDescription_];

      sub_21D7993C8(v41);

      v42 = v26;
LABEL_62:
      sub_21D0CF7E0(v42, &qword_27CE5C318, &qword_21DC19660);
      return;
    }

    (*(v15 + 32))(v127, v36, v20);
    v43 = v122;
    v44 = *(v26 + *(v122 + 48));
    v24 = sub_21DBF729C();
    v45 = *(v24 - 8);
    v46 = v123;
    (*(v45 + 16))(v123, v26, v24);
    *(v46 + *(v43 + 48)) = v44;
    v47 = OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_dataViewMonitor;
    swift_beginAccess();
    v48 = *(v38 + v47);
    if (!v48)
    {
      v50 = v44;

      goto LABEL_61;
    }

    v49 = v44;
    if (v117 != v48)
    {

LABEL_61:
      sub_21D0CF7E0(v46, &qword_27CE5C318, &qword_21DC19660);
      (*(v15 + 8))(v127, v20);
      v42 = v26;
      goto LABEL_62;
    }

    v51 = v49;
    v52 = sub_21DBF6E3C();
    sub_21D4F5F28(v52);
    v54 = v53;

    v118 = v24;
    if (v44)
    {
      v55 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
      v56 = v120;
      swift_beginAccess();
      if (*(v56 + v55))
      {
        v57 = v51;

        sub_21D4F9F64(v57, v54);
      }

      else
      {
        v128 = v45;
        v58 = *(v56 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_store);
        sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
        v59 = v51;
        v60 = sub_21DBFB12C();
        v61 = swift_allocObject();
        *(v61 + 16) = 0;
        v62 = v58;
        v45 = v128;
        v63 = sub_21D87E81C(v62, sub_21D554248, v61, v59, v60);
        *(v56 + v55) = v63;

        swift_beginAccess();
        v63[3] = &protocol witness table for TTRShowTodayGroupsDataModelSource;
        swift_unknownObjectWeakAssign();
      }

      v24 = v118;
    }

    else
    {
    }

    v28 = v123;
    v64 = v121;
    sub_21D0D3954(v123, v121, &qword_27CE5C318, &qword_21DC19660);

    v5 = sub_21DBF726C();
    v65 = *(v45 + 8);
    v65(v64, v24);
    v128 = v45 + 8;
    v116 = v65;
    if (v5 >> 62)
    {
      goto LABEL_56;
    }

    v66 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v66)
    {
LABEL_59:

LABEL_60:
      v105 = v119;
      sub_21D0D3954(v28, v119, &qword_27CE5C318, &qword_21DC19660);

      v106 = sub_21DBF720C();
      v116(v105, v24);
      v107 = OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_smartList;
      v108 = v120;
      swift_beginAccess();
      v109 = *(v108 + v107);
      *(v108 + v107) = v106;

      v130 = 0;
      v131 = 0xE000000000000000;
      sub_21DBFBEEC();
      v130 = *v108;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAF0, &qword_21DC1A848);
      v110 = sub_21DBFA1AC();
      v112 = v111;

      v130 = v110;
      v131 = v112;
      MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
      v113 = sub_21DBFAEDC();
      MEMORY[0x28223BE20](v113);
      v114 = v123;
      *(&v115 - 4) = v108;
      *(&v115 - 3) = v114;
      *(&v115 - 2) = v127;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
      v46 = v123;
      sub_21DBF625C();

      goto LABEL_61;
    }

LABEL_21:
    *&v134 = MEMORY[0x277D84F90];
    sub_21D18E6B8(0, v66 & ~(v66 >> 63), 0);
    if (v66 < 0)
    {
      __break(1u);
    }

    else
    {
      v67 = 0;
      v68 = v134;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v69 = MEMORY[0x223D44740](v67, v5);
        }

        else
        {
          v69 = *(v5 + 8 * v67 + 32);
        }

        v70 = v69;
        v71 = [v69 objectID];
        *&v134 = v68;
        v73 = *(v68 + 16);
        v72 = *(v68 + 24);
        if (v73 >= v72 >> 1)
        {
          v75 = v71;
          sub_21D18E6B8((v72 > 1), v73 + 1, 1);
          v71 = v75;
          v68 = v134;
        }

        ++v67;
        *(v68 + 16) = v73 + 1;
        v74 = v68 + 16 * v73;
        *(v74 + 32) = v71;
        *(v74 + 40) = v70;
      }

      while (v66 != v67);

      while (1)
      {
        v26 = v126;
        v20 = v125;
        v15 = v124;
        v24 = v118;
        if (*(v68 + 16))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A8, &qword_21DC09560);
          v76 = sub_21DBFC40C();
        }

        else
        {
          v76 = MEMORY[0x277D84F98];
        }

        *&v134 = v76;
        v77 = sub_21DBF8E0C();
        sub_21D1931C0(v77, 1, &v134);

        v78 = v134;
        v79 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
        v80 = v120;
        swift_beginAccess();
        v81 = *(v80 + v79);
        if (!v81)
        {

          v28 = v123;
          goto LABEL_60;
        }

        sub_21D188810(v78);
        v28 = v82;

        if ((v28 & 0xC000000000000001) != 0)
        {
          if (v28 < 0)
          {
            v83 = v28;
          }

          else
          {
            v83 = v28 & 0xFFFFFFFFFFFFFF8;
          }

          v5 = sub_21D883714(v83);
          v121 = 0;

LABEL_53:
          v126 = &v115;
          *&v134 = *(v81 + 80);
          MEMORY[0x28223BE20](v84);
          *(&v115 - 2) = v81;
          *(&v115 - 1) = v5;
          sub_21DBF5EFC();

          sub_21DBF814C();

          v28 = v123;
          goto LABEL_60;
        }

        v115 = v81;
        v121 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58308, &qword_21DC0CB20);
        v85 = sub_21DBFC3DC();
        v5 = v85;
        v24 = 0;
        v20 = (v28 + 64);
        v86 = 1 << *(v28 + 32);
        v87 = -1;
        if (v86 < 64)
        {
          v87 = ~(-1 << v86);
        }

        v15 = v87 & *(v28 + 64);
        v88 = (v86 + 63) >> 6;
        v26 = v85 + 64;
        if (v15)
        {
          break;
        }

LABEL_44:
        v90 = v24;
        while (1)
        {
          v24 = v90 + 1;
          if (__OFADD__(v90, 1))
          {
            break;
          }

          if (v24 >= v88)
          {

            v26 = v126;
            v20 = v125;
            v15 = v124;
            v24 = v118;
            v81 = v115;
            goto LABEL_53;
          }

          v91 = *&v20[8 * v24];
          ++v90;
          if (v91)
          {
            v89 = __clz(__rbit64(v91));
            v15 = (v91 - 1) & v91;
            goto LABEL_49;
          }
        }

LABEL_55:
        __break(1u);
LABEL_56:
        if (!sub_21DBFBD7C())
        {
          goto LABEL_59;
        }

        v66 = sub_21DBFBD7C();
        if (v66)
        {
          goto LABEL_21;
        }

        v68 = MEMORY[0x277D84F90];
      }

      while (1)
      {
        v89 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_49:
        v92 = v89 | (v24 << 6);
        v93 = *(*(v28 + 56) + 8 * v92);
        v94 = *(*(v28 + 48) + 8 * v92);
        v95 = v93;

        v132 = sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
        v133 = &protocol witness table for REMReminder;
        v130 = v95;
        v129 = 3;
        v96 = v95;
        TTRReminderViewModelComputedProperties.init(reminder:postProcessingOperations:)(&v130, &v129, &v134);
        v97 = v135;
        v98 = v136;
        v99 = v137;
        v100 = v134;
        *(v26 + ((v92 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v92;
        *(*(v5 + 48) + 8 * v92) = v94;
        v101 = *(v5 + 56) + 48 * v92;
        *v101 = v96;
        *(v101 + 8) = v100;
        *(v101 + 24) = v97;
        *(v101 + 32) = v98;
        *(v101 + 40) = v99;
        v102 = *(v5 + 16);
        v103 = __OFADD__(v102, 1);
        v104 = v102 + 1;
        if (v103)
        {
          break;
        }

        *(v5 + 16) = v104;
        if (!v15)
        {
          goto LABEL_44;
        }
      }
    }

    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

void sub_21D54A30C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8, &unk_21DC15CD0);
  MEMORY[0x28223BE20](v4 - 8);
  v72 = &v66 - v5;
  v73 = sub_21DBF76AC();
  v75 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C378, &unk_21DC15EA0);
  MEMORY[0x28223BE20](v7);
  v70 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v74 = &v66 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C370, &qword_21DC15E98);
  MEMORY[0x28223BE20](v11);
  v13 = (&v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = &v66 - v15;
  v17 = sub_21DBF9D8C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = (&v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v68 = v7;
    v23 = a1;
    swift_beginAccess();
    v24 = swift_weakLoadStrong();
    if (v24)
    {
      v25 = v24;
      v26 = *(v22 + *(*v22 + 112));
      *v20 = v26;
      (*(v18 + 104))(v20, *MEMORY[0x277D85200], v17);
      v27 = v26;
      LOBYTE(v26) = sub_21DBF9DAC();
      (*(v18 + 8))(v20, v17);
      if (v26)
      {
        v69 = v25;
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C390, &qword_21DC15EB0);
        v29 = v22;
        v30 = *(v28 + 36);
        sub_21D0D3954(v23 + v30, v16, &qword_27CE5C370, &qword_21DC15E98);
        sub_21D53F908(v16);
        sub_21D0D3954(v23 + v30, v13, &qword_27CE5C370, &qword_21DC15E98);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v31 = *v13;
          sub_21D662198(*v13);
        }

        else
        {
          v67 = v29;
          v32 = v74;
          sub_21D0D523C(v13, v74, &qword_27CE5C378, &unk_21DC15EA0);
          v33 = v72;
          sub_21D0D3954(v23 + *(v28 + 40), v72, &qword_27CE5C1C8, &unk_21DC15CD0);
          v34 = v75;
          v35 = v73;
          if ((*(v75 + 48))(v33, 1, v73) == 1)
          {
            sub_21D0CF7E0(v33, &qword_27CE5C1C8, &unk_21DC15CD0);
            v36 = objc_opt_self();
            v37 = sub_21DBFA12C();
            v38 = [v36 internalErrorWithDebugDescription_];

            sub_21D662198(v38);

            v39 = v32;
          }

          else
          {
            v40 = v71;
            (*(v34 + 32))(v71, v33, v35);
            v41 = v68;
            v42 = *(v32 + *(v68 + 48));
            v43 = sub_21DBF6F2C();
            v44 = v70;
            (*(*(v43 - 8) + 16))(v70, v32, v43);
            *(v44 + *(v41 + 48)) = v42;
            v45 = v69;
            v46 = *(v69 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_dataViewMonitor);
            if (v46)
            {
              v47 = v42;
              if (v67 == v46)
              {
                v49 = v47;
                v50 = sub_21DBF6E3C();
                sub_21D4F5F28(v50);
                v52 = v51;

                if (v42)
                {
                  v53 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
                  swift_beginAccess();
                  if (*(v45 + v53))
                  {
                    v54 = v49;

                    sub_21D4F9F64(v54, v52);
                  }

                  else
                  {
                    v55 = *(v45 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_store);
                    sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
                    v56 = v49;
                    v57 = sub_21DBFB12C();
                    v58 = swift_allocObject();
                    *(v58 + 16) = 0;
                    v59 = v55;
                    v34 = v75;
                    v60 = sub_21D87E81C(v59, sub_21D554248, v58, v56, v57);
                    *(v45 + v53) = v60;

                    swift_beginAccess();
                    v60[3] = &protocol witness table for TTRShowSearchResultDataModelSource;
                    swift_unknownObjectWeakAssign();
                  }
                }

                else
                {
                }

                v76 = 0;
                v77 = 0xE000000000000000;
                sub_21DBFBEEC();
                v76 = *v45;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DB00, &unk_21DC20E90);
                v61 = sub_21DBFA1AC();
                v63 = v62;

                v76 = v61;
                v77 = v63;
                MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
                v64 = sub_21DBFAEDC();
                MEMORY[0x28223BE20](v64);
                *(&v66 - 4) = v45;
                *(&v66 - 3) = v44;
                v65 = v71;
                *(&v66 - 2) = v71;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
                sub_21DBF625C();
                v40 = v65;
                v44 = v70;
              }

              else
              {
              }
            }

            else
            {
              v48 = v42;
            }

            sub_21D0CF7E0(v44, &qword_27CE5C378, &unk_21DC15EA0);
            (*(v34 + 8))(v40, v35);
            v39 = v32;
          }

          sub_21D0CF7E0(v39, &qword_27CE5C378, &unk_21DC15EA0);
        }
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

void sub_21D54AC10(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v123 = a1;
  v116 = sub_21DBF719C();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v114 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8, &unk_21DC15CD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v108 - v5;
  v121 = sub_21DBF76AC();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v117 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C288, &unk_21DC1A810);
  MEMORY[0x28223BE20](v118);
  v9 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v119 = &v108 - v11;
  MEMORY[0x28223BE20](v12);
  v122 = (&v108 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C280, &unk_21DC15DA0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v19 = &v108 - v18;
  v20 = sub_21DBF9D8C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = (&v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    v112 = v9;
    swift_beginAccess();
    v26 = swift_weakLoadStrong();
    if (!v26)
    {

      return;
    }

    v27 = v26;
    v28 = *(v25 + *(*v25 + 112));
    *v23 = v28;
    (*(v21 + 104))(v23, *MEMORY[0x277D85200], v20);
    v29 = v28;
    LOBYTE(v28) = sub_21DBF9DAC();
    v31 = *(v21 + 8);
    v30 = (v21 + 8);
    v31(v23, v20);
    if ((v28 & 1) == 0)
    {
      __break(1u);
      goto LABEL_49;
    }

    v111 = v6;
    v113 = v27;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C290, &unk_21DC15DB0);
    v33 = *(v32 + 36);
    v34 = v123;
    sub_21D0D3954(v123 + v33, v19, &qword_27CE5C280, &unk_21DC15DA0);
    sub_21D53FB3C(v19);
    sub_21D0D3954(v34 + v33, v16, &qword_27CE5C280, &unk_21DC15DA0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v35 = *v16;
      sub_21D8D3BAC(*v16);

      return;
    }

    v110 = v25;
    v36 = v16;
    v16 = v122;
    sub_21D0D523C(v36, v122, &qword_27CE5C288, &unk_21DC1A810);
    v37 = v111;
    sub_21D0D3954(v34 + *(v32 + 40), v111, &qword_27CE5C1C8, &unk_21DC15CD0);
    v20 = v120;
    v19 = v121;
    v38 = (*(v120 + 48))(v37, 1, v121);
    v39 = v113;
    if (v38 == 1)
    {
      sub_21D0CF7E0(v37, &qword_27CE5C1C8, &unk_21DC15CD0);
      v40 = objc_opt_self();
      v41 = sub_21DBFA12C();
      v42 = [v40 internalErrorWithDebugDescription_];

      sub_21D8D3BAC(v42);

      v43 = v16;
LABEL_57:
      sub_21D0CF7E0(v43, &qword_27CE5C288, &unk_21DC1A810);
      return;
    }

    v44 = v117;
    (*(v20 + 32))(v117, v37, v19);
    v45 = v118;
    v46 = *(v16 + *(v118 + 48));
    v6 = sub_21DBF6C5C();
    v47 = *(v6 - 8);
    v30 = v119;
    (*(v47 + 16))(v119, v16, v6);
    *(v30 + *(v45 + 48)) = v46;
    v48 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_dataViewMonitor;
    swift_beginAccess();
    v49 = *(v39 + v48);
    if (!v49)
    {
      v51 = v46;

      goto LABEL_56;
    }

    v50 = v46;
    if (v110 != v49)
    {

LABEL_56:
      sub_21D0CF7E0(v30, &qword_27CE5C288, &unk_21DC1A810);
      (*(v20 + 8))(v44, v19);
      v43 = v16;
      goto LABEL_57;
    }

    v52 = sub_21DBF6E3C();
    sub_21D4F5F28(v52);
    v53 = v47;
    v55 = v54;

    sub_21D8D0B20(v46, v55);

    v56 = v112;
    sub_21D0D3954(v30, v112, &qword_27CE5C288, &unk_21DC1A810);

    v57 = v114;
    MEMORY[0x223D3F400]();
    v58 = *(v53 + 8);
    v123 = (v53 + 8);
    v111 = v58;
    v58(v56, v6);
    v27 = sub_21DBF716C();
    (*(v115 + 8))(v57, v116);
    if (v27 >> 62)
    {
      goto LABEL_50;
    }

    v59 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v59)
    {
LABEL_53:

      v116 = 0;
      v27 = v113;
LABEL_54:
      v97 = v117;
LABEL_55:
      v98 = v112;
      sub_21D0D3954(v30, v112, &qword_27CE5C288, &unk_21DC1A810);

      v99 = sub_21DBF6C2C();
      v111(v98, v6);
      v100 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
      swift_beginAccess();
      v101 = *(v27 + v100);
      *(v27 + v100) = v99;

      v125 = 0;
      v126 = 0xE000000000000000;
      sub_21DBFBEEC();
      v125 = *v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAD0, &qword_21DC2FFC0);
      v102 = sub_21DBFA1AC();
      v103 = v27;
      v105 = v104;

      v125 = v102;
      v126 = v105;
      MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
      v106 = sub_21DBFAEDC();
      v123 = &v108;
      MEMORY[0x28223BE20](v106);
      v107 = v119;
      *(&v108 - 4) = v103;
      *(&v108 - 3) = v107;
      v44 = v97;
      *(&v108 - 2) = v97;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
      v30 = v119;
      sub_21DBF625C();

      goto LABEL_56;
    }

LABEL_15:
    v115 = v6;
    *&v129 = MEMORY[0x277D84F90];
    sub_21D18E6B8(0, v59 & ~(v59 >> 63), 0);
    if (v59 < 0)
    {
      __break(1u);
    }

    else
    {
      v60 = 0;
      v61 = v129;
      do
      {
        if ((v27 & 0xC000000000000001) != 0)
        {
          v62 = MEMORY[0x223D44740](v60, v27);
        }

        else
        {
          v62 = *(v27 + 8 * v60 + 32);
        }

        v63 = v62;
        v64 = [v62 objectID];
        *&v129 = v61;
        v66 = *(v61 + 16);
        v65 = *(v61 + 24);
        if (v66 >= v65 >> 1)
        {
          v68 = v64;
          sub_21D18E6B8((v65 > 1), v66 + 1, 1);
          v64 = v68;
          v61 = v129;
        }

        ++v60;
        *(v61 + 16) = v66 + 1;
        v67 = v61 + 16 * v66;
        *(v67 + 32) = v64;
        *(v67 + 40) = v63;
      }

      while (v59 != v60);

      while (1)
      {
        v16 = v122;
        v19 = v121;
        v20 = v120;
        v30 = v119;
        v27 = v113;
        v6 = v115;
        if (*(v61 + 16))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A8, &qword_21DC09560);
          v69 = sub_21DBFC40C();
        }

        else
        {
          v69 = MEMORY[0x277D84F98];
        }

        *&v129 = v69;
        v70 = sub_21DBF8E0C();
        sub_21D1931C0(v70, 1, &v129);

        v71 = v129;
        v72 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
        swift_beginAccess();
        v73 = *(v27 + v72);
        if (!v73)
        {

          v116 = 0;
          goto LABEL_54;
        }

        sub_21D188810(v71);
        v6 = v74;

        if ((v6 & 0xC000000000000001) != 0)
        {
          if (v6 < 0)
          {
            v75 = v6;
          }

          else
          {
            v75 = v6 & 0xFFFFFFFFFFFFFF8;
          }

          v30 = sub_21D883714(v75);
          v116 = 0;

LABEL_47:
          v122 = &v108;
          *&v129 = *(v73 + 80);
          MEMORY[0x28223BE20](v76);
          *(&v108 - 2) = v73;
          *(&v108 - 1) = v30;
          sub_21DBF5EFC();

          sub_21DBF814C();

          v97 = v117;
          v30 = v119;
          v6 = v115;
          goto LABEL_55;
        }

        v109 = v73;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58308, &qword_21DC0CB20);
        v77 = sub_21DBFC3DC();
        v30 = v77;
        v78 = 0;
        v16 = (v6 + 64);
        v79 = 1 << *(v6 + 32);
        v80 = -1;
        if (v79 < 64)
        {
          v80 = ~(-1 << v79);
        }

        v19 = v80 & *(v6 + 64);
        v20 = (v79 + 63) >> 6;
        v114 = (v77 + 64);
        v116 = 0;
        if (v19)
        {
          break;
        }

LABEL_38:
        v82 = v78;
        while (1)
        {
          v78 = v82 + 1;
          if (__OFADD__(v82, 1))
          {
            break;
          }

          if (v78 >= v20)
          {

            v16 = v122;
            v19 = v121;
            v20 = v120;
            v73 = v109;
            goto LABEL_47;
          }

          v83 = v16[v78];
          ++v82;
          if (v83)
          {
            v81 = __clz(__rbit64(v83));
            v19 = (v83 - 1) & v83;
            goto LABEL_43;
          }
        }

LABEL_49:
        __break(1u);
LABEL_50:
        if (!sub_21DBFBD7C())
        {
          goto LABEL_53;
        }

        v59 = sub_21DBFBD7C();
        if (v59)
        {
          goto LABEL_15;
        }

        v115 = v6;

        v61 = MEMORY[0x277D84F90];
      }

      while (1)
      {
        v81 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_43:
        v84 = v81 | (v78 << 6);
        v85 = *(*(v6 + 56) + 8 * v84);
        v86 = *(*(v6 + 48) + 8 * v84);
        v87 = v85;

        v127 = sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
        v128 = &protocol witness table for REMReminder;
        v125 = v87;
        v124 = 3;
        v88 = v87;
        TTRReminderViewModelComputedProperties.init(reminder:postProcessingOperations:)(&v125, &v124, &v129);
        v89 = v130;
        v90 = v131;
        v91 = v132;
        v92 = v129;
        *&v114[(v84 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v84;
        *(v30[6] + 8 * v84) = v86;
        v93 = v30[7] + 48 * v84;
        *v93 = v88;
        *(v93 + 8) = v92;
        *(v93 + 24) = v89;
        *(v93 + 32) = v90;
        *(v93 + 40) = v91;
        v94 = v30[2];
        v95 = __OFADD__(v94, 1);
        v96 = v94 + 1;
        if (v95)
        {
          break;
        }

        v30[2] = v96;
        v27 = v113;
        if (!v19)
        {
          goto LABEL_38;
        }
      }
    }

    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

void sub_21D54BBD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v125 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8, &unk_21DC15CD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v114 - v4;
  v123 = sub_21DBF76AC();
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v119 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3A8, &unk_21DC1DC70);
  MEMORY[0x28223BE20](v120);
  v8 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v121 = &v114 - v10;
  MEMORY[0x28223BE20](v11);
  v124 = &v114 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3A0, &unk_21DC15EC0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v18 = &v114 - v17;
  v19 = sub_21DBF9D8C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = (&v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v116 = v8;
    swift_beginAccess();
    v25 = swift_weakLoadStrong();
    if (!v25)
    {

      return;
    }

    v26 = v25;
    v27 = *(v24 + *(*v24 + 112));
    *v22 = v27;
    (*(v20 + 104))(v22, *MEMORY[0x277D85200], v19);
    v28 = v27;
    LOBYTE(v27) = sub_21DBF9DAC();
    v30 = *(v20 + 8);
    v29 = v20 + 8;
    v30(v22, v19);
    if ((v27 & 1) == 0)
    {
      __break(1u);
      goto LABEL_55;
    }

    v115 = v5;
    v117 = v26;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3C8, &qword_21DC15EE8);
    v32 = *(v31 + 36);
    v33 = v125;
    sub_21D0D3954(v125 + v32, v18, &qword_27CE5C3A0, &unk_21DC15EC0);
    sub_21D53FD70(v18);
    sub_21D0D3954(v33 + v32, v15, &qword_27CE5C3A0, &unk_21DC15EC0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v34 = *v15;
      sub_21D5DE2B8(*v15);

      return;
    }

    v118 = v24;
    v35 = v15;
    v36 = v124;
    sub_21D0D523C(v35, v124, &qword_27CE5C3A8, &unk_21DC1DC70);
    v37 = v33 + *(v31 + 40);
    v38 = v115;
    sub_21D0D3954(v37, v115, &qword_27CE5C1C8, &unk_21DC15CD0);
    v39 = v122;
    v40 = v123;
    if ((*(v122 + 48))(v38, 1, v123) == 1)
    {
      sub_21D0CF7E0(v38, &qword_27CE5C1C8, &unk_21DC15CD0);
      v41 = objc_opt_self();
      v42 = sub_21DBFA12C();
      v43 = [v41 internalErrorWithDebugDescription_];

      sub_21D5DE2B8(v43);

      v44 = v36;
LABEL_62:
      sub_21D0CF7E0(v44, &qword_27CE5C3A8, &unk_21DC1DC70);
      return;
    }

    v26 = v119;
    (*(v39 + 32))(v119, v38, v40);
    v45 = v120;
    v46 = *(v36 + *(v120 + 48));
    v47 = sub_21DBF75EC();
    v48 = *(v47 - 8);
    v49 = v121;
    (*(v48 + 16))(v121, v36, v47);
    *(v49 + *(v45 + 48)) = v46;
    v50 = OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_dataViewMonitor;
    v51 = v117;
    swift_beginAccess();
    v52 = *(v51 + v50);
    if (!v52)
    {
      v54 = v46;

      goto LABEL_13;
    }

    v53 = v46;
    if (v118 != v52)
    {

LABEL_13:

LABEL_61:
      sub_21D0CF7E0(v49, &qword_27CE5C3A8, &unk_21DC1DC70);
      (*(v39 + 8))(v26, v40);
      v44 = v36;
      goto LABEL_62;
    }

    v55 = v53;
    v56 = sub_21DBF6E3C();
    sub_21D4F5F28(v56);
    v58 = v57;

    if (v46)
    {
      v125 = v58;
      v59 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
      v60 = v117;
      swift_beginAccess();
      if (*(v60 + v59))
      {
        v61 = v55;

        sub_21D4F9F64(v61, v125);
      }

      else
      {
        v62 = *(v60 + OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_store);
        sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
        v63 = v55;
        v64 = sub_21DBFB12C();
        v65 = swift_allocObject();
        *(v65 + 16) = 0;
        v66 = sub_21D87E81C(v62, sub_21D554248, v65, v63, v64);
        *(v60 + v59) = v66;

        swift_beginAccess();
        v66[3] = &protocol witness table for TTRShowScheduledByDateBucketsDataModelSource;
        swift_unknownObjectWeakAssign();
      }
    }

    else
    {
    }

    v67 = v116;
    sub_21D0D3954(v121, v116, &qword_27CE5C3A8, &unk_21DC1DC70);

    v29 = sub_21DBF716C();
    (*(v48 + 8))(v67, v47);
    if (v29 >> 62)
    {
      goto LABEL_56;
    }

    v68 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v68)
    {
LABEL_59:

LABEL_60:
      *&v128 = 0;
      *(&v128 + 1) = 0xE000000000000000;
      sub_21DBFBEEC();
      v109 = v117;
      *&v128 = *v117;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DB10, &qword_21DC1A8B0);
      v110 = sub_21DBFA1AC();
      v112 = v111;

      *&v128 = v110;
      *(&v128 + 1) = v112;
      MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
      v113 = sub_21DBFAEDC();
      MEMORY[0x28223BE20](v113);
      v49 = v121;
      *(&v114 - 4) = v109;
      *(&v114 - 3) = v49;
      *(&v114 - 2) = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
      sub_21DBF625C();

      v36 = v124;
      v40 = v123;
      v39 = v122;
      goto LABEL_61;
    }

LABEL_21:
    *&v128 = MEMORY[0x277D84F90];
    sub_21D18E6B8(0, v68 & ~(v68 >> 63), 0);
    if (v68 < 0)
    {
      __break(1u);
    }

    else
    {
      v69 = 0;
      v70 = v128;
      do
      {
        if ((v29 & 0xC000000000000001) != 0)
        {
          v71 = MEMORY[0x223D44740](v69, v29);
        }

        else
        {
          v71 = *(v29 + 8 * v69 + 32);
        }

        v72 = v71;
        v73 = [v71 objectID];
        *&v128 = v70;
        v75 = *(v70 + 16);
        v74 = *(v70 + 24);
        if (v75 >= v74 >> 1)
        {
          v77 = v73;
          sub_21D18E6B8((v74 > 1), v75 + 1, 1);
          v73 = v77;
          v70 = v128;
        }

        ++v69;
        *(v70 + 16) = v75 + 1;
        v76 = v70 + 16 * v75;
        *(v76 + 32) = v73;
        *(v76 + 40) = v72;
      }

      while (v68 != v69);

      while (1)
      {
        v78 = v117;
        if (*(v70 + 16))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A8, &qword_21DC09560);
          v79 = sub_21DBFC40C();
        }

        else
        {
          v79 = MEMORY[0x277D84F98];
        }

        *&v128 = v79;
        v80 = sub_21DBF8E0C();
        sub_21D1931C0(v80, 1, &v128);

        v81 = v128;
        v82 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
        swift_beginAccess();
        v29 = *(v78 + v82);
        if (!v29)
        {

          v26 = v119;
          goto LABEL_60;
        }

        sub_21D188810(v81);
        v26 = v83;

        if ((v26 & 0xC000000000000001) != 0)
        {
          if (v26 < 0)
          {
            v84 = v26;
          }

          else
          {
            v84 = v26 & 0xFFFFFFFFFFFFFF8;
          }

          v85 = sub_21D883714(v84);
          v125 = 0;

LABEL_53:
          *&v128 = *(v29 + 80);
          MEMORY[0x28223BE20](v86);
          *(&v114 - 2) = v29;
          *(&v114 - 1) = v85;
          sub_21DBF5EFC();

          sub_21DBF814C();

          v26 = v119;
          goto LABEL_60;
        }

        v125 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58308, &qword_21DC0CB20);
        v87 = sub_21DBFC3DC();
        v85 = v87;
        v88 = 0;
        v89 = 1 << *(v26 + 32);
        v90 = -1;
        if (v89 < 64)
        {
          v90 = ~(-1 << v89);
        }

        v91 = v90 & *(v26 + 64);
        v92 = (v89 + 63) >> 6;
        v120 = v87 + 64;
        if (v91)
        {
          break;
        }

LABEL_44:
        v94 = v88;
        while (1)
        {
          v88 = v94 + 1;
          if (__OFADD__(v94, 1))
          {
            break;
          }

          if (v88 >= v92)
          {

            goto LABEL_53;
          }

          v95 = *(v26 + 64 + 8 * v88);
          ++v94;
          if (v95)
          {
            v93 = __clz(__rbit64(v95));
            v91 = (v95 - 1) & v95;
            goto LABEL_49;
          }
        }

LABEL_55:
        __break(1u);
LABEL_56:
        if (!sub_21DBFBD7C())
        {
          goto LABEL_59;
        }

        v68 = sub_21DBFBD7C();
        if (v68)
        {
          goto LABEL_21;
        }

        v70 = MEMORY[0x277D84F90];
      }

      while (1)
      {
        v93 = __clz(__rbit64(v91));
        v91 &= v91 - 1;
LABEL_49:
        v96 = v93 | (v88 << 6);
        v97 = *(*(v26 + 56) + 8 * v96);
        v98 = *(*(v26 + 48) + 8 * v96);
        v99 = v97;

        v127[3] = sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
        v127[4] = &protocol witness table for REMReminder;
        v127[0] = v99;
        v126 = 3;
        v100 = v99;
        TTRReminderViewModelComputedProperties.init(reminder:postProcessingOperations:)(v127, &v126, &v128);
        v101 = v129;
        v102 = v130;
        v103 = v131;
        v104 = v128;
        *(v120 + ((v96 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v96;
        *(v85[6] + 8 * v96) = v98;
        v105 = v85[7] + 48 * v96;
        *v105 = v100;
        *(v105 + 8) = v104;
        *(v105 + 24) = v101;
        *(v105 + 32) = v102;
        *(v105 + 40) = v103;
        v106 = v85[2];
        v107 = __OFADD__(v106, 1);
        v108 = v106 + 1;
        if (v107)
        {
          break;
        }

        v85[2] = v108;
        if (!v91)
        {
          goto LABEL_44;
        }
      }
    }

    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}