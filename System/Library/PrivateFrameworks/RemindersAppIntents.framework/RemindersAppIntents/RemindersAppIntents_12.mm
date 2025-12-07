unint64_t sub_261C374EC()
{
  result = qword_27FEDD1B8;
  if (!qword_27FEDD1B8)
  {
    type metadata accessor for ColorEntityRepresentation(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD1B8);
  }

  return result;
}

id REMRecurrenceRule.init(fromRule:)(uint64_t a1)
{
  v93 = a1;
  v2 = sub_261CFD944();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_261CFD974();
  v81 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v94 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261CFDA34();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261CFDA44();
  v11 = (*(v8 + 88))(v10, v7);
  v12 = *MEMORY[0x277CC98D0];
  v91 = v3;
  v92 = v2;
  v89 = v5;
  v90 = v1;
  if (v11 == v12)
  {
    goto LABEL_2;
  }

  if (v11 != *MEMORY[0x277CC98B0])
  {
    if (v11 != *MEMORY[0x277CC98A8])
    {
      if (v11 == *MEMORY[0x277CC98B8])
      {
        v13 = 1;
        goto LABEL_5;
      }

      if (v11 == *MEMORY[0x277CC98C8])
      {
        v13 = 2;
        goto LABEL_5;
      }

      if (v11 == *MEMORY[0x277CC98C0])
      {
        v13 = 3;
        goto LABEL_5;
      }

      (*(v8 + 8))(v10, v7);
    }

LABEL_2:
    v88 = 0;
    goto LABEL_6;
  }

  v13 = 4;
LABEL_5:
  v88 = v13;
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD1C0, &qword_261D0DAF8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD1C8, &qword_261D0DB00);
  v15 = *(*(v14 - 8) + 72);
  v16 = (*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_261D083A0;
  v18 = v17 + v16;
  v19 = *(v14 + 48);
  v20 = *MEMORY[0x277CC96E0];
  v21 = sub_261CFD864();
  v22 = *(*(v21 - 8) + 104);
  v22(v18, v20, v21);
  *(v18 + v19) = 1;
  v23 = *(v14 + 48);
  v22(v18 + v15, *MEMORY[0x277CC96D8], v21);
  *(v18 + v15 + v23) = 2;
  v24 = *(v14 + 48);
  v22(v18 + 2 * v15, *MEMORY[0x277CC96E8], v21);
  *(v18 + 2 * v15 + v24) = 3;
  v25 = *(v14 + 48);
  v22(v18 + 3 * v15, *MEMORY[0x277CC9700], v21);
  *(v18 + 3 * v15 + v25) = 4;
  v26 = *(v14 + 48);
  v22(v18 + 4 * v15, *MEMORY[0x277CC96F8], v21);
  *(v18 + 4 * v15 + v26) = 5;
  v27 = *(v14 + 48);
  v22(v18 + 5 * v15, *MEMORY[0x277CC96D0], v21);
  *(v18 + 5 * v15 + v27) = 6;
  v28 = v18 + 6 * v15;
  v29 = *(v14 + 48);
  v22(v28, *MEMORY[0x277CC96F0], v21);
  *(v28 + v29) = 7;
  v30 = sub_261C3A008(v17);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v31 = sub_261CFDA24();
  if (*(v31 + 16))
  {
    v32 = v31;
    sub_261CFD104();
    v33 = sub_261C3B410(v32, v30);
  }

  else
  {

    v33 = 0;
  }

  v34 = objc_opt_self();
  v87 = [v34 newObjectID];
  v86 = [v34 newObjectID];
  v85 = [v34 newObjectID];
  v84 = sub_261CFDA14();
  if (v33)
  {
    sub_261B05020(0, &qword_27FEDD1D8, 0x277D44718);
    v83 = sub_261CFFC54();
  }

  else
  {
    v83 = 0;
  }

  v35 = sub_261CFD8E4();
  v36 = *(v35 + 16);
  v37 = MEMORY[0x277D84F90];
  v38 = 0x277CCA000uLL;
  v39 = &unk_279AFB000;
  if (v36)
  {
    v96 = MEMORY[0x277D84F90];
    v40 = 32;
    do
    {
      if ([objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_])
      {
        MEMORY[0x26671C310]();
        if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_261CFFC84();
        }

        sub_261CFFCB4();
      }

      v40 += 8;
      --v36;
    }

    while (v36);

    sub_261B05020(0, &qword_27FEDD1D0, 0x277CCABB0);
    v82 = sub_261CFFC54();
  }

  else
  {

    v82 = 0;
  }

  v41 = sub_261CFD9B4();
  v42 = *(v41 + 16);
  if (v42)
  {
    v96 = v37;
    v43 = v81 + 16;
    v44 = *(v81 + 16);
    v45 = (*(v81 + 80) + 32) & ~*(v81 + 80);
    v81 = v41;
    v46 = v41 + v45;
    v47 = *(v43 + 56);
    v48 = (v43 - 8);
    do
    {
      v50 = v94;
      v49 = v95;
      v44(v94, v46, v95);
      v51 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v52 = (*v48)(v50, v49);
      if (v51)
      {
        MEMORY[0x26671C310](v52);
        if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_261CFFC84();
        }

        sub_261CFFCB4();
      }

      v46 += v47;
      --v42;
    }

    while (v42);

    sub_261B05020(0, &qword_27FEDD1D0, 0x277CCABB0);
    v95 = sub_261CFFC54();

    v38 = 0x277CCA000;
    v39 = &unk_279AFB000;
    v37 = MEMORY[0x277D84F90];
  }

  else
  {

    v95 = 0;
  }

  v53 = sub_261CFD9A4();
  v54 = *(v53 + 16);
  if (v54)
  {
    v96 = v37;
    v55 = 32;
    do
    {
      if ([objc_allocWithZone(*(v38 + 2992)) v39[248]])
      {
        MEMORY[0x26671C310]();
        if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_261CFFC84();
        }

        sub_261CFFCB4();
      }

      v55 += 8;
      --v54;
    }

    while (v54);

    sub_261B05020(0, &qword_27FEDD1D0, 0x277CCABB0);
    v94 = sub_261CFFC54();
  }

  else
  {

    v94 = 0;
  }

  v56 = sub_261CFD8D4();
  v57 = *(v56 + 16);
  if (v57)
  {
    v96 = v37;
    v58 = 32;
    do
    {
      if ([objc_allocWithZone(*(v38 + 2992)) v39[248]])
      {
        MEMORY[0x26671C310]();
        if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_261CFFC84();
        }

        sub_261CFFCB4();
      }

      v58 += 8;
      --v57;
    }

    while (v57);

    sub_261B05020(0, &qword_27FEDD1D0, 0x277CCABB0);
    v59 = sub_261CFFC54();
  }

  else
  {

    v59 = 0;
  }

  v60 = sub_261CFD8C4();
  v61 = *(v60 + 16);
  if (v61)
  {
    v96 = v37;
    v62 = 32;
    do
    {
      if ([objc_allocWithZone(*(v38 + 2992)) v39[248]])
      {
        MEMORY[0x26671C310]();
        if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_261CFFC84();
        }

        sub_261CFFCB4();
      }

      v62 += 8;
      --v61;
    }

    while (v61);

    sub_261B05020(0, &qword_27FEDD1D0, 0x277CCABB0);
    v61 = sub_261CFFC54();
  }

  v63 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v64 = v89;
  sub_261CFD954();
  v65 = sub_261C4D198();
  (*(v91 + 8))(v64, v92);
  v79 = v61;
  v78 = v59;
  v66 = v94;
  v67 = v59;
  v68 = v95;
  v69 = v82;
  v70 = v83;
  v71 = v63;
  v72 = v87;
  v73 = v61;
  v75 = v85;
  v74 = v86;
  v92 = [v71 initRecurrenceRuleWithObjectID:v87 accountID:v86 reminderID:v85 frequency:v88 interval:v84 firstDayOfTheWeek:0 daysOfTheWeek:v83 daysOfTheMonth:v82 monthsOfTheYear:v95 weeksOfTheYear:v94 daysOfTheYear:v78 setPositions:v79 end:v65];

  v76 = sub_261CFDA54();
  (*(*(v76 - 8) + 8))(v93, v76);
  return v92;
}

uint64_t REMRecurrenceRule.foundationTypeRecurrenceRule.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v135 = a1;
  v133 = sub_261CFDA64();
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v134 = &v122 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_261CFD8B4();
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v131 = &v122 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_261CFD864();
  v149 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v156 = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_261CFD9E4();
  v152 = *(v155 - 8);
  v6 = MEMORY[0x28223BE20](v155);
  v151 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v154 = &v122 - v8;
  v153 = sub_261CFD974();
  v9 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v158 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD1E0, &qword_261D0DB08);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v122 - v12;
  v14 = sub_261CFD944();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v139 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_261CFDA34();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v122 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_261CFDA84();
  MEMORY[0x28223BE20](v21 - 8);
  v128 = &v122 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261CFDA74();
  v23 = [v2 frequency];
  if (v23 >= 5)
  {
    goto LABEL_146;
  }

  v24 = **(&unk_279AFA310 + v23);
  v25 = *(v18 + 104);
  v145 = v20;
  v25(v20, v24, v17);
  v26 = [v2 interval];
  v27 = [v2 recurrenceEnd];
  if (v27)
  {
    v28 = v27;
    REMRecurrenceEnd.foundationtypeEnd.getter();

    (*(v15 + 56))(v13, 0, 1, v14);
    (*(v15 + 32))(v139, v13, v14);
  }

  else
  {
    (*(v15 + 56))(v13, 1, 1, v14);
    sub_261CFD924();
    if ((*(v15 + 48))(v13, 1, v14) != 1)
    {
      sub_261C3B8CC(v13);
    }
  }

  v29 = [v2 monthsOfTheYear];
  v143 = v2;
  v127 = v26;
  if (v29)
  {
    v30 = v29;
    sub_261B05020(0, &qword_27FEDD1D0, 0x277CCABB0);
    v31 = sub_261CFFC64();

    if (v31 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_261D00274())
    {
      v33 = 0;
      v34 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v31 & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x26671CA10](v33, v31);
        }

        else
        {
          if (v33 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v35 = *(v31 + 8 * v33 + 32);
        }

        v36 = v35;
        v37 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        [v35 integerValue];
        sub_261CFD984();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_261B41824(0, v34[2] + 1, 1, v34);
        }

        v39 = v34[2];
        v38 = v34[3];
        v40 = v34;
        if (v39 >= v38 >> 1)
        {
          v40 = sub_261B41824((v38 > 1), v39 + 1, 1, v34);
        }

        v40[2] = v39 + 1;
        v34 = v40;
        (*(v9 + 32))(v40 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v39, v158, v153);
        ++v33;
        if (v37 == i)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

    v34 = MEMORY[0x277D84F90];
LABEL_26:
    v126 = v34;

    v2 = v143;
  }

  else
  {
    v126 = MEMORY[0x277D84F90];
  }

  v41 = [v2 daysOfTheYear];
  if (v41)
  {
    v42 = v41;
    sub_261B05020(0, &qword_27FEDD1D0, 0x277CCABB0);
    v43 = sub_261CFFC64();

    if (v43 >> 62)
    {
      goto LABEL_45;
    }

    for (j = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_261D00274())
    {
      v45 = 0;
      v46 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v43 & 0xC000000000000001) != 0)
        {
          v47 = MEMORY[0x26671CA10](v45, v43);
        }

        else
        {
          if (v45 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          v47 = *(v43 + 8 * v45 + 32);
        }

        v48 = v47;
        v49 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          break;
        }

        v50 = [v47 integerValue];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_261B41720(0, *(v46 + 2) + 1, 1, v46);
        }

        v52 = *(v46 + 2);
        v51 = *(v46 + 3);
        v53 = v46;
        if (v52 >= v51 >> 1)
        {
          v53 = sub_261B41720((v51 > 1), v52 + 1, 1, v46);
        }

        *(v53 + 2) = v52 + 1;
        v46 = v53;
        *&v53[8 * v52 + 32] = v50;
        ++v45;
        if (v49 == j)
        {
          goto LABEL_47;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      ;
    }

    v46 = MEMORY[0x277D84F90];
LABEL_47:
    v125 = v46;

    v2 = v143;
  }

  else
  {
    v125 = MEMORY[0x277D84F90];
  }

  v54 = [v2 daysOfTheMonth];
  if (v54)
  {
    v55 = v54;
    sub_261B05020(0, &qword_27FEDD1D0, 0x277CCABB0);
    v56 = sub_261CFFC64();

    if (v56 >> 62)
    {
      goto LABEL_66;
    }

    for (k = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10); k; k = sub_261D00274())
    {
      v58 = 0;
      v59 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v56 & 0xC000000000000001) != 0)
        {
          v60 = MEMORY[0x26671CA10](v58, v56);
        }

        else
        {
          if (v58 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_65;
          }

          v60 = *(v56 + 8 * v58 + 32);
        }

        v61 = v60;
        v62 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
          break;
        }

        v63 = [v60 integerValue];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = sub_261B41720(0, *(v59 + 2) + 1, 1, v59);
        }

        v65 = *(v59 + 2);
        v64 = *(v59 + 3);
        v66 = v59;
        if (v65 >= v64 >> 1)
        {
          v66 = sub_261B41720((v64 > 1), v65 + 1, 1, v59);
        }

        *(v66 + 2) = v65 + 1;
        v59 = v66;
        *&v66[8 * v65 + 32] = v63;
        ++v58;
        if (v62 == k)
        {
          goto LABEL_68;
        }
      }

      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      ;
    }

    v59 = MEMORY[0x277D84F90];
LABEL_68:
    v124 = v59;

    v2 = v143;
  }

  else
  {
    v124 = MEMORY[0x277D84F90];
  }

  v67 = [v2 weeksOfTheYear];
  if (v67)
  {
    v68 = v67;
    sub_261B05020(0, &qword_27FEDD1D0, 0x277CCABB0);
    v69 = sub_261CFFC64();

    if (v69 >> 62)
    {
      goto LABEL_87;
    }

    for (m = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10); m; m = sub_261D00274())
    {
      v71 = 0;
      v72 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v69 & 0xC000000000000001) != 0)
        {
          v73 = MEMORY[0x26671CA10](v71, v69);
        }

        else
        {
          if (v71 >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_86;
          }

          v73 = *(v69 + 8 * v71 + 32);
        }

        v74 = v73;
        v75 = v71 + 1;
        if (__OFADD__(v71, 1))
        {
          break;
        }

        v76 = [v73 integerValue];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = sub_261B41720(0, *(v72 + 2) + 1, 1, v72);
        }

        v78 = *(v72 + 2);
        v77 = *(v72 + 3);
        v79 = v72;
        if (v78 >= v77 >> 1)
        {
          v79 = sub_261B41720((v77 > 1), v78 + 1, 1, v72);
        }

        *(v79 + 2) = v78 + 1;
        v72 = v79;
        *&v79[8 * v78 + 32] = v76;
        ++v71;
        if (v75 == m)
        {
          goto LABEL_89;
        }
      }

      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      ;
    }

    v72 = MEMORY[0x277D84F90];
LABEL_89:
    v123 = v72;

    v2 = v143;
  }

  else
  {
    v123 = MEMORY[0x277D84F90];
  }

  v80 = [v2 daysOfTheWeek];
  if (v80)
  {
    v81 = v80;
    sub_261B05020(0, &qword_27FEDD1D8, 0x277D44718);
    v82 = sub_261CFFC64();

    if (v82 >> 62)
    {
      goto LABEL_121;
    }

    for (n = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10); n; n = sub_261D00274())
    {
      v84 = 0;
      v158 = (v82 & 0xC000000000000001);
      v153 = v82 & 0xFFFFFFFFFFFFFF8;
      v146 = *MEMORY[0x277CC96E0];
      v150 = (v149 + 13);
      v138 = *MEMORY[0x277CC96F0];
      v142 = *MEMORY[0x277CC96D0];
      v137 = *MEMORY[0x277CC96F8];
      v141 = *MEMORY[0x277CC9700];
      v136 = *MEMORY[0x277CC96E8];
      v148 = (v152 + 104);
      v149 += 4;
      v140 = *MEMORY[0x277CC96D8];
      v85 = (v152 + 32);
      v147 = *MEMORY[0x277CC9890];
      v86 = &unk_279AFB000;
      v144 = *MEMORY[0x277CC9898];
      v87 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v158)
        {
          v88 = MEMORY[0x26671CA10](v84, v82);
        }

        else
        {
          if (v84 >= *(v153 + 16))
          {
            goto LABEL_120;
          }

          v88 = *(v82 + 8 * v84 + 32);
        }

        v89 = v88;
        v90 = v84 + 1;
        if (__OFADD__(v84, 1))
        {
          break;
        }

        v91 = [v88 dayOfTheWeek];
        type metadata accessor for REMWeekday(0);
        if (v91 <= 3)
        {
          v92 = v146;
          if (v91 != 1)
          {
            v92 = v140;
            if (v91 != 2)
            {
              v92 = v136;
              if (v91 != 3)
              {
LABEL_144:
                for (ii = v91; ; ii = v121)
                {
                  v23 = sub_261D00634();
                  __break(1u);
LABEL_146:
                  v121 = v23;
                  type metadata accessor for REMRecurrenceFrequency(0);
                }
              }
            }
          }
        }

        else if (v91 > 5)
        {
          v92 = v142;
          if (v91 != 6)
          {
            v92 = v138;
            if (v91 != 7)
            {
              goto LABEL_144;
            }
          }
        }

        else
        {
          v92 = v141;
          if (v91 != 4)
          {
            v92 = v137;
          }
        }

        (*v150)(v156, v92, v157);
        if ([v89 v86[252]])
        {
          v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD1E8, &qword_261D0DB10);
          v94 = v82;
          v95 = v151;
          v96 = &v151[*(v93 + 48)];
          v97 = [v89 v86[252]];

          v98 = v95;
          v82 = v94;
          *v98 = v97;
          v99 = v147;
        }

        else
        {

          v98 = v151;
          v96 = v151;
          v99 = v144;
        }

        (*v149)(v96, v156, v157);
        v100 = v155;
        (*v148)(v98, v99, v155);
        v101 = *v85;
        (*v85)(v154, v98, v100);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v87 = sub_261B416F8(0, *(v87 + 2) + 1, 1, v87);
        }

        v103 = *(v87 + 2);
        v102 = *(v87 + 3);
        if (v103 >= v102 >> 1)
        {
          v87 = sub_261B416F8((v102 > 1), v103 + 1, 1, v87);
        }

        *(v87 + 2) = v103 + 1;
        v101(&v87[((*(v152 + 80) + 32) & ~*(v152 + 80)) + *(v152 + 72) * v103], v154, v155);
        ++v84;
        v86 = &unk_279AFB000;
        if (v90 == n)
        {
          goto LABEL_122;
        }
      }

      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      ;
    }

