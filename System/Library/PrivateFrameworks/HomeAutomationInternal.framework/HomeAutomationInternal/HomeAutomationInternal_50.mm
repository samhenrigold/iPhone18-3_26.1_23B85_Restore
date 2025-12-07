uint64_t sub_252CFD198(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v555 = v3;
  v5 = v4;
  v559 = v6;
  v539 = v7;
  v537 = v8;
  v557 = v2;
  v521 = v9;
  v10 = sub_252E34874();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v547 = (&v518 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D70, &unk_252E5B5A0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v522 = &v518 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v523 = &v518 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v524 = &v518 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v525 = &v518 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v526 = &v518 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v527 = &v518 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v528 = &v518 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v518 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v518 - v31;
  v33 = sub_252E34804();
  v552 = *(v33 - 8);
  v34 = MEMORY[0x28223BE20](v33);
  v549 = &v518 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  *&v548 = &v518 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v556 = &v518 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v541 = &v518 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v550 = (&v518 - v43);
  v44 = MEMORY[0x28223BE20](v42);
  v46 = &v518 - v45;
  v47 = MEMORY[0x28223BE20](v44);
  v542 = &v518 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v553 = (&v518 - v50);
  v51 = MEMORY[0x28223BE20](v49);
  v53 = &v518 - v52;
  v54 = MEMORY[0x28223BE20](v51);
  v530 = &v518 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v535 = &v518 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v531 = &v518 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v532 = &v518 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v533 = &v518 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  *&v534 = &v518 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v520 = &v518 - v67;
  MEMORY[0x28223BE20](v66);
  v551 = &v518 - v68;
  memcpy(v623, v1, sizeof(v623));
  v558 = v1;
  memcpy(v573, v1, sizeof(v573));
  sub_2529353AC(v623, v624);
  sub_252CF5B00(v559, v572);
  memcpy(v624, v573, 0x1F8uLL);
  sub_252935408(v624);
  v69 = v572[0];
  v559 = v33;
  v540 = v10;
  v554 = v5;
  v519 = v53;
  v529 = v30;
  if (v572[0] != 21 && !sub_2529A6F34(v572[0], v623[11]))
  {
    v76 = v5[11];
    v70 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v76 = sub_2529F82D8(0, *(v76 + 2) + 1, 1, v76);
    }

    v78 = *(v76 + 2);
    v77 = *(v76 + 3);
    if (v78 >= v77 >> 1)
    {
      v76 = sub_2529F82D8((v77 > 1), v78 + 1, 1, v76);
    }

    *(v76 + 2) = v78 + 1;
    v76[v78 + 32] = v69;
    v5[11] = v76;
    goto LABEL_12;
  }

  v70 = v11;
  memcpy(v572, v558, sizeof(v572));
  memcpy(v571, v558, sizeof(v571));
  sub_2529353AC(v572, v570);
  sub_252D01354(v557, v32);
  memcpy(v573, v571, sizeof(v573));
  sub_252935408(v573);
  v71 = v552;
  if ((*(v552 + 48))(v32, 1, v33) == 1)
  {
    sub_25293847C(v32, &qword_27F541D70, &unk_252E5B5A0);
    v72 = v557;
LABEL_13:
    v79 = v70;
    goto LABEL_14;
  }

  v73 = v551;
  (*(v71 + 32))(v551, v32, v33);
  v74._countAndFlagsBits = sub_252E347E4();
  PlaceHintSemantic.init(rawValue:)(v74);
  v75 = v571[0];
  if (v571[0] == 21)
  {
    (*(v71 + 8))(v73, v33);
LABEL_12:
    v72 = v557;
    v10 = v540;
    goto LABEL_13;
  }

  v97 = v5[11];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v97 = sub_2529F82D8(0, *(v97 + 2) + 1, 1, v97);
  }

  v79 = v70;
  v99 = *(v97 + 2);
  v98 = *(v97 + 3);
  if (v99 >= v98 >> 1)
  {
    v97 = sub_2529F82D8((v98 > 1), v99 + 1, 1, v97);
  }

  *(v97 + 2) = v99 + 1;
  v97[v99 + 32] = v75;
  v5[11] = v97;
  if ((v555 & 1) == 0)
  {
    goto LABEL_41;
  }

  v33 = v559;
  (*(v552 + 8))(v73);
LABEL_33:
  v72 = v557;
  v10 = v540;
LABEL_14:
  v80 = v547;
LABEL_15:
  memcpy(v573, v558, sizeof(v573));
  v81 = *MEMORY[0x277D5E508];
  *&v546 = v79[13];
  (v546)(v80, v81, v10);
  v82 = v529;
  sub_252D02F3C(v72, v80, v529);
  v545 = v79[1];
  (v545)(v80, v10);
  v83 = v552;
  v543 = *(v552 + 48);
  v544 = v552 + 48;
  v84 = v543(v82, 1, v33);
  v5 = v554;
  v551 = v46;
  v536 = (v79 + 1);
  v538 = (v79 + 13);
  if (v84 != 1)
  {
    v73 = v520;
    (*(v83 + 32))();
    v85 = sub_252E347E4();
    v87 = v86;
    v88 = v5[6];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_413;
    }

    goto LABEL_18;
  }

  sub_25293847C(v82, &qword_27F541D70, &unk_252E5B5A0);
  while (1)
  {
    memcpy(v573, v558, sizeof(v573));
    v120 = v547;
    (v546)(v547, *MEMORY[0x277D5E528], v10);
    v121 = v528;
    sub_252D02F3C(v72, v120, v528);
    (v545)(v120, v10);
    if (v543(v121, 1, v33) == 1)
    {
      sub_25293847C(v121, &qword_27F541D70, &unk_252E5B5A0);
      v122 = v554;
      v123 = v547;
      goto LABEL_77;
    }

    v124 = v121;
    v125 = v33;
    (*(v552 + 32))(v534, v124, v33);
    v126 = sub_252E347E4();
    v128 = v127;
    v129 = v554;
    v130 = v554[13];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v130 = sub_2529F7A80(0, *(v130 + 2) + 1, 1, v130);
    }

    v123 = v547;
    v132 = *(v130 + 2);
    v131 = *(v130 + 3);
    if (v132 >= v131 >> 1)
    {
      v130 = sub_2529F7A80((v131 > 1), v132 + 1, 1, v130);
    }

    *(v130 + 2) = v132 + 1;
    v133 = &v130[16 * v132];
    *(v133 + 4) = v126;
    *(v133 + 5) = v128;
    v129[13] = v130;
    v72 = v557;
    v134 = v534;
    v33 = v125;
    if ((v555 & 1) == 0)
    {
      memcpy(v572, v558, sizeof(v572));
      memcpy(v571, v558, sizeof(v571));
      sub_2529353AC(v572, v570);
      sub_252D01540(v72, v134, &v584);
      memcpy(v573, v571, sizeof(v573));
      result = sub_252935408(v573);
      v135 = v588;
      if (v588 != 1)
      {
        if ((v586 & 1) == 0)
        {
          v143 = v585;
          result = sub_25293847C(&v584, &qword_27F545530, &unk_252E5B5C0);
          v144 = v554[40];
          v105 = __OFADD__(v144, v143);
          v145 = v144 + v143;
          v72 = v557;
          if (v105)
          {
            goto LABEL_419;
          }

          v554[40] = v145;
          goto LABEL_70;
        }

        v136 = v554;
        if (v588)
        {
          v137 = *(&v584 + 1) - v584;
          if (__OFSUB__(*(&v584 + 1), v584))
          {
            goto LABEL_433;
          }

          v138 = v587;

          v139 = sub_252AD4324(v138, v135);
          sub_25293847C(&v584, &qword_27F545530, &unk_252E5B5C0);
          result = sub_25293847C(&v584, &qword_27F545530, &unk_252E5B5C0);
          if (__OFSUB__(v137, v139))
          {
            goto LABEL_438;
          }

          v140 = (v137 - v139) & ~((v137 - v139) >> 63);
          v141 = v136[40];
          v105 = __OFADD__(v141, v140);
          v142 = v141 + v140;
          v72 = v557;
          if (v105)
          {
            goto LABEL_442;
          }

          v136[40] = v142;
          goto LABEL_70;
        }
      }

      v72 = v557;
    }

LABEL_70:
    memcpy(v572, v558, sizeof(v572));
    memcpy(v571, v558, sizeof(v571));
    sub_2529353AC(v572, v570);
    sub_252D02164(v72, v134, sub_252D083F0, v569);
    memcpy(v573, v571, sizeof(v573));
    sub_252935408(v573);
    v146 = *&v569[8];
    if (*&v569[8] == 1)
    {
      (*(v552 + 8))(v134, v33);
      v10 = v540;
      v122 = v554;
    }

    else
    {
      v147 = *v569;
      v148 = v569[24];
      v149 = v569[16];
      v150 = *&v569[20];
      v151 = v554[55];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v151 = sub_2529F8360(0, *(v151 + 2) + 1, 1, v151);
      }

      v153 = *(v151 + 2);
      v152 = *(v151 + 3);
      if (v153 >= v152 >> 1)
      {
        v151 = sub_2529F8360((v152 > 1), v153 + 1, 1, v151);
      }

      v33 = v559;
      (*(v552 + 8))(v534, v559);
      *(v151 + 2) = v153 + 1;
      v154 = &v151[32 * v153];
      *(v154 + 4) = v147;
      *(v154 + 5) = v146;
      v154[48] = v149;
      *(v154 + 13) = v150;
      v154[56] = v148;
      v122 = v554;
      v554[55] = v151;
      v72 = v557;
      v46 = v551;
      v10 = v540;
      v123 = v547;
    }

LABEL_77:
    memcpy(v573, v558, sizeof(v573));
    *v123 = 0xD000000000000018;
    v123[1] = 0x8000000252E932F0;
    LODWORD(v534) = *MEMORY[0x277D5E510];
    (v546)(v123);
    v155 = v527;
    sub_252D02F3C(v72, v547, v527);
    v156 = v155;
    (v545)(v547, v10);
    if (v543(v155, 1, v33) == 1)
    {
      v157 = v72;
      sub_25293847C(v156, &qword_27F541D70, &unk_252E5B5A0);
      goto LABEL_103;
    }

    (*(v552 + 32))(v533, v155, v33);
    v158 = sub_252E347E4();
    v160 = v159;
    v161 = v122[14];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v161 = sub_2529F7A80(0, *(v161 + 2) + 1, 1, v161);
    }

    v163 = *(v161 + 2);
    v162 = *(v161 + 3);
    if (v163 >= v162 >> 1)
    {
      v161 = sub_2529F7A80((v162 > 1), v163 + 1, 1, v161);
    }

    *(v161 + 2) = v163 + 1;
    v164 = &v161[16 * v163];
    *(v164 + 4) = v158;
    *(v164 + 5) = v160;
    v122[14] = v161;
    v157 = v557;
    v165 = v533;
    if ((v555 & 1) == 0)
    {
      memcpy(v572, v558, sizeof(v572));
      memcpy(v571, v558, sizeof(v571));
      sub_2529353AC(v572, v570);
      sub_252D01540(v157, v165, &v589);
      memcpy(v573, v571, sizeof(v573));
      result = sub_252935408(v573);
      v166 = v593;
      if (v593 == 1)
      {
        v157 = v557;
        goto LABEL_95;
      }

      if (v591)
      {
        if (!v593)
        {

          v157 = v557;
          goto LABEL_95;
        }

        v167 = *(&v589 + 1) - v589;
        if (__OFSUB__(*(&v589 + 1), v589))
        {
          goto LABEL_434;
        }

        v168 = v592;

        v169 = sub_252AD4324(v168, v166);
        sub_25293847C(&v589, &qword_27F545530, &unk_252E5B5C0);
        result = sub_25293847C(&v589, &qword_27F545530, &unk_252E5B5C0);
        if (__OFSUB__(v167, v169))
        {
          goto LABEL_439;
        }

        v170 = (v167 - v169) & ~((v167 - v169) >> 63);
        v171 = v122[40];
        v105 = __OFADD__(v171, v170);
        v172 = v171 + v170;
        v157 = v557;
        if (!v105)
        {
          goto LABEL_94;
        }

        __break(1u);
      }

      v173 = v590;
      result = sub_25293847C(&v589, &qword_27F545530, &unk_252E5B5C0);
      v174 = v122[40];
      v105 = __OFADD__(v174, v173);
      v172 = v174 + v173;
      v157 = v557;
      if (v105)
      {
        goto LABEL_420;
      }

LABEL_94:
      v122[40] = v172;
    }

LABEL_95:
    memcpy(v572, v558, sizeof(v572));
    memcpy(v571, v558, sizeof(v571));
    sub_2529353AC(v572, v570);
    sub_252D02164(v157, v165, sub_252D083F0, v569);
    memcpy(v573, v571, sizeof(v573));
    sub_252935408(v573);
    v175 = *&v569[8];
    if (*&v569[8] == 1)
    {
      (*(v552 + 8))(v165, v33);
    }

    else
    {
      v176 = *v569;
      v177 = v569[24];
      v178 = v569[16];
      v179 = *&v569[20];
      v180 = v122[56];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v180 = sub_2529F8360(0, *(v180 + 2) + 1, 1, v180);
      }

      v182 = *(v180 + 2);
      v181 = *(v180 + 3);
      if (v182 >= v181 >> 1)
      {
        v180 = sub_2529F8360((v181 > 1), v182 + 1, 1, v180);
      }

      v33 = v559;
      (*(v552 + 8))(v533, v559);
      *(v180 + 2) = v182 + 1;
      v183 = &v180[32 * v182];
      *(v183 + 4) = v176;
      *(v183 + 5) = v175;
      v183[48] = v178;
      *(v183 + 13) = v179;
      v183[56] = v177;
      v554[56] = v180;
      v157 = v557;
      v46 = v551;
    }

    v10 = v540;
LABEL_103:
    memcpy(v573, v558, sizeof(v573));
    v184 = v547;
    (v546)(v547, *MEMORY[0x277D5E530], v10);
    v185 = v526;
    sub_252D02F3C(v157, v184, v526);
    (v545)(v184, v10);
    if (v543(v185, 1, v33) == 1)
    {
      sub_25293847C(v185, &qword_27F541D70, &unk_252E5B5A0);
      v186 = v547;
      v187 = v157;
      v188 = v534;
      goto LABEL_128;
    }

    (*(v552 + 32))(v532, v185, v33);
    v189 = sub_252E347E4();
    v191 = v190;
    v192 = v554;
    v193 = v554[28];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v193 = sub_2529F7A80(0, *(v193 + 2) + 1, 1, v193);
    }

    v186 = v547;
    v195 = *(v193 + 2);
    v194 = *(v193 + 3);
    if (v195 >= v194 >> 1)
    {
      v193 = sub_2529F7A80((v194 > 1), v195 + 1, 1, v193);
    }

    *(v193 + 2) = v195 + 1;
    v196 = &v193[16 * v195];
    *(v196 + 4) = v189;
    *(v196 + 5) = v191;
    v192[28] = v193;
    v187 = v557;
    v197 = v532;
    if ((v555 & 1) == 0)
    {
      memcpy(v572, v558, sizeof(v572));
      memcpy(v571, v558, sizeof(v571));
      sub_2529353AC(v572, v570);
      sub_252D01540(v187, v197, &v594);
      memcpy(v573, v571, sizeof(v573));
      result = sub_252935408(v573);
      v198 = v598;
      if (v598 == 1)
      {
        v187 = v557;
        goto LABEL_121;
      }

      if ((v596 & 1) == 0)
      {
        goto LABEL_119;
      }

      if (v598)
      {
        v199 = *(&v594 + 1) - v594;
        if (__OFSUB__(*(&v594 + 1), v594))
        {
          goto LABEL_435;
        }

        v200 = v597;

        v201 = sub_252AD4324(v200, v198);
        sub_25293847C(&v594, &qword_27F545530, &unk_252E5B5C0);
        result = sub_25293847C(&v594, &qword_27F545530, &unk_252E5B5C0);
        if (__OFSUB__(v199, v201))
        {
          goto LABEL_440;
        }

        v202 = (v199 - v201) & ~((v199 - v201) >> 63);
        v203 = v192[40];
        v105 = __OFADD__(v203, v202);
        v204 = v203 + v202;
        v187 = v557;
        if (v105)
        {
          __break(1u);
LABEL_119:
          v205 = v595;
          result = sub_25293847C(&v594, &qword_27F545530, &unk_252E5B5C0);
          v206 = v192[40];
          v105 = __OFADD__(v206, v205);
          v204 = v206 + v205;
          v187 = v557;
          if (v105)
          {
            goto LABEL_421;
          }
        }

        v192[40] = v204;
        goto LABEL_121;
      }

      v187 = v557;
    }

LABEL_121:
    memcpy(v572, v558, sizeof(v572));
    memcpy(v571, v558, sizeof(v571));
    sub_2529353AC(v572, v570);
    sub_252D02164(v187, v197, sub_252D083F0, v569);
    memcpy(v573, v571, sizeof(v573));
    sub_252935408(v573);
    v207 = *&v569[8];
    if (*&v569[8] == 1)
    {
      (*(v552 + 8))(v197, v33);
      v10 = v540;
      v188 = v534;
    }

    else
    {
      v208 = *v569;
      LODWORD(v533) = v569[24];
      v209 = v569[16];
      v210 = *&v569[20];
      v211 = v192[57];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v192[57] = v211;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v211 = sub_2529F8360(0, *(v211 + 2) + 1, 1, v211);
        v192[57] = v211;
      }

      v214 = *(v211 + 2);
      v213 = *(v211 + 3);
      v188 = v534;
      if (v214 >= v213 >> 1)
      {
        v211 = sub_2529F8360((v213 > 1), v214 + 1, 1, v211);
        v554[57] = v211;
      }

      v33 = v559;
      (*(v552 + 8))(v532, v559);
      *(v211 + 2) = v214 + 1;
      v215 = &v211[32 * v214];
      *(v215 + 4) = v208;
      *(v215 + 5) = v207;
      v215[48] = v209;
      *(v215 + 13) = v210;
      v215[56] = v533;
      v554[57] = v211;
      v187 = v557;
      v46 = v551;
      v10 = v540;
      v186 = v547;
    }

LABEL_128:
    memcpy(v573, v558, sizeof(v573));
    *v186 = 0xD000000000000017;
    v186[1] = 0x8000000252E93310;
    (v546)(v186, v188, v10);
    v216 = v525;
    sub_252D02F3C(v187, v186, v525);
    v217 = v216;
    v218 = v186;
    (v545)(v186, v10);
    if (v543(v217, 1, v33) == 1)
    {
      sub_25293847C(v217, &qword_27F541D70, &unk_252E5B5A0);
      goto LABEL_153;
    }

    (*(v552 + 32))(v531, v217, v33);
    v219 = sub_252E347E4();
    v221 = v220;
    v222 = v554;
    v223 = v554[15];
    v224 = swift_isUniquelyReferenced_nonNull_native();
    v222[15] = v223;
    if ((v224 & 1) == 0)
    {
      v223 = sub_2529F7A80(0, *(v223 + 2) + 1, 1, v223);
      v222[15] = v223;
    }

    v226 = *(v223 + 2);
    v225 = *(v223 + 3);
    if (v226 >= v225 >> 1)
    {
      v223 = sub_2529F7A80((v225 > 1), v226 + 1, 1, v223);
    }

    *(v223 + 2) = v226 + 1;
    v227 = &v223[16 * v226];
    *(v227 + 4) = v219;
    *(v227 + 5) = v221;
    v222[15] = v223;
    v187 = v557;
    v228 = v531;
    if ((v555 & 1) == 0)
    {
      memcpy(v572, v558, sizeof(v572));
      memcpy(v571, v558, sizeof(v571));
      sub_2529353AC(v572, v570);
      sub_252D01540(v187, v228, &v599);
      memcpy(v573, v571, sizeof(v573));
      result = sub_252935408(v573);
      v229 = v603;
      if (v603 == 1)
      {
        v187 = v557;
        goto LABEL_146;
      }

      if ((v601 & 1) == 0)
      {
        goto LABEL_144;
      }

      if (v603)
      {
        v230 = *(&v599 + 1) - v599;
        if (__OFSUB__(*(&v599 + 1), v599))
        {
          goto LABEL_436;
        }

        v231 = v602;

        v232 = sub_252AD4324(v231, v229);
        sub_25293847C(&v599, &qword_27F545530, &unk_252E5B5C0);
        result = sub_25293847C(&v599, &qword_27F545530, &unk_252E5B5C0);
        if (__OFSUB__(v230, v232))
        {
          goto LABEL_441;
        }

        v233 = (v230 - v232) & ~((v230 - v232) >> 63);
        v234 = v222[40];
        v105 = __OFADD__(v234, v233);
        v235 = v234 + v233;
        v187 = v557;
        if (v105)
        {
          __break(1u);
LABEL_144:
          v236 = v600;
          result = sub_25293847C(&v599, &qword_27F545530, &unk_252E5B5C0);
          v237 = v222[40];
          v105 = __OFADD__(v237, v236);
          v235 = v237 + v236;
          v187 = v557;
          if (v105)
          {
            goto LABEL_422;
          }
        }

        v222[40] = v235;
        goto LABEL_146;
      }

      v187 = v557;
    }

LABEL_146:
    memcpy(v572, v558, sizeof(v572));
    memcpy(v571, v558, sizeof(v571));
    sub_2529353AC(v572, v570);
    sub_252D02164(v187, v228, sub_252D083F0, v569);
    memcpy(v573, v571, sizeof(v573));
    sub_252935408(v573);
    v238 = *&v569[8];
    if (*&v569[8] == 1)
    {
      (*(v552 + 8))(v228, v33);
      v10 = v540;
    }

    else
    {
      v239 = *v569;
      v240 = v569[24];
      v241 = v569[16];
      v242 = *&v569[20];
      v243 = v222[58];
      v244 = swift_isUniquelyReferenced_nonNull_native();
      v222[58] = v243;
      if ((v244 & 1) == 0)
      {
        v243 = sub_2529F8360(0, *(v243 + 2) + 1, 1, v243);
        v222[58] = v243;
      }

      v246 = *(v243 + 2);
      v245 = *(v243 + 3);
      if (v246 >= v245 >> 1)
      {
        v243 = sub_2529F8360((v245 > 1), v246 + 1, 1, v243);
        v554[58] = v243;
      }

      v33 = v559;
      (*(v552 + 8))(v531, v559);
      *(v243 + 2) = v246 + 1;
      v247 = &v243[32 * v246];
      *(v247 + 4) = v239;
      *(v247 + 5) = v238;
      v247[48] = v241;
      *(v247 + 13) = v242;
      v247[56] = v240;
      v554[58] = v243;
      v187 = v557;
      v46 = v551;
      v10 = v540;
      v218 = v547;
    }

LABEL_153:
    memcpy(v573, v558, sizeof(v573));
    (v546)(v218, *MEMORY[0x277D5E550], v10);
    v248 = v218;
    v249 = v524;
    sub_252D02F3C(v187, v248, v524);
    v250 = v249;
    v251 = v248;
    (v545)(v248, v10);
    if (v543(v250, 1, v33) == 1)
    {
      sub_25293847C(v250, &qword_27F541D70, &unk_252E5B5A0);
      v5 = v554;
      goto LABEL_183;
    }

    (*(v552 + 32))(v535, v250, v33);
    v252 = sub_252E347E4();
    v254 = v253;
    v5 = v554;
    v255 = v554[20];
    v256 = swift_isUniquelyReferenced_nonNull_native();
    v5[20] = v255;
    if ((v256 & 1) == 0)
    {
      v255 = sub_2529F7A80(0, *(v255 + 2) + 1, 1, v255);
      v5[20] = v255;
    }

    v258 = *(v255 + 2);
    v257 = *(v255 + 3);
    if (v258 >= v257 >> 1)
    {
      v255 = sub_2529F7A80((v257 > 1), v258 + 1, 1, v255);
    }

    *(v255 + 2) = v258 + 1;
    v259 = &v255[16 * v258];
    *(v259 + 4) = v252;
    *(v259 + 5) = v254;
    v5[20] = v255;
    v187 = v557;
    v260 = v535;
    if ((v555 & 1) == 0)
    {
      memcpy(v572, v558, sizeof(v572));
      memcpy(v571, v558, sizeof(v571));
      sub_2529353AC(v572, v570);
      sub_252D01540(v187, v260, &v604);
      memcpy(v573, v571, sizeof(v573));
      sub_252935408(v573);
      v261 = v605;
      v262 = v606;
      v263 = *(&v607 + 1);
      if (*(&v607 + 1))
      {
        if (*(&v607 + 1) == 1)
        {
          v187 = v557;
          v33 = v559;
          goto LABEL_176;
        }

        v534 = v607;
        v251 = *(&v604 + 1);
        v533 = v604;
        v265 = v5[45];

        result = swift_isUniquelyReferenced_nonNull_native();
        v5[45] = v265;
        if ((result & 1) == 0)
        {
          goto LABEL_415;
        }

        while (1)
        {
          v269 = *(v265 + 16);
          v268 = *(v265 + 24);
          v270 = v534;
          if (v269 >= v268 >> 1)
          {
            result = sub_2529F7A80((v268 > 1), v269 + 1, 1, v265);
            v270 = v534;
            v265 = result;
          }

          *(v265 + 16) = v269 + 1;
          *(v265 + 16 * v269 + 32) = v270;
          v5 = v554;
          v554[45] = v265;
          if (v262)
          {
            v271 = v251 - v533;
            if (__OFSUB__(v251, v533))
            {
              goto LABEL_423;
            }

            v272 = sub_252AD4324(v534, v263);
            sub_25293847C(&v604, &qword_27F545530, &unk_252E5B5C0);
            result = sub_25293847C(&v604, &qword_27F545530, &unk_252E5B5C0);
            if (__OFSUB__(v271, v272))
            {
              goto LABEL_426;
            }

            v273 = (v271 - v272) & ~((v271 - v272) >> 63);
            v274 = v5[40];
            v105 = __OFADD__(v274, v273);
            v275 = v274 + v273;
            v187 = v557;
            v33 = v559;
            v251 = v547;
            v260 = v535;
            if (v105)
            {
              goto LABEL_429;
            }

            v5[40] = v275;
            goto LABEL_176;
          }

LABEL_173:
          sub_25293847C(&v604, &qword_27F545530, &unk_252E5B5C0);
          v276 = v5[40];
          v105 = __OFADD__(v276, v261);
          v277 = v276 + v261;
          if (!v105)
          {
            break;
          }

          __break(1u);
LABEL_415:
          result = sub_2529F7A80(0, *(v265 + 16) + 1, 1, v265);
          v265 = result;
          v5[45] = result;
        }

        v5[40] = v277;
      }

      else
      {
        v264 = v539;

        sub_2529F77E0();
        v265 = *(v5[45] + 16);
        v263 = (v5 + 45);
        sub_2529F7934(v265);
        v266 = v5[45];
        *(v266 + 16) = v265 + 1;
        v267 = v266 + 16 * v265;
        *(v267 + 32) = v537;
        *(v267 + 40) = v264;
        v5[45] = v266;
        if ((v262 & 1) == 0)
        {
          goto LABEL_173;
        }
      }

      v187 = v557;
      v33 = v559;
      v251 = v547;
      v260 = v535;
    }

