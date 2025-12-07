uint64_t sub_228916E24(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_228916EB0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_228916EDC(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_228916FC4(char *result, int64_t a2, char a3, char *a4)
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
    sub_228917100(0, &qword_27D85B3F0, sub_2288D6B8C, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void sub_228917100(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228917164(uint64_t a1, uint64_t a2)
{
  sub_228917100(0, &qword_27D85BDD8, type metadata accessor for BloodOxygenMetadataStatistics, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_2289171F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_22892EFA8();
    v7 = sub_2288BAA64(&qword_2813DEE20, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B8]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_228917294(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2289172FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_228917364(uint64_t a1, uint64_t a2)
{
  sub_2289171F8(0, &qword_2813DECB8, MEMORY[0x277D83D00]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22891740C(uint64_t a1)
{
  sub_228917100(319, &qword_27D85BDD8, type metadata accessor for BloodOxygenMetadataStatistics, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2289174BC(uint64_t a1@<X8>)
{
  v117 = a1;
  v147 = sub_22892DDC8();
  v1 = *(v147 - 8);
  v2 = MEMORY[0x28223BE20](v147);
  v130 = &v109 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v129 = &v109 - v5;
  MEMORY[0x28223BE20](v4);
  v128 = &v109 - v6;
  v7 = sub_22892DEF8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v112 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v111 = &v109 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v109 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v109 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v127 = &v109 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v126 = &v109 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v125 = &v109 - v24;
  MEMORY[0x28223BE20](v23);
  v131 = &v109 - v25;
  sub_228918778(0, &qword_2813DFEE0, MEMORY[0x277CC9578]);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v132 = &v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v114 = &v109 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v133 = &v109 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v124 = &v109 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v109 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v123 = &v109 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v109 - v41;
  MEMORY[0x28223BE20](v40);
  v44 = &v109 - v43;
  v45 = *(v8 + 56);
  v45(&v109 - v43, 1, 1, v7);
  v141 = v45;
  v142 = v8 + 56;
  v45(v42, 1, 1, v7);
  v46 = [v146 primarySleepPeriod];
  if (!v46)
  {
    v94 = MEMORY[0x277CC9578];
    sub_228918DE4(v42, &qword_2813DFEE0, MEMORY[0x277CC9578]);
    sub_228918DE4(v44, &qword_2813DFEE0, v94);
    (*(v1 + 56))(v117, 1, 1, v147);
    return;
  }

  v143 = v42;
  v144 = v44;
  v113 = v46;
  v47 = [v46 segments];
  sub_228918D2C();
  v48 = sub_22892F218();

  v115 = v8;
  v116 = v1;
  v110 = v18;
  v109 = v15;
  if (v48 >> 62)
  {
    v49 = sub_22892F588();
    v50 = v131;
    v51 = v132;
    if (!v49)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v50 = v131;
    v51 = v132;
    if (!v49)
    {
      goto LABEL_35;
    }
  }

  if (v49 < 1)
  {
    __break(1u);
    return;
  }

  v52 = 0;
  v53 = v48 & 0xC000000000000001;
  v140 = (v115 + 48);
  v118 = (v115 + 32);
  v139 = (v115 + 8);
  v54 = &off_278609000;
  v121 = v48;
  v120 = v49;
  v119 = v48 & 0xC000000000000001;
  v122 = v37;
  v146 = (v116 + 8);
  do
  {
    if (v53)
    {
      v55 = MEMORY[0x22AAC3CC0](v52, v48);
    }

    else
    {
      v55 = *(v48 + 8 * v52 + 32);
    }

    v56 = v55;
    [v55 v54[489]];
    if (_HKCategoryValueSleepAnalysisIsAsleep())
    {
      sub_2288D3C38(v144, v37);
      v57 = *v140;
      v58 = (*v140)(v37, 1, v7);
      v138 = v57;
      if (v58 == 1)
      {
        v59 = [v56 dateInterval];
        v60 = v128;
        sub_22892DD68();

        sub_22892DD98();
        (*v146)(v60, v147);
        v61 = v57(v37, 1, v7);
        v62 = v118;
        if (v61 != 1)
        {
          sub_228918DE4(v37, &qword_2813DFEE0, MEMORY[0x277CC9578]);
        }
      }

      else
      {
        v62 = v118;
        (*v118)(v50, v37, v7);
      }

      v63 = [v56 dateInterval];
      v64 = v129;
      sub_22892DD68();

      v65 = v125;
      sub_22892DD98();
      v145 = *v146;
      v145(v64, v147);
      v134 = sub_2288CE514();
      v66 = sub_22892F028();
      v67 = MEMORY[0x277CC9578];
      v68 = v144;
      v69 = v56;
      sub_228918DE4(v144, &qword_2813DFEE0, MEMORY[0x277CC9578]);
      v70 = *v139;
      if (v66)
      {
        v71 = v50;
      }

      else
      {
        v71 = v65;
      }

      if (v66)
      {
        v72 = v65;
      }

      else
      {
        v72 = v50;
      }

      v137 = *v139;
      v70(v71, v7);
      v73 = *v62;
      v74 = v123;
      (*v62)(v123, v72, v7);
      v141(v74, 0, 1, v7);
      sub_228918D78(v74, v68, &qword_2813DFEE0, v67);
      v75 = v133;
      sub_2288D3C38(v143, v133);
      v76 = v138;
      v77 = v138(v75, 1, v7);
      v135 = v69;
      v136 = v73;
      if (v77 == 1)
      {
        v78 = [v69 dateInterval];
        v79 = v128;
        sub_22892DD68();

        v80 = v126;
        sub_22892DD78();
        v81 = v133;
        v145(v79, v147);
        v82 = v76(v81, 1, v7);
        v54 = &off_278609000;
        if (v82 != 1)
        {
          sub_228918DE4(v81, &qword_2813DFEE0, MEMORY[0x277CC9578]);
        }
      }

      else
      {
        v80 = v126;
        v73(v126, v75, v7);
        v54 = &off_278609000;
      }

      v83 = v135;
      v84 = [v135 dateInterval];
      v85 = v130;
      sub_22892DD68();

      v86 = v127;
      sub_22892DD78();
      v145(v85, v147);
      v87 = sub_22892F038();

      v88 = v80;
      v89 = MEMORY[0x277CC9578];
      v90 = v143;
      sub_228918DE4(v143, &qword_2813DFEE0, MEMORY[0x277CC9578]);
      if (v87)
      {
        v91 = v88;
      }

      else
      {
        v91 = v86;
      }

      if (v87)
      {
        v92 = v86;
      }

      else
      {
        v92 = v88;
      }

      v137(v91, v7);
      v93 = v124;
      v136(v124, v92, v7);
      v141(v93, 0, 1, v7);
      sub_228918D78(v93, v90, &qword_2813DFEE0, v89);
      v50 = v131;
      v51 = v132;
      v37 = v122;
      v48 = v121;
      v49 = v120;
      v53 = v119;
    }

    else
    {
    }

    ++v52;
  }

  while (v49 != v52);
LABEL_35:

  v95 = v114;
  sub_2288D3C38(v144, v114);
  v96 = v115;
  v97 = *(v115 + 48);
  if (v97(v95, 1, v7) == 1)
  {

    v98 = v117;
    v99 = v116;
LABEL_39:
    v104 = MEMORY[0x277CC9578];
    sub_228918DE4(v143, &qword_2813DFEE0, MEMORY[0x277CC9578]);
    sub_228918DE4(v144, &qword_2813DFEE0, v104);
    sub_228918DE4(v95, &qword_2813DFEE0, v104);
    (*(v99 + 56))(v98, 1, 1, v147);
    return;
  }

  v100 = *(v96 + 32);
  v101 = v110;
  v100(v110, v95, v7);
  sub_2288D3C38(v143, v51);
  v102 = v97(v51, 1, v7);
  v98 = v117;
  v103 = v51;
  v99 = v116;
  if (v102 == 1)
  {

    (*(v96 + 8))(v101, v7);
    v95 = v103;
    goto LABEL_39;
  }

  v105 = v109;
  v100(v109, v103, v7);
  v106 = *(v96 + 16);
  v106(v111, v101, v7);
  v106(v112, v105, v7);
  sub_22892DD88();

  v107 = *(v96 + 8);
  v107(v105, v7);
  v107(v101, v7);
  v108 = MEMORY[0x277CC9578];
  sub_228918DE4(v143, &qword_2813DFEE0, MEMORY[0x277CC9578]);
  sub_228918DE4(v144, &qword_2813DFEE0, v108);
  (*(v99 + 56))(v98, 0, 1, v147);
}

void sub_2289181B4(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_22892E538();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228918778(0, &qword_2813DFEF0, MEMORY[0x277CC88A8]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v33 - v8;
  v10 = sub_22892E048();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_22892EFA8();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228918778(0, &qword_2813DFEE0, MEMORY[0x277CC9578]);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v33 - v18;
  v20 = [v1 summaryFilteredToPrimaryPeriod];
  if (v20)
  {
    v21 = v20;
    v34 = v3;
    [v20 sleepDuration];
    if (v22 <= COERCE_DOUBLE(1))
    {
      [v2 morningIndex];
      sub_22892EED8();
      v30 = [v2 calendar];
      sub_22892E018();

      v31 = sub_22892DDC8();
      (*(*(v31 - 8) + 56))(v9, 1, 1, v31);
      v32 = sub_22892DEF8();
      (*(*(v32 - 8) + 56))(v19, 1, 1, v32);
      (*(v4 + 104))(v6, *MEMORY[0x277D0FF70], v34);
      sub_22892E568();
    }

    else
    {
      sub_2289187CC(v21, v2, v19);
      [v2 morningIndex];
      v33[1] = v13;
      sub_22892EED8();
      v23 = [v2 calendar];
      sub_22892E018();

      v24 = [objc_opt_self() secondUnit];
      [v21 sleepDuration];
      v26 = [objc_opt_self() quantityWithUnit:v24 doubleValue:v25];

      sub_2289174BC(v9);
      sub_2288D3C38(v19, v17);
      (*(v4 + 104))(v6, *MEMORY[0x277D0FF78], v34);
      sub_22892E568();

      sub_228918DE4(v19, &qword_2813DFEE0, MEMORY[0x277CC9578]);
    }
  }

  else
  {
    [v1 morningIndex];
    sub_22892EED8();
    v27 = [v1 calendar];
    sub_22892E018();

    v28 = sub_22892DDC8();
    (*(*(v28 - 8) + 56))(v9, 1, 1, v28);
    v29 = sub_22892DEF8();
    (*(*(v29 - 8) + 56))(v19, 1, 1, v29);
    (*(v4 + 104))(v6, *MEMORY[0x277D0FF70], v3);
    sub_22892E568();
  }
}

void sub_228918778(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22892F498();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2289187CC@<X0>(void *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v46 = a2;
  v51 = a3;
  v4 = sub_22892E048();
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x28223BE20](v4);
  v47 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_22892EFA8();
  v45 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22892DDC8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228918778(0, &qword_2813DFEF0, MEMORY[0x277CC88A8]);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - v15;
  v17 = sub_22892DEF8();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v43 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v40 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v40 - v24;
  v26 = [a1 creationInterval];
  if (v26)
  {
    v27 = v26;
    sub_22892DD68();

    (*(v8 + 56))(v14, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(v14, 1, 1, v7);
  }

  sub_228918D78(v14, v16, &qword_2813DFEF0, MEMORY[0x277CC88A8]);
  if ((*(v8 + 48))(v16, 1, v7) == 1)
  {
    sub_228918DE4(v16, &qword_2813DFEF0, MEMORY[0x277CC88A8]);
    v28 = 1;
    v29 = v51;
  }

  else
  {
    sub_22892DD78();
    v41 = *(v8 + 8);
    v41(v16, v7);
    v42 = *(v18 + 32);
    v42(v25, v23, v17);
    v30 = v46;
    [v46 morningIndex];
    v31 = v44;
    sub_22892EED8();
    v32 = [v30 calendar];
    v33 = v47;
    sub_22892E018();

    sub_22892EEC8();
    (*(v49 + 8))(v33, v50);
    (*(v45 + 8))(v31, v48);
    v34 = v43;
    sub_22892DD78();
    v41(v10, v7);
    sub_2288CE514();
    v35 = sub_22892F028();
    v36 = (v35 & 1) == 0;
    if (v35)
    {
      v37 = v25;
    }

    else
    {
      v37 = v34;
    }

    if (v36)
    {
      v38 = v25;
    }

    else
    {
      v38 = v34;
    }

    (*(v18 + 8))(v37, v17);
    v29 = v51;
    v42(v51, v38, v17);
    v28 = 0;
  }

  return (*(v18 + 56))(v29, v28, 1, v17);
}

unint64_t sub_228918D2C()
{
  result = qword_2813DEC00;
  if (!qword_2813DEC00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813DEC00);
  }

  return result;
}

uint64_t sub_228918D78(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_228918778(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_228918DE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_228918778(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_228918E40(void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  LODWORD(v132) = a3;
  v134 = a1;
  sub_2288BB4E0(0);
  v110 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v109 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v104 = &v104 - v9;
  sub_2288B4B3C(0);
  v106 = v10;
  MEMORY[0x28223BE20](v10);
  v107 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_22892E828();
  v114 = *(v115 - 8);
  v12 = MEMORY[0x28223BE20](v115);
  v108 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v112 = &v104 - v14;
  v113 = sub_22892E858();
  v111 = *(v113 - 8);
  v15 = MEMORY[0x28223BE20](v113);
  v105 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v131 = &v104 - v17;
  v18 = sub_22892EFA8();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v120 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v122 = &v104 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v121 = &v104 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v124 = &v104 - v27;
  MEMORY[0x28223BE20](v26);
  v133 = &v104 - v28;
  v29 = sub_22892E7F8();
  v129 = *(v29 - 8);
  v130 = v29;
  v30 = MEMORY[0x28223BE20](v29);
  v119 = &v104 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v127 = &v104 - v32;
  v128 = sub_22892E7D8();
  v126 = *(v128 - 8);
  v33 = MEMORY[0x28223BE20](v128);
  v116 = &v104 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v125 = &v104 - v35;
  sub_2288BF284(0);
  v37 = MEMORY[0x28223BE20](v36 - 8);
  v118 = &v104 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v104 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v44 = &v104 - v43;
  MEMORY[0x28223BE20](v42);
  v46 = &v104 - v45;
  v47 = OBJC_IVAR____TtC19HealthBalanceDaemon22EWMABaselineCalculator_firstDayWithData;
  swift_beginAccess();
  sub_2288C33E4(v4 + v47, v46, sub_2288BF284);
  v117 = *(v19 + 48);
  v48 = v117(v46, 1, v18);
  v49 = v46;
  v50 = a2;
  sub_22891A3A0(v49);
  if (v48 == 1 && (v132 & 1) == 0)
  {
    (*(v19 + 16))(v44, a2, v18);
    (*(v19 + 56))(v44, 0, 1, v18);
    swift_beginAccess();
    sub_2288EEC4C(v44, v4 + v47);
    swift_endAccess();
  }

  v51 = OBJC_IVAR____TtC19HealthBalanceDaemon22EWMABaselineCalculator_lastDayIndex;
  v52 = (v19 + 16);
  v132 = *(v19 + 16);
  v132(v44, v50, v18);
  (*(v19 + 56))(v44, 0, 1, v18);
  swift_beginAccess();
  sub_2288EEC4C(v44, v4 + v51);
  swift_endAccess();
  [v134 _value];
  v54 = v53;
  v55 = v4[7];
  v56 = *(v55 + 16);
  v57 = 0.0;
  v58 = 0.0;
  if (v56)
  {
    v58 = *(v55 + 8 * v56 + 24) * 0.931034483;
  }

  [v134 _value];
  v60 = v59;
  v61 = v4[8];
  v62 = *(v61 + 16);
  if (v62)
  {
    v57 = *(v61 + 8 * v62 + 24) * 0.75;
  }

  v123 = v19;
  v63 = v54 * 0.0689655172;
  v64 = v4[7];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4[7] = v64;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v64 = sub_2288D6184(0, *(v64 + 2) + 1, 1, v64);
    v4[7] = v64;
  }

  v66 = v63 + v58;
  v68 = *(v64 + 2);
  v67 = *(v64 + 3);
  if (v68 >= v67 >> 1)
  {
    v64 = sub_2288D6184((v67 > 1), v68 + 1, 1, v64);
  }

  v69 = v60 * 0.25;
  *(v64 + 2) = v68 + 1;
  *&v64[8 * v68 + 32] = v66;
  v4[7] = v64;
  v70 = v4[8];
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v4[8] = v70;
  if ((v71 & 1) == 0)
  {
    v70 = sub_2288D6184(0, *(v70 + 2) + 1, 1, v70);
    v4[8] = v70;
  }

  v72 = v69 + v57;
  v74 = *(v70 + 2);
  v73 = *(v70 + 3);
  if (v74 >= v73 >> 1)
  {
    v70 = sub_2288D6184((v73 > 1), v74 + 1, 1, v70);
  }

  *(v70 + 2) = v74 + 1;
  *&v70[8 * v74 + 32] = v72;
  v4[8] = v70;
  v75 = [v134 _unit];
  v76 = v4[8];
  v77 = *(v76 + 16);
  if (v77)
  {
    v78 = *(v76 + 8 * v77 + 24);
  }

  else
  {
    v78 = 0.0;
  }

  v79 = [objc_opt_self() quantityWithUnit:v75 doubleValue:v78];

  v80 = v125;
  sub_22892E7C8();
  v132(v133, v50, v18);
  sub_2288C33E4(v4 + v47, v41, sub_2288BF284);
  v81 = v123;
  v82 = v127;
  sub_22892E7E8();
  (*(v126 + 16))(v116, v80, v128);
  (*(v129 + 16))(v119, v82, v130);
  sub_22892E848();
  v83 = v132;
  v132(v124, v50, v18);
  v84 = v118;
  sub_2288C33E4(v4 + v47, v118, sub_2288BF284);
  v85 = v117;
  if (v117(v84, 1, v18) == 1)
  {
    v86 = v121;
    v83(v121, v50, v18);
    v87 = v85(v84, 1, v18);
    v88 = v122;
    if (v87 != 1)
    {
      sub_22891A3A0(v84);
    }
  }

  else
  {
    v86 = v121;
    (*(v81 + 32))(v121, v84, v18);
    v88 = v122;
  }

  v89 = v120;
  sub_22892EED8();
  sub_22892EEF8();
  v90 = *(v81 + 8);
  v90(v89, v18);
  sub_2288BAAAC(&qword_2813DEE20, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B8]);
  if ((sub_22892F048() & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  v91 = *(v81 + 32);
  v134 = v4;
  v92 = v104;
  v91(v104, v86, v18);
  v93 = v110;
  v91((v92 + *(v110 + 48)), v88, v18);
  v94 = v109;
  sub_2288C33E4(v92, v109, sub_2288BB4E0);
  v95 = *(v93 + 48);
  v96 = v107;
  v91(v107, v94, v18);
  v90((v94 + v95), v18);
  sub_22891A3FC(v92, v94);
  v91(&v96[*(v106 + 36)], (v94 + *(v93 + 48)), v18);
  v97 = v134;
  v98 = v94;
  v52 = v112;
  v99 = v131;
  v90(v98, v18);
  v86 = v111;
  v90 = v113;
  (*(v111 + 2))(v105, v99, v113);
  sub_22892E818();
  v50 = v114;
  v81 = v115;
  (*(v114 + 16))(v108, v52, v115);
  sub_2288C351C(0);
  v101 = objc_allocWithZone(v100);
  sub_22892EE58();
  v102 = swift_beginAccess();
  MEMORY[0x22AAC3860](v102);
  if (*((v97[9] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97[9] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_27:
    sub_22892F228();
    v99 = v131;
  }

  sub_22892F258();
  swift_endAccess();
  (*(v50 + 8))(v52, v81);
  (*(v86 + 1))(v99, v90);
  (*(v129 + 8))(v127, v130);
  return (*(v126 + 8))(v125, v128);
}

uint64_t sub_228919C44(uint64_t *a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4)
{
  v38 = a4;
  v40 = a3;
  v41 = a2;
  sub_2288BF284(0);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22892EFA8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v36 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v35 - v11;
  v13 = sub_22892E828();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  sub_22892EE68();
  sub_22892E808();
  v18 = *(v14 + 8);
  v18(v16, v13);
  LOBYTE(a1) = sub_22892EEE8();
  v37 = v8;
  v19 = v8 + 8;
  v20 = *(v8 + 8);
  v41 = v7;
  v21 = v7;
  v22 = v19;
  v20(v12, v21);
  if (a1 & 1) != 0 || (v35[2] = v17, sub_22892EE68(), sub_22892E808(), v18(v16, v13), v23 = sub_2288BAAAC(&qword_2813DEE20, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B8]), v24 = v41, v35[1] = v23, v25 = sub_22892F018(), v40 = v20, v20(v12, v24), (v25))
  {
    v26 = 0;
  }

  else
  {
    v35[0] = v22;
    v28 = OBJC_IVAR____TtC19HealthBalanceDaemon22EWMABaselineCalculator_firstDayWithData;
    v29 = v38;
    swift_beginAccess();
    v30 = v29 + v28;
    v31 = v37;
    v32 = v39;
    sub_2288C33E4(v30, v39, sub_2288BF284);
    if ((*(v31 + 48))(v32, 1, v24) == 1)
    {
      sub_22891A3A0(v32);
      v26 = 0;
    }

    else
    {
      v33 = v36;
      (*(v31 + 32))(v36, v32, v24);
      sub_22892EE68();
      sub_22892E808();
      v18(v16, v13);
      v26 = sub_22892F038();
      v34 = v40;
      v40(v12, v24);
      v34(v33, v24);
    }
  }

  return v26 & 1;
}

uint64_t sub_22891A034()
{

  sub_22891A3A0(v0 + OBJC_IVAR____TtC19HealthBalanceDaemon22EWMABaselineCalculator_firstDayWithData);
  sub_22891A3A0(v0 + OBJC_IVAR____TtC19HealthBalanceDaemon22EWMABaselineCalculator_lastDayIndex);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EWMABaselineCalculator(uint64_t a1)
{
  result = qword_27D85BE30;
  if (!qword_27D85BE30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22891A114(uint64_t a1)
{
  sub_2288BF284(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_22891A1D4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = 14;
  v7 = MEMORY[0x277D84F90];
  *(v6 + 24) = xmmword_228932AC0;
  *(v6 + 56) = v7;
  *(v6 + 64) = v7;
  *(v6 + 72) = v7;
  v8 = OBJC_IVAR____TtC19HealthBalanceDaemon22EWMABaselineCalculator_firstDayWithData;
  v9 = sub_22892EFA8();
  v10 = *(*(v9 - 8) + 56);
  v10(v6 + v8, 1, 1, v9);
  result = (v10)(v6 + OBJC_IVAR____TtC19HealthBalanceDaemon22EWMABaselineCalculator_lastDayIndex, 1, 1, v9);
  *(v6 + 40) = a1;
  *(v6 + 48) = a2 & 1;
  *a3 = v6;
  return result;
}

uint64_t sub_22891A2F0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 72);
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v5;

  return sub_2288D5E2C(sub_22891A37C, v8, v6);
}

uint64_t sub_22891A3A0(uint64_t a1)
{
  sub_2288BF284(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22891A3FC(uint64_t a1, uint64_t a2)
{
  sub_2288BB4E0(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22891A460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SleepingSampleBaselineCalculator(319, *(a1 + 80), *(*(*(a1 + 88) + 8) + 8), a4);
  if (v4 <= 0x3F)
  {
    sub_2288FC574(319);
    if (v5 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_22891A540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 96);
  v6 = type metadata accessor for SleepingSampleBaselineCalculator(0, *(*v4 + 80), *(*(*(*v4 + 88) + 8) + 8), a4);
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  swift_unknownObjectRelease();
  sub_22891B844(v4 + *(*v4 + 112), sub_2288FC574);
  return v4;
}

uint64_t sub_22891A62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22891A540(a1, a2, a3, a4);

  return swift_deallocClassInstance();
}

BOOL sub_22891A69C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*a1)
  {
    if (v4)
    {
      sub_2288BC0FC(0, &qword_27D85BE40, 0x277CCD800);
      v6 = v4;
      v7 = v2;
      v8 = sub_22892F468();

      if (v8)
      {
        return v3 == v5;
      }
    }
  }

  else if (!v4)
  {
    return v3 == v5;
  }

  return 0;
}

uint64_t sub_22891A730(uint64_t a1)
{
  v38 = a1;
  v2 = sub_22892EEA8();
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x28223BE20](v2);
  v32 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22892EEB8();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x28223BE20](v4);
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22892DEF8();
  v7 = MEMORY[0x28223BE20](v6 - 8);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22892DDC8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 24);
  v13 = v12;
  if (v12 == 1)
  {
    v13 = sub_22891AB50();
    v14 = *(v1 + 24);
    *(v1 + 24) = v13;
    *(v1 + 32) = v15;
    sub_2288C4298(v14);
    if (v13 == 1)
    {
      return 0;
    }

    v16 = v13;
  }

  if (v13)
  {
    sub_22891B834(v12);
    v17 = v13;
    v18 = [v17 startDate];
    sub_22892DEC8();

    v19 = [v17 endDate];
    sub_22892DEC8();

    sub_22892DD88();
    LOBYTE(v19) = sub_22892DD28();
    (*(v9 + 8))(v11, v8);
    if ((v19 & 1) == 0)
    {
      goto LABEL_11;
    }

    v20 = v35;
    sub_22892EE88();
    v22 = v36;
    v21 = v37;
    v23 = (*(v36 + 88))(v20, v37);
    if (v23 == *MEMORY[0x277CCB688])
    {
      (*(v22 + 96))(v20, v21);
      v24 = v32;
      v25 = v33;
      v26 = v34;
      (*(v33 + 32))(v32, v20, v34);
      v27 = sub_22892EE98();

      (*(v25 + 8))(v24, v26);
      return v27;
    }

    if (v23 == *MEMORY[0x277CCB690] || v23 == *MEMORY[0x277CCB6A0])
    {
LABEL_11:
    }

    else
    {
      v29 = *MEMORY[0x277CCB698];
      v30 = v23;

      if (v30 != v29)
      {
        (*(v22 + 8))(v20, v21);
      }
    }
  }

  else
  {
    sub_22891B834(v12);
  }

  return 0;
}

void *sub_22891AB50()
{
  v1 = v0;
  v2 = sub_22892EDE8();
  MEMORY[0x28223BE20](v2);
  sub_2288BC0FC(0, &qword_2813DEC40, 0x277CCD830);
  v3 = MEMORY[0x22AAC3A10](*MEMORY[0x277CCC938]);
  sub_22891B578(v3, *(v1 + 16), 0);
  v5 = v4;

  result = v5;
  if (v5)
  {
    sub_22891AE40(v5);
    return v5;
  }

  return result;
}

id sub_22891AE40(void *a1)
{
  v57[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22892DEF8();
  v51 = *(v2 - 8);
  v52 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v3);
  v5 = v46 - v4;
  v6 = sub_22892DDC8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v46 - v11;
  v13 = sub_2288BC0FC(0, &qword_2813DEC40, 0x277CCD830);
  v49 = *MEMORY[0x277CCC938];
  v50 = v13;
  v14 = MEMORY[0x22AAC3A10]();
  v15 = [v14 _rollingBaselineConfiguration];

  if (!v15)
  {
    __break(1u);
  }

  v16 = [a1 startDate];
  sub_22892DEC8();

  v17 = [a1 endDate];
  sub_22892DEC8();

  sub_22892DD88();
  v54 = v12;
  sub_22892F448();

  v18 = *(v7 + 8);
  v55 = v7 + 8;
  v18(v10, v6);
  v19 = [a1 sourceRevision];
  v20 = [v19 source];

  v21 = *(v56 + 16);
  v22 = [v21 sourceManager];
  v23 = [v20 bundleIdentifier];
  if (!v23)
  {
    sub_22892F0C8();
    v23 = sub_22892F098();
  }

  v57[0] = 0;
  v24 = [v22 allSourcesForBundleIdentifier:v23 error:v57];

  v25 = v57[0];
  if (v24)
  {
    v47 = v20;
    v48 = v18;
    v56 = v6;
    v46[3] = sub_2288BC0FC(0, &qword_27D85BE48, 0x277D10878);
    v46[2] = sub_22891B510();
    v46[1] = sub_22892F2A8();
    v26 = v25;

    v49 = MEMORY[0x22AAC3A10](v49);
    sub_22891B7DC(0, &qword_2813DE950, MEMORY[0x277D84560]);
    v27 = swift_allocObject();
    v50 = v21;
    v28 = v27;
    *(v27 + 16) = xmmword_228931EA0;
    v29 = v54;
    sub_22892DD98();
    v30 = sub_22892DE58();
    v31 = v52;
    v23 = (v51 + 8);
    v32 = *(v51 + 8);
    v32(v5, v52);
    v33 = HDSampleEntityPredicateForStartDate();

    v34 = sub_2288BC0FC(0, &qword_2813DEC18, 0x277D10B70);
    v28[7] = v34;
    v28[4] = v33;
    sub_22892DD78();
    v35 = sub_22892DE58();
    v32(v5, v31);
    v36 = HDSampleEntityPredicateForStartDate();

    v28[11] = v34;
    v28[8] = v36;
    v37 = v49;
    v38 = sub_22892F298();

    v39 = HDDataEntityPredicateForSourceEntitySet();

    v28[15] = v34;
    v28[12] = v39;
    v40 = sub_22892F208();

    v41 = [objc_opt_self() predicateMatchingAllPredicates_];

    v42 = v53;
    v43 = sub_22891B70C(v37, v50, v41);
    if (!v42)
    {
      v23 = v43;
    }

    v48(v29, v56);
  }

  else
  {
    v44 = v57[0];
    sub_22892DE38();

    swift_willThrow();
    v18(v54, v6);
  }

  return v23;
}

uint64_t sub_22891B454(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_22891B4B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_22891B510()
{
  result = qword_27D85BE50;
  if (!qword_27D85BE50)
  {
    sub_2288BC0FC(255, &qword_27D85BE48, 0x277D10878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D85BE50);
  }

  return result;
}

void sub_22891B578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  sub_2288BC0FC(0, &qword_27D85BDF8, 0x277D10810);
  *&v10 = 0;
  v6 = [swift_getObjCClassFromMetadata() mostRecentSampleWithType:a1 profile:a2 encodingOptions:0 predicate:a3 anchor:0 error:&v10];
  v7 = v10;
  if (v6)
  {
    v8 = v10;
    sub_22892F4F8();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    v9 = v7;
  }

  v12 = v10;
  v13 = v11;
  if (v7)
  {
    if (!*(&v13 + 1))
    {
      swift_willThrow();
      sub_2288DB2A4(&v12);

      return;
    }
  }

  v10 = v12;
  v11 = v13;
  if (*(&v13 + 1))
  {
    sub_2288BC0FC(0, &qword_27D85BE40, 0x277CCD800);
    swift_dynamicCast();
  }

  else
  {
    sub_2288DB2A4(&v10);
  }
}

id sub_22891B70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  sub_2288BC0FC(0, &qword_27D85BDF8, 0x277D10810);
  v11[0] = 0;
  result = [swift_getObjCClassFromMetadata() countOfSamplesWithType:a1 profile:a2 matchingPredicate:a3 withError:v11];
  v7 = v11[0];
  if (v11[0])
  {
    v8 = result == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = result;
    swift_willThrow();
    v10 = v7;
    return v9;
  }

  return result;
}

void sub_22891B7DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D84F70] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_22891B834(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_22891B844(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22891B8A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v83[1] = *MEMORY[0x277D85DE8];
  v3 = sub_22892EDE8();
  v80 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v79 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v71 - v6;
  v8 = sub_22892DFA8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v71 - v13;
  sub_22891C618(0, &qword_2813DFEC8, MEMORY[0x277CC9698], MEMORY[0x277D83D88]);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v71 - v19;
  v78 = *MEMORY[0x277CCC0F8];
  v82 = [a1 featureAvailabilityProvidingForFeatureIdentifier_];
  if (!v82)
  {
    goto LABEL_6;
  }

  v72 = *MEMORY[0x277CCC0B0];
  v77 = [a1 featureAvailabilityProvidingForFeatureIdentifier_];
  if (!v77)
  {
    swift_unknownObjectRelease();
LABEL_6:
    sub_22892EDC8();
    v26 = sub_22892EDD8();
    v27 = sub_22892F388();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v83[0] = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_2288B748C(0xD000000000000023, 0x8000000228935420, v83);
      _os_log_impl(&dword_2288B2000, v26, v27, "[%{public}s] Unable to find feature availability providing", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x22AAC47E0](v29, -1, -1);
      MEMORY[0x22AAC47E0](v28, -1, -1);
    }

    (*(v80 + 8))(v7, v3);
    goto LABEL_9;
  }

  v76 = v3;
  sub_22892DF98();
  sub_22892DF88();
  v74 = *(v9 + 8);
  v75 = v9 + 8;
  v74(v14, v8);
  v21 = sub_22892DF78();
  v22 = *(v21 - 8);
  v73 = *(v22 + 48);
  if (v73(v20, 1, v21) == 1)
  {
    sub_22891C58C(v20);
    v23 = a1;
    v24 = v82;
    swift_unknownObjectRetain();
    v25 = 0;
  }

  else
  {
    sub_22892DF68();
    (*(v22 + 8))(v20, v21);
    v34 = a1;
    v24 = v82;
    swift_unknownObjectRetain();
    v25 = sub_22892F098();
  }

  v35 = [objc_allocWithZone(MEMORY[0x277CCD460]) initWithFeatureAvailabilityProviding:v24 healthDataSource:a1 currentCountryCode:v25];
  swift_unknownObjectRelease();

  sub_22892DF98();
  sub_22892DF88();
  v74(v12, v8);
  if (v73(v18, 1, v21) == 1)
  {
    sub_22891C58C(v18);
    v36 = a1;
    v37 = v77;
    swift_unknownObjectRetain();
    v38 = 0;
  }

  else
  {
    sub_22892DF68();
    (*(v22 + 8))(v18, v21);
    v39 = a1;
    v37 = v77;
    swift_unknownObjectRetain();
    v38 = sub_22892F098();
  }

  v40 = v76;
  v41 = v79;
  v42 = [objc_allocWithZone(MEMORY[0x277CCD460]) initWithFeatureAvailabilityProviding:v37 healthDataSource:a1 currentCountryCode:v38];
  swift_unknownObjectRelease();

  v83[0] = 0;
  v43 = v35;
  v44 = [v35 featureStatusWithError_];
  v45 = v83[0];
  if (v44)
  {
    v46 = v44;
    v83[0] = 0;
    v47 = v45;
    v48 = [v42 featureStatusWithError_];
    v49 = v83[0];
    if (v48)
    {
      v50 = v48;
      sub_22891C618(0, &qword_27D85BE68, sub_22891C67C, MEMORY[0x277D84560]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2289315C0;
      v52 = v78;
      *(inited + 32) = v78;
      v53 = v72;
      *(inited + 40) = v46;
      *(inited + 48) = v53;
      *(inited + 56) = v50;
      v54 = v49;
      v55 = v52;
      v56 = v46;
      v57 = v53;
      v58 = v50;
      sub_22891CD08(inited);
      swift_setDeallocating();
      sub_22891C67C(0);
      swift_arrayDestroy();
      v31 = v81;
      sub_22892EB28();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v30 = 0;
      goto LABEL_10;
    }

    v61 = v83[0];
    v60 = sub_22892DE38();

    swift_willThrow();
  }

  else
  {
    v59 = v83[0];
    v60 = sub_22892DE38();

    swift_willThrow();
  }

  sub_22892EDC8();
  v62 = v60;
  v63 = sub_22892EDD8();
  v64 = sub_22892F378();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v67 = v43;
    v68 = swift_slowAlloc();
    v83[0] = v68;
    *v65 = 136446466;
    *(v65 + 4) = sub_2288B748C(0xD000000000000023, 0x8000000228935420, v83);
    *(v65 + 12) = 2114;
    v69 = v60;
    v70 = _swift_stdlib_bridgeErrorToNSError();
    *(v65 + 14) = v70;
    *v66 = v70;
    _os_log_impl(&dword_2288B2000, v63, v64, "[%{public}s] Error retrieving feature status: %{public}@", v65, 0x16u);
    sub_2288DDB10(v66);
    MEMORY[0x22AAC47E0](v66, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v68);
    MEMORY[0x22AAC47E0](v68, -1, -1);
    MEMORY[0x22AAC47E0](v65, -1, -1);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v80 + 8))(v41, v76);
  }

  else
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*(v80 + 8))(v41, v40);
  }

LABEL_9:
  v30 = 1;
  v31 = v81;
LABEL_10:
  v32 = sub_22892EB38();
  return (*(*(v32 - 8) + 56))(v31, v30, 1, v32);
}

void sub_22891C1E4(uint64_t a1@<X8>)
{
  v2 = sub_22892E7B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 0;
  v6 = sub_22891C544(&qword_27D85BE58, MEMORY[0x277D0FFE8], MEMORY[0x277D10008]);
  sub_22892F938();
  v7 = sub_22892EB48();
  v8 = MEMORY[0x277CCBE08];
  v9 = &off_278609000;
  if (v7)
  {
    v10 = v7;
    v11 = [v7 objectForKeyedSubscript_];
    v12 = [v11 areAllRequirementsSatisfied];

    if (v12)
    {
      sub_22892E7A8();
      sub_22891C544(&qword_27D85BE60, MEMORY[0x277D0FFE8], MEMORY[0x277D0FFF8]);
      sub_22892F1E8();
      v19 = v6;
      v13 = *(v3 + 8);
      v13(a1, v2);
      sub_22892F1E8();
      v22 = v20 | v21;
      sub_22892F938();

      v13(v5, v2);
      v9 = &off_278609000;
    }

    else
    {
    }

    v8 = MEMORY[0x277CCBE08];
  }

  v14 = sub_22892EB48();
  if (v14)
  {
    v15 = v14;
    v16 = [v14 objectForKeyedSubscript_];
    v17 = [v16 v9[497]];

    if (v17)
    {
      sub_22892E798();
      sub_22891C544(&qword_27D85BE60, MEMORY[0x277D0FFE8], MEMORY[0x277D0FFF8]);
      sub_22892F1E8();
      v18 = *(v3 + 8);
      v18(a1, v2);
      sub_22892F1E8();
      v22 = v20 | v21;
      sub_22892F938();

      v18(v5, v2);
    }

    else
    {
    }
  }
}

uint64_t sub_22891C544(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22891C58C(uint64_t a1)
{
  sub_22891C618(0, &qword_2813DFEC8, MEMORY[0x277CC9698], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22891C618(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22891C67C(uint64_t a1)
{
  if (!qword_27D85BE70)
  {
    type metadata accessor for HKFeatureIdentifier(255);
    sub_2288BC0FC(255, &qword_27D85BE78, 0x277CCD458);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D85BE70);
    }
  }
}

unint64_t sub_22891C6FC(uint64_t a1)
{
  v2 = sub_22892F458();

  return sub_22891C88C(a1, v2);
}

unint64_t sub_22891C740(uint64_t a1, uint64_t a2)
{
  sub_22892F8A8();
  sub_22892F0F8();
  v4 = sub_22892F8C8();

  return sub_22891C960(a1, a2, v4);
}

unint64_t sub_22891C7B8(uint64_t a1)
{
  v2 = sub_22892F5B8();

  return sub_22891CA18(a1, v2);
}

unint64_t sub_22891C7FC(uint64_t a1)
{
  sub_22892F0C8();
  sub_22892F8A8();
  sub_22892F0F8();
  v2 = sub_22892F8C8();

  return sub_22891CAE0(a1, v2);
}

unint64_t sub_22891C88C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_2288BC0FC(0, &qword_2813DEC58, 0x277CCD8D8);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_22892F468();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_22891C960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_22892F818())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22891CA18(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_22891D1FC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x22AAC3C30](v9, a1);
      sub_22891D258(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_22891CAE0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_22892F0C8();
      v8 = v7;
      if (v6 == sub_22892F0C8() && v8 == v9)
      {
        break;
      }

      v11 = sub_22892F818();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_22891CBE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_228908640(0);
    v3 = sub_22892F788();
    v4 = a1 + 32;

    while (1)
    {
      sub_22891D5EC(v4, &v13, sub_22890CE94);
      v5 = v13;
      v6 = v14;
      result = sub_22891C740(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2288D3C20(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_22891CD08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22891CDF4(0);
    v3 = sub_22892F788();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_22891C7FC(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

void sub_22891CDF4(uint64_t a1)
{
  if (!qword_27D85BE80)
  {
    type metadata accessor for HKFeatureIdentifier(255);
    sub_2288BC0FC(255, &qword_27D85BE78, 0x277CCD458);
    sub_22891C544(&qword_27D85B150, type metadata accessor for HKFeatureIdentifier, &unk_228931330);
    v1 = sub_22892F798();
    if (!v2)
    {
      atomic_store(v1, &qword_27D85BE80);
    }
  }
}

unint64_t sub_22891CEB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = MEMORY[0x277D837D0];
    sub_2288DDC70(0, &qword_2813DEA50, MEMORY[0x277D837D0]);
    v4 = sub_22892F788();
    v5 = a1 + 32;

    while (1)
    {
      sub_22891D12C(v5, &v14, &qword_2813DED38, v3);
      v6 = v14;
      v7 = v15;
      result = sub_22891C740(v14, v15);
      if (v9)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v4[6] + 16 * result);
      *v10 = v6;
      v10[1] = v7;
      result = sub_2288DDB00(&v16, (v4[7] + 32 * result));
      v11 = v4[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v4[2] = v13;
      v5 += 48;
      if (!--v1)
      {

        return v4;
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

unint64_t sub_22891CFE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = MEMORY[0x277D84030];
    sub_2288DDC70(0, &qword_27D85B508, MEMORY[0x277D84030]);
    v4 = sub_22892F788();
    v5 = a1 + 32;

    while (1)
    {
      sub_22891D12C(v5, v14, &qword_27D85B528, v3);
      result = sub_22891C7B8(v14);
      if (v7)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v8 = v4[6] + 40 * result;
      v9 = v14[0];
      v10 = v14[1];
      *(v8 + 32) = v15;
      *v8 = v9;
      *(v8 + 16) = v10;
      result = sub_2288DDB00(&v16, (v4[7] + 32 * result));
      v11 = v4[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v4[2] = v13;
      v5 += 72;
      if (!--v1)
      {

        return v4;
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

uint64_t sub_22891D12C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_22891D198(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_22891D198(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_22891D2AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22891D654(0);
    v3 = sub_22892F788();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_22891C7FC(v6);
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

unint64_t sub_22891D398(uint64_t a1)
{
  sub_22891D56C(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_2289086A8(0);
    v8 = sub_22892F788();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_22891D5EC(v10, v6, sub_22891D56C);
      v12 = *v6;
      result = sub_22891C6FC(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = sub_22892DDC8();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

void sub_22891D56C(uint64_t a1)
{
  if (!qword_2813DEC48)
  {
    sub_2288BC0FC(255, &qword_2813DEC58, 0x277CCD8D8);
    sub_22892DDC8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813DEC48);
    }
  }
}

uint64_t sub_22891D5EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_22891D654(uint64_t a1)
{
  if (!qword_2813DEA40)
  {
    type metadata accessor for HKFeatureAvailabilityContext(255);
    sub_22891C618(255, &qword_2813DED00, sub_22891D730, MEMORY[0x277D83940]);
    sub_22891C544(&qword_2813DEBE0, type metadata accessor for HKFeatureAvailabilityContext, &unk_22893126C);
    v1 = sub_22892F798();
    if (!v2)
    {
      atomic_store(v1, &qword_2813DEA40);
    }
  }
}

unint64_t sub_22891D730()
{
  result = qword_2813DEB98;
  if (!qword_2813DEB98)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813DEB98);
  }

  return result;
}

uint64_t ObserverSet.__allocating_init(name:loggingCategory:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  ObserverSet.init(name:loggingCategory:)(a1, a2, a3);
  return v6;
}

void ObserverSet.notifyObservers(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[2];
  v7 = swift_allocObject();
  v7[2] = *(v5 + 80);
  v7[3] = a1;
  v7[4] = a2;
  v9[4] = sub_22891DC34;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2288E19DC;
  v9[3] = &block_descriptor_10;
  v8 = _Block_copy(v9);

  [v6 notifyObservers_];
  _Block_release(v8);
}

uint64_t ObserverSet.init(name:loggingCategory:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_allocWithZone(MEMORY[0x277CCD738]);
  v6 = sub_22892F098();

  v7 = [v5 initWithName:v6 loggingCategory:a3];

  *(v3 + 16) = v7;
  return v3;
}

uint64_t sub_22891D9AC(uint64_t a1)
{
  swift_unknownObjectRetain();
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (v2 && a1)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(ObjectType, v3);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_22891DA2C(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v7 = sub_22892F498();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v18 - v10;
  v12 = *(a4 - 8);
  MEMORY[0x28223BE20](v9);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = a1;
  swift_unknownObjectRetain();
  v15 = swift_dynamicCast();
  v16 = *(v12 + 56);
  if (v15)
  {
    v16(v11, 0, 1, a4);
    (*(v12 + 32))(v14, v11, a4);
    a2(v14);
    return (*(v12 + 8))(v14, a4);
  }

  else
  {
    v16(v11, 1, 1, a4);
    return (*(v8 + 8))(v11, v7);
  }
}

double block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t ObserverSet.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_22891DD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x277CCBDB0];
  sub_22891DE6C(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228931960;
  *(inited + 32) = sub_22892F0C8();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v8;
  *(inited + 48) = a2;
  *(inited + 56) = a3;
  v9 = v6;

  sub_22891CEB0(inited);
  swift_setDeallocating();
  sub_22891DF28(inited + 32);
  v10 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v11 = sub_22892EFB8();

  v12 = [v10 initWithDomain:v9 code:a1 userInfo:v11];

  return v12;
}

void sub_22891DE6C(uint64_t a1)
{
  if (!qword_2813DE9B0)
  {
    sub_22891DEC4();
    v1 = sub_22892F7F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2813DE9B0);
    }
  }
}

void sub_22891DEC4()
{
  if (!qword_2813DED38)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813DED38);
    }
  }
}

uint64_t sub_22891DF28(uint64_t a1)
{
  sub_22891DEC4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22891DF84(char a1)
{
  sub_2288DB154();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228930B00;
  if (a1)
  {
    sub_22892E3B8();
  }

  else
  {
    sub_22892E408();
  }

  sub_22892E3D8();
  v3 = objc_allocWithZone(MEMORY[0x277CFA320]);
  v4 = sub_22892F098();

  v5 = sub_22892F098();

  v6 = [v3 initWithExtensionBundleIdentifier:v4 kind:v5];

  *(v2 + 32) = v6;
  if (a1)
  {
    sub_22892E3B8();
  }

  else
  {
    sub_22892E408();
  }

  sub_22892E3F8();
  v7 = objc_allocWithZone(MEMORY[0x277CFA320]);
  v8 = sub_22892F098();

  v9 = sub_22892F098();

  v10 = [v7 initWithExtensionBundleIdentifier:v8 kind:v9];

  *(v2 + 40) = v10;
  return v2;
}

uint64_t getEnumTagSinglePayload for BalanceWidgetTimelineControllerProvider(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

id sub_22891E254(uint64_t a1, unsigned int *a2)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = sub_22892F3F8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288B5C84(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288D3C38(a1, v10);
  v11 = sub_22892DEF8();
  v12 = *(v11 - 8);
  v13 = 0;
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    v13 = sub_22892DE58();
    (*(v12 + 8))(v10, v11);
  }

  (*(v5 + 104))(v7, *a2, v4);
  sub_22892F3E8();
  (*(v5 + 8))(v7, v4);
  v14 = sub_22892F098();

  v19[0] = 0;
  v15 = [v18[1] setDate:v13 forKey:v14 error:v19];

  if (v15)
  {
    return v19[0];
  }

  v17 = v19[0];
  sub_22892DE38();

  return swift_willThrow();
}

uint64_t sub_22891E4DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_22892F8A8();
  sub_22892F0F8();
  v6 = sub_22892F8C8();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_22892F818() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_22891E5D4(uint64_t a1, uint64_t a2)
{
  v3 = sub_22892E068();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_2288BAAF4(&qword_27D85BF28, MEMORY[0x277D62560], MEMORY[0x277D62568]), v7 = sub_22892EFF8(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_2288BAAF4(&qword_27D85BF30, MEMORY[0x277D62560], MEMORY[0x277D62570]);
      v15 = sub_22892F088();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

id sub_22891E83C()
{
  v0 = objc_allocWithZone(MEMORY[0x277D62528]);
  v1 = sub_22892F098();
  v2 = [v0 initWithIdentifier_];

  return v2;
}

uint64_t sub_22891E8A8()
{
  sub_22892E298();
  swift_allocObject();
  sub_22892E288();
  v0 = sub_22892E278();

  return v0;
}

double sub_22891E908(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (v6)
  {
    sub_2288DEB1C(v6, a1[1]);
  }

  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *a1 = sub_228926A14;
  a1[1] = v7;

  return result;
}

void sub_22891E984(void *a1, uint64_t a2, void (*a3)(void))
{
  v10[1] = *MEMORY[0x277D85DE8];
  a3();
  sub_2288BC0FC(0, &unk_27D85BBF8, 0x277D10598);
  v4 = sub_22892F208();
  v10[0] = 0;
  v5 = [a1 removeEvents:v4 error:v10];

  v6 = v10[0];
  if (v5)
  {

    v7 = v6;
  }

  else
  {
    v8 = v10[0];
    v9 = sub_22892DE38();

    swift_willThrow();
  }
}

id sub_22891EAAC()
{
  v1 = v0;
  v28[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22892EDE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 48);
  v28[0] = 0;
  v7 = [v6 featureStatusWithError_];
  if (v7)
  {
    v8 = v7;
    v9 = *MEMORY[0x277CCBEA8];
    v10 = v28[0];
    v11 = [v8 objectForKeyedSubscript_];

    v12 = [v11 areAllRequirementsSatisfied];
  }

  else
  {
    v13 = v28[0];
    v14 = sub_22892DE38();

    swift_willThrow();
    sub_22892EDC8();
    v15 = v14;
    v16 = sub_22892EDD8();
    v17 = sub_22892F378();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28[0] = v27;
      *v18 = 136446466;
      v20 = sub_22892F948();
      v22 = sub_2288B748C(v20, v21, v28);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2114;
      v23 = v14;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v24;
      *v19 = v24;
      _os_log_impl(&dword_2288B2000, v16, v17, "[%{public}s] Error reading feature status: %{public}@", v18, 0x16u);
      sub_2289266D4(v19, sub_2288D6D64);
      MEMORY[0x22AAC47E0](v19, -1, -1);
      v25 = v27;
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x22AAC47E0](v25, -1, -1);
      MEMORY[0x22AAC47E0](v18, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }

  return v12;
}

uint64_t sub_22891EDD4@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = sub_22892DFB8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v25[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22892E048();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22892DEF8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892DED8();
  (*(v2 + 104))(v4, *MEMORY[0x277CC9830], v1);
  sub_22892DFC8();
  (*(v2 + 8))(v4, v1);
  sub_2288DB468(v12, v25);
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  v13 = __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  MEMORY[0x28223BE20](v13);
  (*(v15 + 16))(&v25[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_22892F1D8();
  if (*(v16 + 16))
  {
    v17 = v16;
    sub_2288C0BA8(0);
    v19 = v18;
    v20 = *(v18 - 8);
    v21 = v24;
    sub_228926574(v17 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v24, sub_2288C0BA8);

    (*(v20 + 56))(v21, 0, 1, v19);
  }

  else
  {

    sub_2288C0BA8(0);
    (*(*(v22 - 8) + 56))(v24, 1, 1, v22);
  }

  return __swift_destroy_boxed_opaque_existential_0(v25);
}

uint64_t sub_22891F1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a1;
  v59 = a2;
  v66 = sub_22892E948();
  v58 = *(v66 - 8);
  v2 = MEMORY[0x28223BE20](v66);
  v63 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v65 = &v57 - v4;
  v5 = sub_22892E6D8();
  v70 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v62 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v64 = &v57 - v9;
  MEMORY[0x28223BE20](v8);
  v68 = &v57 - v10;
  sub_2288C0BA8(0);
  v67 = v11;
  v57 = *(v11 - 1);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v57 - v15;
  v17 = sub_22892DFB8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_22892E048();
  v21 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_22892DEF8();
  v24 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v26 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892DED8();
  (*(v18 + 104))(v20, *MEMORY[0x277CC9830], v17);
  sub_22892DFC8();
  (*(v18 + 8))(v20, v17);
  sub_2288DB468(v26, v73);
  (*(v21 + 8))(v23, v61);
  (*(v24 + 8))(v26, v60);
  v27 = __swift_project_boxed_opaque_existential_1(v73, v73[3]);
  MEMORY[0x28223BE20](v27);
  (*(v29 + 16))(&v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = sub_22892F1D8();
  v31 = *(v30 + 16);
  v69 = v5;
  if (v31)
  {
    v32 = *(v57 + 80);
    v61 = v30;
    v33 = v30 + ((v32 + 32) & ~v32);
    v34 = *(v57 + 72);
    v35 = (v70 + 32);
    v36 = MEMORY[0x277D84F90];
    do
    {
      sub_228926574(v33, v16, sub_2288C0BA8);
      sub_228926574(v16, v14, sub_2288C0BA8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v71 = *v14;
        v37 = v71;
        v72 = v14[8];
        sub_2288B7AEC();
        swift_willThrowTypedImpl();
        sub_2289266D4(v16, sub_2288C0BA8);
      }

      else
      {
        sub_2289266D4(v16, sub_2288C0BA8);
        v38 = *v35;
        v39 = v64;
        (*v35)(v64, v14, v5);
        v38(v68, v39, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_2288D5FD8(0, v36[2] + 1, 1, v36);
        }

        v41 = v36[2];
        v40 = v36[3];
        if (v41 >= v40 >> 1)
        {
          v36 = sub_2288D5FD8((v40 > 1), v41 + 1, 1, v36);
        }

        v36[2] = v41 + 1;
        v42 = v36 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v41;
        v5 = v69;
        v38(v42, v68, v69);
      }

      v33 += v34;
      --v31;
    }

    while (v31);
  }

  else
  {

    v36 = MEMORY[0x277D84F90];
  }

  result = __swift_destroy_boxed_opaque_existential_0(v73);
  v44 = v70;
  v45 = v62;
  v68 = v36[2];
  if (v68)
  {
    v46 = 0;
    v67 = v36 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
    v47 = (v58 + 8);
    v48 = (v70 + 8);
    while (v46 < v36[2])
    {
      (*(v44 + 16))(v45, &v67[*(v44 + 72) * v46], v5);
      v49 = v65;
      sub_22892E5C8();
      v50 = sub_22892E868();
      v51 = *v47;
      (*v47)(v49, v66);
      if (v50)
      {
        v52 = v63;
        sub_22892E5C8();
        v53 = sub_22892E898();
        v51(v52, v66);
        if ((v53 & 1) == 0)
        {

          v5 = v69;
          v44 = v70;
          v54 = v59;
          (*(v70 + 32))(v59, v45, v69);
          v55 = v54;
          v56 = 0;
          return (*(v44 + 56))(v55, v56, 1, v5);
        }
      }

      ++v46;
      v5 = v69;
      result = (*v48)(v45, v69);
      v44 = v70;
      if (v68 == v46)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:

    v56 = 1;
    v55 = v59;
    return (*(v44 + 56))(v55, v56, 1, v5);
  }

  return result;
}

uint64_t sub_22891F9F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v22[1] = *v2;
  v22[2] = a1;
  v3 = sub_22892EDE8();
  v22[3] = *(v3 - 8);
  v22[4] = v3;
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for VitalsOutlierNotificationAnalysisState(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2289251A8(0, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState, MEMORY[0x277D83D88]);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v22 - v12;
  v14 = v2[14];
  v24 = v2[2];
  v15 = *(*v14 + *MEMORY[0x277D841D0] + 16);
  v16 = (*(*v14 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v14 + v16));
  sub_228925974(v14 + v15, v13);
  os_unfair_lock_unlock((v14 + v16));
  sub_22892600C(v13, v11, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState);
  if ((*(v5 + 48))(v11, 1, v4) == 1)
  {
    sub_2289264F4(v13, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState);
    sub_2289264F4(v11, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState);
LABEL_6:
    v20 = 1;
    v19 = v23;
    return (*(v5 + 56))(v19, v20, 1, v4);
  }

  sub_22892608C(v11, v7, type metadata accessor for VitalsOutlierNotificationAnalysisState);
  sub_22892EFA8();
  sub_2288BAAF4(&unk_2813DEE10, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C0]);
  v17 = sub_22892F088();
  sub_2289264F4(v13, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState);
  if ((v17 & 1) == 0)
  {
    sub_2289266D4(v7, type metadata accessor for VitalsOutlierNotificationAnalysisState);
    goto LABEL_6;
  }

  v18 = v23;
  sub_22892608C(v7, v23, type metadata accessor for VitalsOutlierNotificationAnalysisState);
  v19 = v18;
  v20 = 0;
  return (*(v5 + 56))(v19, v20, 1, v4);
}

uint64_t sub_22891FF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2289251A8(0, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState, MEMORY[0x277D83D88]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = type metadata accessor for VitalsOutlierNotificationAnalysisStateCache.CachedValue(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228926574(a1, v12, type metadata accessor for VitalsOutlierNotificationAnalysisStateCache.CachedValue);
  if ((*(v7 + 48))(v12, 1, v6) == 1)
  {
    result = sub_228922BE0(MEMORY[0x277D10148], MEMORY[0x277D10140], MEMORY[0x277D10150], type metadata accessor for VitalsOutlierNotificationAnalysisState, v9);
    if (v2)
    {
      return result;
    }

    sub_2289266D4(a1, type metadata accessor for VitalsOutlierNotificationAnalysisStateCache.CachedValue);
    sub_22892600C(v9, a1, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  else
  {
    v9 = v12;
  }

  return sub_228925990(v9, a2);
}

uint64_t sub_2289201C0()
{
  v6 = sub_22892EDE8();
  MEMORY[0x28223BE20](v6);
  v0 = sub_22892F3F8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x277D10138], v0);
  sub_22892F3E8();
  (*(v1 + 8))(v3, v0);
  sub_22892F3B8();
}

uint64_t sub_228920558(uint64_t a1)
{
  v2 = sub_22892EDE8();
  MEMORY[0x28223BE20](v2);
  sub_228920854(a1);
  return sub_2289264F4(a1, &qword_2813DFEE0, MEMORY[0x277CC9578]);
}

id sub_228920854(uint64_t a1)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22892F3F8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277CC9578];
  sub_2289251A8(0, &qword_2813DFEE0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v17 - v8;
  sub_22892600C(a1, v17 - v8, &qword_2813DFEE0, v6);
  v10 = sub_22892DEF8();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    v12 = sub_22892DE58();
    (*(v11 + 8))(v9, v10);
  }

  (*(v3 + 104))(v5, *MEMORY[0x277D10138], v2);
  sub_22892F3E8();
  (*(v3 + 8))(v5, v2);
  v13 = sub_22892F098();

  v18[0] = 0;
  v14 = [v17[1] setDate:v12 forKey:v13 error:v18];

  if (v14)
  {
    return v18[0];
  }

  v16 = v18[0];
  sub_22892DE38();

  return swift_willThrow();
}

void sub_228920B20(uint64_t a1)
{
  v3 = sub_22892EDE8();
  MEMORY[0x28223BE20](v3);
  sub_228920EAC(a1);
  v4 = *(v1 + 112);
  v5 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v6));
  sub_2289266D4(v4 + v5, type metadata accessor for VitalsOutlierNotificationAnalysisStateCache.CachedValue);
  sub_2289251A8(0, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState, MEMORY[0x277D83D88]);
  (*(*(v7 - 8) + 56))(v4 + v5, 1, 1, v7);

  os_unfair_lock_unlock((v4 + v6));
}

id sub_228920EAC(uint64_t a1)
{
  v38 = a1;
  v44 = *MEMORY[0x277D85DE8];
  v1 = sub_22892F3F8();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v39 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v37 = &v34 - v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - v7;
  sub_2289251A8(0, &qword_27D85B520, sub_2288DDB6C, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228931EA0;
  v10 = *MEMORY[0x277D10140];
  v11 = *(v2 + 104);
  v41 = v2 + 104;
  v11(v8, v10, v1);
  v12 = sub_22892F3E8();
  v14 = v13;
  v35 = *(v2 + 8);
  v35(v8, v1);
  v42 = v12;
  v43 = v14;
  sub_22892F5D8();
  v36 = type metadata accessor for VitalsOutlierNotificationAnalysisState(0);
  v15 = *(v36 + 20);
  v16 = sub_22892DEF8();
  *(inited + 96) = v16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
  v18 = v38;
  (*(*(v16 - 8) + 16))(boxed_opaque_existential_1, v38 + v15, v16);
  v19 = v37;
  v11(v37, *MEMORY[0x277D10148], v1);
  v20 = sub_22892F3E8();
  v22 = v21;
  v23 = v35;
  v35(v19, v1);
  v42 = v20;
  v43 = v22;
  sub_22892F5D8();
  v24 = sub_22892EF68();
  *(inited + 168) = MEMORY[0x277D83B88];
  *(inited + 144) = v24;
  v25 = v39;
  v11(v39, *MEMORY[0x277D10150], v1);
  v26 = v25;
  v27 = sub_22892F3E8();
  v29 = v28;
  v23(v26, v1);
  v42 = v27;
  v43 = v29;
  sub_22892F5D8();
  v30 = *(v18 + *(v36 + 24));
  *(inited + 240) = MEMORY[0x277D83B88];
  *(inited + 216) = v30;
  sub_22891CFE8(inited);
  swift_setDeallocating();
  sub_2288DDB6C();
  swift_arrayDestroy();
  v31 = sub_22892EFB8();

  v42 = 0;
  LOBYTE(v29) = [v40 setValuesWithDictionary:v31 error:&v42];

  if (v29)
  {
    return v42;
  }

  v33 = v42;
  sub_22892DE38();

  return swift_willThrow();
}

void sub_2289212D8()
{
  v28[1] = *MEMORY[0x277D85DE8];
  v1 = sub_22892EDE8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 24);
  sub_2288DB154();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_228930AF0;
  v7 = sub_22892F098();
  v8 = sub_22892DE58();
  v9 = [v5 eventWithIdentifier:v7 dueDate:v8 eventOptions:0];

  *(v6 + 32) = v9;
  sub_2288BC0FC(0, &unk_27D85BBF8, 0x277D10598);
  v10 = sub_22892F208();

  v28[0] = 0;
  v11 = [v5 replaceAllScheduledEventsWithEvents:v10 error:v28];

  if (v11)
  {
    v12 = v28[0];
  }

  else
  {
    v13 = v28[0];
    v14 = sub_22892DE38();

    swift_willThrow();
    sub_22892EDC8();
    v15 = v14;
    v16 = sub_22892EDD8();
    v17 = sub_22892F378();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27 = v2;
      v20 = v19;
      v21 = swift_slowAlloc();
      v28[0] = v21;
      *v18 = 136446466;
      v22 = sub_22892F948();
      v24 = sub_2288B748C(v22, v23, v28);

      *(v18 + 4) = v24;
      *(v18 + 12) = 2114;
      v25 = v14;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v26;
      *v20 = v26;
      _os_log_impl(&dword_2288B2000, v16, v17, "[%{public}s] Error scheduling event %{public}@", v18, 0x16u);
      sub_2289266D4(v20, sub_2288D6D64);
      MEMORY[0x22AAC47E0](v20, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x22AAC47E0](v21, -1, -1);
      MEMORY[0x22AAC47E0](v18, -1, -1);

      (*(v27 + 8))(v4, v1);
    }

    else
    {

      (*(v2 + 8))(v4, v1);
    }
  }
}

uint64_t sub_22892168C(uint64_t a1)
{
  v21 = a1;
  sub_2289251A8(0, &qword_2813DFEE0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v18 - v2;
  v18 = sub_22892E9E8();
  v4 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22892EFA8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_22892DF58();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22892EA08();
  v19 = *(v12 - 8);
  v20 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892DF48();
  sub_22892DF08();
  (*(v9 + 8))(v11, v8);
  sub_22892E5E8();
  sub_22892EB58();
  (*(v4 + 104))(v6, *MEMORY[0x277D10088], v18);
  v15 = v22;
  sub_22892E988();
  if (*(v15 + 64))
  {
    sub_2288DBD40(v14);
  }

  sub_22892DED8();
  v16 = sub_22892DEF8();
  (*(*(v16 - 8) + 56))(v3, 0, 1, v16);
  sub_22891E1AC(v3);
  sub_2289264F4(v3, &qword_2813DFEE0, MEMORY[0x277CC9578]);
  return (*(v19 + 8))(v14, v20);
}

uint64_t sub_228921A20(uint64_t a1)
{
  v13[1] = a1;
  v14 = sub_22892E9E8();
  v13[0] = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v2 = v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22892EFA8();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_22892DF58();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22892EA08();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892DF48();
  sub_22892DF08();
  (*(v5 + 8))(v7, v4);
  sub_22892E5E8();
  (*(v13[0] + 104))(v2, *MEMORY[0x277D10080], v14);
  sub_22892E988();
  if (*(v15 + 64))
  {
    sub_2288DBD40(v11);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_228921CBC()
{
  v1 = sub_22892E968();
  v2 = *(v1 - 8);
  result = MEMORY[0x28223BE20](v1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 64);
  if (v6)
  {
    (*(v2 + 104))(v5, *MEMORY[0x277D10070], v1);
    v7 = *(v6 + OBJC_IVAR____TtC19HealthBalanceDaemon36ImbalanceUserNotificationCoordinator_notificationManager);
    sub_22892E958();
    v8 = sub_22892F098();

    aBlock[4] = nullsub_1;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2288F3CC4;
    aBlock[3] = &block_descriptor_11;
    v9 = _Block_copy(aBlock);

    [v7 removeDeliveredNotificationsWithCategoryIdentifier:v8 completionHandler:v9];
    _Block_release(v9);

    return (*(v2 + 8))(v5, v1);
  }

  return result;
}

uint64_t sub_228921E6C()
{
  v41[1] = *MEMORY[0x277D85DE8];
  v38 = *v0;
  v1 = sub_22892EDE8();
  v39 = *(v1 - 8);
  v40 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2289251A8(0, &qword_27D85BF20, MEMORY[0x277D62618], MEMORY[0x277D83D88]);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - v8;
  v10 = sub_22892E1C8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  sub_22892E178();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v17 = sub_2289264F4(v9, &qword_27D85BF20, MEMORY[0x277D62618]);
    v18 = (v0[9])(v17);
    v41[0] = 0;
    v19 = [v18 currentSleepEventRecordWithError_];

    if (!v19)
    {
      v24 = v41[0];
      v25 = sub_22892DE38();

      swift_willThrow();
      sub_22892EDC8();
      v26 = v25;
      v27 = sub_22892EDD8();
      v28 = sub_22892F378();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v41[0] = v31;
        *v29 = 136446466;
        v32 = sub_22892F948();
        v34 = sub_2288B748C(v32, v33, v41);

        *(v29 + 4) = v34;
        *(v29 + 12) = 2114;
        v35 = v25;
        v36 = _swift_stdlib_bridgeErrorToNSError();
        *(v29 + 14) = v36;
        *v30 = v36;
        _os_log_impl(&dword_2288B2000, v27, v28, "[%{public}s] Error reading sleep event record: %{public}@", v29, 0x16u);
        sub_2289266D4(v30, sub_2288D6D64);
        MEMORY[0x22AAC47E0](v30, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v31);
        MEMORY[0x22AAC47E0](v31, -1, -1);
        MEMORY[0x22AAC47E0](v29, -1, -1);
      }

      else
      {
      }

      (*(v39 + 8))(v3, v40);
      goto LABEL_11;
    }

    v20 = v41[0];
    v21 = [v19 lastWakeUpResultsIntroductionNotificationVersionSent];

    if (v21 >= 1)
    {
      sub_22892E1B8();
      (*(v11 + 56))(v7, 0, 1, v10);
      sub_22892E188();
LABEL_11:
      v22 = 0;
      return v22 & 1;
    }

    v22 = 1;
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    sub_22892E1B8();
    v22 = sub_22892E1A8();
    v23 = *(v11 + 8);
    v23(v14, v10);
    v23(v16, v10);
  }

  return v22 & 1;
}

id sub_2289223A4(uint64_t a1, uint64_t a2)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v3 = sub_22892EDE8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(a1 + 72))(v5);
  v27[0] = 0;
  v9 = [v8 currentSleepSettingsWithError_];

  if (v9)
  {
    v10 = v27[0];
    v11 = [v9 wakeUpResults];
  }

  else
  {
    v12 = v27[0];
    v13 = sub_22892DE38();

    swift_willThrow();
    sub_22892EDC8();
    v14 = v13;
    v15 = sub_22892EDD8();
    v16 = sub_22892F378();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27[0] = v26;
      *v17 = 136446466;
      v19 = sub_22892F948();
      v21 = sub_2288B748C(v19, v20, v27);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2114;
      v22 = v13;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v23;
      *v18 = v23;
      _os_log_impl(&dword_2288B2000, v15, v16, "[%{public}s] Error reading sleep settings: %{public}@", v17, 0x16u);
      sub_2289266D4(v18, sub_2288D6D64);
      MEMORY[0x22AAC47E0](v18, -1, -1);
      v24 = v26;
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x22AAC47E0](v24, -1, -1);
      MEMORY[0x22AAC47E0](v17, -1, -1);
    }

    else
    {
    }

    (*(v4 + 8))(v7, v3);
    return 0;
  }

  return v11;
}

uint64_t sub_22892268C@<X0>(uint64_t a2@<X8>)
{
  v17 = a2;
  v2 = sub_22892EDE8();
  v16[3] = *(v2 - 8);
  v16[4] = v2;
  MEMORY[0x28223BE20](v2);
  v3 = type metadata accessor for SleepScoreNotificationState(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2289251A8(0, &qword_27D85BF18, type metadata accessor for SleepScoreNotificationState, MEMORY[0x277D83D88]);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - v11;
  sub_228922BE0(MEMORY[0x277D10130], MEMORY[0x277D10118], MEMORY[0x277D10120], type metadata accessor for SleepScoreNotificationState, v16 - v11);
  sub_22892600C(v12, v10, &qword_27D85BF18, type metadata accessor for SleepScoreNotificationState);
  if ((*(v4 + 48))(v10, 1, v3) == 1)
  {
    sub_2289264F4(v12, &qword_27D85BF18, type metadata accessor for SleepScoreNotificationState);
    sub_2289264F4(v10, &qword_27D85BF18, type metadata accessor for SleepScoreNotificationState);
LABEL_6:
    v14 = 1;
    return (*(v4 + 56))(v17, v14, 1, v3);
  }

  sub_22892608C(v10, v6, type metadata accessor for SleepScoreNotificationState);
  sub_22892EFA8();
  sub_2288BAAF4(&unk_2813DEE10, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C0]);
  v13 = sub_22892F088();
  sub_2289264F4(v12, &qword_27D85BF18, type metadata accessor for SleepScoreNotificationState);
  if ((v13 & 1) == 0)
  {
    sub_2289266D4(v6, type metadata accessor for SleepScoreNotificationState);
    goto LABEL_6;
  }

  sub_22892608C(v6, v17, type metadata accessor for SleepScoreNotificationState);
  v14 = 0;
  return (*(v4 + 56))(v17, v14, 1, v3);
}

uint64_t sub_228922BE0@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(char *, uint64_t, uint64_t)@<X1>, unsigned int *a3@<X2>, uint64_t (*a4)(void)@<X3>, char *a5@<X8>)
{
  v61 = a2;
  v62 = a4;
  v59 = a3;
  v67 = a1;
  v63 = a5;
  v6 = sub_22892F3F8();
  v64 = *(v6 - 8);
  v65 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v58 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v50 - v9;
  v11 = MEMORY[0x277D83D88];
  sub_2289251A8(0, &qword_2813DFEE0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v50 - v13;
  v15 = sub_22892DEF8();
  v60 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2289251A8(0, &unk_2813DEDE0, MEMORY[0x277CCB6A8], v11);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v50 - v19;
  v21 = sub_22892EFA8();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v66;
  result = sub_228925770(v67, v20);
  if (!v25)
  {
    v56 = v5;
    v57 = v14;
    v66 = v24;
    v54 = v17;
    v55 = v15;
    v28 = v64;
    v27 = v65;
    v67 = 0;
    if ((*(v22 + 48))(v20, 1, v21) == 1)
    {
      v29 = &unk_2813DEDE0;
      v30 = MEMORY[0x277CCB6A8];
      v31 = v20;
      goto LABEL_4;
    }

    v52 = *(v22 + 32);
    v53 = v21;
    v52(v66, v20, v21);
    v34 = *v61;
    v61 = *(v28 + 104);
    v61(v10, v34, v27);
    sub_22892F3E8();
    v35 = *(v28 + 8);
    v35(v10, v27);
    v36 = v67;
    sub_22892F3B8();
    v67 = v36;
    if (!v36)
    {
      v50[1] = v28 + 104;
      v51 = v35;
      v37 = v61;
      v50[0] = v22 + 32;
      v64 = v22;

      v38 = v60;
      v39 = v57;
      v40 = v55;
      if ((*(v60 + 48))(v57, 1, v55) != 1)
      {
        v57 = *(v38 + 32);
        v57(v54, v39, v40);
        v41 = v58;
        v37(v58, *v59, v27);
        sub_22892F3E8();
        v51(v41, v27);
        v42 = v67;
        v43 = sub_22892F3C8();
        v67 = v42;
        if (v42)
        {

          (*(v38 + 8))(v54, v40);
          return (*(v64 + 8))(v66, v53);
        }

        v44 = v43;
        v45 = v57;

        v46 = v66;
        if (v44)
        {
          v47 = [v44 integerValue];

          v48 = v63;
          v52(v63, v46, v53);
          v49 = v62(0);
          v45(&v48[*(v49 + 20)], v54, v55);
          *&v48[*(v49 + 24)] = v47;
          return (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
        }

        (*(v60 + 8))(v54, v55);
        (*(v64 + 8))(v46, v53);
        goto LABEL_5;
      }

      (*(v64 + 8))(v66, v53);
      v29 = &qword_2813DFEE0;
      v30 = MEMORY[0x277CC9578];
      v31 = v39;
LABEL_4:
      sub_2289264F4(v31, v29, v30);
LABEL_5:
      v32 = v63;
      v33 = v62(0);
      return (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
    }

    (*(v22 + 8))(v66, v53);
  }

  return result;
}

id sub_22892324C(uint64_t a1)
{
  v2 = sub_22892EDE8();
  MEMORY[0x28223BE20](v2);
  return sub_2289234C8(a1);
}

id sub_2289234C8(uint64_t a1)
{
  v36 = a1;
  v42 = *MEMORY[0x277D85DE8];
  v1 = sub_22892F3F8();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v37 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v35 = v34 - v6;
  MEMORY[0x28223BE20](v5);
  v8 = v34 - v7;
  sub_2289251A8(0, &qword_27D85B520, sub_2288DDB6C, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228931EA0;
  v10 = *MEMORY[0x277D10130];
  v39 = *(v2 + 104);
  v39(v8, v10, v1);
  v34[2] = v2 + 104;
  v11 = sub_22892F3E8();
  v13 = v12;
  v14 = *(v2 + 8);
  v14(v8, v1);
  v34[3] = v2 + 8;
  v40 = v11;
  v41 = v13;
  sub_22892F5D8();
  v15 = v36;
  v16 = sub_22892EF68();
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = v16;
  v17 = v35;
  v39(v35, *MEMORY[0x277D10118], v1);
  v18 = v17;
  v19 = sub_22892F3E8();
  v21 = v20;
  v14(v18, v1);
  v40 = v19;
  v41 = v21;
  sub_22892F5D8();
  v22 = type metadata accessor for SleepScoreNotificationState(0);
  v23 = *(v22 + 20);
  v24 = sub_22892DEF8();
  *(inited + 168) = v24;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 144));
  (*(*(v24 - 8) + 16))(boxed_opaque_existential_1, v15 + v23, v24);
  v26 = v37;
  v39(v37, *MEMORY[0x277D10120], v1);
  v27 = sub_22892F3E8();
  v29 = v28;
  v14(v26, v1);
  v40 = v27;
  v41 = v29;
  sub_22892F5D8();
  v30 = *(v15 + *(v22 + 24));
  *(inited + 240) = MEMORY[0x277D83B88];
  *(inited + 216) = v30;
  sub_22891CFE8(inited);
  swift_setDeallocating();
  sub_2288DDB6C();
  swift_arrayDestroy();
  v31 = sub_22892EFB8();

  v40 = 0;
  LOBYTE(v29) = [v38 setValuesWithDictionary:v31 error:&v40];

  if (v29)
  {
    return v40;
  }

  v33 = v40;
  sub_22892DE38();

  return swift_willThrow();
}

uint64_t sub_2289238F8(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D83D88];
  sub_2289251A8(0, &qword_27D85BF20, MEMORY[0x277D62618], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14[-v6];
  sub_2289251A8(0, &qword_2813DFEE0, MEMORY[0x277CC9578], v4);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14[-v9];
  if (*(v2 + 64))
  {
    sub_2288DD008(a1);
  }

  sub_22892DED8();
  v11 = sub_22892DEF8();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  sub_22891E200(v10);
  sub_2289264F4(v10, &qword_2813DFEE0, MEMORY[0x277CC9578]);
  result = sub_22892E0E8();
  if (result)
  {
    sub_22892E1B8();
    v13 = sub_22892E1C8();
    (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
    return sub_22892E188();
  }

  return result;
}

uint64_t sub_228923B00(uint64_t a1)
{
  v123 = a1;
  v104[1] = *v1;
  v2 = sub_22892EDE8();
  v125 = *(v2 - 8);
  v126 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v124 = v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v105 = v104 - v5;
  v122 = type metadata accessor for SleepingSampleCacheRange(0);
  MEMORY[0x28223BE20](v122);
  v130 = v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_2289251A8(0, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v121 = v104 - v9;
  sub_2289251A8(0, &qword_2813DFEE0, MEMORY[0x277CC9578], v7);
  MEMORY[0x28223BE20](v10 - 8);
  v129 = v104 - v11;
  v118 = sub_22892E478();
  v117 = *(v118 - 1);
  MEMORY[0x28223BE20](v118);
  v115 = v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_22892DDC8();
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v116 = v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288BB4E0(0);
  v114 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v110 = v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v112 = v104 - v17;
  sub_2288B5D1C(0);
  v111 = v18;
  MEMORY[0x28223BE20](v18);
  v113 = v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22892E778();
  v127 = *(v20 - 8);
  v128 = v20;
  MEMORY[0x28223BE20](v20);
  v137 = v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_22892DEF8();
  v138 = *(v131 - 8);
  v22 = MEMORY[0x28223BE20](v131);
  v140 = v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = sub_22892EFA8();
  v132 = *(v24 - 8);
  v25 = MEMORY[0x28223BE20](v24);
  v109 = v104 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = v104 - v27;
  v29 = sub_22892DFB8();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = v104 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_22892E048();
  v34 = *(v33 - 8);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = v104 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = v104 - v38;
  (*(v30 + 104))(v32, *MEMORY[0x277CC9830], v29);
  sub_22892DFC8();
  (*(v30 + 8))(v32, v29);
  sub_22892DED8();
  v40 = *(v34 + 16);
  v135 = v33;
  v40(v37, v39, v33);
  v108 = v37;
  sub_22892EF48();
  sub_2288BAAF4(&qword_2813DEE20, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B8]);
  result = sub_22892F048();
  if (result)
  {
    v107 = v34 + 16;
    v42 = v132;
    v139 = v34;
    v43 = *(v132 + 16);
    v106 = v40;
    v44 = v112;
    v134 = v28;
    v43(v112, v28, v24);
    v45 = v110;
    v46 = v24;
    v47 = v114;
    v43((v44 + *(v114 + 48)), v28, v46);
    sub_228926574(v44, v45, sub_2288BB4E0);
    v48 = *(v47 + 48);
    v136 = v39;
    v49 = *(v42 + 32);
    v50 = v113;
    v49(v113, v45, v46);
    v52 = *(v42 + 8);
    v51 = v42 + 8;
    v52(v45 + v48, v46);
    sub_22892608C(v44, v45, sub_2288BB4E0);
    v49(&v50[*(v111 + 36)], v45 + *(v47 + 48), v46);
    v52(v45, v46);
    v53 = v108;
    v54 = v135;
    v106(v108, v136, v135);
    sub_22892E738();
    sub_22892E6E8();
    v55 = v109;
    sub_22892E758();
    v56 = v115;
    sub_22892E708();
    sub_22892E468();
    (*(v117 + 1))(v56, v118);
    v57 = v116;
    sub_22892EEC8();
    v58 = *(v139 + 8);
    v139 += 8;
    v117 = v58;
    v58(v53, v54);
    v118 = v52;
    v52(v55, v46);
    sub_22892DD98();
    (*(v119 + 8))(v57, v120);
    v59 = v121;
    v60 = v134;
    sub_22891F9F8(v134, v121);
    v61 = type metadata accessor for VitalsOutlierNotificationAnalysisState(0);
    v62 = (*(*(v61 - 8) + 48))(v59, 1, v61);
    v120 = v46;
    if (v62 == 1)
    {
      sub_2289264F4(v59, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState);
      v63 = v138;
      v64 = v129;
      v65 = v131;
      (*(v138 + 56))(v129, 1, 1, v131);
      v66 = *(v63 + 16);
    }

    else
    {
      v67 = *(v61 + 20);
      v68 = v138;
      v66 = *(v138 + 16);
      v64 = v129;
      v65 = v131;
      v66(v129, v59 + v67, v131);
      sub_2289266D4(v59, type metadata accessor for VitalsOutlierNotificationAnalysisState);
      (*(v68 + 56))(v64, 0, 1, v65);
    }

    v69 = v130;
    v70 = v124;
    v66(v130, v140, v65);
    v71 = v122;
    sub_22892600C(v64, v69 + *(v122 + 20), &qword_2813DFEE0, MEMORY[0x277CC9578]);
    sub_2288BC0FC(0, &qword_2813DEC40, 0x277CCD830);
    v72 = MEMORY[0x22AAC3A10](*MEMORY[0x277CCC938]);
    v73 = HKRollingBaselineConfigurationForQuantityType();

    [v73 maximumWindowDuration];
    v75 = v74;

    *(v69 + *(v71 + 24)) = v75;
    if (sub_2288CD2A4(v123))
    {
      v76 = v105;
      sub_22892EDC8();
      v77 = sub_22892EDD8();
      v78 = sub_22892F398();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v141 = v80;
        *v79 = 136446210;
        v81 = sub_22892F948();
        v83 = sub_2288B748C(v81, v82, &v141);

        *(v79 + 4) = v83;
        v84 = v120;
        v65 = v131;
        _os_log_impl(&dword_2288B2000, v77, v78, "[%{public}s] Requesting analysis for relevant samples added", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v80);
        MEMORY[0x22AAC47E0](v80, -1, -1);
        MEMORY[0x22AAC47E0](v79, -1, -1);

        (*(v125 + 8))(v105, v126);
        v85 = v128;
        v86 = v133;
      }

      else
      {

        (*(v125 + 8))(v76, v126);
        v85 = v128;
        v86 = v133;
        v84 = v120;
      }

      v96 = *(v86 + 104);
      os_unfair_lock_lock((v96 + 32));
      v97 = *(v96 + 16);
      if (v97)
      {
        v98 = *(v96 + 24);
        v99 = swift_allocObject();
        *(v99 + 16) = v97;
        *(v99 + 24) = v98;
        v100 = swift_allocObject();
        *(v100 + 16) = sub_228926A10;
        *(v100 + 24) = v99;
        v101 = swift_allocObject();
        *(v101 + 16) = sub_228926A10;
        *(v101 + 24) = v99;
        *(v96 + 16) = sub_228926A14;
        *(v96 + 24) = v101;

        os_unfair_lock_unlock((v96 + 32));
        (*(v100 + 16))();
        sub_2288DEB1C(sub_228926A14, v100);
      }

      else
      {
        os_unfair_lock_unlock((v96 + 32));
      }

      sub_2289266D4(v69, type metadata accessor for SleepingSampleCacheRange);
      sub_2289264F4(v64, &qword_2813DFEE0, MEMORY[0x277CC9578]);
      (*(v138 + 8))(v140, v65);
      (*(v127 + 8))(v137, v85);
      v118(v134, v84);
    }

    else
    {
      sub_22892EDC8();
      v87 = sub_22892EDD8();
      v88 = v70;
      v89 = sub_22892F368();
      if (!os_log_type_enabled(v87, v89))
      {

        (*(v125 + 8))(v88, v126);
        sub_2289266D4(v69, type metadata accessor for SleepingSampleCacheRange);
        sub_2289264F4(v64, &qword_2813DFEE0, MEMORY[0x277CC9578]);
        (*(v138 + 8))(v140, v65);
        (*(v127 + 8))(v137, v128);
        v118(v60, v120);
        v102 = v136;
        v103 = v54;
        return v117(v102, v103);
      }

      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v141 = v91;
      *v90 = 136446210;
      v92 = sub_22892F948();
      v94 = sub_2288B748C(v92, v93, &v141);
      v132 = v51;
      v95 = v94;

      *(v90 + 4) = v95;
      _os_log_impl(&dword_2288B2000, v87, v89, "[%{public}s] Ignoring irrelevant samples added", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v91);
      MEMORY[0x22AAC47E0](v91, -1, -1);
      MEMORY[0x22AAC47E0](v90, -1, -1);

      (*(v125 + 8))(v88, v126);
      sub_2289266D4(v69, type metadata accessor for SleepingSampleCacheRange);
      sub_2289264F4(v64, &qword_2813DFEE0, MEMORY[0x277CC9578]);
      (*(v138 + 8))(v140, v65);
      (*(v127 + 8))(v137, v128);
      v118(v134, v120);
    }

    v103 = v135;
    v102 = v136;
    return v117(v102, v103);
  }

  __break(1u);
  return result;
}

void sub_228924C78()
{
  v1 = v0;
  v2 = sub_22892EDE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892EDC8();
  v6 = sub_22892EDD8();
  v7 = sub_22892F398();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    v10 = sub_22892F948();
    v12 = sub_2288B748C(v10, v11, &v20);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2288B2000, v6, v7, "[%{public}s] Received notification of samples removed", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AAC47E0](v9, -1, -1);
    MEMORY[0x22AAC47E0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v13 = *(v1 + 104);
  os_unfair_lock_lock((v13 + 32));
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = *(v13 + 24);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = v15;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_228925924;
    *(v17 + 24) = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_228925924;
    *(v18 + 24) = v16;
    *(v13 + 16) = sub_228926A14;
    *(v13 + 24) = v18;

    os_unfair_lock_unlock((v13 + 32));
    (*(v17 + 16))();
    sub_2288DEB1C(sub_22892594C, v17);
  }

  else
  {
    os_unfair_lock_unlock((v13 + 32));
  }
}

id *sub_228924F68()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_228924FD0()
{
  sub_228924F68();

  return swift_deallocClassInstance();
}

void sub_228925090(uint64_t a1)
{
  type metadata accessor for VitalsOutlierNotificationAnalysisStateCache.CachedValue(319);
  if (v1 <= 0x3F)
  {
    sub_2289251A8(319, &qword_27D85BEF8, sub_228925144, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_228925144()
{
  result = qword_27D85BF00;
  if (!qword_27D85BF00)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27D85BF00);
  }

  return result;
}

void sub_2289251A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228925220(uint64_t a1)
{
  sub_2289251A8(319, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState, MEMORY[0x277D83D88]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_2289252D8(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_22892E088();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = v1;
  v12 = v3;
  sub_22892E198();
  v8 = sub_22892E078();
  LOBYTE(a1) = sub_22891E5D4(a1, v8);

  (*(v5 + 8))(v7, v4);
  return a1 & 1;
}

uint64_t sub_228925454()
{
  if (*(v0 + 64))
  {
    v1 = sub_2288CC5E4();
    sub_22892EF68();
    v2 = sub_22892F7E8();
    MEMORY[0x22AAC3770](v2);

    v3 = sub_22891E4DC(0x6F63737065656C73, 0xEB000000002E6572, v1);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_228925538()
{
  v0 = sub_22892DFB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x277CC9830], v0);
  sub_22892DFC8();
  return (*(v1 + 8))(v3, v0);
}

double sub_228925650(void *a1)
{
  v1 = [a1 daemon];
  if (v1 && (v2 = v1, v3 = [v1 behavior], v4 = objc_msgSend(v3, sel_isAppleWatch), v3, v2, v4))
  {
    return 300.0;
  }

  else
  {
    return 600.0;
  }
}

uint64_t sub_228925728()
{
  if (*(v0 + 64))
  {
    return sub_2288CC5E4();
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_228925770@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_22892F3F8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, *a1, v5);
  sub_22892F3E8();
  (*(v6 + 8))(v8, v5);
  v9 = sub_22892F3C8();
  if (v2)
  {
  }

  v11 = v9;

  if (v11)
  {
    v12 = v11;
    [v12 integerValue];
    sub_22892EED8();

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = sub_22892EFA8();
  return (*(*(v14 - 8) + 56))(a2, v13, 1, v14);
}

uint64_t sub_228925990(uint64_t a1, uint64_t a2)
{
  sub_2289251A8(0, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_228925A24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VitalsOutlierNotificationAnalysisState(0);
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v35 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2289251A8(0, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState, MEMORY[0x277D83D88]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v36 = &v35 - v9;
  sub_2289265DC(0);
  v11 = v10;
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for VitalsOutlierNotificationAnalysisStateCache.CachedValue(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228926670(0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v18 + 56);
  sub_228926574(a1, v20, type metadata accessor for VitalsOutlierNotificationAnalysisStateCache.CachedValue);
  sub_228926574(a2, &v20[v21], type metadata accessor for VitalsOutlierNotificationAnalysisStateCache.CachedValue);
  v22 = *(v8 + 48);
  if (v22(v20, 1, v7) == 1)
  {
    v23 = 1;
    v24 = v22(&v20[v21], 1, v7);
    v25 = type metadata accessor for VitalsOutlierNotificationAnalysisStateCache.CachedValue;
    if (v24 == 1)
    {
      goto LABEL_20;
    }

    goto LABEL_6;
  }

  sub_228926574(v20, v16, type metadata accessor for VitalsOutlierNotificationAnalysisStateCache.CachedValue);
  if (v22(&v20[v21], 1, v7) != 1)
  {
    v26 = *(v11 + 48);
    sub_228925990(v16, v13);
    sub_228925990(&v20[v21], &v13[v26]);
    v27 = v38;
    v28 = *(v37 + 48);
    if (v28(v13, 1, v38) == 1)
    {
      if (v28(&v13[v26], 1, v27) == 1)
      {
        sub_2289264F4(v13, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState);
        v23 = 1;
LABEL_19:
        v25 = type metadata accessor for VitalsOutlierNotificationAnalysisStateCache.CachedValue;
        goto LABEL_20;
      }
    }

    else
    {
      v29 = v36;
      sub_22892600C(v13, v36, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState);
      if (v28(&v13[v26], 1, v27) != 1)
      {
        v30 = v35;
        sub_22892608C(&v13[v26], v35, type metadata accessor for VitalsOutlierNotificationAnalysisState);
        sub_22892EFA8();
        sub_2288BAAF4(&unk_2813DEE10, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C0]);
        if (sub_22892F088() & 1) != 0 && (sub_22892DEB8())
        {
          v31 = *(v27 + 24);
          v32 = *(v29 + v31);
          v33 = *(v30 + v31);
          sub_2289266D4(v30, type metadata accessor for VitalsOutlierNotificationAnalysisState);
          sub_2289266D4(v29, type metadata accessor for VitalsOutlierNotificationAnalysisState);
          sub_2289264F4(v13, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState);
          v25 = type metadata accessor for VitalsOutlierNotificationAnalysisStateCache.CachedValue;
          if (v32 == v33)
          {
            v23 = 1;
            goto LABEL_20;
          }
        }

        else
        {
          sub_2289266D4(v30, type metadata accessor for VitalsOutlierNotificationAnalysisState);
          sub_2289266D4(v29, type metadata accessor for VitalsOutlierNotificationAnalysisState);
          sub_2289264F4(v13, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState);
        }

        goto LABEL_18;
      }

      sub_2289266D4(v29, type metadata accessor for VitalsOutlierNotificationAnalysisState);
    }

    sub_2289266D4(v13, sub_2289265DC);
LABEL_18:
    v23 = 0;
    goto LABEL_19;
  }

  sub_2289264F4(v16, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState);
LABEL_6:
  v23 = 0;
  v25 = sub_228926670;
LABEL_20:
  sub_2289266D4(v20, v25);
  return v23;
}

uint64_t sub_22892600C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2289251A8(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22892608C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2289260F4(uint64_t a1)
{
  v28 = a1;
  v1 = sub_22892DFB8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22892E048();
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22892DEF8();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_22892EFA8();
  v24 = *(v9 - 8);
  v25 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892DED8();
  v12 = *MEMORY[0x277CC9830];
  v13 = *(v2 + 104);
  v13(v4, v12, v1);
  sub_22892DFC8();
  v14 = *(v2 + 8);
  v14(v4, v1);
  sub_22892EF48();
  result = sub_22892EF68();
  if (__OFSUB__(result, 13))
  {
    __break(1u);
  }

  else
  {
    v23 = result - 13;
    v13(v4, v12, v1);
    sub_22892DFC8();
    v14(v4, v1);
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_22892F648();

    v29 = 0xD00000000000002ELL;
    v30 = 0x80000002289355B0;
    sub_2288BAAF4(&qword_2813DEDF0, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6D0]);
    v16 = v25;
    v17 = sub_22892F7E8();
    MEMORY[0x22AAC3770](v17);

    v18 = objc_allocWithZone(MEMORY[0x277D10868]);
    v19 = sub_22892DFF8();
    v20 = sub_22892F098();

    v21 = [v18 initWithProfile:v28 cachingSession:0 gregorianCalendar:v19 morningIndexRange:v23 ascending:14 options:1 debugIdentifier:{132, v20}];

    (*(v26 + 8))(v7, v27);
    v22 = sub_2288E72B4();

    (*(v24 + 8))(v11, v16);
    return v22;
  }

  return result;
}

uint64_t sub_2289264F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2289251A8(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_228926574(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2289265DC(uint64_t a1)
{
  if (!qword_27D85BF38)
  {
    sub_2289251A8(255, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D85BF38);
    }
  }
}

void sub_228926670(uint64_t a1)
{
  if (!qword_27D85BF40[0])
  {
    type metadata accessor for VitalsOutlierNotificationAnalysisStateCache.CachedValue(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_27D85BF40);
    }
  }
}

uint64_t sub_2289266D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_228926734()
{
  v1 = v0;
  v2 = sub_22892EDE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892EDC8();
  v6 = sub_22892EDD8();
  v7 = sub_22892F398();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136446210;
    v10 = sub_22892F948();
    v12 = sub_2288B748C(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2288B2000, v6, v7, "[%{public}s] Received notification of key-value domain change", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AAC47E0](v9, -1, -1);
    MEMORY[0x22AAC47E0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v13 = *(v1 + 112);
  v14 = v13 + *(*v13 + *MEMORY[0x277D841D0] + 16);
  v15 = (*(*v13 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v13 + v15));
  sub_2289266D4(v14, type metadata accessor for VitalsOutlierNotificationAnalysisStateCache.CachedValue);
  sub_2289251A8(0, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState, MEMORY[0x277D83D88]);
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  v17 = *(v14 + *(type metadata accessor for VitalsOutlierNotificationAnalysisStateCache(0) + 20));
  if (v17)
  {
    v17();
  }

  os_unfair_lock_unlock((v13 + v15));
}

uint64_t sub_228926A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v27 = sub_22892EB78();
  v3 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22892E9E8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for VitalsOutlierNotificationHoldIdentifier(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892E9F8();
  v14 = (*(v7 + 88))(v9, v6);
  if (v14 == *MEMORY[0x277D10088])
  {
    (*(v7 + 96))(v9, v6);
    v15 = v27;
    (*(v3 + 32))(v5, v9, v27);
    *&v13[*(v10 + 20)] = sub_22892EB68();
    sub_22892E9A8();
    v16 = sub_22892EA08();
    (*(*(v16 - 8) + 8))(a1, v16);
    (*(v3 + 8))(v5, v15);
    v17 = v28;
    sub_22892B004(v13, v28, type metadata accessor for VitalsOutlierNotificationHoldIdentifier);
    v18 = 0;
    v19 = v17;
  }

  else
  {
    v20 = a1;
    v21 = v28;
    if (v14 == *MEMORY[0x277D10078])
    {
      v22 = sub_22892EA08();
      (*(*(v22 - 8) + 8))(v20, v22);
    }

    else
    {
      v23 = *MEMORY[0x277D10080];
      v24 = v14;
      v25 = sub_22892EA08();
      (*(*(v25 - 8) + 8))(v20, v25);
      if (v24 != v23)
      {
        (*(v7 + 8))(v9, v6);
      }
    }

    v18 = 1;
    v19 = v21;
  }

  return (*(v11 + 56))(v19, v18, 1, v10);
}

uint64_t sub_228926E04()
{
  sub_22892F648();

  sub_22892EF68();
  v0 = sub_22892F7E8();
  MEMORY[0x22AAC3770](v0);

  MEMORY[0x22AAC3770](46, 0xE100000000000000);
  type metadata accessor for VitalsOutlierNotificationHoldIdentifier(0);
  v1 = sub_22892F7E8();
  MEMORY[0x22AAC3770](v1);

  return 0x756F736C61746976;
}

uint64_t sub_228926F08(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_228926F3C(uint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v221 = a2;
  v222 = a3;
  v225 = a1;
  v227 = *v3;
  v208 = sub_22892EFA8();
  v205 = *(v208 - 8);
  MEMORY[0x28223BE20](v208);
  v207 = &v192 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892A5FC(0);
  MEMORY[0x28223BE20](v5 - 8);
  v204 = &v192 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = type metadata accessor for VitalsOutlierNotificationAnalysisState(0);
  v203 = *(v206 - 8);
  v7 = MEMORY[0x28223BE20](v206);
  v199 = &v192 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v201 = &v192 - v9;
  sub_2288B5C84(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v195 = &v192 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v209 = &v192 - v13;
  v14 = sub_22892DEF8();
  v212 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v196 = &v192 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v197 = &v192 - v18;
  MEMORY[0x28223BE20](v17);
  v210 = &v192 - v19;
  v20 = sub_22892E6D8();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v219 = (&v192 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2288BF3F4(0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v192 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288C0BA8(0);
  v223 = *(v26 - 1);
  v224 = v26;
  v27 = MEMORY[0x28223BE20](v26);
  v216 = &v192 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v192 - v29;
  v31 = sub_22892EDE8();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x28223BE20](v31);
  v217 = &v192 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v211 = &v192 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v194 = &v192 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v200 = &v192 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v198 = &v192 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v214 = &v192 - v44;
  MEMORY[0x28223BE20](v43);
  v46 = &v192 - v45;
  sub_22892EDC8();
  v47 = sub_22892EDD8();
  v48 = sub_22892F398();
  v49 = os_log_type_enabled(v47, v48);
  v220 = v30;
  v215 = v20;
  v226 = v31;
  v213 = v14;
  if (v49)
  {
    v50 = swift_slowAlloc();
    v202 = v21;
    v51 = v50;
    v52 = swift_slowAlloc();
    v193 = v25;
    v53 = v52;
    v228 = v52;
    *v51 = 136446210;
    v54 = sub_22892F948();
    v218 = v32;
    v56 = sub_2288B748C(v54, v55, &v228);
    v32 = v218;

    *(v51 + 4) = v56;
    _os_log_impl(&dword_2288B2000, v47, v48, "[%{public}s] Beginning notification determination", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    v57 = v53;
    v25 = v193;
    MEMORY[0x22AAC47E0](v57, -1, -1);
    v58 = v51;
    v21 = v202;
    MEMORY[0x22AAC47E0](v58, -1, -1);

    v59 = *(v32 + 8);
    v59(v46, v226);
  }

  else
  {

    v59 = *(v32 + 8);
    v59(v46, v31);
  }

  v60 = *(v227 + 80);
  v61 = *(v227 + 88);
  (*(v61 + 48))(v225, v60, v61);
  if ((*(v223 + 48))(v25, 1, v224) != 1)
  {
    v72 = v220;
    sub_22892B004(v25, v220, sub_2288C0BA8);
    v73 = v216;
    sub_2288BFDEC(v72, v216, sub_2288C0BA8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v75 = *(v73 + 8);
      v228 = *v73;
      v74 = v228;
      v229 = v75;
      sub_2288B7AEC();
      swift_willThrowTypedImpl();
      v76 = v214;
      sub_22892EDC8();
      v77 = v74;
      v78 = sub_22892EDD8();
      v79 = sub_22892F378();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v218 = v32;
        v224 = v59;
        v81 = v80;
        v225 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v228 = v82;
        *v81 = 136446466;
        v83 = sub_22892F948();
        v85 = sub_2288B748C(v83, v84, &v228);
        v86 = v220;

        *(v81 + 4) = v85;
        *(v81 + 12) = 2114;
        swift_allocError();
        *v87 = v74;
        *(v87 + 8) = v75;
        v88 = v74;
        v89 = _swift_stdlib_bridgeErrorToNSError();
        *(v81 + 14) = v89;
        v90 = v225;
        *v225 = v89;
        _os_log_impl(&dword_2288B2000, v78, v79, "[%{public}s] Error enumerating day summary %{public}@", v81, 0x16u);
        sub_22892B324(v90, sub_2288D6D64);
        MEMORY[0x22AAC47E0](v90, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v82);
        MEMORY[0x22AAC47E0](v82, -1, -1);
        MEMORY[0x22AAC47E0](v81, -1, -1);

        v91 = v224(v76, v226);
      }

      else
      {

        v91 = (v59)(v76, v226);
        v86 = v220;
      }

      v221(v91);

      v109 = v86;
      return sub_22892B324(v109, sub_2288C0BA8);
    }

    v223 = v60;
    v93 = v215;
    (*(v21 + 32))(v219, v73, v215);
    if ((sub_22892E698() & 1) == 0)
    {
      goto LABEL_15;
    }

    v94 = v209;
    sub_22892EC18();
    v95 = v94;
    v96 = v212;
    v97 = v213;
    if ((*(v212 + 48))(v95, 1, v213) == 1)
    {
      sub_22892B324(v95, sub_2288B5C84);
      v93 = v215;
LABEL_15:
      v98 = v211;
      sub_22892EDC8();
      v99 = sub_22892EDD8();
      v100 = sub_22892F398();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v218 = v32;
        v224 = v59;
        v103 = v102;
        v228 = v102;
        *v101 = 136446210;
        v104 = sub_22892F948();
        v106 = v98;
        v107 = sub_2288B748C(v104, v105, &v228);

        *(v101 + 4) = v107;
        _os_log_impl(&dword_2288B2000, v99, v100, "[%{public}s] No data available for analysis, returning.", v101, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v103);
        MEMORY[0x22AAC47E0](v103, -1, -1);
        MEMORY[0x22AAC47E0](v101, -1, -1);

        v108 = v224(v106, v226);
      }

      else
      {

        v108 = (v59)(v98, v226);
      }

      v221(v108);
      (*(v21 + 8))(v219, v93);
      goto LABEL_21;
    }

    v224 = v59;
    v218 = v32;
    v110 = (*(v96 + 32))(v210, v95, v97);
    v111 = MEMORY[0x22AAC2D10](v110);
    v112 = v223;
    v113 = (*(v61 + 24))(v223, v61);
    if (v111 < v113)
    {
      (*(v61 + 136))(v112, v61);
    }

    v114 = v207;
    sub_22892E5E8();
    v115 = v204;
    (*(v61 + 64))(v114, v112, v61);
    v116 = *(v205 + 8);
    v116(v114, v208);
    v117 = v206;
    if ((*(v203 + 48))(v115, 1, v206) == 1)
    {
      sub_22892B324(v115, sub_22892A5FC);
      v118 = v111;
    }

    else
    {
      v119 = v201;
      sub_22892B004(v115, v201, type metadata accessor for VitalsOutlierNotificationAnalysisState);
      if (*(v119 + *(v117 + 24)) >= v111)
      {
        v165 = v198;
        sub_22892EDC8();
        v166 = sub_22892EDD8();
        v167 = sub_22892F398();
        if (os_log_type_enabled(v166, v167))
        {
          v168 = swift_slowAlloc();
          v169 = swift_slowAlloc();
          v228 = v169;
          *v168 = 136446210;
          v170 = sub_22892F948();
          v202 = v21;
          v172 = sub_2288B748C(v170, v171, &v228);
          v21 = v202;

          *(v168 + 4) = v172;
          v126 = v210;
          v127 = v215;
          _os_log_impl(&dword_2288B2000, v166, v167, "[%{public}s] Notification state unchanged", v168, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v169);
          MEMORY[0x22AAC47E0](v169, -1, -1);
          MEMORY[0x22AAC47E0](v168, -1, -1);

          v173 = v224(v165, v226);
          v134 = v220;
        }

        else
        {

          v173 = v224(v165, v226);
          v134 = v220;
          v126 = v210;
          v127 = v215;
        }

        v221(v173);
        sub_22892B324(v201, type metadata accessor for VitalsOutlierNotificationAnalysisState);
LABEL_48:
        (*(v212 + 8))(v126, v213);
        (*(v21 + 8))(v219, v127);
        v109 = v134;
        return sub_22892B324(v109, sub_2288C0BA8);
      }

      v118 = v111;
      sub_22892B324(v119, type metadata accessor for VitalsOutlierNotificationAnalysisState);
    }

    v120 = v207;
    sub_22892E5E8();
    v121 = sub_22892877C(v120, v118, v223, v61);
    v116(v120, v208);
    if (v121)
    {
      v122 = v200;
      sub_22892EDC8();
      v123 = sub_22892EDD8();
      v124 = sub_22892F398();
      v125 = os_log_type_enabled(v123, v124);
      v126 = v210;
      v127 = v215;
      if (v125)
      {
        v128 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        v228 = v129;
        *v128 = 136446210;
        v130 = sub_22892F948();
        v202 = v21;
        v132 = sub_2288B748C(v130, v131, &v228);
        v21 = v202;

        *(v128 + 4) = v132;
        _os_log_impl(&dword_2288B2000, v123, v124, "[%{public}s] Notification is held", v128, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v129);
        MEMORY[0x22AAC47E0](v129, -1, -1);
        MEMORY[0x22AAC47E0](v128, -1, -1);
      }

      v133 = v224(v122, v226);
      v134 = v220;
      v221(v133);
      goto LABEL_48;
    }

    v135 = v215;
    v136 = sub_22892EC38();
    v137 = v210;
    if (v136)
    {
      v138 = sub_228928BB0(v223, v61);
      v139 = v118 < v113 || v138;
      if (v118 >= v113 || v138)
      {
        goto LABEL_36;
      }
    }

    else if (v118 >= v113)
    {
      v139 = 0;
LABEL_36:
      LODWORD(v217) = v139;
      v202 = v21;
      v140 = v223;
      (*(v61 + 40))(v225, v223, v61);
      v141 = v197;
      sub_22892DE88();
      v142 = *(v61 + 8);
      v143 = v196;
      v216 = v61 + 8;
      v214 = v142;
      (v142)(v140, v61);
      sub_22892B3D4(&qword_2813DFEE8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v144 = v213;
      v145 = sub_22892F048();
      v146 = (v212 + 8);
      v147 = v143;
      v148 = *(v212 + 8);
      v148(v147, v144);
      if (v145)
      {
        v209 = v148;
        v211 = v146;
        v149 = v140;
        if ((*(v61 + 32))(v140, v61))
        {
          result = sub_228928CA8(v225, v118, v219);
          if (result)
          {
            v150 = v194;
            sub_22892EDC8();
            v151 = sub_22892EDD8();
            v152 = sub_22892F398();
            if (os_log_type_enabled(v151, v152))
            {
              v153 = swift_slowAlloc();
              v154 = swift_slowAlloc();
              v228 = v154;
              *v153 = 136446210;
              v155 = sub_22892F948();
              v157 = sub_2288B748C(v155, v156, &v228);

              *(v153 + 4) = v157;
              _os_log_impl(&dword_2288B2000, v151, v152, "[%{public}s] Suppressing outlier notification due to likelihood of it being due to a nap", v153, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v154);
              MEMORY[0x22AAC47E0](v154, -1, -1);
              MEMORY[0x22AAC47E0](v153, -1, -1);
            }

            v158 = v224(v150, v226);
            v159 = v202;
            v160 = v215;
            v161 = v210;
            v162 = v197;
            v163 = v209;
            v221(v158);
            v164 = v213;
            v163(v162, v213);
            v163(v161, v164);
            (*(v159 + 8))(v219, v160);
            goto LABEL_21;
          }

          if (v118 < v113)
          {
            if ((v217 & 1) == 0)
            {
              __break(1u);
              return result;
            }

            (*(v61 + 120))(v219, v140, v61);
          }

          else
          {
            (*(v61 + 112))(v219, v140, v61);
          }
        }

        v183 = v118;
        v184 = v199;
        sub_22892E5E8();
        v185 = v206;
        v186 = v140;
        v187 = v214;
        (v214)(v186, v61);
        *(v184 + *(v185 + 24)) = v183;
        (*(v61 + 96))(v184, v149, v61);
        v188 = sub_22892B324(v184, type metadata accessor for VitalsOutlierNotificationAnalysisState);
        v189 = v213;
        if (v217)
        {
          v190 = v195;
          v187(v149, v61);
          (*(v212 + 56))(v190, 0, 1, v189);
          v188 = (*(v61 + 80))(v190, v149, v61);
        }

        v221(v188);
        v191 = v209;
        (v209)(v197, v189);
        v191(v210, v189);
      }

      else
      {
        v182 = (*(v61 + 104))(v141, v140, v61);
        v221(v182);
        v148(v141, v144);
        v148(v210, v144);
      }

      (*(v202 + 8))(v219, v215);
LABEL_21:
      v109 = v220;
      return sub_22892B324(v109, sub_2288C0BA8);
    }

    v174 = v137;
    v175 = v118;
    v176 = v199;
    v177 = v219;
    sub_22892E5E8();
    v178 = v135;
    v179 = v206;
    v180 = v223;
    (*(v61 + 8))(v223, v61);
    *(v176 + *(v179 + 24)) = v175;
    (*(v61 + 96))(v176, v180, v61);
    v181 = sub_22892B324(v176, type metadata accessor for VitalsOutlierNotificationAnalysisState);
    v221(v181);
    (*(v212 + 8))(v174, v213);
    (*(v21 + 8))(v177, v178);
    goto LABEL_21;
  }

  sub_22892B324(v25, sub_2288BF3F4);
  v62 = v217;
  sub_22892EDC8();
  v63 = sub_22892EDD8();
  v64 = sub_22892F378();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = v59;
    v67 = swift_slowAlloc();
    v228 = v67;
    *v65 = 136446210;
    v68 = sub_22892F948();
    v70 = sub_2288B748C(v68, v69, &v228);

    *(v65 + 4) = v70;
    _os_log_impl(&dword_2288B2000, v63, v64, "[%{public}s] Configuration issue: no day summary result returned", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v67);
    MEMORY[0x22AAC47E0](v67, -1, -1);
    MEMORY[0x22AAC47E0](v65, -1, -1);

    v71 = v66(v62, v226);
  }

  else
  {

    v71 = (v59)(v62, v226);
  }

  return (v221)(v71);
}

uint64_t sub_22892877C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a2;
  sub_22892B0D4(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892B108(0);
  v38 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v34 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892B1C8(0);
  v14 = v13;
  v35 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  sub_22892B13C(0);
  sub_22892B3D4(&qword_27D85C010, sub_22892B1C8, MEMORY[0x277D85AC0]);
  v39 = v16;
  v17 = v14;
  sub_22892ECE8();
  result = (*(a4 + 128))(a3, a4);
  v19 = 0;
  v20 = result + 56;
  v21 = 1 << *(result + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(result + 56);
  v24 = (v21 + 63) >> 6;
  v36 = (v11 + 48);
  v37 = v11 + 56;
  v32 = (v11 + 8);
  v33 = (v11 + 32);
  v25 = v17;
  while (v23)
  {
LABEL_9:
    v23 &= v23 - 1;

    sub_22892ECF8();

    v27 = v38;
    if ((*v36)(v9, 1, v38) == 1)
    {
      result = sub_22892B324(v9, sub_22892B0D4);
    }

    else
    {
      v31 = v25;
      v28 = v34;
      (*v33)(v34, v9, v27);
      swift_getKeyPath();
      sub_22892ED08();

      result = (*v32)(v28, v27);
      if (v42 == 1)
      {
        v25 = v31;
      }

      else
      {
        v25 = v31;
        if (v41 >= v30)
        {
          v29 = 1;
LABEL_16:

          (*(v35 + 8))(v39, v25);
          return v29;
        }
      }
    }
  }

  while (1)
  {
    v26 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v26 >= v24)
    {
      v29 = 0;
      goto LABEL_16;
    }

    v23 = *(v20 + 8 * v26);
    ++v19;
    if (v23)
    {
      v19 = v26;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_228928BB0(uint64_t a1, uint64_t a2)
{
  sub_2288B5C84(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 72))(a1, a2);
  v7 = sub_22892DEF8();
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7) == 1;
  sub_22892B324(v6, sub_2288B5C84);
  return v8;
}

uint64_t sub_228928CA8(uint64_t (*a1)(char *, void, uint64_t), uint64_t a2, void (*a3)(char *, uint64_t))
{
  v4 = v3;
  v210 = a3;
  v199 = v4;
  v200 = a1;
  v201 = *v4;
  v178 = sub_22892EDE8();
  v177 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v176 = &v159 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892B06C(0);
  v170 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v169 = &v159 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v167 = &v159 - v10;
  sub_228915874(0);
  v168 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v171 = &v159 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v172 = &v159 - v14;
  v191 = sub_22892E038();
  v190 = *(v191 - 8);
  MEMORY[0x28223BE20](v191);
  v189 = &v159 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288B5C84(0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v174 = &v159 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v188 = &v159 - v19;
  v20 = sub_22892DEF8();
  v21 = *(v20 - 8);
  v192 = v20;
  v193 = v21;
  v22 = MEMORY[0x28223BE20](v20);
  v173 = &v159 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v187 = &v159 - v25;
  MEMORY[0x28223BE20](v24);
  v194 = &v159 - v26;
  v180 = sub_22892E048();
  v179 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v197 = &v159 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_22892EFA8();
  v185 = *(v186 - 8);
  v28 = MEMORY[0x28223BE20](v186);
  v183 = &v159 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v182 = &v159 - v31;
  MEMORY[0x28223BE20](v30);
  v184 = &v159 - v32;
  sub_2288BF32C(0);
  MEMORY[0x28223BE20](v33 - 8);
  v208 = &v159 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = sub_22892E6D8();
  v203 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v202 = &v159 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288CD8F0(0);
  v37 = MEMORY[0x28223BE20](v36 - 8);
  v196 = &v159 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v40 = &v159 - v39;
  v41 = sub_22892DDC8();
  v42 = *(v41 - 8);
  v206 = v41;
  v207 = v42;
  v43 = MEMORY[0x28223BE20](v41);
  v175 = &v159 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v198 = &v159 - v46;
  MEMORY[0x28223BE20](v45);
  v204 = &v159 - v47;
  v209 = sub_22892E5A8();
  v48 = *(v209 - 8);
  v49 = MEMORY[0x28223BE20](v209);
  v181 = &v159 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v49);
  v195 = &v159 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v55 = &v159 - v54;
  MEMORY[0x28223BE20](v53);
  v57 = &v159 - v56;
  v58 = sub_22892E948();
  v59 = *(v58 - 8);
  v60 = MEMORY[0x28223BE20](v58);
  v61 = MEMORY[0x28223BE20](v60);
  v63 = &v159 - v62;
  v64 = MEMORY[0x28223BE20](v61);
  v66 = &v159 - v65;
  MEMORY[0x28223BE20](v64);
  v69 = &v159 - v68;
  if (a2 != 2)
  {
    return 0;
  }

  v165 = v67;
  v166 = v40;
  sub_22892E5C8();
  v70 = sub_22892E898();
  v71 = *(v59 + 8);
  v71(v69, v58);
  if ((v70 & 1) == 0)
  {
    return 0;
  }

  sub_22892E5C8();
  sub_22892E938();
  v162 = v58;
  v163 = v71;
  v71(v66, v58);
  v72 = sub_22892E598();
  v73 = *(v48 + 8);
  v164 = v48 + 8;
  result = v73(v57, v209);
  if (v72)
  {
    v75 = [objc_opt_self() minuteUnit];
    v76 = [objc_opt_self() quantityWithUnit:v75 doubleValue:90.0];

    LODWORD(v75) = [v72 hk:v76 isGreaterThanQuantity:?];
    v77 = v208;
    v78 = v166;
    if (!v75)
    {
      return 1;
    }

    sub_22892E5C8();
    sub_22892E938();
    v79 = v73;
    v80 = v162;
    v163(v63, v162);
    sub_22892E588();
    v161 = v79;
    v79(v55, v209);
    v82 = v206;
    v81 = v207;
    v83 = *(v207 + 48);
    if (v83(v78, 1, v206) == 1)
    {
LABEL_6:
      v84 = sub_2288CD8F0;
      v85 = v78;
LABEL_9:
      sub_22892B324(v85, v84);
      return 0;
    }

    v160 = v83;
    v86 = *(v81 + 32);
    v87 = v204;
    v166 = (v81 + 32);
    v159 = v86;
    v86(v204, v78, v82);
    (*(*(v201 + 88) + 56))(v200, *(v201 + 80));
    v88 = v203;
    if ((*(v203 + 48))(v77, 1, v205) == 1)
    {
      (*(v81 + 8))(v87, v82);
      v84 = sub_2288BF32C;
      v85 = v77;
      goto LABEL_9;
    }

    (*(v88 + 32))(v202, v77, v205);
    v89 = v165;
    sub_22892E5C8();
    v90 = v195;
    sub_22892E938();
    v91 = v89;
    v92 = v163;
    v163(v91, v80);
    v78 = v196;
    sub_22892E588();
    v161(v90, v209);
    if (v160(v78, 1, v82) == 1)
    {
      (*(v88 + 8))(v202, v205);
      (*(v207 + 8))(v204, v82);
      goto LABEL_6;
    }

    v159(v198, v78, v82);
    sub_22892E5C8();
    v93 = v182;
    sub_22892E8A8();
    v92(v69, v80);
    v94 = v92;
    v95 = v183;
    sub_22892E5E8();
    v96 = v184;
    sub_22892EF18();
    v97 = *(v185 + 8);
    v98 = v95;
    v99 = v186;
    v97(v98, v186);
    v97(v93, v99);
    v100 = sub_22892EF68();
    v97(v96, v99);
    sub_22892E5C8();
    v101 = v181;
    sub_22892E938();
    v94(v69, v80);
    sub_22892E578();
    v161(v101, v209);
    v102 = v190;
    v103 = v190[13];
    v104 = v189;
    LODWORD(v209) = *MEMORY[0x277CC9968];
    v105 = v191;
    v200 = v103;
    v103(v189);
    v106 = v187;
    sub_22892DD98();
    v107 = v188;
    v208 = v100;
    sub_22892E028();
    v109 = v192;
    v108 = v193;
    v110 = v193 + 8;
    v210 = *(v193 + 8);
    v210(v106, v192);
    v199 = v102[1];
    v199(v104, v105);
    v196 = *(v108 + 48);
    if ((v196)(v107, 1, v109) == 1)
    {
      v111 = v107;
LABEL_17:
      sub_22892B324(v111, sub_2288B5C84);
      v116 = v197;
      v118 = v206;
      v117 = v207;
      goto LABEL_18;
    }

    v112 = *(v108 + 32);
    v195 = (v108 + 32);
    v190 = v112;
    (v112)(v194, v107, v109);
    v200(v104, v209, v105);
    sub_22892DD78();
    v113 = v174;
    sub_22892E028();
    v114 = v210;
    v210(v106, v109);
    v199(v104, v105);
    v115 = v109;
    if ((v196)(v113, 1, v109) == 1)
    {
      v114(v194, v109);
      v111 = v113;
      goto LABEL_17;
    }

    v209 = v110;
    v136 = v173;
    (v190)(v173, v113, v109);
    v137 = sub_22892B3D4(&qword_2813DFEE8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v138 = v194;
    v139 = sub_22892F048();
    v118 = v206;
    v117 = v207;
    if ((v139 & 1) == 0)
    {
      v154 = v210;
      v210(v136, v115);
      v154(v138, v115);
      v116 = v197;
LABEL_18:
      v119 = v198;
      v120 = v176;
      sub_22892EDC8();
      v121 = v175;
      (*(v117 + 16))(v175, v119, v118);
      v122 = sub_22892EDD8();
      v123 = sub_22892F378();
      if (os_log_type_enabled(v122, v123))
      {
        v124 = v117;
        v125 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        v211 = v126;
        *v125 = 136446722;
        v127 = sub_22892F948();
        v129 = sub_2288B748C(v127, v128, &v211);

        *(v125 + 4) = v129;
        *(v125 + 12) = 2080;
        sub_22892B3D4(&qword_27D85BFE0, MEMORY[0x277CC88A8], MEMORY[0x277CC88E0]);
        v130 = sub_22892F7E8();
        v132 = v131;
        v133 = *(v124 + 8);
        v133(v121, v118);
        v134 = sub_2288B748C(v130, v132, &v211);

        *(v125 + 14) = v134;
        *(v125 + 22) = 2048;
        *(v125 + 24) = v208;
        _os_log_impl(&dword_2288B2000, v122, v123, "[%{public}s] Unexpectedly could not shift %s by %ld", v125, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AAC47E0](v126, -1, -1);
        MEMORY[0x22AAC47E0](v125, -1, -1);

        (*(v177 + 8))(v120, v178);
        (*(v179 + 8))(v197, v180);
        v133(v198, v118);
        (*(v203 + 8))(v202, v205);
        v133(v204, v118);
      }

      else
      {

        v135 = *(v117 + 8);
        v135(v121, v118);
        (*(v177 + 8))(v120, v178);
        (*(v179 + 8))(v116, v180);
        v135(v119, v118);
        (*(v203 + 8))(v202, v205);
        v135(v204, v118);
      }

      return 0;
    }

    v208 = v137;
    result = sub_22892F048();
    if (result)
    {
      v140 = *(v193 + 16);
      v141 = v167;
      v140(v167, v138, v115);
      v142 = v170;
      v140((v141 + *(v170 + 48)), v136, v115);
      v143 = v169;
      sub_2288BFDEC(v141, v169, sub_22892B06C);
      v144 = *(v142 + 48);
      v145 = v172;
      v146 = v190;
      (v190)(v172, v143, v115);
      v147 = v210;
      v210((v143 + v144), v115);
      sub_22892B004(v141, v143, sub_22892B06C);
      v148 = *(v142 + 48);
      v201 = *(v168 + 36);
      v146(v145 + v201, v143 + v148, v115);
      v147(v143, v115);
      v149 = v171;
      v150 = v204;
      sub_22892DD48();
      if (sub_22892F048() & 1) != 0 || (sub_22892F048() & 1) != 0 || (sub_22892B3D4(&qword_27D85BFE8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]), (sub_22892F088()))
      {
        sub_22892B324(v149, sub_228915874);
        sub_22892B324(v145, sub_228915874);
        v151 = v210;
        v210(v173, v115);
        v151(v194, v115);
        (*(v179 + 8))(v197, v180);
        v152 = *(v117 + 8);
        v153 = v206;
        v152(v198, v206);
        (*(v203 + 8))(v202, v205);
        v152(v150, v153);
        return 1;
      }

      v155 = sub_22892F088();
      sub_22892B324(v149, sub_228915874);
      sub_22892B324(v145, sub_228915874);
      v156 = v210;
      v210(v173, v115);
      v156(v194, v115);
      (*(v179 + 8))(v197, v180);
      v157 = *(v117 + 8);
      v158 = v206;
      v157(v198, v206);
      (*(v203 + 8))(v202, v205);
      v157(v150, v158);
      return (v155 & 1) != 0;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22892A400()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_22892A498(uint64_t a1)
{
  result = sub_22892EFA8();
  if (v2 <= 0x3F)
  {
    result = sub_22892DEF8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

BOOL sub_22892A524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22892EFA8();
  sub_22892B3D4(&unk_2813DEE10, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C0]);
  return (sub_22892F088() & 1) != 0 && (sub_22892DEB8() & 1) != 0 && *(a1 + *(a3 + 24)) == *(a2 + *(a3 + 24));
}

uint64_t sub_22892A630@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  sub_22892B204(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_22892E2D8();
  v65 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83E40];
  v64 = MEMORY[0x277D85418];
  sub_22892BF48(0, &qword_27D85C020, MEMORY[0x277D83E40], MEMORY[0x277D85418]);
  v8 = v7;
  v66 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v60 = &v54 - v12;
  v67 = MEMORY[0x277D85AB8];
  sub_22892BF48(0, &qword_27D85C028, v6, MEMORY[0x277D85AB8]);
  v68 = v13;
  v74 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v58 = &v54 - v17;
  sub_22892B1C8(0);
  MEMORY[0x28223BE20](v18 - 8);
  v61 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_22892ECB8();
  v20 = *(v71 - 8);
  v21 = MEMORY[0x28223BE20](v71);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v55 = &v54 - v24;
  sub_22892B238(0);
  v63 = v25;
  v73 = *(v25 - 8);
  v26 = MEMORY[0x28223BE20](v25);
  v57 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v59 = &v54 - v28;
  v77 = 0;
  v78 = 0xE000000000000000;
  sub_22892F648();

  v77 = 0x756F736C61746976;
  v78 = 0xEF2E737265696C74;
  v75 = sub_22892EF68();
  v29 = sub_22892F7E8();
  MEMORY[0x22AAC3770](v29);

  MEMORY[0x22AAC3770](46, 0xE100000000000000);
  v75 = v77;
  v76 = v78;
  v56 = sub_22892B2D0();
  MEMORY[0x22AAC2910](&v77, &v75, MEMORY[0x277D837D0], v56);

  sub_22892E2C8();
  sub_22892ECC8();
  v30 = sub_22892ECD8();
  v31 = v3;
  (*(*(v30 - 8) + 56))(v3, 1, 1, v30);
  sub_22892E2C8();
  sub_22892B3D4(&qword_27D85C040, MEMORY[0x277D853D0], MEMORY[0x277D853C8]);
  v54 = v16;
  v32 = MEMORY[0x277D83E40];
  v33 = v62;
  sub_22892ECA8();
  v70 = *(v20 + 8);
  v72 = v20 + 8;
  v34 = v23;
  v35 = v71;
  v70(v34, v71);
  sub_22892B324(v31, sub_22892B204);
  (*(v65 + 8))(v5, v33);
  MEMORY[0x22AAC2960](v16, v32);
  v36 = sub_22892B384(&qword_27D85C048, &qword_27D85C020, v64, MEMORY[0x277D85420]);
  v37 = v60;
  MEMORY[0x22AAC2910](v11, v8, v36);
  v38 = *(v66 + 1);
  v38(v11, v8);
  v39 = v58;
  sub_22892E2B8();
  v38(v37, v8);
  sub_22892B13C(0);
  v41 = v40;
  sub_22892BF48(0, &qword_27D85AF60, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
  v67 = sub_22892B384(&qword_27D85C050, &qword_27D85C028, v67, MEMORY[0x277D85AC0]);
  v42 = v68;
  v43 = v61;
  v65 = v41;
  v44 = v55;
  sub_22892EC98();
  v45 = *(v74 + 8);
  v74 += 8;
  v66 = v45;
  v45(v39, v42);
  v70(v44, v35);
  v46 = v57;
  MEMORY[0x22AAC2950](v43, v41);
  v47 = sub_22892B3D4(&qword_27D85C058, sub_22892B238, MEMORY[0x277D85408]);
  v48 = v59;
  v49 = v63;
  MEMORY[0x22AAC2910](v46, v63, v47);
  v50 = *(v73 + 8);
  v73 += 8;
  v50(v46, v49);
  v75 = v77;
  v76 = v78;
  sub_22892E2B8();

  sub_22892E2C8();
  v51 = v54;
  sub_22892EC88();
  sub_22892EC78();
  v52 = v66;
  v66(v51, v42);
  v70(v44, v71);
  v52(v39, v42);
  return (v50)(v48, v49);
}

unint64_t *sub_22892AF44@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = result[1];
  if ((v4 ^ *result) < 0x4000)
  {
    v11 = 0;
    LOBYTE(v7) = 1;
  }

  else
  {
    v6 = result[2];
    v5 = result[3];
    result = sub_22892BE28(*result, v4, v6, v5, 10);
    if ((v7 & 0x100) != 0)
    {

      v8 = sub_22892B41C(v3, v4, v6, v5, 10);
      v10 = v9;

      result = v8;
      LOBYTE(v7) = v10;
    }

    if (v7)
    {
      v11 = 0;
    }

    else
    {
      v11 = result;
    }
  }

  *a2 = v11;
  *(a2 + 8) = v7 & 1;
  return result;
}

uint64_t sub_22892B004(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_22892B06C(uint64_t a1)
{
  if (!qword_27D85BFD8)
  {
    sub_22892DEF8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D85BFD8);
    }
  }
}

void sub_22892B13C(uint64_t a1)
{
  if (!qword_27D85C000)
  {
    sub_22892BF48(255, &qword_27D85AF60, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D85C000);
    }
  }
}

void sub_22892B26C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_22892B2D0()
{
  result = qword_27D85C038;
  if (!qword_27D85C038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D85C038);
  }

  return result;
}

uint64_t sub_22892B324(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22892B384(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_22892BF48(255, a2, MEMORY[0x277D83E40], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22892B3D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unsigned __int8 *sub_22892B41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_22892BEF4();

  result = sub_22892F188();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_22892B9B4(result, v7);
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_22892F698();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_22892B9B4(uint64_t a1, unint64_t a2)
{
  v2 = sub_22892F198();
  v6 = sub_22892BA34(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_22892BA34(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_22892F4A8();
    if (!v9 || (v10 = v9, v11 = sub_2288C025C(v9, 0), v12 = sub_22892BB8C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_22892F0E8();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_22892F0E8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_22892F698();
LABEL_4:

  return sub_22892F0E8();
}

unint64_t sub_22892BB8C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_22892BDAC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_22892F158();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_22892F698();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_22892BDAC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_22892F128();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_22892BDAC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22892F168();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x22AAC37A0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_22892BE28(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_22892F698();
  }

  result = sub_22892BF98(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t sub_22892BEF4()
{
  result = qword_27D85C060;
  if (!qword_27D85C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D85C060);
  }

  return result;
}

void sub_22892BF48(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_22892BF98(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_22892BDAC(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_22892F148();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_22892BDAC(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_22892BDAC(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_22892F148();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_22892C42C(uint64_t a1)
{
  result = sub_22892EFA8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22892C4E4(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v185 = a3;
  v186 = a2;
  v169 = a1;
  v176 = *v3;
  v4 = v176;
  v166 = sub_22892E0B8();
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v164 = &v153 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_22892E068();
  v159 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v158 = &v153 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22892EDE8();
  v189 = *(v7 - 8);
  v190 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v175 = &v153 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v157 = &v153 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v156 = &v153 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v167 = &v153 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v154 = &v153 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v155 = &v153 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v168 = &v153 - v21;
  MEMORY[0x28223BE20](v20);
  v171 = &v153 - v22;
  sub_22892DA2C(0, &qword_27D85BF18, type metadata accessor for SleepScoreNotificationState);
  MEMORY[0x28223BE20](v23 - 8);
  v173 = &v153 - v24;
  v177 = type metadata accessor for SleepScoreNotificationState(0);
  v172 = *(v177 - 8);
  v25 = MEMORY[0x28223BE20](v177);
  v163 = &v153 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v170 = &v153 - v28;
  MEMORY[0x28223BE20](v27);
  v174 = (&v153 - v29);
  v180 = type metadata accessor for VitalsOutlierNotificationAnalysisState;
  sub_22892DA2C(0, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState);
  MEMORY[0x28223BE20](v30 - 8);
  v179 = &v153 - v31;
  v32 = sub_22892EFA8();
  v182 = *(v32 - 8);
  v183 = v32;
  MEMORY[0x28223BE20](v32);
  v34 = &v153 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_22892E048();
  v36 = *(v35 - 8);
  v191 = v35;
  v192 = v36;
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v153 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v41 = &v153 - v40;
  v42 = sub_22892DEF8();
  v43 = *(v42 - 8);
  v44 = MEMORY[0x28223BE20](v42);
  v46 = &v153 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v48 = &v153 - v47;
  v49 = v3[2];
  v50 = v4;
  v178 = *(v4 + 88);
  v51 = *(v178 + 8);
  v52 = *(v51 + 8);
  v53 = *(v50 + 80);
  v162 = v51 + 8;
  v161 = v52;
  v52(v53, v51);
  (*(v51 + 16))(v53, v51);
  v187 = v43;
  v188 = v42;
  v54 = *(v43 + 16);
  v184 = v48;
  v55 = v49;
  v56 = v42;
  v57 = v191;
  v54(v46, v48, v56);
  v58 = *(v192 + 16);
  v181 = v41;
  v58(v39, v41, v57);
  v59 = v34;
  sub_22892EF48();
  v60 = v179;
  v61 = v34;
  v62 = v51;
  (*(v51 + 64))(v61, v53, v51);
  v63 = type metadata accessor for VitalsOutlierNotificationAnalysisState(0);
  v64 = v60;
  LODWORD(v60) = (*(*(v63 - 8) + 48))(v60, 1, v63);
  sub_22892DB38(v64, &qword_27D85BC08, v180);
  if (v60 == 1)
  {
    v65 = v175;
    sub_22892EDC8();
    v66 = sub_22892EDD8();
    v67 = sub_22892F398();
    if (!os_log_type_enabled(v66, v67))
    {
LABEL_5:

      v74 = (*(v189 + 8))(v65, v190);
      v75 = v188;
      v186(v74);
LABEL_6:
      (*(v182 + 8))(v59, v183);
      (*(v192 + 8))(v181, v57);
      return (*(v187 + 8))(v184, v75);
    }

    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v193 = v69;
    *v68 = 136446210;
    v70 = sub_22892F948();
    v72 = sub_2288B748C(v70, v71, &v193);

    *(v68 + 4) = v72;
    v73 = "[%{public}s] No vitals state yet persisted. Not continuing.";
LABEL_4:
    _os_log_impl(&dword_2288B2000, v66, v67, v73, v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v69);
    MEMORY[0x22AAC47E0](v69, -1, -1);
    MEMORY[0x22AAC47E0](v68, -1, -1);
    goto LABEL_5;
  }

  v77 = v178;
  v78 = v173;
  (*(v178 + 72))(v59, v53, v178);
  if ((*(v172 + 48))(v78, 1, v177) != 1)
  {
    v90 = v174;
    sub_22892DBF0(v78, v174);
    v91 = v171;
    sub_22892EDC8();
    v92 = v170;
    sub_22892DC54(v90, v170);
    v93 = sub_22892EDD8();
    v94 = sub_22892F398();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v193 = v96;
      *v95 = 136446466;
      v97 = sub_22892F948();
      v99 = sub_2288B748C(v97, v98, &v193);

      *(v95 + 4) = v99;
      *(v95 + 12) = 2080;
      sub_22892DCE0(&qword_27D85B550, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v83 = v188;
      v100 = sub_22892F7E8();
      v102 = v101;
      sub_22892DB94(v92);
      v103 = sub_2288B748C(v100, v102, &v193);

      *(v95 + 14) = v103;
      _os_log_impl(&dword_2288B2000, v93, v94, "[%{public}s] Skipping Sleep Score notification because one was already sent at %s.", v95, 0x16u);
      swift_arrayDestroy();
      v104 = v96;
      v57 = v191;
      MEMORY[0x22AAC47E0](v104, -1, -1);
      MEMORY[0x22AAC47E0](v95, -1, -1);

      v105 = (*(v189 + 8))(v91, v190);
    }

    else
    {

      sub_22892DB94(v92);
      v105 = (*(v189 + 8))(v91, v190);
      v83 = v188;
    }

    v186(v105);
    sub_22892DB94(v174);
    goto LABEL_21;
  }

  sub_22892DB38(v78, &qword_27D85BF18, type metadata accessor for SleepScoreNotificationState);
  if ((*(v77 + 64))(v59, v53, v77))
  {
    v79 = v168;
    sub_22892EDC8();
    v80 = sub_22892EDD8();
    v81 = sub_22892F398();
    v82 = os_log_type_enabled(v80, v81);
    v83 = v188;
    if (v82)
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v193 = v85;
      *v84 = 136446210;
      v86 = sub_22892F948();
      v88 = sub_2288B748C(v86, v87, &v193);

      *(v84 + 4) = v88;
      _os_log_impl(&dword_2288B2000, v80, v81, "[%{public}s] Skipping Sleep Score notification because one was sent by another device.", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v85);
      MEMORY[0x22AAC47E0](v85, -1, -1);
      MEMORY[0x22AAC47E0](v84, -1, -1);
    }

    v89 = (*(v189 + 8))(v79, v190);
    v186(v89);
LABEL_21:
    (*(v182 + 8))(v59, v183);
    (*(v192 + 8))(v181, v57);
    return (*(v187 + 8))(v184, v83);
  }

  v179 = v53;
  v106 = sub_22892D888(v169, v53, v77);
  if (!v106)
  {
    v65 = v157;
    sub_22892EDC8();
    v66 = sub_22892EDD8();
    v67 = sub_22892F398();
    if (!os_log_type_enabled(v66, v67))
    {
      goto LABEL_5;
    }

    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v193 = v69;
    *v68 = 136446210;
    v121 = sub_22892F948();
    v123 = sub_2288B748C(v121, v122, &v193);

    *(v68 + 4) = v123;
    v73 = "[%{public}s] Skipping Sleep Score notification because of insufficient data.";
    goto LABEL_4;
  }

  v107 = v106;
  v180 = sub_22892E148();
  if (!v180)
  {
    v124 = v156;
    sub_22892EDC8();
    v125 = sub_22892EDD8();
    v126 = sub_22892F398();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v193 = v128;
      *v127 = 136446210;
      v129 = sub_22892F948();
      v131 = sub_2288B748C(v129, v130, &v193);

      *(v127 + 4) = v131;
      _os_log_impl(&dword_2288B2000, v125, v126, "[%{public}s] Skipping Sleep Score notification because none was built.", v127, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v128);
      MEMORY[0x22AAC47E0](v128, -1, -1);
      MEMORY[0x22AAC47E0](v127, -1, -1);
    }

    v132 = (*(v189 + 8))(v124, v190);
    v75 = v188;
    v186(v132);

    goto LABEL_6;
  }

  v108 = v158;
  sub_22892E0D8();
  v109 = v179;
  v110 = (*(v77 + 32))(v108, v179, v77);
  (*(v159 + 8))(v108, v160);
  v175 = v107;
  v153 = v55;
  if (v110)
  {
    (*(v77 + 56))(v180, v109, v77);
    v111 = v155;
    sub_22892EDC8();
    v112 = sub_22892EDD8();
    v113 = sub_22892F398();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v193 = v115;
      *v114 = 136446210;
      v116 = sub_22892F948();
      v118 = v59;
      v119 = sub_2288B748C(v116, v117, &v193);

      *(v114 + 4) = v119;
      v59 = v118;
      v120 = "[%{public}s] Fired Sleep Score notification";
LABEL_30:
      _os_log_impl(&dword_2288B2000, v112, v113, v120, v114, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v115);
      MEMORY[0x22AAC47E0](v115, -1, -1);
      MEMORY[0x22AAC47E0](v114, -1, -1);
    }
  }

  else
  {
    v111 = v154;
    sub_22892EDC8();
    v112 = sub_22892EDD8();
    v113 = sub_22892F398();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v193 = v115;
      *v114 = 136446210;
      v133 = sub_22892F948();
      v135 = v59;
      v136 = sub_2288B748C(v133, v134, &v193);

      *(v114 + 4) = v136;
      v59 = v135;
      v120 = "[%{public}s] Skipping Sleep Score notification because they're off.";
      goto LABEL_30;
    }
  }

  v174 = *(v189 + 8);
  (v174)(v111, v190);
  v137 = v167;
  v138 = v163;
  sub_22892E108();
  v139 = v177;
  v140 = v179;
  v161(v179, v62);
  v141 = v164;
  sub_22892E118();
  v142 = sub_22892E0A8();
  (*(v165 + 8))(v141, v166);
  *(v138 + *(v139 + 24)) = v142;
  (*(v178 + 80))(v138, v140);
  v143 = sub_22892DB94(v138);
  v186(v143);
  sub_22892EDC8();
  v144 = sub_22892EDD8();
  v145 = sub_22892F398();
  if (os_log_type_enabled(v144, v145))
  {
    v146 = swift_slowAlloc();
    v147 = v137;
    v148 = swift_slowAlloc();
    v193 = v148;
    *v146 = 136446210;
    v149 = sub_22892F948();
    v151 = sub_2288B748C(v149, v150, &v193);

    *(v146 + 4) = v151;
    _os_log_impl(&dword_2288B2000, v144, v145, "[%{public}s] Completed Sleep Score notification work.", v146, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v148);
    MEMORY[0x22AAC47E0](v148, -1, -1);
    MEMORY[0x22AAC47E0](v146, -1, -1);

    v152 = v147;
  }

  else
  {

    v152 = v137;
  }

  (v174)(v152, v190);
  (*(v182 + 8))(v59, v183);
  (*(v192 + 8))(v181, v191);
  return (*(v187 + 8))(v184, v188);
}

uint64_t sub_22892D888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22892E098();
  MEMORY[0x28223BE20](v6 - 8);
  sub_22892E168();
  (*(a3 + 40))(a1, a2, a3);
  (*(a3 + 16))(a2, a3);
  (*(a3 + 48))(a2, a3);
  (*(a3 + 24))(a2, a3);
  return sub_22892E158();
}

uint64_t type metadata accessor for SleepScoreNotificationState(uint64_t a1)
{
  result = qword_27D85C0F8;
  if (!qword_27D85C0F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22892DA2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22892F498();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

BOOL sub_22892DA80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22892EFA8();
  sub_22892DCE0(&unk_2813DEE10, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C0]);
  return (sub_22892F088() & 1) != 0 && (sub_22892DEB8() & 1) != 0 && *(a1 + *(a3 + 24)) == *(a2 + *(a3 + 24));
}

uint64_t sub_22892DB38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22892DA2C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22892DB94(uint64_t a1)
{
  v2 = type metadata accessor for SleepScoreNotificationState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22892DBF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepScoreNotificationState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22892DC54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepScoreNotificationState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22892DCE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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