LABEL_122:

    v2 = v143;
  }

  v104 = [v2 setPositions];
  if (v104)
  {
    v105 = v104;
    sub_261B05020(0, &qword_27FEDD1D0, 0x277CCABB0);
    v106 = sub_261CFFC64();

    if (v106 >> 62)
    {
      goto LABEL_141;
    }

    for (jj = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10); jj; jj = sub_261D00274())
    {
      v108 = 0;
      v158 = (v106 & 0xC000000000000001);
      v109 = v106 & 0xFFFFFFFFFFFFFF8;
      v110 = MEMORY[0x277D84F90];
      v111 = v106;
      while (1)
      {
        if (v158)
        {
          v112 = MEMORY[0x26671CA10](v108, v106);
        }

        else
        {
          if (v108 >= *(v109 + 16))
          {
            goto LABEL_140;
          }

          v112 = *(v106 + 8 * v108 + 32);
        }

        v113 = v112;
        v114 = v108 + 1;
        if (__OFADD__(v108, 1))
        {
          break;
        }

        v115 = [v112 integerValue];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v110 = sub_261B41720(0, *(v110 + 2) + 1, 1, v110);
        }

        v117 = *(v110 + 2);
        v116 = *(v110 + 3);
        if (v117 >= v116 >> 1)
        {
          v110 = sub_261B41720((v116 > 1), v117 + 1, 1, v110);
        }

        *(v110 + 2) = v117 + 1;
        *&v110[8 * v117 + 32] = v115;
        ++v108;
        v106 = v111;
        if (v114 == jj)
        {
          goto LABEL_142;
        }
      }

      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      ;
    }

LABEL_142:
  }

  (*(v129 + 104))(v131, *MEMORY[0x277CC9868], v130);
  (*(v132 + 104))(v134, *MEMORY[0x277CC9900], v133);
  v118 = v135;
  sub_261CFDA04();
  v119 = sub_261CFDA54();
  return (*(*(v119 - 8) + 56))(v118, 0, 1, v119);
}

uint64_t REMRecurrenceFrequency.foundationTypeFrequency.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 >= 5)
  {
    type metadata accessor for REMRecurrenceFrequency(0);
    result = sub_261D00634();
    __break(1u);
  }

  else
  {
    v3 = **(&unk_279AFA310 + a1);
    v4 = sub_261CFDA34();
    v5 = *(*(v4 - 8) + 104);

    return v5(a2, v3, v4);
  }

  return result;
}

uint64_t REMRecurrenceEnd.foundationtypeEnd.getter()
{
  v1 = v0;
  v2 = sub_261CFD7E4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = [v1 endDate];
  if (v9)
  {
    v10 = v9;
    sub_261CFD7C4();

    (*(v3 + 32))(v8, v6, v2);
    sub_261CFD934();
    return (*(v3 + 8))(v8, v2);
  }

  v12 = [v1 occurrenceCount];
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return MEMORY[0x28211E0C8]();
  }

  if (v12)
  {

    return MEMORY[0x28211E0C8]();
  }

  return sub_261CFD924();
}

uint64_t REMRecurrenceDayOfWeek.foundationtypeWeekday.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_261CFD864();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v2 dayOfTheWeek];
  if ((v8 - 1) >= 7)
  {
    v14 = v8;
    type metadata accessor for REMWeekday(0);
    v15[1] = v14;
    result = sub_261D00634();
    __break(1u);
  }

  else
  {
    (*(v5 + 104))(v7, **(&unk_279AFA338 + (v8 - 1)), v4);
    if ([v2 weekNumber])
    {
      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD1E8, &qword_261D0DB10) + 48);
      *a1 = [v2 weekNumber];
      (*(v5 + 32))(&a1[v9], v7, v4);
      v10 = MEMORY[0x277CC9890];
    }

    else
    {
      (*(v5 + 32))(a1, v7, v4);
      v10 = MEMORY[0x277CC9898];
    }

    v11 = *v10;
    v12 = sub_261CFD9E4();
    return (*(*(v12 - 8) + 104))(a1, v11, v12);
  }

  return result;
}

unint64_t sub_261C39864(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD2C0, &unk_261D021F0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD2C8, &unk_261D0DBA8);
    v7 = sub_261D00544();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_261CFCDA4();
    while (1)
    {
      sub_261AFB668(v9, v5, &qword_27FEDD2C0, &unk_261D021F0);
      result = sub_261B37AEC(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_261CFD0B4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_261C39A4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD2B0, &qword_261D021E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD2B8, &qword_261D0DBA0);
    v7 = sub_261D00544();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_261CFCDA4();
    while (1)
    {
      sub_261AFB668(v9, v5, &qword_27FEDD2B0, &qword_261D021E0);
      result = sub_261B37B8C(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_261CFD0B4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_261C39C34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD2A0, &qword_261D021C8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD2A8, &qword_261D0DB98);
    v7 = sub_261D00544();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_261CFCDA4();
    while (1)
    {
      sub_261AFB668(v9, v5, &qword_27FEDD2A0, &qword_261D021C8);
      result = sub_261B37C38(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_261CFD0B4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_261C39E1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD230, &qword_261D0F9D0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD238, &qword_261D0DB60);
    v7 = sub_261D00544();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_261CFCDA4();
    while (1)
    {
      sub_261AFB668(v9, v5, &qword_27FEDD230, &qword_261D0F9D0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_261B37CE8(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_261CFD6A4();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_261C3A008(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD1C8, &qword_261D0DB00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD298, &qword_261D0DB90);
    v7 = sub_261D00544();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_261CFCDA4();
    while (1)
    {
      sub_261AFB668(v9, v5, &qword_27FEDD1C8, &qword_261D0DB00);
      result = sub_261B37D60(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_261CFD864();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_261C3A1F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB530, &qword_261D06A58);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD290, &qword_261D0DB88);
    v7 = sub_261D00544();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_261CFCDA4();
    while (1)
    {
      sub_261AFB668(v9, v5, &qword_27FEDB530, &qword_261D06A58);
      result = sub_261B37E0C(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_261CFD0B4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_261C3A3D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBCD8, &unk_261D08390);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD280, &qword_261D0DB80);
    v7 = sub_261D00544();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_261CFCDA4();
    while (1)
    {
      sub_261AFB668(v9, v5, &qword_27FEDBCD8, &unk_261D08390);
      result = sub_261B37F34(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_261CFD0B4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_261C3A5C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBCC8, &qword_261D08380);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD270, &qword_261D0DB78);
    v7 = sub_261D00544();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_261CFCDA4();
    while (1)
    {
      sub_261AFB668(v9, v5, &qword_27FEDBCC8, &qword_261D08380);
      result = sub_261B37FD0(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_261CFD0B4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_261C3A7A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBF20, &qword_261D08EB0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD260, &qword_261D0DB70);
    v7 = sub_261D00544();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_261CFCDA4();
    while (1)
    {
      sub_261AFB668(v9, v5, &qword_27FEDBF20, &qword_261D08EB0);
      result = sub_261B38154(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_261CFD0B4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_261C3A990(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBF10, &qword_261D08EA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD250, &qword_261D0DB68);
    v7 = sub_261D00544();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_261CFCDA4();
    while (1)
    {
      sub_261AFB668(v9, v5, &qword_27FEDBF10, &qword_261D08EA0);
      result = sub_261B381F4(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_261CFD0B4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_261C3AB78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD240, &qword_261D031B0);
    v3 = sub_261D00544();
    sub_261CFCDA4();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = sub_261B37CA4(v6);
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

unint64_t sub_261C3AC70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD220, &qword_261D0DB50);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD228, &qword_261D0DB58);
    v7 = sub_261D00544();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_261CFCDA4();
    while (1)
    {
      sub_261AFB668(v9, v5, &qword_27FEDD220, &qword_261D0DB50);
      result = sub_261B382B4(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_261CFD0B4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_261C3AE58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD210, &qword_261D0DB40);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD218, &qword_261D0DB48);
    v7 = sub_261D00544();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_261CFCDA4();
    while (1)
    {
      sub_261AFB668(v9, v5, &qword_27FEDD210, &qword_261D0DB40);
      result = sub_261B38380(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_261CFD0B4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_261C3B040(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD200, &qword_261D0DB30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD208, &qword_261D0DB38);
    v7 = sub_261D00544();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_261CFCDA4();
    while (1)
    {
      sub_261AFB668(v9, v5, &qword_27FEDD200, &qword_261D0DB30);
      result = sub_261B38450(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_261CFD0B4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_261C3B228(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD1F0, &qword_261D0DB20);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD1F8, &qword_261D0DB28);
    v7 = sub_261D00544();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_261CFCDA4();
    while (1)
    {
      sub_261AFB668(v9, v5, &qword_27FEDD1F0, &qword_261D0DB20);
      result = sub_261B384EC(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_261CFD0B4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

id sub_261C3B410(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v4 = sub_261CFD864();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v10 = sub_261CFD9E4();
  v11 = *(v10 - 8);
  result = MEMORY[0x28223BE20](v10);
  v14 = (&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = MEMORY[0x277D84F90];
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = 0;
    v40 = v11 + 88;
    v41 = v11 + 16;
    v39 = *MEMORY[0x277CC9898];
    v34 = *MEMORY[0x277CC9890];
    v29 = (v11 + 8);
    v36 = (v5 + 32);
    v37 = (v11 + 96);
    v38 = (v5 + 8);
    v27 = v2;
    v28 = MEMORY[0x277D84F90];
    v32 = v9;
    v33 = a1;
    v31 = v4;
    v42 = v15;
    while (1)
    {
      v17 = v16;
      v18 = v35;
      while (1)
      {
        if (v17 >= v15)
        {
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }

        v16 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_30;
        }

        (*(v11 + 16))(v14, a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v17, v10);
        v19 = (*(v11 + 88))(v14, v10);
        if (v19 == v39)
        {
          break;
        }

        if (v19 == v34)
        {
          (*v37)(v14, v10);
          v22 = *v14;
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD1E8, &qword_261D0DB10);
          v9 = v30;
          (*v36)(v30, v14 + *(v23 + 48), v4);
          if (!*(v18 + 16))
          {
            result = (*v38)(v9, v4);
LABEL_21:
            v9 = v32;
            a1 = v33;
            goto LABEL_5;
          }

          v20 = sub_261B37D60(v9);
          if ((v24 & 1) == 0)
          {
            v4 = v31;
            result = (*v38)(v9, v31);
            v18 = v35;
            goto LABEL_21;
          }

          goto LABEL_15;
        }

        result = (*v29)(v14, v10);
LABEL_5:
        ++v17;
        v15 = v42;
        if (v16 == v42)
        {
          return v28;
        }
      }

      (*v37)(v14, v10);
      (*v36)(v9, v14, v4);
      if (!*(v18 + 16))
      {
        result = (*v38)(v9, v4);
        goto LABEL_5;
      }

      v20 = sub_261B37D60(v9);
      if ((v21 & 1) == 0)
      {
        result = (*v38)(v9, v4);
        v18 = v35;
        goto LABEL_5;
      }

      v22 = 0;
LABEL_15:
      v25 = v9;
      v18 = v35;
      v26 = *(*(v35 + 56) + 8 * v20);
      v4 = v31;
      (*v38)(v25, v31);
      result = [objc_opt_self() dayOfWeek:v26 weekNumber:v22];
      v9 = v32;
      a1 = v33;
      if (!result)
      {
        goto LABEL_5;
      }

      v28 = result;
      MEMORY[0x26671C310]();
      if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_261CFFC84();
      }

      result = sub_261CFFCB4();
      v28 = v43;
      v15 = v42;
      v4 = v31;
      if (v16 == v42)
      {
        return v28;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_261C3B8CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD1E0, &qword_261D0DB08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ReminderEntityRepresentation.isCompleted.getter()
{
  sub_261CFCDA4();
  sub_261CFEBD4();

  return v1;
}

uint64_t sub_261C3BA34()
{
  sub_261CFCDA4();
  sub_261CFEBD4();
}

uint64_t (*ReminderEntityRepresentation.note.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD338);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t (*ReminderEntityRepresentation.tags.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD360);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t sub_261C3BC08(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void *a7)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v17 - v14;
  sub_261AFB668(a1, &v17 - v14, a5, a6);
  sub_261AFB668(v15, v13, a5, a6);
  sub_261CFCDA4();
  sub_261CFEBE4();

  return sub_261AE6A40(v15, a5, a6);
}

uint64_t sub_261C3BD34(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  MEMORY[0x28223BE20](v7 - 8);
  sub_261AFB668(a1, &v10 - v8, a2, a3);
  sub_261CFCDA4();
  sub_261CFEBE4();

  return sub_261AE6A40(a1, a2, a3);
}

uint64_t (*ReminderEntityRepresentation.dueDate.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD308);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t (*ReminderEntityRepresentation.recurrence.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD318);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t (*ReminderEntityRepresentation.subtasks.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD358);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t ReminderEntityRepresentation.objectID.getter@<X0>(uint64_t *x8_0@<X8>)
{
  sub_261CFEA04();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v3 = sub_261CFEAB4();
  AppEntityID.init(entityIdentifierString:)(v3, v4, x8_0);
  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t (*ReminderEntityRepresentation.title.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD2D0);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t (*ReminderEntityRepresentation.list.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD2D8);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t sub_261C3C19C@<X0>(_BYTE *a2@<X8>)
{
  sub_261CFCDA4();
  sub_261CFEBD4();

  *a2 = v4;
  return result;
}

uint64_t ReminderEntityRepresentation.isCompleted.setter(char a1)
{
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t (*ReminderEntityRepresentation.isCompleted.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD2E0);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t (*ReminderEntityRepresentation.completionDate.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD2F0);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t (*ReminderEntityRepresentation.creationDate.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD2F8);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t (*ReminderEntityRepresentation.lastModifiedDate.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD300);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t (*ReminderEntityRepresentation.dueDateComponents.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD370);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t (*ReminderEntityRepresentation.earlyAlert.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD310);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F280;
}

uint64_t (*ReminderEntityRepresentation.recurrenceRule.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD378);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t (*ReminderEntityRepresentation.spatialEventTrigger.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD320);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t (*ReminderEntityRepresentation.contactPerson.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD328);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t sub_261C3C870()
{
  sub_261CFCDA4();
  sub_261CFEBD4();
}

uint64_t (*ReminderEntityRepresentation.assignedPerson.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD330);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t (*ReminderEntityRepresentation.notes.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD380);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t (*ReminderEntityRepresentation.flags.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD340);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t sub_261C3CAC8@<X0>(_BYTE *a3@<X8>)
{
  sub_261CFCDA4();
  sub_261CFEBD4();

  *a3 = v5;
  return result;
}

uint64_t sub_261C3CB28(char *a1, void *a2)
{
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t (*ReminderEntityRepresentation.priorityLevel.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD348);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t sub_261C3CC0C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t sub_261C3CC6C(uint64_t a1, void *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t (*ReminderEntityRepresentation.parent.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD350);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t (*ReminderEntityRepresentation.reminders.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD388);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t (*ReminderEntityRepresentation.hashtags.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD390);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t (*ReminderEntityRepresentation.images.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD2E8);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t (*ReminderEntityRepresentation.urls.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD368);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t ReminderEntityRepresentation.init(_:)(uint64_t a1)
{
  v41 = a1;
  v40 = sub_261CFEA34();
  v2 = *(v40 - 8);
  v3 = MEMORY[0x28223BE20](v40);
  v39 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v38 = &v38 - v5;
  v6 = qword_27FEDD338;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD398, &qword_261D0DBB8);
  swift_allocObject();
  *(v1 + v6) = sub_261CFEBB4();
  v7 = qword_27FEDD360;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD3A0, &qword_261D0DBC0);
  swift_allocObject();
  *(v1 + v7) = sub_261CFEBB4();
  v8 = qword_27FEDD308;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD3A8, &qword_261D0DBC8);
  swift_allocObject();
  *(v1 + v8) = sub_261CFEBB4();
  v9 = qword_27FEDD318;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD3B0, &qword_261D0DBD0);
  swift_allocObject();
  *(v1 + v9) = sub_261CFEBB4();
  v10 = qword_27FEDD358;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD3B8, &qword_261D0E420);
  swift_allocObject();
  *(v1 + v10) = sub_261CFEBB4();
  v11 = qword_27FEDD2D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA58, &qword_261D0B6D0);
  swift_allocObject();
  *(v1 + v11) = sub_261CFEBB4();
  v12 = qword_27FEDD2D8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD3C0, &qword_261D0DBD8);
  swift_allocObject();
  *(v1 + v12) = sub_261CFEBB4();
  v13 = qword_27FEDD2E0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCBD0, &qword_261D0DBE0);
  swift_allocObject();
  *(v1 + v13) = sub_261CFEBB4();
  v14 = qword_27FEDD2F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD3C8, &qword_261D0DBE8);
  swift_allocObject();
  *(v1 + v14) = sub_261CFEBB4();
  v15 = qword_27FEDD2F8;
  swift_allocObject();
  *(v1 + v15) = sub_261CFEBB4();
  v16 = qword_27FEDD300;
  swift_allocObject();
  *(v1 + v16) = sub_261CFEBB4();
  v17 = qword_27FEDD370;
  swift_allocObject();
  *(v1 + v17) = sub_261CFEBB4();
  v18 = qword_27FEDD310;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD3D0, &qword_261D0DBF0);
  swift_allocObject();
  *(v1 + v18) = sub_261CFEBB4();
  v19 = qword_27FEDD378;
  swift_allocObject();
  *(v1 + v19) = sub_261CFEBB4();
  v20 = qword_27FEDD320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD3D8, &qword_261D0DBF8);
  swift_allocObject();
  *(v1 + v20) = sub_261CFEBB4();
  v21 = qword_27FEDD328;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD3E0, &qword_261D0DC00);
  swift_allocObject();
  *(v1 + v21) = sub_261CFEBB4();
  v22 = qword_27FEDD330;
  swift_allocObject();
  *(v1 + v22) = sub_261CFEBB4();
  v23 = qword_27FEDD380;
  swift_allocObject();
  *(v1 + v23) = sub_261CFEBB4();
  v24 = qword_27FEDD340;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD3E8, &qword_261D0DC08);
  swift_allocObject();
  *(v1 + v24) = sub_261CFEBB4();
  v25 = qword_27FEDD348;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD3F0, &qword_261D0DC10);
  swift_allocObject();
  *(v1 + v25) = sub_261CFEBB4();
  v26 = qword_27FEDD350;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD3F8, &qword_261D0DC18);
  swift_allocObject();
  *(v1 + v26) = sub_261CFEBB4();
  v27 = qword_27FEDD388;
  swift_allocObject();
  *(v1 + v27) = sub_261CFEBB4();
  v28 = qword_27FEDD390;
  swift_allocObject();
  *(v1 + v28) = sub_261CFEBB4();
  v29 = qword_27FEDD2E8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD400, &qword_261D0DC20);
  swift_allocObject();
  *(v1 + v29) = sub_261CFEBB4();
  v30 = qword_27FEDD368;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD408, &qword_261D0DC28);
  swift_allocObject();
  *(v1 + v30) = sub_261CFEBB4();
  v31 = *(v2 + 16);
  v32 = v38;
  v34 = v40;
  v33 = v41;
  v31(v38, v41, v40);
  v31(v39, v32, v34);
  v35 = sub_261CFEA94();
  v36 = *(v2 + 8);
  v36(v33, v34);
  v36(v32, v34);
  return v35;
}