LABEL_176:
    memcpy(v572, v558, sizeof(v572));
    memcpy(v571, v558, sizeof(v571));
    sub_2529353AC(v572, v570);
    sub_252D02164(v187, v260, sub_252D083F0, v569);
    memcpy(v573, v571, sizeof(v573));
    sub_252935408(v573);
    v278 = *&v569[8];
    if (*&v569[8] == 1)
    {
      (*(v552 + 8))(v260, v33);
      v10 = v540;
    }

    else
    {
      v279 = *v569;
      v280 = v569[24];
      v281 = v569[16];
      v282 = *&v569[20];
      v283 = v5[50];
      v284 = swift_isUniquelyReferenced_nonNull_native();
      v5[50] = v283;
      if ((v284 & 1) == 0)
      {
        v283 = sub_2529F8360(0, *(v283 + 2) + 1, 1, v283);
        v5[50] = v283;
      }

      v286 = *(v283 + 2);
      v285 = *(v283 + 3);
      if (v286 >= v285 >> 1)
      {
        v283 = sub_2529F8360((v285 > 1), v286 + 1, 1, v283);
        v554[50] = v283;
      }

      v33 = v559;
      (*(v552 + 8))(v535, v559);
      *(v283 + 2) = v286 + 1;
      v287 = &v283[32 * v286];
      *(v287 + 4) = v279;
      *(v287 + 5) = v278;
      v287[48] = v281;
      *(v287 + 13) = v282;
      v287[56] = v280;
      v5 = v554;
      v554[50] = v283;
      v187 = v557;
      v46 = v551;
      v10 = v540;
      v251 = v547;
    }

LABEL_183:
    memcpy(v573, v558, sizeof(v573));
    (v546)(v251, *MEMORY[0x277D5E558], v10);
    v288 = v523;
    sub_252D02F3C(v187, v251, v523);
    (v545)(v251, v10);
    if (v543(v288, 1, v33) == 1)
    {
      sub_25293847C(v288, &qword_27F541D70, &unk_252E5B5A0);
      goto LABEL_208;
    }

    (*(v552 + 32))(v530, v288, v33);
    v289 = sub_252E347E4();
    v291 = v290;
    v292 = v5[21];
    v293 = swift_isUniquelyReferenced_nonNull_native();
    v5[21] = v292;
    if ((v293 & 1) == 0)
    {
      v292 = sub_2529F7A80(0, *(v292 + 2) + 1, 1, v292);
      v5[21] = v292;
    }

    v295 = *(v292 + 2);
    v294 = *(v292 + 3);
    if (v295 >= v294 >> 1)
    {
      v292 = sub_2529F7A80((v294 > 1), v295 + 1, 1, v292);
    }

    *(v292 + 2) = v295 + 1;
    v296 = &v292[16 * v295];
    *(v296 + 4) = v289;
    *(v296 + 5) = v291;
    v5[21] = v292;
    v187 = v557;
    v297 = v530;
    if ((v555 & 1) == 0)
    {
      memcpy(v572, v558, sizeof(v572));
      memcpy(v571, v558, sizeof(v571));
      sub_2529353AC(v572, v570);
      sub_252D01540(v187, v297, &v608);
      memcpy(v573, v571, sizeof(v573));
      sub_252935408(v573);
      v298 = v609;
      v299 = v610;
      v300 = v612;
      if (v612)
      {
        if (v612 == 1)
        {
          v187 = v557;
          v33 = v559;
LABEL_203:
          v297 = v530;
          goto LABEL_204;
        }

        *&v534 = *(&v608 + 1);
        v535 = v608;
        v305 = v611;

        sub_2529F77E0();
        v306 = *(v5[44] + 16);
        result = sub_2529F7934(v306);
        v307 = v5[44];
        *(v307 + 16) = v306 + 1;
        v308 = v307 + 16 * v306;
        *(v308 + 32) = v305;
        *(v308 + 40) = v300;
        v5[44] = v307;
        if (v299)
        {
          v309 = v534 - v535;
          if (__OFSUB__(v534, v535))
          {
            goto LABEL_424;
          }

          v310 = sub_252AD4324(v305, v300);
          sub_25293847C(&v608, &qword_27F545530, &unk_252E5B5C0);
          result = sub_25293847C(&v608, &qword_27F545530, &unk_252E5B5C0);
          v5 = v554;
          if (__OFSUB__(v309, v310))
          {
            goto LABEL_427;
          }

          v311 = (v309 - v310) & ~((v309 - v310) >> 63);
          v312 = v554[40];
          v105 = __OFADD__(v312, v311);
          v313 = v312 + v311;
          v187 = v557;
          v33 = v559;
          v251 = v547;
          v297 = v530;
          if (v105)
          {
            goto LABEL_430;
          }

          v554[40] = v313;
          goto LABEL_204;
        }

LABEL_200:
        result = sub_25293847C(&v608, &qword_27F545530, &unk_252E5B5C0);
        v314 = v5[40];
        v105 = __OFADD__(v314, v298);
        v315 = v314 + v298;
        if (v105)
        {
          __break(1u);
LABEL_417:
          __break(1u);
LABEL_418:
          __break(1u);
LABEL_419:
          __break(1u);
LABEL_420:
          __break(1u);
LABEL_421:
          __break(1u);
LABEL_422:
          __break(1u);
LABEL_423:
          __break(1u);
LABEL_424:
          __break(1u);
LABEL_425:
          __break(1u);
LABEL_426:
          __break(1u);
LABEL_427:
          __break(1u);
LABEL_428:
          __break(1u);
LABEL_429:
          __break(1u);
LABEL_430:
          __break(1u);
LABEL_431:
          __break(1u);
LABEL_432:
          __break(1u);
LABEL_433:
          __break(1u);
LABEL_434:
          __break(1u);
LABEL_435:
          __break(1u);
LABEL_436:
          __break(1u);
LABEL_437:
          __break(1u);
LABEL_438:
          __break(1u);
LABEL_439:
          __break(1u);
LABEL_440:
          __break(1u);
LABEL_441:
          __break(1u);
LABEL_442:
          __break(1u);
LABEL_443:
          __break(1u);
LABEL_444:
          __break(1u);
LABEL_445:
          __break(1u);
LABEL_446:
          __break(1u);
          return result;
        }

        v5[40] = v315;
      }

      else
      {
        v301 = v539;

        sub_2529F77E0();
        v302 = *(v5[44] + 16);
        sub_2529F7934(v302);
        v303 = v5[44];
        *(v303 + 16) = v302 + 1;
        v304 = v303 + 16 * v302;
        *(v304 + 32) = v537;
        *(v304 + 40) = v301;
        v5[44] = v303;
        if ((v299 & 1) == 0)
        {
          goto LABEL_200;
        }
      }

      v187 = v557;
      v33 = v559;
      v251 = v547;
      goto LABEL_203;
    }

LABEL_204:
    memcpy(v572, v558, sizeof(v572));
    memcpy(v571, v558, sizeof(v571));
    sub_2529353AC(v572, v570);
    sub_252D02164(v187, v297, sub_252D083F0, v569);
    memcpy(v573, v571, sizeof(v573));
    sub_252935408(v573);
    v316 = *&v569[8];
    if (*&v569[8] == 1)
    {
      (*(v552 + 8))(v297, v33);
    }

    else
    {
      LODWORD(v535) = v569[24];
      v317 = v297;
      v318 = v569[16];
      v319 = *v569;
      v320 = *&v569[20];
      sub_2529F7864();
      v321 = *(v554[52] + 16);
      sub_2529F79B0(v321);
      (*(v552 + 8))(v317, v559);
      v322 = v554[52];
      *(v322 + 16) = v321 + 1;
      v323 = v322 + 32 * v321;
      v187 = v557;
      *(v323 + 32) = v319;
      *(v323 + 40) = v316;
      *(v323 + 48) = v318;
      *(v323 + 52) = v320;
      v5 = v554;
      *(v323 + 56) = v535;
      v33 = v559;
      v5[52] = v322;
    }

    v10 = v540;
LABEL_208:
    memcpy(v573, v558, sizeof(v573));
    (v546)(v251, *MEMORY[0x277D5E548], v10);
    v324 = v522;
    sub_252D02F3C(v187, v251, v522);
    (v545)(v251, v10);
    if (v543(v324, 1, v33) == 1)
    {
      sub_25293847C(v324, &qword_27F541D70, &unk_252E5B5A0);
      goto LABEL_231;
    }

    v325 = v519;
    (*(v552 + 32))(v519, v324, v33);
    v326 = sub_252E347E4();
    v328 = v327;
    v329 = v5[19];
    v330 = swift_isUniquelyReferenced_nonNull_native();
    v5[19] = v329;
    if ((v330 & 1) == 0)
    {
      v329 = sub_2529F7A80(0, *(v329 + 2) + 1, 1, v329);
      v5[19] = v329;
    }

    v332 = *(v329 + 2);
    v331 = *(v329 + 3);
    if (v332 >= v331 >> 1)
    {
      v329 = sub_2529F7A80((v331 > 1), v332 + 1, 1, v329);
    }

    *(v329 + 2) = v332 + 1;
    v333 = &v329[16 * v332];
    *(v333 + 4) = v326;
    *(v333 + 5) = v328;
    v5[19] = v329;
    v187 = v557;
    if ((v555 & 1) == 0)
    {
      memcpy(v572, v558, sizeof(v572));
      memcpy(v571, v558, sizeof(v571));
      sub_2529353AC(v572, v570);
      sub_252D01540(v187, v325, &v613);
      memcpy(v573, v571, sizeof(v573));
      sub_252935408(v573);
      v334 = v614;
      v335 = v615;
      v336 = v617;
      if (v617)
      {
        if (v617 == 1)
        {
          v187 = v557;
          v33 = v559;
          goto LABEL_228;
        }

        v341 = *(&v613 + 1);
        v547 = v613;
        v342 = v616;

        sub_2529F77E0();
        v343 = *(v5[43] + 16);
        result = sub_2529F7934(v343);
        v344 = v5[43];
        *(v344 + 16) = v343 + 1;
        v345 = v344 + 16 * v343;
        *(v345 + 32) = v342;
        *(v345 + 40) = v336;
        v5[43] = v344;
        if (v335)
        {
          v346 = v341 - v547;
          if (__OFSUB__(v341, v547))
          {
            goto LABEL_425;
          }

          v347 = sub_252AD4324(v342, v336);
          sub_25293847C(&v613, &qword_27F545530, &unk_252E5B5C0);
          result = sub_25293847C(&v613, &qword_27F545530, &unk_252E5B5C0);
          v5 = v554;
          if (__OFSUB__(v346, v347))
          {
            goto LABEL_428;
          }

          v348 = (v346 - v347) & ~((v346 - v347) >> 63);
          v349 = v554[40];
          v105 = __OFADD__(v349, v348);
          v350 = v349 + v348;
          v187 = v557;
          v33 = v559;
          v46 = v551;
          v325 = v519;
          if (v105)
          {
            goto LABEL_431;
          }

          v554[40] = v350;
          goto LABEL_228;
        }

LABEL_225:
        result = sub_25293847C(&v613, &qword_27F545530, &unk_252E5B5C0);
        v351 = v5[40];
        v105 = __OFADD__(v351, v334);
        v352 = v351 + v334;
        if (v105)
        {
          goto LABEL_417;
        }

        v5[40] = v352;
      }

      else
      {
        v337 = v539;

        sub_2529F77E0();
        v338 = *(v5[43] + 16);
        sub_2529F7934(v338);
        v339 = v5[43];
        *(v339 + 16) = v338 + 1;
        v340 = v339 + 16 * v338;
        *(v340 + 32) = v537;
        *(v340 + 40) = v337;
        v5[43] = v339;
        if ((v335 & 1) == 0)
        {
          goto LABEL_225;
        }
      }

      v187 = v557;
      v33 = v559;
      v46 = v551;
      v325 = v519;
    }

LABEL_228:
    memcpy(v572, v558, sizeof(v572));
    memcpy(v571, v558, sizeof(v571));
    sub_2529353AC(v572, v570);
    sub_252D02164(v187, v325, sub_252D083F0, v569);
    memcpy(v573, v571, sizeof(v573));
    sub_252935408(v573);
    v353 = *&v569[8];
    if (*&v569[8] == 1)
    {
      (*(v552 + 8))(v325, v33);
    }

    else
    {
      v354 = v569[24];
      v355 = v569[16];
      v356 = *v569;
      v357 = *&v569[20];
      sub_2529F7864();
      v358 = *(v5[51] + 16);
      sub_2529F79B0(v358);
      (*(v552 + 8))(v325, v559);
      v359 = v5[51];
      *(v359 + 16) = v358 + 1;
      v360 = v359 + 32 * v358;
      v187 = v557;
      *(v360 + 32) = v356;
      *(v360 + 40) = v353;
      *(v360 + 48) = v355;
      *(v360 + 52) = v357;
      v46 = v551;
      *(v360 + 56) = v354;
      v33 = v559;
      v5[51] = v359;
    }

LABEL_231:
    v362 = sub_252D01B8C(v187);
    v363 = v361;
    if (!*(v362 + 2))
    {
      break;
    }

    v364 = 6;
LABEL_235:
    sub_2529F78D8();
    v365 = *(v5[47] + 16);
    sub_2529F7A18(v365);
    v366 = v5[47];
    *(v366 + 16) = v365 + 1;
    v365[v366 + 32] = v364;
    v5[47] = v366;
    v573[0] = v363;
    sub_25297BA5C(v362);
    v367 = v573[0];
    v368 = *(v573[0] + 16);
    v369 = MEMORY[0x277D84F90];
    v538 = v573[0];
    if (v368)
    {
      v573[0] = MEMORY[0x277D84F90];
      sub_2529507DC(v368);
      v547 = *(v552 + 16);
      v370 = v367 + ((*(v552 + 80) + 32) & ~*(v552 + 80));
      *&v546 = *(v552 + 72);
      v371 = (v552 + 8);
      do
      {
        v372 = v553;
        v373 = v559;
        (v547)(v553, v370, v559);
        v374 = sub_252E347E4();
        v376 = v375;
        (*v371)(v372, v373);
        v369 = v573[0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2529AA3A0(0, *(v369 + 16) + 1, 1);
          v369 = v573[0];
        }

        v378 = *(v369 + 16);
        v377 = *(v369 + 24);
        if (v378 >= v377 >> 1)
        {
          sub_2529AA3A0((v377 > 1), v378 + 1, 1);
          v369 = v573[0];
        }

        *(v369 + 16) = v378 + 1;
        v379 = v369 + 16 * v378;
        *(v379 + 32) = v374;
        *(v379 + 40) = v376;
        v370 += v546;
        --v368;
      }

      while (v368);
      v5 = v554;
      v33 = v559;
      v46 = v551;
    }

    v380 = sub_252DF88E4(v369);

    sub_25297A744(v380);
    v381 = *(v538 + 2);
    v382 = v542;
    if (!v381)
    {
      goto LABEL_268;
    }

    memcpy(v573, v558, sizeof(v573));
    v73 = (v552 + 16);
    v547 = *(v552 + 16);
    v383 = &v538[(*(v552 + 80) + 32) & ~*(v552 + 80)];
    v545 = *(v552 + 72);
    *&v546 = v552 + 8;
    v553 = (v381 - 1);
    v87 = v557;
    v540 = (v552 + 16);
    (v547)(v542, v383, v33);
    while (1)
    {
      if (v555)
      {
        goto LABEL_260;
      }

      v386 = v33;
      v33 = v46;
      v46 = v383;
      memcpy(v571, v558, sizeof(v571));
      memcpy(v570, v558, sizeof(v570));
      sub_2529353AC(v571, v569);
      sub_252D01540(v87, v382, &v618);
      v85 = v622;
      memcpy(v572, v570, sizeof(v572));
      sub_252935408(v572);
      v88 = v622;
      if (v622 == 1)
      {
        goto LABEL_258;
      }

      if (v620)
      {
        if (v622)
        {
          v387 = *(&v618 + 1) - v618;
          if (__OFSUB__(*(&v618 + 1), v618))
          {
            goto LABEL_404;
          }

          v544 = v621;

          v85 = sub_252AD4324(v544, v88);
          v88 = &qword_27F545530;
          sub_25293847C(&v618, &qword_27F545530, &unk_252E5B5C0);
          sub_25293847C(&v618, &qword_27F545530, &unk_252E5B5C0);
          if (__OFSUB__(v387, v85))
          {
            goto LABEL_405;
          }

          v388 = (v387 - v85) & ~((v387 - v85) >> 63);
          v389 = v5[40];
          v105 = __OFADD__(v389, v388);
          v390 = v389 + v388;
          if (v105)
          {
            goto LABEL_406;
          }

          v5[40] = v390;
          v382 = v542;
        }

        else
        {
        }

LABEL_258:
        v383 = v46;
        goto LABEL_259;
      }

      v85 = v619;
      sub_25293847C(&v618, &qword_27F545530, &unk_252E5B5C0);
      v391 = v5[40];
      v105 = __OFADD__(v391, v85);
      v392 = v391 + v85;
      if (v105)
      {
        break;
      }

      v383 = v46;
      v5[40] = v392;
LABEL_259:
      v46 = v33;
      v33 = v386;
LABEL_260:
      memcpy(v571, v573, sizeof(v571));
      sub_2529353AC(v573, v570);
      sub_252D02164(v87, v382, sub_252D083F0, v569);
      memcpy(v572, v571, sizeof(v572));
      sub_252935408(v572);
      v393 = *&v569[8];
      if (*&v569[8] == 1)
      {
        v384 = v46;
        (*v546)(v382, v33);
        v385 = v553;
        if (!v553)
        {
          goto LABEL_266;
        }
      }

      else
      {
        v394 = *v569;
        LODWORD(v544) = v569[24];
        LODWORD(v543) = *&v569[16];
        v395 = v5;
        v396 = *&v569[20];
        v397 = v395[60];
        v398 = swift_isUniquelyReferenced_nonNull_native();
        v395[60] = v397;
        if ((v398 & 1) == 0)
        {
          v397 = sub_2529F8360(0, *(v397 + 2) + 1, 1, v397);
          v554[60] = v397;
        }

        v400 = *(v397 + 2);
        v399 = *(v397 + 3);
        if (v400 >= v399 >> 1)
        {
          v397 = sub_2529F8360((v399 > 1), v400 + 1, 1, v397);
          v554[60] = v397;
        }

        v382 = v542;
        v33 = v559;
        (*v546)(v542, v559);
        *(v397 + 2) = v400 + 1;
        v401 = &v397[32 * v400];
        *(v401 + 4) = v394;
        *(v401 + 5) = v393;
        v401[48] = v543;
        *(v401 + 13) = v396;
        v401[56] = v544;
        v5 = v554;
        v554[60] = v397;
        v87 = v557;
        v384 = v551;
        v73 = v540;
        v385 = v553;
        if (!v553)
        {
LABEL_266:

          v46 = v384;
          goto LABEL_269;
        }
      }

      v553 = (v385 - 1);
      v383 += v545;
      v46 = v384;
      (v547)(v382, v383, v33);
    }

    __break(1u);
LABEL_402:
    __break(1u);
LABEL_403:
    __break(1u);
LABEL_404:
    __break(1u);
LABEL_405:
    __break(1u);
LABEL_406:
    __break(1u);
LABEL_407:
    __break(1u);
LABEL_408:
    __break(1u);
LABEL_409:
    __break(1u);
LABEL_410:
    __break(1u);
LABEL_411:
    __break(1u);
LABEL_412:
    __break(1u);
LABEL_413:
    v88 = sub_2529F7A80(0, *(v88 + 2) + 1, 1, v88);
LABEL_18:
    v90 = *(v88 + 2);
    v89 = *(v88 + 3);
    v70 = (v90 + 1);
    if (v90 >= v89 >> 1)
    {
      v88 = sub_2529F7A80((v89 > 1), v90 + 1, 1, v88);
    }

    *(v88 + 2) = v70;
    v91 = &v88[16 * v90];
    *(v91 + 4) = v85;
    *(v91 + 5) = v87;
    v5[6] = v88;
    v92 = v5[47];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v92 = sub_2529F846C(0, *(v92 + 2) + 1, 1, v92);
    }

    v94 = *(v92 + 2);
    v93 = *(v92 + 3);
    if (v94 >= v93 >> 1)
    {
      v92 = sub_2529F846C((v93 > 1), v94 + 1, 1, v92);
    }

    *(v92 + 2) = v94 + 1;
    v92[v94 + 32] = 8;
    v5[47] = v92;
    v72 = v557;
    if ((v555 & 1) == 0)
    {
      memcpy(v572, v558, sizeof(v572));
      memcpy(v571, v558, sizeof(v571));
      sub_2529353AC(v572, v570);
      sub_252D01540(v72, v73, &v579);
      memcpy(v573, v571, sizeof(v573));
      result = sub_252935408(v573);
      v96 = v583;
      if (v583 == 1)
      {
        v72 = v557;
        goto LABEL_45;
      }

      if ((v581 & 1) == 0)
      {
        v109 = v580;
        result = sub_25293847C(&v579, &qword_27F545530, &unk_252E5B5C0);
        v110 = v5[40];
        v105 = __OFADD__(v110, v109);
        v106 = v110 + v109;
        v72 = v557;
        if (!v105)
        {
          goto LABEL_44;
        }

        goto LABEL_418;
      }

      if (!v583)
      {

        v72 = v557;
        goto LABEL_45;
      }

      v100 = *(&v579 + 1) - v579;
      if (__OFSUB__(*(&v579 + 1), v579))
      {
        goto LABEL_432;
      }

      v101 = v582;

      v102 = sub_252AD4324(v101, v96);
      v79 = &unk_252E5B5C0;
      sub_25293847C(&v579, &qword_27F545530, &unk_252E5B5C0);
      result = sub_25293847C(&v579, &qword_27F545530, &unk_252E5B5C0);
      if (__OFSUB__(v100, v102))
      {
        goto LABEL_437;
      }

      v103 = (v100 - v102) & ~((v100 - v102) >> 63);
      v104 = v5[40];
      v105 = __OFADD__(v104, v103);
      v106 = v104 + v103;
      v72 = v557;
      if (!v105)
      {
LABEL_44:
        v5[40] = v106;
        goto LABEL_45;
      }

      __break(1u);
LABEL_41:
      memcpy(v570, v558, sizeof(v570));
      memcpy(v569, v558, sizeof(v569));
      sub_2529353AC(v570, &v560);
      sub_252D01540(v557, v73, &v574);
      memcpy(v571, v569, sizeof(v571));
      sub_252935408(v571);
      v107 = v578;
      result = v73;
      v108 = v559;
      v10 = v540;
      if (v578 == 1)
      {
        v33 = v559;
        (*(v552 + 8))(result, v559);
        v72 = v557;
        goto LABEL_14;
      }

      if (v576)
      {
        if (!v578)
        {
          v517 = *(v552 + 8);

          v33 = v108;
          v517(v551, v108);
          goto LABEL_33;
        }

        v507 = *(&v574 + 1) - v574;
        if (__OFSUB__(*(&v574 + 1), v574))
        {
          goto LABEL_444;
        }

        v508 = v577;

        v509 = sub_252AD4324(v508, v107);
        sub_25293847C(&v574, &qword_27F545530, &unk_252E5B5C0);
        sub_25293847C(&v574, &qword_27F545530, &unk_252E5B5C0);
        result = (*(v552 + 8))(v551, v108);
        if (__OFSUB__(v507, v509))
        {
          goto LABEL_445;
        }

        v510 = (v507 - v509) & ~((v507 - v509) >> 63);
        v511 = v5[40];
        v105 = __OFADD__(v511, v510);
        v512 = v511 + v510;
        v72 = v557;
        v10 = v540;
        if (v105)
        {
          goto LABEL_446;
        }

        v33 = v108;
        v79 = v70;
        v5[40] = v512;
        goto LABEL_14;
      }

      v513 = v575;
      sub_25293847C(&v574, &qword_27F545530, &unk_252E5B5C0);
      v33 = v108;
      result = (*(v552 + 8))(v551, v108);
      v514 = v5[40];
      v105 = __OFADD__(v514, v513);
      v515 = v514 + v513;
      v516 = v5;
      v80 = v547;
      if (v105)
      {
        goto LABEL_443;
      }

      v516[40] = v515;
      v72 = v557;
      goto LABEL_15;
    }

LABEL_45:
    memcpy(v572, v558, sizeof(v572));
    memcpy(v571, v558, sizeof(v571));
    sub_2529353AC(v572, v570);
    sub_252D02164(v72, v73, sub_252D083F0, v569);
    memcpy(v573, v571, sizeof(v573));
    sub_252935408(v573);
    v111 = *&v569[8];
    if (*&v569[8] == 1)
    {
      (*(v552 + 8))(v73, v33);
    }

    else
    {
      v112 = *v569;
      v113 = v569[24];
      v114 = v569[16];
      v115 = *&v569[20];
      v116 = v5[59];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v116 = sub_2529F8360(0, *(v116 + 2) + 1, 1, v116);
      }

      v118 = *(v116 + 2);
      v117 = *(v116 + 3);
      if (v118 >= v117 >> 1)
      {
        v116 = sub_2529F8360((v117 > 1), v118 + 1, 1, v116);
      }

      v33 = v559;
      (*(v552 + 8))(v520, v559);
      *(v116 + 2) = v118 + 1;
      v119 = &v116[32 * v118];
      *(v119 + 4) = v112;
      *(v119 + 5) = v111;
      v119[48] = v114;
      *(v119 + 13) = v115;
      v119[56] = v113;
      v554[59] = v116;
      v72 = v557;
      v46 = v551;
    }

    v10 = v540;
  }

  if (*(v361 + 16))
  {
    v364 = 7;
    goto LABEL_235;
  }

LABEL_268:

  v87 = v557;
