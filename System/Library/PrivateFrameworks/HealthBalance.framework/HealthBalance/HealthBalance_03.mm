id HKQuantityRange.init(percent:)(double a1, double a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = objc_opt_self();
  v6 = objc_opt_self();
  v7 = [v6 percentUnit];
  v8 = [v5 quantityWithUnit:v7 doubleValue:a1 / 100.0];

  v9 = [v6 percentUnit];
  v10 = [v5 quantityWithUnit:v9 doubleValue:a2 / 100.0];

  v11 = [v4 initWithMinimum:v8 maximum:v10 isMinimumInclusive:1 isMaximumInclusive:1];
  return v11;
}

id sub_1CFDED078(SEL *a1, double a2, double a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = objc_opt_self();
  v8 = objc_opt_self();
  v9 = [v8 *a1];
  v10 = [v7 quantityWithUnit:v9 doubleValue:a2];

  v11 = [v8 *a1];
  v12 = [v7 quantityWithUnit:v11 doubleValue:a3];

  v13 = [v6 initWithMinimum:v10 maximum:v12 isMinimumInclusive:1 isMaximumInclusive:1];
  return v13;
}

uint64_t SleepingSampleBaselineComparisonCollection.mostRecentSampleDate.getter@<X0>(unsigned int (**a1)(uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1CFDB2328(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  SleepingSampleBaselineComparisonCollection.enclosingSampleDateInterval.getter(a1, a2, v9);
  v10 = sub_1CFE30014();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1CFDA9B14(v9, sub_1CFDB2328);
    v12 = 1;
  }

  else
  {
    sub_1CFE2FFD4();
    (*(v11 + 8))(v9, v10);
    v12 = 0;
  }

  v13 = sub_1CFE30314();
  return (*(*(v13 - 8) + 56))(a3, v12, 1, v13);
}

uint64_t SleepingSampleBaselineComparisonCollection.enclosingSampleDateInterval.getter@<X0>(unsigned int (**a1)(uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v145 = a1;
  v127 = a3;
  v4 = sub_1CFE30314();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v123 = v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v121 = v118 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v120 = v118 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = v118 - v17;
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v136 = v118 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v132 = v118 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v135 = v118 - v27;
  MEMORY[0x1EEE9AC00](v26, v28);
  v139 = v118 - v29;
  sub_1CFDB2328(0);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v138 = v118 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for SleepingSampleAggregate(0);
  MEMORY[0x1EEE9AC00](v151, v33);
  v150 = v118 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1CFE30014();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v37);
  v153 = v118 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for SleepingSampleBaselineComparison(0);
  v144 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v149 = v118 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDA9D60(0);
  v44 = MEMORY[0x1EEE9AC00](v42 - 8, v43);
  v125 = v118 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v44, v46);
  v49 = v118 - v48;
  v51 = MEMORY[0x1EEE9AC00](v47, v50);
  v140 = v118 - v52;
  v54 = MEMORY[0x1EEE9AC00](v51, v53);
  v134 = v118 - v55;
  v57 = MEMORY[0x1EEE9AC00](v54, v56);
  v133 = v118 - v58;
  v60 = MEMORY[0x1EEE9AC00](v57, v59);
  v131 = v118 - v61;
  v63 = MEMORY[0x1EEE9AC00](v60, v62);
  v65 = v118 - v64;
  MEMORY[0x1EEE9AC00](v63, v66);
  v67 = v5[7];
  v141 = v118 - v68;
  v67();
  v152 = v65;
  v147 = v67;
  v148 = v5 + 7;
  (v67)(v65, 1, 1, v4);
  v69 = (*(a2 + 8))(v145, a2);
  v70 = *(v69 + 16);
  v137 = v35;
  v126 = v36;
  if (v70)
  {
    v119 = v49;
    v122 = v18;
    v71 = (*(v144 + 80) + 32) & ~*(v144 + 80);
    v118[1] = v69;
    v72 = v69 + v71;
    v73 = v144[9];
    v145 = (v36 + 48);
    v146 = v73;
    v130 = (v36 + 32);
    v144 = (v5 + 6);
    v74 = v5;
    v75 = (v5 + 4);
    v124 = v74;
    v143 = (v74 + 1);
    v128 = (v36 + 8);
    v76 = v141;
    v77 = v138;
    v78 = v139;
    v129 = v75;
    do
    {
      v79 = v149;
      sub_1CFDA9898(v72, v149, type metadata accessor for SleepingSampleBaselineComparison);
      v80 = v150;
      sub_1CFDA9898(v79, v150, type metadata accessor for SleepingSampleAggregate);
      sub_1CFDA9B14(v79, type metadata accessor for SleepingSampleBaselineComparison);
      sub_1CFDA9898(v80 + *(v151 + 28), v77, sub_1CFDB2328);
      sub_1CFDA9B14(v80, type metadata accessor for SleepingSampleAggregate);
      if ((*v145)(v77, 1, v35) == 1)
      {
        sub_1CFDA9B14(v77, sub_1CFDB2328);
      }

      else
      {
        (*v130)(v153, v77, v35);
        v81 = v133;
        sub_1CFDA9898(v76, v133, sub_1CFDA9D60);
        v82 = *v144;
        if ((*v144)(v81, 1, v4) == 1)
        {
          sub_1CFE30004();
          if (v82(v81, 1, v4) != 1)
          {
            sub_1CFDA9B14(v81, sub_1CFDA9D60);
          }
        }

        else
        {
          (*v75)(v78, v81, v4);
        }

        v83 = v135;
        sub_1CFE30004();
        sub_1CFDEFED8(&qword_1EDC32030, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
        v84 = sub_1CFE30854();
        sub_1CFDA9B14(v76, sub_1CFDA9D60);
        v85 = *v143;
        if (v84)
        {
          v86 = v78;
        }

        else
        {
          v86 = v83;
        }

        if (v84)
        {
          v87 = v83;
        }

        else
        {
          v87 = v78;
        }

        v142 = *v143;
        v85(v86, v4);
        v88 = v76;
        v89 = *v75;
        v90 = v131;
        v89(v131, v87, v4);
        (v147)(v90, 0, 1, v4);
        sub_1CFDEFF20(v90, v88, sub_1CFDA9D60);
        v91 = v140;
        sub_1CFDA9898(v152, v140, sub_1CFDA9D60);
        if (v82(v91, 1, v4) == 1)
        {
          v92 = v132;
          sub_1CFE2FFD4();
          if (v82(v91, 1, v4) != 1)
          {
            sub_1CFDA9B14(v140, sub_1CFDA9D60);
          }
        }

        else
        {
          v93 = v132;
          v89(v132, v91, v4);
          v92 = v93;
        }

        v94 = v136;
        v95 = v153;
        sub_1CFE2FFD4();
        v96 = sub_1CFE30864();
        v97 = v95;
        v35 = v137;
        (*v128)(v97, v137);
        v98 = v152;
        sub_1CFDA9B14(v152, sub_1CFDA9D60);
        if (v96)
        {
          v99 = v92;
        }

        else
        {
          v99 = v94;
        }

        if (v96)
        {
          v100 = v94;
        }

        else
        {
          v100 = v92;
        }

        v142(v99, v4);
        v101 = v134;
        v75 = v129;
        v89(v134, v100, v4);
        (v147)(v101, 0, 1, v4);
        sub_1CFDEFF20(v101, v98, sub_1CFDA9D60);
        v76 = v141;
        v77 = v138;
        v78 = v139;
      }

      v72 += v146;
      --v70;
    }

    while (v70);

    v102 = v127;
    v5 = v124;
    v103 = v122;
    v49 = v119;
  }

  else
  {
    v102 = v127;

    v103 = v18;
  }

  sub_1CFDA9898(v141, v49, sub_1CFDA9D60);
  v104 = v5[6];
  v105 = v104(v49, 1, v4);
  v106 = v152;
  if (v105 == 1)
  {
    v107 = v49;
    v108 = v126;
  }

  else
  {
    v109 = v5[4];
    v109(v103, v49, v4);
    v110 = v125;
    sub_1CFDA9898(v106, v125, sub_1CFDA9D60);
    if (v104(v110, 1, v4) != 1)
    {
      v113 = v120;
      v109(v120, v110, v4);
      v114 = v5[2];
      v114(v121, v103, v4);
      v114(v123, v113, v4);
      sub_1CFE2FFE4();
      v115 = v5[1];
      v116 = v152;
      v115(v113, v4);
      v115(v103, v4);
      v112 = v116;
      v111 = 0;
      v35 = v137;
      v108 = v126;
      v107 = v141;
      goto LABEL_35;
    }

    (v5[1])(v103, v4);
    v35 = v137;
    v108 = v126;
    v107 = v110;
  }

  sub_1CFDA9B14(v106, sub_1CFDA9D60);
  v111 = 1;
  v112 = v141;
LABEL_35:
  sub_1CFDA9B14(v112, sub_1CFDA9D60);
  sub_1CFDA9B14(v107, sub_1CFDA9D60);
  return (*(v108 + 56))(v102, v111, 1, v35);
}

void sub_1CFDEDFBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t SleepingSampleBaselineComparisonCollection.latestSampleCreationDate.getter@<X0>(unsigned int (**a1)(uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = type metadata accessor for SleepingSampleAggregate(0);
  MEMORY[0x1EEE9AC00](v79, v7);
  v9 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CFE30314();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v75 = v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v81 = v62 - v16;
  v17 = type metadata accessor for SleepingSampleBaselineComparison(0);
  v78 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDA9D60(0);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v67 = v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v74 = v62 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v73 = v62 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v34 = v62 - v33;
  MEMORY[0x1EEE9AC00](v32, v35);
  v36 = *(v11 + 56);
  v80 = v62 - v37;
  v76 = v36;
  v77 = v11 + 56;
  v36();
  v38 = *(a2 + 8);
  v66 = a1;
  v39 = v38(a1, a2);
  v40 = *(v39 + 16);
  v68 = v11;
  if (v40)
  {
    v63 = a2;
    v64 = v3;
    v65 = a3;
    v41 = (*(v78 + 80) + 32) & ~*(v78 + 80);
    v62[1] = v39;
    v42 = v39 + v41;
    v43 = *(v78 + 72);
    v44 = (v11 + 48);
    v78 = v11 + 32;
    v69 = (v11 + 16);
    v70 = (v11 + 8);
    v71 = v43;
    v72 = v9;
    do
    {
      sub_1CFDA9898(v42, v20, type metadata accessor for SleepingSampleBaselineComparison);
      sub_1CFDA9898(v20, v9, type metadata accessor for SleepingSampleAggregate);
      sub_1CFDA9B14(v20, type metadata accessor for SleepingSampleBaselineComparison);
      sub_1CFDA9898(&v9[*(v79 + 32)], v34, sub_1CFDA9D60);
      sub_1CFDA9B14(v9, type metadata accessor for SleepingSampleAggregate);
      v45 = *v44;
      if ((*v44)(v34, 1, v10) == 1)
      {
        sub_1CFDA9B14(v34, sub_1CFDA9D60);
      }

      else
      {
        v46 = *v78;
        (*v78)(v81, v34, v10);
        v47 = v74;
        sub_1CFDA9898(v80, v74, sub_1CFDA9D60);
        if (v45(v47, 1, v10) == 1)
        {
          v48 = v75;
          (*v69)(v75, v81, v10);
          v49 = v45(v47, 1, v10);
          v50 = v48;
          if (v49 != 1)
          {
            sub_1CFDA9B14(v47, sub_1CFDA9D60);
          }
        }

        else
        {
          v50 = v75;
          v46(v75, v47, v10);
        }

        sub_1CFDEFED8(&qword_1EDC32030, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
        v51 = v50;
        v52 = sub_1CFE30864();
        v53 = v80;
        sub_1CFDA9B14(v80, sub_1CFDA9D60);
        if (v52)
        {
          v54 = v51;
        }

        else
        {
          v54 = v81;
        }

        if (v52)
        {
          v55 = v81;
        }

        else
        {
          v55 = v51;
        }

        (*v70)(v54, v10);
        v56 = v73;
        v46(v73, v55, v10);
        (v76)(v56, 0, 1, v10);
        sub_1CFDEFF20(v56, v53, sub_1CFDA9D60);
        v43 = v71;
        v9 = v72;
      }

      v42 += v43;
      --v40;
    }

    while (v40);

    a3 = v65;
    a2 = v63;
  }

  else
  {
  }

  v57 = v80;
  v58 = v67;
  sub_1CFDA9898(v80, v67, sub_1CFDA9D60);
  v59 = v68;
  v60 = *(v68 + 48);
  if (v60(v58, 1, v10) == 1)
  {
    SleepingSampleBaselineComparisonCollection.mostRecentSampleDate.getter(v66, a2, a3);
    sub_1CFDA9B14(v57, sub_1CFDA9D60);
    result = v60(v58, 1, v10);
    if (result != 1)
    {
      return sub_1CFDA9B14(v58, sub_1CFDA9D60);
    }
  }

  else
  {
    sub_1CFDA9B14(v57, sub_1CFDA9D60);
    (*(v59 + 32))(a3, v58, v10);
    return (v76)(a3, 0, 1, v10);
  }

  return result;
}

uint64_t SleepingSampleBaselineComparisonCollection.isWarmupDay.getter(uint64_t a1, uint64_t a2)
{
  sub_1CFDAD280(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDEEC00(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v41 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for SleepingSampleBaselineComparison(0);
  v11 = *(v40 - 8);
  v13 = MEMORY[0x1EEE9AC00](v40, v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v39 - v17;
  v19 = *(a2 + 8);
  v42 = a1;
  v43 = a2;
  v39 = v19;
  result = v19(a1, a2);
  v21 = result;
  v22 = 0;
  v44 = *(result + 16);
  do
  {
    v23 = v22;
    if (v44 == v22)
    {
      break;
    }

    if (v22 >= *(v21 + 16))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    sub_1CFDA9898(v21 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v22++, v18, type metadata accessor for SleepingSampleBaselineComparison);
    v24 = v18[*(type metadata accessor for SleepingSampleAggregate(0) + 36)];
    result = sub_1CFDA9B14(v18, type metadata accessor for SleepingSampleBaselineComparison);
  }

  while (v24 < 3);

  v43 = v39(v42, v43);
  v25 = *(v43 + 16);
  if (v25)
  {
    result = type metadata accessor for SleepingSampleAggregate(0);
    v26 = 0;
    v42 = result;
    v27 = *(result + 36);
    v28 = v43 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    while (v26 < *(v43 + 16))
    {
      sub_1CFDA9898(v28 + *(v11 + 72) * v26, v15, type metadata accessor for SleepingSampleBaselineComparison);
      v31 = v15[v27];
      if (v31 >= 3 && (v31 == 3 || (v35 = v41, sub_1CFDA9898(&v15[*(v40 + 24)], v41, sub_1CFDEEC00), v36 = type metadata accessor for SleepingSampleBaseline(0), v37 = (*(*(v36 - 8) + 48))(v35, 1, v36), sub_1CFDA9B14(v35, sub_1CFDEEC00), v37 == 1)))
      {
        v29 = type metadata accessor for SleepingSampleBaselineComparison;
        v30 = v15;
      }

      else
      {
        sub_1CFDA9898(&v15[*(v42 + 24)], v7, sub_1CFDAD280);
        sub_1CFDAC3A0(0);
        v33 = v32;
        v34 = *(v32 - 8);
        if ((*(v34 + 48))(v7, 1, v32) != 1)
        {
          v38 = sub_1CFE30684();
          sub_1CFDA9B14(v15, type metadata accessor for SleepingSampleBaselineComparison);
          (*(v34 + 8))(v7, v33);

          return 0;
        }

        sub_1CFDA9B14(v15, type metadata accessor for SleepingSampleBaselineComparison);
        v29 = sub_1CFDAD280;
        v30 = v7;
      }

      result = sub_1CFDA9B14(v30, v29);
      if (v25 == ++v26)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_23;
  }

LABEL_17:

  return v44 != v23;
}

BOOL SleepingSampleBaselineComparisonCollection.isWarmupPeriod.getter(uint64_t a1, uint64_t a2)
{
  SleepingSampleBaselineComparisonCollection.warmupProgress.getter(a1, a2, v5);
  if (v5[0] < 1)
  {
    return 0;
  }

  SleepingSampleBaselineComparisonCollection.warmupProgress.getter(a1, a2, v5);
  return v5[0] < v5[1];
}

uint64_t SleepingSampleBaselineComparisonCollection.warmupProgress.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = SleepingSampleBaselineComparisonCollection.warmupDaysRemaining.getter(a1, a2);
  result = SleepingSampleBaselineComparisonCollection.warmupDaysRequired.getter(a1, a2);
  if (__OFSUB__(result, v6))
  {
    __break(1u);
  }

  else
  {
    *a3 = (result - v6) & ~((result - v6) >> 63);
    a3[1] = result;
  }

  return result;
}

uint64_t SleepingSampleBaselineComparisonCollection.isFirstDayAfterWarmup.getter(uint64_t a1, uint64_t a2)
{
  v51 = type metadata accessor for SleepingSampleBaselineAvailability(0);
  v6 = MEMORY[0x1EEE9AC00](v51, v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v44 - v10;
  sub_1CFDAD280(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for SleepingSampleBaselineComparison(0);
  v16 = *(v50 - 8);
  v18 = MEMORY[0x1EEE9AC00](v50, v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v44 - v22;
  v24 = *(a2 + 8);
  v48 = a1;
  v49 = v2;
  v46 = v24;
  v47 = a2 + 8;
  v25 = v24(a1, a2);
  v54 = *(v25 + 16);
  v55 = v16;
  if (v54)
  {
    v45 = a2;
    result = type metadata accessor for SleepingSampleAggregate(0);
    v27 = 0;
    v28 = *(result + 24);
    v52 = v25 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v53 = v28;
    v29 = v16;
    while (v27 < *(v25 + 16))
    {
      sub_1CFDA9898(v52 + *(v29 + 72) * v27, v23, type metadata accessor for SleepingSampleBaselineComparison);
      sub_1CFDA9898(&v23[v53], v15, sub_1CFDAD280);
      sub_1CFDAC3A0(0);
      v31 = v30;
      v32 = *(v30 - 8);
      if ((*(v32 + 48))(v15, 1, v30) == 1)
      {
        sub_1CFDA9B14(v15, sub_1CFDAD280);
        result = sub_1CFDA9B14(v23, type metadata accessor for SleepingSampleBaselineComparison);
      }

      else
      {
        v33 = sub_1CFE30684();
        (*(v32 + 8))(v15, v31);

        v29 = v55;
        sub_1CFDA9898(&v23[*(v50 + 20)], v11, type metadata accessor for SleepingSampleBaselineAvailability);
        sub_1CFDA9B14(v23, type metadata accessor for SleepingSampleBaselineComparison);
        result = swift_getEnumCaseMultiPayload();
        if (result)
        {
          if (result == 1)
          {
            sub_1CFDAD680(0);
          }

          else
          {
            sub_1CFDCB868(0);
          }

          v35 = *&v11[*(v34 + 48)];
          result = sub_1CFDA9B14(v11, sub_1CFDA7AD0);
          if (v35 == 6)
          {

            v36 = 1;
            a2 = v45;
            goto LABEL_15;
          }
        }
      }

      if (v54 == ++v27)
      {

        v36 = 0;
        a2 = v45;
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v36 = 0;
LABEL_15:
  result = v46(v48, a2);
  v37 = result;
  v38 = *(result + 16);
  if (v38)
  {
    v39 = 0;
    v40 = *(v50 + 20);
    v41 = result + ((*(v55 + 80) + 32) & ~*(v55 + 80));
    while (v39 < *(v37 + 16))
    {
      sub_1CFDA9898(v41 + *(v55 + 72) * v39, v20, type metadata accessor for SleepingSampleBaselineComparison);
      sub_1CFDA9898(&v20[v40], v8, type metadata accessor for SleepingSampleBaselineAvailability);
      sub_1CFDA9B14(v20, type metadata accessor for SleepingSampleBaselineComparison);
      result = swift_getEnumCaseMultiPayload();
      if (result)
      {
        if (result == 1)
        {
          sub_1CFDAD680(0);
        }

        else
        {
          sub_1CFDCB868(0);
        }

        v43 = *&v8[*(v42 + 48)];
        result = sub_1CFDA9B14(v8, sub_1CFDA7AD0);
        if (v43 > 6)
        {

          return 0;
        }
      }

      if (v38 == ++v39)
      {
        goto LABEL_24;
      }
    }

LABEL_30:
    __break(1u);
    return result;
  }

LABEL_24:

  return (v36 & 1) != 0;
}

uint64_t SleepingSampleBaselineComparisonCollection.warmupDaysRequired.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleBaselineAvailability(0);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v69 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v70 = (&v62 - v10);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v62 - v13;
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = (&v62 - v17);
  MEMORY[0x1EEE9AC00](v16, v19);
  v64 = (&v62 - v20);
  v71 = type metadata accessor for SleepingSampleBaselineComparison(0);
  v21 = *(v71 - 8);
  v23 = MEMORY[0x1EEE9AC00](v71, v22);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v29 = &v62 - v28;
  MEMORY[0x1EEE9AC00](v27, v30);
  v63 = &v62 - v31;
  v32 = (*(a2 + 8))(a1, a2);
  v33 = *(v32 + 16);
  if (!v33)
  {

    return 7;
  }

  v34 = v32;
  v68 = v32 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
  sub_1CFDA9898(v68, v29, type metadata accessor for SleepingSampleBaselineComparison);
  result = v34;
  if (v33 == 1)
  {
LABEL_3:

    v36 = v63;
    sub_1CFDEFF20(v29, v63, type metadata accessor for SleepingSampleBaselineComparison);
    v37 = v64;
    sub_1CFDA9898(v36 + *(v71 + 20), v64, type metadata accessor for SleepingSampleBaselineAvailability);
    result = swift_getEnumCaseMultiPayload();
    if (result)
    {
      if (result == 1)
      {
        sub_1CFDAD680(0);
        v39 = *(v37 + *(v38 + 64));
        result = sub_1CFDA9B14(v37, sub_1CFDA7AD0);
      }

      else
      {
        result = sub_1CFDA9B14(v37, sub_1CFDA7AD0);
        v39 = 6;
      }
    }

    else
    {
      v39 = *v37;
    }

    v51 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (!v51)
    {
      sub_1CFDA9B14(v36, type metadata accessor for SleepingSampleBaselineComparison);
      return v40;
    }
  }

  else
  {
    v41 = 1;
    v66 = result;
    v67 = v21;
    v65 = v33;
    while (v41 < *(result + 16))
    {
      sub_1CFDA9898(v68 + *(v21 + 72) * v41, v25, type metadata accessor for SleepingSampleBaselineComparison);
      v42 = type metadata accessor for SleepingSampleAggregate(0);
      v43 = v25[*(v42 + 36)] < 3u;
      v44 = *(v71 + 20);
      sub_1CFDA9898(&v25[v44], v18, type metadata accessor for SleepingSampleBaselineAvailability);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_1CFDAD680(0);
          v47 = *(v18 + *(v46 + 64));
          sub_1CFDA9B14(v18, sub_1CFDA7AD0);
        }

        else
        {
          sub_1CFDA9B14(v18, sub_1CFDA7AD0);
          v47 = 6;
        }
      }

      else
      {
        v47 = *v18;
      }

      sub_1CFDA9898(&v25[v44], v14, type metadata accessor for SleepingSampleBaselineAvailability);
      result = swift_getEnumCaseMultiPayload();
      if (result)
      {
        if (result == 1)
        {
          sub_1CFDAD680(0);
        }

        else
        {
          sub_1CFDCB868(0);
        }

        v49 = *&v14[*(v48 + 48)];
        result = sub_1CFDA9B14(v14, sub_1CFDA7AD0);
      }

      else
      {
        v49 = 0;
      }

      v50 = v47 - v49;
      if (__OFSUB__(v47, v49))
      {
        goto LABEL_46;
      }

      v51 = __OFADD__(v50, v43);
      v52 = v50 + v43;
      if (v51)
      {
        goto LABEL_47;
      }

      v53 = v29[*(v42 + 36)] < 3u;
      v54 = *(v71 + 20);
      sub_1CFDA9898(&v29[v54], v70, type metadata accessor for SleepingSampleBaselineAvailability);
      v55 = swift_getEnumCaseMultiPayload();
      if (v55)
      {
        if (v55 == 1)
        {
          sub_1CFDAD680(0);
          v57 = *(v70 + *(v56 + 64));
          sub_1CFDA9B14(v70, sub_1CFDA7AD0);
        }

        else
        {
          sub_1CFDA9B14(v70, sub_1CFDA7AD0);
          v57 = 6;
        }
      }

      else
      {
        v57 = *v70;
      }

      sub_1CFDA9898(&v29[v54], v69, type metadata accessor for SleepingSampleBaselineAvailability);
      result = swift_getEnumCaseMultiPayload();
      if (result)
      {
        if (result == 1)
        {
          sub_1CFDAD680(0);
        }

        else
        {
          sub_1CFDCB868(0);
        }

        v59 = *(v69 + *(v58 + 48));
        result = sub_1CFDA9B14(v69, sub_1CFDA7AD0);
      }

      else
      {
        v59 = 0;
      }

      v60 = v57 - v59;
      if (__OFSUB__(v57, v59))
      {
        goto LABEL_48;
      }

      v51 = __OFADD__(v60, v53);
      v61 = v60 + v53;
      if (v51)
      {
        goto LABEL_49;
      }

      if (v61 < 0 || (v52 & ~(v52 >> 63)) >= v61)
      {
        sub_1CFDA9B14(v25, type metadata accessor for SleepingSampleBaselineComparison);
      }

      else
      {
        sub_1CFDA9B14(v29, type metadata accessor for SleepingSampleBaselineComparison);
        sub_1CFDEFF20(v25, v29, type metadata accessor for SleepingSampleBaselineComparison);
      }

      result = v66;
      v21 = v67;
      if (v65 == ++v41)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t SleepingSampleBaselineComparisonCollection.warmupDaysRemaining.getter(uint64_t a1, uint64_t a2)
{
  v65 = type metadata accessor for SleepingSampleBaselineAvailability(0);
  v5 = MEMORY[0x1EEE9AC00](v65, v4);
  v64 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (&v56 - v8);
  v10 = type metadata accessor for SleepingSampleBaselineComparison(0);
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v59 = &v56 - v17;
  sub_1CFDEDFBC(0, &qword_1EDC31D38, type metadata accessor for SleepingSampleBaselineComparison, MEMORY[0x1E69E6720]);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v20, v23);
  v26 = &v56 - v25;
  v28 = MEMORY[0x1EEE9AC00](v24, v27);
  v60 = &v56 - v29;
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v56 - v31;
  v33 = (*(a2 + 8))(a1, a2);
  v34 = v33;
  if (*(v33 + 16))
  {
    sub_1CFDA9898(v33 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v32, type metadata accessor for SleepingSampleBaselineComparison);
    i = 1;
    v63 = *(v11 + 56);
    v63(v32, 0, 1, v10);
  }

  else
  {
    v63 = *(v11 + 56);
    v63(v32, 1, 1, v10);
    i = 0;
  }

  v36 = v10;
  v37 = v60;
  sub_1CFDD6DA4(v32, v60);
  v61 = *(v11 + 48);
  v62 = v11 + 48;
  if (v61(v37, 1, v36) == 1)
  {

    return 0;
  }

  else
  {
    v39 = v59;
    sub_1CFDEFF20(v37, v59, type metadata accessor for SleepingSampleBaselineComparison);

    v40 = v34;
    v38 = SleepingSampleBaselineComparison.warmupDaysRemaining.getter();
    result = sub_1CFDA9B14(v39, type metadata accessor for SleepingSampleBaselineComparison);
    v57 = v11;
    v58 = v40;
    v42 = *(v40 + 16);
    v59 = v36;
    v60 = v11 + 56;
    if (i != v42)
    {
      goto LABEL_8;
    }

LABEL_7:
    v43 = 1;
    for (i = v42; ; ++i)
    {
      v63(v26, v43, 1, v36);
      sub_1CFDD6DA4(v26, v22);
      if (v61(v22, 1, v36) == 1)
      {
        swift_bridgeObjectRelease_n();
        return v38;
      }

      v44 = v26;
      sub_1CFDEFF20(v22, v15, type metadata accessor for SleepingSampleBaselineComparison);
      v45 = v15[*(type metadata accessor for SleepingSampleAggregate(0) + 36)] < 3u;
      v46 = *(v36 + 20);
      sub_1CFDA9898(&v15[v46], v9, type metadata accessor for SleepingSampleBaselineAvailability);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_1CFDAD680(0);
          v49 = *(v9 + *(v48 + 64));
          sub_1CFDA9B14(v9, sub_1CFDA7AD0);
        }

        else
        {
          sub_1CFDA9B14(v9, sub_1CFDA7AD0);
          v49 = 6;
        }
      }

      else
      {
        v49 = *v9;
      }

      sub_1CFDA9898(&v15[v46], v64, type metadata accessor for SleepingSampleBaselineAvailability);
      result = swift_getEnumCaseMultiPayload();
      if (result)
      {
        if (result == 1)
        {
          sub_1CFDAD680(0);
        }

        else
        {
          sub_1CFDCB868(0);
        }

        v51 = *(v64 + *(v50 + 48));
        result = sub_1CFDA9B14(v64, sub_1CFDA7AD0);
      }

      else
      {
        v51 = 0;
      }

      v52 = v49 - v51;
      if (__OFSUB__(v49, v51))
      {
        break;
      }

      v53 = __OFADD__(v52, v45);
      v54 = v52 + v45;
      if (v53)
      {
        goto LABEL_32;
      }

      v55 = v54 & ~(v54 >> 63);
      result = sub_1CFDA9B14(v15, type metadata accessor for SleepingSampleBaselineComparison);
      if (v55 < v38)
      {
        v38 = v55;
      }

      v26 = v44;
      v36 = v59;
      if (i == v42)
      {
        goto LABEL_7;
      }

LABEL_8:
      if ((i & 0x8000000000000000) != 0)
      {
        goto LABEL_33;
      }

      if (i >= *(v58 + 16))
      {
        goto LABEL_34;
      }

      sub_1CFDA9898(v58 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * i, v26, type metadata accessor for SleepingSampleBaselineComparison);
      v43 = 0;
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  return result;
}

uint64_t sub_1CFDEFED8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CFDEFF20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t SleepingSampleDaySummaryQueryDescriptor.currentAndUpdatingDaySummaryCollections(for:debugIdentifier:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v60 = a3;
  v61 = a1;
  v51[1] = a2;
  v57 = a4;
  Descriptor = type metadata accessor for SleepingSampleDaySummaryQueryDescriptor(0);
  v59 = *(Descriptor - 8);
  v58 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](Descriptor - 8, v7);
  v56 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1CFE304B4();
  v9 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55, v10);
  v54 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDA68BC(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v53 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB65A8(0, &qword_1EDC318A0, MEMORY[0x1E69E8798]);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = v51 - v19;
  sub_1CFDB65A8(0, &qword_1EDC31890, MEMORY[0x1E69E87A0]);
  v52 = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v25 = MEMORY[0x1EEE9AC00](v21, v24);
  v26 = v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = v51 - v28;
  type metadata accessor for SleepingSampleDaySummaryCollection(0);
  (*(v17 + 104))(v20, *MEMORY[0x1E69E8790], v16);
  sub_1CFE30B44();
  (*(v17 + 8))(v20, v16);
  v30 = v5;
  v31 = v5;
  v32 = v53;
  sub_1CFDA67B8(v31, v53, sub_1CFDA68BC);
  v33 = type metadata accessor for GregorianDayRange(0);
  v34 = v54;
  (*(v9 + 16))(v54, v30 + *(v33 + 20), v55);
  v35 = v56;
  sub_1CFDA67B8(v30, v56, type metadata accessor for SleepingSampleDaySummaryQueryDescriptor);
  v36 = *(v22 + 16);
  v57 = v29;
  v37 = v29;
  v38 = v52;
  v36(v26, v37, v52);
  v39 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v40 = (v58 + *(v22 + 80) + v39) & ~*(v22 + 80);
  v41 = swift_allocObject();
  sub_1CFDA65CC(v35, v41 + v39, type metadata accessor for SleepingSampleDaySummaryQueryDescriptor);
  (*(v22 + 32))(v41 + v40, v26, v38);
  v42 = sub_1CFDD1378(v32, v34, 1, sub_1CFDB6454, v41);
  v43 = v60;

  v44 = v42;
  if (v43)
  {
    v43 = sub_1CFE308F4();
  }

  [v42 setDebugIdentifier_];

  v45 = swift_allocObject();
  v46 = v61;
  *(v45 + 16) = v42;
  *(v45 + 24) = v46;
  v47 = v42;
  v48 = v46;
  v49 = v57;
  sub_1CFE30B54();
  [v48 executeQuery_];

  return (*(v22 + 8))(v49, v38);
}

unint64_t sub_1CFDF05AC()
{
  result = qword_1EDC32CA8;
  if (!qword_1EDC32CA8)
  {
    sub_1CFE307E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32CA8);
  }

  return result;
}

id sub_1CFDF0604(uint64_t a1, void *a2, void *a3)
{
  if (qword_1EDC32570 != -1)
  {
    swift_once();
  }

  v5 = sub_1CFE30624();
  __swift_project_value_buffer(v5, qword_1EDC32578);
  v6 = a2;
  v7 = sub_1CFE30604();
  v8 = sub_1CFE30C04();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v9 = 136446466;
    *(v9 + 4) = sub_1CFDAAF6C(0xD000000000000027, 0x80000001CFE35B80, &v14);
    *(v9 + 12) = 2112;
    *(v9 + 14) = v6;
    *v10 = v6;
    v12 = v6;
    _os_log_impl(&dword_1CFDA3000, v7, v8, "[%{public}s] Stopping query for stream termination: %@", v9, 0x16u);
    sub_1CFDAB090(v10);
    MEMORY[0x1D3876FF0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1D3876FF0](v11, -1, -1);
    MEMORY[0x1D3876FF0](v9, -1, -1);
  }

  return [a3 stopQuery_];
}

uint64_t SleepingSampleDaySummaryQueryDescriptor.currentDaySummaryCollection(for:debugIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1CFDF07E8, 0, 0);
}

uint64_t sub_1CFDF07E8()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v8 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v8;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = type metadata accessor for SleepingSampleDaySummaryCollection(0);
  *v4 = v0;
  v4[1] = sub_1CFDF0900;
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000031, 0x80000001CFE39470, sub_1CFDF10B8, v3, v5);
}

uint64_t sub_1CFDF0900()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1CFDF0A3C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1CFDF0A3C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1CFDF0AA0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v38 = a3;
  v39 = a5;
  v34 = a4;
  v37 = a1;
  sub_1CFDB65A8(0, &qword_1EDC31A90, MEMORY[0x1E69E8548]);
  v36 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v34 - v9;
  Descriptor = type metadata accessor for SleepingSampleDaySummaryQueryDescriptor(0);
  v35 = *(Descriptor - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](Descriptor - 8, v13);
  v14 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CFE304B4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDA68BC(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDA67B8(a2, v23, sub_1CFDA68BC);
  v24 = type metadata accessor for GregorianDayRange(0);
  (*(v16 + 16))(v19, a2 + *(v24 + 20), v15);
  sub_1CFDA67B8(a2, v14, type metadata accessor for SleepingSampleDaySummaryQueryDescriptor);
  v25 = v36;
  (*(v7 + 16))(v10, v37, v36);
  v26 = (*(v35 + 80) + 24) & ~*(v35 + 80);
  v27 = (v12 + *(v7 + 80) + v26) & ~*(v7 + 80);
  v28 = swift_allocObject();
  v29 = v38;
  *(v28 + 16) = v38;
  sub_1CFDA65CC(v14, v28 + v26, type metadata accessor for SleepingSampleDaySummaryQueryDescriptor);
  (*(v7 + 32))(v28 + v27, v10, v25);
  v30 = v29;
  v31 = sub_1CFDD1378(v23, v19, 0, sub_1CFDF1158, v28);
  v32 = v39;

  v33 = v31;
  if (v32)
  {
    v32 = sub_1CFE308F4();
  }

  [v31 setDebugIdentifier_];

  [v30 executeQuery_];
}

uint64_t sub_1CFDF0E50(uint64_t a1, void *a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  v24[0] = a6;
  v11 = type metadata accessor for SleepingSampleDaySummaryCollection(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB65A8(0, &qword_1EDC31E58, MEMORY[0x1E69E75F0]);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = (v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = (v24 - v21);
  [a4 stopQuery_];
  if (a3)
  {
    *v22 = a2;
  }

  else
  {
    sub_1CFDA67B8(a5, v22, type metadata accessor for GregorianDayRange);
    *(v22 + *(v11 + 20)) = a2;
  }

  swift_storeEnumTagMultiPayload();
  sub_1CFDF1264(v22, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24[1] = *v19;
    sub_1CFDAB240(a2, a3 & 1);
    sub_1CFDB65A8(0, &qword_1EDC31A90, MEMORY[0x1E69E8548]);
    sub_1CFE30B14();
  }

  else
  {
    sub_1CFDA65CC(v19, v14, type metadata accessor for SleepingSampleDaySummaryCollection);
    sub_1CFDAB240(a2, a3 & 1);
    sub_1CFDB65A8(0, &qword_1EDC31A90, MEMORY[0x1E69E8548]);
    sub_1CFE30B24();
  }

  return sub_1CFDB6B80(v22);
}

uint64_t sub_1CFDF10EC(uint64_t a1)
{
  result = type metadata accessor for GregorianDayRange(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CFDF1158(uint64_t a1, void *a2, char a3)
{
  v7 = *(type metadata accessor for SleepingSampleDaySummaryQueryDescriptor(0) - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  sub_1CFDB65A8(0, &qword_1EDC31A90, MEMORY[0x1E69E8548]);
  v11 = *(v3 + 16);
  v12 = v3 + ((v9 + *(*(v10 - 8) + 80)) & ~*(*(v10 - 8) + 80));

  return sub_1CFDF0E50(a1, a2, a3 & 1, v11, v3 + v8, v12);
}

uint64_t sub_1CFDF1264(uint64_t a1, uint64_t a2)
{
  sub_1CFDB65A8(0, &qword_1EDC31E58, MEMORY[0x1E69E75F0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SleepingSampleQueryRange.init(morningIndexRange:gregorianCalendar:baselineWindowDays:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1CFDF137C(a1, a4);
  v7 = *(type metadata accessor for GregorianDayRange(0) + 20);
  v8 = sub_1CFE304B4();
  (*(*(v8 - 8) + 32))(a4 + v7, a2, v8);
  result = type metadata accessor for SleepingSampleQueryRange(0);
  *(a4 + *(result + 20)) = a3;
  return result;
}

uint64_t sub_1CFDF137C(uint64_t a1, uint64_t a2)
{
  sub_1CFDA7564(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SleepingSampleQueryRange.baselineWindowDays.setter(uint64_t a1)
{
  result = type metadata accessor for SleepingSampleQueryRange(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t SleepingSampleQueryRange.description.getter()
{
  sub_1CFE30DB4();
  MEMORY[0x1D3876060](0xD000000000000023, 0x80000001CFE394B0);
  v0 = GregorianDayRange.description.getter();
  MEMORY[0x1D3876060](v0);

  MEMORY[0x1D3876060](0x696C65736162202CLL, 0xEC000000203A656ELL);
  type metadata accessor for SleepingSampleQueryRange(0);
  v1 = sub_1CFE31074();
  MEMORY[0x1D3876060](v1);

  MEMORY[0x1D3876060](41, 0xE100000000000000);
  return 0;
}

BOOL static SleepingSampleQueryRange.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1CFE307E4();
  sub_1CFDA7880(&qword_1EDC31AB0, MEMORY[0x1E696B418], MEMORY[0x1E696B438]);
  if ((sub_1CFE308B4() & 1) == 0)
  {
    return 0;
  }

  sub_1CFDA7564(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  if ((sub_1CFE308B4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for GregorianDayRange(0);
  if ((MEMORY[0x1D3875B20](a1 + *(v4 + 20), a2 + *(v4 + 20)) & 1) == 0)
  {
    return 0;
  }

  Range = type metadata accessor for SleepingSampleQueryRange(0);
  return *(a1 + *(Range + 20)) == *(a2 + *(Range + 20));
}

uint64_t SleepingSampleQueryRange.hash(into:)(uint64_t a1)
{
  sub_1CFE307E4();
  sub_1CFDA7880(&qword_1EC509638, MEMORY[0x1E696B418], MEMORY[0x1E696B428]);
  sub_1CFE30834();
  sub_1CFDA7564(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  sub_1CFE30834();
  type metadata accessor for GregorianDayRange(0);
  sub_1CFE304B4();
  sub_1CFDA7880(&qword_1EC509640, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1CFE30834();
  Range = type metadata accessor for SleepingSampleQueryRange(0);
  return MEMORY[0x1D3876810](*(v1 + *(Range + 20)));
}

uint64_t SleepingSampleQueryRange.hashValue.getter()
{
  sub_1CFE31144();
  sub_1CFE307E4();
  sub_1CFDA7880(&qword_1EC509638, MEMORY[0x1E696B418], MEMORY[0x1E696B428]);
  sub_1CFE30834();
  sub_1CFDA7564(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  sub_1CFE30834();
  type metadata accessor for GregorianDayRange(0);
  sub_1CFE304B4();
  sub_1CFDA7880(&qword_1EC509640, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1CFE30834();
  Range = type metadata accessor for SleepingSampleQueryRange(0);
  MEMORY[0x1D3876810](*(v0 + *(Range + 20)));
  return sub_1CFE31184();
}

uint64_t sub_1CFDF192C(uint64_t a1)
{
  sub_1CFE31144();
  sub_1CFE307E4();
  sub_1CFDA7880(&qword_1EC509638, MEMORY[0x1E696B418], MEMORY[0x1E696B428]);
  sub_1CFE30834();
  sub_1CFDA7564(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  sub_1CFE30834();
  type metadata accessor for GregorianDayRange(0);
  sub_1CFE304B4();
  sub_1CFDA7880(&qword_1EC509640, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1CFE30834();
  MEMORY[0x1D3876810](*(v1 + *(a1 + 20)));
  return sub_1CFE31184();
}

uint64_t sub_1CFDF1A7C(uint64_t a1, uint64_t a2)
{
  sub_1CFE307E4();
  sub_1CFDA7880(&qword_1EC509638, MEMORY[0x1E696B418], MEMORY[0x1E696B428]);
  sub_1CFE30834();
  sub_1CFDA7564(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  sub_1CFE30834();
  type metadata accessor for GregorianDayRange(0);
  sub_1CFE304B4();
  sub_1CFDA7880(&qword_1EC509640, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1CFE30834();
  return MEMORY[0x1D3876810](*(v2 + *(a2 + 20)));
}

uint64_t sub_1CFDF1BB4(uint64_t a1, uint64_t a2)
{
  sub_1CFE31144();
  sub_1CFE307E4();
  sub_1CFDA7880(&qword_1EC509638, MEMORY[0x1E696B418], MEMORY[0x1E696B428]);
  sub_1CFE30834();
  sub_1CFDA7564(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  sub_1CFE30834();
  type metadata accessor for GregorianDayRange(0);
  sub_1CFE304B4();
  sub_1CFDA7880(&qword_1EC509640, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1CFE30834();
  MEMORY[0x1D3876810](*(v2 + *(a2 + 20)));
  return sub_1CFE31184();
}

BOOL sub_1CFDF1D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CFE307E4();
  sub_1CFDA7880(&qword_1EDC31AB0, MEMORY[0x1E696B418], MEMORY[0x1E696B438]);
  if (sub_1CFE308B4() & 1) != 0 && (sub_1CFDA7564(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]), (sub_1CFE308B4()) && (v6 = type metadata accessor for GregorianDayRange(0), (MEMORY[0x1D3875B20](a1 + *(v6 + 20), a2 + *(v6 + 20))))
  {
    return *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CFDF1E6C(uint64_t a1)
{
  result = type metadata accessor for GregorianDayRange(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CFDF1EE0(void (*a1)(unint64_t), uint64_t a2)
{
  v3 = v2;
  v114 = a2;
  v113 = a1;
  v4 = sub_1CFE307E4();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v116 = &v102 - v11;
  sub_1CFDF6B34(0);
  v131 = v12;
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v124 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v102 - v17;
  sub_1CFDF6C2C(0);
  v112 = v19;
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v111 = (&v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21, v23);
  v110 = &v102 - v24;
  v25 = type metadata accessor for SleepingSampleDaySummary(0);
  v109 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v129 = &v102 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDF3254(0, &qword_1EC509B90, &qword_1EC509B98, MEMORY[0x1E69E5FD0], MEMORY[0x1E69E6E50]);
  v119 = v28;
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v128 = &v102 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v32);
  v135 = &v102 - v33;
  sub_1CFDF6B98(0);
  v36 = MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v108 = &v102 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v36, v38);
  v115 = &v102 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39, v41);
  v117 = &v102 - v43;
  v45 = MEMORY[0x1EEE9AC00](v42, v44);
  v130 = &v102 - v46;
  v48 = MEMORY[0x1EEE9AC00](v45, v47);
  v103 = &v102 - v49;
  v51 = MEMORY[0x1EEE9AC00](v48, v50);
  v123 = &v102 - v52;
  v54 = MEMORY[0x1EEE9AC00](v51, v53);
  v56 = &v102 - v55;
  MEMORY[0x1EEE9AC00](v54, v57);
  v59 = &v102 - v58;
  v60 = *(v5 + 2);
  v118 = v5 + 16;
  v120 = v60;
  v60(&v102 - v58, v2, v4);
  v139 = v5;
  v62 = *(v5 + 7);
  v61 = (v5 + 56);
  v62(v59, 0, 1, v4);
  v138 = v62;
  v62(v56, 1, 1, v4);
  v63 = sub_1CFDF6D3C(v59, v56);
  sub_1CFDF73CC(v56, sub_1CFDF6B98);
  sub_1CFDF73CC(v59, sub_1CFDF6B98);
  result = MEMORY[0x1E69E7CC0];
  if (v63)
  {
    v141 = MEMORY[0x1E69E7CC0];
    sub_1CFDC46C0(0, v63 & ~(v63 >> 63), 0);
    v132 = v141;
    v65 = v135;
    v120(v135, v3, v4);
    v66 = v138;
    v138(v65, 0, 1, v4);
    v105 = *(v119 + 36);
    *(v65 + v105) = 0;
    v67 = v120;
    if ((v63 & 0x8000000000000000) == 0)
    {
      v68 = v61;
      v104 = v63;
      v69 = 0;
      v70 = 0;
      v121 = v18;
      v122 = (v139 + 48);
      v137 = (v139 + 32);
      v134 = (v139 + 8);
      v71 = v124;
      v72 = v135;
      v107 = v9;
      v136 = v68;
      v106 = v3;
      while (!__OFADD__(v69, 1))
      {
        v126 = v69;
        v127 = v70;
        v125 = v69 + 1;
        v73 = v72;
        v74 = v123;
        v67(v123, v3, v4);
        (v66)(v74, 0, 1, v4);
        v75 = *(v131 + 48);
        sub_1CFDF7278(v73, v18, sub_1CFDF6B98);
        sub_1CFDF7278(v74, &v18[v75], sub_1CFDF6B98);
        v76 = *v122;
        v77 = (*v122)(v18, 1, v4);
        v139 = v76;
        if (v77 == 1)
        {
          sub_1CFDF73CC(v74, sub_1CFDF6B98);
          sub_1CFDF73CC(v18, sub_1CFDF6B34);
          v66 = v117;
        }

        else
        {
          v68 = v103;
          sub_1CFDF7278(v18, v103, sub_1CFDF6B98);
          v78 = v76(&v18[v75], 1, v4);
          v66 = v117;
          if (v78 == 1)
          {
            goto LABEL_29;
          }

          v79 = &v18[v75];
          v80 = v116;
          (*v137)(v116, v79, v4);
          sub_1CFDA78C8(&qword_1EDC32CA8, MEMORY[0x1E696B430]);
          v81 = v68;
          v82 = sub_1CFE30854();
          v83 = *v134;
          (*v134)(v80, v4);
          sub_1CFDF73CC(v123, sub_1CFDF6B98);
          v83(v81, v4);
          v71 = v124;
          sub_1CFDF73CC(v121, sub_1CFDF6B98);
          if (v82)
          {
            goto LABEL_30;
          }
        }

        v18 = v130;
        v138(v130, 1, 1, v4);
        v84 = *(v131 + 48);
        v85 = v135;
        sub_1CFDF7278(v135, v71, sub_1CFDF6B98);
        sub_1CFDF7278(v18, v71 + v84, sub_1CFDF6B98);
        v68 = v139;
        if (v139(v71, 1, v4) == 1)
        {
          goto LABEL_26;
        }

        sub_1CFDF7278(v71, v66, sub_1CFDF6B98);
        if ((v68)(v71 + v84, 1, v4) == 1)
        {
          sub_1CFDF73CC(v130, sub_1CFDF6B98);
          v86 = *v134;
          (*v134)(v66, v4);
          sub_1CFDF73CC(v71, sub_1CFDF6B98);
        }

        else
        {
          v87 = v116;
          (*v137)(v116, (v71 + v84), v4);
          sub_1CFDA78C8(&qword_1EDC32CA8, MEMORY[0x1E696B430]);
          v68 = sub_1CFE30854();
          v86 = *v134;
          (*v134)(v87, v4);
          v18 = v71;
          sub_1CFDF73CC(v130, sub_1CFDF6B98);
          v86(v66, v4);
          v85 = v135;
          sub_1CFDF73CC(v71, sub_1CFDF6B98);
          if ((v68 & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        v66 = v115;
        sub_1CFDF7278(v85, v115, sub_1CFDF6B98);
        if (v139(v66, 1, v4) == 1)
        {
          goto LABEL_32;
        }

        v88 = v112;
        v89 = *(v112 + 48);
        v90 = *v137;
        v91 = v110;
        (*v137)(&v110[v89], v66, v4);
        v66 = v111;
        *v111 = v127;
        v90((v66 + *(v88 + 48)), &v91[v89], v4);
        v92 = v133;
        v113(v66);
        v133 = v92;
        if (v92)
        {
          goto LABEL_34;
        }

        sub_1CFDF73CC(v66, sub_1CFDF6C2C);
        v93 = v132;
        v141 = v132;
        v66 = *(v132 + 16);
        v94 = *(v132 + 24);
        v72 = v135;
        if (v66 >= v94 >> 1)
        {
          sub_1CFDC46C0((v94 > 1), v66 + 1, 1);
          v93 = v141;
        }

        *(v93 + 16) = v66 + 1;
        v95 = (*(v109 + 80) + 32) & ~*(v109 + 80);
        v132 = v93;
        sub_1CFDF742C(v129, v93 + v95 + *(v109 + 72) * v66, type metadata accessor for SleepingSampleDaySummary);
        v96 = v128;
        sub_1CFDF7128(v72, v128);
        v97 = v96;
        v98 = v108;
        sub_1CFDF7278(v97, v108, sub_1CFDF6B98);
        if (v139(v98, 1, v4) == 1)
        {
          goto LABEL_33;
        }

        v99 = v107;
        v90(v107, v98, v4);
        sub_1CFDA7600(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
        sub_1CFDA78C8(&qword_1EDC31AB0, MEMORY[0x1E696B438]);
        v3 = v106;
        v100 = sub_1CFE308B4();
        v71 = v124;
        v66 = v119;
        if (v100)
        {
          v86(v99, v4);
          v101 = 1;
        }

        else
        {
          v140 = 1;
          sub_1CFDA78C8(&unk_1EDC31E78, MEMORY[0x1E696B448]);
          sub_1CFE30C94();
          v86(v99, v4);
          v101 = 0;
        }

        v18 = v121;
        v138(v72, v101, 1, v4);
        v68 = *(v128 + *(v66 + 36));
        sub_1CFDF70CC(v128, &qword_1EC509B90, &qword_1EC509B98, MEMORY[0x1E69E5FD0], MEMORY[0x1E69E6E50]);
        v70 = v68 + 1;
        if (__OFADD__(v68, 1))
        {
          goto LABEL_28;
        }

        *(v72 + v105) = v70;
        v69 = v126 + 1;
        v67 = v120;
        v68 = v136;
        v66 = v138;
        if (v125 == v104)
        {
          sub_1CFDF70CC(v72, &qword_1EC509B90, &qword_1EC509B98, MEMORY[0x1E69E5FD0], MEMORY[0x1E69E6E50]);
          return v132;
        }
      }

      __break(1u);
LABEL_26:
      sub_1CFDF73CC(v130, sub_1CFDF6B98);
      sub_1CFDF73CC(v71, sub_1CFDF6B34);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      sub_1CFDF73CC(v123, sub_1CFDF6B98);
      (*v134)(v68, v4);
      sub_1CFDF73CC(v18, sub_1CFDF6B98);
LABEL_30:
      __break(1u);
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    sub_1CFDF73CC(v66, sub_1CFDF6C2C);
    sub_1CFDF70CC(v135, &qword_1EC509B90, &qword_1EC509B98, MEMORY[0x1E69E5FD0], MEMORY[0x1E69E6E50]);

    __break(1u);
  }

  return result;
}

uint64_t static SleepingSampleDaySummaryCollection.fake(morningIndexRange:gregorianCalendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1CFDA6A04(a1, a3, &qword_1EDC32CA0, MEMORY[0x1E69E5F90], sub_1CFDA7600);
  v6 = *(type metadata accessor for GregorianDayRange(0) + 20);
  v7 = sub_1CFE304B4();
  (*(*(v7 - 8) + 16))(a3 + v6, a2, v7);
  v8 = sub_1CFDF2E88(a1, a2);
  result = type metadata accessor for SleepingSampleDaySummaryCollection(0);
  *(a3 + *(result + 20)) = v8;
  return result;
}

uint64_t sub_1CFDF2E88(uint64_t a1, uint64_t a2)
{
  sub_1CFDF3254(0, &qword_1EC509B60, &qword_1EC509B68, MEMORY[0x1E69E5FB0], MEMORY[0x1E69E6E48]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v32 - v6;
  v33 = MEMORY[0x1E69E7CC0];
  sub_1CFDC4918(0, 7, 0);
  v8 = v33;
  v10 = *(v33 + 16);
  v9 = *(v33 + 24);
  v11 = v9 >> 1;
  v12 = v10 + 1;
  if (v9 >> 1 <= v10)
  {
    sub_1CFDC4918((v9 > 1), v10 + 1, 1);
    v8 = v33;
    v9 = *(v33 + 24);
    v11 = v9 >> 1;
  }

  *(v8 + 16) = v12;
  *(v8 + 8 * v10 + 32) = 0x3FEEF9DB22D0E560;
  v13 = v10 + 2;
  if (v11 < v13)
  {
    sub_1CFDC4918((v9 > 1), v13, 1);
    v8 = v33;
  }

  *(v8 + 16) = v13;
  *(v8 + 8 * v12 + 32) = 0x3FEEE978D4FDF3B6;
  v15 = *(v8 + 16);
  v14 = *(v8 + 24);
  v16 = v15 + 1;
  if (v15 >= v14 >> 1)
  {
    sub_1CFDC4918((v14 > 1), v15 + 1, 1);
  }

  v17 = v33;
  *(v33 + 16) = v16;
  *(v17 + 8 * v15 + 32) = 0x3FEEE978D4FDF3B6;
  v18 = *(v17 + 24);
  v19 = v15 + 2;
  if (v19 > (v18 >> 1))
  {
    sub_1CFDC4918((v18 > 1), v19, 1);
    v17 = v33;
  }

  *(v17 + 16) = v19;
  *(v17 + 8 * v16 + 32) = 0x3FEEC083126E978DLL;
  v21 = *(v17 + 16);
  v20 = *(v17 + 24);
  v22 = v20 >> 1;
  v23 = v21 + 1;
  if (v20 >> 1 <= v21)
  {
    sub_1CFDC4918((v20 > 1), v21 + 1, 1);
    v17 = v33;
    v20 = *(v33 + 24);
    v22 = v20 >> 1;
  }

  *(v17 + 16) = v23;
  *(v17 + 8 * v21 + 32) = 0x3FEEE978D4FDF3B6;
  v24 = v21 + 2;
  if (v22 < (v21 + 2))
  {
    sub_1CFDC4918((v20 > 1), v21 + 2, 1);
  }

  v25 = v33;
  *(v33 + 16) = v24;
  *(v25 + 8 * v23 + 32) = 0x3FEEC8B439581063;
  v27 = *(v25 + 16);
  v26 = *(v25 + 24);
  if (v27 >= v26 >> 1)
  {
    sub_1CFDC4918((v26 > 1), v27 + 1, 1);
    v25 = v33;
  }

  *(v25 + 16) = v27 + 1;
  *(v25 + 8 * v27 + 32) = 0x3FEE8F5C28F5C28FLL;
  v28 = sub_1CFDA6A04(a1, v7, &qword_1EDC32CA0, MEMORY[0x1E69E5F90], sub_1CFDA7600);
  MEMORY[0x1EEE9AC00](v28, v29);
  *(&v32 - 8) = a2;
  *(&v32 - 7) = &unk_1F4C8A308;
  *(&v32 - 6) = a1;
  *(&v32 - 5) = &unk_1F4C8A200;
  *(&v32 - 4) = v25;
  *(&v32 - 3) = &unk_1F4C8A258;
  *(&v32 - 2) = &unk_1F4C8A2B0;
  v30 = sub_1CFDF1EE0(sub_1CFDF6AFC, (&v32 - 10));

  sub_1CFDF70CC(v7, &qword_1EC509B60, &qword_1EC509B68, MEMORY[0x1E69E5FB0], MEMORY[0x1E69E6E48]);
  return v30;
}

void sub_1CFDF3254(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1CFDA7600(255, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
    v11 = v10;
    v12 = sub_1CFDF6C98(a3, a4);
    v13 = a5(a1, v11, v12);
    if (!v14)
    {
      atomic_store(v13, a2);
    }
  }
}

unint64_t sub_1CFDF32F4()
{
  result = qword_1EC509B70;
  if (!qword_1EC509B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509B70);
  }

  return result;
}

uint64_t sub_1CFDF3348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v463 = a8;
  v465 = a7;
  v469 = a6;
  v476 = a5;
  v474 = a4;
  v519 = a2;
  v461 = a9;
  sub_1CFDF71C4(0, &qword_1EDC32C78, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v475 = &v454 - v13;
  sub_1CFDF71C4(0, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v489 = &v454 - v16;
  sub_1CFDA7600(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v473 = &v454 - v19;
  v529 = type metadata accessor for SleepingSampleBaseline(0);
  v527 = *(v529 - 8);
  v21 = MEMORY[0x1EEE9AC00](v529, v20);
  v455 = &v454 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v26 = &v454 - v25;
  v28 = MEMORY[0x1EEE9AC00](v24, v27);
  v456 = &v454 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v457 = &v454 - v32;
  MEMORY[0x1EEE9AC00](v31, v33);
  v458 = &v454 - v34;
  sub_1CFDF71C4(0, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  v37 = MEMORY[0x1EEE9AC00](v35 - 8, v36);
  v460 = &v454 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v37, v39);
  v462 = &v454 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40, v42);
  v464 = &v454 - v44;
  v46 = MEMORY[0x1EEE9AC00](v43, v45);
  v468 = &v454 - v47;
  MEMORY[0x1EEE9AC00](v46, v48);
  v501 = (&v454 - v49);
  v517 = type metadata accessor for SleepingSampleBaselineAvailability(0);
  v51 = MEMORY[0x1EEE9AC00](v517, v50);
  v478 = &v454 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x1EEE9AC00](v51, v53);
  v481 = &v454 - v55;
  v57 = MEMORY[0x1EEE9AC00](v54, v56);
  v485 = &v454 - v58;
  v60 = MEMORY[0x1EEE9AC00](v57, v59);
  v492 = &v454 - v61;
  MEMORY[0x1EEE9AC00](v60, v62);
  v494 = &v454 - v63;
  v528 = sub_1CFE30314();
  v531 = *(v528 - 8);
  MEMORY[0x1EEE9AC00](v528, v64);
  v516 = &v454 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v530 = sub_1CFE304B4();
  v526 = *(v530 - 8);
  MEMORY[0x1EEE9AC00](v530, v66);
  v533 = &v454 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v525 = type metadata accessor for SleepingSampleAggregate(0);
  v69 = MEMORY[0x1EEE9AC00](v525, v68);
  v477 = &v454 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = MEMORY[0x1EEE9AC00](v69, v71);
  v480 = &v454 - v73;
  v75 = MEMORY[0x1EEE9AC00](v72, v74);
  v484 = &v454 - v76;
  v78 = MEMORY[0x1EEE9AC00](v75, v77);
  v491 = &v454 - v79;
  MEMORY[0x1EEE9AC00](v78, v80);
  v493 = &v454 - v81;
  sub_1CFDA7460(0);
  v515 = v82;
  v84 = MEMORY[0x1EEE9AC00](v82, v83);
  v514 = &v454 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v84, v86);
  v513 = &v454 - v87;
  sub_1CFDA7600(0, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
  v512 = v88;
  v90 = MEMORY[0x1EEE9AC00](v88, v89);
  v495 = &v454 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = MEMORY[0x1EEE9AC00](v90, v92);
  v496 = &v454 - v94;
  v96 = MEMORY[0x1EEE9AC00](v93, v95);
  v497 = &v454 - v97;
  v99 = MEMORY[0x1EEE9AC00](v96, v98);
  v490 = &v454 - v100;
  v102 = MEMORY[0x1EEE9AC00](v99, v101);
  v487 = &v454 - v103;
  MEMORY[0x1EEE9AC00](v102, v104);
  v521 = &v454 - v105;
  v518 = type metadata accessor for SleepingSampleBaselineComparison(0);
  v107 = MEMORY[0x1EEE9AC00](v518, v106);
  v459 = &v454 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = MEMORY[0x1EEE9AC00](v107, v109);
  v479 = &v454 - v111;
  v113 = MEMORY[0x1EEE9AC00](v110, v112);
  v482 = &v454 - v114;
  v116 = MEMORY[0x1EEE9AC00](v113, v115);
  v483 = &v454 - v117;
  MEMORY[0x1EEE9AC00](v116, v118);
  v488 = &v454 - v119;
  sub_1CFDF6C2C(0);
  v121 = v120 - 8;
  MEMORY[0x1EEE9AC00](v120, v122);
  v124 = (&v454 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0));
  v125 = sub_1CFE307E4();
  v127 = MEMORY[0x1EEE9AC00](v125, v126);
  v486 = &v454 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = MEMORY[0x1EEE9AC00](v127, v129);
  v520 = &v454 - v131;
  v133 = MEMORY[0x1EEE9AC00](v130, v132);
  v539 = &v454 - v134;
  MEMORY[0x1EEE9AC00](v133, v135);
  v137 = &v454 - v136;
  v138 = a1;
  v140 = v139;
  sub_1CFDF7278(v138, v124, sub_1CFDF6C2C);
  v141 = *v124;
  v142 = v124 + *(v121 + 56);
  v143 = v137;
  v523 = v140[4];
  v524 = v140 + 4;
  v523(v137, v142, v125);
  v510 = objc_opt_self();
  result = [v510 hourUnit];
  v145 = *(a3 + 16);
  if (!v145)
  {
    __break(1u);
    goto LABEL_36;
  }

  v146 = v141 % v145;
  if (v146 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v147 = result;
  v509 = v141;
  v148 = *(a3 + 8 * v146 + 32);
  v149 = objc_opt_self();
  v503 = [v149 quantityWithUnit:v147 doubleValue:v148];
  v471 = [v149 quantityWithUnit:v147 doubleValue:7.2];
  v150 = [v149 quantityWithUnit:v147 doubleValue:6.8];
  v472 = v147;
  v151 = [v149 quantityWithUnit:v147 doubleValue:7.7];
  v470 = [objc_allocWithZone(MEMORY[0x1E696C350]) initWithMinimum:v150 maximum:v151 isMinimumInclusive:1 isMaximumInclusive:1];

  v152 = v520;
  sub_1CFE30744();
  v153 = v539;
  sub_1CFE30764();
  v154 = v140[1];
  v536 = v140 + 1;
  v154(v152, v125);
  v508 = sub_1CFDA78C8(&qword_1EDC32CA8, MEMORY[0x1E696B430]);
  result = sub_1CFE30874();
  if ((result & 1) == 0)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v454 = v26;
  v532 = v149;
  v155 = v513;
  v534 = v143;
  v156 = v523;
  v523(v513, v153, v125);
  v157 = v515;
  v158 = *(v515 + 48);
  v537 = v140[2];
  v538 = (v140 + 2);
  v537(v155 + v158, v534, v125);
  v159 = v514;
  sub_1CFDF7278(v155, v514, sub_1CFDA7460);
  v160 = *(v157 + 48);
  v161 = v521;
  v156(v521, v159, v125);
  v535 = v154;
  v154((v159 + v160), v125);
  sub_1CFDF742C(v155, v159, sub_1CFDA7460);
  v156(v161 + *(v512 + 36), v159 + *(v157 + 48), v125);
  v162 = v534;
  v154(v159, v125);
  v537(v539, v162, v125);
  v163 = v526;
  v165 = v526 + 16;
  v164 = *(v526 + 16);
  v164(v533, v519, v530);
  v166 = v525;
  v167 = *(v525 + 28);
  sub_1CFE307D4();
  v168 = v493;
  sub_1CFE2FFF4();
  v169 = sub_1CFE30014();
  v467 = *(v169 - 8);
  v170 = *(v467 + 56);
  v511 = v169;
  v505 = v467 + 56;
  v504 = v170;
  (v170)(&v168[v167], 0, 1);
  v171 = *(v531 + 56);
  v172 = &v168[v166[8]];
  v531 += 56;
  v522 = v171;
  v171(v172, 1, 1, v528);
  v537(v168, v539, v125);
  v173 = &v168[v166[5]];
  v174 = v533;
  v175 = v530;
  v507 = v165;
  v506 = v164;
  v164(v173, v533, v530);
  v176 = v166[6];
  v177 = sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
  v466 = v503;
  sub_1CFE306B4();
  sub_1CFDAC3A0(0);
  v179 = *(v178 - 1);
  v180 = *(v179 + 56);
  v503 = v178;
  v502 = v180;
  v500 = v179 + 56;
  (v180)(&v168[v176], 0, 1);
  v181 = *(v163 + 8);
  v526 = v163 + 8;
  v499 = v181;
  v181(v174, v175);
  v540 = v125;
  v535(v539, v125);
  v168[v166[9]] = 0;
  v182 = v521;
  sub_1CFDCB868(0);
  v498 = v183;
  v184 = *(v183 + 48);
  v185 = v494;
  sub_1CFDA6A04(v182, v494, &qword_1EDC32C90, MEMORY[0x1E69E66A8], sub_1CFDA7600);
  *&v185[v184] = 7;
  swift_storeEnumTagMultiPayload();
  v186 = v470;
  v187 = [v470 maximum];
  v188 = [v187 _unit];

  v189 = [v186 maximum];
  [v189 _value];
  v191 = v190;

  v192 = [v186 minimum];
  [v192 _value];
  v194 = v193;

  v195 = v532;
  v196 = [v532 quantityWithUnit:v188 doubleValue:(v191 - v194) * 0.25];

  v197 = v471;
  if ([v186 containsQuantity_])
  {
    v198 = v197;
    v199 = v458;
    sub_1CFE306B4();
    v200 = v529;
    sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350);
    v201 = v186;
    sub_1CFE306B4();
    v202 = v196;
    v203 = v527;
    sub_1CFE306B4();
    v195 = v532;
    sub_1CFE306B4();

    sub_1CFDF7218(v521, &qword_1EDC32C90, MEMORY[0x1E69E66A8], sub_1CFDA7600);
    v204 = v501;
    sub_1CFDF742C(v199, v501, type metadata accessor for SleepingSampleBaseline);
    v205 = 0;
  }

  else
  {

    sub_1CFDF7218(v182, &qword_1EDC32C90, MEMORY[0x1E69E66A8], sub_1CFDA7600);
    v205 = 1;
    v200 = v529;
    v203 = v527;
    v204 = v501;
  }

  v206 = *(v203 + 56);
  v527 = v203 + 56;
  (v206)(v204, v205, 1, v200);
  v207 = v518;
  v208 = *(v518 + 24);
  v209 = v488;
  v501 = v206;
  (v206)(v488 + v208, 1, 1, v200);
  sub_1CFDF742C(v493, v209, type metadata accessor for SleepingSampleAggregate);
  sub_1CFDF742C(v494, v209 + *(v207 + 20), type metadata accessor for SleepingSampleBaselineAvailability);
  sub_1CFDF7360(v204, v209 + v208, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  v210 = v540;
  v537(v486, v534, v540);
  v211 = v473;
  sub_1CFDA6A04(v474, v473, &qword_1EDC32CA0, MEMORY[0x1E69E5F90], sub_1CFDA7600);
  sub_1CFDF7494(v211, v487);
  v212 = v475;
  sub_1CFDA6A04(v209 + *(v525 + 28), v475, &qword_1EDC32C78, MEMORY[0x1E6968130], sub_1CFDF71C4);
  v213 = v467;
  v214 = v511;
  v215 = (*(v467 + 48))(v212, 1, v511);
  v216 = v489;
  if (v215 == 1)
  {
    sub_1CFDF7218(v212, &qword_1EDC32C78, MEMORY[0x1E6968130], sub_1CFDF71C4);
    v217 = 1;
  }

  else
  {
    sub_1CFE2FFD4();
    (*(v213 + 8))(v212, v214);
    v217 = 0;
  }

  v522(v216, v217, 1, v528);
  result = [v510 _countPerMinuteUnit];
  v218 = v476[2];
  if (!v218)
  {
    goto LABEL_38;
  }

  v219 = v509 % v218;
  if (v219 < 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v220 = result;
  v521 = v177;
  v493 = [v195 quantityWithUnit:result doubleValue:*&v476[v219 + 4]];
  v494 = [v195 quantityWithUnit:v220 doubleValue:54.0];
  v221 = [v195 quantityWithUnit:v220 doubleValue:50.0];
  v222 = [v195 quantityWithUnit:v220 doubleValue:58.0];
  v223 = [objc_allocWithZone(MEMORY[0x1E696C350]) initWithMinimum:v221 maximum:v222 isMinimumInclusive:1 isMaximumInclusive:1];

  v224 = v520;
  sub_1CFE30744();
  v225 = v539;
  v226 = v534;
  sub_1CFE30764();
  v227 = v535;
  v535(v224, v210);
  result = sub_1CFE30874();
  if ((result & 1) == 0)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v476 = v220;
  v228 = v513;
  v229 = v210;
  v230 = v523;
  v523(v513, v225, v229);
  v231 = v515;
  v537(v228 + *(v515 + 48), v226, v540);
  v475 = v223;
  v232 = v514;
  sub_1CFDF7278(v228, v514, sub_1CFDA7460);
  v233 = *(v231 + 48);
  v234 = v490;
  v230(v490, v232, v540);
  v227(v232 + v233, v540);
  sub_1CFDF742C(v228, v232, sub_1CFDA7460);
  v230(v234 + *(v512 + 36), v232 + *(v231 + 48), v540);
  v227(v232, v540);
  v537(v539, v226, v540);
  v235 = v530;
  v236 = v506;
  v506(v533, v519, v530);
  v237 = v525;
  v238 = *(v525 + 28);
  sub_1CFE307D4();
  v239 = v491;
  sub_1CFE2FFF4();
  v504(v239 + v238, 0, 1, v511);
  v522((v239 + v237[8]), 1, 1, v528);
  v240 = v539;
  v537(v239, v539, v540);
  v241 = v533;
  v236(v239 + v237[5], v533, v235);
  v242 = v475;
  v243 = v237[6];
  v493 = v493;
  sub_1CFE306B4();
  v502(v239 + v243, 0, 1, v503);
  v244 = v540;
  v499(v241, v235);
  v535(v240, v244);
  v245 = 0x1E83D0000uLL;
  *(v239 + v237[9]) = 0;
  v246 = *(v498 + 48);
  v247 = v492;
  sub_1CFDA6A04(v234, v492, &qword_1EDC32C90, MEMORY[0x1E69E66A8], sub_1CFDA7600);
  *&v247[v246] = 7;
  swift_storeEnumTagMultiPayload();
  v248 = [v242 maximum];
  v249 = [v248 _unit];

  v250 = [v242 maximum];
  [v250 _value];
  v252 = v251;

  v253 = [v242 minimum];
  [v253 _value];
  v255 = v254;

  v256 = [v532 quantityWithUnit:v249 doubleValue:(v252 - v255) * 0.25];
  v257 = v494;
  if ([v242 containsQuantity_])
  {
    v258 = v257;
    v259 = v457;
    sub_1CFE306B4();
    sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350);
    v260 = v242;
    sub_1CFE306B4();
    v261 = v256;
    v262 = v529;
    sub_1CFE306B4();
    v245 = 0x1E83D0000;
    v244 = v540;
    sub_1CFE306B4();

    sub_1CFDF7218(v490, &qword_1EDC32C90, MEMORY[0x1E69E66A8], sub_1CFDA7600);
    v263 = v468;
    sub_1CFDF742C(v259, v468, type metadata accessor for SleepingSampleBaseline);
    v264 = 0;
  }

  else
  {

    sub_1CFDF7218(v490, &qword_1EDC32C90, MEMORY[0x1E69E66A8], sub_1CFDA7600);
    v264 = 1;
    v262 = v529;
    v263 = v468;
  }

  v265 = v501;
  (v501)(v263, v264, 1, v262);
  v266 = v518;
  v267 = *(v518 + 24);
  v268 = v483;
  v265(v483 + v267, 1, 1, v262);
  sub_1CFDF742C(v491, v268, type metadata accessor for SleepingSampleAggregate);
  sub_1CFDF742C(v492, v268 + *(v266 + 20), type metadata accessor for SleepingSampleBaselineAvailability);
  sub_1CFDF7360(v263, v268 + v267, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  result = [v510 percentUnit];
  v269 = *(v469 + 16);
  v270 = v535;
  if (!v269)
  {
    goto LABEL_41;
  }

  v271 = v509 % v269;
  if (v271 < 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v272 = result;
  v273 = v532;
  v494 = [v532 *(v245 + 3296)];
  v274 = [v273 *(v245 + 3296)];
  v275 = [v273 *(v245 + 3296)];
  v276 = [v273 *(v245 + 3296)];
  v277 = [objc_allocWithZone(MEMORY[0x1E696C350]) initWithMinimum:v275 maximum:v276 isMinimumInclusive:1 isMaximumInclusive:1];

  v278 = v520;
  sub_1CFE30744();
  v279 = v539;
  v280 = v534;
  sub_1CFE30764();
  v270(v278, v244);
  result = sub_1CFE30874();
  if ((result & 1) == 0)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v493 = v272;
  v491 = v277;
  v281 = v513;
  v282 = v279;
  v283 = v244;
  v492 = v274;
  v284 = v244;
  v285 = v523;
  v523(v513, v282, v283);
  v286 = v515;
  v537(v281 + *(v515 + 48), v280, v284);
  v287 = v514;
  sub_1CFDF7278(v281, v514, sub_1CFDA7460);
  v288 = *(v286 + 48);
  v289 = v497;
  v285();
  v290 = (v287 + v288);
  v291 = v535;
  v535(v290, v284);
  sub_1CFDF742C(v281, v287, sub_1CFDA7460);
  (v285)(&v289[*(v512 + 36)], v287 + *(v286 + 48), v284);
  v291(v287, v284);
  v292 = v539;
  v537(v539, v534, v284);
  v293 = v506;
  v506(v533, v519, v530);
  v294 = v525;
  v295 = *(v525 + 28);
  sub_1CFE307D4();
  v296 = v484;
  sub_1CFE2FFF4();
  v504(v296 + v295, 0, 1, v511);
  v522((v296 + v294[8]), 1, 1, v528);
  v537(v296, v292, v284);
  v297 = v533;
  v298 = v530;
  v293(v296 + v294[5], v533, v530);
  v299 = v294[6];
  v300 = v494;
  sub_1CFE306B4();
  v502(v296 + v299, 0, 1, v503);
  v301 = v297;
  v302 = v491;
  v499(v301, v298);
  v303 = v284;
  v304 = v497;
  v535(v292, v303);
  v305 = 0x1E83D0000uLL;
  *(v296 + v294[9]) = 0;
  v306 = *(v498 + 48);
  v307 = v485;
  sub_1CFDA6A04(v304, v485, &qword_1EDC32C90, MEMORY[0x1E69E66A8], sub_1CFDA7600);
  *(v307 + v306) = 7;
  swift_storeEnumTagMultiPayload();
  v308 = [v302 maximum];
  v309 = [v308 _unit];

  v310 = [v302 maximum];
  [v310 _value];
  v312 = v311;

  v313 = [v302 minimum];
  v314 = v492;
  [v313 _value];
  v316 = v315;

  v317 = [v532 quantityWithUnit:v309 doubleValue:(v312 - v316) * 0.25];
  if ([v302 containsQuantity_])
  {
    v318 = v314;
    v319 = v456;
    sub_1CFE306B4();
    sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350);
    v320 = v302;
    sub_1CFE306B4();
    v321 = v317;
    v322 = v529;
    sub_1CFE306B4();
    v305 = 0x1E83D0000;
    sub_1CFE306B4();

    sub_1CFDF7218(v497, &qword_1EDC32C90, MEMORY[0x1E69E66A8], sub_1CFDA7600);
    v323 = v464;
    sub_1CFDF742C(v319, v464, type metadata accessor for SleepingSampleBaseline);
    v324 = 0;
  }

  else
  {

    sub_1CFDF7218(v304, &qword_1EDC32C90, MEMORY[0x1E69E66A8], sub_1CFDA7600);
    v324 = 1;
    v322 = v529;
    v323 = v464;
  }

  v325 = v501;
  (v501)(v323, v324, 1, v322);
  v326 = v518;
  v327 = *(v518 + 24);
  v328 = v482;
  v325(v482 + v327, 1, 1, v322);
  sub_1CFDF742C(v484, v328, type metadata accessor for SleepingSampleAggregate);
  sub_1CFDF742C(v485, v328 + *(v326 + 20), type metadata accessor for SleepingSampleBaselineAvailability);
  sub_1CFDF7360(v323, v328 + v327, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  result = [v510 _countPerMinuteUnit];
  v329 = *(v465 + 16);
  v330 = v535;
  if (!v329)
  {
    goto LABEL_44;
  }

  v331 = v509 % v329;
  if (v331 < 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v332 = result;
  v333 = v532;
  v334 = [v532 *(v305 + 3296)];
  v335 = [v333 *(v305 + 3296)];
  v336 = [v333 *(v305 + 3296)];
  v337 = [v333 *(v305 + 3296)];
  v497 = [objc_allocWithZone(MEMORY[0x1E696C350]) initWithMinimum:v336 maximum:v337 isMinimumInclusive:1 isMaximumInclusive:1];

  v338 = v520;
  sub_1CFE30744();
  v339 = v539;
  v340 = v534;
  sub_1CFE30764();
  v341 = v338;
  v342 = v540;
  v330(v341, v540);
  result = sub_1CFE30874();
  if ((result & 1) == 0)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v494 = v332;
  v493 = v335;
  v343 = v513;
  v344 = v523;
  v523(v513, v339, v342);
  v345 = v515;
  v537(v343 + *(v515 + 48), v340, v540);
  v492 = v334;
  v346 = v514;
  sub_1CFDF7278(v343, v514, sub_1CFDA7460);
  v347 = *(v345 + 48);
  v348 = v330;
  v349 = v496;
  v344();
  v348(v346 + v347, v540);
  sub_1CFDF742C(v343, v346, sub_1CFDA7460);
  (v344)(v349 + *(v512 + 36), v346 + *(v345 + 48), v540);
  v348(v346, v540);
  v537(v539, v340, v540);
  v350 = v530;
  v351 = v506;
  v506(v533, v519, v530);
  v352 = v525;
  v353 = *(v525 + 28);
  sub_1CFE307D4();
  v354 = v480;
  v355 = v493;
  sub_1CFE2FFF4();
  v504(v354 + v353, 0, 1, v511);
  v522((v354 + v352[8]), 1, 1, v528);
  v356 = v539;
  v537(v354, v539, v540);
  v357 = v533;
  v351(v354 + v352[5], v533, v350);
  v358 = v352[6];
  v492 = v492;
  sub_1CFE306B4();
  v502(v354 + v358, 0, 1, v503);
  v359 = v350;
  v360 = v540;
  v499(v357, v359);
  v535(v356, v360);
  v361 = 0x1E83D0000uLL;
  *(v354 + v352[9]) = 0;
  v362 = v355;
  v363 = v496;
  v364 = *(v498 + 48);
  v365 = v481;
  sub_1CFDA6A04(v496, v481, &qword_1EDC32C90, MEMORY[0x1E69E66A8], sub_1CFDA7600);
  *(v365 + v364) = 7;
  swift_storeEnumTagMultiPayload();
  v366 = v497;
  v367 = [v497 maximum];
  v368 = [v367 _unit];

  v369 = [v366 maximum];
  [v369 _value];
  v371 = v370;

  v372 = [v366 minimum];
  [v372 _value];
  v374 = v373;

  v375 = [v532 quantityWithUnit:v368 doubleValue:(v371 - v374) * 0.25];
  if ([v366 containsQuantity_])
  {
    v376 = v362;
    v377 = v454;
    sub_1CFE306B4();
    sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350);
    v378 = v366;
    sub_1CFE306B4();
    v379 = v375;
    v380 = v529;
    sub_1CFE306B4();
    v361 = 0x1E83D0000;
    sub_1CFE306B4();

    sub_1CFDF7218(v496, &qword_1EDC32C90, MEMORY[0x1E69E66A8], sub_1CFDA7600);
    v381 = v462;
    sub_1CFDF742C(v377, v462, type metadata accessor for SleepingSampleBaseline);
    v382 = 0;
    v383 = v463;
  }

  else
  {

    sub_1CFDF7218(v363, &qword_1EDC32C90, MEMORY[0x1E69E66A8], sub_1CFDA7600);
    v382 = 1;
    v383 = v463;
    v381 = v462;
    v380 = v529;
  }

  v384 = v501;
  (v501)(v381, v382, 1, v380);
  v385 = v518;
  v386 = *(v518 + 24);
  v387 = v479;
  v384(v479 + v386, 1, 1, v380);
  sub_1CFDF742C(v480, v387, type metadata accessor for SleepingSampleAggregate);
  sub_1CFDF742C(v481, v387 + *(v385 + 20), type metadata accessor for SleepingSampleBaselineAvailability);
  sub_1CFDF7360(v381, v387 + v386, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  result = [v510 _changeInDegreeCelsiusUnit];
  v388 = *(v383 + 16);
  v390 = v534;
  v389 = v535;
  if (!v388)
  {
    goto LABEL_47;
  }

  v391 = v509 % v388;
  if (v391 < 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v392 = result;
  v393 = v532;
  v497 = [v532 *(v361 + 3296)];
  v509 = [v393 *(v361 + 3296)];
  v394 = [v393 *(v361 + 3296)];
  v395 = v389;
  v396 = [v393 *(v361 + 3296)];
  v510 = [objc_allocWithZone(MEMORY[0x1E696C350]) initWithMinimum:v394 maximum:v396 isMinimumInclusive:1 isMaximumInclusive:1];

  v397 = v395;
  v398 = v520;
  sub_1CFE30744();
  v399 = v539;
  v400 = v390;
  sub_1CFE30764();
  v401 = v540;
  v397(v398, v540);
  result = sub_1CFE30874();
  if ((result & 1) == 0)
  {
LABEL_49:
    __break(1u);
    return result;
  }

  v520 = v392;
  v402 = v513;
  v403 = v399;
  v404 = v397;
  v405 = v523;
  v523(v513, v403, v401);
  v406 = v515;
  v537(v402 + *(v515 + 48), v400, v401);
  v407 = v401;
  v408 = v514;
  sub_1CFDF7278(v402, v514, sub_1CFDA7460);
  v409 = *(v406 + 48);
  v410 = v495;
  v405(v495, v408, v407);
  v404(v408 + v409, v407);
  sub_1CFDF742C(v402, v408, sub_1CFDA7460);
  v405(v410 + *(v512 + 36), v408 + *(v406 + 48), v407);
  v404(v408, v407);
  v537(v539, v534, v407);
  v411 = v506;
  v506(v533, v519, v530);
  v412 = v525;
  v413 = *(v525 + 28);
  sub_1CFE307D4();
  v414 = v477;
  v415 = v407;
  sub_1CFE2FFF4();
  v504(v414 + v413, 0, 1, v511);
  v522((v414 + v412[8]), 1, 1, v528);
  v416 = v539;
  v537(v414, v539, v407);
  v417 = v533;
  v418 = v530;
  v411(v414 + v412[5], v533, v530);
  v419 = v412[6];
  v538 = v497;
  sub_1CFE306B4();
  v502(v414 + v419, 0, 1, v503);
  v420 = v535;
  v499(v417, v418);
  v420(v416, v415);
  v421 = v412[9];
  v422 = v495;
  *(v414 + v421) = 0;
  v423 = *(v498 + 48);
  v424 = v478;
  sub_1CFDA6A04(v422, v478, &qword_1EDC32C90, MEMORY[0x1E69E66A8], sub_1CFDA7600);
  *(v424 + v423) = 7;
  swift_storeEnumTagMultiPayload();
  v425 = v510;
  v426 = [v510 maximum];
  v427 = [v426 _unit];

  v428 = [v425 maximum];
  [v428 _value];
  v430 = v429;

  v431 = [v425 minimum];
  [v431 _value];
  v433 = v432;

  v434 = [v532 quantityWithUnit:v427 doubleValue:(v430 - v433) * 0.25];
  v435 = v509;
  if ([v425 containsQuantity_])
  {
    v436 = v435;
    v437 = v455;
    sub_1CFE306B4();
    v438 = v529;
    sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350);
    v439 = v510;
    sub_1CFE306B4();
    v440 = v434;
    sub_1CFE306B4();
    sub_1CFE306B4();

    sub_1CFDF7218(v495, &qword_1EDC32C90, MEMORY[0x1E69E66A8], sub_1CFDA7600);
    v441 = v415;
    v535(v534, v415);
    v442 = v460;
    sub_1CFDF742C(v437, v460, type metadata accessor for SleepingSampleBaseline);
    v443 = 0;
    v444 = v461;
    v445 = v489;
  }

  else
  {

    sub_1CFDF7218(v422, &qword_1EDC32C90, MEMORY[0x1E69E66A8], sub_1CFDA7600);
    v441 = v415;
    v420(v534, v415);
    v443 = 1;
    v438 = v529;
    v444 = v461;
    v445 = v489;
    v442 = v460;
  }

  v446 = v501;
  (v501)(v442, v443, 1, v438);
  v447 = v518;
  v448 = *(v518 + 24);
  v449 = v459;
  v446(&v459[v448], 1, 1, v438);
  sub_1CFDF742C(v477, v449, type metadata accessor for SleepingSampleAggregate);
  sub_1CFDF742C(v478, v449 + *(v447 + 20), type metadata accessor for SleepingSampleBaselineAvailability);
  sub_1CFDF7360(v442, v449 + v448, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  v450 = type metadata accessor for SleepingSampleDaySummary(0);
  v451 = v488;
  sub_1CFDF7278(v488, &v444[v450[12]], type metadata accessor for SleepingSampleBaselineComparison);
  v452 = v450[6];
  v522(&v444[v452], 1, 1, v528);
  v453 = &v444[v450[7]];
  *v453 = 0;
  v453[8] = 1;
  v523(v444, v486, v441);
  sub_1CFDF72E0(v487, &v444[v450[5]]);
  sub_1CFDF7360(v445, &v444[v452], &qword_1EDC32C70, MEMORY[0x1E6969530]);
  sub_1CFDF742C(v483, &v444[v450[8]], type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDF742C(v482, &v444[v450[9]], type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDF742C(v479, &v444[v450[10]], type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDF742C(v449, &v444[v450[11]], type metadata accessor for SleepingSampleBaselineComparison);
  return sub_1CFDF73CC(v451, type metadata accessor for SleepingSampleBaselineComparison);
}

void sub_1CFDF6B34(uint64_t a1)
{
  if (!qword_1EC509B78)
  {
    sub_1CFDF6B98(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC509B78);
    }
  }
}

void sub_1CFDF6B98(uint64_t a1)
{
  if (!qword_1EC509B80)
  {
    sub_1CFE307E4();
    sub_1CFDA78C8(&unk_1EDC31E78, MEMORY[0x1E696B448]);
    sub_1CFDF32F4();
    v1 = sub_1CFE308A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC509B80);
    }
  }
}

void sub_1CFDF6C2C(uint64_t a1)
{
  if (!qword_1EC509B88)
  {
    sub_1CFE307E4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC509B88);
    }
  }
}

uint64_t sub_1CFDF6C98(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1CFDA7600(255, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
    sub_1CFDA78C8(&unk_1EDC31E78, MEMORY[0x1E696B448]);
    sub_1CFDF32F4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CFDF6D3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CFE307E4();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v27 - v11;
  sub_1CFDF6B34(0);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v15 + 56);
  sub_1CFDF7278(a1, v17, sub_1CFDF6B98);
  sub_1CFDF7278(a2, &v17[v18], sub_1CFDF6B98);
  v19 = v5[6];
  LODWORD(a1) = v19(v17, 1, v4);
  v20 = v19(&v17[v18], 1, v4);
  v21 = v20;
  if (a1 == 1)
  {
    if (v20 == 1)
    {
      return 0;
    }
  }

  else
  {
    v19 = v5[4];
    v19(v12, v17, v4);
    if (v21 != 1)
    {
LABEL_11:
      v19(v9, &v17[v18], v4);
      sub_1CFDA78C8(&unk_1EDC31E78, MEMORY[0x1E696B448]);
      sub_1CFE30CA4();
      v26 = v5[1];
      v26(v9, v4);
      v26(v12, v4);
      return v28;
    }

    sub_1CFDA7600(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
    sub_1CFDA78C8(&unk_1EDC31E78, MEMORY[0x1E696B448]);
    sub_1CFE30CA4();
    v23 = v5[1];
    ++v5;
    v23(v12, v4);
    result = v28 + 1;
    if (!__OFADD__(v28, 1))
    {
      return result;
    }

    __break(1u);
  }

  (v5[4])(v12, &v17[v18], v4);
  sub_1CFDA7600(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  v9 = *(v24 + 36);
  sub_1CFDA78C8(&unk_1EDC31E78, MEMORY[0x1E696B448]);
  sub_1CFE30CA4();
  v25 = v5[1];
  ++v5;
  v25(v12, v4);
  result = v28 - 1;
  if (__OFSUB__(v28, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_1CFDF70CC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1CFDF3254(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1CFDF7128(uint64_t a1, uint64_t a2)
{
  sub_1CFDF3254(0, &qword_1EC509B90, &qword_1EC509B98, MEMORY[0x1E69E5FD0], MEMORY[0x1E69E6E50]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1CFDF71C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CFE30C74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1CFDF7218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = (a4)(0, a2, a3);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1CFDF7278(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDF72E0(uint64_t a1, uint64_t a2)
{
  sub_1CFDA7600(0, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFDF7360(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1CFDF71C4(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1CFDF73CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CFDF742C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDF7494@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v29[0] = a2;
  sub_1CFDA7460(0);
  v4 = v3 - 8;
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v29 - v10;
  v12 = sub_1CFE307E4();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = v29 - v19;
  v21 = MEMORY[0x1E69E5F90];
  sub_1CFDA7600(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  v29[1] = 1;
  sub_1CFDA78C8(&unk_1EDC31E78, MEMORY[0x1E696B448]);
  sub_1CFE30C94();
  (*(v13 + 16))(v17, a1, v12);
  sub_1CFDAB334(a1, &qword_1EDC32CA0, v21, sub_1CFDA7600);
  v22 = *(v13 + 32);
  v22(v11, v17, v12);
  v22(&v11[*(v4 + 56)], v20, v12);
  sub_1CFDF8F80(v11, v8, sub_1CFDA7460);
  v23 = *(v4 + 56);
  v24 = v29[0];
  v22(v29[0], v8, v12);
  v25 = *(v13 + 8);
  v25(&v8[v23], v12);
  sub_1CFDF8FE8(v11, v8, sub_1CFDA7460);
  v26 = *(v4 + 56);
  sub_1CFDA7600(0, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
  v22((v24 + *(v27 + 36)), &v8[v26], v12);
  return (v25)(v8, v12);
}

uint64_t TrainingLoadSummaryQueryDescriptor.gregorianCalendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TrainingLoadSummaryQueryDescriptor(0) + 20);
  v4 = sub_1CFE304B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TrainingLoadSummaryQueryDescriptor.gregorianCalendar.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TrainingLoadSummaryQueryDescriptor(0) + 20);
  v4 = sub_1CFE304B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TrainingLoadSummaryQueryDescriptor.init(morningIndexRange:gregorianCalendar:typeOfLoad:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a3;
  v7 = *(a3 + 8);
  sub_1CFDF137C(a1, a4);
  SummaryQueryDescriptor = type metadata accessor for TrainingLoadSummaryQueryDescriptor(0);
  v9 = *(SummaryQueryDescriptor + 20);
  v10 = sub_1CFE304B4();
  result = (*(*(v10 - 8) + 32))(a4 + v9, a2, v10);
  v12 = 2 * (v6 == 0);
  if (!v7)
  {
    v12 = 1;
  }

  *(a4 + *(SummaryQueryDescriptor + 24)) = v12;
  return result;
}

uint64_t TrainingLoadSummaryQueryDescriptor.currentAndUpdatingDaySummaryCollections(for:)@<X0>(void *a1@<X0>, void (*a2)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))@<X8>)
{
  v62 = a2;
  v68 = a1;
  SummaryQueryDescriptor = type metadata accessor for TrainingLoadSummaryQueryDescriptor(0);
  v3 = SummaryQueryDescriptor - 8;
  v67 = *(SummaryQueryDescriptor - 8);
  v66 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](SummaryQueryDescriptor, v4);
  v64 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CFE304B4();
  v7 = *(v6 - 8);
  v71 = v6;
  v72 = v7;
  MEMORY[0x1EEE9AC00](v6, v8);
  v70 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x1E69E5F90];
  sub_1CFDA7600(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v58 - v12;
  v65 = MEMORY[0x1E69E66A8];
  sub_1CFDA7600(0, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v73 = &v58 - v16;
  sub_1CFDAC46C(0, &qword_1EDC31898, MEMORY[0x1E69E8798]);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v58 - v21;
  sub_1CFDAC46C(0, &qword_1EDC31888, MEMORY[0x1E69E87A0]);
  v69 = v23;
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v28 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v58 - v30;
  type metadata accessor for TrainingLoadSampleDaySummaryCollection(0);
  (*(v19 + 104))(v22, *MEMORY[0x1E69E8790], v18);
  v61 = v31;
  sub_1CFE30B44();
  (*(v19 + 8))(v22, v18);
  v62 = sub_1CFDA7600;
  v32 = v63;
  sub_1CFDAB1D0(v63, v13, &qword_1EDC32CA0, v59, sub_1CFDA7600);
  sub_1CFDF7494(v13, v73);
  v33 = *(v3 + 28);
  v58 = *(v72 + 16);
  v58(v70, v32 + v33, v71);
  LODWORD(v59) = *(v32 + *(v3 + 32));
  v34 = v64;
  sub_1CFDF8F80(v32, v64, type metadata accessor for TrainingLoadSummaryQueryDescriptor);
  v35 = v24;
  v36 = *(v24 + 16);
  v37 = v69;
  v36(v28, v31, v69);
  v38 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v39 = *(v35 + 80);
  v60 = v35;
  v40 = (v66 + v39 + v38) & ~v39;
  v41 = swift_allocObject();
  sub_1CFDF8FE8(v34, v41 + v38, type metadata accessor for TrainingLoadSummaryQueryDescriptor);
  (*(v35 + 32))(v41 + v40, v28, v37);
  SummaryQuery = type metadata accessor for TrainingLoadSummaryQuery(0);
  v43 = objc_allocWithZone(SummaryQuery);
  v44 = &v43[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsHandler];
  *v44 = 0;
  v44[1] = 0;
  *&v43[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsPendingDelivery] = MEMORY[0x1E69E7CC0];
  v45 = v65;
  v46 = v62;
  sub_1CFDAB1D0(v73, &v43[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_morningIndexRange], &qword_1EDC32C90, v65, v62);
  v47 = v70;
  v48 = v71;
  v58(&v43[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_gregorianCalendar], v70, v71);
  v43[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_typeOfDataRequested] = v59;
  v43[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_continueAfterInitialResults] = 1;
  *v44 = sub_1CFDA821C;
  v44[1] = v41;
  sub_1CFDA6E64(0, &qword_1EDC320C0, 0x1E696C388);

  v49 = sub_1CFE30A74();
  v74.receiver = v43;
  v74.super_class = SummaryQuery;
  v50 = objc_msgSendSuper2(&v74, sel_initWithQueryDescriptors_, v49);

  (*(v72 + 8))(v47, v48);
  sub_1CFDAB334(v73, &qword_1EDC32C90, v45, v46);
  v51 = swift_allocObject();
  v52 = v68;
  *(v51 + 16) = v50;
  *(v51 + 24) = v52;
  v53 = v50;
  v54 = v52;
  v55 = v69;
  v56 = v61;
  sub_1CFE30B54();
  [v54 executeQuery_];

  return (*(v60 + 8))(v56, v55);
}

id sub_1CFDF80DC(uint64_t a1, void *a2, void *a3)
{
  if (qword_1EDC32570 != -1)
  {
    swift_once();
  }

  v5 = sub_1CFE30624();
  __swift_project_value_buffer(v5, qword_1EDC32578);
  v6 = a2;
  v7 = sub_1CFE30604();
  v8 = sub_1CFE30C04();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v9 = 136446466;
    *(v9 + 4) = sub_1CFDAAF6C(0xD000000000000022, 0x80000001CFE35CF0, &v14);
    *(v9 + 12) = 2112;
    *(v9 + 14) = v6;
    *v10 = v6;
    v12 = v6;
    _os_log_impl(&dword_1CFDA3000, v7, v8, "[%{public}s] Stopping training load query for stream termination: %@", v9, 0x16u);
    sub_1CFDAB090(v10);
    MEMORY[0x1D3876FF0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1D3876FF0](v11, -1, -1);
    MEMORY[0x1D3876FF0](v9, -1, -1);
  }

  return [a3 stopQuery_];
}

uint64_t TrainingLoadSummaryQueryDescriptor.currentDaySummaryCollection(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1CFDF82C4, 0, 0);
}

uint64_t sub_1CFDF82C4()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  SampleDaySummaryCollection = type metadata accessor for TrainingLoadSampleDaySummaryCollection(0);
  *v2 = v0;
  v2[1] = sub_1CFDF83C4;
  v4 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000021, 0x80000001CFE394F0, sub_1CFDF8AC0, v1, SampleDaySummaryCollection);
}

uint64_t sub_1CFDF83C4()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1CFDF8500, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1CFDF8500()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1CFDF8564(uint64_t a1, uint64_t a2, void *a3)
{
  v56 = a1;
  v57 = a3;
  sub_1CFDAC46C(0, &qword_1EDC318B8, MEMORY[0x1E69E8548]);
  v53 = v4;
  v5 = *(v4 - 8);
  v54 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v52 = &v45 - v7;
  SummaryQueryDescriptor = type metadata accessor for TrainingLoadSummaryQueryDescriptor(0);
  v9 = SummaryQueryDescriptor - 8;
  v51 = *(SummaryQueryDescriptor - 8);
  v10 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](SummaryQueryDescriptor, v11);
  v49 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CFE304B4();
  v55 = *(v12 - 8);
  v13 = v55;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v16;
  v17 = MEMORY[0x1E69E5F90];
  sub_1CFDA7600(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v45 - v20;
  v50 = MEMORY[0x1E69E66A8];
  sub_1CFDA7600(0, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v45 - v24;
  v58 = &v45 - v24;
  v48 = sub_1CFDA7600;
  sub_1CFDAB1D0(a2, v21, &qword_1EDC32CA0, v17, sub_1CFDA7600);
  sub_1CFDF7494(v21, v25);
  v26 = *(v9 + 28);
  v46 = *(v13 + 16);
  v27 = v16;
  v28 = v12;
  v46(v27, a2 + v26, v12);
  v47 = *(a2 + *(v9 + 32));
  v29 = v49;
  sub_1CFDF8F80(a2, v49, type metadata accessor for TrainingLoadSummaryQueryDescriptor);
  v30 = v52;
  v31 = v53;
  (*(v5 + 16))(v52, v56, v53);
  v32 = (*(v51 + 80) + 24) & ~*(v51 + 80);
  v33 = (v10 + *(v5 + 80) + v32) & ~*(v5 + 80);
  v34 = swift_allocObject();
  v35 = v57;
  *(v34 + 16) = v57;
  sub_1CFDF8FE8(v29, v34 + v32, type metadata accessor for TrainingLoadSummaryQueryDescriptor);
  (*(v5 + 32))(v34 + v33, v30, v31);
  SummaryQuery = type metadata accessor for TrainingLoadSummaryQuery(0);
  v37 = objc_allocWithZone(SummaryQuery);
  v38 = &v37[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsHandler];
  *v38 = 0;
  v38[1] = 0;
  *&v37[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsPendingDelivery] = MEMORY[0x1E69E7CC0];
  v39 = v50;
  v40 = v48;
  sub_1CFDAB1D0(v58, &v37[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_morningIndexRange], &qword_1EDC32C90, v50, v48);
  v41 = v45;
  v46(&v37[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_gregorianCalendar], v45, v28);
  v37[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_typeOfDataRequested] = v47;
  v37[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_continueAfterInitialResults] = 0;
  *v38 = sub_1CFDF8E74;
  v38[1] = v34;
  sub_1CFDA6E64(0, &qword_1EDC320C0, 0x1E696C388);
  v42 = v35;

  v43 = sub_1CFE30A74();
  v59.receiver = v37;
  v59.super_class = SummaryQuery;
  v44 = objc_msgSendSuper2(&v59, sel_initWithQueryDescriptors_, v43);

  (*(v55 + 8))(v41, v28);
  sub_1CFDAB334(v58, &qword_1EDC32C90, v39, v40);
  [v42 executeQuery_];
}

void sub_1CFDF8AF0(uint64_t a1)
{
  sub_1CFDA7600(319, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  if (v1 <= 0x3F)
  {
    sub_1CFE304B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1CFDF8B98(uint64_t a1, void *a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  v24[0] = a6;
  SampleDaySummaryCollection = type metadata accessor for TrainingLoadSampleDaySummaryCollection(0);
  MEMORY[0x1EEE9AC00](SampleDaySummaryCollection, v12);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAC46C(0, &qword_1EDC31A00, MEMORY[0x1E69E75F0]);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = (v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = (v24 - v21);
  [a4 stopQuery_];
  if (a3)
  {
    *v22 = a2;
  }

  else
  {
    sub_1CFDAB1D0(a5, v22, &qword_1EDC32CA0, MEMORY[0x1E69E5F90], sub_1CFDA7600);
    *(v22 + *(SampleDaySummaryCollection + 20)) = a2;
  }

  swift_storeEnumTagMultiPayload();
  sub_1CFDAB1D0(v22, v19, &qword_1EDC31A00, MEMORY[0x1E69E75F0], sub_1CFDAC46C);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24[1] = *v19;
    sub_1CFDAB240(a2, a3 & 1);
    sub_1CFDAC46C(0, &qword_1EDC318B8, MEMORY[0x1E69E8548]);
    sub_1CFE30B14();
  }

  else
  {
    sub_1CFDF8FE8(v19, v14, type metadata accessor for TrainingLoadSampleDaySummaryCollection);
    sub_1CFDAB240(a2, a3 & 1);
    sub_1CFDAC46C(0, &qword_1EDC318B8, MEMORY[0x1E69E8548]);
    sub_1CFE30B24();
  }

  return sub_1CFDAB334(v22, &qword_1EDC31A00, MEMORY[0x1E69E75F0], sub_1CFDAC46C);
}

uint64_t sub_1CFDF8E74(uint64_t a1, void *a2, char a3)
{
  v7 = *(type metadata accessor for TrainingLoadSummaryQueryDescriptor(0) - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  sub_1CFDAC46C(0, &qword_1EDC318B8, MEMORY[0x1E69E8548]);
  v11 = *(v3 + 16);
  v12 = v3 + ((v9 + *(*(v10 - 8) + 80)) & ~*(*(v10 - 8) + 80));

  return sub_1CFDF8B98(a1, a2, a3 & 1, v11, v3 + v8, v12);
}

uint64_t sub_1CFDF8F80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDF8FE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDF9080()
{
  v1 = *v0;
  sub_1CFE31144();
  MEMORY[0x1D3876810](qword_1CFE35FB0[v1]);
  return sub_1CFE31184();
}

uint64_t sub_1CFDF9108(uint64_t a1)
{
  v2 = *v1;
  sub_1CFE31144();
  MEMORY[0x1D3876810](qword_1CFE35FB0[v2]);
  return sub_1CFE31184();
}

HealthBalance::SleepingSampleDataType_optional __swiftcall SleepingSampleDataType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x4030201050005uLL >> (8 * rawValue);
  if (rawValue >= 7)
  {
    LOBYTE(v2) = 5;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t SleepingSampleDataType.SortOrder.hashValue.getter()
{
  v1 = *v0;
  sub_1CFE31144();
  MEMORY[0x1D3876810](v1);
  return sub_1CFE31184();
}

char *static SleepingSampleDataType.allCasesSortOrder.getter()
{
  v1 = &unk_1F4C8A3D8;
  sub_1CFDF94F8(&v1);
  return v1;
}

uint64_t SleepingSampleDataType.sampleType.getter()
{
  v1 = *v0;
  if (v1 <= 1)
  {
    if (*v0)
    {
      sub_1CFDA6E64(0, &qword_1EDC31E70, 0x1E696C370);
      v2 = MEMORY[0x1E696BD70];
    }

    else
    {
      sub_1CFDA6E64(0, &qword_1EDC31E70, 0x1E696C370);
      v2 = MEMORY[0x1E696BD30];
    }
  }

  else if (v1 == 2)
  {
    sub_1CFDA6E64(0, &qword_1EDC31E70, 0x1E696C370);
    v2 = MEMORY[0x1E696BD58];
  }

  else
  {
    if (v1 != 3)
    {
      sub_1CFDA6E64(0, &qword_1EDC31868, 0x1E696BF90);
      return MEMORY[0x1D38762D0](*MEMORY[0x1E696B698]);
    }

    sub_1CFDA6E64(0, &qword_1EDC31E70, 0x1E696C370);
    v2 = MEMORY[0x1E696BC58];
  }

  return MEMORY[0x1D38762E0](*v2);
}

uint64_t sub_1CFDF94F8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1CFDFA3B8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1CFDF9780(v5);
  *a1 = v2;
  return result;
}

unint64_t sub_1CFDF9568()
{
  result = qword_1EDC32460;
  if (!qword_1EDC32460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32460);
  }

  return result;
}

unint64_t sub_1CFDF95EC()
{
  result = qword_1EC509BB0;
  if (!qword_1EC509BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509BB0);
  }

  return result;
}

uint64_t sub_1CFDF9670(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1CFDF96C0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1CFDF96C0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1CFE30AE4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1CFDF972C()
{
  result = qword_1EDC31960;
  if (!qword_1EDC31960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31960);
  }

  return result;
}

uint64_t sub_1CFDF9780(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1CFE31064();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1CFE30AB4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1CFDF9930(v7, v8, a1, v4);
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
    return sub_1CFDF9878(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1CFDF9878(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + a3);
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + a3);
    result = 0xBu >> v7;
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *(v9 - 1);
      if (v10 > 2)
      {
        if (v10 == 3)
        {
          if (((3u >> v7) & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        else if (((0xFu >> v7) & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v10 == 1)
      {
        if (((1u >> v7) & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v10 != 2 || (result & 1) == 0)
      {
LABEL_4:
        ++a3;
        ++v5;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *v9 = v10;
      *--v9 = v7;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1CFDF9930(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = v4;
  v8 = a3[1];
  if (v8 < 1)
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_122:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_160;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_154:
      result = sub_1CFDFA2AC(v11);
      v11 = result;
    }

    v79 = *(v11 + 2);
    if (v79 >= 2)
    {
      while (*a3)
      {
        v80 = *&v11[16 * v79];
        v81 = *&v11[16 * v79 + 24];
        sub_1CFDF9F94((*a3 + v80), (*a3 + *&v11[16 * v79 + 16]), (*a3 + v81), v5);
        if (v6)
        {
        }

        if (v81 < v80)
        {
          goto LABEL_147;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1CFDFA2AC(v11);
        }

        if (v79 - 2 >= *(v11 + 2))
        {
          goto LABEL_148;
        }

        v82 = &v11[16 * v79];
        *v82 = v80;
        *(v82 + 1) = v81;
        result = sub_1CFDFA220(v79 - 1);
        v79 = *(v11 + 2);
        if (v79 <= 1)
        {
        }
      }

      goto LABEL_158;
    }
  }

  v9 = a4;
  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v12 = v10++;
    if (v10 < v8)
    {
      v13 = *(*a3 + v10);
      v14 = *(*a3 + v12);
      v15 = 1u >> v13;
      v16 = 0xBu >> v13;
      v17 = 3u >> v13;
      if (v14 != 3)
      {
        v17 = 0xFu >> v13;
      }

      if (v14 != 2)
      {
        LOBYTE(v16) = v17;
      }

      if (!*(*a3 + v12))
      {
        LOBYTE(v15) = 0;
      }

      if (*(*a3 + v12) > 1u)
      {
        LOBYTE(v15) = v16;
      }

      v18 = v12 + 2;
      if (v12 + 2 < v8)
      {
        v19 = v8 - 1;
        while (1)
        {
          result = v10;
          v10 = v18;
          v21 = v13;
          v13 = *(*a3 + v10);
          if (v21 <= 1)
          {
            if (v21)
            {
              if ((v15 & 1) == ((0x1Eu >> v13) & 1))
              {
                v19 = v10 - 1;
                if (v15)
                {
                  goto LABEL_34;
                }

                goto LABEL_42;
              }
            }

            else if (v15)
            {
              v19 = v10 - 1;
              if (v10 < v12)
              {
                goto LABEL_151;
              }

              goto LABEL_35;
            }
          }

          else
          {
            if (v21 == 2)
            {
              v20 = 20;
            }

            else if (v21 == 3)
            {
              v20 = 28;
            }

            else
            {
              v20 = 16;
            }

            if ((v15 & 1) == ((v20 >> v13) & 1))
            {
              v19 = result;
              if ((v15 & 1) == 0)
              {
                goto LABEL_42;
              }

              goto LABEL_34;
            }
          }

          v18 = v10 + 1;
          if (v8 == v10 + 1)
          {
            v10 = v8;
            if (v15)
            {
              goto LABEL_34;
            }

            goto LABEL_42;
          }
        }
      }

      v19 = v10;
      v10 = v12 + 2;
      if (v15)
      {
LABEL_34:
        if (v10 < v12)
        {
          goto LABEL_151;
        }

LABEL_35:
        if (v12 <= v19)
        {
          v22 = v10 - 1;
          v23 = v12;
          do
          {
            if (v23 != v22)
            {
              v25 = *a3;
              if (!*a3)
              {
                goto LABEL_157;
              }

              v26 = *(v25 + v23);
              *(v25 + v23) = *(v25 + v22);
              *(v25 + v22) = v26;
            }
          }

          while (++v23 < v22--);
          v8 = a3[1];
        }
      }
    }

LABEL_42:
    if (v10 < v8)
    {
      if (__OFSUB__(v10, v12))
      {
        goto LABEL_150;
      }

      if (v10 - v12 < v9)
      {
        if (__OFADD__(v12, v9))
        {
          goto LABEL_152;
        }

        if (v12 + v9 < v8)
        {
          v8 = v12 + v9;
        }

        if (v8 < v12)
        {
LABEL_153:
          __break(1u);
          goto LABEL_154;
        }

        if (v10 != v8)
        {
          break;
        }
      }
    }

LABEL_69:
    if (v10 < v12)
    {
      goto LABEL_149;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1CFDDDD20(0, *(v11 + 2) + 1, 1, v11);
      v11 = result;
    }

    v5 = *(v11 + 2);
    v34 = *(v11 + 3);
    v35 = v5 + 1;
    if (v5 >= v34 >> 1)
    {
      result = sub_1CFDDDD20((v34 > 1), v5 + 1, 1, v11);
      v11 = result;
    }

    *(v11 + 2) = v35;
    v36 = &v11[16 * v5];
    *(v36 + 4) = v12;
    *(v36 + 5) = v10;
    v37 = *v84;
    if (!*v84)
    {
      goto LABEL_159;
    }

    if (v5)
    {
      while (1)
      {
        v38 = v35 - 1;
        if (v35 >= 4)
        {
          break;
        }

        if (v35 == 3)
        {
          v39 = *(v11 + 4);
          v40 = *(v11 + 5);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_89:
          if (v42)
          {
            goto LABEL_138;
          }

          v55 = &v11[16 * v35];
          v57 = *v55;
          v56 = *(v55 + 1);
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_141;
          }

          v61 = &v11[16 * v38 + 32];
          v63 = *v61;
          v62 = *(v61 + 1);
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_144;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_145;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v38 = v35 - 2;
            }

            goto LABEL_110;
          }

          goto LABEL_103;
        }

        v65 = &v11[16 * v35];
        v67 = *v65;
        v66 = *(v65 + 1);
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_103:
        if (v60)
        {
          goto LABEL_140;
        }

        v68 = &v11[16 * v38];
        v70 = *(v68 + 4);
        v69 = *(v68 + 5);
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_143;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_110:
        v76 = v38 - 1;
        if (v38 - 1 >= v35)
        {
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
          goto LABEL_153;
        }

        if (!*a3)
        {
          goto LABEL_156;
        }

        v77 = *&v11[16 * v76 + 32];
        v5 = *&v11[16 * v38 + 40];
        sub_1CFDF9F94((*a3 + v77), (*a3 + *&v11[16 * v38 + 32]), (*a3 + v5), v37);
        if (v6)
        {
        }

        if (v5 < v77)
        {
          goto LABEL_134;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1CFDFA2AC(v11);
        }

        if (v76 >= *(v11 + 2))
        {
          goto LABEL_135;
        }

        v78 = &v11[16 * v76];
        *(v78 + 4) = v77;
        *(v78 + 5) = v5;
        result = sub_1CFDFA220(v38);
        v35 = *(v11 + 2);
        if (v35 <= 1)
        {
          goto LABEL_3;
        }
      }

      v43 = &v11[16 * v35 + 32];
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_136;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_137;
      }

      v50 = &v11[16 * v35];
      v52 = *v50;
      v51 = *(v50 + 1);
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_139;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_142;
      }

      if (v54 >= v46)
      {
        v72 = &v11[16 * v38 + 32];
        v74 = *v72;
        v73 = *(v72 + 1);
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_146;
        }

        if (v41 < v75)
        {
          v38 = v35 - 2;
        }

        goto LABEL_110;
      }

      goto LABEL_89;
    }

LABEL_3:
    v8 = a3[1];
    v9 = a4;
    if (v10 >= v8)
    {
      goto LABEL_122;
    }
  }

  v27 = *a3;
  v28 = (*a3 + v10);
  v29 = v12 - v10;
LABEL_52:
  v30 = *(v27 + v10);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    result = *(v32 - 1);
    if (*(v32 - 1) > 2u)
    {
      if (result == 3)
      {
        if (((3u >> v30) & 1) == 0)
        {
          goto LABEL_51;
        }
      }

      else if (((0xFu >> v30) & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else if (result == 1)
    {
      if (((1u >> v30) & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else if (result != 2 || ((0xBu >> v30) & 1) == 0)
    {
LABEL_51:
      ++v10;
      ++v28;
      --v29;
      if (v10 != v8)
      {
        goto LABEL_52;
      }

      v10 = v8;
      goto LABEL_69;
    }

    if (!v27)
    {
      break;
    }

    *v32 = result;
    *--v32 = v30;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
  return result;
}

uint64_t sub_1CFDF9F94(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst < a3 - __src)
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v6;
        v12 = *v4;
        if (v12 <= 1)
        {
          if (*v4 && ((1u >> v11) & 1) != 0)
          {
LABEL_16:
            v13 = v6 + 1;
            if (v7 >= v6 && v7 < v13)
            {
              goto LABEL_25;
            }

            goto LABEL_24;
          }
        }

        else if (v12 == 2)
        {
          if ((0xBu >> v11))
          {
            goto LABEL_16;
          }
        }

        else if (v12 == 3)
        {
          if ((3u >> v11))
          {
            goto LABEL_16;
          }
        }

        else if ((0xFu >> v11))
        {
          goto LABEL_16;
        }

        v14 = v4 + 1;
        v11 = *v4;
        v13 = v6;
        if (v7 < v4)
        {
          ++v4;
        }

        else
        {
          ++v4;
          if (v7 < v14)
          {
            goto LABEL_25;
          }
        }

LABEL_24:
        *v7 = v11;
LABEL_25:
        ++v7;
        if (v4 < v10)
        {
          v6 = v13;
          if (v13 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_61;
    }

LABEL_60:
    if (v6 >= v10)
    {
      goto LABEL_61;
    }

    return 1;
  }

  if (a4 != __src || a4 >= a3)
  {
    memmove(a4, __src, a3 - __src);
  }

  v10 = &v4[v9];
  if (v9 < 1 || v6 <= v7)
  {
LABEL_59:
    if (v6 != v4)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  do
  {
    v15 = v6 - 1;
    --v5;
    v16 = v10;
    while (1)
    {
      v18 = *--v16;
      v17 = v18;
      v19 = *v15;
      if (v19 <= 1)
      {
        break;
      }

      if (v19 == 2)
      {
        if ((0xBu >> v17))
        {
          goto LABEL_51;
        }
      }

      else if (v19 == 3)
      {
        if ((3u >> v17))
        {
          goto LABEL_51;
        }
      }

      else if ((0xFu >> v17))
      {
        goto LABEL_51;
      }

LABEL_48:
      if ((v5 + 1) < v10 || v5 >= v10)
      {
        *v5 = v17;
      }

      --v5;
      v10 = v16;
      if (v16 <= v4)
      {
        v10 = v16;
        goto LABEL_59;
      }
    }

    if (!*v15 || ((1u >> v17) & 1) == 0)
    {
      goto LABEL_48;
    }

LABEL_51:
    if (v5 + 1 < v6 || v5 >= v6)
    {
      *v5 = v19;
    }

    if (v10 <= v4)
    {
      break;
    }

    --v6;
  }

  while (v15 > v7);
  v6 = v15;
  if (v15 == v4)
  {
    goto LABEL_60;
  }

LABEL_61:
  memmove(v6, v4, v10 - v4);
  return 1;
}

uint64_t sub_1CFDFA220(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1CFDFA2AC(v3);
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

char *sub_1CFDFA2C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1CFDFA3CC(0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void sub_1CFDFA3CC(uint64_t a1)
{
  if (!qword_1EC509820)
  {
    sub_1CFDDDF94();
    v1 = sub_1CFE31084();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC509820);
    }
  }
}

void SleepingSampleAnalysisFeatureStatusManager.status.getter(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1CFDA5A24(&qword_1EDC318F8, type metadata accessor for SleepingSampleAnalysisFeatureStatusManager, &protocol conformance descriptor for SleepingSampleAnalysisFeatureStatusManager);
  sub_1CFE30504();

  v3 = *(v1 + OBJC_IVAR____TtC13HealthBalance42SleepingSampleAnalysisFeatureStatusManager_lockedState);
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_1CFDFA640(v3 + v4, a1);
  os_unfair_lock_unlock((v3 + v5));
}

void sub_1CFDFA534(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFDA5A24(&qword_1EDC318F8, type metadata accessor for SleepingSampleAnalysisFeatureStatusManager, &protocol conformance descriptor for SleepingSampleAnalysisFeatureStatusManager);
  sub_1CFE30504();

  v4 = *(v3 + OBJC_IVAR____TtC13HealthBalance42SleepingSampleAnalysisFeatureStatusManager_lockedState);
  v5 = *(*v4 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v6));
  sub_1CFDFA640(v4 + v5, a2);
  os_unfair_lock_unlock((v4 + v6));
}

uint64_t sub_1CFDFA640(uint64_t a1, uint64_t a2)
{
  sub_1CFDA5C94(0, qword_1EDC31C98, type metadata accessor for SleepingSampleAnalysisFeatureStatus, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t (*SleepingSampleAnalysisFeatureStatusManager._unitTest_didReceiveObserverUpdate.getter())()
{
  v1 = *(v0 + OBJC_IVAR____TtC13HealthBalance42SleepingSampleAnalysisFeatureStatusManager_lockedState);
  swift_getKeyPath();
  v2 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v1 + v2));
  sub_1CFDFAC18(&v5);
  os_unfair_lock_unlock((v1 + v2));

  if (!v5)
  {
    return 0;
  }

  v4 = v5;
  *(swift_allocObject() + 16) = v4;
  return sub_1CFDFAC94;
}

uint64_t (*sub_1CFDFA800@<X0>(uint64_t (**a1)()@<X8>))()
{
  result = SleepingSampleAnalysisFeatureStatusManager._unitTest_didReceiveObserverUpdate.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_1CFDFDA28;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1CFDFA870(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    a1 = swift_allocObject();
    v5 = a1;
    a1[2] = v4;
    a1[3] = v3;
    v6 = sub_1CFDFE24C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(*a2 + OBJC_IVAR____TtC13HealthBalance42SleepingSampleAnalysisFeatureStatusManager_lockedState);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = *(*v7 + *MEMORY[0x1E69E6B68] + 16);
  v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
  sub_1CFDA81D0(v4, v3);
  os_unfair_lock_lock((v7 + v9));
  sub_1CFDFE250(v7 + v8);
  os_unfair_lock_unlock((v7 + v9));
  return sub_1CFDAC3D4(v6, v5);
}

uint64_t SleepingSampleAnalysisFeatureStatusManager._unitTest_didReceiveObserverUpdate.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC13HealthBalance42SleepingSampleAnalysisFeatureStatusManager_lockedState);
  v6 = *(*v5 + *MEMORY[0x1E69E6B68] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  sub_1CFDFAD2C(v5 + v6);
  os_unfair_lock_unlock((v5 + v7));
  return sub_1CFDAC3D4(a1, a2);
}

uint64_t sub_1CFDFAA5C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SleepingSampleAnalysisFeatureStatusManager.State(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1CFDFE268;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_1CFDA81D0(v4, v5);
}

uint64_t sub_1CFDFAAF0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1CFDFE24C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for SleepingSampleAnalysisFeatureStatusManager.State(0) + 24));
  v8 = *v7;
  v9 = v7[1];
  sub_1CFDA81D0(v3, v4);
  result = sub_1CFDAC3D4(v8, v9);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t (*sub_1CFDFAB9C())()
{
  swift_getAtKeyPath();
  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_1CFDFE24C;
}

uint64_t sub_1CFDFAC18@<X0>(uint64_t (**a1)()@<X8>)
{
  result = (*(v1 + 16))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1CFDFE268;
  }

  else
  {
    v7 = 0;
  }

  *a1 = v7;
  a1[1] = result;
  return result;
}

uint64_t sub_1CFDFACBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + *(type metadata accessor for SleepingSampleAnalysisFeatureStatusManager.State(0) + 24));
  v6 = *v5;
  v7 = v5[1];
  sub_1CFDA81D0(a2, a3);
  result = sub_1CFDAC3D4(v6, v7);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t (*SleepingSampleAnalysisFeatureStatusManager._unitTest_didReceiveObserverUpdate.modify(uint64_t (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = SleepingSampleAnalysisFeatureStatusManager._unitTest_didReceiveObserverUpdate.getter();
  a1[1] = v3;
  return sub_1CFDFAD90;
}

uint64_t sub_1CFDFAD90(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  v4 = *(a1[2] + OBJC_IVAR____TtC13HealthBalance42SleepingSampleAnalysisFeatureStatusManager_lockedState);
  v5 = *(*v4 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  if (a2)
  {
    sub_1CFDA81D0(v3, v2);
    os_unfair_lock_lock((v4 + v6));
    sub_1CFDFE250(v4 + v5);
    os_unfair_lock_unlock((v4 + v6));
    sub_1CFDAC3D4(v3, v2);
  }

  else
  {
    os_unfair_lock_lock((v4 + v6));
    sub_1CFDFE250(v4 + v5);
    os_unfair_lock_unlock((v4 + v6));
  }

  return sub_1CFDAC3D4(v3, v2);
}

id SleepingSampleAnalysisFeatureStatusManager.__allocating_init(healthStore:observationQueue:)(uint64_t a1, void *a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v2;
  v6 = objc_allocWithZone(v2);
  v7 = sub_1CFDFD408(a2, sub_1CFDAFB44, v5);

  return v7;
}

id SleepingSampleAnalysisFeatureStatusManager.__allocating_init(healthStore:observationQueue:contextConstraintOverride:)(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a3;
  v8 = objc_allocWithZone(v3);
  v9 = sub_1CFDFD408(a2, sub_1CFDFD6A8, v7);

  return v9;
}

id SleepingSampleAnalysisFeatureStatusManager.__allocating_init(observationQueue:makeFeatureStatusProviderForFeatureIdentifier:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1CFDFD408(a1, a2, a3);

  return v8;
}

id SleepingSampleAnalysisFeatureStatusManager.init(observationQueue:makeFeatureStatusProviderForFeatureIdentifier:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1CFDFD408(a1, a2, a3);

  return v4;
}

Swift::Void __swiftcall SleepingSampleAnalysisFeatureStatusManager.stopObserving()()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_1EDC32570 != -1)
  {
    swift_once();
  }

  v2 = sub_1CFE30624();
  __swift_project_value_buffer(v2, qword_1EDC32578);
  v3 = sub_1CFE30604();
  v4 = sub_1CFE30C04();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136446210;
    v7 = sub_1CFE31294();
    v9 = sub_1CFDAAF6C(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1CFDA3000, v3, v4, "[%{public}s] Ending observation", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1D3876FF0](v6, -1, -1);
    MEMORY[0x1D3876FF0](v5, -1, -1);
  }

  v10 = sub_1CFDA5DE4();
  v11 = v10;
  if (!(v10 >> 62))
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_7;
    }

LABEL_14:

    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v16);
    v17 = v1;
    sub_1CFDA5A24(&qword_1EDC318F8, type metadata accessor for SleepingSampleAnalysisFeatureStatusManager, &protocol conformance descriptor for SleepingSampleAnalysisFeatureStatusManager);
    sub_1CFE304F4();

    return;
  }

  v12 = sub_1CFE30EE4();
  if (!v12)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v12 >= 1)
  {
    for (i = 0; i != v12; ++i)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1D3876480](i, v11);
      }

      else
      {
        v14 = *(v11 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      [v14 unregisterObserver_];
      swift_unknownObjectRelease();
    }

    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_1CFDFB33C(uint64_t a1)
{
  sub_1CFDA5C94(0, qword_1EDC31C98, type metadata accessor for SleepingSampleAnalysisFeatureStatus, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v8 - v4;
  *(a1 + *(type metadata accessor for SleepingSampleAnalysisFeatureStatusManager.State(0) + 20)) = 0;
  sub_1CFDA5CF8(MEMORY[0x1E69E7CC0], &unk_1EDC317D8, &qword_1EDC32528, 0x1E696C170);
  type metadata accessor for HKFeatureIdentifier(0);
  sub_1CFDA6E64(0, &qword_1EDC32528, 0x1E696C170);
  sub_1CFDA5A24(&qword_1EDC32500, type metadata accessor for HKFeatureIdentifier, MEMORY[0x1E696B458]);
  sub_1CFDA5A24(&unk_1EDC32518, type metadata accessor for HKFeatureIdentifier, MEMORY[0x1E696B450]);
  sub_1CFDA5A24(&qword_1EDC32510, type metadata accessor for HKFeatureIdentifier, &unk_1CFE322F8);
  sub_1CFE30724();
  v6 = type metadata accessor for SleepingSampleAnalysisFeatureStatus(0);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  return sub_1CFDFDD60(v5, a1);
}

void SleepingSampleAnalysisFeatureStatusManager.featureStatusProviding(_:didUpdate:)(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  v5 = [a1 featureIdentifier];
  if (qword_1EDC32570 != -1)
  {
    swift_once();
  }

  v6 = sub_1CFE30624();
  __swift_project_value_buffer(v6, qword_1EDC32578);
  v7 = v5;
  v8 = sub_1CFE30604();
  v9 = sub_1CFE30C04();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136446466;
    v12 = sub_1CFE31294();
    v14 = sub_1CFDAAF6C(v12, v13, &v26);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    v15 = sub_1CFE30924();
    v17 = sub_1CFDAAF6C(v15, v16, &v26);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_1CFDA3000, v8, v9, "[%{public}s] Received status update for %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3876FF0](v11, -1, -1);
    MEMORY[0x1D3876FF0](v10, -1, -1);
  }

  MEMORY[0x1EEE9AC00](v18, v19);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v21);
  v26 = v3;
  sub_1CFDA5A24(&qword_1EDC318F8, type metadata accessor for SleepingSampleAnalysisFeatureStatusManager, &protocol conformance descriptor for SleepingSampleAnalysisFeatureStatusManager);
  sub_1CFE304F4();

  v22 = SleepingSampleAnalysisFeatureStatusManager._unitTest_didReceiveObserverUpdate.getter();
  if (v22)
  {
    v24 = v23;
    v25 = v22;
    v22();

    sub_1CFDAC3D4(v25, v24);
  }

  else
  {
  }
}

void sub_1CFDFB850(char *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  sub_1CFDA5C94(0, qword_1EDC31C98, type metadata accessor for SleepingSampleAnalysisFeatureStatus, MEMORY[0x1E69E6720]);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v39 - v14;
  if (a1[*(type metadata accessor for SleepingSampleAnalysisFeatureStatusManager.State(0) + 20)] == 1)
  {
    v40 = a4;
    v41 = a3;
    sub_1CFDFA640(a1, v15);
    v16 = type metadata accessor for SleepingSampleAnalysisFeatureStatus(0);
    v17 = *(v16 - 8);
    v18 = *(v17 + 48);
    v19 = v18(v15, 1, v16);
    sub_1CFDFDCD4(v15);
    if (v19 == 1)
    {
      v39[3] = sub_1CFDA5CF8(MEMORY[0x1E69E7CC0], &unk_1EDC317D8, &qword_1EDC32528, 0x1E696C170);
      type metadata accessor for HKFeatureIdentifier(0);
      v39[2] = v20;
      v39[1] = sub_1CFDA6E64(0, &qword_1EDC32528, 0x1E696C170);
      v39[0] = sub_1CFDA5A24(&qword_1EDC32500, type metadata accessor for HKFeatureIdentifier, MEMORY[0x1E696B458]);
      sub_1CFDA5A24(&unk_1EDC32518, type metadata accessor for HKFeatureIdentifier, MEMORY[0x1E696B450]);
      sub_1CFDA5A24(&qword_1EDC32510, type metadata accessor for HKFeatureIdentifier, &unk_1CFE322F8);
      sub_1CFE30724();
      (*(v17 + 56))(v12, 0, 1, v16);
      sub_1CFDFDD60(v12, a1);
    }

    if (!v18(a1, 1, v16))
    {
      v21 = v41;
      v22 = v40;
      sub_1CFDFDDF4(0);
      v23 = sub_1CFE306E4();
      v25 = v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = *v25;
      *v25 = 0x8000000000000000;
      sub_1CFDFC9C4(v22, v21, isUniquelyReferenced_nonNull_native);

      *v25 = v43;
      v23(v42, 0);
    }
  }

  else
  {
    if (qword_1EDC32570 != -1)
    {
      swift_once();
    }

    v27 = sub_1CFE30624();
    __swift_project_value_buffer(v27, qword_1EDC32578);
    v28 = a3;
    v29 = sub_1CFE30604();
    v30 = sub_1CFE30C04();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v42[0] = v32;
      *v31 = 136446466;
      v33 = sub_1CFE31294();
      v35 = sub_1CFDAAF6C(v33, v34, v42);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2082;
      v36 = sub_1CFE30924();
      v38 = sub_1CFDAAF6C(v36, v37, v42);

      *(v31 + 14) = v38;
      _os_log_impl(&dword_1CFDA3000, v29, v30, "[%{public}s] Ignoring received update for %{public}s; not observing", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3876FF0](v32, -1, -1);
      MEMORY[0x1D3876FF0](v31, -1, -1);
    }
  }
}

id SleepingSampleAnalysisFeatureStatusManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SleepingSampleAnalysisFeatureStatusManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1CFDFBEE8(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1CFDA5A24(&qword_1EDC318F8, type metadata accessor for SleepingSampleAnalysisFeatureStatusManager, &protocol conformance descriptor for SleepingSampleAnalysisFeatureStatusManager);
  sub_1CFE30504();

  v4 = *(v3 + OBJC_IVAR____TtC13HealthBalance42SleepingSampleAnalysisFeatureStatusManager_lockedState);
  v5 = *(*v4 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v6));
  sub_1CFDFA640(v4 + v5, a1);
  os_unfair_lock_unlock((v4 + v6));
}

void *sub_1CFDFC03C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1CFDFC088(a1, a2);
  sub_1CFDFC1B8(&unk_1F4C8A188);
  return v3;
}

void *sub_1CFDFC088(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1CFDFC2A4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1CFE30E14();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1CFE309B4();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1CFDFC2A4(v10, 0);
        result = sub_1CFE30DA4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1CFDFC1B8(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1CFDFC30C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1CFDFC2A4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1CFDFDF18();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1CFDFC30C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1CFDFDF18();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

unint64_t sub_1CFDFC3F4(uint64_t a1)
{
  v2 = sub_1CFE30D34();

  return sub_1CFDFC51C(a1, v2);
}

unint64_t sub_1CFDFC438(uint64_t a1)
{
  v1 = a1;
  sub_1CFE31144();
  MEMORY[0x1D3876810](v1);
  v2 = sub_1CFE31184();

  return sub_1CFDFC5E4(v1, v2);
}

unint64_t sub_1CFDFC4A4(uint64_t a1, uint64_t a2)
{
  sub_1CFE31144();
  sub_1CFE30984();
  v4 = sub_1CFE31184();

  return sub_1CFDFC654(a1, a2, v4);
}

unint64_t sub_1CFDFC51C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1CFDEAA80(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1D3876400](v9, a1);
      sub_1CFDC3BCC(v9);
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

unint64_t sub_1CFDFC5E4(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1CFDFC654(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1CFE310B4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1CFDFC70C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1CFDFDA50(0);
  v33 = v4;
  result = sub_1CFE30F04();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_1CFDFDB80(v24, v34);
      }

      else
      {
        sub_1CFDFDB1C(v24, v34);
      }

      sub_1CFE31144();
      sub_1CFE30984();
      result = sub_1CFE31184();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1CFDFDB80(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

id sub_1CFDFC9C4(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1CFDA54DC(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1CFDA5674(v13, a3 & 1);
      v8 = sub_1CFDA54DC(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for HKFeatureIdentifier(0);
        sub_1CFE310F4();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v16 = v8;
      sub_1CFDFCCA0();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  return a2;
}

void *sub_1CFDFCB2C()
{
  v1 = v0;
  sub_1CFDAFA2C(0, &qword_1EDC317F8, MEMORY[0x1E69E6EC8]);
  v2 = *v0;
  v3 = sub_1CFE30EF4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1CFDFCCA0()
{
  v1 = v0;
  sub_1CFDA5944(0, &unk_1EDC317D8, &qword_1EDC32528, 0x1E696C170);
  v2 = *v0;
  v3 = sub_1CFE30EF4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1CFDFCE0C()
{
  v1 = v0;
  sub_1CFDFDA50(0);
  v2 = *v0;
  v3 = sub_1CFE30EF4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_1CFDFDB1C(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1CFDFDB80(v25, *(v4 + 56) + v22);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_1CFDFCFA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = MEMORY[0x1E69E69B8];
    sub_1CFDFDC14(0, &unk_1EC509C80, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0]);
    v4 = sub_1CFE30F14();
    v5 = a1 + 32;

    while (1)
    {
      sub_1CFDFDB98(v5, v14, &qword_1EC5095A8, v3);
      result = sub_1CFDFC3F4(v14);
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
      result = sub_1CFDFDC04(&v16, (v4[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CFDFD0EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1CFDFE11C(0);
    v3 = sub_1CFE30F14();
    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 8);
      v11 = *i;
      result = sub_1CFDFC438(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CFDFD1C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1CFDAFA2C(0, &qword_1EDC317F8, MEMORY[0x1E69E6EC8]);
    v3 = sub_1CFE30F14();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = sub_1CFDA54DC(v6);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CFDFD2D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = MEMORY[0x1E69E6158];
    sub_1CFDFDC14(0, &qword_1EC509C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
    v4 = sub_1CFE30F14();
    v5 = a1 + 32;

    while (1)
    {
      sub_1CFDFDB98(v5, &v14, &qword_1EC509C78, v3);
      v6 = v14;
      v7 = v15;
      result = sub_1CFDFC4A4(v14, v15);
      if (v9)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v4[6] + 16 * result);
      *v10 = v6;
      v10[1] = v7;
      result = sub_1CFDFDC04(&v16, (v4[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

id sub_1CFDFD408(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for SleepingSampleAnalysisFeatureStatusManager.State(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC13HealthBalance42SleepingSampleAnalysisFeatureStatusManager_lockedState;
  v14 = type metadata accessor for SleepingSampleAnalysisFeatureStatus(0);
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v12[*(v9 + 28)] = 0;
  v15 = &v12[*(v9 + 32)];
  sub_1CFDFDF68(0);
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = swift_allocObject();
  *(v16 + ((*(*v16 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1CFDFDFD0(v12, v16 + *(*v16 + *MEMORY[0x1E69E6B68] + 16));
  *&v3[v13] = v16;
  sub_1CFE30514();
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;

  v18 = sub_1CFDFD1C8(MEMORY[0x1E69E7CC0]);
  sub_1CFDFE034(0);
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  *(v19 + 16) = v18;
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = sub_1CFDB007C;
  v20[4] = v17;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1CFDA605C;
  *(v21 + 24) = v20;
  v22 = &v3[OBJC_IVAR____TtC13HealthBalance42SleepingSampleAnalysisFeatureStatusManager_featureStatusProviderForFeatureIdentifier];
  *v22 = sub_1CFDA6068;
  v22[1] = v21;
  *&v3[OBJC_IVAR____TtC13HealthBalance42SleepingSampleAnalysisFeatureStatusManager_observationQueue] = a1;
  v25.receiver = v3;
  v25.super_class = ObjectType;
  v23 = a1;
  return objc_msgSendSuper2(&v25, sel_init);
}

id sub_1CFDFD6A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = objc_allocWithZone(MEMORY[0x1E696C178]);

  return [v5 initWithFeatureIdentifier:a1 healthStore:v4 contextConstraint:v3];
}

uint64_t sub_1CFDFD744(uint64_t a1)
{
  result = sub_1CFDA5A24(&qword_1EDC318F8, type metadata accessor for SleepingSampleAnalysisFeatureStatusManager, &protocol conformance descriptor for SleepingSampleAnalysisFeatureStatusManager);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CFDFD7E0(uint64_t a1)
{
  result = sub_1CFE30524();
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

void sub_1CFDFD8EC(uint64_t a1)
{
  sub_1CFDA5C94(319, qword_1EDC31C98, type metadata accessor for SleepingSampleAnalysisFeatureStatus, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1CFDA5C94(319, &qword_1EDC319F0, sub_1CFDFD9D8, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1CFDFD9D8()
{
  result = qword_1EDC319F8;
  if (!qword_1EDC319F8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDC319F8);
  }

  return result;
}

void sub_1CFDFDA50(uint64_t a1)
{
  if (!qword_1EC509C60)
  {
    sub_1CFDFDAB8();
    v1 = sub_1CFE30F24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC509C60);
    }
  }
}

unint64_t sub_1CFDFDAB8()
{
  result = qword_1EC509C68;
  if (!qword_1EC509C68)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC509C68);
  }

  return result;
}

uint64_t sub_1CFDFDB1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1CFDFDB80(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1CFDFDB98(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1CFDFDC70(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_1CFDFDC04(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_1CFDFDC14(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = sub_1CFE30F24();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1CFDFDC70(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_1CFDFDCD4(uint64_t a1)
{
  sub_1CFDA5C94(0, qword_1EDC31C98, type metadata accessor for SleepingSampleAnalysisFeatureStatus, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFDFDD60(uint64_t a1, uint64_t a2)
{
  sub_1CFDA5C94(0, qword_1EDC31C98, type metadata accessor for SleepingSampleAnalysisFeatureStatus, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1CFDFDDF4(uint64_t a1)
{
  if (!qword_1EDC32550)
  {
    type metadata accessor for HKFeatureIdentifier(255);
    sub_1CFDA6E64(255, &qword_1EDC32528, 0x1E696C170);
    sub_1CFDA5A24(&qword_1EDC32500, type metadata accessor for HKFeatureIdentifier, MEMORY[0x1E696B458]);
    sub_1CFDA5A24(&unk_1EDC32518, type metadata accessor for HKFeatureIdentifier, MEMORY[0x1E696B450]);
    sub_1CFDA5A24(&qword_1EDC32510, type metadata accessor for HKFeatureIdentifier, &unk_1CFE322F8);
    v1 = sub_1CFE30714();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC32550);
    }
  }
}

void sub_1CFDFDF18()
{
  if (!qword_1EC509C90)
  {
    v0 = sub_1CFE31084();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC509C90);
    }
  }
}

void sub_1CFDFDF68(uint64_t a1)
{
  if (!qword_1EDC31A58)
  {
    type metadata accessor for SleepingSampleAnalysisFeatureStatusManager.State(255);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_1CFE30E04();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC31A58);
    }
  }
}

uint64_t sub_1CFDFDFD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleAnalysisFeatureStatusManager.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1CFDFE034(uint64_t a1)
{
  if (!qword_1EDC31A50)
  {
    sub_1CFDAFA2C(255, &qword_1EDC31AA8, MEMORY[0x1E69E5E28]);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_1CFE30E04();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC31A50);
    }
  }
}

unint64_t sub_1CFDFE0B8()
{
  result = qword_1EDC31A70;
  if (!qword_1EDC31A70)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC31A70);
  }

  return result;
}

void sub_1CFDFE11C(uint64_t a1)
{
  if (!qword_1EC509CA0)
  {
    sub_1CFDFE188();
    sub_1CFDFE1E0();
    v1 = sub_1CFE30F24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC509CA0);
    }
  }
}

void sub_1CFDFE188()
{
  if (!qword_1EC509CA8)
  {
    v0 = sub_1CFE30BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC509CA8);
    }
  }
}

unint64_t sub_1CFDFE1E0()
{
  result = qword_1EC509CB0;
  if (!qword_1EC509CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509CB0);
  }

  return result;
}

uint64_t SleepingSampleChangeNotification.init(id:day:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char *a5@<X8>)
{
  v7 = *a4;
  v8 = *(a4 + 8);
  *a5 = a1;
  *(a5 + 1) = a2;
  v9 = type metadata accessor for SleepingSampleChangeNotification(0);
  v10 = *(v9 + 20);
  v11 = sub_1CFE307E4();
  result = (*(*(v11 - 8) + 32))(&a5[v10], a3, v11);
  v13 = &a5[*(v9 + 24)];
  *v13 = v7;
  v13[8] = v8;
  return result;
}

uint64_t type metadata accessor for SleepingSampleChangeNotification(uint64_t a1)
{
  result = qword_1EC509D70;
  if (!qword_1EC509D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SleepingSampleChangeNotification.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SleepingSampleChangeNotification.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SleepingSampleChangeNotification.day.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SleepingSampleChangeNotification(0) + 20);
  v4 = sub_1CFE307E4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SleepingSampleChangeNotification.day.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SleepingSampleChangeNotification(0) + 20);
  v4 = sub_1CFE307E4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SleepingSampleChangeNotification.content.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for SleepingSampleChangeNotification(0);
  v4 = (v1 + *(result + 24));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t SleepingSampleChangeNotification.content.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for SleepingSampleChangeNotification(0);
  v5 = v1 + *(result + 24);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t static SleepingSampleChangeNotification.Content.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a2 + 8);
  }

  if (!*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1CFDFE624(uint64_t a1)
{
  v2 = sub_1CFDFEDAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDFE660(uint64_t a1)
{
  v2 = sub_1CFDFEDAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFDFE69C(uint64_t a1)
{
  v2 = sub_1CFDFED58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDFE6D8(uint64_t a1)
{
  v2 = sub_1CFDFED58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFDFE714()
{
  v1 = 0x447365676E616863;
  if (*v0 != 1)
  {
    v1 = 0x6F4370756D726177;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7365676E616863;
  }
}

uint64_t sub_1CFDFE784@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1CFE0212C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1CFDFE7AC(uint64_t a1)
{
  v2 = sub_1CFDFEE00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDFE7E8(uint64_t a1)
{
  v2 = sub_1CFDFEE00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFDFE824(uint64_t a1)
{
  v2 = sub_1CFDFED04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDFE860(uint64_t a1)
{
  v2 = sub_1CFDFED04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SleepingSampleChangeNotification.Content.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E6F58];
  sub_1CFE018C0(0, &qword_1EC509CC0, sub_1CFDFED04, &type metadata for SleepingSampleChangeNotification.Content.WarmupCompleteCodingKeys, MEMORY[0x1E69E6F58]);
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v32 = &v28 - v7;
  sub_1CFE018C0(0, &qword_1EC509CD0, sub_1CFDFED58, &type metadata for SleepingSampleChangeNotification.Content.ChangesDemoCodingKeys, v4);
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v29 = &v28 - v10;
  sub_1CFE018C0(0, &qword_1EC509CE0, sub_1CFDFEDAC, &type metadata for SleepingSampleChangeNotification.Content.ChangesCodingKeys, v4);
  v36 = *(v11 - 8);
  v37 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v35 = &v28 - v13;
  sub_1CFE018C0(0, &qword_1EC509CF0, sub_1CFDFEE00, &type metadata for SleepingSampleChangeNotification.Content.CodingKeys, v4);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v28 - v18;
  v20 = *v2;
  LODWORD(v4) = *(v2 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDFEE00();
  sub_1CFE311A4();
  if (v4 == 1)
  {
    if (v20)
    {
      v41 = 2;
      sub_1CFDFED04();
      v21 = v32;
      sub_1CFE30FF4();
      v23 = v33;
      v22 = v34;
    }

    else
    {
      v40 = 1;
      sub_1CFDFED58();
      v21 = v29;
      sub_1CFE30FF4();
      v23 = v30;
      v22 = v31;
    }

    (*(v23 + 8))(v21, v22);
    return (*(v16 + 8))(v19, v15);
  }

  else
  {
    v24 = v16;
    v39 = 0;
    sub_1CFDFEDAC();
    v25 = v35;
    sub_1CFE30FF4();
    v38 = v20;
    sub_1CFDFEE54();
    v26 = v37;
    sub_1CFE31054();
    (*(v36 + 8))(v25, v26);
    return (*(v24 + 8))(v19, v15);
  }
}

unint64_t sub_1CFDFED04()
{
  result = qword_1EC509CC8;
  if (!qword_1EC509CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509CC8);
  }

  return result;
}

unint64_t sub_1CFDFED58()
{
  result = qword_1EC509CD8;
  if (!qword_1EC509CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509CD8);
  }

  return result;
}

unint64_t sub_1CFDFEDAC()
{
  result = qword_1EC509CE8;
  if (!qword_1EC509CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509CE8);
  }

  return result;
}

unint64_t sub_1CFDFEE00()
{
  result = qword_1EC509CF8;
  if (!qword_1EC509CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509CF8);
  }

  return result;
}

unint64_t sub_1CFDFEE54()
{
  result = qword_1EC509D00;
  if (!qword_1EC509D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509D00);
  }

  return result;
}

uint64_t SleepingSampleChangeNotification.Content.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v1)
    {
      v1 = 2;
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    MEMORY[0x1D3876810](0);
  }

  return MEMORY[0x1D3876810](v1);
}

uint64_t SleepingSampleChangeNotification.Content.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1CFE31144();
  if (v2 == 1)
  {
    if (v1)
    {
      v1 = 2;
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    MEMORY[0x1D3876810](0);
  }

  MEMORY[0x1D3876810](v1);
  return sub_1CFE31184();
}

uint64_t SleepingSampleChangeNotification.Content.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1CFE018C0(0, &qword_1EC509D08, sub_1CFDFED04, &type metadata for SleepingSampleChangeNotification.Content.WarmupCompleteCodingKeys, MEMORY[0x1E69E6F48]);
  v41 = v4;
  v48 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v47 = &v40 - v6;
  sub_1CFE018C0(0, &qword_1EC509D10, sub_1CFDFED58, &type metadata for SleepingSampleChangeNotification.Content.ChangesDemoCodingKeys, v3);
  v43 = v7;
  v46 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v45 = &v40 - v9;
  sub_1CFE018C0(0, &qword_1EC509D18, sub_1CFDFEDAC, &type metadata for SleepingSampleChangeNotification.Content.ChangesCodingKeys, v3);
  v11 = v10;
  v42 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v40 - v13;
  sub_1CFE018C0(0, &qword_1EC509D20, sub_1CFDFEE00, &type metadata for SleepingSampleChangeNotification.Content.CodingKeys, v3);
  v16 = v15;
  v49 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v40 - v18;
  v20 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1CFDFEE00();
  v21 = v50;
  sub_1CFE31194();
  if (!v21)
  {
    v22 = v45;
    v23 = v46;
    v50 = v11;
    v24 = v47;
    v25 = v48;
    v26 = sub_1CFE30FE4();
    v27 = (2 * *(v26 + 16)) | 1;
    v52 = v26;
    v53 = v26 + 32;
    v54 = 0;
    v55 = v27;
    v28 = sub_1CFDB4610();
    if (v28 == 3 || v54 != v55 >> 1)
    {
      v30 = v19;
      v31 = sub_1CFE30DF4();
      swift_allocError();
      v33 = v32;
      sub_1CFDCB7AC(0);
      *v33 = &type metadata for SleepingSampleChangeNotification.Content;
      sub_1CFE30F74();
      sub_1CFE30DD4();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v31);
      swift_willThrow();
      (*(v49 + 8))(v30, v16);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v28)
      {
        if (v28 == 1)
        {
          LOBYTE(v56) = 1;
          sub_1CFDFED58();
          sub_1CFE30F64();
          v29 = v49;
          (*(v23 + 8))(v22, v43);
          (*(v29 + 8))(v19, v16);
          swift_unknownObjectRelease();
          v38 = 0;
        }

        else
        {
          LOBYTE(v56) = 2;
          sub_1CFDFED04();
          sub_1CFE30F64();
          v37 = v49;
          (*(v25 + 8))(v24, v41);
          (*(v37 + 8))(v19, v16);
          swift_unknownObjectRelease();
          v38 = 1;
        }

        v39 = 1;
        v35 = v44;
      }

      else
      {
        LOBYTE(v56) = 0;
        sub_1CFDFEDAC();
        sub_1CFE30F64();
        v35 = v44;
        sub_1CFDFF714();
        v36 = v50;
        sub_1CFE30FD4();
        (*(v42 + 8))(v14, v36);
        (*(v49 + 8))(v19, v16);
        swift_unknownObjectRelease();
        v39 = 0;
        v38 = v56;
      }

      *v35 = v38;
      *(v35 + 8) = v39;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v51);
}

uint64_t sub_1CFDFF5E4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1CFE31144();
  if (v2 == 1)
  {
    if (v1)
    {
      v1 = 2;
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    MEMORY[0x1D3876810](0);
  }

  MEMORY[0x1D3876810](v1);
  return sub_1CFE31184();
}

uint64_t sub_1CFDFF654()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v1)
    {
      v1 = 2;
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    MEMORY[0x1D3876810](0);
  }

  return MEMORY[0x1D3876810](v1);
}

uint64_t sub_1CFDFF6A8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1CFE31144();
  if (v3 == 1)
  {
    if (v2)
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }
  }

  else
  {
    MEMORY[0x1D3876810](0);
  }

  MEMORY[0x1D3876810](v2);
  return sub_1CFE31184();
}

unint64_t sub_1CFDFF714()
{
  result = qword_1EC509D28;
  if (!qword_1EC509D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509D28);
  }

  return result;
}

uint64_t sub_1CFDFF798(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a2 + 8);
  }

  if (!*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1CFDFF7D8()
{
  v1 = 7954788;
  if (*v0 != 1)
  {
    v1 = 0x746E65746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1CFDFF820@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1CFE02250(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1CFDFF848(uint64_t a1)
{
  v2 = sub_1CFE01818();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDFF884(uint64_t a1)
{
  v2 = sub_1CFE01818();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SleepingSampleChangeNotification.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1CFE018C0(0, &qword_1EC509D30, sub_1CFE01818, &type metadata for SleepingSampleChangeNotification.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFE01818();
  sub_1CFE311A4();
  v19 = 0;
  sub_1CFE31024();
  if (!v2)
  {
    v11 = type metadata accessor for SleepingSampleChangeNotification(0);
    v18 = 1;
    sub_1CFE307E4();
    sub_1CFDADC7C(&qword_1EDC318C8, MEMORY[0x1E696B418], MEMORY[0x1E696B420]);
    sub_1CFE31054();
    v12 = (v3 + *(v11 + 24));
    v13 = *v12;
    LOBYTE(v12) = *(v12 + 8);
    v15 = v13;
    v16 = v12;
    v17 = 2;
    sub_1CFE0186C();
    sub_1CFE31054();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t SleepingSampleChangeNotification.hash(into:)(uint64_t a1)
{
  sub_1CFE30984();
  v2 = type metadata accessor for SleepingSampleChangeNotification(0);
  sub_1CFE307E4();
  sub_1CFDADC7C(&qword_1EC509638, MEMORY[0x1E696B418], MEMORY[0x1E696B428]);
  sub_1CFE30834();
  v3 = v1 + *(v2 + 24);
  v4 = *v3;
  if (*(v3 + 8) == 1)
  {
    if (v4)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    MEMORY[0x1D3876810](0);
  }

  return MEMORY[0x1D3876810](v4);
}

uint64_t SleepingSampleChangeNotification.hashValue.getter()
{
  sub_1CFE31144();
  sub_1CFE30984();
  v1 = type metadata accessor for SleepingSampleChangeNotification(0);
  sub_1CFE307E4();
  sub_1CFDADC7C(&qword_1EC509638, MEMORY[0x1E696B418], MEMORY[0x1E696B428]);
  sub_1CFE30834();
  v2 = v0 + *(v1 + 24);
  v3 = *v2;
  if (*(v2 + 8) == 1)
  {
    if (v3)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    MEMORY[0x1D3876810](0);
  }

  MEMORY[0x1D3876810](v3);
  return sub_1CFE31184();
}

uint64_t SleepingSampleChangeNotification.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v26 = sub_1CFE307E4();
  v24 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE018C0(0, &qword_1EC509D48, sub_1CFE01818, &type metadata for SleepingSampleChangeNotification.CodingKeys, MEMORY[0x1E69E6F48]);
  v28 = v6;
  v25 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for SleepingSampleChangeNotification(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFE01818();
  v27 = v9;
  v14 = v29;
  sub_1CFE31194();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = a1;
  v16 = v25;
  v17 = v26;
  v34 = 0;
  *v13 = sub_1CFE30FA4();
  v13[1] = v18;
  v29 = v18;
  v33 = 1;
  sub_1CFDADC7C(&qword_1EDC32108, MEMORY[0x1E696B418], MEMORY[0x1E696B440]);
  sub_1CFE30FD4();
  (*(v24 + 32))(v13 + *(v10 + 20), v5, v17);
  v32 = 2;
  sub_1CFE01928();
  sub_1CFE30FD4();
  (*(v16 + 8))(v27, v28);
  v19 = v31;
  v20 = v13 + *(v10 + 24);
  *v20 = v30;
  v20[8] = v19;
  sub_1CFE0197C(v13, v23);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return sub_1CFE019E0(v13);
}

uint64_t sub_1CFE000A8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1CFE000B4(uint64_t a1)
{
  sub_1CFE31144();
  sub_1CFE30984();
  sub_1CFE307E4();
  sub_1CFDADC7C(&qword_1EC509638, MEMORY[0x1E696B418], MEMORY[0x1E696B428]);
  sub_1CFE30834();
  v3 = v1 + *(a1 + 24);
  v4 = *v3;
  if (*(v3 + 8) == 1)
  {
    if (v4)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    MEMORY[0x1D3876810](0);
  }

  MEMORY[0x1D3876810](v4);
  return sub_1CFE31184();
}

uint64_t sub_1CFE001A0(uint64_t a1, uint64_t a2)
{
  sub_1CFE30984();
  sub_1CFE307E4();
  sub_1CFDADC7C(&qword_1EC509638, MEMORY[0x1E696B418], MEMORY[0x1E696B428]);
  sub_1CFE30834();
  v4 = v2 + *(a2 + 24);
  v5 = *v4;
  if (*(v4 + 8) == 1)
  {
    if (v5)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    MEMORY[0x1D3876810](0);
  }

  return MEMORY[0x1D3876810](v5);
}

uint64_t sub_1CFE00278(uint64_t a1, uint64_t a2)
{
  sub_1CFE31144();
  sub_1CFE30984();
  sub_1CFE307E4();
  sub_1CFDADC7C(&qword_1EC509638, MEMORY[0x1E696B418], MEMORY[0x1E696B428]);
  sub_1CFE30834();
  v4 = v2 + *(a2 + 24);
  v5 = *v4;
  if (*(v4 + 8) == 1)
  {
    if (v5)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    MEMORY[0x1D3876810](0);
  }

  MEMORY[0x1D3876810](v5);
  return sub_1CFE31184();
}

HealthBalance::SleepingSampleChangeNotification::CategoryIdentifier_optional __swiftcall SleepingSampleChangeNotification.CategoryIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1CFE30F54();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SleepingSampleChangeNotification.CategoryIdentifier.rawValue.getter()
{
  v1 = 0xD000000000000029;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000024;
  }
}

uint64_t sub_1CFE00448(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "PluginBundle.Changes";
  v4 = 0xD000000000000029;
  if (v2 == 1)
  {
    v5 = 0xD000000000000029;
  }

  else
  {
    v5 = 0xD00000000000002BLL;
  }

  if (v2 == 1)
  {
    v6 = "PluginBundle.Changes";
  }

  else
  {
    v6 = "PluginBundle.Changes.Demo";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000024;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "cationLastSentDate";
  }

  if (*a2 != 1)
  {
    v4 = 0xD00000000000002BLL;
    v3 = "PluginBundle.Changes.Demo";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000024;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "cationLastSentDate";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1CFE310B4();
  }

  return v11 & 1;
}

uint64_t sub_1CFE00520()
{
  sub_1CFE31144();
  sub_1CFE30984();

  return sub_1CFE31184();
}

uint64_t sub_1CFE005BC(uint64_t a1)
{
  sub_1CFE30984();
}

uint64_t sub_1CFE00644(uint64_t a1)
{
  sub_1CFE31144();
  sub_1CFE30984();

  return sub_1CFE31184();
}

void sub_1CFE006E8(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000024;
  v3 = "PluginBundle.Changes";
  v4 = 0xD000000000000029;
  if (*v1 != 1)
  {
    v4 = 0xD00000000000002BLL;
    v3 = "PluginBundle.Changes.Demo";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "cationLastSentDate";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

uint64_t SleepingSampleChangeNotification.categoryIdentifier.getter@<X0>(char *a1@<X8>)
{
  result = type metadata accessor for SleepingSampleChangeNotification(0);
  v4 = (v1 + *(result + 24));
  v5 = *v4;
  v6 = *(v4 + 8);
  if (v5)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  *a1 = v8;
  return result;
}

void SleepingSampleChangeNotification.Content.categoryIdentifier.getter(char *a1@<X8>)
{
  if (*v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if (!*(v1 + 8))
  {
    v2 = 0;
  }

  *a1 = v2;
}

uint64_t SleepingSampleChangeNotification.Content.title.getter()
{
  v0 = sub_1CFE303F4();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v2 = sub_1CFE308D4();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1CFE308C4();
  v4 = sub_1CFE308F4();
  v5 = [objc_opt_self() bundleWithIdentifier_];

  sub_1CFE303E4();
  return sub_1CFE30934();
}

uint64_t SleepingSampleChangeNotification.body.getter()
{
  v1 = sub_1CFE303F4();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v3 = sub_1CFE308D4();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v5 = v0 + *(type metadata accessor for SleepingSampleChangeNotification(0) + 24);
  if (*(v5 + 8) != 1 || !*v5)
  {
    return SleepingSampleDaySummaryDescription.primaryBody.getter();
  }

  sub_1CFE308C4();
  v6 = sub_1CFE308F4();
  v7 = [objc_opt_self() bundleWithIdentifier_];

  sub_1CFE303E4();
  return sub_1CFE30934();
}

uint64_t SleepingSampleChangeNotification.Content.body.getter()
{
  v1 = sub_1CFE303F4();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v3 = sub_1CFE308D4();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  if (*(v0 + 8) != 1 || !*v0)
  {
    return SleepingSampleDaySummaryDescription.primaryBody.getter();
  }

  sub_1CFE308C4();
  v5 = sub_1CFE308F4();
  v6 = [objc_opt_self() bundleWithIdentifier_];

  sub_1CFE303E4();
  return sub_1CFE30934();
}

uint64_t UNUserNotificationCenter.send(_:)(uint64_t a1)
{
  v2[44] = a1;
  v2[45] = v1;
  sub_1CFDD8ED0(0);
  v2[46] = v3;
  v2[47] = *(v3 - 8);
  v2[48] = swift_task_alloc();
  v4 = sub_1CFE30314();
  v2[49] = v4;
  v2[50] = *(v4 - 8);
  v2[51] = swift_task_alloc();
  sub_1CFE303F4();
  v2[52] = swift_task_alloc();
  sub_1CFE308D4();
  v2[53] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CFE00E3C, 0, 0);
}

uint64_t sub_1CFE00E3C()
{
  v1 = v0[44];
  v2 = [objc_allocWithZone(MEMORY[0x1E6983220]) init];
  v0[54] = v2;
  v3 = v1 + *(type metadata accessor for SleepingSampleChangeNotification(0) + 24);
  SleepingSampleChangeNotification.Content.title.getter();
  v4 = sub_1CFE308F4();

  [v2 setTitle_];

  if (*(v3 + 8) == 1)
  {
    if (*v3)
    {
      sub_1CFE308C4();
      v5 = sub_1CFE308F4();
      v6 = [objc_opt_self() bundleWithIdentifier_];

      sub_1CFE303E4();
      sub_1CFE30934();
    }

    else
    {
      SleepingSampleDaySummaryDescription.primaryBody.getter();
      if (!v8)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_7;
  }

  SleepingSampleDaySummaryDescription.primaryBody.getter();
  if (v7)
  {
LABEL_7:
    v9 = sub_1CFE308F4();

    [v2 setBody_];
  }

LABEL_8:
  v10 = v0[50];
  v11 = v0[51];
  v26 = v0[49];
  v28 = v0[48];
  v12 = v0[47];
  v27 = v0[46];
  v29 = v0[45];
  v13 = sub_1CFE308F4();

  [v2 setCategoryIdentifier_];

  v14 = [objc_opt_self() soundWithAlertType_];
  [v2 setSound_];

  sub_1CFE01A3C(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CFE357F0;
  v0[40] = sub_1CFE30924();
  v0[41] = v16;
  sub_1CFE30D54();
  v17 = MEMORY[0x1E69E6530];
  *(inited + 96) = MEMORY[0x1E69E6530];
  *(inited + 72) = 15;
  v0[42] = 0x6144746567726174;
  v0[43] = 0xE900000000000079;
  sub_1CFE30D54();
  v18 = sub_1CFE307A4();
  *(inited + 168) = v17;
  *(inited + 144) = v18;
  sub_1CFDFCFA8(inited);
  swift_setDeallocating();
  sub_1CFDC3C84();
  swift_arrayDestroy();
  v19 = sub_1CFE30804();

  [v2 setUserInfo_];

  sub_1CFE302E4();
  v20 = sub_1CFE302D4();
  (*(v10 + 8))(v11, v26);
  [v2 setExpirationDate_];

  v21 = v2;
  v22 = sub_1CFE308F4();
  v23 = [objc_opt_self() requestWithIdentifier:v22 content:v21 trigger:0];
  v0[55] = v23;

  v0[2] = v0;
  v0[3] = sub_1CFE01410;
  swift_continuation_init();
  v0[39] = v27;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 36);
  sub_1CFDAAF08();
  sub_1CFE30B04();
  (*(v12 + 32))(boxed_opaque_existential_0, v28, v27);
  v0[32] = MEMORY[0x1E69E9820];
  v0[33] = 1107296256;
  v0[34] = sub_1CFE01674;
  v0[35] = &block_descriptor_1;
  [v29 addNotificationRequest:v23 withCompletionHandler:?];
  (*(v12 + 8))(boxed_opaque_existential_0, v27);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1CFE01410()
{
  v1 = *(*v0 + 48);
  *(*v0 + 448) = v1;
  if (v1)
  {
    v2 = sub_1CFE015C4;
  }

  else
  {
    v2 = sub_1CFE01520;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1CFE01520()
{
  v1 = *(v0 + 440);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1CFE015C4(uint64_t a1)
{
  v2 = v1[55];
  v3 = v1[54];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

void sub_1CFE01674(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  sub_1CFDD8ED0(0);
  if (a2)
  {
    v3 = a2;
    sub_1CFE30B14();
  }

  else
  {
    sub_1CFE30B24();
  }
}

BOOL _s13HealthBalance32SleepingSampleChangeNotificationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1CFE310B4() & 1) != 0)
  {
    sub_1CFE307E4();
    v5 = type metadata accessor for SleepingSampleChangeNotification(0);
    sub_1CFDADC7C(&qword_1EDC31AB0, MEMORY[0x1E696B418], MEMORY[0x1E696B438]);
    if (sub_1CFE308B4())
    {
      v6 = *(v5 + 24);
      v7 = *(a1 + v6);
      v8 = *(a1 + v6 + 8);
      v9 = a2 + v6;
      v10 = *(a2 + v6);
      v11 = v9[8];
      if (v8 == 1)
      {
        if (v7)
        {
          if (v11)
          {
            return v10 != 0;
          }
        }

        else if (v11)
        {
          return v10 == 0;
        }
      }

      else
      {
        if (v7 == v10)
        {
          v13 = v11;
        }

        else
        {
          v13 = 1;
        }

        if ((v13 & 1) == 0)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

unint64_t sub_1CFE01818()
{
  result = qword_1EC509D38;
  if (!qword_1EC509D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509D38);
  }

  return result;
}

unint64_t sub_1CFE0186C()
{
  result = qword_1EC509D40;
  if (!qword_1EC509D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509D40);
  }

  return result;
}

void sub_1CFE018C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1CFE01928()
{
  result = qword_1EC509D50;
  if (!qword_1EC509D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509D50);
  }

  return result;
}

uint64_t sub_1CFE0197C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleChangeNotification(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFE019E0(uint64_t a1)
{
  v2 = type metadata accessor for SleepingSampleChangeNotification(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1CFE01A3C(uint64_t a1)
{
  if (!qword_1EC5095A0)
  {
    sub_1CFDC3C84();
    v1 = sub_1CFE31084();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC5095A0);
    }
  }
}

unint64_t sub_1CFE01A98()
{
  result = qword_1EC509D58;
  if (!qword_1EC509D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509D58);
  }

  return result;
}

unint64_t sub_1CFE01B44()
{
  result = qword_1EC509D68;
  if (!qword_1EC509D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509D68);
  }

  return result;
}

uint64_t sub_1CFE01BC0(uint64_t a1)
{
  result = sub_1CFE307E4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1CFE01CB8()
{
  result = qword_1EC509D80;
  if (!qword_1EC509D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509D80);
  }

  return result;
}

unint64_t sub_1CFE01D10()
{
  result = qword_1EC509D88;
  if (!qword_1EC509D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509D88);
  }

  return result;
}

unint64_t sub_1CFE01D68()
{
  result = qword_1EC509D90;
  if (!qword_1EC509D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509D90);
  }

  return result;
}

unint64_t sub_1CFE01DC0()
{
  result = qword_1EC509D98;
  if (!qword_1EC509D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509D98);
  }

  return result;
}

unint64_t sub_1CFE01E18()
{
  result = qword_1EC509DA0;
  if (!qword_1EC509DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509DA0);
  }

  return result;
}

unint64_t sub_1CFE01E70()
{
  result = qword_1EC509DA8;
  if (!qword_1EC509DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509DA8);
  }

  return result;
}

unint64_t sub_1CFE01EC8()
{
  result = qword_1EC509DB0;
  if (!qword_1EC509DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509DB0);
  }

  return result;
}

unint64_t sub_1CFE01F20()
{
  result = qword_1EC509DB8;
  if (!qword_1EC509DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509DB8);
  }

  return result;
}

unint64_t sub_1CFE01F78()
{
  result = qword_1EC509DC0;
  if (!qword_1EC509DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509DC0);
  }

  return result;
}

unint64_t sub_1CFE01FD0()
{
  result = qword_1EC509DC8;
  if (!qword_1EC509DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509DC8);
  }

  return result;
}

unint64_t sub_1CFE02028()
{
  result = qword_1EC509DD0;
  if (!qword_1EC509DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509DD0);
  }

  return result;
}

unint64_t sub_1CFE02080()
{
  result = qword_1EC509DD8;
  if (!qword_1EC509DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509DD8);
  }

  return result;
}

unint64_t sub_1CFE020D8()
{
  result = qword_1EC509DE0;
  if (!qword_1EC509DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509DE0);
  }

  return result;
}

uint64_t sub_1CFE0212C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365676E616863 && a2 == 0xE700000000000000;
  if (v4 || (sub_1CFE310B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x447365676E616863 && a2 == 0xEB000000006F6D65 || (sub_1CFE310B4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F4370756D726177 && a2 == 0xEE006574656C706DLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1CFE310B4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1CFE02250(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1CFE310B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7954788 && a2 == 0xE300000000000000 || (sub_1CFE310B4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1CFE310B4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

_BYTE *HealthBalanceOnboardingAnalyticsEvent.__allocating_init(action:provenance:step:)(_BYTE *a1, char *a2, char *a3)
{
  result = swift_allocObject();
  v7 = *a2;
  v8 = *a3;
  result[16] = *a1;
  result[17] = v7;
  result[18] = v8;
  return result;
}

_BYTE *HealthBalanceOnboardingAnalyticsEvent.init(action:provenance:step:)(_BYTE *a1, char *a2, char *a3)
{
  v4 = *a2;
  v5 = *a3;
  v3[16] = *a1;
  v3[17] = v4;
  v3[18] = v5;
  return v3;
}

void HealthBalanceOnboardingAnalyticsEvent.makeUnrestrictedEventPayload(with:)(void *a1)
{
  if ([a1 healthDataSource])
  {
    v4 = [a1 environmentDataSource];
    v9 = v1[16];
    v8 = v1[17];
    v7 = v1[18];
    v5 = sub_1CFE03608(v4, &v9, &v8, &v7);
    if (v2)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = v5;

      sub_1CFE025C4(v6);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1CFE02570();
    swift_allocError();
    swift_willThrow();
  }
}

unint64_t sub_1CFE02570()
{
  result = qword_1EC509DE8;
  if (!qword_1EC509DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509DE8);
  }

  return result;
}

unint64_t sub_1CFE025C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1CFE04574();
    v2 = sub_1CFE30F14();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        sub_1CFDFDB1C(*(a1 + 56) + 40 * v13, v30);
        *&v29 = v15;
        *(&v29 + 1) = v16;
        v26[2] = v29;
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v17 = v29;
        sub_1CFDFDB80(v27, v22);
        sub_1CFDFDAB8();

        swift_dynamicCast();
        sub_1CFDFDC04(&v23, v25);
        sub_1CFDFDC04(v25, v26);
        sub_1CFDFDC04(v26, &v24);
        result = sub_1CFDFC4A4(v17, *(&v17 + 1));
        if (v18)
        {
          *(v2[6] + 16 * result) = v17;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_1(v10);
          result = sub_1CFDFDC04(&v24, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v17;
          result = sub_1CFDFDC04(&v24, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t HealthBalanceOnboardingAnalyticsEvent.OnboardingAction.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6C65636E6163;
  v3 = 1885956979;
  v4 = 0x6E4F6E727574;
  if (v1 != 3)
  {
    v4 = 0x646577656976;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1954047342;
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

unint64_t HealthBalanceOnboardingAnalyticsEvent.OnboardingProvenance.rawValue.getter()
{
  result = 0x7974697669746341;
  switch(*v0)
  {
    case 1:
      result = 0x79726F6765746143;
      break;
    case 2:
      result = 0x6570795461746144;
      break;
    case 3:
      result = 0x7373656E746946;
      break;
    case 4:
      result = 0x684368746C616548;
      break;
    case 5:
      result = 0x747465536F6E614ELL;
      break;
    case 6:
      result = 0x686372616553;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x7972616D6D7553;
      break;
    case 9:
      result = 0x6E776F6E6B6E55;
      break;
    case 0xA:
      result = 0x736C61746956;
      break;
    case 0xB:
      result = 0x7070416863746157;
      break;
    case 0xC:
      result = 0x746567646957;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t HealthBalanceOnboardingAnalyticsEvent.OnboardingStep.rawValue.getter()
{
  v1 = 0x6163696669746F4ELL;
  if (*v0 != 1)
  {
    v1 = 0x7065656C53;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D6F636C6557;
  }
}

HealthBalance::HealthBalanceOnboardingAnalyticsEvent::OnboardingAction_optional __swiftcall HealthBalanceOnboardingAnalyticsEvent.OnboardingAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1CFE30F54();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1CFE02D0C()
{
  sub_1CFE31144();
  sub_1CFE30984();

  return sub_1CFE31184();
}

uint64_t sub_1CFE02DD4(uint64_t a1)
{
  sub_1CFE30984();
}

uint64_t sub_1CFE02E88(uint64_t a1)
{
  sub_1CFE31144();
  sub_1CFE30984();

  return sub_1CFE31184();
}

void sub_1CFE02F58(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x6C65636E6163;
  v5 = 0xE400000000000000;
  v6 = 1885956979;
  v7 = 0x6E4F6E727574;
  if (v2 != 3)
  {
    v7 = 0x646577656976;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = 1954047342;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

HealthBalance::HealthBalanceOnboardingAnalyticsEvent::OnboardingProvenance_optional __swiftcall HealthBalanceOnboardingAnalyticsEvent.OnboardingProvenance.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1CFE30F54();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1CFE03038()
{
  v0 = HealthBalanceOnboardingAnalyticsEvent.OnboardingProvenance.rawValue.getter();
  v2 = v1;
  if (v0 == HealthBalanceOnboardingAnalyticsEvent.OnboardingProvenance.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1CFE310B4();
  }

  return v5 & 1;
}

uint64_t sub_1CFE030D4()
{
  sub_1CFE31144();
  HealthBalanceOnboardingAnalyticsEvent.OnboardingProvenance.rawValue.getter();
  sub_1CFE30984();

  return sub_1CFE31184();
}

uint64_t sub_1CFE0313C(uint64_t a1)
{
  HealthBalanceOnboardingAnalyticsEvent.OnboardingProvenance.rawValue.getter();
  sub_1CFE30984();
}

uint64_t sub_1CFE031A0(uint64_t a1)
{
  sub_1CFE31144();
  HealthBalanceOnboardingAnalyticsEvent.OnboardingProvenance.rawValue.getter();
  sub_1CFE30984();

  return sub_1CFE31184();
}

unint64_t sub_1CFE03210@<X0>(unint64_t *a1@<X8>)
{
  result = HealthBalanceOnboardingAnalyticsEvent.OnboardingProvenance.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

HealthBalance::HealthBalanceOnboardingAnalyticsEvent::OnboardingStep_optional __swiftcall HealthBalanceOnboardingAnalyticsEvent.OnboardingStep.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1CFE30F54();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1CFE03294(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6163696669746F4ELL;
  v4 = 0xED0000736E6F6974;
  if (v2 != 1)
  {
    v3 = 0x7065656C53;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656D6F636C6557;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x6163696669746F4ELL;
  v8 = 0xED0000736E6F6974;
  if (*a2 != 1)
  {
    v7 = 0x7065656C53;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x656D6F636C6557;
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
    v11 = sub_1CFE310B4();
  }

  return v11 & 1;
}

uint64_t sub_1CFE033A8()
{
  sub_1CFE31144();
  sub_1CFE30984();

  return sub_1CFE31184();
}

uint64_t sub_1CFE03454(uint64_t a1)
{
  sub_1CFE30984();
}

uint64_t sub_1CFE034EC(uint64_t a1)
{
  sub_1CFE31144();
  sub_1CFE30984();

  return sub_1CFE31184();
}

void sub_1CFE035A0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xED0000736E6F6974;
  v5 = 0x6163696669746F4ELL;
  if (v2 != 1)
  {
    v5 = 0x7065656C53;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656D6F636C6557;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1CFE03608(void *a1, _BYTE *a2, char *a3, unsigned __int8 *a4)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *a4;
  if (v5 <= 1)
  {
    if (*a2)
    {
      v8 = 0xE400000000000000;
      v9 = 1954047342;
    }

    else
    {
      v8 = 0xE600000000000000;
      v9 = 0x6C65636E6163;
    }
  }

  else if (v5 == 2)
  {
    v8 = 0xE400000000000000;
    v9 = 1885956979;
  }

  else if (v5 == 3)
  {
    v8 = 0xE600000000000000;
    v9 = 0x6E4F6E727574;
  }

  else
  {
    v8 = 0xE600000000000000;
    v9 = 0x646577656976;
  }

  v10 = MEMORY[0x1E69E6158];
  v11 = MEMORY[0x1E69E6180];
  v59 = MEMORY[0x1E69E6158];
  v60 = MEMORY[0x1E69E6180];
  *&v58 = v9;
  *(&v58 + 1) = v8;
  sub_1CFDFDB80(&v58, v56);
  v12 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55 = v12;
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
  MEMORY[0x1EEE9AC00](v14, v14);
  v16 = &v54[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v17 + 16))(v16);
  sub_1CFE2A158(*v16, v16[1], 0x6E6F69746361, 0xE600000000000000, isUniquelyReferenced_nonNull_native, &v55);
  __swift_destroy_boxed_opaque_existential_1(v56);
  v18 = v55;
  v61 = v55;
  v54[23] = v6;
  v19 = HealthBalanceOnboardingAnalyticsEvent.OnboardingProvenance.rawValue.getter();
  v59 = v10;
  v60 = v11;
  *&v58 = v19;
  *(&v58 + 1) = v20;
  sub_1CFDFDB80(&v58, v56);
  LOBYTE(v12) = swift_isUniquelyReferenced_nonNull_native();
  v55 = v18;
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
  MEMORY[0x1EEE9AC00](v21, v21);
  v23 = &v54[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v24 + 16))(v23);
  sub_1CFE2A158(*v23, v23[1], 0x6E616E65766F7270, 0xEA00000000006563, v12, &v55);
  __swift_destroy_boxed_opaque_existential_1(v56);
  v25 = v55;
  if (v7)
  {
    if (v7 == 1)
    {
      v26 = 0xED0000736E6F6974;
      v27 = 0x6163696669746F4ELL;
    }

    else
    {
      v26 = 0xE500000000000000;
      v27 = 0x7065656C53;
    }
  }

  else
  {
    v26 = 0xE700000000000000;
    v27 = 0x656D6F636C6557;
  }

  v59 = v10;
  v60 = v11;
  *&v58 = v27;
  *(&v58 + 1) = v26;
  sub_1CFDFDB80(&v58, v56);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v55 = v25;
  v29 = __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
  MEMORY[0x1EEE9AC00](v29, v29);
  v31 = &v54[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v32 + 16))(v31);
  sub_1CFE2A158(*v31, v31[1], 1885697139, 0xE400000000000000, v28, &v55);
  __swift_destroy_boxed_opaque_existential_1(v56);
  v33 = v55;
  v61 = v55;
  v34 = sub_1CFE30924();
  v36 = v35;
  v37 = [a1 activePairedDeviceProductType];
  if (v37)
  {
    v38 = v37;
    v39 = sub_1CFE30924();
    v41 = v40;

    v59 = v10;
    v60 = v11;
    *&v58 = v39;
    *(&v58 + 1) = v41;
    sub_1CFDFDB80(&v58, v56);
    LOBYTE(v41) = swift_isUniquelyReferenced_nonNull_native();
    v55 = v33;
    v42 = __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
    MEMORY[0x1EEE9AC00](v42, v42);
    v44 = &v54[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v45 + 16))(v44);
    sub_1CFE2A4AC(v44, v34, v36, v41, &v55, v10, v11);

    __swift_destroy_boxed_opaque_existential_1(v56);
    v46 = v55;
    v61 = v55;
  }

  else
  {
    sub_1CFE29EF0(v34, v36, &v58);

    sub_1CFE04470(&v58);
    v46 = v61;
  }

  v47 = sub_1CFE30924();
  v49 = v48;
  v50 = [a1 isImproveHealthAndActivityEnabled];
  v59 = MEMORY[0x1E69E6370];
  v60 = MEMORY[0x1E69E6388];
  LOBYTE(v58) = v50;
  sub_1CFDFDB80(&v58, v56);
  v51 = swift_isUniquelyReferenced_nonNull_native();
  v55 = v46;
  v52 = __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
  sub_1CFE2A348(*v52, v47, v49, v51, &v55);

  __swift_destroy_boxed_opaque_existential_1(v56);
  return v55;
}

uint64_t sub_1CFE03C34(void *a1, void *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = sub_1CFE30314();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1E69E7CC8];
  v9 = [a1 currentDate];
  sub_1CFE302F4();

  v10 = sub_1CFE302D4();
  (*(v5 + 8))(v8, v4);
  *&v43 = 0;
  v11 = [a2 ageWithCurrentDate:v10 error:&v43];

  if (v11)
  {
    v12 = v43;
    v13 = [v11 integerValue];

    v14 = MEMORY[0x1E69E6530];
    v15 = MEMORY[0x1E69E6550];
    v44 = MEMORY[0x1E69E6530];
    v45 = MEMORY[0x1E69E6550];
    *&v43 = v13;
    sub_1CFDFDB80(&v43, v41);
    v16 = v40;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v16;
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
    MEMORY[0x1EEE9AC00](v18, v18);
    v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v20);
    sub_1CFE2A4AC(v20, 6645601, 0xE300000000000000, isUniquelyReferenced_nonNull_native, &v39, v14, v15);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v40 = v39;
  }

  else
  {
    v22 = v43;
    v23 = sub_1CFE30184();

    swift_willThrow();
    sub_1CFE29EF0(6645601, 0xE300000000000000, &v43);
    sub_1CFE04470(&v43);
  }

  v41[0] = 0;
  v24 = [a2 biologicalSexWithError_];
  if (v24)
  {
    v25 = v24;
    v26 = v41[0];
    v27 = HKAnalyticsPropertyValueForBiologicalSex();

    v28 = sub_1CFE30924();
    v30 = v29;

    v44 = MEMORY[0x1E69E6158];
    v45 = MEMORY[0x1E69E6180];
    *&v43 = v28;
    *(&v43 + 1) = v30;
    sub_1CFDFDB80(&v43, v41);
    v31 = v40;
    LOBYTE(v27) = swift_isUniquelyReferenced_nonNull_native();
    v39 = v31;
    v32 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
    MEMORY[0x1EEE9AC00](v32, v32);
    v34 = (&v38 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v35 + 16))(v34);
    sub_1CFE2A158(*v34, v34[1], 0x6369676F6C6F6962, 0xED00007865536C61, v27, &v39);
    __swift_destroy_boxed_opaque_existential_1(v41);
    return v39;
  }

  else
  {
    v37 = v41[0];

    sub_1CFE30184();

    return swift_willThrow();
  }
}

void sub_1CFE040C8(void *a1)
{
  v3 = [a1 healthDataSource];
  if (v3)
  {
    v4 = v3;
    v5 = [a1 environmentDataSource];
    v6 = sub_1CFE03C34(v5, v4);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = v6;

      sub_1CFE025C4(v7);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1CFE02570();
    swift_allocError();
    swift_willThrow();
  }
}

unint64_t sub_1CFE041AC()
{
  result = qword_1EC509DF0;
  if (!qword_1EC509DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509DF0);
  }

  return result;
}

unint64_t sub_1CFE04204()
{
  result = qword_1EC509DF8;
  if (!qword_1EC509DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509DF8);
  }

  return result;
}

unint64_t sub_1CFE0425C()
{
  result = qword_1EC509E00;
  if (!qword_1EC509E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509E00);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HealthBalanceOnboardingAnalyticsEvent.OnboardingProvenance(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HealthBalanceOnboardingAnalyticsEvent.OnboardingProvenance(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1CFE04470(uint64_t a1)
{
  sub_1CFE044CC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1CFE044CC(uint64_t a1)
{
  if (!qword_1EC509E68)
  {
    sub_1CFDFDAB8();
    v1 = sub_1CFE30C74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC509E68);
    }
  }
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void sub_1CFE04574()
{
  if (!qword_1EC509C70)
  {
    v0 = sub_1CFE30F24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC509C70);
    }
  }
}

uint64_t HealthBalanceAppLaunchAnalyticsEvent.__allocating_init(needsOnboarding:source:)(char a1, char *a2)
{
  result = swift_allocObject();
  v5 = *a2;
  *(result + 16) = a1;
  *(result + 17) = v5;
  return result;
}

uint64_t HealthBalanceAppLaunchAnalyticsEvent.init(needsOnboarding:source:)(char a1, char *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 17) = v3;
  return v2;
}

void HealthBalanceAppLaunchAnalyticsEvent.makeUnrestrictedEventPayload(with:)(void *a1)
{
  v3 = [a1 environmentDataSource];
  v4 = *(v1 + 16);
  v6 = *(v1 + 17);
  v5 = sub_1CFE0497C(v3, v4, &v6);

  if (!v2)
  {
    sub_1CFE025C4(v5);
  }
}

uint64_t sub_1CFE0497C(void *a1, int a2, unsigned __int8 *a3)
{
  v38 = a2;
  v4 = *a3;
  v5 = MEMORY[0x1E69E7CC8];
  v45 = MEMORY[0x1E69E7CC8];
  v6 = [a1 activePairedDeviceProductType];
  v7 = MEMORY[0x1E69E6158];
  v8 = MEMORY[0x1E69E6180];
  if (v6)
  {
    v9 = v6;
    v10 = sub_1CFE30924();
    v12 = v11;

    v43 = v7;
    v44 = v8;
    *&v42 = v10;
    *(&v42 + 1) = v12;
    sub_1CFDFDB80(&v42, v40);
    LOBYTE(v9) = swift_isUniquelyReferenced_nonNull_native();
    v39 = v5;
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v40, v41);
    MEMORY[0x1EEE9AC00](v13, v13);
    v15 = &v37[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v16 + 16))(v15);
    sub_1CFE2A4AC(v15, 0xD000000000000016, 0x80000001CFE39870, v9, &v39, v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v40);
    v17 = v39;
  }

  else
  {
    sub_1CFE29EF0(0xD000000000000016, 0x80000001CFE39870, &v42);
    sub_1CFE04470(&v42);
    v17 = v45;
  }

  v18 = v8;
  v19 = [a1 isImproveHealthAndActivityEnabled];
  v20 = MEMORY[0x1E69E6370];
  v21 = MEMORY[0x1E69E6388];
  v43 = MEMORY[0x1E69E6370];
  v44 = MEMORY[0x1E69E6388];
  LOBYTE(v42) = v19;
  sub_1CFDFDB80(&v42, v40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = v17;
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v40, v41);
  sub_1CFE2A348(*v23, 0xD000000000000021, 0x80000001CFE39890, isUniquelyReferenced_nonNull_native, &v39);
  __swift_destroy_boxed_opaque_existential_1(v40);
  v24 = v39;
  v43 = v20;
  v44 = v21;
  LOBYTE(v42) = (v38 & 1) == 0;
  sub_1CFDFDB80(&v42, v40);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  v39 = v24;
  v26 = __swift_mutable_project_boxed_opaque_existential_1(v40, v41);
  sub_1CFE2A348(*v26, 0x72616F626E4F7369, 0xEB00000000646564, v25, &v39);
  __swift_destroy_boxed_opaque_existential_1(v40);
  v27 = v39;
  v45 = v39;
  if (v4 <= 4)
  {
    v28 = MEMORY[0x1E69E6158];
    if (v4 <= 1)
    {
      if (v4)
      {
        v29 = 0xE700000000000000;
        v30 = 0x7373656E746966;
      }

      else
      {
        v29 = 0xE800000000000000;
        v30 = 0x7974697669746361;
      }

      goto LABEL_25;
    }

    if (v4 != 2)
    {
      if (v4 == 3)
      {
        v29 = 0x80000001CFE384D0;
        v30 = 0xD000000000000015;
      }

      else
      {
        v29 = 0xEC00000073676E69;
        v30 = 0x747465536F6E616ELL;
      }

      goto LABEL_25;
    }

    v30 = 0x704168746C616568;
LABEL_20:
    v29 = 0xE900000000000070;
    goto LABEL_25;
  }

  v28 = MEMORY[0x1E69E6158];
  if (v4 <= 7)
  {
    if (v4 != 5)
    {
      if (v4 == 6)
      {
        v29 = 0xE800000000000000;
        v30 = 0x7070416863746177;
      }

      else
      {
        v29 = 0x80000001CFE38510;
        v30 = 0xD000000000000010;
      }

      goto LABEL_25;
    }

    v30 = 0x65656C536F6E616ELL;
    goto LABEL_20;
  }

  if (v4 == 8)
  {
    v29 = 0x80000001CFE38530;
    v30 = 0xD000000000000019;
  }

  else
  {
    if (v4 != 9)
    {
      sub_1CFE29EF0(0x6E616E65766F7270, 0xEA00000000006563, &v42);
      sub_1CFE04470(&v42);
      return v45;
    }

    v29 = 0xE600000000000000;
    v30 = 0x746567646977;
  }

LABEL_25:
  v43 = v28;
  v44 = v18;
  *&v42 = v30;
  *(&v42 + 1) = v29;
  sub_1CFDFDB80(&v42, v40);
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v39 = v27;
  v32 = __swift_mutable_project_boxed_opaque_existential_1(v40, v41);
  MEMORY[0x1EEE9AC00](v32, v32);
  v34 = &v37[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v35 + 16))(v34);
  sub_1CFE2A4AC(v34, 0x6E616E65766F7270, 0xEA00000000006563, v31, &v39, v28, v18);
  __swift_destroy_boxed_opaque_existential_1(v40);
  return v39;
}