uint64_t sub_261C3D728()
{
}

uint64_t ReminderEntityRepresentation.deinit()
{
  v0 = _s19RemindersAppIntents05TypedB20EntityRepresentationCfd_0();

  return v0;
}

uint64_t ReminderEntityRepresentation.__deallocating_deinit()
{
  ReminderEntityRepresentation.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ReminderEntityRepresentation(uint64_t a1)
{
  result = qword_27FEDD410;
  if (!qword_27FEDD410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_261C3DBC8(uint64_t *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t CompleteReminderAppIntentRepresentation.reminder.setter(uint64_t a1)
{
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*CompleteReminderAppIntentRepresentation.reminder.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t (*CompleteReminderAppIntentRepresentation.isCompleted.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFEC14();
  return sub_261AFA230;
}

uint64_t (*CompleteReminderAppIntentRepresentation.completeSubtasks.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t CompleteReminderAppIntentRepresentation.init(reminder:isCompleted:completeSubtasks:)@<X0>(uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD420, &qword_261D0DC60);
  swift_allocObject();
  sub_261CFCDA4();
  *a4 = sub_261CFEC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD428, &qword_261D0DC68);
  swift_allocObject();
  a4[1] = sub_261CFEC04();
  swift_allocObject();
  v5 = sub_261CFEC04();

  a4[2] = v5;
  return result;
}

unint64_t sub_261C3E040(uint64_t a1)
{
  result = sub_261C3E068();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261C3E068()
{
  result = qword_27FEDD430;
  if (!qword_27FEDD430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD430);
  }

  return result;
}

unint64_t sub_261C3E0CC()
{
  result = qword_27FEDD438;
  if (!qword_27FEDD438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD438);
  }

  return result;
}

uint64_t sub_261C3E144(char *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*AddOrRemoveTagsAppIntentRepresentation.operation.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t sub_261C3E2BC(uint64_t *a1, uint64_t *a2)
{
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*AddOrRemoveTagsAppIntentRepresentation.reminders.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t sub_261C3E434(uint64_t *a1, uint64_t *a2)
{
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*AddOrRemoveTagsAppIntentRepresentation.tags.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFEC14();
  return sub_261AFA230;
}

uint64_t AddOrRemoveTagsAppIntentRepresentation.init(operation:reminders:tags:)@<X0>(uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD440, &unk_261D0DD00);
  swift_allocObject();
  *a4 = sub_261CFEC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCD00, &qword_261D0C400);
  swift_allocObject();
  a4[1] = sub_261CFEC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF08, &qword_261D0DD10);
  swift_allocObject();
  a4[2] = sub_261CFEC04();
  sub_261CFEC34();
  sub_261CFEC34();
  return sub_261CFEC34();
}

unint64_t sub_261C3E6D8(uint64_t a1)
{
  result = sub_261C3E700();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261C3E700()
{
  result = qword_27FEDD448;
  if (!qword_27FEDD448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD448);
  }

  return result;
}

unint64_t sub_261C3E764()
{
  result = qword_27FEDD450;
  if (!qword_27FEDD450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD450);
  }

  return result;
}

uint64_t sub_261C3E7B8()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDD458);
  v1 = __swift_project_value_buffer(v0, qword_27FEDD458);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double ListBadgeEntity.init(representation:)@<D0>(uint64_t a2@<X8>)
{
  sub_261CFEA04();
  __swift_project_boxed_opaque_existential_1(&v15, v17);
  sub_261CFEAB4();
  v3 = sub_261CFF984();
  v5 = v4;

  __swift_destroy_boxed_opaque_existential_0(&v15);
  if (v5)
  {
    sub_261CFCDA4();
    sub_261CFEBD4();

    v6 = v15;
    v7 = v16;
    sub_261CFCDA4();
    sub_261CFEBD4();

    ListBadgeEntity.init(id:emblem:emoji:)(v3, v5, v6, v7, v15, v16, &v15);

    v8 = v17;
    v9 = v18;
    *a2 = v15;
    result = *&v16;
    *(a2 + 8) = v16;
    *(a2 + 24) = v8;
    *(a2 + 32) = v9;
  }

  else
  {
    if (qword_27FED9BE0 != -1)
    {
      swift_once();
    }

    v11 = sub_261CFF7A4();
    __swift_project_value_buffer(v11, qword_27FEDD458);
    v12 = sub_261CFF784();
    v13 = sub_261CFFE64();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_261AE2000, v12, v13, "Unable to convert representation to ListBadgeEntity", v14, 2u);
      MEMORY[0x26671D560](v14, -1, -1);
    }

    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

unint64_t sub_261C3EA70()
{
  result = qword_27FEDD470;
  if (!qword_27FEDD470)
  {
    type metadata accessor for ListBadgeEntityRepresentation(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD470);
  }

  return result;
}

void *sub_261C3EAFC(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[9];
  v10[8] = a2[8];
  v10[9] = v3;
  v10[10] = a2[10];
  v4 = a2[5];
  v10[4] = a2[4];
  v10[5] = v4;
  v5 = a2[7];
  v10[6] = a2[6];
  v10[7] = v5;
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v7 = a2[3];
  v10[2] = a2[2];
  v10[3] = v7;
  v9[22] = v2;
  sub_261C43F9C(v10, v9);
  sub_261CFCDA4();
  sub_261CFEC34();
  return sub_261C43FD4(v10);
}