LABEL_269:
  v402 = *(v87 + 16);
  v542 = v402;
  if (v402)
  {
    v403 = *(v552 + 16);
    *&v546 = (*(v552 + 80) + 32) & ~*(v552 + 80);
    v404 = v87 + v546;
    v547 = 0x8000000252E7B360;
    v405 = *(v552 + 72);
    v406 = (v552 + 8);
    v545 = v552 + 32;
    v553 = MEMORY[0x277D84F90];
    v403(v46, v404, v559);
    while (1)
    {
      v407 = sub_252E347F4();
      if (!v408)
      {
        break;
      }

      if (v407 == 0xD00000000000001BLL && v408 == v547)
      {
      }

      else
      {
        v409 = sub_252E37DB4();

        if ((v409 & 1) == 0)
        {
          break;
        }
      }

      v403(v550, v46, v559);
      v410 = v553;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v410 = sub_2529F85CC(0, v410[2] + 1, 1, v410);
      }

      v412 = v410[2];
      v411 = v410[3];
      v553 = v410;
      if (v412 >= v411 >> 1)
      {
        v553 = sub_2529F85CC((v411 > 1), v412 + 1, 1, v553);
      }

      v413 = v46;
      v414 = v559;
      (*v406)(v413, v559);
      v415 = v553;
      v553[2] = v412 + 1;
      v416 = v414;
      v46 = v551;
      (*v545)(&v415[v546 + v412 * v405], v550, v416);
LABEL_272:
      v404 += v405;
      if (!--v402)
      {
        goto LABEL_285;
      }

      v403(v46, v404, v559);
    }

    (*v406)(v46, v559);
    goto LABEL_272;
  }

  v553 = MEMORY[0x277D84F90];
LABEL_285:
  v5 = v554;
  v417 = v553[2];
  if (v417)
  {
    v73 = (v552 + 16);
    v418 = *(v552 + 16);
    v88 = v553 + ((*(v552 + 80) + 32) & ~*(v552 + 80));
    v419 = *(v552 + 72);
    v550 = (v552 + 8);
    v551 = v419;
    v33 = v559;
    v420 = v541;
    v543 = (v552 + 16);
    v547 = v418;
    (v418)(v541, v88, v559);
    while (1)
    {
      v421._countAndFlagsBits = sub_252E347E4();
      AccessoryTypeSemantic.init(rawValue:)(v421);
      v422 = v573[0];
      if (LOBYTE(v573[0]) == 52)
      {
        (*v550)(v420, v33);
        goto LABEL_288;
      }

      v423 = v5[18];
      v424 = swift_isUniquelyReferenced_nonNull_native();
      v5[18] = v423;
      if ((v424 & 1) == 0)
      {
        v423 = sub_2529F80DC(0, *(v423 + 2) + 1, 1, v423);
        v5[18] = v423;
      }

      v426 = *(v423 + 2);
      v425 = *(v423 + 3);
      if (v426 >= v425 >> 1)
      {
        v423 = sub_2529F80DC((v425 > 1), v426 + 1, 1, v423);
      }

      *(v423 + 2) = v426 + 1;
      v423[v426 + 32] = v422;
      v5[18] = v423;
      if ((v555 & 1) == 0)
      {
        memcpy(v572, v558, sizeof(v572));
        memcpy(v571, v558, sizeof(v571));
        sub_2529353AC(v572, v570);
        sub_252D01540(v557, v420, &v560);
        v85 = *(&v563 + 1);
        memcpy(v573, v571, sizeof(v573));
        sub_252935408(v573);
        v87 = v561;
        v33 = v562;
        v46 = *(&v563 + 1);
        if (*(&v563 + 1))
        {
          if (*(&v563 + 1) != 1)
          {
            v546 = v563;
            v544 = *(&v560 + 1);
            v427 = v560;
            v428 = v5;
            v429 = v5[42];
            sub_252938414(&v560, v571, &qword_27F545530, &unk_252E5B5C0);
            v430 = swift_isUniquelyReferenced_nonNull_native();
            v428[42] = v429;
            v545 = v427;
            if ((v430 & 1) == 0)
            {
              v429 = sub_2529F7A80(0, *(v429 + 2) + 1, 1, v429);
              v554[42] = v429;
            }

            v432 = *(v429 + 2);
            v431 = *(v429 + 3);
            v433 = v546;
            if (v432 >= v431 >> 1)
            {
              v454 = sub_2529F7A80((v431 > 1), v432 + 1, 1, v429);
              v433 = v546;
              v429 = v454;
            }

            *(v429 + 2) = v432 + 1;
            *&v429[16 * v432 + 32] = v433;
            v434 = v554;
            v554[42] = v429;
            v5 = v434;
            v73 = v543;
            if (v33)
            {
              v87 = v544 - v545;
              v420 = v541;
              if (__OFSUB__(v544, v545))
              {
                goto LABEL_407;
              }

              v85 = sub_252AD4324(v546, v46);
              v33 = &qword_27F545530;
              v46 = &unk_252E5B5C0;
              sub_25293847C(&v560, &qword_27F545530, &unk_252E5B5C0);
              sub_25293847C(&v560, &qword_27F545530, &unk_252E5B5C0);
              if (__OFSUB__(v87, v85))
              {
                goto LABEL_408;
              }

              v435 = (v87 - v85) & ~((v87 - v85) >> 63);
              v436 = v5[40];
              v105 = __OFADD__(v436, v435);
              v437 = v436 + v435;
              if (v105)
              {
                goto LABEL_409;
              }
            }

            else
            {
LABEL_314:
              sub_25293847C(&v560, &qword_27F545530, &unk_252E5B5C0);
              v443 = v5[40];
              v105 = __OFADD__(v443, v87);
              v437 = v443 + v87;
              v420 = v541;
              if (v105)
              {
                goto LABEL_402;
              }
            }

            v5[40] = v437;
          }
        }

        else
        {
          v46 = v5[42];

          v438 = swift_isUniquelyReferenced_nonNull_native();
          v5[42] = v46;
          if ((v438 & 1) == 0)
          {
            v46 = sub_2529F7A80(0, *(v46 + 2) + 1, 1, v46);
            v5[42] = v46;
          }

          v440 = *(v46 + 2);
          v439 = *(v46 + 3);
          if (v440 >= v439 >> 1)
          {
            v46 = sub_2529F7A80((v439 > 1), v440 + 1, 1, v46);
          }

          *(v46 + 2) = v440 + 1;
          v441 = &v46[16 * v440];
          v442 = v539;
          *(v441 + 4) = v537;
          *(v441 + 5) = v442;
          v5 = v554;
          v554[42] = v46;
          if ((v33 & 1) == 0)
          {
            goto LABEL_314;
          }

          v420 = v541;
        }
      }

      memcpy(v572, v558, sizeof(v572));
      memcpy(v571, v558, sizeof(v571));
      sub_2529353AC(v572, v570);
      sub_252D02164(v557, v420, sub_252D083F0, v569);
      memcpy(v573, v571, sizeof(v573));
      sub_252935408(v573);
      v444 = *&v569[8];
      if (*&v569[8] == 1)
      {
        v33 = v559;
        (*v550)(v420, v559);
      }

      else
      {
        v445 = *v569;
        v446 = v569[24];
        v447 = v5;
        v448 = *&v569[16];
        LODWORD(v544) = *&v569[20];
        v449 = v447[54];
        v450 = swift_isUniquelyReferenced_nonNull_native();
        v447[54] = v449;
        *&v546 = v445;
        LODWORD(v545) = v448;
        if ((v450 & 1) == 0)
        {
          v449 = sub_2529F8360(0, *(v449 + 2) + 1, 1, v449);
          v554[54] = v449;
        }

        v452 = *(v449 + 2);
        v451 = *(v449 + 3);
        if (v452 >= v451 >> 1)
        {
          v449 = sub_2529F8360((v451 > 1), v452 + 1, 1, v449);
          v554[54] = v449;
        }

        v420 = v541;
        v33 = v559;
        (*v550)(v541, v559);
        *(v449 + 2) = v452 + 1;
        v453 = &v449[32 * v452];
        *(v453 + 4) = v546;
        *(v453 + 5) = v444;
        v453[48] = v545;
        *(v453 + 13) = v544;
        v453[56] = v446;
        v5 = v554;
        v554[54] = v449;
        v73 = v543;
      }

      v418 = v547;
LABEL_288:
      v88 += v551;
      if (!--v417)
      {

        goto LABEL_326;
      }

      (v418)(v420, v88, v33);
    }
  }

  v33 = v559;
LABEL_326:
  v455 = v542;
  if (v542)
  {
    v456 = *(v552 + 16);
    v550 = ((*(v552 + 80) + 32) & ~*(v552 + 80));
    v457 = v550 + v557;
    v551 = 0x8000000252E7B340;
    v458 = *(v552 + 72);
    v459 = (v552 + 8);
    v547 = (v552 + 32);
    v553 = MEMORY[0x277D84F90];
    v456(v556, v550 + v557, v33);
    while (1)
    {
      v460 = sub_252E347F4();
      if (!v461)
      {
        break;
      }

      if (v460 == 0xD000000000000015 && v461 == v551)
      {
      }

      else
      {
        v462 = sub_252E37DB4();

        if ((v462 & 1) == 0)
        {
          break;
        }
      }

      v456(v548, v556, v33);
      v463 = v553;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v463 = sub_2529F85CC(0, v463[2] + 1, 1, v463);
      }

      v465 = v463[2];
      v464 = v463[3];
      if (v465 >= v464 >> 1)
      {
        v553 = sub_2529F85CC((v464 > 1), v465 + 1, 1, v463);
      }

      else
      {
        v553 = v463;
      }

      v466 = v559;
      (*v459)(v556, v559);
      v467 = v553;
      v553[2] = v465 + 1;
      v468 = v550 + v467 + v465 * v458;
      v33 = v466;
      (*v547)(v468, v548, v466);
LABEL_329:
      v457 += v458;
      if (!--v455)
      {
        goto LABEL_343;
      }

      v456(v556, v457, v33);
    }

    (*v459)(v556, v33);
    goto LABEL_329;
  }

  v553 = MEMORY[0x277D84F90];
LABEL_343:
  v469 = v553[2];
  if (v469)
  {
    v73 = *(v552 + 16);
    v88 = v553 + ((*(v552 + 80) + 32) & ~*(v552 + 80));
    v556 = *(v552 + 72);
    v551 = v552 + 8;
    v552 += 16;
    v46 = v554;
    v470 = v549;
    *&v546 = v73;
    v73(v549, v88, v33);
    while (1)
    {
      v471._countAndFlagsBits = sub_252E347E4();
      AccessoryTypeSemantic.init(rawValue:)(v471);
      v472 = v573[0];
      if (LOBYTE(v573[0]) == 52)
      {
LABEL_345:
        (*v551)(v470, v33);
        goto LABEL_346;
      }

      v473 = *(v46 + 17);
      v474 = swift_isUniquelyReferenced_nonNull_native();
      *(v46 + 17) = v473;
      if ((v474 & 1) == 0)
      {
        v473 = sub_2529F80DC(0, *(v473 + 2) + 1, 1, v473);
        *(v46 + 17) = v473;
      }

      v476 = *(v473 + 2);
      v475 = *(v473 + 3);
      if (v476 >= v475 >> 1)
      {
        v473 = sub_2529F80DC((v475 > 1), v476 + 1, 1, v473);
      }

      *(v473 + 2) = v476 + 1;
      v473[v476 + 32] = v472;
      *(v46 + 17) = v473;
      v33 = v559;
      v470 = v549;
      if ((v555 & 1) == 0)
      {
        break;
      }

LABEL_375:
      memcpy(v572, v558, sizeof(v572));
      memcpy(v571, v558, sizeof(v571));
      sub_2529353AC(v572, v570);
      sub_252D02164(v557, v470, sub_252D083F0, &v564);
      memcpy(v573, v571, sizeof(v573));
      sub_252935408(v573);
      v494 = v565;
      if (v565 == 1)
      {
        goto LABEL_345;
      }

      v547 = v564;
      v495 = v568;
      v496 = v566;
      v497 = v567;
      v498 = *(v46 + 53);
      v499 = swift_isUniquelyReferenced_nonNull_native();
      *(v46 + 53) = v498;
      LODWORD(v548) = v497;
      if ((v499 & 1) == 0)
      {
        v498 = sub_2529F8360(0, *(v498 + 2) + 1, 1, v498);
        v554[53] = v498;
      }

      v501 = *(v498 + 2);
      v500 = *(v498 + 3);
      LODWORD(v550) = v495;
      if (v501 >= v500 >> 1)
      {
        v498 = sub_2529F8360((v500 > 1), v501 + 1, 1, v498);
        v554[53] = v498;
      }

      v470 = v549;
      v33 = v559;
      (*v551)(v549, v559);
      *(v498 + 2) = v501 + 1;
      v502 = &v498[32 * v501];
      *(v502 + 4) = v547;
      *(v502 + 5) = v494;
      v502[48] = v496;
      *(v502 + 13) = v548;
      v502[56] = v550;
      v46 = v554;
      v554[53] = v498;
      v73 = v546;
LABEL_346:
      v88 = &v556[v88];
      if (!--v469)
      {

        goto LABEL_383;
      }

      v73(v470, v88, v33);
    }

    memcpy(v572, v558, sizeof(v572));
    memcpy(v571, v558, sizeof(v571));
    sub_2529353AC(v572, v570);
    sub_252D01540(v557, v470, v569);
    v477 = *&v569[40];
    memcpy(v573, v571, sizeof(v573));
    sub_252935408(v573);
    v87 = *&v569[16];
    v85 = v569[24];
    v5 = *&v569[40];
    if (*&v569[40])
    {
      if (*&v569[40] == 1)
      {
        v46 = v554;
        goto LABEL_375;
      }

      v548 = *&v569[32];
      v547 = *v569;
      v545 = *&v569[8];
      v484 = v554;
      v485 = v554[41];
      sub_252938414(v569, v571, &qword_27F545530, &unk_252E5B5C0);
      v486 = swift_isUniquelyReferenced_nonNull_native();
      v484[41] = v485;
      v550 = v477;
      if ((v486 & 1) == 0)
      {
        v485 = sub_2529F7A80(0, *(v485 + 2) + 1, 1, v485);
        v554[41] = v485;
      }

      v488 = *(v485 + 2);
      v487 = *(v485 + 3);
      v489 = v548;
      if (v488 >= v487 >> 1)
      {
        v503 = sub_2529F7A80((v487 > 1), v488 + 1, 1, v485);
        v489 = v548;
        v485 = v503;
      }

      *(v485 + 2) = v488 + 1;
      *&v485[16 * v488 + 32] = v489;
      v46 = v554;
      v554[41] = v485;
      if (v85)
      {
        v87 = v545 - v547;
        v33 = v559;
        v470 = v549;
        if (__OFSUB__(v545, v547))
        {
          goto LABEL_410;
        }

        v85 = sub_252AD4324(v548, v5);
        v46 = &qword_27F545530;
        v5 = &unk_252E5B5C0;
        sub_25293847C(v569, &qword_27F545530, &unk_252E5B5C0);
        sub_25293847C(v569, &qword_27F545530, &unk_252E5B5C0);
        if (__OFSUB__(v87, v85))
        {
          goto LABEL_411;
        }

        v490 = (v87 - v85) & ~((v87 - v85) >> 63);
        v46 = v554;
        v491 = v554[40];
        v105 = __OFADD__(v491, v490);
        v492 = v491 + v490;
        if (v105)
        {
          goto LABEL_412;
        }

        goto LABEL_374;
      }
    }

    else
    {
      v5 = v554;
      v478 = v554[41];

      v479 = swift_isUniquelyReferenced_nonNull_native();
      v5[41] = v478;
      v550 = v477;
      if ((v479 & 1) == 0)
      {
        v478 = sub_2529F7A80(0, *(v478 + 2) + 1, 1, v478);
        v5[41] = v478;
      }

      v481 = *(v478 + 2);
      v480 = *(v478 + 3);
      if (v481 >= v480 >> 1)
      {
        v478 = sub_2529F7A80((v480 > 1), v481 + 1, 1, v478);
      }

      *(v478 + 2) = v481 + 1;
      v482 = &v478[16 * v481];
      v483 = v539;
      *(v482 + 4) = v537;
      *(v482 + 5) = v483;
      v5[41] = v478;
      v46 = v5;
      if (v85)
      {

        v33 = v559;
        v470 = v549;
        goto LABEL_375;
      }
    }

    sub_25293847C(v569, &qword_27F545530, &unk_252E5B5C0);
    v493 = *(v46 + 40);
    v105 = __OFADD__(v493, v87);
    v492 = v493 + v87;
    v33 = v559;
    v470 = v549;
    if (v105)
    {
      goto LABEL_403;
    }

LABEL_374:
    *(v46 + 40) = v492;
    goto LABEL_375;
  }

  v46 = v554;
LABEL_383:
  v504 = sub_252D02644(v557);
  if (*(v504 + 16))
  {
    v46[385] = 1;
    sub_2529F77F8();
    v505 = *(*(v46 + 12) + 16);
    sub_2529F794C(v505);
    v506 = *(v46 + 12);
    *(v506 + 16) = v505 + 1;
    *(v506 + 8 * v505 + 32) = v504;
    *(v46 + 12) = v506;
  }

  else
  {
  }

  memcpy(v573, v46, sizeof(v573));
  memcpy(v521, v46, 0x1F8uLL);
  return sub_2529353AC(v573, v572);
}

uint64_t sub_252D01354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_252E34804();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v19 = v5;
    v20 = a2;
    v10 = *(v5 + 16);
    v9 = v5 + 16;
    v21 = v10;
    v11 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v12 = *(v9 + 56);
    v10(v7, v11, v4);
    while (1)
    {
      v14 = sub_252E347F4();
      if (v15)
      {
        if (v14 == 0xD000000000000017 && v15 == 0x8000000252E7BB30)
        {

LABEL_10:
          v5 = v19;
          a2 = v20;
          (*(v19 + 32))(v20, v7, v4);
          v16 = 0;
          return (*(v5 + 56))(a2, v16, 1, v4);
        }

        v13 = sub_252E37DB4();

        if (v13)
        {
          goto LABEL_10;
        }
      }

      (*(v9 - 8))(v7, v4);
      v11 += v12;
      if (!--v8)
      {
        break;
      }

      v21(v7, v11, v4);
    }

    v16 = 1;
    v5 = v19;
    a2 = v20;
  }

  else
  {
    v16 = 1;
  }

  return (*(v5 + 56))(a2, v16, 1, v4);
}

uint64_t sub_252D01540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v48 = a3;
  v5 = sub_252E34804();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v46 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D70, &unk_252E5B5A0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v45 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - v18;
  v47 = a2;
  v49 = a2;
  v20 = sub_2529A18DC(sub_252D07D34, a1, &v45 - v18);
  v21 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v20);
  sub_252929E74((v21 + 288), &v50);

  v23 = v51;
  v22 = v52;
  __swift_project_boxed_opaque_existential_1(&v50, v51);
  LOBYTE(a1) = (*(v22 + 88))(v23, v22);
  __swift_destroy_boxed_opaque_existential_1(&v50);
  if ((a1 & 1) == 0)
  {
LABEL_11:
    sub_252938414(v19, v14, &qword_27F541D70, &unk_252E5B5A0);
    if ((*(v6 + 48))(v14, 1, v5) == 1)
    {
      sub_25293847C(v14, &qword_27F541D70, &unk_252E5B5A0);
      if (qword_27F53F4F8 != -1)
      {
        swift_once();
      }

      v42 = sub_252E36AD4();
      __swift_project_value_buffer(v42, qword_27F544D90);
      *&v50 = 0;
      *(&v50 + 1) = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000049, 0x8000000252E93330);
      (*(v6 + 16))(v46, v47, v5);
      v43 = sub_252E36F94();
      MEMORY[0x2530AD570](v43);

      sub_252CC4050(v50, *(&v50 + 1), 0xD000000000000077, 0x8000000252E92DE0, 0xD00000000000001DLL, 0x8000000252E93380, 1940);

      result = sub_25293847C(v19, &qword_27F541D70, &unk_252E5B5A0);
      v34 = 0;
      v33 = 0;
      v28 = 0;
      v35 = 0uLL;
      v30 = 1;
    }

    else
    {
      v36 = sub_252E347E4();
      v38 = v37;
      (*(v6 + 8))(v14, v5);
      sub_252E32994();
      swift_allocObject();
      sub_252E32984();
      v39 = sub_252ABF638(v36, v38);
      v41 = v40;
      sub_252D07D54();
      sub_252E32974();
      sub_25293847C(v19, &qword_27F541D70, &unk_252E5B5A0);
      sub_25296464C(v39, v41);

      v34 = 0;
      v35 = v50;
      v33 = 1;
      v28 = v52;
      v30 = v53;
    }

    goto LABEL_17;
  }

  sub_252938414(v19, v17, &qword_27F541D70, &unk_252E5B5A0);
  if ((*(v6 + 48))(v17, 1, v5) == 1)
  {
    sub_25293847C(v17, &qword_27F541D70, &unk_252E5B5A0);
    goto LABEL_11;
  }

  (*(v6 + 32))(v10, v17, v5);
  v24 = sub_252E347E4();
  v26 = sub_252A4CC98(v24, v25);
  v28 = v27;
  v30 = v29;

  if (v30 == 1)
  {
    (*(v6 + 8))(v10, v5);
    goto LABEL_11;
  }

  if ((v26 & 0x100000000) != 0)
  {
    (*(v6 + 8))(v10, v5);
    sub_252D07DA8(v26, v28, v30);
    goto LABEL_11;
  }

  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  v31 = sub_252E36AD4();
  __swift_project_value_buffer(v31, qword_27F544D90);
  sub_252CC3D90(0xD00000000000002BLL, 0x8000000252E933A0, 0xD000000000000077, 0x8000000252E92DE0);
  (*(v6 + 8))(v10, v5);
  result = sub_25293847C(v19, &qword_27F541D70, &unk_252E5B5A0);
  v33 = 0;
  v34 = v26;
  v35 = 0uLL;
LABEL_17:
  v44 = v48;
  *v48 = v35;
  v44[2] = v34;
  v44[3] = v33;
  v44[4] = v28;
  v44[5] = v30;
  return result;
}

char *sub_252D01B8C(uint64_t a1)
{
  v53 = a1;
  v2 = sub_252E34874();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D70, &unk_252E5B5A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v46 - v7;
  v9 = sub_252E34804();
  v51 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v52 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v46 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v46 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v46 - v18;
  v56 = MEMORY[0x277D84F90];
  memcpy(v57, v1, sizeof(v57));
  memcpy(v55, v1, sizeof(v55));
  (*(v3 + 104))(v5, *MEMORY[0x277D5E538], v2);
  sub_2529353AC(v57, v58);
  sub_252D02F3C(v53, v5, v8);
  v20 = v9;
  v21 = v2;
  v22 = v51;
  (*(v3 + 8))(v5, v21);
  memcpy(v58, v55, 0x1F8uLL);
  sub_252935408(v58);
  v23 = (*(v22 + 48))(v8, 1, v9);
  v54 = v9;
  if (v23 == 1)
  {
    sub_25293847C(v8, &qword_27F541D70, &unk_252E5B5A0);
    v47 = MEMORY[0x277D84F90];
  }

  else
  {
    v50 = *(v22 + 32);
    v50(v19, v8, v9);
    (*(v22 + 16))(v17, v19, v9);
    v24 = sub_2529F85CC(0, 1, 1, MEMORY[0x277D84F90]);
    v26 = *(v24 + 2);
    v25 = *(v24 + 3);
    v47 = v24;
    v27 = v17;
    if (v26 >= v25 >> 1)
    {
      v47 = sub_2529F85CC((v25 > 1), v26 + 1, 1, v47);
    }

    v28 = v54;
    (*(v22 + 8))(v19, v54);
    v29 = v47;
    *(v47 + 2) = v26 + 1;
    v20 = v28;
    v50(&v29[((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v26], v27, v28);
  }

  v30 = *(v53 + 16);
  if (v30)
  {
    v33 = *(v22 + 16);
    v32 = v22 + 16;
    v31 = v33;
    v49 = (*(v32 + 64) + 32) & ~*(v32 + 64);
    v34 = v53 + v49;
    v51 = 0x8000000252E7BAB0;
    v53 = *(v32 + 56);
    v35 = (v32 - 8);
    v48 = (v32 + 16);
    v36 = MEMORY[0x277D84F90];
    v50 = v33;
    while (1)
    {
      v38 = v32;
      v31(v14, v34, v20);
      v39 = sub_252E347F4();
      if (v40)
      {
        if (v39 == 0xD000000000000013 && v40 == v51)
        {

LABEL_15:
          v31(v52, v14, v54);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v36 = sub_2529F85CC(0, v36[2] + 1, 1, v36);
          }

          v43 = v36[2];
          v42 = v36[3];
          if (v43 >= v42 >> 1)
          {
            v36 = sub_2529F85CC((v42 > 1), v43 + 1, 1, v36);
          }

          v20 = v54;
          (*v35)(v14, v54);
          v36[2] = v43 + 1;
          v44 = v36 + v49 + v43 * v53;
          v37 = v53;
          (*v48)(v44, v52, v20);
          v31 = v50;
          goto LABEL_9;
        }

        v41 = sub_252E37DB4();

        if (v41)
        {
          goto LABEL_15;
        }
      }

      v20 = v54;
      (*v35)(v14, v54);
      v37 = v53;
LABEL_9:
      v34 += v37;
      --v30;
      v32 = v38;
      if (!v30)
      {
        goto LABEL_21;
      }
    }
  }

  v36 = MEMORY[0x277D84F90];
LABEL_21:
  if (v36[2])
  {
    sub_25297BA5C(v36);
  }

  else
  {
  }

  return v47;
}

uint64_t sub_252D02164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(char *)@<X2>, uint64_t *a4@<X8>)
{
  v41 = a4;
  v7 = sub_252E34804();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D70, &unk_252E5B5A0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - v15;
  v40 = a2;
  v42 = a2;
  sub_2529A18DC(a3, a1, &v40 - v15);
  sub_252938414(v16, v14, &qword_27F541D70, &unk_252E5B5A0);
  if ((*(v8 + 48))(v14, 1, v7) == 1)
  {
    sub_25293847C(v16, &qword_27F541D70, &unk_252E5B5A0);
    v17 = v14;
LABEL_9:
    result = sub_25293847C(v17, &qword_27F541D70, &unk_252E5B5A0);
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 1;
    goto LABEL_10;
  }

  v18 = (*(v8 + 32))(v10, v14, v7);
  v19 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v18);
  sub_252929E74((v19 + 288), v43);

  v20 = v44;
  v21 = v45;
  __swift_project_boxed_opaque_existential_1(v43, v44);
  v22 = (*(v21 + 88))(v20, v21);
  __swift_destroy_boxed_opaque_existential_1(v43);
  if ((v22 & 1) == 0 || (v23 = sub_252E347E4(), v25 = sub_252C601E4(v23, v24), v25 == 4))
  {
    if (qword_27F53F4F8 != -1)
    {
      swift_once();
    }

    v26 = sub_252E36AD4();
    __swift_project_value_buffer(v26, qword_27F544D90);
    sub_252CC4050(0xD000000000000021, 0x8000000252E931D0, 0xD000000000000080, 0x8000000252E93200, 0xD000000000000023, 0x8000000252E93290, 204);
    goto LABEL_8;
  }

  v30 = v25;
  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  v33 = sub_252E36AD4();
  __swift_project_value_buffer(v33, qword_27F544D90);
  sub_252CC3D90(0xD00000000000002ELL, 0x8000000252E932C0, 0xD000000000000080, 0x8000000252E93200);
  if (!v30)
  {

LABEL_8:
    (*(v8 + 8))(v10, v7);
    v17 = v16;
    goto LABEL_9;
  }

  v34 = sub_252E37DB4();

  if (v34)
  {
    goto LABEL_8;
  }

  v28 = sub_252E347E4();
  v31 = v35;
  v36 = COERCE_DOUBLE(sub_252E34754());
  v38 = v37;
  (*(v8 + 8))(v10, v7);
  result = sub_25293847C(v16, &qword_27F541D70, &unk_252E5B5A0);
  *&v39 = v36;
  v29 = (v39 << 32) | 0x34;
  if (v38)
  {
    v29 = 52;
  }