uint64_t UpdateReminderAppIntentRepresentation.target.setter(uint64_t a1)
{
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*UpdateReminderAppIntentRepresentation.target.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

void *sub_261C3EC9C(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[9];
  v11[8] = a2[8];
  v11[9] = v4;
  v11[10] = a2[10];
  v5 = a2[5];
  v11[4] = a2[4];
  v11[5] = v5;
  v6 = a2[7];
  v11[6] = a2[6];
  v11[7] = v6;
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  v8 = a2[3];
  v11[2] = a2[2];
  v11[3] = v8;
  v10[22] = v3;
  v10[23] = v2;
  sub_261CFD104();
  sub_261C43F9C(v11, v10);
  sub_261CFEC34();
  return sub_261C43FD4(v11);
}

uint64_t (*UpdateReminderAppIntentRepresentation.title.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

void *sub_261C3EE1C(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[9];
  v10[8] = a2[8];
  v10[9] = v3;
  v10[10] = a2[10];
  v4 = a2[5];
  v10[4] = a2[4];
  v10[5] = v4;
  v5 = a2[7];
  v10[6] = a2[6];
  v10[7] = v5;
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v7 = a2[3];
  v10[2] = a2[2];
  v10[3] = v7;
  v9[22] = v2;
  sub_261C43F9C(v10, v9);
  sub_261CFCDA4();
  sub_261CFEC34();
  return sub_261C43FD4(v10);
}

uint64_t UpdateReminderAppIntentRepresentation.list.setter(uint64_t a1)
{
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*UpdateReminderAppIntentRepresentation.list.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

void *sub_261C3EFAC(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  sub_261AFB668(a1, v16 - v8, &qword_27FEDA160, &qword_261D02220);
  v10 = a2[9];
  v17[8] = a2[8];
  v17[9] = v10;
  v17[10] = a2[10];
  v11 = a2[5];
  v17[4] = a2[4];
  v17[5] = v11;
  v12 = a2[7];
  v17[6] = a2[6];
  v17[7] = v12;
  v13 = a2[1];
  v17[0] = *a2;
  v17[1] = v13;
  v14 = a2[3];
  v17[2] = a2[2];
  v17[3] = v14;
  sub_261AFB668(v9, v7, &qword_27FEDA160, &qword_261D02220);
  sub_261C43F9C(v17, v16);
  sub_261CFEC34();
  sub_261AE6A40(v9, &qword_27FEDA160, &qword_261D02220);
  return sub_261C43FD4(v17);
}

uint64_t UpdateReminderAppIntentRepresentation.dueDateComponents.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261AFB668(a1, &v5 - v3, &qword_27FEDA160, &qword_261D02220);
  sub_261CFEC34();
  return sub_261AE6A40(a1, &qword_27FEDA160, &qword_261D02220);
}

uint64_t (*UpdateReminderAppIntentRepresentation.dueDateComponents.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

void *sub_261C3F278(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[9];
  v10[8] = a2[8];
  v10[9] = v3;
  v10[10] = a2[10];
  v4 = a2[5];
  v10[4] = a2[4];
  v10[5] = v4;
  v5 = a2[7];
  v10[6] = a2[6];
  v10[7] = v5;
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v7 = a2[3];
  v10[2] = a2[2];
  v10[3] = v7;
  v9[22] = v2;
  sub_261C43F9C(v10, v9);
  sub_261CFCDA4();
  sub_261CFEC34();
  return sub_261C43FD4(v10);
}

uint64_t UpdateReminderAppIntentRepresentation.earlyAlert.setter(uint64_t a1)
{
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*UpdateReminderAppIntentRepresentation.earlyAlert.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFEC14();
  return sub_261AFA230;
}

void *sub_261C3F408(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  sub_261AFB668(a1, v16 - v8, &qword_27FEDA9A0, &unk_261D034A0);
  v10 = a2[9];
  v17[8] = a2[8];
  v17[9] = v10;
  v17[10] = a2[10];
  v11 = a2[5];
  v17[4] = a2[4];
  v17[5] = v11;
  v12 = a2[7];
  v17[6] = a2[6];
  v17[7] = v12;
  v13 = a2[1];
  v17[0] = *a2;
  v17[1] = v13;
  v14 = a2[3];
  v17[2] = a2[2];
  v17[3] = v14;
  sub_261AFB668(v9, v7, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261C43F9C(v17, v16);
  sub_261CFEC34();
  sub_261AE6A40(v9, &qword_27FEDA9A0, &unk_261D034A0);
  return sub_261C43FD4(v17);
}

uint64_t UpdateReminderAppIntentRepresentation.recurrenceRule.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261AFB668(a1, &v5 - v3, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261CFEC34();
  return sub_261AE6A40(a1, &qword_27FEDA9A0, &unk_261D034A0);
}

uint64_t (*UpdateReminderAppIntentRepresentation.recurrenceRule.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

void *sub_261C3F6D4(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[9];
  v10[8] = a2[8];
  v10[9] = v3;
  v10[10] = a2[10];
  v4 = a2[5];
  v10[4] = a2[4];
  v10[5] = v4;
  v5 = a2[7];
  v10[6] = a2[6];
  v10[7] = v5;
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v7 = a2[3];
  v10[2] = a2[2];
  v10[3] = v7;
  v9[22] = v2;
  sub_261C43F9C(v10, v9);
  sub_261CFCDA4();
  sub_261CFEC34();
  return sub_261C43FD4(v10);
}

uint64_t UpdateReminderAppIntentRepresentation.spatialEventTrigger.setter(uint64_t a1)
{
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*UpdateReminderAppIntentRepresentation.spatialEventTrigger.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

void *sub_261C3F864(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  sub_261AFB668(a1, v16 - v8, &unk_27FEDB0B0, &unk_261D035D0);
  v10 = a2[9];
  v17[8] = a2[8];
  v17[9] = v10;
  v17[10] = a2[10];
  v11 = a2[5];
  v17[4] = a2[4];
  v17[5] = v11;
  v12 = a2[7];
  v17[6] = a2[6];
  v17[7] = v12;
  v13 = a2[1];
  v17[0] = *a2;
  v17[1] = v13;
  v14 = a2[3];
  v17[2] = a2[2];
  v17[3] = v14;
  sub_261AFB668(v9, v7, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261C43F9C(v17, v16);
  sub_261CFEC34();
  sub_261AE6A40(v9, &unk_27FEDB0B0, &unk_261D035D0);
  return sub_261C43FD4(v17);
}

uint64_t UpdateReminderAppIntentRepresentation.contactPerson.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261AFB668(a1, &v5 - v3, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261CFEC34();
  return sub_261AE6A40(a1, &unk_27FEDB0B0, &unk_261D035D0);
}

uint64_t (*UpdateReminderAppIntentRepresentation.contactPerson.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

void *sub_261C3FB20(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  sub_261AFB668(a1, v16 - v8, &unk_27FEDB0B0, &unk_261D035D0);
  v10 = a2[9];
  v17[8] = a2[8];
  v17[9] = v10;
  v17[10] = a2[10];
  v11 = a2[5];
  v17[4] = a2[4];
  v17[5] = v11;
  v12 = a2[7];
  v17[6] = a2[6];
  v17[7] = v12;
  v13 = a2[1];
  v17[0] = *a2;
  v17[1] = v13;
  v14 = a2[3];
  v17[2] = a2[2];
  v17[3] = v14;
  sub_261AFB668(v9, v7, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261C43F9C(v17, v16);
  sub_261CFEC34();
  sub_261AE6A40(v9, &unk_27FEDB0B0, &unk_261D035D0);
  return sub_261C43FD4(v17);
}

uint64_t UpdateReminderAppIntentRepresentation.assignedPerson.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261AFB668(a1, &v5 - v3, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261CFEC34();
  return sub_261AE6A40(a1, &unk_27FEDB0B0, &unk_261D035D0);
}

uint64_t (*UpdateReminderAppIntentRepresentation.assignedPerson.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

void *sub_261C3FDEC(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[9];
  v11[8] = a2[8];
  v11[9] = v4;
  v11[10] = a2[10];
  v5 = a2[5];
  v11[4] = a2[4];
  v11[5] = v5;
  v6 = a2[7];
  v11[6] = a2[6];
  v11[7] = v6;
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  v8 = a2[3];
  v11[2] = a2[2];
  v11[3] = v8;
  v10[22] = v3;
  v10[23] = v2;
  sub_261CFD104();
  sub_261C43F9C(v11, v10);
  sub_261CFEC34();
  return sub_261C43FD4(v11);
}

uint64_t (*UpdateReminderAppIntentRepresentation.notes.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

void *sub_261C3FF5C(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[9];
  v11[8] = a2[8];
  v11[9] = v3;
  v11[10] = a2[10];
  v4 = a2[5];
  v11[4] = a2[4];
  v11[5] = v4;
  v5 = a2[7];
  v11[6] = a2[6];
  v11[7] = v5;
  v6 = a2[1];
  v11[0] = *a2;
  v11[1] = v6;
  v7 = a2[3];
  v11[2] = a2[2];
  v11[3] = v7;
  v10 = v2;
  sub_261C43F9C(v11, v9);
  sub_261CFEC34();
  return sub_261C43FD4(v11);
}

uint64_t (*UpdateReminderAppIntentRepresentation.flags.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

void *sub_261C400D0(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[9];
  v11[8] = a2[8];
  v11[9] = v3;
  v11[10] = a2[10];
  v4 = a2[5];
  v11[4] = a2[4];
  v11[5] = v4;
  v5 = a2[7];
  v11[6] = a2[6];
  v11[7] = v5;
  v6 = a2[1];
  v11[0] = *a2;
  v11[1] = v6;
  v7 = a2[3];
  v11[2] = a2[2];
  v11[3] = v7;
  v10 = v2;
  sub_261C43F9C(v11, v9);
  sub_261CFEC34();
  return sub_261C43FD4(v11);
}

uint64_t (*UpdateReminderAppIntentRepresentation.priorityLevel.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

void *sub_261C40254(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[9];
  v10[8] = a2[8];
  v10[9] = v3;
  v10[10] = a2[10];
  v4 = a2[5];
  v10[4] = a2[4];
  v10[5] = v4;
  v5 = a2[7];
  v10[6] = a2[6];
  v10[7] = v5;
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v7 = a2[3];
  v10[2] = a2[2];
  v10[3] = v7;
  v9[22] = v2;
  sub_261CFD104();
  sub_261C43F9C(v10, v9);
  sub_261CFEC34();
  return sub_261C43FD4(v10);
}

uint64_t (*UpdateReminderAppIntentRepresentation.subtasks.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

void *sub_261C403D8(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[9];
  v10[8] = a2[8];
  v10[9] = v3;
  v10[10] = a2[10];
  v4 = a2[5];
  v10[4] = a2[4];
  v10[5] = v4;
  v5 = a2[7];
  v10[6] = a2[6];
  v10[7] = v5;
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v7 = a2[3];
  v10[2] = a2[2];
  v10[3] = v7;
  v9[22] = v2;
  sub_261CFD104();
  sub_261C43F9C(v10, v9);
  sub_261CFEC34();
  return sub_261C43FD4(v10);
}

uint64_t (*UpdateReminderAppIntentRepresentation.hashtags.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

void *sub_261C4055C(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[9];
  v10[8] = a2[8];
  v10[9] = v3;
  v10[10] = a2[10];
  v4 = a2[5];
  v10[4] = a2[4];
  v10[5] = v4;
  v5 = a2[7];
  v10[6] = a2[6];
  v10[7] = v5;
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v7 = a2[3];
  v10[2] = a2[2];
  v10[3] = v7;
  v9[22] = v2;
  sub_261CFD104();
  sub_261C43F9C(v10, v9);
  sub_261CFEC34();
  return sub_261C43FD4(v10);
}

uint64_t (*UpdateReminderAppIntentRepresentation.urls.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

void *sub_261C406E0(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[9];
  v11[8] = a2[8];
  v11[9] = v3;
  v11[10] = a2[10];
  v4 = a2[5];
  v11[4] = a2[4];
  v11[5] = v4;
  v5 = a2[7];
  v11[6] = a2[6];
  v11[7] = v5;
  v6 = a2[1];
  v11[0] = *a2;
  v11[1] = v6;
  v7 = a2[3];
  v11[2] = a2[2];
  v11[3] = v7;
  v10 = v2;
  sub_261C43F9C(v11, v9);
  sub_261CFEC34();
  return sub_261C43FD4(v11);
}

uint64_t (*UpdateReminderAppIntentRepresentation.isCompleted.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

void *sub_261C40850(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A8, &qword_261D034B0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  sub_261AFB668(a1, v16 - v8, &qword_27FEDA9A8, &qword_261D034B0);
  v10 = a2[9];
  v17[8] = a2[8];
  v17[9] = v10;
  v17[10] = a2[10];
  v11 = a2[5];
  v17[4] = a2[4];
  v17[5] = v11;
  v12 = a2[7];
  v17[6] = a2[6];
  v17[7] = v12;
  v13 = a2[1];
  v17[0] = *a2;
  v17[1] = v13;
  v14 = a2[3];
  v17[2] = a2[2];
  v17[3] = v14;
  sub_261AFB668(v9, v7, &qword_27FEDA9A8, &qword_261D034B0);
  sub_261C43F9C(v17, v16);
  sub_261CFEC34();
  sub_261AE6A40(v9, &qword_27FEDA9A8, &qword_261D034B0);
  return sub_261C43FD4(v17);
}

uint64_t UpdateReminderAppIntentRepresentation.note.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A8, &qword_261D034B0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261AFB668(a1, &v5 - v3, &qword_27FEDA9A8, &qword_261D034B0);
  sub_261CFEC34();
  return sub_261AE6A40(a1, &qword_27FEDA9A8, &qword_261D034B0);
}

uint64_t (*UpdateReminderAppIntentRepresentation.note.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

void *sub_261C40B1C(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[9];
  v10[8] = a2[8];
  v10[9] = v3;
  v10[10] = a2[10];
  v4 = a2[5];
  v10[4] = a2[4];
  v10[5] = v4;
  v5 = a2[7];
  v10[6] = a2[6];
  v10[7] = v5;
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v7 = a2[3];
  v10[2] = a2[2];
  v10[3] = v7;
  v9[22] = v2;
  sub_261CFD104();
  sub_261C43F9C(v10, v9);
  sub_261CFEC34();
  return sub_261C43FD4(v10);
}

uint64_t (*UpdateReminderAppIntentRepresentation.tags.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

void *sub_261C40C90(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  sub_261AFB668(a1, v16 - v8, &qword_27FEDA160, &qword_261D02220);
  v10 = a2[9];
  v17[8] = a2[8];
  v17[9] = v10;
  v17[10] = a2[10];
  v11 = a2[5];
  v17[4] = a2[4];
  v17[5] = v11;
  v12 = a2[7];
  v17[6] = a2[6];
  v17[7] = v12;
  v13 = a2[1];
  v17[0] = *a2;
  v17[1] = v13;
  v14 = a2[3];
  v17[2] = a2[2];
  v17[3] = v14;
  sub_261AFB668(v9, v7, &qword_27FEDA160, &qword_261D02220);
  sub_261C43F9C(v17, v16);
  sub_261CFEC34();
  sub_261AE6A40(v9, &qword_27FEDA160, &qword_261D02220);
  return sub_261C43FD4(v17);
}

uint64_t UpdateReminderAppIntentRepresentation.dueDate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261AFB668(a1, &v5 - v3, &qword_27FEDA160, &qword_261D02220);
  sub_261CFEC34();
  return sub_261AE6A40(a1, &qword_27FEDA160, &qword_261D02220);
}

uint64_t (*UpdateReminderAppIntentRepresentation.dueDate.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

void *sub_261C40F4C(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  sub_261AFB668(a1, v16 - v8, &qword_27FEDA9A0, &unk_261D034A0);
  v10 = a2[9];
  v17[8] = a2[8];
  v17[9] = v10;
  v17[10] = a2[10];
  v11 = a2[5];
  v17[4] = a2[4];
  v17[5] = v11;
  v12 = a2[7];
  v17[6] = a2[6];
  v17[7] = v12;
  v13 = a2[1];
  v17[0] = *a2;
  v17[1] = v13;
  v14 = a2[3];
  v17[2] = a2[2];
  v17[3] = v14;
  sub_261AFB668(v9, v7, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261C43F9C(v17, v16);
  sub_261CFEC34();
  sub_261AE6A40(v9, &qword_27FEDA9A0, &unk_261D034A0);
  return sub_261C43FD4(v17);
}

uint64_t UpdateReminderAppIntentRepresentation.recurrence.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261AFB668(a1, &v5 - v3, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261CFEC34();
  return sub_261AE6A40(a1, &qword_27FEDA9A0, &unk_261D034A0);
}

uint64_t (*UpdateReminderAppIntentRepresentation.recurrence.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

void *sub_261C41218(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[9];
  v10[8] = a2[8];
  v10[9] = v3;
  v10[10] = a2[10];
  v4 = a2[5];
  v10[4] = a2[4];
  v10[5] = v4;
  v5 = a2[7];
  v10[6] = a2[6];
  v10[7] = v5;
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v7 = a2[3];
  v10[2] = a2[2];
  v10[3] = v7;
  v9[22] = v2;
  sub_261C43F9C(v10, v9);
  sub_261CFCDA4();
  sub_261CFEC34();
  return sub_261C43FD4(v10);
}

uint64_t UpdateReminderAppIntentRepresentation.targetList.setter(uint64_t a1)
{
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*UpdateReminderAppIntentRepresentation.targetList.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

void *sub_261C413B8(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[9];
  v10[8] = a2[8];
  v10[9] = v3;
  v10[10] = a2[10];
  v4 = a2[5];
  v10[4] = a2[4];
  v10[5] = v4;
  v5 = a2[7];
  v10[6] = a2[6];
  v10[7] = v5;
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v7 = a2[3];
  v10[2] = a2[2];
  v10[3] = v7;
  v9[22] = v2;
  sub_261C43F9C(v10, v9);
  sub_261CFCDA4();
  sub_261CFEC34();
  return sub_261C43FD4(v10);
}

uint64_t UpdateReminderAppIntentRepresentation.targetSection.setter(uint64_t a1)
{
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*UpdateReminderAppIntentRepresentation.targetSection.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t UpdateReminderAppIntentRepresentation.init(target:title:targetList:dueDate:earlyAlert:recurrence:spatialEventTrigger:contactPerson:assignedPerson:note:flags:priorityLevel:subtasks:tags:urls:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 *a13, unsigned __int8 *a14, uint64_t a15, uint64_t a16, void *a17)
{
  v137 = a8;
  v117 = a7;
  v142 = a6;
  v133 = a5;
  v141 = a4;
  v116 = a3;
  v115 = a2;
  v140 = a1;
  v100 = a9;
  v124 = a16;
  v136 = a11;
  v118 = a10;
  v123 = a15;
  v122 = a12;
  v96 = sub_261CFD504();
  MEMORY[0x28223BE20](v96);
  v95 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_261CFD524();
  v149 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v94 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A8, &qword_261D034B0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v121 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v148 = &v93 - v23;
  MEMORY[0x28223BE20](v22);
  v147 = &v93 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v146 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v93 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v33 = &v93 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = &v93 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v37 = MEMORY[0x28223BE20](v36 - 8);
  v39 = &v93 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = v39;
  MEMORY[0x28223BE20](v37);
  v41 = &v93 - v40;
  v119 = *a13;
  v120 = *a14;
  v150 = 0;
  v151 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCB28, &unk_261D0BA00);
  swift_allocObject();
  v139 = sub_261CFEC04();
  v150 = 0;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCB30, &qword_261D0C410);
  swift_allocObject();
  v138 = sub_261CFEC04();
  v109 = sub_261CFD4E4();
  v42 = *(v109 - 8);
  v108 = *(v42 + 56);
  v125 = v42 + 56;
  v108(v41, 1, 1, v109);
  v106 = v41;
  sub_261AFB668(v41, v39, &qword_27FEDA160, &qword_261D02220);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCED0, &qword_261D0CD60);
  swift_allocObject();
  v135 = sub_261CFEC04();
  sub_261AE6A40(v41, &qword_27FEDA160, &qword_261D02220);
  v150 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCED8, &qword_261D0CD68);
  swift_allocObject();
  v134 = sub_261CFEC04();
  v104 = sub_261CFDA54();
  v43 = *(v104 - 8);
  v103 = *(v43 + 56);
  v105 = v43 + 56;
  v103(v35, 1, 1, v104);
  v101 = v35;
  v143 = v33;
  sub_261AFB668(v35, v33, &qword_27FEDA9A0, &unk_261D034A0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCEE0, &qword_261D0CD70);
  swift_allocObject();
  v132 = sub_261CFEC04();
  sub_261AE6A40(v35, &qword_27FEDA9A0, &unk_261D034A0);
  v150 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCEE8, &qword_261D0CD78);
  swift_allocObject();
  v131 = sub_261CFEC04();
  v44 = sub_261CFC954();
  v45 = *(*(v44 - 8) + 56);
  v45(v29, 1, 1, v44);
  v46 = v146;
  sub_261AFB668(v29, v146, &unk_27FEDB0B0, &unk_261D035D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF18, &unk_261D0DDD0);
  swift_allocObject();
  v130 = sub_261CFEC04();
  sub_261AE6A40(v29, &unk_27FEDB0B0, &unk_261D035D0);
  v45(v29, 1, 1, v44);
  v110 = v29;
  sub_261AFB668(v29, v46, &unk_27FEDB0B0, &unk_261D035D0);
  swift_allocObject();
  v128 = sub_261CFEC04();
  sub_261AE6A40(v29, &unk_27FEDB0B0, &unk_261D035D0);
  v150 = 0;
  v151 = 0;
  swift_allocObject();
  v114 = sub_261CFEC04();
  LOBYTE(v150) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCEF0, &unk_261D0CD80);
  swift_allocObject();
  v113 = sub_261CFEC04();
  LOBYTE(v150) = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCEF8, &unk_261D0DDE0);
  swift_allocObject();
  v112 = sub_261CFEC04();
  v150 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCD00, &qword_261D0C400);
  swift_allocObject();
  v129 = sub_261CFEC04();
  v150 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF08, &qword_261D0DD10);
  swift_allocObject();
  v99 = sub_261CFEC04();
  v150 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF10, &unk_261D0CD90);
  swift_allocObject();
  v98 = sub_261CFEC04();
  LOBYTE(v150) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCEC8, &unk_261D0DDF0);
  swift_allocObject();
  v97 = sub_261CFEC04();
  v47 = v147;
  (*(v149 + 56))(v147, 1, 1, v144);
  sub_261AFB668(v47, v148, &qword_27FEDA9A8, &qword_261D034B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF20, &qword_261D0CDA0);
  swift_allocObject();
  v127 = sub_261CFEC04();
  sub_261AE6A40(v47, &qword_27FEDA9A8, &qword_261D034B0);
  v150 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD478, &qword_261D0DE00);
  swift_allocObject();
  v126 = sub_261CFEC04();
  v48 = v106;
  v108(v106, 1, 1, v109);
  sub_261AFB668(v48, v145, &qword_27FEDA160, &qword_261D02220);
  swift_allocObject();
  v125 = sub_261CFEC04();
  sub_261AE6A40(v48, &qword_27FEDA160, &qword_261D02220);
  v49 = v101;
  v103(v101, 1, 1, v104);
  sub_261AFB668(v49, v143, &qword_27FEDA9A0, &unk_261D034A0);
  v50 = v133;
  swift_allocObject();
  v51 = sub_261CFEC04();
  sub_261AE6A40(v49, &qword_27FEDA9A0, &unk_261D034A0);
  v150 = 0;
  swift_allocObject();
  v52 = sub_261CFEC04();
  v150 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF00, &unk_261D0D230);
  swift_allocObject();
  v111 = sub_261CFEC04();
  v150 = v140;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD420, &qword_261D0DC60);
  swift_allocObject();
  sub_261CFCDA4();
  v109 = sub_261CFEC04();
  v150 = v115;
  v151 = v116;
  sub_261CFEC34();
  v53 = v141;
  v150 = v141;
  sub_261CFCDA4();
  v116 = v52;
  sub_261CFEC34();
  v150 = v53;
  sub_261CFCDA4();
  sub_261CFEC34();
  sub_261AFB668(v50, v48, &qword_27FEDA160, &qword_261D02220);
  v54 = v145;
  sub_261AFB668(v48, v145, &qword_27FEDA160, &qword_261D02220);
  sub_261CFEC34();
  sub_261AE6A40(v48, &qword_27FEDA160, &qword_261D02220);
  sub_261AFB668(v50, v48, &qword_27FEDA160, &qword_261D02220);
  sub_261AFB668(v48, v54, &qword_27FEDA160, &qword_261D02220);
  sub_261CFEC34();
  v55 = v48;
  v56 = v117;
  sub_261AE6A40(v55, &qword_27FEDA160, &qword_261D02220);
  v150 = v142;
  sub_261CFCDA4();
  sub_261CFEC34();
  sub_261AFB668(v56, v49, &qword_27FEDA9A0, &unk_261D034A0);
  v57 = v143;
  sub_261AFB668(v49, v143, &qword_27FEDA9A0, &unk_261D034A0);
  v145 = v51;
  sub_261CFEC34();
  sub_261AE6A40(v49, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261AFB668(v56, v49, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261AFB668(v49, v57, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261CFEC34();
  v58 = v118;
  sub_261AE6A40(v49, &qword_27FEDA9A0, &unk_261D034A0);
  v150 = v137;
  sub_261CFCDA4();
  sub_261CFEC34();
  v59 = v110;
  sub_261AFB668(v58, v110, &unk_27FEDB0B0, &unk_261D035D0);
  v60 = v146;
  sub_261AFB668(v59, v146, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261CFEC34();
  sub_261AE6A40(v59, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AFB668(v136, v59, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AFB668(v59, v60, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261CFEC34();
  sub_261AE6A40(v59, &unk_27FEDB0B0, &unk_261D035D0);
  v61 = v122;
  v62 = v147;
  sub_261AFB668(v122, v147, &qword_27FEDA9A8, &qword_261D034B0);
  sub_261AFB668(v62, v148, &qword_27FEDA9A8, &qword_261D034B0);
  sub_261CFEC34();
  sub_261AE6A40(v62, &qword_27FEDA9A8, &qword_261D034B0);
  v63 = v61;
  v64 = v121;
  v65 = v63;
  sub_261AFB668(v63, v121, &qword_27FEDA9A8, &qword_261D034B0);
  v66 = v149;
  v67 = v144;
  if ((*(v149 + 48))(v64, 1) == 1)
  {
    sub_261AE6A40(v64, &qword_27FEDA9A8, &qword_261D034B0);
    v68 = 0;
    v69 = 0;
  }

  else
  {
    v70 = v94;
    (*(v66 + 32))(v94, v64, v67);
    sub_261CFD4F4();
    sub_261C43A64();
    v68 = sub_261CFFBD4();
    v69 = v71;
    (*(v66 + 8))(v70, v67);
  }

  v150 = v68;
  v151 = v69;
  v72 = v114;
  sub_261CFEC34();
  LOBYTE(v150) = v119;
  v73 = v113;
  sub_261CFEC34();
  LOBYTE(v150) = v120;
  v74 = v112;
  sub_261CFEC34();
  v150 = v123;
  sub_261CFEC34();
  v75 = v124;
  v150 = v124;
  sub_261CFD104();
  sub_261CFEC34();
  if (v75)
  {
    v76 = v75;
  }

  else
  {
    v76 = MEMORY[0x277D84FA0];
  }

  v77 = *(v76 + 16);
  if (!v77)
  {
    goto LABEL_10;
  }

  v78 = sub_261C437E4(*(v76 + 16), 0);
  v79 = sub_261C4390C(&v150, v78 + 4, v77, v76);
  sub_261B57B30(v150);
  if (v79 != v77)
  {
    __break(1u);
LABEL_10:

    v78 = MEMORY[0x277D84F90];
  }

  v150 = v78;
  v80 = v99;
  sub_261CFEC34();
  v150 = a17;
  v81 = v98;
  sub_261CFEC34();

  sub_261AE6A40(v65, &qword_27FEDA9A8, &qword_261D034B0);
  sub_261AE6A40(v136, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AE6A40(v58, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AE6A40(v56, &qword_27FEDA9A0, &unk_261D034A0);
  result = sub_261AE6A40(v133, &qword_27FEDA160, &qword_261D02220);
  v83 = v100;
  v84 = v138;
  v85 = v139;
  *v100 = v109;
  v83[1] = v85;
  v83[2] = v84;
  v86 = v134;
  v83[3] = v135;
  v83[4] = v86;
  v87 = v131;
  v83[5] = v132;
  v83[6] = v87;
  v88 = v128;
  v83[7] = v130;
  v83[8] = v88;
  v83[9] = v72;
  v83[10] = v73;
  v89 = v129;
  v83[11] = v74;
  v83[12] = v89;
  v83[13] = v80;
  v83[14] = v81;
  v90 = v127;
  v83[15] = v97;
  v83[16] = v90;
  v91 = v125;
  v83[17] = v126;
  v83[18] = v91;
  v92 = v116;
  v83[19] = v145;
  v83[20] = v92;
  v83[21] = v111;
  return result;
}

uint64_t UpdateReminderAppIntentRepresentation.init(target:title:list:dueDateComponents:earlyAlert:recurrenceRule:spatialEventTrigger:contactPerson:assignedPerson:notes:flags:priorityLevel:subtasks:hashtags:urls:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 *a14, unsigned __int8 *a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v131 = a8;
  v125 = a7;
  v133 = a6;
  v128 = a5;
  v129 = a4;
  v120 = a3;
  v95 = a2;
  v130 = a1;
  v91 = a9;
  v103 = a18;
  v99 = a17;
  v101 = a16;
  v100 = a13;
  v98 = a12;
  v126 = a11;
  v132 = a10;
  v18 = sub_261CFD564();
  MEMORY[0x28223BE20](v18 - 8);
  v81[0] = v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A8, &qword_261D034B0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v102 = v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v106 = v81 - v24;
  MEMORY[0x28223BE20](v23);
  v122 = v81 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v29 = v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = v81 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0);
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v35 = v81 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v37 = v81 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v39 = MEMORY[0x28223BE20](v38 - 8);
  v41 = v81 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = v41;
  MEMORY[0x28223BE20](v39);
  v43 = v81 - v42;
  v96 = *a14;
  v97 = *a15;
  v134 = 0;
  v135 = 0;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCB28, &unk_261D0BA00);
  swift_allocObject();
  v127 = sub_261CFEC04();
  v134 = 0;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCB30, &qword_261D0C410);
  swift_allocObject();
  v123 = sub_261CFEC04();
  v90 = sub_261CFD4E4();
  v44 = *(v90 - 8);
  v89 = *(v44 + 56);
  v92 = v44 + 56;
  v89(v43, 1, 1, v90);
  v114 = v43;
  sub_261AFB668(v43, v41, &qword_27FEDA160, &qword_261D02220);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCED0, &qword_261D0CD60);
  swift_allocObject();
  v119 = sub_261CFEC04();
  sub_261AE6A40(v43, &qword_27FEDA160, &qword_261D02220);
  v134 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCED8, &qword_261D0CD68);
  swift_allocObject();
  v118 = sub_261CFEC04();
  v83 = sub_261CFDA54();
  v45 = *(v83 - 8);
  v82 = *(v45 + 56);
  v84 = v45 + 56;
  v82(v37, 1, 1, v83);
  v109 = v37;
  v124 = v35;
  sub_261AFB668(v37, v35, &qword_27FEDA9A0, &unk_261D034A0);
  v81[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCEE0, &qword_261D0CD70);
  swift_allocObject();
  v117 = sub_261CFEC04();
  sub_261AE6A40(v37, &qword_27FEDA9A0, &unk_261D034A0);
  v134 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCEE8, &qword_261D0CD78);
  swift_allocObject();
  v116 = sub_261CFEC04();
  v46 = sub_261CFC954();
  v47 = *(*(v46 - 8) + 56);
  v47(v31, 1, 1, v46);
  sub_261AFB668(v31, v29, &unk_27FEDB0B0, &unk_261D035D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF18, &unk_261D0DDD0);
  swift_allocObject();
  v115 = sub_261CFEC04();
  sub_261AE6A40(v31, &unk_27FEDB0B0, &unk_261D035D0);
  v47(v31, 1, 1, v46);
  sub_261AFB668(v31, v29, &unk_27FEDB0B0, &unk_261D035D0);
  swift_allocObject();
  v113 = sub_261CFEC04();
  sub_261AE6A40(v31, &unk_27FEDB0B0, &unk_261D035D0);
  v134 = 0;
  v135 = 0;
  swift_allocObject();
  v112 = sub_261CFEC04();
  LOBYTE(v134) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCEF0, &unk_261D0CD80);
  swift_allocObject();
  v111 = sub_261CFEC04();
  LOBYTE(v134) = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCEF8, &unk_261D0DDE0);
  swift_allocObject();
  v110 = sub_261CFEC04();
  v134 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCD00, &qword_261D0C400);
  swift_allocObject();
  v108 = sub_261CFEC04();
  v134 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF08, &qword_261D0DD10);
  swift_allocObject();
  v107 = sub_261CFEC04();
  v134 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF10, &unk_261D0CD90);
  swift_allocObject();
  v104 = sub_261CFEC04();
  LOBYTE(v134) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCEC8, &unk_261D0DDF0);
  swift_allocObject();
  v94 = sub_261CFEC04();
  v48 = sub_261CFD524();
  v49 = *(v48 - 8);
  v50 = *(v49 + 56);
  v51 = v122;
  v87 = v48;
  v86 = v50;
  v85 = v49 + 56;
  (v50)(v122, 1, 1);
  sub_261AFB668(v51, v106, &qword_27FEDA9A8, &qword_261D034B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF20, &qword_261D0CDA0);
  swift_allocObject();
  v106 = sub_261CFEC04();
  sub_261AE6A40(v51, &qword_27FEDA9A8, &qword_261D034B0);
  v134 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD478, &qword_261D0DE00);
  swift_allocObject();
  v105 = sub_261CFEC04();
  v52 = v114;
  v89(v114, 1, 1, v90);
  v53 = v121;
  sub_261AFB668(v52, v121, &qword_27FEDA160, &qword_261D02220);
  swift_allocObject();
  v92 = sub_261CFEC04();
  sub_261AE6A40(v52, &qword_27FEDA160, &qword_261D02220);
  v54 = v109;
  v82(v109, 1, 1, v83);
  v55 = v124;
  sub_261AFB668(v54, v124, &qword_27FEDA9A0, &unk_261D034A0);
  swift_allocObject();
  v90 = sub_261CFEC04();
  sub_261AE6A40(v54, &qword_27FEDA9A0, &unk_261D034A0);
  v134 = 0;
  swift_allocObject();
  v93 = sub_261CFEC04();
  v134 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF00, &unk_261D0D230);
  swift_allocObject();
  v89 = sub_261CFEC04();
  v134 = v130;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD420, &qword_261D0DC60);
  swift_allocObject();
  sub_261CFCDA4();
  v88 = sub_261CFEC04();
  v134 = v95;
  v135 = v120;
  sub_261CFD104();
  sub_261CFEC34();
  v134 = v129;
  swift_retain_n();
  sub_261CFEC34();

  sub_261AFB668(v128, v52, &qword_27FEDA160, &qword_261D02220);
  sub_261AFB668(v52, v53, &qword_27FEDA160, &qword_261D02220);
  sub_261CFEC34();
  sub_261AE6A40(v52, &qword_27FEDA160, &qword_261D02220);
  v134 = v133;
  sub_261CFCDA4();
  sub_261CFEC34();
  sub_261AFB668(v125, v54, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261AFB668(v54, v55, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261CFEC34();
  v56 = v98;
  sub_261AE6A40(v54, &qword_27FEDA9A0, &unk_261D034A0);
  v134 = v131;
  v57 = v99;
  sub_261CFCDA4();
  sub_261CFEC34();
  sub_261AFB668(v132, v31, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AFB668(v31, v29, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261CFEC34();
  sub_261AE6A40(v31, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AFB668(v126, v31, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AFB668(v31, v29, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261CFEC34();
  sub_261AE6A40(v31, &unk_27FEDB0B0, &unk_261D035D0);
  v134 = v56;
  v135 = v100;
  v58 = v100;
  sub_261CFD104();
  sub_261CFEC34();
  LOBYTE(v134) = v96;
  sub_261CFEC34();
  LOBYTE(v134) = v97;
  sub_261CFEC34();
  v134 = v101;
  sub_261CFD104();
  sub_261CFEC34();
  v134 = v57;
  sub_261CFD104();
  sub_261CFEC34();
  v134 = v103;
  sub_261CFD104();
  sub_261CFEC34();
  if (v58)
  {
    sub_261CFD554();
    v59 = v102;
    sub_261CFD534();
    v60 = 0;
  }

  else
  {
    v59 = v102;
    v60 = 1;
  }

  v86(v59, v60, 1, v87);
  sub_261AFB668(v59, v122, &qword_27FEDA9A8, &qword_261D034B0);
  sub_261CFEC34();
  sub_261AE6A40(v59, &qword_27FEDA9A8, &qword_261D034B0);

  if (v57)
  {
    v61 = sub_261B49EB8(v57);
  }

  else
  {
    v61 = 0;
  }

  v134 = v61;
  sub_261CFEC34();
  v62 = v128;
  v63 = v114;
  sub_261AFB668(v128, v114, &qword_27FEDA160, &qword_261D02220);
  sub_261AFB668(v63, v121, &qword_27FEDA160, &qword_261D02220);
  v64 = v92;
  sub_261CFEC34();
  sub_261AE6A40(v63, &qword_27FEDA160, &qword_261D02220);
  v65 = v125;
  v66 = v109;
  sub_261AFB668(v125, v109, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261AFB668(v66, v124, &qword_27FEDA9A0, &unk_261D034A0);
  v67 = v90;
  sub_261CFEC34();
  sub_261AE6A40(v66, &qword_27FEDA9A0, &unk_261D034A0);
  v134 = v129;
  sub_261CFCDA4();
  v68 = v93;
  sub_261CFEC34();
  v134 = 0;
  v69 = v89;
  sub_261CFEC34();

  sub_261AE6A40(v126, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AE6A40(v132, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AE6A40(v65, &qword_27FEDA9A0, &unk_261D034A0);
  result = sub_261AE6A40(v62, &qword_27FEDA160, &qword_261D02220);
  v71 = v91;
  v72 = v127;
  *v91 = v88;
  v71[1] = v72;
  v73 = v118;
  v74 = v119;
  v71[2] = v123;
  v71[3] = v74;
  v71[4] = v73;
  v75 = v116;
  v71[5] = v117;
  v71[6] = v75;
  v76 = v113;
  v71[7] = v115;
  v71[8] = v76;
  v77 = v111;
  v71[9] = v112;
  v71[10] = v77;
  v78 = v108;
  v71[11] = v110;
  v71[12] = v78;
  v79 = v104;
  v71[13] = v107;
  v71[14] = v79;
  v80 = v106;
  v71[15] = v94;
  v71[16] = v80;
  v71[17] = v105;
  v71[18] = v64;
  v71[19] = v67;
  v71[20] = v68;
  v71[21] = v69;
  return result;
}

void *sub_261C437E4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA668, &qword_261D06FD0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_261C43868(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA740, &qword_261D05A10);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_261C4390C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {
        sub_261CFD104();
        goto LABEL_24;
      }

      v11 += 2;
      sub_261CFD104();
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_261C43A64()
{
  result = qword_27FEDCA28;
  if (!qword_27FEDCA28)
  {
    sub_261CFD504();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCA28);
  }

  return result;
}

uint64_t sub_261C43ABC(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4, __n128 a5)
{
  v5 = a4;
  v8 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v19 = -1 << *(v5 + 32);
    v9 = v5 + 64;
    v10 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v11 = v21 & *(v5 + 64);
    v23 = v10;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v16 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = sub_261D00424();
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v5 = result | 0x8000000000000000;
  v23 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v16 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v24 = a3;
  a3 = 0;
  v12 = 0;
  v13 = (v10 + 64) >> 6;
  v14 = 1;
  while (1)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      if (!sub_261D004B4())
      {
        goto LABEL_31;
      }

      swift_unknownObjectRelease();
      sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
      swift_dynamicCast();
      result = v25;
      v16 = v12;
      if (!v25)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v15 = v12;
    if (!v11)
    {
      break;
    }

    v16 = v12;
LABEL_13:
    v17 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v5 + 56) + ((v16 << 9) | (8 * v17)));
    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v24;
    if (v14 == v24)
    {
LABEL_31:
      v16 = v12;
      goto LABEL_32;
    }

    ++a2;
    a3 = v14;
    if (__OFADD__(v14++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v16 >= v13)
    {
      break;
    }

    v11 = *(v9 + 8 * v16);
    ++v15;
    if (v11)
    {
      v12 = v16;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v12 + 1)
  {
    v22 = v12 + 1;
  }

  else
  {
    v22 = v13;
  }

  v16 = v22 - 1;
LABEL_32:
  *v8 = v5;
  v8[1] = v9;
  v8[2] = v23;
  v8[3] = v16;
  v8[4] = v11;
  return a3;
}

uint64_t *sub_261C43CDC(uint64_t *result, uint64_t **a2, void *a3, uint64_t a4, unint64_t *a5, void *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  sub_261D00234();
  sub_261B05020(0, a5, a6);
  sub_261C44004(a7, a5, a6);
  result = sub_261CFFDA4();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!sub_261D002A4())
      {
        goto LABEL_30;
      }

      sub_261B05020(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = v26 - 1;
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

unint64_t sub_261C43F10(uint64_t a1)
{
  result = sub_261C43F38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261C43F38()
{
  result = qword_27FEDD480;
  if (!qword_27FEDD480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD480);
  }

  return result;
}

uint64_t sub_261C44004(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_261B05020(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t EarlyAlertEntityRepresentation.unit.getter()
{
  sub_261CFCDA4();
  sub_261CFEBD4();
}

uint64_t EarlyAlertEntityRepresentation.interval.getter()
{
  sub_261CFCDA4();
  sub_261CFEBD4();

  return v1;
}

uint64_t EarlyAlertEntityRepresentation.UnitRepresentation.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6574756E696DLL;
  v3 = 7954788;
  v4 = 1801807223;
  if (v1 != 3)
  {
    v4 = 0x68746E6F6DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1920298856;
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

uint64_t sub_261C44174()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDD498);
  v1 = __swift_project_value_buffer(v0, qword_27FEDD498);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261C4423C@<X0>(_BYTE *a2@<X8>)
{
  sub_261CFCDA4();
  sub_261CFEBD4();

  *a2 = v4;
  return result;
}

uint64_t sub_261C44294(char *a1, void *a2)
{
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t EarlyAlertEntityRepresentation.unit.setter(char *a1)
{
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t (*EarlyAlertEntityRepresentation.unit.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD4B0);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F280;
}

uint64_t sub_261C443D0@<X0>(uint64_t a2@<X8>)
{
  sub_261CFCDA4();
  sub_261CFEBD4();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_261C44430(uint64_t *a1, void *a2)
{
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t EarlyAlertEntityRepresentation.interval.setter(uint64_t a1, char a2)
{
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t (*EarlyAlertEntityRepresentation.interval.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD4B8);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t EarlyAlertEntityRepresentation.__allocating_init(_:)(uint64_t a1)
{
  v2 = sub_261CFEA34();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = swift_allocObject();
  v10 = qword_27FEDD4B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD4C0, &qword_261D0DEA0);
  swift_allocObject();
  *(v9 + v10) = sub_261CFEBB4();
  v11 = qword_27FEDD4B8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD4C8, &qword_261D0DEA8);
  swift_allocObject();
  *(v9 + v11) = sub_261CFEBB4();
  v12 = *(v3 + 16);
  v12(v8, a1, v2);
  v12(v6, v8, v2);
  v13 = sub_261CFEA94();
  v14 = *(v3 + 8);
  v14(a1, v2);
  v14(v8, v2);
  return v13;
}

uint64_t EarlyAlertEntityRepresentation.init(_:)(uint64_t a1)
{
  v3 = sub_261CFEA34();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = qword_27FEDD4B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD4C0, &qword_261D0DEA0);
  swift_allocObject();
  *(v1 + v10) = sub_261CFEBB4();
  v11 = qword_27FEDD4B8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD4C8, &qword_261D0DEA8);
  swift_allocObject();
  *(v1 + v11) = sub_261CFEBB4();
  v12 = *(v4 + 16);
  v12(v9, a1, v3);
  v12(v7, v9, v3);
  v13 = sub_261CFEA94();
  v14 = *(v4 + 8);
  v14(a1, v3);
  v14(v9, v3);
  return v13;
}

uint64_t sub_261C44918()
{
}

uint64_t EarlyAlertEntityRepresentation.deinit()
{
  v0 = _s19RemindersAppIntents05TypedB20EntityRepresentationCfd_0();

  return v0;
}

uint64_t EarlyAlertEntityRepresentation.__deallocating_deinit()
{
  _s19RemindersAppIntents05TypedB20EntityRepresentationCfd_0();
  sub_261CFCDA4();

  return swift_deallocClassInstance();
}

RemindersAppIntents::EarlyAlertEntityRepresentation::UnitRepresentation_optional __swiftcall EarlyAlertEntityRepresentation.UnitRepresentation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_261D00554();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_261C44A88()
{
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

uint64_t sub_261C44B4C(uint64_t a1)
{
  sub_261CFFB14();
}

uint64_t sub_261C44BFC(uint64_t a1)
{
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

void sub_261C44CC8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x6574756E696DLL;
  v5 = 0xE300000000000000;
  v6 = 7954788;
  v7 = 0xE400000000000000;
  v8 = 1801807223;
  if (v2 != 3)
  {
    v8 = 0x68746E6F6DLL;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1920298856;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_261C44D8C(uint64_t a1)
{
  v2 = sub_261BAA9FC();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_261C44DC8(uint64_t a1)
{
  v2 = sub_261BAA9FC();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_261C44E04(uint64_t a1, uint64_t a2)
{
  v4 = sub_261C4515C();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_261C44E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261BAA9FC();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_261C44EB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_261C4515C();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

RemindersAppIntents::EarlyAlertEntityRepresentation::UnitRepresentation_optional __swiftcall EarlyAlertEntityRepresentation.UnitRepresentation.init(appEnum:)(RemindersAppIntents::EarlyAlertEntity::Unit appEnum)
{
  v2 = v1;
  v3 = *appEnum;
  v4 = 0xE600000000000000;
  v5 = 0x6574756E696DLL;
  v6 = 0xE300000000000000;
  v7 = 7954788;
  v8 = 0xE400000000000000;
  v9 = 1801807223;
  if (v3 != 3)
  {
    v9 = 0x68746E6F6DLL;
    v8 = 0xE500000000000000;
  }

  if (v3 != 2)
  {
    v7 = v9;
    v6 = v8;
  }

  if (*appEnum)
  {
    v5 = 1920298856;
    v4 = 0xE400000000000000;
  }

  if (*appEnum <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v3 <= 1)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  result.value = EarlyAlertEntityRepresentation.UnitRepresentation.init(rawValue:)(*&v10).value;
  if (v17 == 5)
  {
    if (qword_27FED9BE8 != -1)
    {
      swift_once();
    }

    v13 = sub_261CFF7A4();
    __swift_project_value_buffer(v13, qword_27FEDD498);
    v14 = sub_261CFF784();
    v15 = sub_261CFFE64();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_261AE2000, v14, v15, "Unable to convert EarlyAlertEntity.Unit to representation", v16, 2u);
      MEMORY[0x26671D560](v16, -1, -1);
    }
  }

  *v2 = v17;
  return result;
}

unint64_t sub_261C450AC()
{
  result = qword_27FEDD4D0;
  if (!qword_27FEDD4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD4D0);
  }

  return result;
}

unint64_t sub_261C45104()
{
  result = qword_27FEDD4D8;
  if (!qword_27FEDD4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD4D8);
  }

  return result;
}

unint64_t sub_261C4515C()
{
  result = qword_27FEDD4E0;
  if (!qword_27FEDD4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD4E0);
  }

  return result;
}

unint64_t sub_261C451B4()
{
  result = qword_27FEDD4E8;
  if (!qword_27FEDD4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD4E8);
  }

  return result;
}

unint64_t sub_261C4520C()
{
  result = qword_27FEDD4F0;
  if (!qword_27FEDD4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD4F0);
  }

  return result;
}

unint64_t sub_261C45260()
{
  result = qword_27FEDD4F8;
  if (!qword_27FEDD4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD4F8);
  }

  return result;
}

unint64_t sub_261C452B4(uint64_t a1)
{
  result = sub_261BAA9FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261C452E0()
{
  result = qword_27FEDD500;
  if (!qword_27FEDD500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDD508, &qword_261D0DFC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD500);
  }

  return result;
}

unint64_t sub_261C45344()
{
  result = qword_27FEDD510;
  if (!qword_27FEDD510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD510);
  }

  return result;
}

unint64_t sub_261C4539C()
{
  result = qword_27FEDD518;
  if (!qword_27FEDD518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD518);
  }

  return result;
}

unint64_t sub_261C453F4()
{
  result = qword_27FEDD520;
  if (!qword_27FEDD520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD520);
  }

  return result;
}

uint64_t type metadata accessor for EarlyAlertEntityRepresentation(uint64_t a1)
{
  result = qword_27FEDD528;
  if (!qword_27FEDD528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EarlyAlertEntityRepresentation.UnitRepresentation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EarlyAlertEntityRepresentation.UnitRepresentation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_261C4563C()
{
  result = qword_27FEDD538;
  if (!qword_27FEDD538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD538);
  }

  return result;
}

uint64_t sub_261C456CC(uint64_t *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t UpdateSmartListAppIntentRepresentation.target.setter(uint64_t a1)
{
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*UpdateSmartListAppIntentRepresentation.target.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFEC14();
  return sub_261AFA230;
}

uint64_t sub_261C45838(char *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*UpdateSmartListAppIntentRepresentation.isHidden.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t UpdateSmartListAppIntentRepresentation.init(target:isHidden:)@<X0>(uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD540, &unk_261D0E160);
  swift_allocObject();
  *a3 = sub_261CFEC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCEC8, &unk_261D0DDF0);
  swift_allocObject();
  a3[1] = sub_261CFEC04();
  sub_261CFCDA4();
  sub_261CFEC34();
  sub_261CFEC34();
}

unint64_t sub_261C45A78(uint64_t a1)
{
  result = sub_261C45AA0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261C45AA0()
{
  result = qword_27FEDD548;
  if (!qword_27FEDD548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD548);
  }

  return result;
}

unint64_t sub_261C45B04()
{
  result = qword_27FEDD550;
  if (!qword_27FEDD550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD550);
  }

  return result;
}

uint64_t TransientEntityRepresentationMappable.init(representation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_261D00154();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v17 - v11;
  if (v10)
  {
    (*(a3 + 24))(v10, a2, a3);
    v13 = *(a2 - 8);
    v14 = v13;
    if (!(*(v13 + 48))(v12, 1, a2))
    {
      (*(v13 + 32))(a4, v12, a2);
      v15 = 0;
      return (*(v14 + 56))(a4, v15, 1, a2);
    }

    (*(v9 + 8))(v12, v8);
  }

  else
  {
    v13 = *(a2 - 8);
  }

  v14 = v13;
  v15 = 1;
  return (*(v14 + 56))(a4, v15, 1, a2);
}

void (*DeleteSectionsAppIntentRepresentation.entities.modify(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_261CFEC14();
  return sub_261AFA3C4;
}

uint64_t DeleteSectionsAppIntentRepresentation.init(entities:)@<X0>(uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD558, &qword_261D0E250);
  swift_allocObject();
  result = sub_261CFEC04();
  *a2 = result;
  return result;
}

unint64_t sub_261C45ECC(uint64_t a1)
{
  result = sub_261C45EF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261C45EF4()
{
  result = qword_27FEDD560;
  if (!qword_27FEDD560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD560);
  }

  return result;
}

uint64_t (*CreateSectionAppIntentRepresentation.name.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t CreateSectionAppIntentRepresentation.list.setter(uint64_t a1)
{
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*CreateSectionAppIntentRepresentation.list.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFEC14();
  return sub_261AFA230;
}

uint64_t (*CreateSectionAppIntentRepresentation.title.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t CreateSectionAppIntentRepresentation.init(title:list:)@<X0>(uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCB28, &unk_261D0BA00);
  swift_allocObject();
  *a4 = sub_261CFEC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCB30, &qword_261D0C410);
  swift_allocObject();
  a4[1] = sub_261CFEC04();
  swift_allocObject();
  a4[2] = sub_261CFEC04();
  sub_261CFD104();
  sub_261CFEC34();
  sub_261CFEC34();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t CreateSectionAppIntentRepresentation.init(name:list:)@<X0>(uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCB28, &unk_261D0BA00);
  swift_allocObject();
  *a4 = sub_261CFEC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCB30, &qword_261D0C410);
  swift_allocObject();
  a4[1] = sub_261CFEC04();
  swift_allocObject();
  a4[2] = sub_261CFEC04();
  sub_261CFD104();
  sub_261CFEC34();
  sub_261CFCDA4();
  sub_261CFEC34();
  sub_261CFEC34();
}

unint64_t sub_261C464FC(uint64_t a1)
{
  result = sub_261C46524();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261C46524()
{
  result = qword_27FEDD568;
  if (!qword_27FEDD568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD568);
  }

  return result;
}

uint64_t sub_261C465BC(uint64_t *a1, uint64_t *a2)
{
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*DeleteRemindersListGroupsAppIntentRepresentation.entities.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t (*DeleteRemindersListGroupsAppIntentRepresentation.deleteSublists.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFEC14();
  return sub_261AFA230;
}

uint64_t DeleteRemindersListGroupsAppIntentRepresentation.init(entities:deleteSublists:)@<X0>(uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCEC8, &unk_261D0DDF0);
  swift_allocObject();
  a3[1] = sub_261CFEC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD570, &qword_261D0E378);
  swift_allocObject();
  *a3 = sub_261CFEC04();
  return sub_261CFEC34();
}

unint64_t sub_261C468D8(uint64_t a1)
{
  result = sub_261C46900();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261C46900()
{
  result = qword_27FEDD578;
  if (!qword_27FEDD578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD578);
  }

  return result;
}

uint64_t (*SectionEntityRepresentation.displayName.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD590);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F280;
}

uint64_t (*SectionEntityRepresentation.parent.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD598);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t sub_261C46AE8(uint64_t *a1, void *a2)
{
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t SectionEntityRepresentation.reminders.setter(uint64_t a1)
{
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t (*SectionEntityRepresentation.reminders.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD5A0);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t (*SectionEntityRepresentation.name.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD580);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t (*SectionEntityRepresentation.list.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD588);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t SectionEntityRepresentation.init(_:)(uint64_t a1)
{
  v3 = sub_261CFEA34();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = qword_27FEDD590;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA58, &qword_261D0B6D0);
  swift_allocObject();
  *(v1 + v10) = sub_261CFEBB4();
  v11 = qword_27FEDD598;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD3C0, &qword_261D0DBD8);
  swift_allocObject();
  *(v1 + v11) = sub_261CFEBB4();
  v12 = qword_27FEDD5A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD3B8, &qword_261D0E420);
  swift_allocObject();
  *(v1 + v12) = sub_261CFEBB4();
  v13 = qword_27FEDD580;
  swift_allocObject();
  *(v1 + v13) = sub_261CFEBB4();
  v14 = qword_27FEDD588;
  swift_allocObject();
  *(v1 + v14) = sub_261CFEBB4();
  v15 = *(v4 + 16);
  v15(v9, a1, v3);
  v15(v7, v9, v3);
  v16 = sub_261CFEA94();
  v17 = *(v4 + 8);
  v17(a1, v3);
  v17(v9, v3);
  return v16;
}

uint64_t sub_261C47014()
{
}

uint64_t SectionEntityRepresentation.deinit()
{
  v0 = _s19RemindersAppIntents05TypedB20EntityRepresentationCfd_0();

  return v0;
}

uint64_t SectionEntityRepresentation.__deallocating_deinit()
{
  _s19RemindersAppIntents05TypedB20EntityRepresentationCfd_0();
  sub_261CFCDA4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SectionEntityRepresentation(uint64_t a1)
{
  result = qword_27FEDD5A8;
  if (!qword_27FEDD5A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t (*MoveRemindersToSectionAppIntentRepresentation.reminders.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t (*MoveRemindersToSectionAppIntentRepresentation.position.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t MoveRemindersToSectionAppIntentRepresentation.targetSection.setter(uint64_t a1)
{
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*MoveRemindersToSectionAppIntentRepresentation.targetSection.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFEC14();
  return sub_261AFA230;
}

uint64_t MoveRemindersToSectionAppIntentRepresentation.init(reminders:position:targetSection:)@<X0>(uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCD00, &qword_261D0C400);
  swift_allocObject();
  *a4 = sub_261CFEC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCD08, &qword_261D0C408);
  swift_allocObject();
  a4[1] = sub_261CFEC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF00, &unk_261D0D230);
  swift_allocObject();
  a4[2] = sub_261CFEC04();
  sub_261CFEC34();
  sub_261CFEC34();
  sub_261CFCDA4();
  sub_261CFEC34();
}

unint64_t sub_261C4768C(uint64_t a1)
{
  result = sub_261C476B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261C476B4()
{
  result = qword_27FEDD5B8;
  if (!qword_27FEDD5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD5B8);
  }

  return result;
}

uint64_t ListEntityRepresentation.name.getter()
{
  sub_261CFCDA4();
  sub_261CFEBD4();

  return v1;
}

uint64_t sub_261C477E0(void *a1)
{
  sub_261CFCDA4();
  sub_261CFEBD4();

  return v2;
}

uint64_t ListEntityRepresentation.objectID.getter@<X0>(uint64_t *x8_0@<X8>)
{
  sub_261CFEA04();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v3 = sub_261CFEAB4();
  AppEntityID.init(entityIdentifierString:)(v3, v4, x8_0);
  return __swift_destroy_boxed_opaque_existential_0(v6);
}

double sub_261C478B4@<D0>(_OWORD *a2@<X8>)
{
  sub_261CFCDA4();
  sub_261CFEBD4();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_261C4790C(uint64_t *a1, void *a2)
{
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t ListEntityRepresentation.name.setter(uint64_t a1, uint64_t a2)
{
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t (*ListEntityRepresentation.name.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD5C0);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t (*ListEntityRepresentation.color.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD5C8);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t (*ListEntityRepresentation.badge.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD5D0);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t (*ListEntityRepresentation.parent.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD5D8);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t (*ListEntityRepresentation.participants.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD610);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t (*ListEntityRepresentation.sections.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD618);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t (*ListEntityRepresentation.isPinned.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD5E0);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t (*ListEntityRepresentation.showsCompleted.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD5E8);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t sub_261C47EE8(char a1, void *a2)
{
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t (*ListEntityRepresentation.autoCategorize.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD5F0);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t (*ListEntityRepresentation.listLayout.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD5F8);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F280;
}

uint64_t (*ListEntityRepresentation.sortingStyle.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD600);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t (*ListEntityRepresentation.listType.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD620);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t (*ListEntityRepresentation.type.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD608);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t ListEntityRepresentation.init(_:)(uint64_t a1)
{
  v3 = sub_261CFEA34();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = qword_27FEDD5C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA58, &qword_261D0B6D0);
  swift_allocObject();
  *(v1 + v10) = sub_261CFEBB4();
  v11 = qword_27FEDD5C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD628, &qword_261D0E4F8);
  swift_allocObject();
  *(v1 + v11) = sub_261CFEBB4();
  v12 = qword_27FEDD5D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD630, &qword_261D0E500);
  swift_allocObject();
  *(v1 + v12) = sub_261CFEBB4();
  v13 = qword_27FEDD5D8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD638, &qword_261D0E508);
  swift_allocObject();
  *(v1 + v13) = sub_261CFEBB4();
  v14 = qword_27FEDD610;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD640, &qword_261D0E510);
  swift_allocObject();
  *(v1 + v14) = sub_261CFEBB4();
  v15 = qword_27FEDD618;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD648, &unk_261D0E518);
  swift_allocObject();
  *(v1 + v15) = sub_261CFEBB4();
  v16 = qword_27FEDD5E0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCBD0, &qword_261D0DBE0);
  swift_allocObject();
  *(v1 + v16) = sub_261CFEBB4();
  v17 = qword_27FEDD5E8;
  swift_allocObject();
  *(v1 + v17) = sub_261CFEBB4();
  v18 = qword_27FEDD5F0;
  swift_allocObject();
  *(v1 + v18) = sub_261CFEBB4();
  v19 = qword_27FEDD5F8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD650, &qword_261D0E528);
  swift_allocObject();
  *(v1 + v19) = sub_261CFEBB4();
  v20 = qword_27FEDD600;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD658, &qword_261D0E530);
  swift_allocObject();
  *(v1 + v20) = sub_261CFEBB4();
  v21 = qword_27FEDD620;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD660, &qword_261D0E538);
  swift_allocObject();
  *(v1 + v21) = sub_261CFEBB4();
  v22 = qword_27FEDD608;
  swift_allocObject();
  *(v1 + v22) = sub_261CFEBB4();
  v23 = *(v4 + 16);
  v23(v9, a1, v3);
  v23(v7, v9, v3);
  v24 = sub_261CFEA94();
  v25 = *(v4 + 8);
  v25(a1, v3);
  v25(v9, v3);
  return v24;
}

uint64_t sub_261C486DC()
{
}

uint64_t ListEntityRepresentation.deinit()
{
  v0 = _s19RemindersAppIntents05TypedB20EntityRepresentationCfd_0();

  return v0;
}

uint64_t ListEntityRepresentation.__deallocating_deinit()
{
  ListEntityRepresentation.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ListEntityRepresentation(uint64_t a1)
{
  result = qword_27FEDD668;
  if (!qword_27FEDD668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t (*DeleteRemindersAppIntentRepresentation.entities.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t (*DeleteRemindersAppIntentRepresentation.deleteSubtasks.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFEC14();
  return sub_261AFA230;
}

uint64_t DeleteRemindersAppIntentRepresentation.init(entities:deleteSubtasks:)@<X0>(uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCEC8, &unk_261D0DDF0);
  swift_allocObject();
  a3[1] = sub_261CFEC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD678, &qword_261D0E578);
  swift_allocObject();
  *a3 = sub_261CFEC04();
  return sub_261CFEC34();
}

unint64_t sub_261C48CA4(uint64_t a1)
{
  result = sub_261C48CCC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261C48CCC()
{
  result = qword_27FEDD680;
  if (!qword_27FEDD680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD680);
  }

  return result;
}

uint64_t ReminderEntityRepresentation.FlagsRepresentation.rawValue.getter()
{
  v1 = 0x6767616C46746F6ELL;
  if (*v0 != 1)
  {
    v1 = 0x64656767616C66;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_261C48D90()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDD688);
  v1 = __swift_project_value_buffer(v0, qword_27FEDD688);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t ReminderEntityRepresentation.FlagsRepresentation.isFlagged.getter()
{
  if (*v0 && *v0 != 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_261D00614();
  }

  return v1 & 1;
}

uint64_t ReminderEntityRepresentation.FlagsRepresentation.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_261D00554();

  v6 = 3;
  if (v4 < 3)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_261C48F54(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6767616C46746F6ELL;
  v4 = 0xEA00000000006465;
  if (v2 != 1)
  {
    v3 = 0x64656767616C66;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x6767616C46746F6ELL;
  v8 = 0xEA00000000006465;
  if (*a2 != 1)
  {
    v7 = 0x64656767616C66;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_261D00614();
  }

  return v11 & 1;
}

uint64_t sub_261C49060()
{
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

uint64_t sub_261C49108(uint64_t a1)
{
  sub_261CFFB14();
}

uint64_t sub_261C4919C(uint64_t a1)
{
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

void sub_261C4924C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEA00000000006465;
  v5 = 0x6767616C46746F6ELL;
  if (v2 != 1)
  {
    v5 = 0x64656767616C66;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_261C492F4(uint64_t a1)
{
  v2 = sub_261C1EFA0();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_261C49330(uint64_t a1)
{
  v2 = sub_261C1EFA0();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_261C4936C(uint64_t a1, uint64_t a2)
{
  v4 = sub_261C496AC();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_261C493B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261C1EFA0();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_261C4941C(uint64_t a1, uint64_t a2)
{
  v4 = sub_261C496AC();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

void ReminderEntityRepresentation.FlagsRepresentation.init(appEnum:)(_BYTE *a2@<X8>)
{
  v3 = sub_261D00554();

  if (v3 >= 3)
  {
    if (qword_27FED9BF0 != -1)
    {
      swift_once();
    }

    v4 = sub_261CFF7A4();
    __swift_project_value_buffer(v4, qword_27FEDD688);
    v3 = sub_261CFF784();
    v5 = sub_261CFFE64();
    if (os_log_type_enabled(v3, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_261AE2000, v3, v5, "Unable to convert PriorityLevelType to representation", v6, 2u);
      MEMORY[0x26671D560](v6, -1, -1);
    }

    LOBYTE(v3) = 3;
  }

  *a2 = v3;
}

unint64_t sub_261C495FC()
{
  result = qword_27FEDD6A0;
  if (!qword_27FEDD6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD6A0);
  }

  return result;
}

unint64_t sub_261C49654()
{
  result = qword_27FEDD6A8;
  if (!qword_27FEDD6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD6A8);
  }

  return result;
}

unint64_t sub_261C496AC()
{
  result = qword_27FEDD6B0;
  if (!qword_27FEDD6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD6B0);
  }

  return result;
}

unint64_t sub_261C49704()
{
  result = qword_27FEDD6B8;
  if (!qword_27FEDD6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD6B8);
  }

  return result;
}

unint64_t sub_261C4975C()
{
  result = qword_27FEDD6C0;
  if (!qword_27FEDD6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD6C0);
  }

  return result;
}

unint64_t sub_261C497B0(uint64_t a1)
{
  result = sub_261C1EFA0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261C497DC()
{
  result = qword_27FEDD6C8;
  if (!qword_27FEDD6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDD6D0, &qword_261D0E720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD6C8);
  }

  return result;
}

unint64_t sub_261C49840()
{
  result = qword_27FEDD6D8;
  if (!qword_27FEDD6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD6D8);
  }

  return result;
}

unint64_t sub_261C49898()
{
  result = qword_27FEDD6E0;
  if (!qword_27FEDD6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD6E0);
  }

  return result;
}

unint64_t sub_261C498F0()
{
  result = qword_27FEDD6E8;
  if (!qword_27FEDD6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD6E8);
  }

  return result;
}

unint64_t sub_261C49954()
{
  result = qword_27FEDD6F0;
  if (!qword_27FEDD6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD6F0);
  }

  return result;
}

uint64_t LocationAlarmEntityRepresentation.placemark.getter()
{
  sub_261CFCDA4();
  sub_261CFEBD4();

  return v1;
}

uint64_t (*LocationAlarmEntityRepresentation.mobileSpace.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD6F8);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F280;
}

uint64_t (*LocationAlarmEntityRepresentation.event.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD700);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t sub_261C49B5C@<X0>(void *a2@<X8>)
{
  sub_261CFCDA4();
  sub_261CFEBD4();

  *a2 = v4;
  return result;
}

uint64_t sub_261C49BB4(id *a1, void *a2)
{
  v2 = *a1;
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t LocationAlarmEntityRepresentation.placemark.setter(void *a1)
{
  v1 = a1;
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t (*LocationAlarmEntityRepresentation.placemark.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD708);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t LocationAlarmEntityRepresentation.__allocating_init(_:)(uint64_t a1)
{
  v2 = sub_261CFEA34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  v7 = qword_27FEDD6F8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD710, &qword_261D0E890);
  swift_allocObject();
  *(v6 + v7) = sub_261CFEBB4();
  v8 = qword_27FEDD700;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD718, &qword_261D0E898);
  swift_allocObject();
  *(v6 + v8) = sub_261CFEBB4();
  v9 = qword_27FEDD708;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD720, &qword_261D0E8A0);
  swift_allocObject();
  *(v6 + v9) = sub_261CFEBB4();
  (*(v3 + 16))(v5, a1, v2);
  v10 = sub_261CFEA94();
  (*(v3 + 8))(a1, v2);
  return v10;
}