LABEL_10:
  v32 = v41;
  *v41 = v28;
  v32[1] = v31;
  v32[2] = v29;
  *(v32 + 24) = v30;
  return result;
}

uint64_t sub_252D02644(uint64_t a1)
{
  v2 = sub_252E34804();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x277D84FA0];
  v19 = MEMORY[0x277D84FA0];
  v7 = *(a1 + 16);
  if (v7)
  {
    v9 = *(v3 + 16);
    v8 = v3 + 16;
    v10 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v16 = *(v8 + 56);
    v17 = v9;
    v9(v5, v10, v2);
    while (1)
    {
      v11 = sub_252E347F4();
      if (v12)
      {
        v18[0] = v11;
        v18[1] = v12;
        MEMORY[0x28223BE20](v11);
        *(&v16 - 2) = v18;
        v13 = sub_2529ED970(sub_25296A69C, (&v16 - 4), &unk_2864A33B8);

        if (v13)
        {
          v14 = sub_252E347E4();
          sub_252DA6CD0(v18, v14, v15);
        }
      }

      (*(v8 - 8))(v5, v2);
      v10 += v16;
      if (!--v7)
      {
        break;
      }

      v17(v5, v10, v2);
    }

    return v19;
  }

  return result;
}

uint64_t sub_252D02830(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D70, &unk_252E5B5A0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v46 - v9;
  v11 = sub_252E34804();
  v59 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v46 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = v46 - v18;
  memcpy(v62, v2, 0x1F8uLL);
  v58 = a1;
  v20 = sub_252D032E4(a1, a2);
  v21 = v20;
  v49 = *(v20 + 2);
  if (!v49)
  {
LABEL_15:

    return 0;
  }

  v60 = v14;
  v61 = 0;
  v46[0] = v19;
  v22 = 0;
  v23 = v59;
  v55 = &v20[(*(v23 + 80) + 32) & ~*(v23 + 80)];
  v53 = v59 + 48;
  v54 = v59 + 16;
  v50 = "lue not available";
  v51 = v10;
  v46[1] = 0x8000000252E65390;
  v47 = "ue(for:using:type:)";
  v52 = v20;
  v56 = (v59 + 8);
  v57 = (v59 + 32);
  while (1)
  {
    if (v22 >= *(v21 + 2))
    {
      __break(1u);
      goto LABEL_23;
    }

    v24 = (*(v23 + 16))(v17, &v55[*(v23 + 72) * v22], v11);
    MEMORY[0x28223BE20](v24);
    v46[-2] = v17;
    v25 = v61;
    sub_2529A18DC(sub_252D07CF4, v58, v10);
    sub_252938414(v10, v8, &qword_27F541D70, &unk_252E5B5A0);
    if ((*(v23 + 48))(v8, 1, v11) == 1)
    {
      sub_25293847C(v10, &qword_27F541D70, &unk_252E5B5A0);
      sub_25293847C(v8, &qword_27F541D70, &unk_252E5B5A0);

      v44 = v56;
      v23 = v46[0];
      (*v57)(v46[0], v17, v11);
      goto LABEL_21;
    }

    v61 = v25;
    v21 = v17;
    v26 = v8;
    v27 = v8;
    v8 = v11;
    v48 = *v57;
    v28 = v48(v60, v27, v11);
    v29 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v28);
    sub_252929E74((v29 + 288), v62);

    v31 = v62[3];
    v30 = v62[4];
    __swift_project_boxed_opaque_existential_1(v62, v62[3]);
    v32 = (*(v30 + 88))(v31, v30);
    __swift_destroy_boxed_opaque_existential_1(v62);
    if ((v32 & 1) == 0 || (v33 = sub_252E347E4(), v35 = sub_252C601E4(v33, v34), v35 == 4))
    {
      v23 = v46[0];
      if (qword_27F53F4F8 == -1)
      {
LABEL_17:
        v43 = sub_252E36AD4();
        __swift_project_value_buffer(v43, qword_27F544D90);
        sub_252CC4050(0xD000000000000021, 0x8000000252E931D0, 0xD000000000000080, v50 | 0x8000000000000000, 0xD000000000000023, 0x8000000252E93290, 204);
        v44 = v56;
        v11 = v8;
        (*v56)(v60, v8);
        sub_25293847C(v51, &qword_27F541D70, &unk_252E5B5A0);

        v17 = v21;
        goto LABEL_20;
      }

LABEL_23:
      swift_once();
      goto LABEL_17;
    }

    v36 = v35;
    if (qword_27F53F4F8 != -1)
    {
      swift_once();
    }

    v37 = sub_252E36AD4();
    __swift_project_value_buffer(v37, qword_27F544D90);
    sub_252CC3D90(0xD00000000000002ELL, v47 | 0x8000000000000000, 0xD000000000000080, v50 | 0x8000000000000000);
    v38 = v36;
    if (v36 > 1u)
    {
      v17 = v21;
      goto LABEL_13;
    }

    v17 = v21;
    if (v38 != 1)
    {
      break;
    }

LABEL_13:
    v39 = sub_252E37DB4();

    if (v39)
    {
      goto LABEL_19;
    }

    ++v22;
    sub_252E347E4();
    v40 = v60;
    sub_252E34754();
    v41 = *v56;
    (*v56)(v40, v8);
    v10 = v51;
    sub_25293847C(v51, &qword_27F541D70, &unk_252E5B5A0);
    v11 = v8;

    v41(v17, v8);
    v21 = v52;
    v8 = v26;
    v23 = v59;
    if (v49 == v22)
    {
      goto LABEL_15;
    }
  }

LABEL_19:
  v44 = v56;
  v11 = v8;
  (*v56)(v60, v8);
  sub_25293847C(v51, &qword_27F541D70, &unk_252E5B5A0);

  v23 = v46[0];
LABEL_20:
  v48(v23, v17, v11);
LABEL_21:
  v45 = sub_252E347E4();
  (*v44)(v23, v11);
  return v45;
}

uint64_t sub_252D02F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D70, &unk_252E5B5A0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  v12 = sub_252E34804();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;
  v39 = a2;
  sub_2529A18DC(sub_252D0840C, a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_25293847C(v11, &qword_27F541D70, &unk_252E5B5A0);
    return (*(v13 + 56))(a3, 1, 1, v12);
  }

  else
  {
    v32 = *(v13 + 32);
    v33 = v13 + 32;
    v32(v18, v11, v12);
    v20 = sub_252E34744();
    v34 = v18;
    v21 = sub_252E347A4();
    v22 = *(a1 + 16);
    v35 = v13;
    if (v22)
    {
      v30 = v9;
      v31 = a3;
      v38 = *(v13 + 16);
      v23 = (v13 + 8);
      v24 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v36 = *(v13 + 72);
      v37 = v20 | ((HIDWORD(v20) & 1) << 32);
      v25 = v21 | ((HIDWORD(v21) & 1) << 32);
      v29 = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      while (1)
      {
        v38(v16, v24, v12);
        v26 = sub_252D04374(v16, v37, v25);
        v27 = *v23;
        if (v26)
        {
          break;
        }

        v27(v16, v12);
        v24 += v36;
        if (!--v22)
        {
          v9 = v30;
          a3 = v31;
          goto LABEL_9;
        }
      }

      v27(v34, v12);
      v9 = v30;
      v32(v30, v16, v12);
      v28 = 0;
      a3 = v31;
    }

    else
    {
      v27 = *(v13 + 8);
LABEL_9:
      v27(v34, v12);
      v28 = 1;
    }

    (*(v35 + 56))(v9, v28, 1, v12);
    return sub_25293DDF0(v9, a3, &qword_27F541D70, &unk_252E5B5A0);
  }
}

void *sub_252D032E4(uint64_t a1, uint64_t a2)
{
  v101 = sub_252E34B74();
  v4 = *(v101 - 8);
  v5 = MEMORY[0x28223BE20](v101);
  v100 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v99 = &v77 - v7;
  v119 = sub_252E34B94();
  v8 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v94 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543358, &qword_252E4B5B8);
  MEMORY[0x28223BE20](v111);
  v120 = &v77 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D98, &unk_252E5B5B0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v110 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v102 = &v77 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v77 - v16;
  v117 = sub_252E34804();
  v18 = *(v117 - 8);
  v19 = MEMORY[0x28223BE20](v117);
  v82 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v118 = &v77 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v79 = &v77 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v81 = &v77 - v26;
  MEMORY[0x28223BE20](v25);
  v90 = &v77 - v27;
  v122 = a2;

  result = sub_252E12064(sub_252D07D14, v121, a1);
  v89 = result[2];
  if (!v89)
  {

    return MEMORY[0x277D84F90];
  }

  v29 = 0;
  v87 = *(a1 + 16);
  v30 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v86 = result + v30;
  v116 = v18 + 16;
  v114 = v18 + 8;
  v78 = v30;
  v84 = (a1 + v30);
  v109 = *MEMORY[0x277D5E6E0];
  v107 = (v8 + 56);
  v108 = (v8 + 104);
  v31 = (v8 + 48);
  v93 = (v8 + 32);
  v104 = (v8 + 8);
  v98 = *MEMORY[0x277D5E6B0];
  v97 = (v4 + 104);
  v96 = (v4 + 8);
  v80 = (v18 + 32);
  v83 = MEMORY[0x277D84F90];
  v32 = &unk_252E5B5B0;
  v33 = v102;
  v105 = v17;
  v34 = v117;
  v35 = v118;
  v85 = v18;
  v88 = result;
  v106 = v31;