uint64_t LocationAlarmEntityRepresentation.init(_:)(uint64_t a1)
{
  v3 = sub_261CFEA34();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_27FEDD6F8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD710, &qword_261D0E890);
  swift_allocObject();
  *(v1 + v7) = sub_261CFEBB4();
  v8 = qword_27FEDD700;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD718, &qword_261D0E898);
  swift_allocObject();
  *(v1 + v8) = sub_261CFEBB4();
  v9 = qword_27FEDD708;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD720, &qword_261D0E8A0);
  swift_allocObject();
  *(v1 + v9) = sub_261CFEBB4();
  (*(v4 + 16))(v6, a1, v3);
  v10 = sub_261CFEA94();
  (*(v4 + 8))(a1, v3);
  return v10;
}

uint64_t sub_261C4A07C()
{
}

uint64_t LocationAlarmEntityRepresentation.deinit()
{
  v0 = _s19RemindersAppIntents05TypedB20EntityRepresentationCfd_0();

  return v0;
}

uint64_t LocationAlarmEntityRepresentation.__deallocating_deinit()
{
  _s19RemindersAppIntents05TypedB20EntityRepresentationCfd_0();
  sub_261CFCDA4();

  return swift_deallocClassInstance();
}

uint64_t sub_261C4A1DC(uint64_t a1)
{
  v3 = sub_261C4A678(&qword_27FEDD740, &protocol conformance descriptor for LocationAlarmEntityRepresentation);

  return MEMORY[0x28213DE00](a1, v1, v3);
}

uint64_t sub_261C4A238()
{
  v1 = sub_261C4A678(&qword_27FEDD730, &protocol conformance descriptor for LocationAlarmEntityRepresentation);

  return MEMORY[0x28213DB58](v0, v1);
}

uint64_t sub_261C4A284(uint64_t a1)
{
  v3 = sub_261C4A678(&qword_27FEDD740, &protocol conformance descriptor for LocationAlarmEntityRepresentation);

  return MEMORY[0x28213DDE8](a1, v1, v3);
}