LABEL_5:
  if (v29 < result[2])
  {
    v36 = *(v18 + 72);
    v91 = v29;
    v113 = v36;
    v37 = v90;
    v115 = *(v18 + 16);
    v115(v90, &v86[v36 * v29], v34);
    v95 = sub_252E34744();
    v38 = sub_252E347A4();
    v34 = v117;
    v92 = v38;
    v112 = *(v18 + 8);
    v112(v37, v117);
    if (!v87)
    {
      goto LABEL_4;
    }

    v39 = v84;
    v40 = v87;
    while (1)
    {
      v115(v35, v39, v34);
      sub_252E34794();
      v41 = v33;
      v42 = v33;
      v43 = v17;
      v44 = v119;
      (*v108)(v41, v109, v119);
      (*v107)(v42, 0, 1, v44);
      v45 = *(v111 + 48);
      v46 = v120;
      sub_252938414(v43, v120, &qword_27F541D98, v32);
      sub_252938414(v42, v46 + v45, &qword_27F541D98, v32);
      v47 = *v106;
      if ((*v106)(v46, 1, v44) == 1)
      {
        v48 = v42;
        sub_25293847C(v42, &qword_27F541D98, v32);
        sub_25293847C(v43, &qword_27F541D98, v32);
        v49 = v47(v120 + v45, 1, v119);
        v35 = v118;
        v17 = v43;
        if (v49 != 1)
        {
          goto LABEL_9;
        }

        sub_25293847C(v120, &qword_27F541D98, v32);
      }

      else
      {
        v48 = v42;
        v50 = v120;
        sub_252938414(v120, v110, &qword_27F541D98, v32);
        if (v47(v50 + v45, 1, v119) == 1)
        {
          sub_25293847C(v42, &qword_27F541D98, v32);
          v17 = v43;
          sub_25293847C(v43, &qword_27F541D98, v32);
          (*v104)(v110, v119);
          v35 = v118;
LABEL_9:
          sub_25293847C(v120, &qword_27F543358, &qword_252E4B5B8);
          v33 = v48;
          goto LABEL_10;
        }

        v51 = v120 + v45;
        v52 = v94;
        v53 = v119;
        (*v93)(v94, v51, v119);
        sub_252D07DD4(&qword_27F543368, MEMORY[0x277D5E708], MEMORY[0x277D5E710]);
        v54 = v110;
        v103 = sub_252E36EF4();
        v55 = *v104;
        v56 = v52;
        v17 = v105;
        (*v104)(v56, v53);
        v33 = v48;
        sub_25293847C(v48, &qword_27F541D98, v32);
        sub_25293847C(v17, &qword_27F541D98, v32);
        v55(v54, v53);
        sub_25293847C(v120, &qword_27F541D98, v32);
        v35 = v118;
        if ((v103 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v57 = v32;
      v58 = v99;
      sub_252E34784();
      v59 = v100;
      v60 = v101;
      (*v97)(v100, v98, v101);
      v61 = MEMORY[0x2530AB010](v58, v59);
      v62 = *v96;
      v63 = v59;
      v17 = v105;
      (*v96)(v63, v60);
      v64 = v58;
      v32 = v57;
      v65 = v60;
      v33 = v102;
      v62(v64, v65);
      v35 = v118;
      if (v61)
      {
        v66 = sub_252E34744();
        if ((v66 & 0x100000000) != 0)
        {
          if ((v95 & 0x100000000) == 0)
          {
            goto LABEL_10;
          }
        }

        else if ((v95 & 0x100000000) != 0 || v66 != v95)
        {
          goto LABEL_10;
        }

        v67 = sub_252E347A4();
        if ((v67 & 0x100000000) != 0)
        {
          if ((v92 & 0x100000000) != 0)
          {
            goto LABEL_27;
          }
        }

        else if ((v92 & 0x100000000) == 0 && v67 == v92)
        {
LABEL_27:
          v68 = *v80;
          v69 = v79;
          v70 = v117;
          (*v80)(v79, v35, v117);
          v71 = v81;
          v68(v81, v69, v70);
          v115(v82, v71, v70);
          v72 = v83;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v72 = sub_2529F85CC(0, v72[2] + 1, 1, v72);
          }

          v74 = v72[2];
          v73 = v72[3];
          if (v74 >= v73 >> 1)
          {
            v83 = sub_2529F85CC((v73 > 1), v74 + 1, 1, v72);
          }

          else
          {
            v83 = v72;
          }

          v75 = v117;
          v112(v81, v117);
          v76 = v83;
          v83[2] = v74 + 1;
          v34 = v75;
          v68(&v76[v78 + v74 * v113], v82, v75);
          v18 = v85;
          v35 = v118;
          v32 = v57;
LABEL_4:
          v29 = v91 + 1;
          result = v88;
          if (v91 + 1 == v89)
          {

            return v83;
          }

          goto LABEL_5;
        }
      }

LABEL_10:
      v34 = v117;
      v112(v35, v117);
      v39 += v113;
      if (!--v40)
      {
        v18 = v85;
        goto LABEL_4;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252D03E58(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v35 = sub_252E34874();
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v31 = &v28[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_252E34B94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v30 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543358, &qword_252E4B5B8);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v28[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D98, &unk_252E5B5B0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v36 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v28[-v15];
  MEMORY[0x28223BE20](v14);
  v18 = &v28[-v17];
  v32 = a1;
  sub_252E34794();
  (*(v5 + 104))(v16, *MEMORY[0x277D5E6E8], v4);
  (*(v5 + 56))(v16, 0, 1, v4);
  v19 = *(v8 + 56);
  sub_252938414(v18, v10, &qword_27F541D98, &unk_252E5B5B0);
  sub_252938414(v16, &v10[v19], &qword_27F541D98, &unk_252E5B5B0);
  v20 = *(v5 + 48);
  if (v20(v10, 1, v4) == 1)
  {
    sub_25293847C(v16, &qword_27F541D98, &unk_252E5B5B0);
    sub_25293847C(v18, &qword_27F541D98, &unk_252E5B5B0);
    if (v20(&v10[v19], 1, v4) == 1)
    {
      sub_25293847C(v10, &qword_27F541D98, &unk_252E5B5B0);
LABEL_9:
      v26 = v31;
      sub_252E34774();
      v21 = MEMORY[0x2530AAD20](v26, v34);
      (*(v33 + 8))(v26, v35);
      return v21 & 1;
    }

    goto LABEL_6;
  }

  sub_252938414(v10, v36, &qword_27F541D98, &unk_252E5B5B0);
  if (v20(&v10[v19], 1, v4) == 1)
  {
    sub_25293847C(v16, &qword_27F541D98, &unk_252E5B5B0);
    sub_25293847C(v18, &qword_27F541D98, &unk_252E5B5B0);
    (*(v5 + 8))(v36, v4);
LABEL_6:
    sub_25293847C(v10, &qword_27F543358, &qword_252E4B5B8);
    goto LABEL_7;
  }

  v22 = &v10[v19];
  v23 = v30;
  (*(v5 + 32))(v30, v22, v4);
  sub_252D07DD4(&qword_27F543368, MEMORY[0x277D5E708], MEMORY[0x277D5E710]);
  v24 = v36;
  v29 = sub_252E36EF4();
  v25 = *(v5 + 8);
  v25(v23, v4);
  sub_25293847C(v16, &qword_27F541D98, &unk_252E5B5B0);
  sub_25293847C(v18, &qword_27F541D98, &unk_252E5B5B0);
  v25(v24, v4);
  sub_25293847C(v10, &qword_27F541D98, &unk_252E5B5B0);
  if (v29)
  {
    goto LABEL_9;
  }

LABEL_7:
  v21 = 0;
  return v21 & 1;
}

BOOL sub_252D04374(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v43 = a3;
  v45 = a2;
  v4 = sub_252E34B74();
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v47 = &v41[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v46 = &v41[-v7];
  v8 = sub_252E34B94();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v44 = &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543358, &qword_252E4B5B8);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v41[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D98, &unk_252E5B5B0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v51 = &v41[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v41[-v19];
  MEMORY[0x28223BE20](v18);
  v22 = &v41[-v21];
  v50 = a1;
  sub_252E34794();
  (*(v9 + 104))(v20, *MEMORY[0x277D5E6E0], v8);
  (*(v9 + 56))(v20, 0, 1, v8);
  v23 = *(v12 + 56);
  sub_252938414(v22, v14, &qword_27F541D98, &unk_252E5B5B0);
  sub_252938414(v20, &v14[v23], &qword_27F541D98, &unk_252E5B5B0);
  v24 = *(v9 + 48);
  if (v24(v14, 1, v8) == 1)
  {
    sub_25293847C(v20, &qword_27F541D98, &unk_252E5B5B0);
    sub_25293847C(v22, &qword_27F541D98, &unk_252E5B5B0);
    if (v24(&v14[v23], 1, v8) == 1)
    {
      sub_25293847C(v14, &qword_27F541D98, &unk_252E5B5B0);
      goto LABEL_10;
    }

LABEL_6:
    sub_25293847C(v14, &qword_27F543358, &qword_252E4B5B8);
    return 0;
  }

  sub_252938414(v14, v51, &qword_27F541D98, &unk_252E5B5B0);
  if (v24(&v14[v23], 1, v8) == 1)
  {
    sub_25293847C(v20, &qword_27F541D98, &unk_252E5B5B0);
    sub_25293847C(v22, &qword_27F541D98, &unk_252E5B5B0);
    (*(v9 + 8))(v51, v8);
    goto LABEL_6;
  }

  v26 = v44;
  (*(v9 + 32))(v44, &v14[v23], v8);
  sub_252D07DD4(&qword_27F543368, MEMORY[0x277D5E708], MEMORY[0x277D5E710]);
  v27 = v51;
  v42 = sub_252E36EF4();
  v28 = *(v9 + 8);
  v28(v26, v8);
  sub_25293847C(v20, &qword_27F541D98, &unk_252E5B5B0);
  sub_25293847C(v22, &qword_27F541D98, &unk_252E5B5B0);
  v28(v27, v8);
  sub_25293847C(v14, &qword_27F541D98, &unk_252E5B5B0);
  if ((v42 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v29 = v46;
  sub_252E34784();
  v31 = v47;
  v30 = v48;
  v32 = *(v48 + 104);
  v33 = v49;
  v32(v47, *MEMORY[0x277D5E6B0], v49);
  v34 = MEMORY[0x2530AB010](v29, v31);
  v35 = *(v30 + 8);
  v35(v31, v33);
  v35(v29, v33);
  if ((v34 & 1) == 0)
  {
    sub_252E34784();
    *v31 = 0x76726553656D6F48;
    v31[1] = 0xEF61657241656369;
    v32(v31, *MEMORY[0x277D5E698], v33);
    v36 = MEMORY[0x2530AB010](v29, v31);
    v35(v31, v33);
    v35(v29, v33);
    if ((v36 & 1) == 0)
    {
      return 0;
    }
  }

  v37 = sub_252E34744();
  if ((v37 & 0x100000000) == 0)
  {
    v38 = v37;
    result = 0;
    if ((v45 & 0x100000000) != 0 || v38 != v45)
    {
      return result;
    }

    goto LABEL_17;
  }

  if ((v45 & 0x100000000) == 0)
  {
    return 0;
  }

LABEL_17:
  v39 = sub_252E347A4();
  if ((v39 & 0x100000000) != 0)
  {
    return HIDWORD(v43) & 1;
  }

  return (v43 & 0x100000000) == 0 && v39 == v43;
}

BOOL sub_252D049D0(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = sub_252E34B94();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v32 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543358, &qword_252E4B5B8);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v30[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D98, &unk_252E5B5B0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v35 = &v30[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v30[-v14];
  MEMORY[0x28223BE20](v13);
  v17 = &v30[-v16];
  v33 = a1;
  sub_252E34794();
  (*(v4 + 104))(v15, *MEMORY[0x277D5E6C8], v3);
  (*(v4 + 56))(v15, 0, 1, v3);
  v18 = *(v7 + 56);
  sub_252938414(v17, v9, &qword_27F541D98, &unk_252E5B5B0);
  sub_252938414(v15, &v9[v18], &qword_27F541D98, &unk_252E5B5B0);
  v19 = *(v4 + 48);
  if (v19(v9, 1, v3) == 1)
  {
    sub_25293847C(v15, &qword_27F541D98, &unk_252E5B5B0);
    sub_25293847C(v17, &qword_27F541D98, &unk_252E5B5B0);
    if (v19(&v9[v18], 1, v3) == 1)
    {
      sub_25293847C(v9, &qword_27F541D98, &unk_252E5B5B0);
      goto LABEL_10;
    }

LABEL_6:
    sub_25293847C(v9, &qword_27F543358, &qword_252E4B5B8);
    return 0;
  }

  sub_252938414(v9, v35, &qword_27F541D98, &unk_252E5B5B0);
  if (v19(&v9[v18], 1, v3) == 1)
  {
    sub_25293847C(v15, &qword_27F541D98, &unk_252E5B5B0);
    sub_25293847C(v17, &qword_27F541D98, &unk_252E5B5B0);
    (*(v4 + 8))(v35, v3);
    goto LABEL_6;
  }

  v21 = &v9[v18];
  v22 = v32;
  (*(v4 + 32))(v32, v21, v3);
  sub_252D07DD4(&qword_27F543368, MEMORY[0x277D5E708], MEMORY[0x277D5E710]);
  v23 = v35;
  v31 = sub_252E36EF4();
  v24 = *(v4 + 8);
  v24(v22, v3);
  sub_25293847C(v15, &qword_27F541D98, &unk_252E5B5B0);
  sub_25293847C(v17, &qword_27F541D98, &unk_252E5B5B0);
  v24(v23, v3);
  sub_25293847C(v9, &qword_27F541D98, &unk_252E5B5B0);
  if ((v31 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v25 = sub_252E34744();
  v26 = sub_252E34744();
  if ((v25 & 0x100000000) == 0)
  {
    result = 0;
    if ((v26 & 0x100000000) != 0 || v25 != v26)
    {
      return result;
    }

    goto LABEL_15;
  }

  if ((v26 & 0x100000000) == 0)
  {
    return 0;
  }

LABEL_15:
  v27 = sub_252E347A4();
  v28 = sub_252E347A4();
  if ((v27 & 0x100000000) != 0)
  {
    return HIDWORD(v28) & 1;
  }

  return (v28 & 0x100000000) == 0 && v27 == v28;
}

BOOL sub_252D04EA0()
{
  v0 = sub_252E34B94();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_252E347F4();
  v6 = v5;
  (*(v1 + 104))(v3, *MEMORY[0x277D5E6C0], v0);
  v7 = sub_252E34B84();
  v9 = v8;
  (*(v1 + 8))(v3, v0);
  if (!v6)
  {

    return 0;
  }

  if (v4 == v7 && v6 == v9)
  {
  }

  else
  {
    v11 = sub_252E37DB4();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = sub_252E34744();
  v13 = sub_252E34744();
  if ((v12 & 0x100000000) == 0)
  {
    result = 0;
    if ((v13 & 0x100000000) != 0 || v12 != v13)
    {
      return result;
    }

    goto LABEL_15;
  }

  if ((v13 & 0x100000000) == 0)
  {
    return 0;
  }

LABEL_15:
  v15 = sub_252E347A4();
  v16 = sub_252E347A4();
  v18 = (v16 & 0x100000000) == 0 && v15 == v16;
  if ((v15 & 0x100000000) != 0)
  {
    return BYTE4(v16) & 1;
  }

  else
  {
    return v18;
  }
}

char *sub_252D05090(uint64_t a1)
{
  v1 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v1 + 288), v10);

  v2 = v11;
  v3 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v4 = (*(v3 + 88))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v10);
  if (v4)
  {
    v5 = sub_252E34A44();
    if (v5)
    {
      if (*(v5 + 16))
      {
        if (qword_27F53F4F8 != -1)
        {
          swift_once();
        }

        v6 = sub_252E36AD4();
        __swift_project_value_buffer(v6, qword_27F544D90);
        sub_252CC3D90(0xD000000000000034, 0x8000000252E937C0, 0xD000000000000077, 0x8000000252E92DE0);
        sub_252E34B04();
        v7 = sub_252E34AE4();

        v8 = sub_252A491E4(v7, MEMORY[0x277D84F90], 0, 0);

        return v8;
      }
    }
  }

  result = sub_252E34A64();
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

void *sub_252D05234(uint64_t a1)
{
  v1 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v1 + 288), v43);

  v2 = v44;
  v3 = v45;
  __swift_project_boxed_opaque_existential_1(v43, v44);
  v4 = (*(v3 + 88))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v43);
  if (v4)
  {
    sub_252E34644();
    v5 = sub_252E359F4();

    if (*(v5 + 16))
    {
      v6 = sub_252A44A10(0x73656D616ELL, 0xE500000000000000);
      if (v7)
      {
        v8 = *(*(v5 + 56) + 8 * v6);

        if (v8 >> 62)
        {
          goto LABEL_33;
        }

        for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
        {
          v10 = 0;
          v11 = MEMORY[0x277D84F90];
          while ((v8 & 0xC000000000000001) != 0)
          {
            MEMORY[0x2530ADF00](v10, v8);
            v12 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              goto LABEL_27;
            }

LABEL_12:
            v13 = sub_252E35914();

            v14 = *(v13 + 16);
            v15 = v11[2];
            v16 = v15 + v14;
            if (__OFADD__(v15, v14))
            {
              goto LABEL_29;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (isUniquelyReferenced_nonNull_native && v16 <= v11[3] >> 1)
            {
              if (*(v13 + 16))
              {
                goto LABEL_21;
              }
            }

            else
            {
              if (v15 <= v16)
              {
                v18 = v15 + v14;
              }

              else
              {
                v18 = v15;
              }

              v11 = sub_2529F85F4(isUniquelyReferenced_nonNull_native, v18, 1, v11);
              if (*(v13 + 16))
              {
LABEL_21:
                v19 = (v11[3] >> 1) - v11[2];
                sub_252E34724();
                if (v19 < v14)
                {
                  goto LABEL_31;
                }

                swift_arrayInitWithCopy();

                if (v14)
                {
                  v20 = v11[2];
                  v21 = __OFADD__(v20, v14);
                  v22 = v20 + v14;
                  if (v21)
                  {
                    goto LABEL_32;
                  }

                  v11[2] = v22;
                }

                goto LABEL_8;
              }
            }

            if (v14)
            {
              goto LABEL_30;
            }

LABEL_8:
            ++v10;
            if (v12 == i)
            {
              goto LABEL_35;
            }
          }

          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v12 = v10 + 1;
          if (!__OFADD__(v10, 1))
          {
            goto LABEL_12;
          }

LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          ;
        }

        v11 = MEMORY[0x277D84F90];
LABEL_35:

        if (v11[2])
        {
          if (qword_27F53F4F8 != -1)
          {
            swift_once();
          }

          v23 = sub_252E36AD4();
          __swift_project_value_buffer(v23, qword_27F544D90);
          sub_252CC3D90(0xD000000000000037, 0x8000000252E93560, 0xD000000000000077, 0x8000000252E92DE0);
          sub_252E34B04();
          v24 = sub_252E34AE4();

          v25 = sub_252A491E4(v24, MEMORY[0x277D84F90], 0, 0);
          goto LABEL_74;
        }
      }
    }
  }

  sub_252E34644();
  v26 = sub_252E359F4();

  if (*(v26 + 16))
  {
    v27 = sub_252A44A10(0x73656D616ELL, 0xE500000000000000);
    if (v28)
    {
      v29 = *(*(v26 + 56) + 8 * v27);

      if (v29 >> 62)
      {
        goto LABEL_72;
      }

      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v30)
      {
LABEL_73:
        v25 = MEMORY[0x277D84F90];
LABEL_74:

        return v25;
      }

LABEL_44:
      v31 = 0;
      v25 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v29 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2530ADF00](v31, v29);
          v32 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
LABEL_65:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v31 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            v30 = sub_252E378C4();
            if (!v30)
            {
              goto LABEL_73;
            }

            goto LABEL_44;
          }

          v32 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            goto LABEL_65;
          }
        }

        v33 = sub_252E358F4();

        v34 = *(v33 + 16);
        v35 = v25[2];
        v36 = v35 + v34;
        if (__OFADD__(v35, v34))
        {
          goto LABEL_68;
        }

        v37 = swift_isUniquelyReferenced_nonNull_native();
        if (v37 && v36 <= v25[3] >> 1)
        {
          if (!*(v33 + 16))
          {
            goto LABEL_45;
          }
        }

        else
        {
          if (v35 <= v36)
          {
            v38 = v35 + v34;
          }

          else
          {
            v38 = v35;
          }

          v25 = sub_2529F85CC(v37, v38, 1, v25);
          if (!*(v33 + 16))
          {
LABEL_45:

            if (v34)
            {
              goto LABEL_69;
            }

            goto LABEL_46;
          }
        }

        v39 = (v25[3] >> 1) - v25[2];
        sub_252E34804();
        if (v39 < v34)
        {
          goto LABEL_70;
        }

        swift_arrayInitWithCopy();

        if (v34)
        {
          v40 = v25[2];
          v21 = __OFADD__(v40, v34);
          v41 = v40 + v34;
          if (v21)
          {
            goto LABEL_71;
          }

          v25[2] = v41;
        }

LABEL_46:
        ++v31;
        if (v32 == v30)
        {
          goto LABEL_74;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252D057E4(uint64_t a1)
{
  v2 = sub_252E36AD4();
  v37 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v36 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_252E34804();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x277D84FA0];
  v8 = *(a1 + 16);
  v35 = a1;
  if (!v8)
  {
    v39 = MEMORY[0x277D84FA0];
    v38 = 0;
    goto LABEL_18;
  }

  v38 = 0;
  v9 = 0;
  v11 = *(v5 + 16);
  v10 = v5 + 16;
  v12 = (*(v10 + 64) + 32) & ~*(v10 + 64);
  v40 = 0x8000000252E74CB0;
  v41 = v11;
  v13 = *(v10 + 56);
  v14 = (v10 - 8);
  v15 = -v8;
  v16 = a1 + v12;
  v39 = MEMORY[0x277D84FA0];
  v33 = v16;
  v34 = v2;
  while (2)
  {
    v17 = v16 + v13 * v9++;
    while (1)
    {
      v41(v7, v17, v4);
      v18 = sub_252E347F4();
      if (!v19)
      {
        goto LABEL_4;
      }

      if (v18 == 0xD000000000000013 && v19 == v40)
      {
        break;
      }

      v20 = sub_252E37DB4();

      if (v20)
      {
        goto LABEL_11;
      }

LABEL_4:
      (*v14)(v7, v4);
LABEL_5:
      ++v9;
      v17 += v13;
      if (v15 + v9 == 1)
      {
        v2 = v34;
        goto LABEL_18;
      }
    }

LABEL_11:
    v21._countAndFlagsBits = sub_252E347E4();
    StateSemantic.init(rawValue:)(v21);
    if (v42 == 77)
    {
      goto LABEL_4;
    }

    sub_252DA7E00(&v42, v42);
    v22 = v44;
    v23 = sub_252DA0454(0, v44);
    v39 = v22;
    if ((v23 & 1) == 0)
    {
      goto LABEL_4;
    }

    v24 = sub_252DA0454(56, v22);
    (*v14)(v7, v4);
    if ((v24 & 1) == 0)
    {
      goto LABEL_5;
    }

    v38 = 1;
    v16 = v33;
    v2 = v34;
    if (v15 + v9)
    {
      continue;
    }

    break;
  }

LABEL_18:
  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v2, qword_27F544D90);
  v27 = v36;
  v26 = v37;
  (*(v37 + 16))(v36, v25, v2);
  v42 = 0;
  v43 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0x696669746E656449, 0xEC00000020737265);
  v28 = v38 & 1;
  if (v38)
  {
    v29 = 0;
  }

  else
  {
    v29 = 0x74276E6F64;
  }

  if (v38)
  {
    v30 = 0xE000000000000000;
  }

  else
  {
    v30 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v29, v30);

  MEMORY[0x2530AD570](0xD00000000000002ELL, 0x8000000252E93800);
  v31 = MEMORY[0x2530AD730](v35, v4);
  MEMORY[0x2530AD570](v31);

  sub_252CC3D90(v42, v43, 0xD000000000000077, 0x8000000252E92DE0);

  (*(v26 + 8))(v27, v2);

  return v28;
}

uint64_t sub_252D05C24@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5455D0, &unk_252E5B640);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - v3;
  v5 = sub_252E35114();
  v28 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v27 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541AF8, &qword_252E419F8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v27 - v11;
  if (!sub_252E35444())
  {
    goto LABEL_4;
  }

  memcpy(v30, v1, sizeof(v30));
  sub_252CEE320(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {

    sub_25293847C(v12, &qword_27F541AF8, &qword_252E419F8);
LABEL_4:
    v15 = 0;
    v16 = 1;
    goto LABEL_6;
  }

  sub_252E35834();

  v16 = v30[1];
  v17 = v13;
  v15 = v30[0];
  (*(v14 + 8))(v12, v17);
LABEL_6:
  if (!sub_252E35434())
  {
LABEL_9:
    v19 = 4;
    goto LABEL_10;
  }

  sub_252E35104();

  v18 = v28;
  if ((*(v28 + 48))(v4, 1, v5) == 1)
  {
    sub_25293847C(v4, &qword_27F5455D0, &unk_252E5B640);
    goto LABEL_9;
  }

  v24 = *(v18 + 32);
  v24(v9, v4, v5);
  v25 = v27;
  v24(v27, v9, v5);
  v26 = (*(v18 + 88))(v25, v5);
  if (v26 == *MEMORY[0x277D5F078])
  {
    v19 = 3;
  }

  else if (v26 == *MEMORY[0x277D5F068])
  {
    v19 = 1;
  }

  else
  {
    if (v26 != *MEMORY[0x277D5F070])
    {
      (*(v18 + 8))(v25, v5);
      goto LABEL_9;
    }

    v19 = 2;
  }

LABEL_10:
  if (v16)
  {
    v20 = 1;
    v21 = v29;
  }

  else
  {
    v30[0] = v15;
    LOBYTE(v30[1]) = 0;
    v31[0] = v19;
    sub_252AD617C();
    v21 = v29;
    sub_252E35824();
    v20 = 0;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
  return (*(*(v22 - 8) + 56))(v21, v20, 1, v22);
}

uint64_t sub_252D0607C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_252E34804();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v51 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v54 = &v45 - v9;
  result = MEMORY[0x28223BE20](v8);
  v55 = &v45 - v11;
  if (!a1)
  {
    goto LABEL_37;
  }

  result = sub_252E34A64();
  if (!result)
  {

    goto LABEL_37;
  }

  v12 = result;
  v46 = a2;
  v47 = a1;
  v13 = MEMORY[0x277D84F90];
  v50 = *(result + 16);
  if (!v50)
  {
LABEL_23:

    v27 = *(v13 + 16);
    if (v27)
    {
      v56 = MEMORY[0x277D84F90];
      sub_2529AA3A0(0, v27, 0);
      v28 = v56;
      v30 = *(v5 + 16);
      v29 = v5 + 16;
      v31 = v13 + ((*(v29 + 64) + 32) & ~*(v29 + 64));
      v54 = *(v29 + 56);
      v55 = v30;
      v52 = v13;
      v53 = (v29 - 8);
      do
      {
        v32 = v51;
        v33 = v29;
        (v55)(v51, v31, v4);
        v34 = sub_252E347E4();
        v36 = v35;
        v37 = v4;
        (*v53)(v32, v4);
        v56 = v28;
        v39 = v28[2];
        v38 = v28[3];
        if (v39 >= v38 >> 1)
        {
          sub_2529AA3A0((v38 > 1), v39 + 1, 1);
          v28 = v56;
        }

        v28[2] = v39 + 1;
        v40 = &v28[2 * v39];
        v40[4] = v34;
        v40[5] = v36;
        v31 += v54;
        --v27;
        v4 = v37;
        v29 = v33;
      }

      while (v27);
    }

    else
    {

      v28 = MEMORY[0x277D84F90];
    }

    if (v28[2])
    {
      v42 = v28[4];
      v41 = v28[5];

      if (v42 == 0x4373656572676564 && v41 == 0xEE00737569736C65 || (sub_252E37DB4() & 1) != 0)
      {

        v43 = 1;
        a2 = v46;
LABEL_38:
        *a2 = v43;
        return result;
      }

      a2 = v46;
      if (v42 == 0xD000000000000011 && 0x8000000252E67E40 == v41 || (sub_252E37DB4() & 1) != 0)
      {

        v43 = 2;
        goto LABEL_38;
      }

      if (v42 == 0x4773656572676564 && v41 == 0xEE00636972656E65)
      {

        v43 = 3;
        goto LABEL_38;
      }

      v44 = sub_252E37DB4();

      if (v44)
      {
        v43 = 3;
        goto LABEL_38;
      }
    }

    else
    {

      a2 = v46;
    }

LABEL_37:
    v43 = 4;
    goto LABEL_38;
  }

  v14 = 0;
  v48 = (v5 + 8);
  v49 = v5 + 16;
  v52 = 0x8000000252E7B580;
  v53 = (v5 + 32);
  while (v14 < *(v12 + 16))
  {
    v15 = v13;
    v16 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v17 = *(v5 + 72);
    (*(v5 + 16))(v55, v12 + v16 + v17 * v14, v4);
    v18 = sub_252E347F4();
    if (v19)
    {
      v20 = v18;
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0xE000000000000000;
    }

    if (v20 == 0xD000000000000013 && v52 == v21)
    {

LABEL_18:
      v23 = *v53;
      (*v53)(v54, v55, v4);
      v13 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2529AA640(0, v15[2] + 1, 1);
        v13 = v56;
      }

      v26 = *(v13 + 16);
      v25 = *(v13 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_2529AA640((v25 > 1), v26 + 1, 1);
        v13 = v56;
      }

      *(v13 + 16) = v26 + 1;
      result = (v23)(v13 + v16 + v26 * v17, v54, v4);
      goto LABEL_6;
    }

    v22 = sub_252E37DB4();

    if (v22)
    {
      goto LABEL_18;
    }

    result = (*v48)(v55, v4);
    v13 = v15;
LABEL_6:
    if (v50 == ++v14)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252D0661C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545578, &qword_252E5B600);
  MEMORY[0x28223BE20](v2 - 8);
  v51 = &v44 - v3;
  v4 = sub_252E350C4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v46 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v45 = &v44 - v8;
  v53 = sub_252E34804();
  v50 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v11 = sub_252E36AD4();
  __swift_project_value_buffer(v11, qword_27F544D60);
  sub_252CC3D90(0xD000000000000023, 0x8000000252E93750, 0xD000000000000077, 0x8000000252E92DE0);
  v57 = MEMORY[0x277D84FA0];
  v13 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v12);
  sub_252929E74((v13 + 288), &v54);

  v14 = v55;
  v15 = v56;
  __swift_project_boxed_opaque_existential_1(&v54, v55);
  v16 = (*(v15 + 88))(v14, v15);
  __swift_destroy_boxed_opaque_existential_1(&v54);
  if ((v16 & 1) == 0 || (v17 = sub_252E34A44()) == 0)
  {
LABEL_11:
    v20 = sub_252E34A64();
    if (!v20)
    {
      v20 = MEMORY[0x277D84F90];
    }

    v21 = *(v20 + 16);
    if (!v21)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  if (!*(v17 + 16))
  {

    goto LABEL_11;
  }

  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v11, qword_27F544D90);
  sub_252CC3D90(0xD000000000000036, 0x8000000252E93780, 0xD000000000000077, 0x8000000252E92DE0);
  sub_252E34B04();
  v18 = sub_252E34AE4();

  v19 = sub_252A491E4(v18, MEMORY[0x277D84F90], 0, 0);

  v20 = v19;
  v21 = *(v19 + 2);
  if (v21)
  {
LABEL_14:
    v47 = a1;
    v48 = v5;
    v22 = v50 + 16;
    v23 = *(v50 + 16);
    v24 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v49 = v4;
    v50 = v20;
    v25 = v20 + v24;
    v26 = *(v22 + 56);
    v27 = (v22 - 8);
    v23(v10, v20 + v24, v53);
    while (1)
    {
      v28 = sub_252E347F4();
      if (!v29)
      {
        break;
      }

      if (v28 == 0xD000000000000018 && v29 == 0x8000000252E65730)
      {
      }

      else
      {
        v30 = sub_252E37DB4();

        if ((v30 & 1) == 0)
        {
          break;
        }
      }

      v31 = sub_252E347E4();
      sub_252DA6CD0(&v54, v31, v32);

      (*v27)(v10, v53);
      *(v52 + 385) = 1;
LABEL_16:
      v25 += v26;
      if (!--v21)
      {

        v5 = v48;
        v4 = v49;
        goto LABEL_25;
      }

      v23(v10, v25, v53);
    }

    (*v27)(v10, v53);
    goto LABEL_16;
  }

LABEL_9:

LABEL_25:
  v33 = sub_252E34D84();
  v34 = v51;
  if (!v33 || (v35 = sub_252E34F24(), , !v35))
  {
    (*(v5 + 56))(v34, 1, 1, v4);
    goto LABEL_31;
  }

  sub_252E350B4();

  if ((*(v5 + 48))(v34, 1, v4) == 1)
  {
LABEL_31:
    sub_25293847C(v34, &qword_27F545578, &qword_252E5B600);
    goto LABEL_32;
  }

  v36 = v45;
  (*(v5 + 32))(v45, v34, v4);
  v37 = v46;
  (*(v5 + 16))(v46, v36, v4);
  v38 = (*(v5 + 88))(v37, v4);
  if (v38 == *MEMORY[0x277D5F008])
  {
    v39 = v36;
  }

  else
  {
    if (v38 != *MEMORY[0x277D5F000])
    {
      v43 = *(v5 + 8);
      v43(v36, v4);
      v43(v46, v4);
      goto LABEL_32;
    }

    v39 = v36;
  }

  v42 = sub_252C75848(v41);

  sub_252D06CD8(v42);
  (*(v5 + 8))(v39, v4);
LABEL_32:
  result = v57;
  *(v52 + 388) = *(v57 + 16) != 0;
  return result;
}

uint64_t sub_252D06CD8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_252DA6CD0(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void *sub_252D06DDC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

void *sub_252D06E64(uint64_t a1, uint64_t (*a2)(char *, uint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v9 = v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_252D06DDC(v12, v7, v5, a3);
  result = MEMORY[0x2530AED00](v12, -1, -1);
  if (!v3)
  {
    return v13;
  }

  return result;
}

unint64_t *sub_252D06FD4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v21 = result;
  v22 = 0;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v24 = (v7 - 1) & v7;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v13 = *(*(a3 + 56) + 8 * v12);
    swift_bridgeObjectRetain_n();

    v14 = sub_252D078FC(v13);

    v15 = v14[2];

    if (v15)
    {

      v17 = sub_252D078FC(v16);

      v18 = v17[2];

      v7 = v24;
      if (v18 != 1)
      {
        goto LABEL_15;
      }
    }

    else
    {

      v7 = v24;
LABEL_15:
      *(v21 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_252BBEBEC(v21, a2, v22, a3);
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return sub_252BBEBEC(v21, a2, v22, a3);
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v24 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_252D071AC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v20 = result;
  v21 = 0;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_12:
    v22 = v9 | (v3 << 6);
    v12 = *(*(a3 + 56) + 8 * v22);
    swift_bridgeObjectRetain_n();

    v13 = sub_252D078FC(v12);

    v14 = v13[2];

    if (v14)
    {

      v16 = sub_252D078FC(v15);

      v17 = v16[2];

      if (v17 == 1)
      {
        *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        if (__OFADD__(v21++, 1))
        {
          __break(1u);
          return sub_252BBEBEC(v20, a2, v21, a3);
        }
      }
    }

    else
    {
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return sub_252BBEBEC(v20, a2, v21, a3);
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252D0737C(uint64_t a1, uint64_t a2)
{
  v16 = *(a1 + 16);
  if (!v16)
  {
    return 0;
  }

  v3 = 0;
  v4 = a2 + 56;
  while (1)
  {
    if (*(a2 + 16))
    {
      sub_252E37EC4();
      StateSemantic.rawValue.getter();
      sub_252E37044();

      v5 = sub_252E37F14();
      v6 = -1 << *(a2 + 32);
      v7 = v5 & ~v6;
      if ((*(v4 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
      {
        break;
      }
    }

LABEL_3:
    if (++v3 == v16)
    {
      return 0;
    }
  }

  v8 = ~v6;
  while (1)
  {
    v9 = StateSemantic.rawValue.getter();
    v11 = v10;
    if (v9 == StateSemantic.rawValue.getter() && v11 == v12)
    {
      break;
    }

    v14 = sub_252E37DB4();

    if (v14)
    {
      return v3;
    }

    v7 = (v7 + 1) & v8;
    if (((*(v4 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  return v3;
}

uint64_t sub_252D07538(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  result = sub_252D0737C(*a1, a2);
  v8 = result;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    return *(v5 + 16);
  }

  v25 = a1;
  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v28 = a2 + 56;
    while (1)
    {
      v11 = *(v5 + 16);
      if (v9 == v11)
      {
        return v8;
      }

      if (v9 >= v11)
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        break;
      }

      v26 = v5 + 32;
      v27 = v5;
      if (*(a2 + 16) && (sub_252E37EC4(), StateSemantic.rawValue.getter(), sub_252E37044(), , result = sub_252E37F14(), v12 = -1 << *(a2 + 32), v13 = result & ~v12, ((*(v28 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0))
      {
        v14 = ~v12;
        while (1)
        {
          v15 = StateSemantic.rawValue.getter();
          v17 = v16;
          if (v15 == StateSemantic.rawValue.getter() && v17 == v18)
          {
            break;
          }

          v20 = sub_252E37DB4();

          if (v20)
          {
            goto LABEL_31;
          }

          v13 = (v13 + 1) & v14;
          if (((*(v28 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
          {
            goto LABEL_20;
          }
        }

LABEL_31:
        v5 = v27;
        v10 = __OFADD__(v9++, 1);
        if (v10)
        {
          goto LABEL_36;
        }
      }

      else
      {
LABEL_20:
        if (v8 == v9)
        {
          v5 = v27;
          v10 = __OFADD__(v8++, 1);
          if (v10)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v5 = v27;
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          v21 = *(v27 + 16);
          if (v8 >= v21)
          {
            goto LABEL_39;
          }

          if (v9 >= v21)
          {
            goto LABEL_40;
          }

          v22 = *(v26 + v8);
          v23 = *(v26 + v9);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_252D57AE8(v27);
            v5 = result;
          }

          v24 = v5 + 32;
          *(v24 + v8) = v23;
          *(v24 + v9) = v22;
          *v25 = v5;
          v10 = __OFADD__(v8++, 1);
          if (v10)
          {
            goto LABEL_37;
          }
        }

        v10 = __OFADD__(v9++, 1);
        if (v10)
        {
          goto LABEL_36;
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252D077A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v18 = MEMORY[0x277D84F90];
    sub_2529AA480(0, v4, 0);
    v5 = v18;
    v9 = (a1 + 32);
    for (i = v4 - 1; ; --i)
    {
      memcpy(__dst, v9, sizeof(__dst));
      memcpy(__src, v9, sizeof(__src));
      sub_2529353AC(__dst, v14);
      sub_2529353AC(__dst, v14);
      sub_252CEA530(&__src[24], a3, a4);
      sub_252935408(__dst);
      memcpy(v17, __src, sizeof(v17));
      v18 = v5;
      v12 = *(v5 + 16);
      v11 = *(v5 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_2529AA480((v11 > 1), v12 + 1, 1);
        v5 = v18;
      }

      *(v5 + 16) = v12 + 1;
      memcpy((v5 + 504 * v12 + 32), v17, 0x1F8uLL);
      if (!i)
      {
        break;
      }

      v9 += 504;
    }
  }

  return v5;
}

void *sub_252D078FC(uint64_t a1)
{
  v2 = sub_252E34804();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v48 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v51 = &v41 - v6;
  v7 = MEMORY[0x277D84F98];
  v52 = MEMORY[0x277D84F98];
  v8 = *(a1 + 16);
  if (!v8)
  {
    return v7;
  }

  v10 = *(v3 + 16);
  v9 = v3 + 16;
  v43 = *(v9 + 64);
  v11 = *(v9 + 56);
  v46 = (v43 + 32) & ~v43;
  v47 = v10;
  v12 = a1 + v46;
  v50 = (v9 + 16);
  v42 = xmmword_252E3C290;
  v44 = v2;
  v45 = v9;
  v49 = v11;
  while (1)
  {
    v47(v51, v12, v2);
    v16 = sub_252E347A4();
    v17 = v16;
    v18 = HIDWORD(v16) & 1;
    v19 = v16;
    v21 = sub_252A45430(v16 | (v18 << 32));
    v22 = v7[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      break;
    }

    v25 = v20;
    if (v7[3] < v24)
    {
      sub_252DFFC2C(v24, 1);
      v7 = v52;
      v26 = sub_252A45430(v19 | (v18 << 32));
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_19;
      }

      v21 = v26;
    }

    if (v25)
    {
      v28 = v7[7];
      v29 = *v50;
      (*v50)(v48, v51, v2);
      v30 = *(v28 + 8 * v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v28 + 8 * v21) = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = sub_2529F85CC(0, v30[2] + 1, 1, v30);
        *(v28 + 8 * v21) = v30;
      }

      v33 = v30[2];
      v32 = v30[3];
      if (v33 >= v32 >> 1)
      {
        v30 = sub_2529F85CC((v32 > 1), v33 + 1, 1, v30);
        *(v28 + 8 * v21) = v30;
      }

      v13 = v46;
      v30[2] = v33 + 1;
      v14 = v49;
      v15 = v30 + v13 + v33 * v49;
      v2 = v44;
      v29(v15, v48, v44);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540250, &qword_252E3C080);
      v34 = v46;
      v35 = swift_allocObject();
      *(v35 + 16) = v42;
      (*v50)((v35 + v34), v51, v2);
      v7[(v21 >> 6) + 8] |= 1 << v21;
      v36 = v7[6] + 8 * v21;
      *v36 = v17;
      *(v36 + 4) = v18;
      *(v7[7] + 8 * v21) = v35;
      v37 = v7[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_18;
      }

      v7[2] = v39;
      v14 = v49;
    }

    v12 += v14;
    if (!--v8)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543360, &unk_252E5B590);
  result = sub_252E37E24();
  __break(1u);
  return result;
}

unint64_t sub_252D07C78()
{
  result = qword_27F545528;
  if (!qword_27F545528)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F543360, &unk_252E5B590);
    v4[0] = MEMORY[0x277D84CD0];
    result = swift_getWitnessTable(MEMORY[0x277D84F48], v3, v4);
    atomic_store(result, &qword_27F545528);
  }

  return result;
}

unint64_t sub_252D07D54()
{
  result = qword_27F545538;
  if (!qword_27F545538)
  {
    result = swift_getWitnessTable(byte_252E5B6F0, &type metadata for TokenIndexUsoEntitySpan, v0, v1);
    atomic_store(result, &qword_27F545538);
  }

  return result;
}

uint64_t sub_252D07DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_252D07DD4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252D07E1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_252D07E78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_252D07EE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B6F547472617473 && a2 == 0xEF7865646E496E65;
  if (v4 || (sub_252E37DB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656B6F54646E65 && a2 == 0xED00007865646E49 || (sub_252E37DB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000252E93860 == a2 || (sub_252E37DB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_252E37DB4();

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

uint64_t sub_252D08060@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545610, &qword_252E5B718);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252D0827C();
  sub_252E37F74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  v9 = sub_252E37C44();
  v23 = 1;
  v10 = sub_252E37C44();
  v22 = 2;
  v11 = sub_252E37BD4();
  v20 = v12;
  v19 = v11;
  v21 = 3;
  v13 = sub_252E37BA4();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v19;
  *(a2 + 24) = v20 & 1;
  *(a2 + 32) = v13;
  *(a2 + 40) = v16;
  return result;
}

unint64_t sub_252D0827C()
{
  result = qword_27F545618;
  if (!qword_27F545618)
  {
    result = swift_getWitnessTable(asc_252E5B7EC, &type metadata for TokenIndexUsoEntitySpan.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F545618);
  }

  return result;
}

unint64_t sub_252D082E4()
{
  result = qword_27F545628;
  if (!qword_27F545628)
  {
    result = swift_getWitnessTable(byte_252E5B7C4, &type metadata for TokenIndexUsoEntitySpan.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F545628);
  }

  return result;
}

unint64_t sub_252D0833C()
{
  result = qword_27F545630;
  if (!qword_27F545630)
  {
    result = swift_getWitnessTable(aM_14, &type metadata for TokenIndexUsoEntitySpan.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F545630);
  }

  return result;
}

unint64_t sub_252D08394()
{
  result = qword_27F545638;
  if (!qword_27F545638)
  {
    result = swift_getWitnessTable(asc_252E5B75C, &type metadata for TokenIndexUsoEntitySpan.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F545638);
  }

  return result;
}

uint64_t sub_252D0842C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v62 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v62 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v62 - v12;
  v14 = [v0 type];
  if (v14 > 3)
  {
    if ((v14 - 5) < 2)
    {
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v24 = sub_252E36AD4();
      __swift_project_value_buffer(v24, qword_27F544D60);
      sub_252CC4050(0xD000000000000045, 0x8000000252E93950, 0xD00000000000008CLL, 0x8000000252E938C0, 0x726F465441436F74, 0xED0000292874616DLL, 49);
      return 0;
    }

    if (v14 != 4)
    {
LABEL_15:
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v32 = sub_252E36AD4();
      __swift_project_value_buffer(v32, qword_27F544D60);
      v63 = 0;
      v64 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000003FLL, 0x8000000252E93880);
      v33 = [v0 description];
      v34 = sub_252E36F34();
      v36 = v35;

      MEMORY[0x2530AD570](v34, v36);

      sub_252CC4050(v63, v64, 0xD00000000000008CLL, 0x8000000252E938C0, 0x726F465441436F74, 0xED0000292874616DLL, 51);

      return 0;
    }

    v25 = [v0 integerValue];
    [v0 unit];
    type metadata accessor for HomeAutomationAbstractMeasurement.Builder(0);
    swift_allocObject();
    v26 = sub_252D857C4();
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    sub_252E37024();

    v40 = sub_252E36324();
    v41 = *(*(v40 - 8) + 56);
    v41(v13, 0, 1, v40);
    sub_2529439A0(v13, v11);
    v42 = OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_unit;
    swift_beginAccess();
    sub_252956C98(v11, v26 + v42);
    swift_endAccess();
    *(v26 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsBelowMinimumTargetTemperatureThreshold) = 0;
    *(v26 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsAboveMaximumTargetTemperatureThreshold) = 0;
    *(v26 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsBelowMinimumHeatingThreshold) = 0;
    *(v26 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsAboveMaximumCoolingThreshold) = 0;
    v43 = v26 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_minimumTargetTemperature;
    *v43 = 0;
    *(v43 + 8) = 1;
    v44 = v26 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_maximumTargetTemperature;
    *v44 = 0;
    *(v44 + 8) = 1;
    v45 = v26 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_minimumHeatingTemperature;
    *v45 = 0;
    *(v45 + 8) = 1;
    v46 = v26 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_maximumCoolingTemperature;
    *v46 = 0;
    *(v46 + 8) = 1;
    v41(v11, 1, 1, v40);
    v47 = OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_requestType;
    swift_beginAccess();
    sub_252956C98(v11, v26 + v47);
    swift_endAccess();
    type metadata accessor for HomeAutomationAbstractMeasurement(0);
    swift_allocObject();
    v48 = sub_252D859B8(v26);
    type metadata accessor for HomeAutomationEntityStateValue.Builder(0);
    v49 = swift_allocObject();
    v50 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue;
    v41((v49 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue), 1, 1, v40);
    *(v49 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_numericValue) = 0;
    type metadata accessor for HomeAutomationEntityStateValue(0);
    v51 = swift_allocObject();
    *(v51 + 16) = 0;
    swift_beginAccess();
    sub_252956C1C(v49 + v50, v51 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue);
    swift_setDeallocating();
    v52 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue;
LABEL_20:
    sub_252938BBC(v49 + v52);
    swift_deallocClassInstance();
    result = v51;
    *(v51 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue) = v48;
    *(v51 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue) = 0;
    return result;
  }

  if (v14 == 1)
  {
    type metadata accessor for HomeAutomationEntityStateValue.Builder(0);
    v27 = swift_allocObject();
    v28 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue;
    v29 = sub_252E36324();
    (*(*(v29 - 8) + 56))(v27 + v28, 1, 1, v29);
    *(v27 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_BOOLeanValue) = 0;
    v30 = [v0 BOOLValue];
    type metadata accessor for HomeAutomationEntityStateValue(0);
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    swift_beginAccess();
    sub_252956C1C(v27 + v28, v31 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue);
    swift_setDeallocating();
    sub_252938BBC(v27 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue);
    swift_deallocClassInstance();
    result = v31;
    *(v31 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue) = 0;
    *(v31 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue) = v30;
    return result;
  }

  if (v14 == 2)
  {
    [v0 doubleValue];
    v38 = v37;
    [v0 unit];
    type metadata accessor for HomeAutomationAbstractMeasurement.Builder(0);
    swift_allocObject();
    v39 = sub_252D857C4();
    *(v39 + 16) = v38;
    *(v39 + 24) = 0;
    sub_252E37024();

    v53 = sub_252E36324();
    v54 = *(*(v53 - 8) + 56);
    v54(v8, 0, 1, v53);
    sub_2529439A0(v8, v11);
    v55 = OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_unit;
    swift_beginAccess();
    sub_252956C98(v11, v39 + v55);
    swift_endAccess();
    *(v39 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsBelowMinimumTargetTemperatureThreshold) = 0;
    *(v39 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsAboveMaximumTargetTemperatureThreshold) = 0;
    *(v39 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsBelowMinimumHeatingThreshold) = 0;
    *(v39 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsAboveMaximumCoolingThreshold) = 0;
    v56 = v39 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_minimumTargetTemperature;
    *v56 = 0;
    *(v56 + 8) = 1;
    v57 = v39 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_maximumTargetTemperature;
    *v57 = 0;
    *(v57 + 8) = 1;
    v58 = v39 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_minimumHeatingTemperature;
    *v58 = 0;
    *(v58 + 8) = 1;
    v59 = v39 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_maximumCoolingTemperature;
    *v59 = 0;
    *(v59 + 8) = 1;
    v54(v11, 1, 1, v53);
    v60 = OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_requestType;
    swift_beginAccess();
    sub_252956C98(v11, v39 + v60);
    swift_endAccess();
    type metadata accessor for HomeAutomationAbstractMeasurement(0);
    swift_allocObject();
    v48 = sub_252D859B8(v39);
    type metadata accessor for HomeAutomationEntityStateValue.Builder(0);
    v49 = swift_allocObject();
    v61 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue;
    v54((v49 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue), 1, 1, v53);
    *(v49 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_numericValue) = 0;
    type metadata accessor for HomeAutomationEntityStateValue(0);
    v51 = swift_allocObject();
    *(v51 + 16) = 0;
    swift_beginAccess();
    sub_252956C1C(v49 + v61, v51 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue);
    swift_setDeallocating();
    v52 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue;
    goto LABEL_20;
  }

  if (v14 != 3)
  {
    goto LABEL_15;
  }

  type metadata accessor for HomeAutomationEntityStateValue.Builder(0);
  v15 = swift_allocObject();
  v16 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue;
  v17 = sub_252E36324();
  v18 = *(*(v17 - 8) + 56);
  v19 = 1;
  v18(v15 + v16, 1, 1, v17);
  v20 = [v1 stringValue];
  if (v20)
  {
    v21 = v20;
    sub_252E36F34();

    sub_252E37024();

    v19 = 0;
  }

  v18(v5, v19, 1, v17);
  sub_2529439A0(v5, v11);
  swift_beginAccess();
  sub_252956C98(v11, v15 + v16);
  swift_endAccess();
  type metadata accessor for HomeAutomationEntityStateValue(0);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  sub_252956C1C(v15 + v16, v22 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue);
  swift_setDeallocating();
  sub_252938BBC(v15 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue);
  swift_deallocClassInstance();
  result = v22;
  *(v22 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue) = 0;
  *(v22 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue) = 0;
  return result;
}

Swift::String __swiftcall HomeAttributeUnit.toString()()
{
  if (v0 <= 2)
  {
    if (v0 == 1)
    {
      v1 = 0xE700000000000000;
      v2 = 0x746E6563726570;
      goto LABEL_13;
    }

    if (v0 == 2)
    {
      v1 = 0xEA00000000007469;
      v2 = 0x65686E6572686166;
      goto LABEL_13;
    }

LABEL_12:
    v1 = 0xE700000000000000;
    v2 = 0x6E776F6E6B6E75;
    goto LABEL_13;
  }

  if (v0 == 3)
  {
    v1 = 0xE700000000000000;
    v2 = 0x737569736C6563;
    goto LABEL_13;
  }

  if (v0 == 4)
  {
    v1 = 0xE300000000000000;
    v2 = 7894380;
    goto LABEL_13;
  }

  if (v0 != 5)
  {
    goto LABEL_12;
  }

  v1 = 0xE700000000000000;
  v2 = 0x73646E6F636573;
LABEL_13:
  result._object = v1;
  result._countAndFlagsBits = v2;
  return result;
}

void sub_252D09214(uint64_t a1@<X8>)
{
  v3 = [v1 type];
  if (v3 <= 2)
  {
    if (v3 == 1)
    {
      v11 = [v1 BOOLValue];
      *(a1 + 24) = MEMORY[0x277D839B0];
      *a1 = v11;
      return;
    }

    if (v3 == 2)
    {
      [v1 doubleValue];
      *(a1 + 24) = MEMORY[0x277D839F8];
      *a1 = v4;
      return;
    }

    goto LABEL_8;
  }

  if (v3 != 3)
  {
    if (v3 == 4)
    {
      v5 = [v1 integerValue];
      *(a1 + 24) = MEMORY[0x277D83B88];
      *a1 = v5;
      return;
    }

LABEL_8:
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v6 = sub_252E36AD4();
    __swift_project_value_buffer(v6, qword_27F544D60);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000003ELL, 0x8000000252E939A0);
    v7 = [v1 description];
    v8 = sub_252E36F34();
    v10 = v9;

    MEMORY[0x2530AD570](v8, v10);

    sub_252CC4050(0, 0xE000000000000000, 0xD00000000000008CLL, 0x8000000252E938C0, 0x6C61567761526F74, 0xEC00000029286575, 75);

    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v12 = [v1 stringValue];
  if (v12)
  {
    v13 = v12;
    v14 = sub_252E36F34();
    v16 = v15;

    *(a1 + 24) = MEMORY[0x277D837D0];
    if (v16)
    {
      *a1 = v14;
      *(a1 + 8) = v16;
      return;
    }
  }

  else
  {
    *(a1 + 24) = MEMORY[0x277D837D0];
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
}

void sub_252D09498(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
  v6 = sub_252E36F04();
  v7 = [v5 initWithIdentifier:0 displayString:v6];

  v8 = v7;
  [v8 setIntegerValue_];
  [v8 setUnit_];
  [v8 setType_];

  *a3 = v8;
}

void sub_252D0956C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
  v6 = sub_252E36F04();
  v7 = [v5 initWithIdentifier:0 displayString:v6];

  v8 = v7;
  [v8 setType_];
  [v8 setLimitValue_];

  *a3 = v8;
}

BOOL static HomeAttributeRange.== infix(_:_:)(void *a1, void *a2)
{
  [a1 lowerValue];
  v5 = v4;
  [a2 lowerValue];
  if (v5 != v6)
  {
    return 0;
  }

  [a1 upperValue];
  v8 = v7;
  [a2 upperValue];
  return v8 == v9;
}

uint64_t _s22HomeAutomationInternal0A14AttributeValueC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = [a1 type];
  if (v4 != [a2 type])
  {
    return 0;
  }

  v5 = [a1 BOOLValue];
  if (v5 != [a2 BOOLValue])
  {
    return 0;
  }

  v6 = [a1 integerValue];
  if (v6 != [a2 integerValue])
  {
    return 0;
  }

  [a1 doubleValue];
  v8 = v7;
  [a2 doubleValue];
  if (v8 != v9)
  {
    return 0;
  }

  v10 = [a1 integerValue];
  if (v10 != [a2 integerValue])
  {
    return 0;
  }

  v11 = [a1 stringValue];
  if (v11)
  {
    v12 = v11;
    v13 = sub_252E36F34();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = [a2 stringValue];
  if (!v16)
  {
    if (!v15)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v17 = v16;
  v18 = sub_252E36F34();
  v20 = v19;

  if (!v15)
  {
    if (!v20)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (!v20)
  {
LABEL_18:

    return 0;
  }

  if (v13 != v18 || v15 != v20)
  {
    v21 = sub_252E37DB4();

    if (v21)
    {
      goto LABEL_20;
    }

    return 0;
  }

LABEL_20:
  v22 = [a1 unit];
  if (v22 != [a2 unit])
  {
    return 0;
  }

  v23 = [a1 limitValue];
  if (v23 != [a2 limitValue])
  {
    return 0;
  }

  v24 = [a1 rangeValue];
  v25 = [a2 rangeValue];
  v26 = v25;
  if (v24)
  {
    if (!v25)
    {

      return 0;
    }

    type metadata accessor for HomeAttributeRange();
    v27 = sub_252E37694();

    if ((v27 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
LABEL_27:

    return 0;
  }

  v28 = [a1 cleaningJob];
  v25 = [a2 cleaningJob];
  v29 = v25;
  if (v28)
  {
    if (v25)
    {
      type metadata accessor for HomeAttributeCleaningJob();
      v30 = sub_252E37694();

      return v30 & 1;
    }

    return 0;
  }

  if (v25)
  {
    goto LABEL_27;
  }

  return 1;
}

uint64_t sub_252D099D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  v6 = sub_252E33C44();
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D09AA0, 0, 0);
}

uint64_t sub_252D09AA0()
{
  v42 = v0;
  v2 = [*(v0 + 136) userTask];
  if (!v2)
  {
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 136);
    v11 = sub_252E36AD4();
    __swift_project_value_buffer(v11, qword_27F544D18);
    sub_252E379F4();

    v41[0] = 0xD000000000000020;
    v41[1] = 0x8000000252E93B00;
    v12 = v10;
    v13 = [v12 description];
    v14 = sub_252E36F34();
    v16 = v15;

    MEMORY[0x2530AD570](v14, v16);

    sub_252CC4050(0xD000000000000020, 0x8000000252E93B00, 0xD00000000000008FLL, 0x8000000252E93A20, 0xD00000000000004BLL, 0x8000000252E93AB0, 113);

    v9 = 8;
    goto LABEL_9;
  }

  v3 = v2;
  v4 = [v2 attribute];

  sub_252B680FC(v5);
  sub_252B65874(v41);

  v7 = v41[0];
  if (LOBYTE(v41[0]) == 77)
  {
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v8 = sub_252E36AD4();
    __swift_project_value_buffer(v8, qword_27F544D18);
    sub_252CC4050(0xD000000000000033, 0x8000000252E939E0, 0xD00000000000008FLL, 0x8000000252E93A20, 0xD00000000000004BLL, 0x8000000252E93AB0, 118);
    v9 = 7;
LABEL_9:
    sub_2529318DC();
    swift_allocError();
    *v17 = v9;
    swift_willThrow();

    v18 = *(v0 + 8);

    return v18();
  }

  v20 = sub_252B680FC(v6);
  swift_beginAccess();
  v21 = *(v20 + 32);
  if (!(v21 >> 62))
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_14;
    }

LABEL_23:

    v21 = 0;
    goto LABEL_24;
  }

  v22 = sub_252E378C4();
  if (!v22)
  {
    goto LABEL_23;
  }

LABEL_14:
  v23 = v22 - 1;
  if (__OFSUB__(v22, 1))
  {
    __break(1u);
  }

  else if ((v21 & 0xC000000000000001) == 0)
  {
    if ((v23 & 0x8000000000000000) != 0)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_46;
    }

    v24 = *(v21 + 8 * v23 + 32);
    goto LABEL_19;
  }

  v24 = MEMORY[0x2530ADF00](v23, v21);

LABEL_19:

  v25 = sub_252C285F0();

  if (v25 >> 62)
  {
    v21 = sub_252E378C4();
  }

  else
  {
    v21 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

LABEL_24:
  v27 = sub_252B680FC(v26);
  swift_beginAccess();
  v23 = *(v27 + 32);
  if (!(v23 >> 62))
  {
    result = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_26;
    }

LABEL_35:

    v30 = 0;
    goto LABEL_36;
  }

  result = sub_252E378C4();
  if (!result)
  {
    goto LABEL_35;
  }

LABEL_26:
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_42;
  }

  if ((v23 & 0xC000000000000001) != 0)
  {
LABEL_43:

    v28 = MEMORY[0x2530ADF00](v1, v23);

    goto LABEL_31;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v1 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return result;
  }

  v28 = *(v23 + 8 * v1 + 32);
LABEL_31:

  LOBYTE(v41[0]) = v7;
  v29 = sub_252C2CDC4(v41, v4);

  if (v29 >> 62)
  {
LABEL_47:
    v30 = sub_252E378C4();
    goto LABEL_33;
  }

  v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_33:

LABEL_36:
  v31 = *(v0 + 160);
  v32 = *(v0 + 120);
  v33 = *(v0 + 128);
  v34 = *(v0 + 112);
  v36 = v32[3];
  v35 = v32[4];
  __swift_project_boxed_opaque_existential_1(v32, v36);
  sub_252929E74(v34, v0 + 16);
  v37 = swift_allocObject();
  *(v0 + 168) = v37;
  sub_252927BEC((v0 + 16), v37 + 16);
  *(v37 + 56) = v21;
  *(v37 + 64) = v30;
  *(v37 + 72) = v7;
  sub_252A6097C(v33, v31);
  v38 = swift_task_alloc();
  *(v0 + 176) = v38;
  *v38 = v0;
  v38[1] = sub_252D0A080;
  v39 = *(v0 + 160);
  v40 = *(v0 + 104);

  return sub_252BDB3DC(v40, &unk_252E5B858, v37, v39, v36, v35);
}

uint64_t sub_252D0A080()
{
  v2 = *v1;
  v2[23] = v0;

  if (v0)
  {
    (*(v2[19] + 8))(v2[20], v2[18]);

    return MEMORY[0x2822009F8](sub_252D0A210, 0, 0);
  }

  else
  {
    (*(v2[19] + 8))(v2[20], v2[18]);

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_252D0A210()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252D0A274(uint64_t a1, char a2)
{
  *(v2 + 32) = a2;
  *(v2 + 16) = a1;
  return MEMORY[0x2822009F8](sub_252D0A298, 0, 0);
}

uint64_t sub_252D0A298()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_252CB8014;
  v2 = *(v0 + 32);

  return sub_252C0C6AC(0, v2);
}

uint64_t sub_252D0A33C(uint64_t a1, char a2)
{
  *(v2 + 32) = a2;
  *(v2 + 16) = a1;
  return MEMORY[0x2822009F8](sub_252D0A360, 0, 0);
}

uint64_t sub_252D0A360()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_252CBD840;
  v2 = *(v0 + 32);

  return sub_252C0D6BC(0, v2);
}

uint64_t sub_252D0A424()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v1 = swift_allocObject();
  *(v1 + 32) = 0xD000000000000017;
  *(v1 + 40) = 0x8000000252E6FE70;
  *(v1 + 72) = MEMORY[0x277D839B0];
  v4 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  *(v0 + 24) = v1;
  *(v1 + 16) = xmmword_252E3C290;
  *(v1 + 48) = 0;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_252AD7EB4;

  return v4(0xD000000000000024, 0x8000000252E93B60, v1);
}

uint64_t sub_252D0A55C(uint64_t a1, char a2)
{
  *(v2 + 32) = a2;
  *(v2 + 16) = a1;
  return MEMORY[0x2822009F8](sub_252D0A580, 0, 0);
}

uint64_t sub_252D0A580()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_252CBD840;
  v2 = *(v0 + 32);

  return sub_252C0B3FC(0, v2);
}

uint64_t sub_252D0A624(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 96) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  *(v4 + 40) = swift_task_alloc();
  *(v4 + 48) = type metadata accessor for HomeAutomationConvenienceAnswerFollowUpParameters(0);
  *(v4 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D0A6F8, 0, 0);
}

void *sub_252D0A6F8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  result = __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v4 = v1 - v2;
  if (__OFSUB__(v1, v2))
  {
    __break(1u);
  }

  else
  {
    v5 = *(v0 + 48);
    v6 = *(v0 + 56);
    v7 = *(v0 + 40);
    v8 = v4 > 1;
    v9 = *(v5 + 20);
    v10 = sub_252E36324();
    v11 = *(*(v10 - 8) + 56);
    v11(&v6[v9], 1, 1, v10);
    *v6 = 0;
    v6[*(v5 + 24)] = v8;
    StateSemantic.rawValue.getter();
    sub_252E362F4();
    v11(v7, 0, 1, v10);
    sub_252956C98(v7, &v6[v9]);
    v12 = sub_252C06814();
    *(v0 + 64) = v12;
    v14 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
    v13 = swift_task_alloc();
    *(v0 + 72) = v13;
    *v13 = v0;
    v13[1] = sub_252D0A8B4;

    return v14(0xD000000000000028, 0x8000000252E93B30, v12);
  }

  return result;
}

uint64_t sub_252D0A8B4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_252D0AA80;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_252D0AA00;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D0AA00()
{
  sub_252D0AD04(v0[7]);

  v1 = v0[1];
  v2 = v0[11];

  return v1(v2);
}

uint64_t sub_252D0AA80()
{
  sub_252D0AD04(*(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252D0AB1C()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v1 = swift_allocObject();
  *(v1 + 32) = 0xD000000000000017;
  *(v1 + 40) = 0x8000000252E6FE70;
  *(v1 + 72) = MEMORY[0x277D839B0];
  v4 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  *(v0 + 24) = v1;
  *(v1 + 16) = xmmword_252E3C290;
  *(v1 + 48) = 0;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_252C0B580;

  return v4(0xD000000000000033, 0x8000000252E93B90, v1);
}

uint64_t sub_252D0AC54()
{
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B7BC;

  return sub_252D0A624(v0 + 16, v2, v3, v4);
}

uint64_t sub_252D0AD04(uint64_t a1)
{
  v2 = type metadata accessor for HomeAutomationConvenienceAnswerFollowUpParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252D0AD60()
{
  if (*v0)
  {
    return 0x726F727265;
  }

  else
  {
    return 0x74736575716572;
  }
}

uint64_t sub_252D0AD98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74736575716572 && a2 == 0xE700000000000000;
  if (v6 || (sub_252E37DB4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_252D0AE70(uint64_t a1)
{
  v2 = sub_252D0B35C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252D0AEAC(uint64_t a1)
{
  v2 = sub_252D0B35C();

  return MEMORY[0x2821FE720](a1, v2);
}

void *HMResponseBase.encode(to:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545640, qword_252E5B880);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  v29 = v7;
  if (v13)
  {
    v14 = v13;
    v27 = v10;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_252D0B35C();
    v26 = a1;
    v28 = v4;
    sub_252E37F84();
    v15 = [v14 request];
    v31 = v15;
    v30 = 0;
    sub_25293F638(0, &qword_27F545660, 0x277CD1990);
    sub_252D0B3B0(&qword_27F545668, &qword_27F545660, 0x277CD1990);
    sub_252E37D54();
    v3 = v2;
    if (v2)
    {

      return (*(v29 + 8))(v12, v6);
    }

    a1 = v26;

    v17 = [v14 error];
    if (v17)
    {
      v18 = v17;
      swift_getErrorValue();
      sub_252E37E54();
      LOBYTE(v31) = 0;
      sub_252E37CF4();
      v10 = v27;

      (*(v29 + 8))(v12, v6);
    }

    else
    {

      (*(v29 + 8))(v12, v6);
      v10 = v27;
    }
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v19 = result;
    v20 = v6;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_252D0B35C();
    v21 = v4;
    sub_252E37F84();
    v22 = [v19 request];
    v31 = v22;
    v30 = 0;
    sub_25293F638(0, &qword_27F545650, 0x277CD1830);
    sub_252D0B3B0(&qword_27F545658, &qword_27F545650, 0x277CD1830);
    sub_252E37D54();

    if (!v3)
    {
      v23 = [v19 error];
      if (v23)
      {
        v24 = v23;
        swift_getErrorValue();
        sub_252E37E54();
        LOBYTE(v31) = 0;
        sub_252E37CF4();
      }
    }

    return (*(v29 + 8))(v10, v20);
  }

  return result;
}

unint64_t sub_252D0B35C()
{
  result = qword_27F545648;
  if (!qword_27F545648)
  {
    result = swift_getWitnessTable(aY_6, &type metadata for HMResponseCodingKeys, v0, v1);
    atomic_store(result, &qword_27F545648);
  }

  return result;
}

uint64_t sub_252D0B3B0(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_25293F638(255, a2, a3);
    result = swift_getWitnessTable(protocol conformance descriptor for HMRequestBase, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252D0B438()
{
  result = qword_27F545670;
  if (!qword_27F545670)
  {
    result = swift_getWitnessTable(aA_5, &type metadata for HMResponseCodingKeys, v0, v1);
    atomic_store(result, &qword_27F545670);
  }

  return result;
}

unint64_t sub_252D0B490()
{
  result = qword_27F545678;
  if (!qword_27F545678)
  {
    result = swift_getWitnessTable(byte_252E5B8F8, &type metadata for HMResponseCodingKeys, v0, v1);
    atomic_store(result, &qword_27F545678);
  }

  return result;
}

unint64_t sub_252D0B4E8()
{
  result = qword_27F545680;
  if (!qword_27F545680)
  {
    result = swift_getWitnessTable(byte_252E5B920, &type metadata for HMResponseCodingKeys, v0, v1);
    atomic_store(result, &qword_27F545680);
  }

  return result;
}

uint64_t sub_252D0B53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[326] = v3;
  v4[325] = a3;
  v4[324] = a2;
  v4[323] = a1;
  v5 = sub_252E34014();
  v4[327] = v5;
  v4[328] = *(v5 - 8);
  v4[329] = swift_task_alloc();
  v4[330] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D0B614, 0, 0);
}

uint64_t sub_252D0B614()
{
  v63 = v0;
  v1 = *(v0 + 2600);
  type metadata accessor for HomeAutomationEntityResponses.Builder();
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  *(v2 + 16) = MEMORY[0x277D84F90];
  if (v1)
  {
    v4 = sub_252C31A30();
    v5 = v4;
    v61 = v1;
    __dst[0] = v3;
    v6 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
      v7 = sub_252E378C4();
    }

    else
    {
      v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = 0;
    v9 = v5 & 0xC000000000000001;
    while (1)
    {
      if (v7 == v8)
      {

        v14 = *(v0 + 2600);
        v1 = v61;
        goto LABEL_17;
      }

      if (v9)
      {
        v10 = MEMORY[0x2530ADF00](v8, v5);
      }

      else
      {
        if (v8 >= *(v6 + 16))
        {
          goto LABEL_31;
        }

        v10 = *(v5 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v13 = sub_252DA124C(0);

      ++v8;
      if (v13)
      {
        MEMORY[0x2530AD700]();
        if (*((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        v3 = __dst[0];
        v8 = v12;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v14 = 0;
LABEL_17:
  v6 = *(v0 + 2608);
  v15 = *(v0 + 2592);
  type metadata accessor for HomeAutomationEntityResponses();
  v5 = swift_allocObject();
  *(v0 + 2648) = v5;
  *(v5 + 16) = 0;
  swift_setDeallocating();
  swift_deallocClassInstance();
  *(v5 + 24) = v3;
  memcpy((v0 + 520), (v6 + 112), 0x1F8uLL);
  memcpy(__dst, (v6 + 112), 0x1F8uLL);
  sub_2529D291C(v0 + 520, v0 + 1024);
  v16 = v1;
  v17 = v15;
  v9 = sub_252953488(v15, __dst, v14);
  *(v0 + 2656) = v9;

  if (qword_27F53F4D0 != -1)
  {
LABEL_32:
    swift_once();
  }

  v18 = *(v0 + 2592);
  v19 = sub_252E36AD4();
  __swift_project_value_buffer(v19, qword_27F544D18);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();

  __dst[0] = 0xD000000000000013;
  __dst[1] = 0x8000000252E829B0;
  v20 = v18;
  v21 = [v20 description];
  v22 = sub_252E36F34();
  v24 = v23;

  MEMORY[0x2530AD570](v22, v24);

  sub_252CC3D90(__dst[0], __dst[1], 0xD00000000000008ELL, 0x8000000252E93C10);

  __dst[0] = 0x6E65746E49204C4ELL;
  __dst[1] = 0xEB00000000203A74;
  memcpy((v0 + 16), (v6 + 112), 0x1F8uLL);
  memcpy((v0 + 1528), (v6 + 112), 0x1F8uLL);
  sub_2529D291C(v0 + 16, v0 + 2032);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5404C8, &unk_252E3FD60);
  v25 = sub_252E36F94();
  MEMORY[0x2530AD570](v25);

  sub_252CC3D90(__dst[0], __dst[1], 0xD00000000000008ELL, 0x8000000252E93C10);

  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();

  __dst[0] = 0xD000000000000010;
  __dst[1] = 0x8000000252E77570;
  *(v0 + 2576) = *(v9 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5429D8, &qword_252E4E0B0);
  v26 = sub_252E36F94();
  MEMORY[0x2530AD570](v26);

  sub_252CC3D90(__dst[0], __dst[1], 0xD00000000000008ELL, 0x8000000252E93C10);

  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();

  __dst[0] = 0xD000000000000015;
  __dst[1] = 0x8000000252E93CA0;
  v27 = *(v5 + 24);
  v28 = type metadata accessor for HomeAutomationEntityResponse(0);
  v29 = MEMORY[0x2530AD730](v27, v28);
  MEMORY[0x2530AD570](v29);

  sub_252CC3D90(__dst[0], __dst[1], 0xD00000000000008ELL, 0x8000000252E93C10);

  v31 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v30);
  sub_252929E74((v31 + 288), v0 + 2536);

  v32 = *(v0 + 2560);
  v33 = *(v0 + 2568);
  __swift_project_boxed_opaque_existential_1((v0 + 2536), v32);
  LOBYTE(v27) = (*(v33 + 120))(v32, v33);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2536));
  if (v27)
  {
    v34 = [*(v0 + 2592) userTask];
    if (v34)
    {
      v35 = v34;
      v36 = [v34 attribute];

      if (v36 == 67)
      {
        v37 = v9;
        v60 = 0;
LABEL_27:
        v50 = *(v0 + 2608);
        v51 = *(v0 + 2600);
        v52 = *(v0 + 2592);
        v53 = v50[12];
        v54 = v50[13];
        __swift_project_boxed_opaque_existential_1(v50 + 9, v53);
        v55 = swift_task_alloc();
        *(v0 + 2664) = v55;
        v55[2] = v50;
        v55[3] = v5;
        v55[4] = v51;
        v55[5] = v37;
        v56 = swift_task_alloc();
        *(v0 + 2672) = v56;
        v56[2] = v52;
        v56[3] = v5;
        v56[4] = v37;
        sub_252B03B94();
        v57 = swift_task_alloc();
        *(v0 + 2680) = v57;
        *v57 = v0;
        v57[1] = sub_252D0BDFC;
        v58 = *(v0 + 2640);
        v59 = *(v0 + 2584);
        v68 = v53;
        v69 = v54;
        v67 = v60;
        v66 = 0;
        v65 = 0;

        return sub_252A199A8(v59, &unk_252E5BA78, v55, &unk_252E5BA88, v56, v58, 0, 0);
      }
    }

    else
    {
      sub_252C515AC();
    }

    v37 = v9;
    v60 = 2;
    goto LABEL_27;
  }

  v38 = v9;
  v39 = *(v0 + 2608);
  v40 = *(v0 + 2600);
  v41 = *(v0 + 2592);
  v42 = v39[12];
  v43 = v39[13];
  __swift_project_boxed_opaque_existential_1(v39 + 9, v42);
  v44 = swift_task_alloc();
  *(v0 + 2696) = v44;
  v44[2] = v39;
  v44[3] = v40;
  v44[4] = v5;
  v44[5] = v38;
  v45 = sub_252DC6D48(v41, v40);
  sub_252AD7CC4();
  v46 = swift_task_alloc();
  *(v0 + 2704) = v46;
  *v46 = v0;
  v46[1] = sub_252D0C018;
  v47 = *(v0 + 2632);
  v48 = *(v0 + 2584);
  v68 = v43;

  return sub_252BDB88C(v48, &unk_252E5BA68, v44, v47, 0, 0, v45, v42);
}

uint64_t sub_252D0BDFC()
{
  v2 = *(*v1 + 2640);
  v3 = *(*v1 + 2624);
  v4 = *(*v1 + 2616);
  *(*v1 + 2688) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252D0C198;
  }

  else
  {

    v5 = sub_252D0BF88;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D0BF88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252D0C018()
{
  v2 = *(*v1 + 2632);
  v3 = *(*v1 + 2624);
  v4 = *(*v1 + 2616);
  *(*v1 + 2712) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252D0C23C;
  }

  else
  {

    v5 = sub_252D0D658;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D0C198()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252D0C23C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252D0C2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_252D0C2F8, 0, 0);
}

uint64_t sub_252D0C2F8()
{
  v1 = v0[4];
  v0[6] = *(v0[2] + 64);

  if (v1)
  {
    LOBYTE(v1) = sub_252C2AC20();
  }

  v2 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_252D0C3D0;

  return sub_252D2A104(v3, v1 & 1, v2);
}

uint64_t sub_252D0C3D0(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_252D0C4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  type metadata accessor for CompletionSnippetModel(0);
  v8 = swift_task_alloc();
  v4[3] = v8;
  v9 = swift_task_alloc();
  v4[4] = v9;
  *v9 = v4;
  v9[1] = sub_252C236AC;

  return sub_252A2D160(v8, a2, a3, a4);
}

uint64_t sub_252D0C5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v4[11] = type metadata accessor for HomeAutomationSetModeParameters(0);
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D0C674, 0, 0);
}

uint64_t sub_252D0C674()
{
  v1 = v0[8];
  sub_252929E74(v0[7] + 24, (v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  if (v1)
  {
    v2 = sub_252C2AC20();
  }

  else
  {
    v2 = 0;
  }

  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = sub_252E36324();
  v8 = *(*(v7 - 8) + 56);

  v8(v3, 1, 1, v7);
  v8(v3 + v4[10], 1, 1, v7);
  *(v3 + v4[5]) = 0;
  *(v3 + v4[6]) = v2 & 1;
  *(v3 + v4[7]) = 0;
  *(v3 + v4[8]) = 0;
  *(v3 + v4[9]) = 0;
  sub_252D0CACC(v3, v6, v5);
  v9 = sub_252C099C8();
  v0[13] = v9;
  v12 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_252D0C854;

  return v12(0xD000000000000016, 0x8000000252E666A0, v9);
}

uint64_t sub_252D0C854(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_252D0CA38;
  }

  else
  {
    *(v4 + 128) = a1;
    v5 = sub_252D0C9A0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D0C9A0()
{
  sub_252D0D5FC(v0[12]);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];
  v2 = v0[16];

  return v1(v2);
}

uint64_t sub_252D0CA38()
{
  sub_252D0D5FC(v0[12]);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_252D0CACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v30[-v10];
  v12 = type metadata accessor for HomeAutomationSetModeParameters(0);
  v13 = v12[9];
  swift_retain_n();

  *(a1 + v13) = a2;
  v14 = v12[8];

  *(a1 + v14) = a2;
  v15 = v12[7];

  *(a1 + v15) = a3;
  v16 = sub_25294833C(1u, 0, 0);
  if (!v16)
  {
    goto LABEL_7;
  }

  v17 = v16;
  v18 = [v16 dictionary];
  if (!v18)
  {

LABEL_7:
    v26 = sub_252E36324();
    (*(*(v26 - 8) + 56))(v11, 1, 1, v26);
    goto LABEL_8;
  }

  v19 = v18;
  v20 = objc_opt_self();
  v31[0] = 0;
  v21 = [v20 dataWithPropertyList:v19 format:200 options:0 error:v31];
  v22 = v31[0];
  if (!v21)
  {
    v27 = v22;
    v28 = sub_252E32C54();

    swift_willThrow();
    goto LABEL_7;
  }

  v23 = sub_252E32D34();
  v25 = v24;

  sub_252E32D24();
  sub_252E362F4();

  sub_25296464C(v23, v25);
  v26 = sub_252E36324();
  (*(*(v26 - 8) + 56))(v11, 0, 1, v26);
LABEL_8:
  sub_252956C98(v11, a1 + v12[10]);
  sub_252E37024();
  sub_252E36324();
  (*(*(v26 - 8) + 56))(v9, 0, 1, v26);
  return sub_252956C98(v9, a1);
}

uint64_t sub_252D0CE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252D0B53C(a1, a2, a3);
}

void *sub_252D0CED4@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for SetModeResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252D0CF38(void *a1, id a2)
{
  v2 = a2;
  if (!a2)
  {
    goto LABEL_35;
  }

  v4 = [a2 entityResponses];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for HomeEntityResponse();
    v6 = sub_252E37264();

    v7 = sub_252B1F554(v6);
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v8 = sub_252E36AD4();
    __swift_project_value_buffer(v8, qword_27F544D60);
    sub_252E379F4();

    v9 = v2;
    v10 = [v9 description];
    v11 = sub_252E36F34();
    v13 = v12;

    MEMORY[0x2530AD570](v11, v13);

    sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);
    v7 = MEMORY[0x277D84F90];
  }

  if (!(v7 >> 62))
  {
    v14 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_34:

    goto LABEL_35;
  }

LABEL_33:
  v14 = sub_252E378C4();
  if (!v14)
  {
    goto LABEL_34;
  }

LABEL_9:
  v44 = a1;
  v45 = v2;
  v15 = 0;
  do
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x2530ADF00](v15, v7);
    }

    else
    {
      if (v15 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v16 = *(v7 + 8 * v15 + 32);
    }

    v17 = v16;
    a1 = (v15 + 1);
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v18 = qword_2864A9A10;
    v19 = [v16 userTask];
    if (!v19 || (v20 = v19, v2 = [v19 attribute], v20, v2 != v18))
    {
      v21 = qword_2864A9A18;
      v22 = [v17 userTask];
      if (!v22 || (v23 = v22, v2 = [v22 attribute], v23, v2 != v21))
      {
        v24 = qword_2864A9A20;
        v25 = [v17 userTask];
        if (!v25 || (v26 = v25, v2 = [v25 attribute], v26, v2 != v24))
        {
          v27 = qword_2864A9A28;
          v28 = [v17 userTask];
          if (!v28 || (v29 = v28, v2 = [v28 attribute], v29, v2 != v27))
          {
            v30 = qword_2864A9A30;
            v31 = [v17 userTask];
            if (!v31 || (v32 = v31, v2 = [v31 attribute], v32, v2 != v30))
            {

              v36 = 0;
              a1 = v44;
              v2 = v45;
              goto LABEL_36;
            }
          }
        }
      }
    }

    ++v15;
  }

  while (a1 != v14);

  a1 = v44;
  v33 = [v44 userTask];
  v2 = v45;
  if (v33)
  {
    v34 = v33;
    v35 = [v33 taskType];

    v36 = v35 == 1;
    goto LABEL_36;
  }

  sub_252C515AC();
LABEL_35:
  v36 = 0;
LABEL_36:
  v37 = [a1 userTask];
  if (v37)
  {
    v38 = v37;
    v39 = [v37 taskType];

    if (v39 == 1)
    {
      v40 = sub_252C4E58C(&unk_2864A99F0);
      if (v2)
      {
        if (v40)
        {
          v41 = sub_252C31A30();
          if (v41 >> 62)
          {
            v42 = sub_252E378C4();
          }

          else
          {
            v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v36 |= v42 != 0;
        }
      }
    }
  }

  else
  {
    sub_252C515AC();
  }

  return v36 & 1;
}

uint64_t sub_252D0D3F0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_25294B958;

  return sub_252D0C5DC(v2, v3, v5, v4);
}

uint64_t sub_252D0D49C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_25294B7BC;

  return sub_252D0C2D4(v2, v3, v5, v4);
}

uint64_t sub_252D0D548(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25293B808;

  return sub_252D0C4F4(a1, v4, v5, v6);
}

uint64_t sub_252D0D5FC(uint64_t a1)
{
  v2 = type metadata accessor for HomeAutomationSetModeParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252D0D66C(void *__src)
{
  memcpy(v1 + 65, __src, 0x1E8uLL);
  v3 = *(__src + 62);
  v1[183] = *(__src + 61);
  v1[184] = v3;

  return MEMORY[0x2822009F8](sub_252D0D6EC, 0, 0);
}

uint64_t sub_252D0D6EC(uint64_t a1)
{
  v157 = v1;
  v2 = (v1 + 16);
  v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v3 + 16), v1 + 16);

  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v4 = sub_252E338F4();
  v5 = __swift_destroy_boxed_opaque_existential_1((v1 + 16));
  if (v4)
  {
    v5 = sub_252A3EA30();
  }

  sub_252B680FC(v5);
  v6 = sub_252B63B0C();

  if (qword_27F53F520 != -1)
  {
    goto LABEL_75;
  }

  while (1)
  {
    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_27F544E08);
    *__dst = 0;
    *&__dst[8] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000044, 0x8000000252E93CC0);
    v8 = MEMORY[0x2530AD730](v6, &type metadata for ReferencedEntityValue);
    MEMORY[0x2530AD570](v8);

    sub_252CC3D90(*__dst, *&__dst[8], 0xD000000000000099, 0x8000000252E93D10);

    v150 = sub_252AB0020(v9);
    v133 = *(v6 + 16);
    if (!v133)
    {
      break;
    }

    v11 = 0;
    v12 = v1 + 1008;
    v13 = v1 + 1160;
    v14 = *(v1 + 1464);
    v131 = v6;
    v132 = v6 + 32;
    v149 = v14 + 56;
    v136 = (v1 + 1024);
    v15 = MEMORY[0x277D84F90];
    v135 = v1 + 1056;
    v137 = v10;
    v138 = v1;
    v6 = v10;
    v147 = v14;
    v148 = v1 + 1008;
    while (1)
    {
      v134 = v11;
      v16 = v132 + 152 * v11;
      v17 = *(v16 + 16);
      *v12 = *v16;
      *(v12 + 16) = v17;
      v18 = *(v16 + 32);
      v19 = *(v16 + 48);
      v20 = *(v16 + 80);
      *(v12 + 64) = *(v16 + 64);
      *(v12 + 80) = v20;
      *(v12 + 32) = v18;
      *(v12 + 48) = v19;
      v21 = *(v16 + 96);
      v22 = *(v16 + 112);
      v23 = *(v16 + 128);
      *(v12 + 144) = *(v16 + 144);
      *(v12 + 112) = v22;
      *(v12 + 128) = v23;
      *(v12 + 96) = v21;
      if (!*(v14 + 16))
      {
        sub_25297DE08(v12, v2);
        goto LABEL_14;
      }

      v24 = *(v16 + 112);
      v25 = *(v16 + 80);
      __src[6] = *(v16 + 96);
      __src[7] = v24;
      v26 = *(v16 + 112);
      __src[8] = *(v16 + 128);
      v27 = *(v16 + 48);
      v28 = *(v16 + 16);
      __src[2] = *(v16 + 32);
      __src[3] = v27;
      v29 = *(v16 + 48);
      v30 = *(v16 + 80);
      __src[4] = *(v16 + 64);
      __src[5] = v30;
      v31 = *(v16 + 16);
      __src[0] = *v16;
      __src[1] = v31;
      *&__dst[96] = __src[6];
      *&__dst[112] = v26;
      *&__dst[128] = *(v16 + 128);
      *&__dst[32] = __src[2];
      *&__dst[48] = v29;
      *&__dst[64] = __src[4];
      *&__dst[80] = v25;
      LOWORD(__src[9]) = *(v16 + 144);
      *&__dst[144] = *(v16 + 144);
      *__dst = __src[0];
      *&__dst[16] = v28;
      sub_252E37EC4();
      sub_25297DE08(v12, v2);
      sub_252A34930(v155);
      v32 = sub_252E37F14();
      v33 = -1 << *(v14 + 32);
      v34 = v32 & ~v33;
      if ((*(v149 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
      {
        break;
      }

LABEL_11:
      v12 = v148;
      sub_2529AEC80(v148);
LABEL_64:
      v11 = v134 + 1;
      if (v134 + 1 == v133)
      {
        goto LABEL_67;
      }

      if (v11 >= *(v131 + 16))
      {
        __break(1u);
LABEL_67:

        goto LABEL_69;
      }
    }

    v35 = ~v33;
    while (1)
    {
      v36 = *(v14 + 48) + 152 * v34;
      v37 = *(v36 + 16);
      *v13 = *v36;
      *(v13 + 16) = v37;
      v38 = *(v36 + 32);
      v39 = *(v36 + 48);
      v40 = *(v36 + 80);
      *(v13 + 64) = *(v36 + 64);
      *(v13 + 80) = v40;
      *(v13 + 32) = v38;
      *(v13 + 48) = v39;
      v41 = *(v36 + 96);
      v42 = *(v36 + 112);
      v43 = *(v36 + 128);
      *(v13 + 144) = *(v36 + 144);
      *(v13 + 112) = v42;
      *(v13 + 128) = v43;
      *(v13 + 96) = v41;
      v44 = *(v36 + 112);
      *&__dst[96] = *(v36 + 96);
      *&__dst[112] = v44;
      *&__dst[128] = *(v36 + 128);
      *&__dst[144] = *(v36 + 144);
      v45 = *(v36 + 48);
      *&__dst[32] = *(v36 + 32);
      *&__dst[48] = v45;
      v46 = *(v36 + 80);
      *&__dst[64] = *(v36 + 64);
      *&__dst[80] = v46;
      v47 = *(v36 + 16);
      *__dst = *v36;
      *&__dst[16] = v47;
      sub_25297DE08(v13, v1 + 1312);
      v48 = sub_252A39200(__dst, __src);
      v49 = *&__dst[112];
      v2[6] = *&__dst[96];
      v2[7] = v49;
      v2[8] = *&__dst[128];
      *(v2 + 72) = *&__dst[144];
      v50 = *&__dst[48];
      v2[2] = *&__dst[32];
      v2[3] = v50;
      v51 = *&__dst[80];
      v2[4] = *&__dst[64];
      v2[5] = v51;
      v52 = *&__dst[16];
      *v2 = *__dst;
      v2[1] = v52;
      sub_2529AEC80(v2);
      if (v48)
      {
        break;
      }

      v34 = (v34 + 1) & v35;
      if (((*(v149 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v12 = v148;
LABEL_14:
    v53 = *(v1 + 1152);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401F0, &unk_252E5BAD0);
    v54 = swift_allocObject();
    v55 = *(v12 + 96);
    v56 = *(v12 + 128);
    *(v54 + 144) = *(v12 + 112);
    *(v54 + 160) = v56;
    v57 = *(v12 + 32);
    v58 = *(v12 + 64);
    v59 = *(v12 + 80);
    *(v54 + 80) = *(v12 + 48);
    *(v54 + 96) = v58;
    *(v54 + 112) = v59;
    *(v54 + 128) = v55;
    v60 = *v12;
    v61 = *(v12 + 16);
    *(v54 + 16) = xmmword_252E3C290;
    *(v54 + 32) = v60;
    *(v54 + 176) = *(v12 + 144);
    *(v54 + 48) = v61;
    *(v54 + 64) = v57;
    v62 = v54;
    if (v53)
    {
      v64 = sub_252E37DB4();
      v63 = v148;
      sub_25297DE08(v148, v2);

      if ((v64 & 1) == 0)
      {
        sub_2529AEC80(v148);
        v12 = v148;
LABEL_33:
        v85 = v62;
        v86 = *(v62 + 16);
        if (v86)
        {
          goto LABEL_51;
        }

        goto LABEL_63;
      }
    }

    else
    {
      sub_25297DE08(v12, v2);

      v63 = v12;
    }

    v65 = *(v63 + 112);
    *&__dst[96] = *(v63 + 96);
    *&__dst[112] = v65;
    *&__dst[128] = *(v63 + 128);
    *&__dst[144] = *(v63 + 144);
    v66 = *(v63 + 48);
    *&__dst[32] = *(v63 + 32);
    *&__dst[48] = v66;
    v67 = *(v63 + 80);
    *&__dst[64] = *(v63 + 64);
    *&__dst[80] = v67;
    v68 = *(v63 + 16);
    *__dst = *v63;
    *&__dst[16] = v68;
    v69 = *(sub_252A33D54() + 2);

    v12 = v63;
    if (v69 < 2)
    {
      sub_2529AEC80(v63);
      goto LABEL_33;
    }

    v70 = *(v63 + 112);
    *&__dst[96] = *(v63 + 96);
    *&__dst[112] = v70;
    *&__dst[128] = *(v63 + 128);
    *&__dst[144] = *(v63 + 144);
    v71 = *(v63 + 48);
    *&__dst[32] = *(v63 + 32);
    *&__dst[48] = v71;
    v72 = *(v63 + 80);
    *&__dst[64] = *(v63 + 64);
    *&__dst[80] = v72;
    v73 = *(v63 + 16);
    *__dst = *v63;
    *&__dst[16] = v73;
    v145 = sub_252A33D54();
    v74 = type metadata accessor for HomeStore(0);
    v75 = static HomeStore.shared.getter(v74);
    v76 = sub_2529D9D50();
    v77 = sub_2529D70E4(v76);

    *__dst = MEMORY[0x277D84F90];
    if (!(v77 >> 62))
    {
      v78 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v144 = v15;
      if (v78)
      {
        goto LABEL_20;
      }

LABEL_37:
      v87 = MEMORY[0x277D84F90];
LABEL_38:

      if (v87 < 0 || (v87 & 0x4000000000000000) != 0)
      {
        v88 = sub_252E378C4();
        if (v88)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v88 = *(v87 + 16);
        if (v88)
        {
LABEL_41:
          *&v155[0] = MEMORY[0x277D84F90];
          sub_2529AA580(0, v88 & ~(v88 >> 63), 0);
          if (v88 < 0)
          {
            goto LABEL_74;
          }

          v89 = 0;
          v90 = *&v155[0];
          v91 = v87;
          v143 = v87 & 0xC000000000000001;
          v140 = v88 - 1;
          for (i = v87; ; v91 = i)
          {
            v92 = v90;
            if (v143)
            {
              v93 = MEMORY[0x2530ADF00](v89, v91);
            }

            else
            {
              v93 = *(v91 + 8 * v89 + 32);
            }

            __src[0] = *v136;
            v94 = *(v135 + 80);
            *&__dst[64] = *(v135 + 64);
            *&__dst[80] = v94;
            *&__dst[96] = *(v135 + 96);
            v95 = *(v135 + 16);
            *__dst = *v135;
            *&__dst[16] = v95;
            v96 = *(v135 + 48);
            *&__dst[32] = *(v135 + 32);
            *&__dst[48] = v96;
            v97 = *(v93 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
            v98 = *(v93 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
            sub_25297DE08(v148, v2);

            v99 = sub_252E32E24();
            v101 = v100;

            v90 = v92;
            *&v155[0] = v92;
            v102 = *(v92 + 16);
            v103 = *(v90 + 24);
            if (v102 >= v103 >> 1)
            {
              sub_2529AA580((v103 > 1), v102 + 1, 1);
              v90 = *&v155[0];
            }

            *(v90 + 16) = v102 + 1;
            v104 = v90 + 152 * v102;
            *(v104 + 32) = v99;
            *(v104 + 40) = v101;
            *(v104 + 48) = __src[0];
            *(v104 + 64) = v97;
            *(v104 + 72) = v98;
            v105 = *__dst;
            v106 = *&__dst[32];
            *(v104 + 96) = *&__dst[16];
            *(v104 + 112) = v106;
            *(v104 + 80) = v105;
            v107 = *&__dst[48];
            v108 = *&__dst[64];
            v109 = *&__dst[80];
            *(v104 + 176) = *&__dst[96];
            *(v104 + 144) = v108;
            *(v104 + 160) = v109;
            *(v104 + 128) = v107;
            if (v140 == v89)
            {
              break;
            }

            ++v89;
          }

          v12 = v148;
          v110 = v90;
          sub_2529AEC80(v148);

          v85 = v110;
          v6 = v137;
          v1 = v138;
          v14 = v147;
          v15 = v144;
          v86 = *(v110 + 16);
          if (v86)
          {
LABEL_51:
            v111 = v86 - 1;
            for (j = 32; ; j += 152)
            {
              v113 = *(v1 + 1472);
              v114 = *(v1 + 1464);
              v115 = v85;
              v116 = *(v85 + j + 16);
              *v13 = *(v85 + j);
              *(v13 + 16) = v116;
              v117 = *(v85 + j + 32);
              v118 = *(v85 + j + 48);
              v119 = *(v85 + j + 80);
              *(v13 + 64) = *(v85 + j + 64);
              *(v13 + 80) = v119;
              *(v13 + 32) = v117;
              *(v13 + 48) = v118;
              v120 = *(v85 + j + 96);
              v121 = *(v85 + j + 112);
              v122 = *(v85 + j + 128);
              *(v13 + 144) = *(v85 + j + 144);
              *(v13 + 112) = v121;
              *(v13 + 128) = v122;
              *(v13 + 96) = v120;
              memcpy(__dst, (v1 + 520), sizeof(__dst));
              v153 = v114;
              v154 = v113;
              v123 = *(v13 + 112);
              v155[6] = *(v13 + 96);
              v155[7] = v123;
              v155[8] = *(v13 + 128);
              v156 = *(v13 + 144);
              v124 = *(v13 + 48);
              v155[2] = *(v13 + 32);
              v155[3] = v124;
              v125 = *(v13 + 80);
              v155[4] = *(v13 + 64);
              v155[5] = v125;
              v126 = *(v13 + 16);
              v155[0] = *v13;
              v155[1] = v126;
              sub_25297DE08(v13, v1 + 1312);
              sub_252D0E290(__dst, v155, v150, v6, __src);
              sub_2529AEC80(v13);
              memcpy(v2, __src, 0x1F8uLL);
              if (sub_252956B94(v2) != 1)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v15 = sub_2529F7FB0(0, *(v15 + 2) + 1, 1, v15);
                }

                v128 = *(v15 + 2);
                v127 = *(v15 + 3);
                if (v128 >= v127 >> 1)
                {
                  v15 = sub_2529F7FB0((v127 > 1), v128 + 1, 1, v15);
                }

                *(v15 + 2) = v128 + 1;
                memcpy(&v15[504 * v128 + 32], v2, 0x1F8uLL);
              }

              v85 = v115;
              if (!v111)
              {
                break;
              }

              --v111;
            }

            v14 = v147;
            v12 = v148;
            goto LABEL_64;
          }

          goto LABEL_63;
        }
      }

      v12 = v148;
      sub_2529AEC80(v148);

      v85 = MEMORY[0x277D84F90];
      v86 = *(MEMORY[0x277D84F90] + 16);
      if (v86)
      {
        goto LABEL_51;
      }

LABEL_63:

      goto LABEL_64;
    }

    v78 = sub_252E378C4();
    v144 = v15;
    if (!v78)
    {
      goto LABEL_37;
    }

LABEL_20:
    v79 = 0;
    v141 = v77 & 0xFFFFFFFFFFFFFF8;
    v142 = v77 & 0xC000000000000001;
    v139 = v77;
    while (v142)
    {
      v6 = MEMORY[0x2530ADF00](v79, v77);
      v81 = v79 + 1;
      if (__OFADD__(v79, 1))
      {
        goto LABEL_72;
      }

LABEL_26:
      *(v1 + 16) = sub_252E32E24();
      *(v1 + 24) = v82;
      v83 = swift_task_alloc();
      *(v83 + 16) = v2;
      v84 = sub_2529ED970(sub_25296A69C, v83, v145);

      if (v84)
      {
        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      v14 = v147;
      v1 = v138;
      ++v79;
      v80 = v81 == v78;
      v6 = v137;
      v15 = v144;
      v77 = v139;
      if (v80)
      {
        v87 = *__dst;
        goto LABEL_38;
      }
    }

    if (v79 >= *(v141 + 16))
    {
      goto LABEL_73;
    }

    v6 = *(v77 + 8 * v79 + 32);

    v81 = v79 + 1;
    if (!__OFADD__(v79, 1))
    {
      goto LABEL_26;
    }

LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    swift_once();
  }

  v15 = MEMORY[0x277D84F90];
LABEL_69:
  v129 = *(v1 + 8);

  return v129(v15);
}

void *sub_252D0E290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = *(a1 + 88);
  v7 = *(a2 + 112);
  v74 = *(a2 + 96);
  v75 = v7;
  v76 = *(a2 + 128);
  v77 = *(a2 + 144);
  v8 = *(a2 + 48);
  v70 = *(a2 + 32);
  v71 = v8;
  v9 = *(a2 + 80);
  v72 = *(a2 + 64);
  v73 = v9;
  v10 = *(a2 + 16);
  v68 = *a2;
  v69 = v10;
  _s7BuilderCMa_1();
  swift_allocObject();
  sub_252E1E238();
  v11 = *(a1 + 48);
  __dst[2] = *(a1 + 32);
  __dst[3] = v11;
  __dst[4] = *(a1 + 64);
  v12 = *(a1 + 80);
  v13 = *(a1 + 16);
  __dst[0] = *a1;
  __dst[1] = v13;
  *&__dst[5] = v12;
  *(&__dst[5] + 1) = v6;
  memcpy(&__dst[6], (a1 + 96), 0x198uLL);
  v14 = sub_252E1EBE8(__dst);

  v15 = *(v6 + 16);
  v61 = v6;
  v16 = (v6 + 32);
  v17 = (v6 + 32);
  while (2)
  {
    if (v15)
    {
      switch(*v17)
      {
        case 2:
          goto LABEL_21;
        default:
          v18 = sub_252E37DB4();

          ++v17;
          --v15;
          if ((v18 & 1) == 0)
          {
            continue;
          }

          goto LABEL_22;
      }
    }

    break;
  }

  v19 = *(v61 + 16);
  while (2)
  {
    if (v19)
    {
      switch(*v16)
      {
        case 3:
LABEL_21:

          goto LABEL_22;
        default:
          v20 = sub_252E37DB4();

          ++v16;
          --v19;
          if ((v20 & 1) == 0)
          {
            continue;
          }

          goto LABEL_22;
      }
    }

    break;
  }

  if (v74)
  {
    v21 = 0;
  }

  else
  {
    v21 = v75 == 0;
  }

  v23 = v21 && v76 == 0 && a4 == 0;
  if (v23 || (v24 = *(a1 + 48), *&v65[32] = *(a1 + 32), *&v65[48] = v24, *&v65[64] = *(a1 + 64), v25 = *(a1 + 80), v26 = *(a1 + 16), *v65 = *a1, *&v65[16] = v26, *&v65[80] = v25, *&v65[88] = v61, memcpy(&v65[96], (a1 + 96), 0x198uLL), v63[6] = v74, v63[7] = v75, v63[8] = v76, v64 = v77, v63[2] = v70, v63[3] = v71, v63[4] = v72, v63[5] = v73, v63[0] = v68, v63[1] = v69, sub_252AAEEB4(v65, v63, a3, a4, __src), memcpy(__dst, __src, 0x1F8uLL), sub_252956B94(__dst) == 1))
  {
LABEL_22:
    v28 = 0;
  }

  else
  {
    memcpy(v65, __dst, sizeof(v65));
    v27 = sub_252E1EBE8(v65);

    sub_25299F5D4(__src);
    v28 = 1;
    v14 = v27;
  }

  swift_beginAccess();
  v29 = v14[22];
  if (*(v29 + 2) || (v31 = *(&v69 + 1)) == 0)
  {
    v30 = 0;
  }

  else
  {
    v32 = v69;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14[22] = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v29 = sub_2529F7A80(0, 1, 1, v29);
      v14[22] = v29;
    }

    v35 = *(v29 + 2);
    v34 = *(v29 + 3);
    if (v35 >= v34 >> 1)
    {
      v29 = sub_2529F7A80((v34 > 1), v35 + 1, 1, v29);
    }

    *(v29 + 2) = v35 + 1;
    v36 = &v29[16 * v35];
    *(v36 + 4) = v32;
    *(v36 + 5) = v31;
    v14[22] = v29;
    swift_endAccess();
    v30 = 1;
  }

  if (!*(v14[21] + 16))
  {
    v37 = *(&v70 + 1);
    if (*(&v70 + 1))
    {
      v38 = v70;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_252E3C290;
      *(v39 + 32) = v38;
      *(v39 + 40) = v37;
      v14[21] = v39;

      v30 = 1;
    }
  }

  if (!*(v14[23] + 16))
  {
    v40 = *(&v72 + 1);
    if (*(&v72 + 1))
    {
      v41 = v72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_252E3C290;
      *(v42 + 32) = v41;
      *(v42 + 40) = v40;
      v14[23] = v42;

      v30 = 1;
    }
  }

  if (!*(v14[19] + 16))
  {
    v43 = v73;
    if (v73 != 52)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401A8, &unk_252E3BFD0);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_252E3C290;
      *(v44 + 32) = v43;
      v14[19] = v44;

      v30 = 1;
    }
  }

  if (!*(v14[18] + 16))
  {
    v46 = *(&v71 + 1);
    if (*(&v71 + 1))
    {
      v47 = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_252E3C290;
      *(v48 + 32) = v47;
      *(v48 + 40) = v46;
      v14[18] = v48;

      goto LABEL_46;
    }
  }

  if (v30)
  {
LABEL_46:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401F0, &unk_252E5BAD0);
    v49 = swift_allocObject();
    v50 = v74;
    v51 = v76;
    *(v49 + 144) = v75;
    *(v49 + 160) = v51;
    v52 = v70;
    v53 = v72;
    v54 = v73;
    *(v49 + 80) = v71;
    *(v49 + 96) = v53;
    *(v49 + 112) = v54;
    *(v49 + 128) = v50;
    v55 = v68;
    v56 = v69;
    *(v49 + 16) = xmmword_252E3C290;
    *(v49 + 32) = v55;
    *(v49 + 176) = v77;
    *(v49 + 48) = v56;
    *(v49 + 64) = v52;
    sub_25297DE08(&v68, __dst);
    v57 = sub_2529FE8B4(v49);
    swift_setDeallocating();
    sub_2529AEC80(v49 + 32);
    swift_deallocClassInstance();
    sub_252E1E320(v57);

    goto LABEL_47;
  }

  if (v28)
  {
LABEL_47:
    sub_252E1F258(&unk_2864A7778);
    swift_retain_n();

    sub_252E1E4F8(__src);

    memcpy(__dst, __src, 0x1F8uLL);
    GEOLocationCoordinate2DMake();
    v45 = a5;
    return memcpy(v45, __dst, 0x1F8uLL);
  }

  sub_25293DEE0(__dst);
  v45 = a5;
  return memcpy(v45, __dst, 0x1F8uLL);
}

uint64_t sub_252D0EC70(void *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25296BC70;

  return sub_252D0D66C(a1);
}

BOOL sub_252D0ED04(uint64_t a1)
{
  v2 = *(a1 + 280);
  v3 = *(a1 + 288);
  v4 = *(a1 + 289);
  v5 = *(a1 + 386);
  v6 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v6 + 288), __dst);

  v7 = __dst[3];
  v8 = __dst[4];
  __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
  v9 = (*(v8 + 152))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1(__dst);
  if (v9 & 1) == 0 || (v4)
  {
    return 0;
  }

  if ((v3 & 1) != 0 && v2 == 4)
  {
    v11 = 0;
  }

  else
  {
    v11 = v3 ^ 1 | (v2 < 5);
    if (((v3 ^ 1) & 1) == 0 && !v2)
    {
      memcpy(__dst, a1, 0x118uLL);
      __dst[35] = 0;
      v21 = v3;
      v22 = v4;
      v14 = *(a1 + 338);
      v25 = *(a1 + 322);
      v26 = v14;
      v15 = *(a1 + 370);
      v27 = *(a1 + 354);
      v28 = v15;
      v16 = *(a1 + 306);
      v23 = *(a1 + 290);
      v24 = v16;
      v29 = v5;
      v17 = *(a1 + 467);
      v34 = *(a1 + 451);
      v35 = v17;
      *v36 = *(a1 + 483);
      v18 = *(a1 + 403);
      v30 = *(a1 + 387);
      v31 = v18;
      v19 = *(a1 + 435);
      v32 = *(a1 + 419);
      v33 = v19;
      *&v36[13] = *(a1 + 496);
      if (!sub_252A15404())
      {
        return 1;
      }
    }
  }

  result = 0;
  if (v11 & 1) == 0 && (v5)
  {
    sub_252B680FC(0);
    v12 = sub_252B63B0C();

    v13 = *(v12 + 16);

    return v13 != 0;
  }

  return result;
}

uint64_t sub_252D0EEAC()
{
  v0 = sub_252E36324();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v33 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - v10;
  v12 = *(sub_252D103A8() + 24);

  v51 = MEMORY[0x277D84F90];
  if (v12 >> 62)
  {
    goto LABEL_64;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v15 = 0;
    v37 = v12 & 0xFFFFFFFFFFFFFF8;
    v38 = v12 & 0xC000000000000001;
    v35 = v12;
    v36 = v12 + 32;
    v48 = (v1 + 48);
    v49 = 0;
    v45 = (v1 + 56);
    v46 = v7;
    v41 = (v1 + 32);
    v42 = (v1 + 8);
    v43 = v11;
    v33 = v3;
    v34 = v13;
    while (1)
    {
      if (v38)
      {
        v16 = MEMORY[0x2530ADF00](v15, v12);
        v17 = __OFADD__(v15, 1);
        v18 = v15 + 1;
        if (v17)
        {
          goto LABEL_62;
        }
      }

      else
      {
        if (v15 >= *(v37 + 16))
        {
          goto LABEL_63;
        }

        v17 = __OFADD__(v15, 1);
        v18 = v15 + 1;
        if (v17)
        {
          goto LABEL_62;
        }
      }

      v40 = v18;
      v39 = v16;
      v1 = *(v16 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
      v50[0] = v14;
      if (!(v1 >> 62))
      {
        v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v7)
        {
          break;
        }

        goto LABEL_26;
      }

      v7 = sub_252E378C4();
      if (v7)
      {
        break;
      }

LABEL_26:
      v7 = v46;
      if (v14 < 0 || (v14 & 0x4000000000000000) != 0)
      {
        v47 = sub_252E378C4();
      }

      else
      {
        v47 = *(v14 + 16);
      }

      v1 = 0;
      do
      {
        if (v47 == v1)
        {

          goto LABEL_6;
        }

        if ((v14 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x2530ADF00](v1, v14);
          v27 = v23;
          if (__OFADD__(v1, 1))
          {
            goto LABEL_60;
          }
        }

        else
        {
          if (v1 >= *(v14 + 16))
          {
            goto LABEL_61;
          }

          v27 = *(v14 + 8 * v1 + 32);

          if (__OFADD__(v1, 1))
          {
            goto LABEL_60;
          }
        }

        v24 = *(v27 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
        if (!v24)
        {
          goto LABEL_31;
        }

        sub_252956C1C(v24 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v7);
        v28 = *v48;
        if ((*v48)(v7, 1, v0) == 1)
        {
          sub_252938BBC(v7);
          if (!*(v24 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue))
          {
            v29 = v44;
            sub_252E37024();

            (*v45)(v29, 0, 1, v0);
            goto LABEL_45;
          }

          v29 = v44;
          sub_25296EBC4(v44);
        }

        else
        {
          v30 = *v41;
          (*v41)(v3, v7, v0);
          v29 = v44;
          v30(v44, v3, v0);
          (*v45)(v29, 0, 1, v0);
        }

        if (v28(v29, 1, v0) == 1)
        {
          v23 = sub_252938BBC(v29);
          v24 = 0;
LABEL_31:
          v25 = 0;
          goto LABEL_32;
        }

LABEL_45:
        v24 = sub_252E36304();
        v25 = v31;
        v23 = (*v42)(v29, v0);
LABEL_32:
        v12 = &v33;
        v50[0] = v24;
        v50[1] = v25;
        MEMORY[0x28223BE20](v23);
        *(&v33 - 2) = v50;
        v26 = v49;
        v11 = sub_2529EDB18(sub_252B68C50, (&v33 - 4), &unk_2864A3470);
        v49 = v26;

        ++v1;
        v7 = v46;
      }

      while ((v11 & 1) != 0);

      sub_252E37A94();
      v1 = *(v51 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
LABEL_6:
      v11 = v43;
      v12 = v35;
      v15 = v40;
      v14 = MEMORY[0x277D84F90];
      if (v40 == v34)
      {
        v14 = v51;
        goto LABEL_57;
      }
    }

    v19 = v0;
    v20 = 0;
    v3 = (v1 & 0xC000000000000001);
    v12 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v3)
      {
        v21 = MEMORY[0x2530ADF00](v20, v1);
        v0 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v20 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_59;
        }

        v21 = *(v1 + 8 * v20 + 32);

        v0 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          v13 = sub_252E378C4();
          goto LABEL_3;
        }
      }

      v22 = *(v21 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
      if (v22)
      {
        sub_252956C1C(v22 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v11);
        if ((*v48)(v11, 1, v19) != 1)
        {
          sub_252938BBC(v11);
          sub_252E37A94();
          sub_252E37AC4();
          v11 = v43;
          sub_252E37AD4();
          sub_252E37AA4();
          goto LABEL_15;
        }
      }

      else
      {
        (*v45)(v11, 1, 1, v19);
      }

      sub_252938BBC(v11);

LABEL_15:
      ++v20;
      if (v0 == v7)
      {
        v14 = v50[0];
        v0 = v19;
        v3 = v33;
        goto LABEL_26;
      }
    }
  }

LABEL_57:

  type metadata accessor for HomeAutomationAirQualityEntityResponses();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v14;
  return result;
}

uint64_t sub_252D0F5B8()
{
  v0 = sub_252E36324();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v33 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - v10;
  v12 = *(sub_252D103A8() + 24);

  v51 = MEMORY[0x277D84F90];
  if (v12 >> 62)
  {
    goto LABEL_64;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v15 = 0;
    v37 = v12 & 0xFFFFFFFFFFFFFF8;
    v38 = v12 & 0xC000000000000001;
    v35 = v12;
    v36 = v12 + 32;
    v48 = (v1 + 48);
    v49 = 0;
    v45 = (v1 + 56);
    v46 = v7;
    v41 = (v1 + 32);
    v42 = (v1 + 8);
    v43 = v11;
    v33 = v3;
    v34 = v13;
    while (1)
    {
      if (v38)
      {
        v16 = MEMORY[0x2530ADF00](v15, v12);
        v17 = __OFADD__(v15, 1);
        v18 = v15 + 1;
        if (v17)
        {
          goto LABEL_62;
        }
      }

      else
      {
        if (v15 >= *(v37 + 16))
        {
          goto LABEL_63;
        }

        v17 = __OFADD__(v15, 1);
        v18 = v15 + 1;
        if (v17)
        {
          goto LABEL_62;
        }
      }

      v40 = v18;
      v39 = v16;
      v1 = *(v16 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
      v50[0] = v14;
      if (!(v1 >> 62))
      {
        v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v7)
        {
          break;
        }

        goto LABEL_26;
      }

      v7 = sub_252E378C4();
      if (v7)
      {
        break;
      }

LABEL_26:
      v7 = v46;
      if (v14 < 0 || (v14 & 0x4000000000000000) != 0)
      {
        v47 = sub_252E378C4();
      }

      else
      {
        v47 = *(v14 + 16);
      }

      v1 = 0;
      do
      {
        if (v47 == v1)
        {

          goto LABEL_6;
        }

        if ((v14 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x2530ADF00](v1, v14);
          v27 = v23;
          if (__OFADD__(v1, 1))
          {
            goto LABEL_60;
          }
        }

        else
        {
          if (v1 >= *(v14 + 16))
          {
            goto LABEL_61;
          }

          v27 = *(v14 + 8 * v1 + 32);

          if (__OFADD__(v1, 1))
          {
            goto LABEL_60;
          }
        }

        v24 = *(v27 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
        if (!v24)
        {
          goto LABEL_31;
        }

        sub_252956C1C(v24 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v7);
        v28 = *v48;
        if ((*v48)(v7, 1, v0) == 1)
        {
          sub_252938BBC(v7);
          if (!*(v24 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue))
          {
            v29 = v44;
            sub_252E37024();

            (*v45)(v29, 0, 1, v0);
            goto LABEL_45;
          }

          v29 = v44;
          sub_25296EBC4(v44);
        }

        else
        {
          v30 = *v41;
          (*v41)(v3, v7, v0);
          v29 = v44;
          v30(v44, v3, v0);
          (*v45)(v29, 0, 1, v0);
        }

        if (v28(v29, 1, v0) == 1)
        {
          v23 = sub_252938BBC(v29);
          v24 = 0;
LABEL_31:
          v25 = 0;
          goto LABEL_32;
        }

LABEL_45:
        v24 = sub_252E36304();
        v25 = v31;
        v23 = (*v42)(v29, v0);
LABEL_32:
        v12 = &v33;
        v50[0] = v24;
        v50[1] = v25;
        MEMORY[0x28223BE20](v23);
        *(&v33 - 2) = v50;
        v26 = v49;
        v11 = sub_2529EDB18(sub_252D10E08, (&v33 - 4), &unk_2864A3470);
        v49 = v26;

        ++v1;
        v7 = v46;
      }

      while ((v11 & 1) == 0);

      sub_252E37A94();
      v1 = *(v51 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
LABEL_6:
      v11 = v43;
      v12 = v35;
      v15 = v40;
      v14 = MEMORY[0x277D84F90];
      if (v40 == v34)
      {
        v14 = v51;
        goto LABEL_57;
      }
    }

    v19 = v0;
    v20 = 0;
    v3 = (v1 & 0xC000000000000001);
    v12 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v3)
      {
        v21 = MEMORY[0x2530ADF00](v20, v1);
        v0 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v20 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_59;
        }

        v21 = *(v1 + 8 * v20 + 32);

        v0 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          v13 = sub_252E378C4();
          goto LABEL_3;
        }
      }

      v22 = *(v21 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
      if (v22)
      {
        sub_252956C1C(v22 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v11);
        if ((*v48)(v11, 1, v19) != 1)
        {
          sub_252938BBC(v11);
          sub_252E37A94();
          sub_252E37AC4();
          v11 = v43;
          sub_252E37AD4();
          sub_252E37AA4();
          goto LABEL_15;
        }
      }

      else
      {
        (*v45)(v11, 1, 1, v19);
      }

      sub_252938BBC(v11);

LABEL_15:
      ++v20;
      if (v0 == v7)
      {
        v14 = v50[0];
        v0 = v19;
        v3 = v33;
        goto LABEL_26;
      }
    }
  }

LABEL_57:

  type metadata accessor for HomeAutomationAirQualityEntityResponses();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v14;
  return result;
}

uint64_t sub_252D0FCC4()
{
  v0 = *(sub_252D108D8() + 24);

  v1 = sub_252997898(v0);

  if (v1 >> 62)
  {
LABEL_25:
    v2 = sub_252E378C4();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_26:
    v4 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_26;
  }

LABEL_3:
  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  do
  {
    v5 = v3;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2530ADF00](v5, v1);
        v3 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v3 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }
      }

      v7 = *(v6 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
      if (v7)
      {
        v8 = *(v7 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
        if (v8)
        {
          break;
        }
      }

LABEL_6:
      ++v5;
      if (v3 == v2)
      {
        goto LABEL_27;
      }
    }

    v9 = *(v8 + 24);
    v10 = *(v8 + 32);

    if (v10)
    {
      goto LABEL_6;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_2529F7D44(0, *(v4 + 2) + 1, 1, v4);
    }

    v12 = *(v4 + 2);
    v13 = *(v4 + 3);
    v14 = v12 + 1;
    if (v12 >= v13 >> 1)
    {
      v15 = v4;
      v16 = *(v4 + 2);
      v17 = sub_2529F7D44((v13 > 1), v12 + 1, 1, v15);
      v12 = v16;
      v4 = v17;
    }

    *(v4 + 2) = v14;
    *&v4[8 * v12 + 32] = v9;
  }

  while (v3 != v2);
LABEL_27:

  if (*(v4 + 2))
  {
    v18 = sub_252987D34(v4);
  }

  else
  {

    return 0;
  }

  return v18;
}

uint64_t sub_252D0FEDC()
{
  result = sub_252D0EEAC();
  if (!result)
  {
    return result;
  }

  v1 = *(result + 24);
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v2)
    {
      goto LABEL_4;
    }

    return 0;
  }

  v5 = sub_252E378C4();

  if (!v5)
  {
    return 0;
  }

LABEL_4:
  result = sub_252D0F5B8();
  if (result)
  {
    v3 = *(result + 24);
    if (v3 >> 62)
    {
      v4 = sub_252E378C4();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v4 == 0;
  }

  return result;
}

uint64_t sub_252D0FFA0()
{
  result = sub_252D0EEAC();
  if (result)
  {
    v1 = *(result + 24);
    if (v1 >> 62)
    {
      v3 = sub_252E378C4();

      if (v3)
      {
        return 0;
      }
    }

    else
    {
      v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v2)
      {
        return 0;
      }
    }

    result = sub_252D0F5B8();
    if (result)
    {
      v4 = *(result + 24);
      if (v4 >> 62)
      {
        v5 = sub_252E378C4();
      }

      else
      {
        v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      return v5 != 0;
    }
  }

  return result;
}

uint64_t sub_252D10064@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  sub_252D103A8();
  v5 = sub_252998BC8();

  v17 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
LABEL_16:
    v6 = sub_252E378C4();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v15 = a1;
      v7 = 0;
      v16 = v4;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x2530ADF00](v7, v5);
          a1 = (v7 + 1);
          if (__OFADD__(v7, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v10 = v17;
            a1 = v15;
            goto LABEL_18;
          }
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v8 = *(v5 + 8 * v7 + 32);

          a1 = (v7 + 1);
          if (__OFADD__(v7, 1))
          {
            goto LABEL_13;
          }
        }

        sub_252956C1C(v8 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v4);
        v9 = sub_252E36324();
        if ((*(*(v9 - 8) + 48))(v4, 1, v9) == 1)
        {

          sub_252938BBC(v4);
        }

        else
        {
          sub_252938BBC(v4);
          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
          v4 = v16;
        }

        ++v7;
        if (a1 == v6)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_18:

  if (v10 < 0 || (v10 & 0x4000000000000000) != 0)
  {
    if (sub_252E378C4() == 1)
    {
      result = sub_252E378C4();
      if (!result)
      {

        v12 = sub_252E36324();
        return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
      }

      goto LABEL_21;
    }

LABEL_28:
    v13 = sub_252E36324();
    (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }

  if (*(v10 + 16) != 1)
  {
    goto LABEL_28;
  }

LABEL_21:
  if ((v10 & 0xC000000000000001) != 0)
  {
    MEMORY[0x2530ADF00](0, v10);
  }

  else
  {
    if (!*(v10 + 16))
    {
      __break(1u);
      return result;
    }
  }

  sub_252BD646C(a1);
}