uint64_t LocationAlarmEntityRepresentation.__allocating_init(appEntity:)(uint64_t *a1)
{
  sub_261C4A678(&qword_27FEDCA88, &protocol conformance descriptor for LocationAlarmEntityRepresentation);
  v1 = sub_261CFE9D4();
  sub_261CFCDA4();
  sub_261CFCA04();
  v6 = v4;
  LocationAlarmEntityRepresentation.MobileSpaceRepresentation.init(appEnum:)(&v5);
  sub_261CFCDA4();
  sub_261CFEBE4();

  sub_261CFCA04();
  v6 = v4;
  LocationAlarmEntityRepresentation.SpatialEventRepresentation.init(appEnum:)(&v5);
  sub_261CFCDA4();
  sub_261CFEBE4();

  sub_261CFCA04();

  v2 = v4;
  sub_261CFCDA4();
  sub_261CFEBE4();

  return v1;
}

uint64_t type metadata accessor for LocationAlarmEntityRepresentation(uint64_t a1)
{
  result = qword_27FEDD770;
  if (!qword_27FEDD770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_261C4A564(uint64_t a1)
{
  result = sub_261C4A678(&qword_27FEDCA88, &protocol conformance descriptor for LocationAlarmEntityRepresentation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_261C4A678(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LocationAlarmEntityRepresentation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_261C4A6BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = LocationAlarmEntityRepresentation.__allocating_init(appEntity:)(a1);
  *a2 = result;
  return result;
}

uint64_t ListEntity.init(representation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v211 = a2;
  v198 = sub_261CFEC94();
  MEMORY[0x28223BE20](v198);
  v199 = &v157 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_261CFD674();
  v204 = *(v4 - 8);
  v205 = v4;
  MEMORY[0x28223BE20](v4);
  v195 = &v157 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261CFD884();
  MEMORY[0x28223BE20](v6 - 8);
  v194 = &v157 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFFA44();
  MEMORY[0x28223BE20](v8 - 8);
  v193 = &v157 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_261CFD6A4();
  MEMORY[0x28223BE20](v10 - 8);
  v203 = &v157 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = type metadata accessor for ListEntity(0);
  v210 = *(v212 - 1);
  MEMORY[0x28223BE20](v212);
  v206 = (&v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (&v157 - v14);
  v209 = type metadata accessor for SectionEntity(0);
  v207 = *(v209 - 1);
  MEMORY[0x28223BE20](v209);
  v208 = (&v157 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v197 = &v157 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v196 = &v157 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v200 = (&v157 - v23);
  MEMORY[0x28223BE20](v22);
  v201 = &v157 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA00, &qword_261D035A8);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = (&v157 - v26);
  v28 = type metadata accessor for AppEntityID(0);
  v29 = *(v28 - 8);
  v30 = MEMORY[0x28223BE20](v28);
  v202 = &v157 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = (&v157 - v33);
  MEMORY[0x28223BE20](v32);
  v36 = &v157 - v35;
  sub_261CFEA04();
  __swift_project_boxed_opaque_existential_1(&v214, v217);
  v37 = sub_261CFEAB4();
  AppEntityID.init(entityIdentifierString:)(v37, v38, v27);
  __swift_destroy_boxed_opaque_existential_0(&v214);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_261AE6A40(v27, &qword_27FEDAA00, &qword_261D035A8);
LABEL_9:
    v44 = v210;
    if (qword_27FED9BF8 != -1)
    {
      swift_once();
    }

    v45 = sub_261CFF7A4();
    __swift_project_value_buffer(v45, qword_27FEDD780);
    v46 = sub_261CFF784();
    v47 = sub_261CFFE64();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_261AE2000, v46, v47, "Unable to convert representation to ListEntity", v48, 2u);
      MEMORY[0x26671D560](v48, -1, -1);
    }

    return (*(v44 + 56))(v211, 1, 1, v212);
  }

  sub_261C4CC90(v27, v36, type metadata accessor for AppEntityID);
  sub_261CFCDA4();
  sub_261CFEBD4();

  v39 = v215;
  v40 = a1;
  v41 = v36;
  if (!v215)
  {
    sub_261B7C200(v36);
    goto LABEL_9;
  }

  v42 = v214;
  sub_261CFCDA4();
  sub_261CFEBD4();

  v43 = v214;
  if (v214 == 2 || (sub_261CFCDA4(), sub_261CFEBD4(), , v214 == 2) || (v189 = v214, sub_261CFCDA4(), sub_261CFEBD4(), , v214 == 2))
  {
    sub_261B7C200(v41);

    goto LABEL_9;
  }

  v180 = v214;
  v182 = v39;
  v50 = *v41;
  v51 = v41[1];
  v52 = *v41 == 0x73694C44434D4552;
  v181 = v41;
  if (v52 && v51 == 0xE900000000000074 || (sub_261D00614() & 1) != 0)
  {
    v174 = 0;
  }

  else
  {
    if ((v50 != 0x616D5344434D4552 || v51 != 0xEE007473694C7472) && (sub_261D00614() & 1) == 0)
    {

      if (qword_27FED9BF8 != -1)
      {
        swift_once();
      }

      v71 = sub_261CFF7A4();
      __swift_project_value_buffer(v71, qword_27FEDD780);
      sub_261B7C0F0(v41, v34);
      v72 = sub_261CFF784();
      v73 = sub_261CFFE64();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v214 = v75;
        *v74 = 136315138;
        v76 = *v34;
        v77 = v34[1];
        sub_261CFD104();
        sub_261B7C200(v34);
        v78 = sub_261B879C8(v76, v77, &v214);

        *(v74 + 4) = v78;
        v41 = v181;
        _os_log_impl(&dword_261AE2000, v72, v73, "Unable to handle entity type %s", v74, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v75);
        MEMORY[0x26671D560](v75, -1, -1);
        MEMORY[0x26671D560](v74, -1, -1);
      }

      else
      {

        sub_261B7C200(v34);
      }

      sub_261B7C200(v41);
      v44 = v210;
      return (*(v44 + 56))(v211, 1, 1, v212);
    }

    v174 = 1;
  }

  sub_261B7C0F0(v41, v202);
  sub_261CFCDA4();
  sub_261CFEBD4();

  if (v214)
  {
    ColorEntity.init(representation:)(v214, &v214);
    v53 = v200;
    if (v215)
    {
      v184 = v220;
      v185 = v219;
      v186 = v218;
      v187 = v217;
      v190 = v215;
      v188 = v216;
      v177 = v214;
    }

    else
    {
      sub_261AF98C8(v214, 0, v216, v217, v218, v219, v220);
      v177 = 0;
      v190 = 0;
      v188 = 0;
      v187 = 0;
      v186 = 0;
      v185 = 0;
      v184 = 0;
    }
  }

  else
  {
    v177 = 0;
    v190 = 0;
    v188 = 0;
    v187 = 0;
    v186 = 0;
    v185 = 0;
    v184 = 0;
    v53 = v200;
  }

  sub_261CFCDA4();
  sub_261CFEBD4();

  if (v214)
  {
    ListBadgeEntity.init(representation:)(&v214);
    if (v215)
    {
      v175 = v218;
      v191 = v217;
      v192 = v215;
      v176 = v216;
      v200 = v214;
      goto LABEL_34;
    }

    sub_261AF9C70(v214, 0, v216, v217, v218);
  }

  v200 = 0;
  v192 = 0;
  v176 = 0;
  v191 = 0;
  v175 = 0;
LABEL_34:
  sub_261CFCDA4();
  sub_261CFEBD4();

  if (!v214)
  {
LABEL_37:
    v56 = type metadata accessor for GroupEntity(0);
    (*(*(v56 - 8) + 56))(v201, 1, 1, v56);
    goto LABEL_39;
  }

  GroupEntity.init(representation:)(v214, v53);
  v54 = type metadata accessor for GroupEntity(0);
  v55 = *(v54 - 8);
  if ((*(v55 + 48))(v53, 1, v54))
  {
    sub_261AE6A40(v53, &unk_27FEDD950, &unk_261D01440);
    goto LABEL_37;
  }

  v57 = v53;
  v58 = v201;
  sub_261C4CC90(v57, v201, type metadata accessor for GroupEntity);
  (*(v55 + 56))(v58, 0, 1, v54);
LABEL_39:
  sub_261CFCDA4();
  sub_261CFEBD4();

  v173 = v214;
  sub_261CFCDA4();
  sub_261CFEBD4();

  v59 = v214;
  v183 = v40;
  v179 = v42;
  v178 = v43;
  if (v214)
  {
    v60 = v214 & 0xFFFFFFFFFFFFFF8;
    if (v214 >> 62)
    {
      goto LABEL_66;
    }

    for (i = *((v214 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_261D00274())
    {
      v62 = 0;
      v63 = (v207 + 48);
      v64 = MEMORY[0x277D84F90];
      v65 = v60;
      while ((v59 & 0xC000000000000001) != 0)
      {
        v66 = MEMORY[0x26671CA10](v62, v59);
        v67 = v62 + 1;
        if (__OFADD__(v62, 1))
        {
          goto LABEL_64;
        }

LABEL_48:
        SectionEntity.init(representation:)(v66, v15);
        if ((*v63)(v15, 1, v209) == 1)
        {
          sub_261AE6A40(v15, &qword_27FEDA1E0, &unk_261D02300);
        }

        else
        {
          sub_261C4CC90(v15, v208, type metadata accessor for SectionEntity);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v64 = sub_261B41C94(0, v64[2] + 1, 1, v64);
          }

          v69 = v64[2];
          v68 = v64[3];
          v70 = v64;
          if (v69 >= v68 >> 1)
          {
            v70 = sub_261B41C94((v68 > 1), v69 + 1, 1, v64);
          }

          v70[2] = v69 + 1;
          v64 = v70;
          sub_261C4CC90(v208, v70 + ((*(v207 + 80) + 32) & ~*(v207 + 80)) + *(v207 + 72) * v69, type metadata accessor for SectionEntity);
          v60 = v65;
        }

        ++v62;
        if (v67 == i)
        {
          goto LABEL_68;
        }
      }

      if (v62 >= *(v60 + 16))
      {
        goto LABEL_65;
      }

      v66 = sub_261CFCDA4();
      v67 = v62 + 1;
      if (!__OFADD__(v62, 1))
      {
        goto LABEL_48;
      }

LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      ;
    }

    v64 = MEMORY[0x277D84F90];
LABEL_68:
  }

  else
  {
    v64 = 0;
  }

  sub_261CFCDA4();
  sub_261CFEBD4();

  v79 = v214;
  if (v214 != 2)
  {
    v213 = v214 & 1;
    ListEntity.ListLayout.init(representation:)(&v213);
    v79 = v221[0];
  }

  v171 = v79;
  sub_261CFCDA4();
  sub_261CFEBD4();

  v80 = v214;
  v207 = v64;
  if (v214 != 10)
  {
    v213 = v214;
    ListEntity.SortingStyle.init(representation:)(&v213);
    v80 = v221[0];
  }

  v169 = v80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED9F98, &qword_261D01460);
  v166 = sub_261AFF54C();
  v81 = sub_261CFCA44();
  v82 = v206;
  v172 = v81;
  *v206 = v81;
  v83 = v212[6];
  v84 = v212;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8C0, &qword_261D01468);
  v170 = sub_261CFCB24();
  *(v82 + v83) = v170;
  v168 = v84[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB020, &unk_261D01470);
  sub_261CFF9B4();
  sub_261CFD874();
  LODWORD(v209) = *MEMORY[0x277CC9110];
  v85 = v205;
  v86 = v204 + 104;
  v87 = *(v204 + 104);
  v88 = v195;
  v87(v195);
  v204 = v86;
  v89 = v203;
  sub_261CFD6B4();
  v90 = MEMORY[0x2667199E0](v89, &type metadata for UpdateListNameAppIntent);
  *(v82 + v168) = v90;
  v167 = v84[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD960, &qword_261D047C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v91 = v209;
  (v87)(v88, v209, v85);
  sub_261CFD6B4();
  v92 = sub_261AFF5A0();
  v168 = MEMORY[0x2667199D0](v89, &type metadata for UpdateListColorAppIntent, v92);
  *(v82 + v167) = v168;
  v165 = v212[9];
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD970, &qword_261D01480);
  sub_261CFF9B4();
  sub_261CFD874();
  v208 = v87;
  (v87)(v88, v91, v85);
  sub_261CFD6B4();
  v93 = sub_261AFF5F4();
  v167 = MEMORY[0x2667199D0](v89, &type metadata for UpdateListBadgeAppIntent, v93);
  *(v82 + v165) = v167;
  v94 = v212;
  v164 = v212[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD980, &qword_261D01488);
  sub_261CFF9B4();
  sub_261CFD874();
  (v87)(v88, v209, v85);
  v95 = v203;
  sub_261CFD6B4();
  v96 = sub_261C4CD40(&qword_280D22670, type metadata accessor for GroupEntity, &protocol conformance descriptor for GroupEntity);
  v165 = MEMORY[0x2667199D0](v95, &type metadata for UpdateListParentAppIntent, v96);
  *(v82 + v164) = v165;
  v163 = v94[11];
  v97 = v94;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD990, &qword_261D01490);
  sub_261CFF9B4();
  sub_261CFD874();
  v98 = v209;
  v99 = v205;
  (v208)(v88, v209, v205);
  sub_261CFD6B4();
  v164 = sub_261CFCA84();
  *(v82 + v163) = v164;
  v162 = v97[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB050, &qword_261D01498);
  sub_261CFF9B4();
  sub_261CFD874();
  v100 = v98;
  v101 = v99;
  v102 = v99;
  v103 = v208;
  (v208)(v88, v100, v101);
  sub_261CFD6B4();
  sub_261C4CD40(&qword_280D224E0, type metadata accessor for SectionEntity, &protocol conformance descriptor for SectionEntity);
  v163 = sub_261CFCA54();
  *(v82 + v162) = v163;
  v161 = v97[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB060, &qword_261D014A0);
  sub_261CFF9B4();
  sub_261CFD874();
  v104 = v209;
  (v103)(v88, v209, v102);
  v105 = v95;
  v106 = v88;
  sub_261CFD6B4();
  v162 = MEMORY[0x2667199F0](v105, &type metadata for UpdateListIsPinnedAppIntent);
  *(v82 + v161) = v162;
  v107 = v82;
  v160 = v97[14];
  v108 = v97;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9A0, &qword_261D014A8);
  sub_261CFF9B4();
  sub_261CFD874();
  v109 = v205;
  v110 = v208;
  (v208)(v106, v104, v205);
  v111 = v203;
  sub_261CFD6B4();
  v161 = MEMORY[0x2667199F0](v111, &type metadata for UpdateListShowsCompletedAppIntent);
  *(v107 + v160) = v161;
  v159 = v108[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB070, &unk_261D014B0);
  sub_261CFF9B4();
  sub_261CFD874();
  v112 = v209;
  v113 = v110;
  v110(v106, v209, v109);
  v114 = v203;
  sub_261CFD6B4();
  v115 = v114;
  v116 = MEMORY[0x2667199F0](v114, &type metadata for UpdateListAutoCategorizeAppIntent);
  v117 = v206;
  v160 = v116;
  *(v206 + v159) = v116;
  v118 = v212;
  v158 = v212[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9B0, &qword_261D03F00);
  sub_261CFF9B4();
  sub_261CFD874();
  v119 = v112;
  v120 = v205;
  v113(v106, v119, v205);
  sub_261CFD6B4();
  v121 = sub_261AFF648();
  v159 = MEMORY[0x2667199C0](v115, &type metadata for UpdateListListLayoutAppIntent, v121);
  *(v117 + v158) = v159;
  v157 = v118[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9C0, &unk_261D014C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v122 = v209;
  v123 = v208;
  (v208)(v106, v209, v120);
  sub_261CFD6B4();
  v124 = sub_261AFF69C();
  v158 = MEMORY[0x2667199C0](v115, &type metadata for UpdateListSortingStyleAppIntent, v124);
  v125 = v206;
  *(v206 + v157) = v158;
  v157 = v118[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9D0, &qword_261D03B00);
  sub_261CFF9B4();
  sub_261CFD874();
  v123(v106, v122, v205);
  sub_261CFD6B4();
  v126 = MEMORY[0x2667199C0](v115, &type metadata for UpdateListTypeAppIntent, v166);
  *(v125 + v157) = v126;
  v127 = v118;
  v128 = (v125 + v118[19]);
  *v128 = 0;
  v128[1] = 0;
  v129 = v118[20];
  *(v129 + v125) = 0;
  v130 = v127;
  sub_261B7C0F0(v202, v125 + v127[5]);
  v131 = v174;
  *(v125 + v130[21]) = v174;
  v208 = v129;
  v209 = v128;
  v205 = v126;
  if (v131)
  {
    v132 = sub_261D00614();
  }

  else
  {
    v132 = 1;
  }

  v133 = v132 & 1;
  type metadata accessor for AnyListEntityLazyImage(0);
  v134 = swift_allocObject();
  v214 = MEMORY[0x277D84F90];
  v135 = v176;
  v136 = v175;
  sub_261AF9C0C(v200, v192, v176, v191, v175);
  v137 = v177;
  v138 = v190;
  sub_261AF9844(v177, v190, v188, v187, v186, v185, v184);
  sub_261C4CD40(&qword_280D22D90, MEMORY[0x277D44D10], MEMORY[0x277D44D18]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9E0, &qword_261D014D0);
  sub_261B7C19C();
  sub_261D001D4();
  sub_261CFECB4();
  swift_allocObject();
  *(v134 + 128) = sub_261CFECA4();
  v139 = OBJC_IVAR____TtC19RemindersAppIntents22AnyListEntityLazyImage_cachedDisplayRepresentationImage;
  v140 = sub_261CFD074();
  (*(*(v140 - 8) + 56))(v134 + v139, 1, 1, v140);
  *(v134 + 16) = v133;
  *(v134 + 17) = *v221;
  *(v134 + 20) = *&v221[3];
  v141 = v192;
  *(v134 + 24) = v200;
  *(v134 + 32) = v141;
  v142 = v135;
  v143 = v191;
  *(v134 + 40) = v135;
  *(v134 + 48) = v143;
  v144 = v136;
  *(v134 + 56) = v136;
  *(v134 + 64) = v137;
  v145 = v137;
  v146 = v188;
  *(v134 + 72) = v138;
  *(v134 + 80) = v146;
  v147 = v187;
  v148 = v186;
  *(v134 + 88) = v187;
  *(v134 + 96) = v148;
  v149 = v185;
  v150 = v184;
  *(v134 + 104) = v185;
  *(v134 + 112) = v150;
  *(v134 + 120) = 256;
  *(v206 + v212[22]) = v134;
  LOBYTE(v214) = v178 & 1;
  sub_261CFD2E4();
  LOBYTE(v214) = v189 & 1;
  sub_261CFD2E4();
  LOBYTE(v214) = v180 & 1;
  sub_261CFD2E4();
  LOBYTE(v214) = v171;
  sub_261CFD2E4();
  LOBYTE(v214) = v169;
  sub_261CFD2E4();
  LOBYTE(v214) = 2;
  sub_261CFD2E4();
  v214 = v145;
  v215 = v190;
  v216 = v146;
  v217 = v147;
  v218 = v148;
  v219 = v149;
  v220 = v150;
  sub_261CFD2E4();
  v214 = v200;
  v215 = v192;
  v216 = v142;
  v217 = v191;
  v218 = v144;
  sub_261CFD2E4();
  v151 = v201;
  v152 = v196;
  sub_261B7CD38(v201, v196);
  sub_261B7CD38(v152, v197);
  sub_261CFD2E4();
  sub_261AE6A40(v152, &unk_27FEDD950, &unk_261D01440);
  v153 = v208;
  v154 = v209;
  *v209 = 0;
  v154[1] = 0;
  v155 = v206;
  *(v153 + v206) = 0;
  v214 = v173;
  sub_261CFCA14();
  v214 = v207;
  sub_261CFCA14();
  v214 = v179;
  v215 = v182;
  sub_261CFCA14();
  LOBYTE(v214) = 0;
  sub_261CFCA14();

  sub_261AE6A40(v151, &unk_27FEDD950, &unk_261D01440);
  sub_261B7C200(v202);
  v156 = v211;
  sub_261C4CC90(v155, v211, type metadata accessor for ListEntity);
  sub_261B7C200(v181);
  return (*(v210 + 56))(v156, 0, 1, v212);
}

uint64_t sub_261C4C7C4()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDD780);
  v1 = __swift_project_value_buffer(v0, qword_27FEDD780);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

RemindersAppIntents::ListEntity::ListLayout_optional __swiftcall ListEntity.ListLayout.init(representation:)(RemindersAppIntents::ListLayoutRepresentation representation)
{
  v2 = v1;
  v3 = sub_261D00554();

  if (v3)
  {
    if (v3 == 1)
    {
      v5 = 1;
    }

    else
    {
      if (qword_27FED9BF8 != -1)
      {
        swift_once();
      }

      v6 = sub_261CFF7A4();
      __swift_project_value_buffer(v6, qword_27FEDD780);
      v7 = sub_261CFF784();
      v8 = sub_261CFFE64();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_261AE2000, v7, v8, "Unable to convert representation to ListLayout", v9, 2u);
        MEMORY[0x26671D560](v9, -1, -1);
      }

      v5 = 2;
    }
  }

  else
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

RemindersAppIntents::ListEntity::SortingStyle_optional __swiftcall ListEntity.SortingStyle.init(representation:)(RemindersAppIntents::SortingStyleRepresentation representation)
{
  v2 = v1;
  v3 = *representation;
  if (v3 > 4)
  {
    v12 = 0x8000000261D141D0;
    v13 = 0xEE00676E69646E65;
    v14 = 0x637341656C746974;
    if (v3 != 8)
    {
      v14 = 0x736544656C746974;
      v13 = 0xEF676E69646E6563;
    }

    if (v3 == 7)
    {
      v14 = 0xD000000000000017;
    }

    else
    {
      v12 = v13;
    }

    v15 = 0xD000000000000014;
    if (v3 == 5)
    {
      v16 = 0x8000000261D14190;
    }

    else
    {
      v15 = 0xD000000000000017;
      v16 = 0x8000000261D141B0;
    }

    if (*representation <= 6u)
    {
      v10 = v15;
    }

    else
    {
      v10 = v14;
    }

    if (v3 <= 6)
    {
      v11 = v16;
    }

    else
    {
      v11 = v12;
    }
  }

  else
  {
    v4 = 0xE700000000000000;
    v5 = 0x746C7561666564;
    v6 = 0xD000000000000016;
    v7 = 0x8000000261D14130;
    v8 = 0xD000000000000016;
    v9 = 0x8000000261D14150;
    if (v3 != 3)
    {
      v8 = 0xD000000000000013;
      v9 = 0x8000000261D14170;
    }

    if (v3 != 2)
    {
      v6 = v8;
      v7 = v9;
    }

    if (*representation)
    {
      v5 = 0x6C61756E616DLL;
      v4 = 0xE600000000000000;
    }

    if (*representation <= 1u)
    {
      v10 = v5;
    }

    else
    {
      v10 = v6;
    }

    if (v3 <= 1)
    {
      v11 = v4;
    }

    else
    {
      v11 = v7;
    }
  }

  result.value = ListEntity.SortingStyle.init(rawValue:)(*&v10).value;
  if (v22 == 10)
  {
    if (qword_27FED9BF8 != -1)
    {
      swift_once();
    }

    v18 = sub_261CFF7A4();
    __swift_project_value_buffer(v18, qword_27FEDD780);
    v19 = sub_261CFF784();
    v20 = sub_261CFFE64();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_261AE2000, v19, v20, "Unable to convert representation to SortingStyle", v21, 2u);
      MEMORY[0x26671D560](v21, -1, -1);
    }
  }

  *v2 = v22;
  return result;
}

uint64_t sub_261C4CC90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_261C4CD40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t AppEnumMappable.init(appEnum:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v7 = sub_261D00154();
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x28223BE20](v7);
  v31 = a3;
  v32 = &v29 - v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_261D00154();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x28223BE20](v12);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v29 - v19;
  (*(v11 + 16))(v14, a1, v10);
  if ((*(v15 + 48))(v14, 1, AssociatedTypeWitness) == 1)
  {
    v21 = *(v11 + 8);
    v21(a1, v10);
    v21(v14, v10);
    v22 = *(a2 - 8);
  }

  else
  {
    (*(v15 + 32))(v20, v14, AssociatedTypeWitness);
    (*(v15 + 16))(v18, v20, AssociatedTypeWitness);
    v23 = v32;
    (*(v31 + 24))(v18, a2);
    (*(v11 + 8))(a1, v10);
    (*(v15 + 8))(v20, AssociatedTypeWitness);
    v22 = *(a2 - 8);
    v24 = v22;
    if (!(*(v22 + 48))(v23, 1, a2))
    {
      v28 = v33;
      (*(v22 + 32))(v33, v23, a2);
      v26 = v28;
      v25 = 0;
      return (*(v24 + 56))(v26, v25, 1, a2);
    }

    (*(v29 + 8))(v23, v30);
  }

  v24 = v22;
  v25 = 1;
  v26 = v33;
  return (*(v24 + 56))(v26, v25, 1, a2);
}

id sub_261C4D198()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB68, &unk_261D11C90);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_261CFD7E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261CFD914();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_261C4ED28(v2);
    v7 = sub_261CFD8F4();
    result = 0;
    if ((v9 & 1) == 0 && v7 >= 1)
    {
      return [objc_opt_self() recurrenceEndWithOccurrenceCount_];
    }
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v10 = sub_261CFD794();
    v11 = [objc_opt_self() recurrenceEndWithEndDate_];

    (*(v4 + 8))(v6, v3);
    return v11;
  }

  return result;
}

uint64_t Calendar.RecurrenceRule.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  MEMORY[0x28223BE20](v1 - 8);
  v36 = &v30 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v3 - 8);
  v35 = &v30 - v4;
  v5 = sub_261CFD674();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261CFD884();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_261CFFA44();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_261CFDA34();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_261CFD6A4();
  v32 = *(v15 - 8);
  v33 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v34 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v30 - v18;
  sub_261CFDA44();
  v20 = (*(v12 + 88))(v14, v11);
  if (v20 != *MEMORY[0x277CC98D0])
  {
    v31 = v5;
    if (v20 == *MEMORY[0x277CC98B0] || v20 == *MEMORY[0x277CC98A8])
    {
      sub_261CFF9B4();
      sub_261CFD874();
      (*(v6 + 104))(v8, *MEMORY[0x277CC9110], v31);
      goto LABEL_6;
    }

    if (v20 == *MEMORY[0x277CC98B8])
    {
      v25 = (v6 + 104);
      if (sub_261CFDA14() == 1)
      {
        v26 = sub_261CFDA24();
        v27 = sub_261C4DB88(v26);

        if (v27)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      if (v20 != *MEMORY[0x277CC98C8])
      {
        v25 = (v6 + 104);
        if (v20 != *MEMORY[0x277CC98C0])
        {
          sub_261CFF9B4();
          sub_261CFD874();
          (*v25)(v8, *MEMORY[0x277CC9110], v31);
          sub_261CFD6C4();
          (*(v12 + 8))(v14, v11);
          goto LABEL_7;
        }

LABEL_23:
        sub_261CFF9B4();
        sub_261CFD874();
        (*v25)(v8, *MEMORY[0x277CC9110], v31);
        sub_261CFD6C4();
        goto LABEL_7;
      }

      v28 = sub_261CFDA14();
      v25 = (v6 + 104);
      if (v28 != 1)
      {
        if (v28 != 6)
        {
          v29 = v31;
          v22 = v32;
          sub_261CFF9B4();
          sub_261CFD874();
          (*v25)(v8, *MEMORY[0x277CC9110], v29);
          sub_261CFD6C4();
          v21 = v33;
          goto LABEL_8;
        }

        goto LABEL_23;
      }
    }

    sub_261CFF9B4();
    sub_261CFD874();
    (*v25)(v8, *MEMORY[0x277CC9110], v31);
    goto LABEL_6;
  }

  sub_261CFF9B4();
  sub_261CFD874();
  (*(v6 + 104))(v8, *MEMORY[0x277CC9110], v5);
LABEL_6:
  sub_261CFD6C4();
LABEL_7:
  v22 = v32;
  v21 = v33;
LABEL_8:
  (*(v22 + 16))(v34, v19, v21);
  (*(v22 + 56))(v35, 1, 1, v21);
  v23 = sub_261CFD074();
  (*(*(v23 - 8) + 56))(v36, 1, 1, v23);
  sub_261CFD0A4();
  return (*(v22 + 8))(v19, v21);
}

uint64_t sub_261C4DB88(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD7B8, &qword_261D0EC68);
  v1 = sub_261CFD864();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_261D01400;
  v6 = *(v2 + 104);
  v6(v5 + v4, *MEMORY[0x277CC96E0], v1);
  v6(v5 + v4 + v3, *MEMORY[0x277CC96F0], v1);
  v13 = sub_261C4E95C(v5);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_261D06F90;
  v6(v7 + v4, *MEMORY[0x277CC96D8], v1);
  v6(v7 + v4 + v3, *MEMORY[0x277CC96E8], v1);
  v6(v7 + v4 + 2 * v3, *MEMORY[0x277CC9700], v1);
  v6(v7 + v4 + 3 * v3, *MEMORY[0x277CC96F8], v1);
  v6(v7 + v4 + 4 * v3, *MEMORY[0x277CC96D0], v1);
  v8 = sub_261C4E95C(v7);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD7C0, &unk_261D0EC70);
  sub_261C4EC7C();
  sub_261C4ECE0(&qword_27FEDA6B0, MEMORY[0x277CC9708], MEMORY[0x277CC9710]);
  v9 = sub_261CFFC04();
  v10 = sub_261C4E528(v9, v8);

  if (v10)
  {

    return 1;
  }

  else
  {
    v12 = sub_261C4E528(v9, v13);

    if (v12)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t static Calendar.RecurrenceRule.typeDisplayRepresentation.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12[-v1];
  v3 = sub_261CFD674();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_261CFD884();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_261CFFA44();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_261CFD6A4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v4 + 104))(v6, *MEMORY[0x277CC9110], v3);
  sub_261CFD6B4();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_261CFD224();
}

uint64_t sub_261C4E2A0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_261CFD9E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFD864();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v5 + 88))(v7, v4);
  if (v12 == *MEMORY[0x277CC9898])
  {
    (*(v5 + 96))(v7, v4);
LABEL_5:
    v13 = *(v9 + 32);
    v13(v11, v7, v8);
    v13(a2, v11, v8);
    return (*(v9 + 56))(a2, 0, 1, v8);
  }

  if (v12 == *MEMORY[0x277CC9890])
  {
    (*(v5 + 96))(v7, v4);
    v7 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD1E8, &qword_261D0DB10) + 48);
    goto LABEL_5;
  }

  (*(v9 + 56))(a2, 1, 1, v8);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_261C4E528(uint64_t a1, uint64_t a2)
{
  v4 = sub_261CFD864();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_261C4ECE0(&qword_27FEDA6B0, MEMORY[0x277CC9708], MEMORY[0x277CC9710]);
      v26 = sub_261CFF934();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_261C4ECE0(&qword_27FEDA6B8, MEMORY[0x277CC9708], MEMORY[0x277CC9718]);
        v31 = sub_261CFF974();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_261C4E8E0(uint64_t a1)
{
  v2 = sub_261C4ECE0(&qword_27FEDD7A0, MEMORY[0x277CC98D8], &protocol conformance descriptor for Calendar.RecurrenceRule);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_261C4E95C(uint64_t a1)
{
  v2 = sub_261CFD864();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD7D0, &qword_261D0EC80);
    v9 = sub_261D00314();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_261C4ECE0(&qword_27FEDA6B0, MEMORY[0x277CC9708], MEMORY[0x277CC9710]);
      v16 = sub_261CFF934();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_261C4ECE0(&qword_27FEDA6B8, MEMORY[0x277CC9708], MEMORY[0x277CC9718]);
          v23 = sub_261CFF974();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_261C4EC7C()
{
  result = qword_27FEDD7C8;
  if (!qword_27FEDD7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDD7C0, &unk_261D0EC70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD7C8);
  }

  return result;
}

uint64_t sub_261C4ECE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_261C4ED28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB68, &unk_261D11C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_261C4ED90(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 216) = a4;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  v9 = sub_261CFF734();
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA238, &qword_261D02480);
  *(v8 + 104) = v10;
  *(v8 + 112) = *(v10 - 8);
  *(v8 + 120) = swift_task_alloc();
  v11 = sub_261CFF6F4();
  *(v8 + 128) = v11;
  *(v8 + 136) = *(v11 - 8);
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C4EF38, 0, 0);
}

uint64_t sub_261C4EF38()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 168) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 40);
  if (*(v0 + 216))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 160);
  v9 = *(v0 + 128);
  v10 = *(v0 + 136);
  (*(v10 + 16))(*(v0 + 152), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 176) = sub_261CFF754();
  v11 = *(v10 + 8);
  *(v0 + 184) = v11;
  *(v0 + 192) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v9);
  v12 = swift_task_alloc();
  *(v0 + 200) = v12;
  *v12 = v0;
  v12[1] = sub_261C4F178;
  v13 = *(v0 + 120);
  v14 = *(v0 + 64);
  v15 = *(v0 + 72);
  v16 = *(v0 + 48);
  v17 = *(v0 + 56);

  return sub_261B06A94(v13, v16, v17, v14, v15);
}

uint64_t sub_261C4F178()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_261C6384C;
  }

  else
  {
    v2 = sub_261C63878;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261C4F28C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 40) = a2;
  *(v5 + 48) = a5;
  *(v5 + 192) = a4;
  *(v5 + 32) = a1;
  v6 = sub_261CFF734();
  *(v5 + 56) = v6;
  *(v5 + 64) = *(v6 - 8);
  *(v5 + 72) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA238, &qword_261D02480);
  *(v5 + 80) = v7;
  *(v5 + 88) = *(v7 - 8);
  *(v5 + 96) = swift_task_alloc();
  v8 = sub_261CFF6F4();
  *(v5 + 104) = v8;
  *(v5 + 112) = *(v8 - 8);
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C4F430, 0, 0);
}

uint64_t sub_261C4F430()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 144) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 40);
  if (*(v0 + 192))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 136);
  v9 = *(v0 + 104);
  v10 = *(v0 + 112);
  (*(v10 + 16))(*(v0 + 128), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 152) = sub_261CFF754();
  v11 = *(v10 + 8);
  *(v0 + 160) = v11;
  *(v0 + 168) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v9);
  v12 = swift_task_alloc();
  *(v0 + 176) = v12;
  *v12 = v0;
  v12[1] = sub_261C4F66C;
  v13 = *(v0 + 96);
  v14 = *(v0 + 48);

  return sub_261BC29F8(v13, v14);
}

uint64_t sub_261C4F66C()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_261C4F9D4;
  }

  else
  {
    v2 = sub_261C4F780;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261C4F780(uint64_t a1)
{
  v2 = sub_261CFF704();
  sub_261CFF744();
  v3 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v5 = *(v1 + 40);
    if ((*(v1 + 192) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = *(v1 + 64);
        v7 = *(v1 + 72);
        v8 = *(v1 + 56);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v6 + 88))(v7, v8) == *MEMORY[0x277D85B00])
        {
          v9 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v1 + 64) + 8))(*(v1 + 72), *(v1 + 56));
          v9 = "";
        }

        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v11, v5, v9, v10, 2u);
        MEMORY[0x26671D560](v10, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v1 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v12 = *(v1 + 160);
  v13 = *(v1 + 120);
  v15 = *(v1 + 96);
  v14 = *(v1 + 104);
  v17 = *(v1 + 80);
  v16 = *(v1 + 88);
  v18 = *(v1 + 48);
  v19 = *(v1 + 32);

  v12(v13, v14);
  (*(v16 + 32))(v19, v15, v17);
  sub_261BCD350(v18);

  v20 = *(v1 + 8);

  return v20();
}

uint64_t sub_261C4F9D4()
{
  v1 = *(v0 + 48);

  sub_261BCD350(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_261C4FA8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 144) = a5;
  *(v6 + 152) = a6;
  *(v6 + 320) = a4;
  *(v6 + 128) = a1;
  *(v6 + 136) = a2;
  v7 = sub_261CFF734();
  *(v6 + 160) = v7;
  *(v6 + 168) = *(v7 - 8);
  *(v6 + 176) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA238, &qword_261D02480);
  *(v6 + 184) = v8;
  *(v6 + 192) = *(v8 - 8);
  *(v6 + 200) = swift_task_alloc();
  v9 = sub_261CFF6F4();
  *(v6 + 208) = v9;
  *(v6 + 216) = *(v9 - 8);
  *(v6 + 224) = swift_task_alloc();
  *(v6 + 232) = swift_task_alloc();
  *(v6 + 240) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C4FC30, 0, 0);
}

uint64_t sub_261C4FC30()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 248) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  v4 = sub_261D00144();
  if ((v4 & 1) == 0)
  {
    goto LABEL_12;
  }

  v7 = *(v0 + 136);
  if (*(v0 + 320))
  {
LABEL_7:
    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return MEMORY[0x2822009F8](v4, v5, v6);
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 120);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v7)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v9, v7, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 240);
  v11 = *(v0 + 208);
  v12 = *(v0 + 216);
  (*(v12 + 16))(*(v0 + 232), v10, v11);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 256) = sub_261CFF754();
  v13 = *(v12 + 8);
  *(v0 + 264) = v13;
  *(v0 + 272) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v10, v11);
  sub_261CFFD24();
  *(v0 + 280) = sub_261CFFD14();
  v14 = sub_261CFFCF4();
  v6 = v15;
  *(v0 + 288) = v14;
  *(v0 + 296) = v15;
  v4 = sub_261C4FE68;
  v5 = v14;

  return MEMORY[0x2822009F8](v4, v5, v6);
}