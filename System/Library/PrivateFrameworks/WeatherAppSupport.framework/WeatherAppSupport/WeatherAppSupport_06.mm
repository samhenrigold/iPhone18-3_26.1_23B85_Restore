uint64_t sub_220D680DC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v84 = a4;
  v79 = sub_220DBE560();
  v7 = *(v79 - 8);
  v8 = MEMORY[0x28223BE20](v79);
  v78 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v77 = &v67 - v10;
  v83 = sub_220DBED00();
  v11 = MEMORY[0x28223BE20](v83);
  v76 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11);
  v81 = &v67 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v18 = a2 - a1 == 0x8000000000000000 && v17 == -1;
  if (v18)
  {
    goto LABEL_60;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_61;
  }

  v21 = (a2 - a1) / v17;
  v87 = a1;
  v86 = v84;
  v74 = (v7 + 8);
  v75 = (v14 + 16);
  v73 = (v14 + 8);
  v22 = v19 / v17;
  if (v21 >= v19 / v17)
  {
    v42 = v84;
    sub_220CFB664(a2, v19 / v17, v84);
    v43 = v42 + v22 * v17;
    v44 = -v17;
    v45 = v43;
    v82 = a1;
    v69 = v44;
LABEL_36:
    v46 = a2 + v44;
    v47 = a3;
    v67 = v45;
    v48 = v45;
    v70 = a2 + v44;
    v71 = a2;
    while (1)
    {
      if (v43 <= v84)
      {
        v87 = a2;
        v85 = v48;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v68 = v48;
      v80 = v47 + v44;
      v49 = v43 + v44;
      v50 = v43;
      v51 = *v75;
      v52 = v46;
      v53 = v83;
      v54 = v47;
      (*v75)(v81, v43 + v44, v83);
      v55 = v76;
      v51(v76, v52, v53);
      v56 = v77;
      sub_220DBECE0();
      v57 = v78;
      sub_220DBECE0();
      LODWORD(v72) = sub_220DBE440();
      v58 = *v74;
      v59 = v57;
      v60 = v79;
      (*v74)(v59, v79);
      v58(v56, v60);
      v61 = *v73;
      (*v73)(v55, v53);
      v61(v81, v53);
      if (v72)
      {
        v43 = v50;
        a3 = v80;
        if (v54 < v71 || v80 >= v71)
        {
          a2 = v70;
          swift_arrayInitWithTakeFrontToBack();
          v45 = v68;
          v44 = v69;
          a1 = v82;
        }

        else
        {
          v65 = v68;
          v44 = v69;
          v45 = v68;
          v18 = v54 == v71;
          v66 = v70;
          a2 = v70;
          a1 = v82;
          if (!v18)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v66;
            v45 = v65;
          }
        }

        goto LABEL_36;
      }

      v62 = v80;
      if (v54 < v50 || v80 >= v50)
      {
        swift_arrayInitWithTakeFrontToBack();
        v47 = v62;
        v43 = v49;
        v48 = v49;
        v46 = v70;
        a2 = v71;
        a1 = v82;
        v44 = v69;
      }

      else
      {
        v48 = v49;
        v18 = v50 == v54;
        v47 = v80;
        v43 = v49;
        v46 = v70;
        a2 = v71;
        a1 = v82;
        v44 = v69;
        if (!v18)
        {
          swift_arrayInitWithTakeBackToFront();
          v47 = v62;
          v43 = v49;
          v48 = v49;
        }
      }
    }

    v87 = a2;
    v85 = v67;
  }

  else
  {
    v23 = v84;
    sub_220CFB664(a1, (a2 - a1) / v17, v84);
    v71 = v17;
    v72 = v23 + v21 * v17;
    v85 = v72;
    v80 = a3;
    while (v84 < v72 && a2 < a3)
    {
      v82 = a1;
      v25 = *v75;
      v26 = v81;
      v27 = v83;
      (*v75)(v81, a2, v83);
      v28 = v76;
      v25(v76, v84, v27);
      v29 = v77;
      sub_220DBECE0();
      v30 = v78;
      sub_220DBECE0();
      v31 = sub_220DBE440();
      v32 = a2;
      v33 = *v74;
      v34 = v30;
      v35 = v79;
      (*v74)(v34, v79);
      v33(v29, v35);
      v36 = *v73;
      (*v73)(v28, v27);
      v36(v26, v27);
      if (v31)
      {
        v37 = v71;
        a2 = v32 + v71;
        v38 = v82;
        if (v82 < v32 || v82 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v80;
        }

        else
        {
          a3 = v80;
          if (v82 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v37 = v71;
        v40 = v84 + v71;
        v38 = v82;
        if (v82 < v84 || v82 >= v40)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v80;
          a2 = v32;
        }

        else
        {
          a3 = v80;
          a2 = v32;
          if (v82 != v84)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v86 = v40;
        v84 = v40;
      }

      a1 = v38 + v37;
      v87 = a1;
    }
  }

LABEL_58:
  sub_220D81750(&v87, &v86, &v85);
  return 1;
}

uint64_t sub_220D68748(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Double.pluralRuleInteger.getter(double a1)
{
  if (a1 == 0.0)
  {
    return 0;
  }

  if (a1 == 1.0)
  {
    return 1;
  }

  if (a1 == 2.0)
  {
    return 2;
  }

  v2 = fmax(floor(a1), 3.0);
  if (v2 == INFINITY)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v2 < 9.22337204e18)
  {
    return v2;
  }

LABEL_13:
  __break(1u);
  return result;
}

void Double.chartValueAccessibilityDescription(for:units:)(void (*a1)(char *, uint64_t), uint64_t a2, double a3)
{
  v207 = a2;
  v208 = a1;
  v210 = *&a3;
  sub_220DC0920();
  OUTLINED_FUNCTION_0();
  v197 = v5;
  v198 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_21();
  v196 = v6;
  OUTLINED_FUNCTION_6_1();
  v7 = sub_220DC0910();
  OUTLINED_FUNCTION_0();
  v203 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9();
  v202 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_57();
  v194 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95258, &unk_220DC2CF0);
  OUTLINED_FUNCTION_0();
  v200 = v14;
  v201 = v13;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_22();
  v199 = v16;
  OUTLINED_FUNCTION_6_1();
  v190 = sub_220DC02F0();
  OUTLINED_FUNCTION_0();
  v189 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_21();
  OUTLINED_FUNCTION_14(v19);
  v188 = sub_220DC0960();
  OUTLINED_FUNCTION_0();
  v186 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_21();
  OUTLINED_FUNCTION_14(v22);
  v195 = sub_220DC0950();
  OUTLINED_FUNCTION_0();
  v193 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_57();
  v184 = v26;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  OUTLINED_FUNCTION_0();
  v191 = v27;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_22();
  v205 = v29;
  OUTLINED_FUNCTION_6_1();
  v176 = sub_220DBEE60();
  OUTLINED_FUNCTION_0();
  v175 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1_21();
  OUTLINED_FUNCTION_14(v32);
  v183 = sub_220DBEE90();
  OUTLINED_FUNCTION_0();
  v209 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v167 - v37;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_14(v40);
  v182 = sub_220DC09B0();
  OUTLINED_FUNCTION_0();
  v181 = v41;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_57();
  v177 = v44;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95260, &unk_220DC2D10);
  OUTLINED_FUNCTION_0();
  v179 = v45;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_14(v47);
  v48 = sub_220DC0300();
  OUTLINED_FUNCTION_0();
  v50 = v49;
  MEMORY[0x28223BE20](v51);
  v53 = &v167 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95228, &unk_220DC1E60);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_22();
  v206 = v55;
  OUTLINED_FUNCTION_6_1();
  v56 = sub_220DC0A40();
  OUTLINED_FUNCTION_0();
  v204 = v57;
  v59 = MEMORY[0x28223BE20](v58);
  v61 = &v167 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v63 = &v167 - v62;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v65);
  v68 = &v167 - v67;
  if ((v210 & 0x7FFFFFFFFFFFFFFFLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v168 = v7;
    v169 = v53;
    v170 = v50;
    v210 = v48;
    v69 = *v207;
    v70 = *(v207 + 8);
    v71 = *(v207 + 16);
    v72 = *(v207 + 40);
    switch(*v208)
    {
      case 1:
        goto LABEL_23;
      case 2:
        v80 = sub_220DBEE80();
        v81 = v80;
        v82 = *(v80 + 16);
        if (!v82)
        {

          v86 = v183;
          goto LABEL_39;
        }

        v83 = 0;
        v84 = v80 + ((*(v209 + 80) + 32) & ~*(v209 + 80));
        v85 = (v209 + 8);
        v210 = (v209 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v86 = v183;
        while (v83 < *(v81 + 16))
        {
          v87 = *(v209 + 16);
          v87(v38, v84 + *(v209 + 72) * v83, v86);
          sub_220DBEE70();
          if (v89 <= a3 && v88 > a3)
          {

            v162 = v209;
            v163 = *(v209 + 32);
            v164 = v171;
            v163(v171, v38, v86);
            v165 = v172;
            v163(v172, v164, v86);
            v87(v173, v165, v86);
LABEL_40:
            v166 = v174;
            sub_220DBEE40();
            sub_220DBEE30();
            OUTLINED_FUNCTION_10_16();
            (*(v175 + 8))(v166, v176);
            (*(v162 + 8))(v165, v86);
            return;
          }

          ++v83;
          (*v85)(v38, v86);
          if (v82 == v83)
          {

LABEL_39:
            v162 = v209;
            v165 = v172;
            (*(v209 + 104))(v172, *MEMORY[0x277CE3798], v86);
            (*(v162 + 16))(v173, v165, v86);
            goto LABEL_40;
          }
        }

        __break(1u);
        goto LABEL_42;
      case 3:
      case 4:
        v209 = v66;
        sub_220CD8184(0, &qword_27CF95688, 0x277CCAE48);
        v73 = v69;
        sub_220DBE040();
        v74 = sub_220DBE5E0();
        v75 = v206;
        OUTLINED_FUNCTION_18_11(v206, v76, v77, v74);
        sub_220DC0870();
        sub_220DC02C0();

        sub_220D69B34(v75);
        sub_220DC0A10();
        v208 = *(v204 + 8);
        v208(v63, v56);
        v78 = v170;
        v79 = v169;
        (*(v170 + 104))(v169, *MEMORY[0x277D7B408], v210);
        sub_220DBF100();
        sub_220DBF0D0();
        sub_220D69B9C(&qword_280FA6610, MEMORY[0x277D7B508], MEMORY[0x277D7B500]);
        sub_220DBE0B0();
        OUTLINED_FUNCTION_10_16();

        (*(v78 + 8))(v79, v210);
        v208(v61, v56);
        (*(v209 + 8))(v68, v64);
        return;
      case 5:
        if (a3 <= -9.22337204e18)
        {
          goto LABEL_43;
        }

        if (a3 >= 9.22337204e18)
        {
          goto LABEL_46;
        }

        v211 = a3;
        sub_220DC0C70();
        OUTLINED_FUNCTION_10_16();
        return;
      case 6:
        sub_220CD8184(0, &qword_280FA6618, 0x277CCAE20);
        v136 = v72;
        sub_220DBE040();
        v137 = v186;
        v138 = v185;
        v139 = v188;
        (*(v186 + 104))(v185, *MEMORY[0x277D7B4B0], v188);
        v140 = sub_220DBE5E0();
        v141 = v206;
        OUTLINED_FUNCTION_18_11(v206, v142, v143, v140);
        sub_220DC0810();
        v144 = v189;
        v145 = v187;
        v146 = v190;
        (*(v189 + 104))(v187, *MEMORY[0x277D7B3F8], v190);
        v147 = v184;
        sub_220DC0280();

        (*(v144 + 8))(v145, v146);
        sub_220D69B34(v141);
        (*(v137 + 8))(v138, v139);
        sub_220DC0940();
        v209 = *(v193 + 8);
        (v209)(v147, v195);
        v148 = OUTLINED_FUNCTION_2_25();
        v149(v148);
        sub_220DBF100();
        sub_220DBF0D0();
        sub_220D69B9C(&qword_280FA6620, MEMORY[0x277D7B4A8], MEMORY[0x277D7B4A0]);
        OUTLINED_FUNCTION_12_18();
        v113 = v192;
        v105 = v205;
        sub_220DBE0B0();
        OUTLINED_FUNCTION_10_16();

        v150 = OUTLINED_FUNCTION_11_13();
        v151(v150);
        v152 = OUTLINED_FUNCTION_13_12();
        v153(v152);
        v118 = &v212;
        goto LABEL_29;
      case 7:
        sub_220CD8184(0, &qword_27CF95668, 0x277CCAE40);
        v119 = v71;
        v120 = v199;
        sub_220DBE040();
        v122 = v196;
        v121 = v197;
        v123 = v198;
        (*(v197 + 104))(v196, *MEMORY[0x277D7B490], v198);
        v124 = sub_220DBE5E0();
        v125 = v206;
        OUTLINED_FUNCTION_18_11(v206, v126, v127, v124);
        sub_220DC07E0();
        v128 = v194;
        sub_220DC0270();

        sub_220D69B34(v125);
        (*(v121 + 8))(v122, v123);
        sub_220DC0900();
        v209 = *(v203 + 8);
        (v209)(v128, v168);
        v129 = OUTLINED_FUNCTION_2_25();
        v130(v129);
        sub_220DBF100();
        sub_220DBF0D0();
        sub_220D69B9C(&qword_27CF95748, MEMORY[0x277D7B488], MEMORY[0x277D7B480]);
        OUTLINED_FUNCTION_12_18();
        v113 = v201;
        v105 = v120;
        sub_220DBE0B0();
        OUTLINED_FUNCTION_10_16();

        v131 = OUTLINED_FUNCTION_11_13();
        v132(v131);
        v133 = OUTLINED_FUNCTION_13_12();
        v134(v133);
        v135 = v200;
        goto LABEL_30;
      case 8:
        v61 = " is either NaN or infinite";
        if (qword_280FA6600 == -1)
        {
          goto LABEL_33;
        }

        goto LABEL_44;
      default:
        if (qword_280FA6600 != -1)
        {
          OUTLINED_FUNCTION_10(&qword_280FA6600);
        }

        OUTLINED_FUNCTION_6_17();
        OUTLINED_FUNCTION_15_12(0xD00000000000002FLL, 0x8000000220DF2D20, v92, v93, v94, v95, v96, v91 + 18);
        v61 = v97;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v98 = swift_allocObject();
        v100 = OUTLINED_FUNCTION_9_18(v98, xmmword_220DC17A0);
        if (v102 ^ v103 | v101)
        {
          if (v100 <= -9.22337204e18)
          {
            goto LABEL_45;
          }

          if (v100 >= 9.22337204e18)
          {
            __break(1u);
LABEL_23:
            sub_220CD8184(0, &qword_27CF956B0, 0x277CCAE38);
            v104 = v70;
            v105 = v178;
            sub_220DBE040();
            v106 = sub_220DBE5E0();
            v107 = v206;
            OUTLINED_FUNCTION_18_11(v206, v108, v109, v106);
            sub_220DC0840();
            v110 = v177;
            sub_220DC02A0();

            sub_220D69B34(v107);
            sub_220DC09A0();
            v209 = *(v181 + 8);
            (v209)(v110, v182);
            v111 = OUTLINED_FUNCTION_2_25();
            v112(v111);
            sub_220DBF100();
            sub_220DBF0D0();
            sub_220D69B9C(&qword_27CF95760, MEMORY[0x277D7B4E8], MEMORY[0x277D7B4E0]);
            OUTLINED_FUNCTION_12_18();
            v113 = v180;
            sub_220DBE0B0();
            OUTLINED_FUNCTION_10_16();

            v114 = OUTLINED_FUNCTION_11_13();
            v115(v114);
            v116 = OUTLINED_FUNCTION_13_12();
            v117(v116);
            v118 = &v209;
LABEL_29:
            v135 = *(v118 - 32);
LABEL_30:
            (*(v135 + 8))(v105, v113);
            return;
          }
        }

        else
        {
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          OUTLINED_FUNCTION_10(&qword_280FA6600);
LABEL_33:
          OUTLINED_FUNCTION_6_17();
          OUTLINED_FUNCTION_15_12(v154 + 8, v61 | 0x8000000000000000, v155, v156, v157, v158, v159, v154 + 24);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
          v160 = swift_allocObject();
          v100 = OUTLINED_FUNCTION_9_18(v160, xmmword_220DC17A0);
          if (!(v102 ^ v103 | v101))
          {
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          if (v100 <= -9.22337204e18)
          {
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

          if (v100 >= 9.22337204e18)
          {
LABEL_48:
            __break(1u);
            return;
          }
        }

        v161 = MEMORY[0x277D83C10];
        v99[7] = MEMORY[0x277D83B88];
        v99[8] = v161;
        v99[4] = v100;
        sub_220DC05F0();

        return;
    }
  }

  if (qword_280FA6600 != -1)
  {
LABEL_42:
    OUTLINED_FUNCTION_10(&qword_280FA6600);
  }

  OUTLINED_FUNCTION_6_17();
  sub_220DBE240();
}

uint64_t sub_220D69B34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95228, &unk_220DC1E60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220D69B9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double SevereAlertComponentStringsBuilder.Strings.alertSummary.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[5];
  v4 = v1[6];
  v3 = v1[7];
  *a1 = v1[4];
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;

  return result;
}

void SevereAlertComponentStringsBuilder.makeStrings(events:location:currentDate:)()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_220DC01D0();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    if (sub_220DC0670() < 26)
    {
      v23 = v8;
      v24 = v9;
      goto LABEL_6;
    }
  }

  v23 = sub_220DC01E0();
  v24 = v10;
LABEL_6:
  v25 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95CC8, &unk_220DC5560);
  sub_220CE161C(&qword_27CF95CD0, &qword_27CF95CC8, &unk_220DC5560, MEMORY[0x277D83970]);
  v11 = sub_220DC06E0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_25_8();
  *(v13 - 32) = v1;
  *(v13 - 24) = v12;
  *(v13 - 16) = 0;
  v15 = sub_220D46710(sub_220D6E54C, v14, v11);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_25_8();
  *(v16 - 32) = v1;
  *(v16 - 24) = v11;
  *(v16 - 16) = 1;
  v18 = sub_220D46710(sub_220D6EA64, v17, v11);
  SevereAlertComponentStringsBuilder.summary(alertDescriptions:events:location:currentDate:)();
  SevereAlertComponentStringsBuilder.longAlertDescription(for:location:)();
  v20 = v19;
  v22 = v21;

  *v5 = v23;
  v5[1] = v24;
  v5[2] = v15;
  v5[3] = v18;
  v5[4] = v25;
  v5[5] = v26;
  v5[6] = v27;
  v5[7] = v28;
  v5[8] = v25;
  v5[9] = v26;
  v5[10] = v27;
  v5[11] = v28;
  v5[12] = v20;
  v5[13] = v22;

  OUTLINED_FUNCTION_24();
}

Swift::String __swiftcall SevereAlertComponentStringsBuilder.title(for:characterLimit:)(Swift::OpaquePointer a1, Swift::Int characterLimit)
{
  sub_220DC01D0();
  if (!v3)
  {
    goto LABEL_4;
  }

  if (sub_220DC0670() > characterLimit)
  {

LABEL_4:
    sub_220DC01E0();
  }

  v4 = OUTLINED_FUNCTION_15_13();
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t sub_220D69FBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_220DBEB40();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SevereAlertComponentStringsBuilder.descriptions(for:location:currentDate:bulletString:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6[2] = *v4;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a1;
  v7 = a4;
  return sub_220D46710(sub_220D6EA64, v6, a1);
}

void SevereAlertComponentStringsBuilder.summary(alertDescriptions:events:location:currentDate:)()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v103 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v8 = OUTLINED_FUNCTION_18(v7);
  MEMORY[0x28223BE20](v8);
  v10 = v100 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95CD8, &qword_220DC5570);
  v12 = OUTLINED_FUNCTION_18(v11);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v100 - v16;
  sub_220DBEB60();
  OUTLINED_FUNCTION_0();
  v107 = v19;
  v108 = v18;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9();
  v109 = v20;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v21);
  v23 = v100 - v22;
  v24 = SevereAlertComponentStringsBuilder.footer(for:)(v3);
  v105 = *(v3 + 16);
  if (!v105)
  {
    if (qword_280FA6600 != -1)
    {
      OUTLINED_FUNCTION_10(&qword_280FA6600);
    }

    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_11();
    v30 = sub_220DBE240();
    v31 = v103;
    v103->_countAndFlagsBits = v30;
    v31->_object = v32;
LABEL_8:
    v31[1] = v24;
LABEL_30:
    OUTLINED_FUNCTION_24();
    return;
  }

  v25 = sub_220D6E58C(v3, v1);
  v26 = v5[2];
  v102 = v24;
  if (!v26)
  {
    goto LABEL_18;
  }

  v27 = v25;
  v101 = v23;
  v28 = v5[5];
  v106 = v5[4];
  v112 = v106;
  v113 = v28;
  sub_220D100B0(v3, v17);
  v29 = v108;
  if (__swift_getEnumTagSinglePayload(v17, 1, v108) == 1)
  {
    sub_220CE1ABC(v17, &qword_27CF95CD8, &qword_220DC5570);
    goto LABEL_18;
  }

  v33 = v101;
  v34 = OUTLINED_FUNCTION_5_13();
  v35(v34);

  sub_220DBEB50();
  v36 = sub_220DBE560();
  v37 = __swift_getEnumTagSinglePayload(v10, 1, v36) != 1;
  sub_220CE1ABC(v10, &qword_27CF951E0, &unk_220DC1D80);
  if (((v37 | v27) & 1) == 0)
  {
    (*(v107 + 8))(v33, v29);

LABEL_18:
    v112 = MEMORY[0x277D84F90];
    v54 = v105;
    sub_220CFB7F4(0, v105, 0);
    v55 = v112;
    OUTLINED_FUNCTION_27_5();
    v57 = v3 + v56;
    v106 = *(v58 + 56);
    v107 = v59;
    v60 = (v58 - 8);
    do
    {
      v62 = v108;
      v61 = v109;
      v63 = OUTLINED_FUNCTION_5_13();
      (v107)(v63);
      v64 = sub_220DBEB40();
      v66 = v65;
      (*v60)(v61, v62);
      v112 = v55;
      v68 = *(v55 + 2);
      v67 = *(v55 + 3);
      if (v68 >= v67 >> 1)
      {
        sub_220CFB7F4((v67 > 1), v68 + 1, 1);
        v55 = v112;
      }

      *(v55 + 2) = v68 + 1;
      v69 = v55 + 16 * v68;
      *(v69 + 32) = v64;
      *(v69 + 40) = v66;
      v57 += v106;
      v54 = (v54 - 1);
    }

    while (v54);
    v112 = v55;
    v70 = OUTLINED_FUNCTION_20();
    __swift_instantiateConcreteTypeFromMangledNameV2(v70, v71);
    OUTLINED_FUNCTION_9_19(&qword_27CF95758);
    v72 = sub_220DC0570();
    v74 = v73;

    if (v105 == 1)
    {
      p_countAndFlagsBits = &v103->_countAndFlagsBits;
      countAndFlagsBits = v102._countAndFlagsBits;
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10(&qword_280FA6600);
      }

      OUTLINED_FUNCTION_14_0();
      OUTLINED_FUNCTION_11_14();
    }

    else
    {
      p_countAndFlagsBits = &v103->_countAndFlagsBits;
      countAndFlagsBits = v102._countAndFlagsBits;
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10(&qword_280FA6600);
      }

      OUTLINED_FUNCTION_14_0();
    }

    sub_220DBE240();
    OUTLINED_FUNCTION_16_15();
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v78 = OUTLINED_FUNCTION_24_3(v77);
    *(v78 + 16) = xmmword_220DC17A0;
    *(v78 + 56) = MEMORY[0x277D837D0];
    *(v78 + 64) = sub_220CEFDB0();
    *(v78 + 32) = v72;
    *(v78 + 40) = v74;
    OUTLINED_FUNCTION_15_13();
    v79 = sub_220DC05F0();
    v81 = v80;

    *p_countAndFlagsBits = v79;
    p_countAndFlagsBits[1] = v81;
    object = v102._object;
    p_countAndFlagsBits[2] = countAndFlagsBits;
    p_countAndFlagsBits[3] = object;
    goto LABEL_30;
  }

  v111 = v3;
  sub_220D100B0(v3, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v29) != 1)
  {

    sub_220CE1ABC(v15, &qword_27CF95CD8, &qword_220DC5570);
    sub_220D6E7B0(0, 1);
    v38 = v111;
    v39 = *(v111 + 16);
    if (v39)
    {
      v110 = MEMORY[0x277D84F90];
      sub_220CFB7F4(0, v39, 0);
      v40 = v110;
      v41 = v108;
      OUTLINED_FUNCTION_27_5();
      v100[1] = v38;
      v43 = v38 + v42;
      v104 = *(v44 + 56);
      v105 = v45;
      v107 = v44 - 8;
      do
      {
        v46 = v109;
        v47 = OUTLINED_FUNCTION_5_13();
        v105(v47);
        v48 = sub_220DBEB40();
        v50 = v49;
        v106 = *v107;
        (v106)(v46, v41);
        v110 = v40;
        v52 = *(v40 + 16);
        v51 = *(v40 + 24);
        if (v52 >= v51 >> 1)
        {
          sub_220CFB7F4((v51 > 1), v52 + 1, 1);
          v40 = v110;
        }

        *(v40 + 16) = v52 + 1;
        v53 = v40 + 16 * v52;
        *(v53 + 32) = v48;
        *(v53 + 40) = v50;
        v43 += v104;
        --v39;
      }

      while (v39);

      v110 = v40;
      v83 = OUTLINED_FUNCTION_20();
      __swift_instantiateConcreteTypeFromMangledNameV2(v83, v84);
      OUTLINED_FUNCTION_9_19(&qword_27CF95758);
      v85 = sub_220DC0570();
      v87 = v86;
      v88 = *(v40 + 16);

      if (v88 == 1)
      {
        OUTLINED_FUNCTION_19();
        v90 = v102._countAndFlagsBits;
        v89 = v102._object;
        v91 = v101;
        v92 = v103;
        if (!v93)
        {
          OUTLINED_FUNCTION_10(&qword_280FA6600);
        }
      }

      else
      {
        OUTLINED_FUNCTION_19();
        v90 = v102._countAndFlagsBits;
        v89 = v102._object;
        v91 = v101;
        v92 = v103;
        if (!v93)
        {
          OUTLINED_FUNCTION_10(&qword_280FA6600);
        }
      }

      OUTLINED_FUNCTION_14_0();
      sub_220DBE240();
      OUTLINED_FUNCTION_16_15();
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v95 = OUTLINED_FUNCTION_24_3(v94);
      *(v95 + 16) = xmmword_220DC17A0;
      *(v95 + 56) = MEMORY[0x277D837D0];
      *(v95 + 64) = sub_220CEFDB0();
      *(v95 + 32) = v85;
      *(v95 + 40) = v87;
      OUTLINED_FUNCTION_15_13();
      v96 = sub_220DC05F0();
      v98 = v97;

      MEMORY[0x223D982B0](v96, v98);

      (v106)(v91, v108);
      v99 = v113;
      v92->_countAndFlagsBits = v112;
      v92->_object = v99;
      v92[1]._countAndFlagsBits = v90;
      v92[1]._object = v89;
      goto LABEL_30;
    }

    (*(v107 + 8))(v101, v108);

    v31 = v103;
    v103->_countAndFlagsBits = v106;
    v31->_object = v28;
    goto LABEL_8;
  }

  __break(1u);
}

void SevereAlertComponentStringsBuilder.longAlertDescription(for:location:)()
{
  OUTLINED_FUNCTION_25();
  v142 = v0;
  v143 = v1;
  v3 = v2;
  v124 = sub_220DBE360();
  OUTLINED_FUNCTION_0();
  v123 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v122 = v7 - v6;
  OUTLINED_FUNCTION_6_1();
  sub_220DBE6C0();
  OUTLINED_FUNCTION_0();
  v127 = v9;
  v128 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v126 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v13 = OUTLINED_FUNCTION_18(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9();
  v129 = v14;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v15);
  v134 = v119 - v16;
  OUTLINED_FUNCTION_6_1();
  v135 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v133 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9();
  v132 = v19;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v20);
  v136 = v119 - v21;
  OUTLINED_FUNCTION_6_1();
  sub_220DBEAF0();
  OUTLINED_FUNCTION_0();
  v138 = v23;
  v139 = v22;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_9();
  v137 = v24;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v25);
  v27 = v119 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95CD8, &qword_220DC5570);
  v29 = OUTLINED_FUNCTION_18(v28);
  MEMORY[0x28223BE20](v29);
  v31 = v119 - v30;
  v32 = sub_220DBEB60();
  OUTLINED_FUNCTION_0();
  v141 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1();
  v140 = v36 - v35;
  OUTLINED_FUNCTION_6_1();
  v37 = sub_220DBE6E0();
  OUTLINED_FUNCTION_0();
  v39 = v38;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_1();
  v43 = v42 - v41;
  v44 = sub_220DBE740();
  OUTLINED_FUNCTION_0();
  v46 = v45;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_1();
  v50 = v49 - v48;
  v120 = *v142;
  v121 = v3;
  sub_220DBF1C0();
  v51 = v50;
  v52 = v43;
  sub_220DBE600();
  if (*(v143 + 16) == 1)
  {
    v130 = v37;
    v131 = v44;
    v125 = v39;
    v142 = v46;
    sub_220D100B0(v143, v31);
    if (__swift_getEnumTagSinglePayload(v31, 1, v32) == 1)
    {
      v53 = OUTLINED_FUNCTION_28_4();
      v54(v53);
      (*(v142 + 8))(v51, v131);
      v55 = &qword_27CF95CD8;
      v56 = &qword_220DC5570;
      v57 = v31;
LABEL_12:
      sub_220CE1ABC(v57, v55, v56);
      goto LABEL_13;
    }

    v58 = v32;
    v143 = v51;
    v59 = v140;
    v60 = v141;
    (*(v141 + 32))(v140, v31, v32);
    sub_220DBEB00();
    v61 = v138;
    v62 = v139;
    (*(v138 + 104))(v137, *MEMORY[0x277D7B3B0], v139);
    v63 = sub_220DBEAE0();
    v64 = *(v61 + 8);
    v65 = OUTLINED_FUNCTION_24_8();
    v64(v65);
    (v64)(v27, v62);
    if (v63)
    {
      v66 = v134;
      sub_220DBEB50();
      v67 = v135;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v66, 1, v135);
      v69 = v142;
      v71 = v130;
      v70 = v131;
      v72 = v125;
      if (EnumTagSinglePayload == 1)
      {
        v73 = OUTLINED_FUNCTION_15_13();
        v74(v73);
        (*(v72 + 8))(v52, v71);
        (*(v69 + 8))(v143, v70);
LABEL_11:
        v55 = &qword_27CF951E0;
        v56 = &unk_220DC1D80;
        v57 = v66;
        goto LABEL_12;
      }

      v139 = v58;
      v79 = v133;
      v80 = v67;
      v81 = v59;
      v82 = *(v133 + 32);
      v82(v136, v66, v80);
      v66 = v129;
      sub_220DBEB30();
      if (__swift_getEnumTagSinglePayload(v66, 1, v80) == 1)
      {
        (*(v79 + 8))(v136, v80);
        (*(v60 + 8))(v81, v139);
        (*(v72 + 8))(v52, v130);
        (*(v69 + 8))(v143, v131);
        goto LABEL_11;
      }

      v82(v132, v66, v80);
      v83 = *MEMORY[0x277CC99B8];
      v84 = v127;
      v85 = v128;
      v86 = v52;
      v87 = v126;
      v138 = *(v127 + 104);
      (v138)(v126, v83, v128);
      sub_220DBE6D0();
      v88 = *(v84 + 8);
      v88(v87, v85);
      v89 = sub_220DBE510();
      if (v89 == 7)
      {
        v90 = *(v133 + 8);
        v90(v132, v80);
        v90(v136, v80);
        (*(v141 + 8))(v140, v139);
        (*(v72 + 8))(v86, v130);
LABEL_18:
        (*(v142 + 8))(v143, v131);
        goto LABEL_13;
      }

      v137 = v89;
      (v138)(v87, v83, v85);
      v91 = v132;
      sub_220DBE6D0();
      v88(v87, v85);
      v92 = sub_220DBE510();
      if (v92 == 7)
      {
        v93 = *(v133 + 8);
        v94 = v135;
        v93(v91, v135);
        v93(v136, v94);
        (*(v141 + 8))(v140, v139);
        (*(v72 + 8))(v86, v130);
        goto LABEL_18;
      }

      v95 = v92;
      v138 = v86;
      v96 = v120;
      v144 = v120;
      v97 = v143;
      v128 = sub_220D6CCD0(v136, v143);
      v119[1] = v98;
      v144 = v96;
      v129 = sub_220D6CCD0(v91, v97);
      v100 = v99;
      v120 = sub_220DBE4E0();
      v121 = v101;
      v126 = sub_220DBE4E0();
      v127 = v102;
      v103 = v122;
      sub_220DBDFF0();
      sub_220D6E8E0(&qword_27CF95CE0, MEMORY[0x277D7A9B8], MEMORY[0x277D7A9B0]);
      v104 = v124;
      sub_220DBE550();
      v105 = *(v123 + 8);
      v105(v103, v104);
      v123 = v144;
      sub_220DBDFF0();
      sub_220DBE550();
      v105(v103, v104);
      v106 = v144;
      v134 = v100;
      switch(v137)
      {
        case 1:
          switch(v95)
          {
            case 1:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
            case 2:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
            case 3:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
            case 4:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
            case 5:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
            case 6:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
            default:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
          }

          break;
        case 2:
          switch(v95)
          {
            case 1:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
            case 2:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
            case 3:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
            case 4:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
            case 5:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
            case 6:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
            default:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
          }

          break;
        case 3:
          switch(v95)
          {
            case 1:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
            case 2:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
            case 3:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
            case 4:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
            case 5:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
            case 6:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
            default:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
          }

          break;
        case 4:
          switch(v95)
          {
            case 1:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
            case 2:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
            case 3:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
            case 4:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
            case 5:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
            case 6:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
            default:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
          }

          break;
        case 5:
          switch(v95)
          {
            case 1:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
            case 2:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
            case 3:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
            case 4:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
            case 5:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
            case 6:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
            default:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
          }

          break;
        case 6:
          switch(v95)
          {
            case 1:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
            case 2:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
            case 3:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
            case 4:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
            case 5:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
            case 6:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
            default:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
          }

          break;
        default:
          switch(v95)
          {
            case 1:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
            case 2:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
            case 3:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
            case 4:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
            case 5:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
            case 6:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
            default:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v107)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              break;
          }

          break;
      }

      OUTLINED_FUNCTION_2_26();
      OUTLINED_FUNCTION_11();
      sub_220DBE240();
      OUTLINED_FUNCTION_16_15();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v108 = swift_allocObject();
      *(v108 + 16) = xmmword_220DC5550;
      v109 = v140;
      v110 = sub_220DBEB40();
      v112 = v111;
      v113 = MEMORY[0x277D837D0];
      *(v108 + 56) = MEMORY[0x277D837D0];
      v114 = sub_220CEFDB0();
      v115 = MEMORY[0x277D83B88];
      v116 = MEMORY[0x277D83C10];
      *(v108 + 32) = v110;
      *(v108 + 40) = v112;
      *(v108 + 96) = v115;
      *(v108 + 104) = v116;
      *(v108 + 64) = v114;
      *(v108 + 72) = v123;
      *(v108 + 136) = v113;
      *(v108 + 144) = v114;
      *(v108 + 112) = v120;
      *(v108 + 120) = v121;
      *(v108 + 176) = v115;
      *(v108 + 184) = v116;
      *(v108 + 152) = v106;
      *(v108 + 216) = v113;
      *(v108 + 224) = v114;
      *(v108 + 192) = v126;
      *(v108 + 200) = v127;
      *(v108 + 256) = v113;
      *(v108 + 264) = v114;
      *(v108 + 232) = v128;
      *(v108 + 240) = v91;
      *(v108 + 296) = v113;
      *(v108 + 304) = v114;
      *(v108 + 272) = v129;
      *(v108 + 280) = v134;
      OUTLINED_FUNCTION_15_13();
      sub_220DC05F0();

      v117 = *(v133 + 8);
      v118 = v135;
      v117(v132, v135);
      v117(v136, v118);
      (*(v141 + 8))(v109, v139);
      (*(v125 + 8))(v138, v130);
      (*(v142 + 8))(v143, v131);
    }

    else
    {
      v75 = OUTLINED_FUNCTION_15_13();
      v76(v75);
      v77 = OUTLINED_FUNCTION_28_4();
      v78(v77);
      (*(v142 + 8))(v143, v131);
    }
  }

  else
  {
    (*(v39 + 8))(v43, v37);
    (*(v46 + 8))(v51, v44);
  }

LABEL_13:
  OUTLINED_FUNCTION_24();
}

Swift::String __swiftcall SevereAlertComponentStringsBuilder.footer(for:)(Swift::OpaquePointer a1)
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v3 = sub_220DBEB60();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10 = *(v2 + 16);
  if (!v10)
  {
    v24 = 0;
    v25 = 0;
    v22 = 0;
    v23 = 0;
    goto LABEL_25;
  }

  v13 = *(v5 + 16);
  v12 = v5 + 16;
  v11 = v13;
  v14 = v2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
  v15 = (v12 - 8);
  v16 = *(v12 + 56);
  v41 = v10;
  while (1)
  {
    v17 = OUTLINED_FUNCTION_5_13();
    v11(v17);
    v18 = sub_220DBEB20();
    v20 = v19;

    v21 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      break;
    }

    (*v15)(v9, v3);
    v14 += v16;
    if (!--v10)
    {
      v22 = 0;
      v23 = 0;
      goto LABEL_10;
    }
  }

  v22 = sub_220DBEB20();
  v23 = v26;
  (*v15)(v9, v3);
LABEL_10:
  if (v41 != 1)
  {
    v25 = 0;
    v24 = 0;
    goto LABEL_18;
  }

  v27 = sub_220DBEB10();
  v24 = v28;
  if (!v28)
  {
    v25 = 0;
    if (v23)
    {
      goto LABEL_19;
    }

LABEL_25:
    v33 = 1;
    goto LABEL_26;
  }

  v25 = v27;
  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {
LABEL_18:
    if (v23)
    {
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  v25 = 0;
  v24 = 0;
  if (!v23)
  {
    goto LABEL_25;
  }

LABEL_19:
  if (!v24)
  {
    v33 = 0;
LABEL_26:
    if (qword_280FA6600 != -1)
    {
      OUTLINED_FUNCTION_10(&qword_280FA6600);
    }

    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_11();
    sub_220DBE240();
    if (v33)
    {
      if (v24)
      {
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v35 = OUTLINED_FUNCTION_24_3(v34);
        *(v35 + 16) = xmmword_220DC17A0;
        *(v35 + 56) = MEMORY[0x277D837D0];
        *(v35 + 64) = sub_220CEFDB0();
        *(v35 + 32) = v25;
        *(v35 + 40) = v24;
        sub_220DC05F0();
        OUTLINED_FUNCTION_21();
      }
    }

    else
    {

      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v37 = OUTLINED_FUNCTION_24_3(v36);
      *(v37 + 16) = xmmword_220DC17A0;
      *(v37 + 56) = MEMORY[0x277D837D0];
      *(v37 + 64) = sub_220CEFDB0();
      *(v37 + 32) = v22;
      *(v37 + 40) = v23;
      sub_220DC05F0();
      OUTLINED_FUNCTION_21();
    }

    goto LABEL_32;
  }

  if (qword_280FA6600 != -1)
  {
    OUTLINED_FUNCTION_10(&qword_280FA6600);
  }

  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_11();
  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_220DC17C0;
  v31 = MEMORY[0x277D837D0];
  *(v30 + 56) = MEMORY[0x277D837D0];
  v32 = sub_220CEFDB0();
  *(v30 + 32) = v22;
  *(v30 + 40) = v23;
  *(v30 + 96) = v31;
  *(v30 + 104) = v32;
  *(v30 + 64) = v32;
  *(v30 + 72) = v25;
  *(v30 + 80) = v24;
  sub_220DC05F0();
  OUTLINED_FUNCTION_21();

LABEL_32:

  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_24();
  result._object = v39;
  result._countAndFlagsBits = v38;
  return result;
}

uint64_t sub_220D6C5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a4;
  v41 = a1;
  v7 = sub_220DBE6C0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_220DBE6E0();
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_220DBE360();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *v4;
  v18 = sub_220D6CCD0(a2, a3);
  v37 = v19;
  v38 = v18;
  v20 = sub_220DBE4E0();
  v39 = v21;
  v40 = v20;
  sub_220DBDFF0();
  sub_220D6E8E0(&qword_27CF95CE0, MEMORY[0x277D7A9B8], MEMORY[0x277D7A9B0]);
  sub_220DBE550();
  (*(v15 + 8))(v17, v14);
  v22 = v44;
  sub_220DBE600();
  (*(v8 + 104))(v10, *MEMORY[0x277CC99B8], v7);
  sub_220DBE6D0();
  (*(v8 + 8))(v10, v7);
  switch(sub_220DBE510())
  {
    case 1u:
      v23 = v42;
      v24 = v40;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 2u:
      v23 = v42;
      v24 = v40;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 3u:
      v23 = v42;
      v24 = v40;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 4u:
      v23 = v42;
      v24 = v40;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 5u:
      v23 = v42;
      v24 = v40;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 6u:
      v23 = v42;
      v24 = v40;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 7u:
      v23 = v42;
      v24 = v40;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      break;
    default:
      v23 = v42;
      v24 = v40;
      if (qword_280FA6600 != -1)
      {
LABEL_18:
        swift_once();
      }

      break;
  }

  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_220DC1CE0;
  v26 = sub_220DBEB40();
  v28 = v27;
  v29 = MEMORY[0x277D837D0];
  *(v25 + 56) = MEMORY[0x277D837D0];
  v30 = sub_220CEFDB0();
  *(v25 + 32) = v26;
  *(v25 + 40) = v28;
  *(v25 + 96) = v29;
  *(v25 + 104) = v30;
  v31 = v37;
  v32 = v38;
  *(v25 + 64) = v30;
  *(v25 + 72) = v32;
  *(v25 + 80) = v31;
  v33 = MEMORY[0x277D83C10];
  *(v25 + 136) = MEMORY[0x277D83B88];
  *(v25 + 144) = v33;
  *(v25 + 112) = v22;
  *(v25 + 176) = v29;
  *(v25 + 184) = v30;
  v34 = v39;
  *(v25 + 152) = v24;
  *(v25 + 160) = v34;
  v35 = sub_220DC05F0();

  (*(v23 + 8))(v13, v43);
  return v35;
}

uint64_t sub_220D6CCD0(uint64_t a1, uint64_t a2)
{
  v2 = sub_220DBE540();
  v4 = v3;
  sub_220DBF1A0();
  v5 = sub_220DBF170();
  v7 = v6;
  if (v5 == sub_220DBF170() && v7 == v8)
  {
LABEL_15:

    return v2;
  }

  v10 = sub_220DC0CA0();

  if ((v10 & 1) == 0)
  {
    v11 = sub_220DBE700();
    if (v12)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0xE000000000000000;
    }

    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_220DC17C0;
    v16 = MEMORY[0x277D837D0];
    *(v15 + 56) = MEMORY[0x277D837D0];
    v17 = sub_220CEFDB0();
    *(v15 + 32) = v2;
    *(v15 + 40) = v4;
    *(v15 + 96) = v16;
    *(v15 + 104) = v17;
    *(v15 + 64) = v17;
    *(v15 + 72) = v13;
    *(v15 + 80) = v14;
    v2 = sub_220DC05F0();
    goto LABEL_15;
  }

  return v2;
}

uint64_t sub_220D6CEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a4;
  v41 = a1;
  v7 = sub_220DBE6C0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_220DBE6E0();
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_220DBE360();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *v4;
  v18 = sub_220D6CCD0(a2, a3);
  v37 = v19;
  v38 = v18;
  v20 = sub_220DBE4E0();
  v39 = v21;
  v40 = v20;
  sub_220DBDFF0();
  sub_220D6E8E0(&qword_27CF95CE0, MEMORY[0x277D7A9B8], MEMORY[0x277D7A9B0]);
  sub_220DBE550();
  (*(v15 + 8))(v17, v14);
  v22 = v44;
  sub_220DBE600();
  (*(v8 + 104))(v10, *MEMORY[0x277CC99B8], v7);
  sub_220DBE6D0();
  (*(v8 + 8))(v10, v7);
  switch(sub_220DBE510())
  {
    case 1u:
      v23 = v42;
      v24 = v40;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 2u:
      v23 = v42;
      v24 = v40;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 3u:
      v23 = v42;
      v24 = v40;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 4u:
      v23 = v42;
      v24 = v40;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 5u:
      v23 = v42;
      v24 = v40;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 6u:
      v23 = v42;
      v24 = v40;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 7u:
      v23 = v42;
      v24 = v40;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      break;
    default:
      v23 = v42;
      v24 = v40;
      if (qword_280FA6600 != -1)
      {
LABEL_18:
        swift_once();
      }

      break;
  }

  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_220DC1CE0;
  v26 = sub_220DBEB40();
  v28 = v27;
  v29 = MEMORY[0x277D837D0];
  *(v25 + 56) = MEMORY[0x277D837D0];
  v30 = sub_220CEFDB0();
  *(v25 + 32) = v26;
  *(v25 + 40) = v28;
  *(v25 + 96) = v29;
  *(v25 + 104) = v30;
  v31 = v37;
  v32 = v38;
  *(v25 + 64) = v30;
  *(v25 + 72) = v32;
  *(v25 + 80) = v31;
  v33 = MEMORY[0x277D83C10];
  *(v25 + 136) = MEMORY[0x277D83B88];
  *(v25 + 144) = v33;
  *(v25 + 112) = v22;
  *(v25 + 176) = v29;
  *(v25 + 184) = v30;
  v34 = v39;
  *(v25 + 152) = v24;
  *(v25 + 160) = v34;
  v35 = sub_220DC05F0();

  (*(v23 + 8))(v13, v43);
  return v35;
}

uint64_t sub_220D6D5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v40 = a1;
  v7 = sub_220DBE6C0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_220DBE6E0();
  v41 = *(v11 - 8);
  v42 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_220DBE360();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *v4;
  v18 = sub_220D6CCD0(a2, a3);
  v38 = v19;
  v39 = v18;
  v20 = sub_220DBE4E0();
  v36 = v21;
  v37 = v20;
  sub_220DBDFF0();
  sub_220D6E8E0(&qword_27CF95CE0, MEMORY[0x277D7A9B8], MEMORY[0x277D7A9B0]);
  sub_220DBE550();
  (*(v15 + 8))(v17, v14);
  v22 = v43;
  sub_220DBE600();
  (*(v8 + 104))(v10, *MEMORY[0x277CC99B8], v7);
  sub_220DBE6D0();
  (*(v8 + 8))(v10, v7);
  switch(sub_220DBE510())
  {
    case 1u:
      v23 = v41;
      v24 = v39;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 2u:
      v23 = v41;
      v24 = v39;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 3u:
      v23 = v41;
      v24 = v39;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 4u:
      v23 = v41;
      v24 = v39;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 5u:
      v23 = v41;
      v24 = v39;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 6u:
      v23 = v41;
      v24 = v39;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 7u:
      v23 = v41;
      v24 = v39;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      break;
    default:
      v23 = v41;
      v24 = v39;
      if (qword_280FA6600 != -1)
      {
LABEL_18:
        swift_once();
      }

      break;
  }

  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_220DC1CE0;
  v26 = sub_220DBEB40();
  v28 = v27;
  v29 = MEMORY[0x277D837D0];
  *(v25 + 56) = MEMORY[0x277D837D0];
  v30 = sub_220CEFDB0();
  *(v25 + 32) = v26;
  *(v25 + 40) = v28;
  v31 = MEMORY[0x277D83C10];
  *(v25 + 96) = MEMORY[0x277D83B88];
  *(v25 + 104) = v31;
  *(v25 + 64) = v30;
  *(v25 + 72) = v22;
  *(v25 + 136) = v29;
  *(v25 + 144) = v30;
  v32 = v36;
  *(v25 + 112) = v37;
  *(v25 + 120) = v32;
  *(v25 + 176) = v29;
  *(v25 + 184) = v30;
  v33 = v38;
  *(v25 + 152) = v24;
  *(v25 + 160) = v33;
  v34 = sub_220DC05F0();

  (*(v23 + 8))(v13, v42);
  return v34;
}

void SevereAlertComponentStringsBuilder.description(for:location:currentDate:eventCount:bulletString:)()
{
  OUTLINED_FUNCTION_25();
  v85 = v0;
  v75 = v1;
  v80 = v2;
  v82 = v3;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v9 = OUTLINED_FUNCTION_18(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9();
  v74 = v10;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v11);
  v81 = &v71 - v12;
  OUTLINED_FUNCTION_23();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v71 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v71 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v71 - v20;
  v22 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_9();
  v73 = v26;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v27);
  v79 = &v71 - v28;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v29);
  v78 = &v71 - v30;
  OUTLINED_FUNCTION_23();
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v71 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v71 - v35;
  v37 = sub_220DBE740();
  OUTLINED_FUNCTION_0();
  v84 = v38;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_1();
  v76 = *v85;
  v77 = v5;
  v83 = v41 - v40;
  sub_220DBF1C0();
  v85 = v7;
  sub_220DBEB30();
  OUTLINED_FUNCTION_13_0(v21);
  if (v42)
  {
    sub_220CE1ABC(v21, &qword_27CF951E0, &unk_220DC1D80);
    goto LABEL_13;
  }

  v72 = v37;
  v43 = *(v24 + 32);
  v43(v36, v21, v22);
  sub_220D6E8E0(&qword_280FA7798, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v44 = sub_220DC0580();
  if (v44)
  {
    v45 = OUTLINED_FUNCTION_24_8();
    v46(v45);
    v37 = v72;
    goto LABEL_13;
  }

  sub_220DBEB50();
  OUTLINED_FUNCTION_13_0(v19);
  if (v42)
  {
    sub_220DBE3F0();
    OUTLINED_FUNCTION_13_0(v19);
    if (!v42)
    {
      sub_220CE1ABC(v19, &qword_27CF951E0, &unk_220DC1D80);
    }
  }

  else
  {
    v43(v34, v19, v22);
  }

  v47 = sub_220DBE440();
  v48 = *(v24 + 8);
  v48(v34, v22);
  if ((v47 & 1) == 0)
  {
    v51 = OUTLINED_FUNCTION_24_8();
    (v48)(v51);
    v37 = v72;
LABEL_13:
    v52 = v85;
    sub_220DBEB50();
    OUTLINED_FUNCTION_13_0(v16);
    if (v42)
    {
      sub_220CE1ABC(v16, &qword_27CF951E0, &unk_220DC1D80);
    }

    else
    {
      v53 = v78;
      (*(v24 + 32))(v78, v16, v22);
      v54 = sub_220DBE430();
      if (v54)
      {
        v86 = v76;
        v55 = v83;
        sub_220D6CEC0(v52, v53, v83, v77);
        OUTLINED_FUNCTION_21();
        (*(v24 + 8))(v53, v22);
        (*(v84 + 8))(v55, v37);
        goto LABEL_42;
      }

      (*(v24 + 8))(v53, v22);
    }

    v56 = v81;
    sub_220DBEB50();
    OUTLINED_FUNCTION_13_0(v56);
    if (v42)
    {
      sub_220CE1ABC(v56, &qword_27CF951E0, &unk_220DC1D80);
    }

    else
    {
      v57 = *(v24 + 32);
      v58 = v79;
      v57(v79, v56, v22);
      v59 = sub_220DBE440();
      if (v59)
      {
        v60 = v74;
        sub_220DBEB30();
        OUTLINED_FUNCTION_13_0(v60);
        if (v42)
        {
          v61 = v73;
          sub_220DBE3F0();
          OUTLINED_FUNCTION_13_0(v60);
          if (!v42)
          {
            sub_220CE1ABC(v60, &qword_27CF951E0, &unk_220DC1D80);
          }
        }

        else
        {
          v61 = v73;
          v57(v73, v60, v22);
        }

        v62 = sub_220DBE430();
        v63 = *(v24 + 8);
        v63(v61, v22);
        if (v62)
        {
          v86 = v76;
          v64 = v79;
          v65 = v83;
          sub_220D6D5B4(v52, v79, v83, v77);
          OUTLINED_FUNCTION_21();
          v63(v64, v22);
          (*(v84 + 8))(v65, v37);
          goto LABEL_42;
        }

        v63(v79, v22);
      }

      else
      {
        (*(v24 + 8))(v58, v22);
      }
    }

    if (v80 == 1)
    {
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10(&qword_280FA6600);
      }

      OUTLINED_FUNCTION_14_0();
      OUTLINED_FUNCTION_11_14();
      OUTLINED_FUNCTION_11();
    }

    else
    {
      if (v75)
      {
        sub_220DBEB40();
        OUTLINED_FUNCTION_21();
LABEL_41:
        (*(v84 + 8))(v83, v37);
        goto LABEL_42;
      }

      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10(&qword_280FA6600);
      }

      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_11();
    }

    sub_220DBE240();
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v67 = OUTLINED_FUNCTION_24_3(v66);
    *(v67 + 16) = xmmword_220DC17A0;
    v68 = sub_220DBEB40();
    v70 = v69;
    *(v67 + 56) = MEMORY[0x277D837D0];
    *(v67 + 64) = sub_220CEFDB0();
    *(v67 + 32) = v68;
    *(v67 + 40) = v70;
    sub_220DC05F0();
    OUTLINED_FUNCTION_21();

    goto LABEL_41;
  }

  v86 = v76;
  v49 = v83;
  sub_220D6C5DC(v85, v36, v83, v77);
  OUTLINED_FUNCTION_21();
  v50 = OUTLINED_FUNCTION_24_8();
  (v48)(v50);
  (*(v84 + 8))(v49, v72);
LABEL_42:
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_24();
}

void sub_220D6E4F8(void *a1@<X8>)
{
  SevereAlertComponentStringsBuilder.description(for:location:currentDate:eventCount:bulletString:)();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_220D6E58C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = sub_220DBE560();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
    goto LABEL_5;
  }

  sub_220DBEB60();
  sub_220DBEB30();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
LABEL_5:
    sub_220CE1ABC(v5, &qword_27CF951E0, &unk_220DC1D80);
    v11 = 0;
    return v11 & 1;
  }

  (*(v7 + 32))(v9, v5, v6);
  sub_220D6E8E0(&qword_280FA7798, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v10 = sub_220DC0580();
  (*(v7 + 8))(v9, v6);
  v11 = v10 ^ 1;
  return v11 & 1;
}

uint64_t sub_220D6E7B0(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_220D81974(result, 1);
  v8 = *v2;
  v9 = *(sub_220DBEB60() - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * v5;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  result = sub_220CFB67C(v10 + v11 * a2, v13 - a2, v12);
  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 - v6;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_220D6E8E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_220D6E930(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_220D6E970(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220D6E9D8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_220D6EA18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t DetailChartDataPoint.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_220DBE560();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for DetailChartDataPoint(uint64_t a1)
{
  result = qword_27CF95CE8;
  if (!qword_27CF95CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DetailChartDataPoint.init(date:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_220DBE560();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for DetailChartDataPoint(0);
  v10 = a4 + *(result + 20);
  *v10 = a2;
  *(v10 + 8) = a3 & 1;
  return result;
}

uint64_t static DetailChartDataPoint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_220DBE460() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for DetailChartDataPoint(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = *(a2 + v4 + 8);
  if (v6)
  {
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v5 != *v7)
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  return 1;
}

WeatherAppSupport::DetailChartLollipopPoint __swiftcall DetailChartLollipopPoint.init(x:y:)(Swift::Double x, Swift::Double_optional y)
{
  *v3 = x;
  *(v3 + 8) = *&y.is_nil;
  *(v3 + 16) = v2 & 1;
  result.y.value = y.value;
  result.y.is_nil = y.is_nil;
  result.x = x;
  return result;
}

uint64_t static DetailChartLollipopPoint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

void sub_220D6ED08(uint64_t a1)
{
  sub_220DBE560();
  if (v1 <= 0x3F)
  {
    sub_220D65D24();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DetailChartLollipopPoint(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DetailChartLollipopPoint(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

BOOL ChartKind.isBarChart.getter()
{
  type metadata accessor for ChartKind(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10_17();
  sub_220D6EF34(v1, v0);
  OUTLINED_FUNCTION_27_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_220D6F900(v0, type metadata accessor for ChartKind);
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95CF8, &qword_220DC5780);
    sub_220CDA548(v0 + *(v4 + 48), &qword_27CF95D00, &qword_220DC5788);
    v5 = OUTLINED_FUNCTION_27_0();
    sub_220CDA548(v5, v6, &qword_220DC5788);
  }

  return EnumCaseMultiPayload == 1;
}

uint64_t type metadata accessor for ChartKind(uint64_t a1)
{
  result = qword_27CF95D18;
  if (!qword_27CF95D18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220D6EF34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChartKind(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL ChartKind.isContinuous.getter()
{
  type metadata accessor for ChartKind(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10_17();
  sub_220D6EF34(v1, v0);
  OUTLINED_FUNCTION_27_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_220D6F900(v0, type metadata accessor for ChartKind);
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95CF8, &qword_220DC5780);
    sub_220CDA548(v0 + *(v4 + 48), &qword_27CF95D00, &qword_220DC5788);
    v5 = OUTLINED_FUNCTION_27_0();
    sub_220CDA548(v5, v6, &qword_220DC5788);
  }

  return EnumCaseMultiPayload != 1;
}

BOOL ChartKind.showSecondLine.getter()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D00, &qword_220DC5788);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_10_17();
  type metadata accessor for ChartKind(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  sub_220D6EF34(v2, v6 - v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_220D6F900(v7, type metadata accessor for ChartKind);
    return 0;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95CF8, &qword_220DC5780);
    sub_220D6F1E8(v7 + *(v9 + 48), v0);
    v10 = type metadata accessor for ChartLineStyle(0);
    v8 = __swift_getEnumTagSinglePayload(v0, 1, v10) != 1;
    OUTLINED_FUNCTION_9_20(v0);
    OUTLINED_FUNCTION_9_20(v7);
  }

  return v8;
}

uint64_t sub_220D6F1E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D00, &qword_220DC5788);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static ChartKind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v88 = type metadata accessor for ChartLineStyle(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v85 = v7 - v6;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D08, &qword_220DC5790);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4();
  v86 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v84 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D00, &qword_220DC5788);
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_4();
  v84 = v15 - v16;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v84 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v89 = &v84 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v84 - v23;
  v25 = type metadata accessor for ChartKind(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_4();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v84 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D10, &qword_220DC5798);
  MEMORY[0x28223BE20](v33 - 8);
  OUTLINED_FUNCTION_10_17();
  v35 = v2 + *(v34 + 56);
  sub_220D6EF34(a1, v2);
  sub_220D6EF34(a2, v35);
  OUTLINED_FUNCTION_27_0();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_220D6EF34(v2, v32);
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95CF8, &qword_220DC5780) + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_26();
      sub_220CDA548(v44, v45, v46);
      OUTLINED_FUNCTION_26();
      sub_220CDA548(v47, v48, v49);
LABEL_10:
      sub_220CDA548(v2, &qword_27CF95D10, &qword_220DC5798);
      return 0;
    }

    v50 = v24;
    sub_220D6F1E8(&v32[v43], v24);
    v51 = v89;
    sub_220D6F1E8(v35 + v43, v89);
    v52 = v87;
    v53 = *(v87 + 48);
    sub_220D6F1E8(v32, v13);
    sub_220D6F1E8(v35, &v13[v53]);
    if (__swift_getEnumTagSinglePayload(v13, 1, v88) == 1)
    {
      OUTLINED_FUNCTION_8_4(&v13[v53]);
      if (!v72)
      {
        goto LABEL_18;
      }

      sub_220CDA548(v13, &qword_27CF95D00, &qword_220DC5788);
    }

    else
    {
      sub_220D6F890(v13, v20);
      OUTLINED_FUNCTION_8_4(&v13[v53]);
      if (v72)
      {
        OUTLINED_FUNCTION_2_27();
        sub_220D6F900(v20, v54);
LABEL_18:
        sub_220CDA548(v13, &qword_27CF95D08, &qword_220DC5790);
LABEL_19:
        OUTLINED_FUNCTION_26();
        sub_220CDA548(v55, v56, v57);
        OUTLINED_FUNCTION_26();
LABEL_30:
        sub_220CDA548(v58, v59, v60);
LABEL_31:
        OUTLINED_FUNCTION_4_18();
        return 0;
      }

      v61 = v85;
      sub_220D6F958(&v13[v53], v85);
      static ChartLineStyle.== infix(_:_:)(v20, v61);
      OUTLINED_FUNCTION_1_31();
      sub_220D6F900(v61, v62);
      sub_220D6F900(v20, v25);
      sub_220CDA548(v13, &qword_27CF95D00, &qword_220DC5788);
      if ((v53 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v63 = *(v52 + 48);
    v64 = v86;
    sub_220D6F890(v50, v86);
    sub_220D6F890(v51, v64 + v63);
    OUTLINED_FUNCTION_8_4(v64);
    if (v72)
    {
      OUTLINED_FUNCTION_26();
      sub_220CDA548(v65, v66, v67);
      OUTLINED_FUNCTION_26();
      sub_220CDA548(v68, v69, v70);
      OUTLINED_FUNCTION_8_4(v64 + v63);
      if (v72)
      {
        sub_220CDA548(v64, &qword_27CF95D00, &qword_220DC5788);
        goto LABEL_35;
      }
    }

    else
    {
      v71 = v84;
      sub_220D6F890(v64, v84);
      OUTLINED_FUNCTION_8_4(v64 + v63);
      if (!v72)
      {
        v81 = v64 + v63;
        v82 = v85;
        sub_220D6F958(v81, v85);
        static ChartLineStyle.== infix(_:_:)(v71, v82);
        OUTLINED_FUNCTION_1_31();
        sub_220D6F900(v82, v83);
        OUTLINED_FUNCTION_9_20(v89);
        OUTLINED_FUNCTION_9_20(v50);
        sub_220D6F900(v71, v25);
        OUTLINED_FUNCTION_9_20(v64);
        if ((v53 & 1) == 0)
        {
          goto LABEL_31;
        }

LABEL_35:
        OUTLINED_FUNCTION_4_18();
        return 1;
      }

      OUTLINED_FUNCTION_26();
      sub_220CDA548(v73, v74, v75);
      OUTLINED_FUNCTION_26();
      sub_220CDA548(v76, v77, v78);
      OUTLINED_FUNCTION_2_27();
      sub_220D6F900(v71, v79);
    }

    v59 = &qword_27CF95D08;
    v60 = &qword_220DC5790;
    v58 = v64;
    goto LABEL_30;
  }

  sub_220D6EF34(v2, v29);
  v36 = *v29;
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_10;
  }

  v38 = *(v29 + 8);
  v37 = *(v29 + 16);
  v39 = *(v35 + 8);
  v40 = *(v35 + 16);
  v41 = MEMORY[0x223D97D10](v36, *v35);

  if (v37 == v40)
  {
    v42 = v41 & (v38 == v39);
  }

  else
  {
    v42 = 0;
  }

  sub_220D6F900(v2, type metadata accessor for ChartKind);
  return v42;
}

uint64_t sub_220D6F890(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D00, &qword_220DC5788);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220D6F900(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_220D6F958(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChartLineStyle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_220D6F9C0(uint64_t a1)
{
  sub_220D6FA34(319);
  if (v1 <= 0x3F)
  {
    sub_220D6FAA8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_220D6FA34(uint64_t a1)
{
  if (!qword_27CF95D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95D00, &qword_220DC5788);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF95D28);
    }
  }
}

ValueMetadata *sub_220D6FAA8()
{
  result = qword_27CF95D30;
  if (!qword_27CF95D30)
  {
    result = &type metadata for DetailChartGradientModel;
    atomic_store(&type metadata for DetailChartGradientModel, &qword_27CF95D30);
  }

  return result;
}

void *sub_220D6FB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  if (sub_220DBE610())
  {
    OUTLINED_FUNCTION_28_5();
    return sub_220D6FC04(a1, a2, a3, v13);
  }

  else if (sub_220DBE640())
  {
    OUTLINED_FUNCTION_28_5();
    return sub_220D705B4(a2, a3, v13);
  }

  else
  {
    OUTLINED_FUNCTION_28_5();
    return sub_220D71634(a4, v10, a2, a3, a6, v13);
  }
}

uint64_t sub_220D6FC04(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v110 = a3;
  v114 = a1;
  sub_220DC0300();
  OUTLINED_FUNCTION_0();
  v108 = v8;
  *&v109 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_21();
  v107 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95228, &unk_220DC1E60);
  OUTLINED_FUNCTION_18(v10);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_22();
  v101 = v12;
  OUTLINED_FUNCTION_6_1();
  v13 = sub_220DC0920();
  OUTLINED_FUNCTION_53_1(v13);
  OUTLINED_FUNCTION_0();
  v100 = v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DC0910();
  OUTLINED_FUNCTION_0();
  v105 = v19;
  v106 = v18;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_21();
  v99 = v20;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95258, &unk_220DC2CF0);
  OUTLINED_FUNCTION_0();
  v103 = v21;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_22();
  v24 = v23;
  OUTLINED_FUNCTION_6_1();
  v112 = sub_220DBEF00();
  OUTLINED_FUNCTION_0();
  v115 = v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  v30 = OUTLINED_FUNCTION_18(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_4();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  v35 = OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_0();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_4();
  v113 = (v39 - v40);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v41);
  v43 = &v92 - v42;
  v44 = a4[1];
  v98 = *a4;
  v111 = v44;
  v97 = a4[2];
  sub_220CEF48C(a2, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v35) == 1)
  {
    v33 = v4;
LABEL_5:
    sub_220CE1ABC(v33, &qword_27CF94F90, &unk_220DC4410);
    if (qword_27CF94F40 != -1)
    {
      OUTLINED_FUNCTION_4_0(&qword_27CF94F40);
    }

    v46 = sub_220DBF410();
    __swift_project_value_buffer(v46, qword_27CF95F48);
    v47 = sub_220DBF3F0();
    v48 = sub_220DC0980();
    if (OUTLINED_FUNCTION_19_10(v48))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_12_16(&dword_220CD1000, v49, v50, "Failed to make today platter string for Wind due to missing extrema values");
      OUTLINED_FUNCTION_17();
    }

    return 0;
  }

  v45 = *(v37 + 32);
  v45(v43, v4, v35);
  sub_220CEF48C(v110, v33);
  if (__swift_getEnumTagSinglePayload(v33, 1, v35) == 1)
  {
    (*(v37 + 8))(v43, v35);
    goto LABEL_5;
  }

  v96 = v43;
  v110 = v37;
  v45(v113, v33, v35);
  if (sub_220DC08F0())
  {
    OUTLINED_FUNCTION_29();
    if (!v52)
    {
      OUTLINED_FUNCTION_10(&qword_280FA6600);
    }
  }

  else
  {
    OUTLINED_FUNCTION_29();
    if (!v52)
    {
      OUTLINED_FUNCTION_10(&qword_280FA6600);
    }
  }

  OUTLINED_FUNCTION_2_0();
  v95 = v53;
  v54 = sub_220DBE240();
  OUTLINED_FUNCTION_29_4(v54);
  v94 = v55;
  sub_220DBEA70();
  v92 = v24;
  sub_220DBEEF0();
  v56 = *(v115 + 8);
  v115 += 8;
  v93 = v56;
  v56(v28, v112);
  v57 = v100;
  v58 = v102;
  (*(v100 + 104))(v17, *MEMORY[0x277D7B490], v102);
  sub_220DBE5E0();
  v59 = v101;
  v60 = OUTLINED_FUNCTION_5_14();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
  sub_220DC07E0();
  v64 = v99;
  sub_220DC0270();

  sub_220CE1ABC(v59, &qword_27CF95228, &unk_220DC1E60);
  (*(v57 + 8))(v17, v58);
  v66 = v107;
  v65 = v108;
  v67 = v109;
  (*(v108 + 104))(v107, *MEMORY[0x277D7B408], v109);
  sub_220DBF100();
  sub_220DBF0D0();
  sub_220D3A63C();
  v68 = v104;
  v69 = v106;
  v70 = v92;
  v71 = sub_220DBE0B0();
  OUTLINED_FUNCTION_53_1(v71);
  v101 = v72;

  (*(v65 + 8))(v66, v67);
  (*(v105 + 8))(v64, v69);
  (*(v103 + 8))(v70, v68);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v74 = OUTLINED_FUNCTION_15_7(v73);
  v109 = xmmword_220DC17C0;
  *(v74 + 16) = xmmword_220DC17C0;
  v75 = MEMORY[0x277D837D0];
  *(v74 + 56) = MEMORY[0x277D837D0];
  v76 = sub_220CEFDB0();
  *(v74 + 64) = v76;
  v77 = v101;
  *(v74 + 32) = v102;
  *(v74 + 40) = v77;
  sub_220DBEA70();
  sub_220DBEED0();
  v93(v28, v112);
  v78 = sub_220DBEEA0();
  *(v74 + 96) = v75;
  *(v74 + 104) = v76;
  *(v74 + 72) = v78;
  *(v74 + 80) = v79;
  v80 = sub_220DC05F0();
  v114 = v81;
  v115 = v80;

  v116[0] = v98;
  v116[1] = v111;
  v116[2] = v97;
  v82 = v96;
  v83 = v113;
  v84 = sub_220D7336C(v96, v113, v116);
  v86 = v85;
  if (qword_280FA6600 != -1)
  {
    OUTLINED_FUNCTION_10(&qword_280FA6600);
  }

  OUTLINED_FUNCTION_2_0();
  sub_220DBE240();
  v87 = OUTLINED_FUNCTION_15_7(v73);
  *(v87 + 16) = v109;
  v88 = MEMORY[0x277D837D0];
  *(v87 + 56) = MEMORY[0x277D837D0];
  *(v87 + 64) = v76;
  v89 = v114;
  *(v87 + 32) = v115;
  *(v87 + 40) = v89;
  *(v87 + 96) = v88;
  *(v87 + 104) = v76;
  *(v87 + 72) = v84;
  *(v87 + 80) = v86;
  v51 = sub_220DC05F0();

  v90 = *(v110 + 8);
  v90(v83, v35);
  v90(v82, v35);
  return v51;
}

void *sub_220D705B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v251 = sub_220DC0300();
  OUTLINED_FUNCTION_0();
  v258 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_21();
  v247 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95228, &unk_220DC1E60);
  OUTLINED_FUNCTION_18(v9);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_22();
  v244 = v11;
  OUTLINED_FUNCTION_6_1();
  v254 = sub_220DC0920();
  OUTLINED_FUNCTION_0();
  v257 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_21();
  v249 = v14;
  OUTLINED_FUNCTION_6_1();
  v246 = sub_220DC0910();
  OUTLINED_FUNCTION_0();
  v252 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_21();
  v245 = v17;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95258, &unk_220DC2CF0);
  OUTLINED_FUNCTION_0();
  v248 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4();
  v253 = v20 - v21;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v22);
  v255 = v228 - v23;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v24);
  v256 = v228 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  v27 = OUTLINED_FUNCTION_18(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_4();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = v228 - v32;
  v34 = sub_220DBF310();
  OUTLINED_FUNCTION_0();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_4();
  v250 = v38 - v39;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v40);
  v42 = v228 - v41;
  v43 = *(a3 + 16);
  v44 = *(a3 + 24);
  sub_220CEF48C(a1, v33);
  if (__swift_getEnumTagSinglePayload(v33, 1, v34) != 1)
  {
    v45 = *(v36 + 32);
    v45(v42, v33, v34);
    sub_220CEF48C(a2, v30);
    if (__swift_getEnumTagSinglePayload(v30, 1, v34) == 1)
    {
      (*(v36 + 8))(v42, v34);
      goto LABEL_5;
    }

    v242 = v34;
    v243 = v36;
    v52 = v250;
    v53 = OUTLINED_FUNCTION_14_4();
    (v45)(v53);
    sub_220DBF2F0();
    v54 = sub_220D3A5F8();
    v55 = v43;
    v56 = v256;
    OUTLINED_FUNCTION_44_1(v55);
    sub_220DBF300();
    v57 = v55;
    v58 = v255;
    OUTLINED_FUNCTION_44_1(v57);
    sub_220DBF2F0();
    OUTLINED_FUNCTION_44_1(v44);
    v59 = OUTLINED_FUNCTION_27_6(v56, v58);
    v241 = v42;
    if ((v59 & 1) != 0 && (sub_220DBE050(), v60 == 0.0) && (sub_220DBE050(), v61 == 0.0))
    {
      if (sub_220DC08F0())
      {
        OUTLINED_FUNCTION_19();
        if (!v62)
        {
          OUTLINED_FUNCTION_10(&qword_280FA6600);
        }

        OUTLINED_FUNCTION_2_0();
        OUTLINED_FUNCTION_21_8();
        v69 = v68 + 3;
        v70 = v54 | 0x8000000000000000;
        v71 = v68 + 108;
      }

      else
      {
        OUTLINED_FUNCTION_19();
        if (!v62)
        {
          OUTLINED_FUNCTION_10(&qword_280FA6600);
        }

        OUTLINED_FUNCTION_2_0();
        OUTLINED_FUNCTION_21_8();
        v69 = v185 + 10;
        v70 = v54 | 0x8000000000000000;
        v71 = v185 + 105;
      }

      v186 = OUTLINED_FUNCTION_10_18(v69, v70, v63, v64, v65, v66, v67, v71);
      OUTLINED_FUNCTION_34_2(v186, v187);
      v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v96 = OUTLINED_FUNCTION_15_7(v188);
      *(v96 + 16) = xmmword_220DC17C0;
      v189 = v257;
      OUTLINED_FUNCTION_13_13();
      v190 = OUTLINED_FUNCTION_59_0();
      v191(v190);
      v192 = sub_220DBE5E0();
      OUTLINED_FUNCTION_31_4(v192);
      v100 = v244;
      v193 = OUTLINED_FUNCTION_5_14();
      __swift_storeEnumTagSinglePayload(v193, v194, v195, v196);
      v197 = sub_220DC07E0();
      OUTLINED_FUNCTION_42_1(v197);

      sub_220CE1ABC(v100, &qword_27CF95228, &unk_220DC1E60);
      v198 = OUTLINED_FUNCTION_26_7();
      v199(v198);
      LODWORD(v235) = *MEMORY[0x277D7B408];
      v108 = v258;
      OUTLINED_FUNCTION_14_16();
      v200 = v251;
      v201(v247);
      v202 = sub_220DBF100();
      v51 = OUTLINED_FUNCTION_40_2(v202, &v260);
      v203 = sub_220D3A63C();
      v204 = OUTLINED_FUNCTION_30_5(v203);
      OUTLINED_FUNCTION_25_9(v204, v205, v206, MEMORY[0x277D7AA40], v207, v208, v209);
      OUTLINED_FUNCTION_33_1();

      v210 = OUTLINED_FUNCTION_35_2();
      v211(v210, v200);
      v212 = OUTLINED_FUNCTION_24_9();
      v213(v212);
      *(v96 + 56) = MEMORY[0x277D837D0];
      v229 = sub_220CEFDB0();
      *(v96 + 64) = v229;
      *(v96 + 32) = v189;
      *(v96 + 40) = v52;
    }

    else
    {
      v72 = OUTLINED_FUNCTION_27_6(v56, v58);
      v73 = sub_220DC08F0();
      if ((v72 & 1) == 0)
      {
        if (v73)
        {
          OUTLINED_FUNCTION_19();
          if (!v62)
          {
            OUTLINED_FUNCTION_10(&qword_280FA6600);
          }

          OUTLINED_FUNCTION_2_0();
          OUTLINED_FUNCTION_21_8();
          v90 = v89 + 77;
          v91 = 0xD000000000000038;
        }

        else
        {
          OUTLINED_FUNCTION_19();
          if (!v62)
          {
            OUTLINED_FUNCTION_10(&qword_280FA6600);
          }

          OUTLINED_FUNCTION_2_0();
          OUTLINED_FUNCTION_21_8();
          v91 = v125 + 2;
          v83 = v72 | 0x8000000000000000;
          v90 = v125 + 66;
        }

        v126 = OUTLINED_FUNCTION_10_18(v91, v83, v84, v85, v86, v87, v88, v90);
        OUTLINED_FUNCTION_29_4(v126);
        v229 = v127;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v128 = swift_allocObject();
        *(v128 + 16) = xmmword_220DC1CC0;
        v129 = sub_220DC0800();
        v228[3] = *MEMORY[0x277D7B490];
        v130 = v257;
        v230 = *(v257 + 104);
        v240 = v257 + 104;
        v131 = OUTLINED_FUNCTION_59_0();
        v132(v131);
        v133 = sub_220DBE5E0();
        OUTLINED_FUNCTION_53_1(v133);
        v134 = v244;
        v135 = OUTLINED_FUNCTION_5_14();
        __swift_storeEnumTagSinglePayload(v135, v136, v137, v138);
        v139 = v245;
        OUTLINED_FUNCTION_45_1(v129);

        sub_220CE1ABC(v134, &qword_27CF95228, &unk_220DC1E60);
        v140 = *(v130 + 8);
        v257 = v130 + 8;
        v239 = v140;
        v141 = OUTLINED_FUNCTION_14_4();
        v142(v141);
        v238 = *MEMORY[0x277D7B408];
        v143 = v258;
        v144 = *(v258 + 104);
        v236 = v258 + 104;
        v237 = v144;
        v145 = v247;
        v144(v247);
        v146 = sub_220DBF100();
        OUTLINED_FUNCTION_40_2(v146, &v261);
        v234 = sub_220D3A63C();
        OUTLINED_FUNCTION_9_9();
        v147 = v246;
        v148 = sub_220DBE0B0();
        v150 = v149;

        v151 = *(v143 + 8);
        v258 = v143 + 8;
        v233 = v151;
        v51 = v251;
        v151(v145, v251);
        v152 = *(v252 + 8);
        v252 += 8;
        v232 = v152;
        v152(v139, v147);
        *(v128 + 56) = MEMORY[0x277D837D0];
        v231 = sub_220CEFDB0();
        *(v128 + 64) = v231;
        *(v128 + 32) = v148;
        *(v128 + 40) = v150;
        OUTLINED_FUNCTION_50_1();
        v153();
        v154 = OUTLINED_FUNCTION_5_14();
        v157 = OUTLINED_FUNCTION_63(v154, v155, v156, &v263);
        OUTLINED_FUNCTION_45_1(v157);

        sub_220CE1ABC(v134, &qword_27CF95228, &unk_220DC1E60);
        OUTLINED_FUNCTION_14_4();
        OUTLINED_FUNCTION_18_12();
        v158();
        OUTLINED_FUNCTION_49_1();
        v159();
        sub_220DBF0D0();
        OUTLINED_FUNCTION_9_9();
        v160 = sub_220DBE0B0();
        v162 = v161;

        OUTLINED_FUNCTION_32_3();
        v163();
        v164 = OUTLINED_FUNCTION_39_2();
        v165(v164);
        OUTLINED_FUNCTION_38_2();
        *(v128 + 96) = v167;
        *(v128 + 104) = v166;
        *(v128 + 72) = v160;
        *(v128 + 80) = v162;
        OUTLINED_FUNCTION_50_1();
        v168();
        v169 = OUTLINED_FUNCTION_5_14();
        v172 = OUTLINED_FUNCTION_63(v169, v170, v171, &v263);
        OUTLINED_FUNCTION_45_1(v172);

        sub_220CE1ABC(v134, &qword_27CF95228, &unk_220DC1E60);
        OUTLINED_FUNCTION_18_12();
        v173();
        OUTLINED_FUNCTION_49_1();
        v174();
        v175 = v235;
        sub_220DBF0D0();
        OUTLINED_FUNCTION_9_9();
        v176 = v259;
        OUTLINED_FUNCTION_46_1();
        OUTLINED_FUNCTION_33_1();

        OUTLINED_FUNCTION_32_3();
        v177();
        v178 = OUTLINED_FUNCTION_39_2();
        v179(v178);
        OUTLINED_FUNCTION_38_2();
        *(v128 + 136) = v181;
        *(v128 + 144) = v180;
        *(v128 + 112) = v175;
        *(v128 + 120) = v52;
        sub_220DC05F0();
        OUTLINED_FUNCTION_17_0();

        v182 = *(v248 + 8);
        v182(v162, v176);
        v182(v255, v176);
        v183 = v256;
        v184 = v176;
        goto LABEL_39;
      }

      if (v73)
      {
        OUTLINED_FUNCTION_19();
        if (!v62)
        {
          OUTLINED_FUNCTION_10(&qword_280FA6600);
        }

        OUTLINED_FUNCTION_2_0();
        OUTLINED_FUNCTION_21_8();
        v80 = v79 + 9;
        v81 = v72 | 0x8000000000000000;
        v82 = v79 + 86;
      }

      else
      {
        OUTLINED_FUNCTION_19();
        if (!v62)
        {
          OUTLINED_FUNCTION_10(&qword_280FA6600);
        }

        OUTLINED_FUNCTION_2_0();
        OUTLINED_FUNCTION_21_8();
        v80 = v92 + 11;
        v81 = v72 | 0x8000000000000000;
        v82 = v92 + 73;
      }

      v93 = OUTLINED_FUNCTION_10_18(v80, v81, v74, v75, v76, v77, v78, v82);
      OUTLINED_FUNCTION_34_2(v93, v94);
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v96 = OUTLINED_FUNCTION_15_7(v95);
      *(v96 + 16) = xmmword_220DC17C0;
      OUTLINED_FUNCTION_13_13();
      v97 = OUTLINED_FUNCTION_59_0();
      v98(v97);
      v99 = sub_220DBE5E0();
      OUTLINED_FUNCTION_31_4(v99);
      v100 = v244;
      v101 = OUTLINED_FUNCTION_5_14();
      __swift_storeEnumTagSinglePayload(v101, v102, v103, v104);
      v105 = sub_220DC07E0();
      OUTLINED_FUNCTION_42_1(v105);

      sub_220CE1ABC(v100, &qword_27CF95228, &unk_220DC1E60);
      v106 = OUTLINED_FUNCTION_26_7();
      v107(v106);
      LODWORD(v235) = *MEMORY[0x277D7B408];
      v108 = v258;
      OUTLINED_FUNCTION_14_16();
      v52 = v251;
      v109(v247);
      v110 = sub_220DBF100();
      v51 = OUTLINED_FUNCTION_40_2(v110, &v260);
      v111 = sub_220D3A63C();
      v112 = OUTLINED_FUNCTION_30_5(v111);
      v118 = OUTLINED_FUNCTION_25_9(v112, v113, v114, MEMORY[0x277D7AA40], v115, v116, v117);
      v120 = v119;

      v121 = OUTLINED_FUNCTION_35_2();
      v122(v121, v52);
      v123 = OUTLINED_FUNCTION_24_9();
      v124(v123);
      *(v96 + 56) = MEMORY[0x277D837D0];
      v229 = sub_220CEFDB0();
      *(v96 + 64) = v229;
      *(v96 + 32) = v118;
      *(v96 + 40) = v120;
    }

    OUTLINED_FUNCTION_59_0();
    OUTLINED_FUNCTION_54_0();
    v214();
    v215 = OUTLINED_FUNCTION_5_14();
    v218 = OUTLINED_FUNCTION_63(v215, v216, v217, &v262);
    OUTLINED_FUNCTION_45_1(v218);

    sub_220CE1ABC(v100, &qword_27CF95228, &unk_220DC1E60);
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_18_12();
    v219();
    OUTLINED_FUNCTION_57_1();
    v220();
    v221 = v232;
    sub_220DBF0D0();
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_33_1();

    OUTLINED_FUNCTION_32_3();
    v222();
    (v252)(v108, v57);
    v223 = v229;
    *(v96 + 96) = MEMORY[0x277D837D0];
    *(v96 + 104) = v223;
    *(v96 + 72) = v221;
    *(v96 + 80) = v52;
    sub_220DC05F0();
    OUTLINED_FUNCTION_17_0();

    v182 = *(v248 + 8);
    v224 = v259;
    v182(v57, v259);
    v182(v255, v224);
    v183 = v256;
    v184 = v224;
LABEL_39:
    v182(v183, v184);
    v225 = v242;
    v226 = *(v243 + 8);
    v226(v250, v242);
    v226(v241, v225);
    return v51;
  }

  v30 = v33;
LABEL_5:
  sub_220CE1ABC(v30, &qword_27CF94F90, &unk_220DC4410);
  if (qword_27CF94F40 != -1)
  {
    OUTLINED_FUNCTION_4_0(&qword_27CF94F40);
  }

  v46 = sub_220DBF410();
  __swift_project_value_buffer(v46, qword_27CF95F48);
  v47 = sub_220DBF3F0();
  v48 = sub_220DC0980();
  if (OUTLINED_FUNCTION_19_10(v48))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_12_16(&dword_220CD1000, v49, v50, "Failed to make yesterday platter string for Wind due to missing extrema values");
    OUTLINED_FUNCTION_17();
  }

  return 0;
}

uint64_t sub_220D71634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v267 = a1;
  v268 = a5;
  v277 = sub_220DC0300();
  OUTLINED_FUNCTION_0();
  v284 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_21();
  v272 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95228, &unk_220DC1E60);
  OUTLINED_FUNCTION_18(v13);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_22();
  v270 = v15;
  OUTLINED_FUNCTION_6_1();
  v279 = sub_220DC0920();
  OUTLINED_FUNCTION_0();
  v282 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_21();
  v269 = v18;
  OUTLINED_FUNCTION_6_1();
  v274 = sub_220DC0910();
  OUTLINED_FUNCTION_0();
  v283 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_21();
  v271 = v21;
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95258, &unk_220DC2CF0);
  OUTLINED_FUNCTION_0();
  v273 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_4();
  v278 = v24 - v25;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v26);
  v276 = &v250 - v27;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v28);
  v280 = &v250 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  v31 = OUTLINED_FUNCTION_18(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_4();
  v34 = v32 - v33;
  MEMORY[0x28223BE20](v35);
  v36 = OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_0();
  v38 = v37;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_4();
  v275 = (v40 - v41);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v42);
  v44 = &v250 - v43;
  v46 = *(a6 + 16);
  v45 = *(a6 + 24);
  sub_220CEF48C(a3, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v36) != 1)
  {
    v47 = *(v38 + 32);
    v47(v44, v6, v36);
    sub_220CEF48C(a4, v34);
    if (__swift_getEnumTagSinglePayload(v34, 1, v36) == 1)
    {
      (*(v38 + 8))(v44, v36);
      goto LABEL_5;
    }

    v265 = v38;
    v266 = v36;
    v47(v275, v34, v36);
    sub_220DBF2F0();
    v54 = sub_220D3A5F8();
    v55 = v46;
    v56 = v280;
    OUTLINED_FUNCTION_44_1(v55);
    sub_220DBF300();
    v57 = v55;
    v58 = v276;
    OUTLINED_FUNCTION_44_1(v57);
    sub_220DBF2F0();
    OUTLINED_FUNCTION_44_1(v45);
    v59 = sub_220DBE520();
    v60 = OUTLINED_FUNCTION_27_6(v56, v58);
    v264 = v44;
    if ((v60 & 1) != 0 && (sub_220DBE050(), v61 == 0.0) && (sub_220DBE050(), v62 == 0.0))
    {
      v63 = sub_220DC08F0();
      switch(v59)
      {
        case 1:
          if (v63)
          {
            OUTLINED_FUNCTION_19();
            if (!v65)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

            OUTLINED_FUNCTION_2_28();
            v198 = v54 | 0x8000000000000000;
            v199 = v201 + 96;
            goto LABEL_144;
          }

          OUTLINED_FUNCTION_19();
          if (!v65)
          {
            OUTLINED_FUNCTION_10(&qword_280FA6600);
          }

          OUTLINED_FUNCTION_2_28();
          v197 = v204 + 6;
          v198 = v54 | 0x8000000000000000;
          v199 = v204 + 87;
          goto LABEL_171;
        case 2:
          OUTLINED_FUNCTION_12_19();
          if (v191)
          {
            OUTLINED_FUNCTION_29();
            if (!v65)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

            OUTLINED_FUNCTION_2_0();
            v197 = v54 + 1;
            v198 = v57 | 0x8000000000000000;
            v199 = v54 + 97;
          }

          else
          {
            OUTLINED_FUNCTION_29();
            if (!v65)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

            OUTLINED_FUNCTION_2_0();
            v197 = v54 + 7;
            v198 = v57 | 0x8000000000000000;
            v199 = v54 + 88;
          }

          goto LABEL_171;
        case 3:
          OUTLINED_FUNCTION_12_19();
          if (v200)
          {
            OUTLINED_FUNCTION_29();
            if (!v65)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

            OUTLINED_FUNCTION_2_0();
            v197 = v54 + 3;
            goto LABEL_149;
          }

          OUTLINED_FUNCTION_29();
          if (!v65)
          {
            OUTLINED_FUNCTION_10(&qword_280FA6600);
          }

          OUTLINED_FUNCTION_2_0();
          v197 = v54 + 9;
          v198 = v57 | 0x8000000000000000;
          v199 = v54 + 90;
          goto LABEL_171;
        case 4:
          OUTLINED_FUNCTION_12_19();
          if (v190)
          {
            OUTLINED_FUNCTION_29();
            if (!v65)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

            goto LABEL_148;
          }

          OUTLINED_FUNCTION_29();
          if (!v65)
          {
            OUTLINED_FUNCTION_10(&qword_280FA6600);
          }

          goto LABEL_170;
        case 5:
          OUTLINED_FUNCTION_12_19();
          if (v202)
          {
            OUTLINED_FUNCTION_29();
            if (!v65)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

            goto LABEL_143;
          }

          OUTLINED_FUNCTION_29();
          if (!v65)
          {
            OUTLINED_FUNCTION_10(&qword_280FA6600);
          }

          goto LABEL_167;
        case 6:
          OUTLINED_FUNCTION_12_19();
          if (v203)
          {
            OUTLINED_FUNCTION_29();
            if (!v65)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

LABEL_148:
            OUTLINED_FUNCTION_2_0();
            v197 = v54 + 2;
LABEL_149:
            v198 = v57 | 0x8000000000000000;
            v199 = v54 + 98;
          }

          else
          {
            OUTLINED_FUNCTION_29();
            if (!v65)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

LABEL_170:
            OUTLINED_FUNCTION_2_0();
            v197 = v54 + 8;
            v198 = v57 | 0x8000000000000000;
            v199 = v54 + 89;
          }

          goto LABEL_171;
        default:
          OUTLINED_FUNCTION_12_19();
          if (v64)
          {
            OUTLINED_FUNCTION_29();
            if (!v65)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

LABEL_143:
            OUTLINED_FUNCTION_2_0();
            v198 = v57 | 0x8000000000000000;
            v199 = v54 + 96;
LABEL_144:
            v197 = 0xD00000000000003ELL;
          }

          else
          {
            OUTLINED_FUNCTION_29();
            if (!v65)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

LABEL_167:
            OUTLINED_FUNCTION_2_0();
            v197 = v54 + 6;
            v198 = v57 | 0x8000000000000000;
            v199 = v54 + 87;
          }

LABEL_171:
          v205 = OUTLINED_FUNCTION_10_18(v197, v198, v192, v193, v194, v195, v196, v199);
          v267 = v206;
          v268 = v205;
          v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
          v208 = OUTLINED_FUNCTION_15_7(v207);
          *(v208 + 16) = xmmword_220DC17C0;
          v209 = v282;
          OUTLINED_FUNCTION_13_13();
          v210 = v269;
          OUTLINED_FUNCTION_58_1();
          v211();
          v212 = sub_220DBE5E0();
          OUTLINED_FUNCTION_31_4(v212);
          v213 = v270;
          OUTLINED_FUNCTION_9_8();
          __swift_storeEnumTagSinglePayload(v214, v215, v216, v217);
          sub_220DC07E0();
          v218 = v271;
          sub_220DC0270();

          sub_220CE1ABC(v213, &qword_27CF95228, &unk_220DC1E60);
          v219 = *(v209 + 8);
          v282 = v209 + 8;
          v260 = v219;
          v219(v210, v57);
          v259 = *MEMORY[0x277D7B408];
          v220 = v284;
          OUTLINED_FUNCTION_14_16();
          v221 = v272;
          v222 = v277;
          v223(v272);
          v224 = sub_220DBF100();
          OUTLINED_FUNCTION_40_2(v224, &v285);
          v225 = sub_220D3A63C();
          OUTLINED_FUNCTION_30_5(v225);
          v226 = v218;
          v231 = OUTLINED_FUNCTION_61_0(v218, v221, v227, MEMORY[0x277D7AA40], v228, v229, v230);
          OUTLINED_FUNCTION_51_1(v231, v232);

          v233 = *(v220 + 8);
          v284 = v220 + 8;
          v254 = v233;
          v233(v221, v222);
          v234 = *(v283 + 8);
          v283 += 8;
          v253 = v234;
          v234(v218, v218);
          *(v208 + 56) = MEMORY[0x277D837D0];
          v252 = sub_220CEFDB0();
          *(v208 + 64) = v252;
          v235 = v250;
          *(v208 + 32) = v251;
          *(v208 + 40) = v235;
          OUTLINED_FUNCTION_58_1();
          OUTLINED_FUNCTION_54_0();
          v236();
          OUTLINED_FUNCTION_9_8();
          OUTLINED_FUNCTION_63(v237, v238, v239, &v287);
          sub_220DC0270();

          sub_220CE1ABC(v213, &qword_27CF95228, &unk_220DC1E60);
          OUTLINED_FUNCTION_18_12();
          v240();
          v241 = v277;
          OUTLINED_FUNCTION_57_1();
          v242();
          v53 = sub_220DBF0D0();
          v186 = v281;
          v243 = v278;
          v244 = v278;
          sub_220DBE0B0();
          OUTLINED_FUNCTION_33_1();

          v254(v221, v241);
          OUTLINED_FUNCTION_32_3();
          v245();
          v246 = v252;
          *(v208 + 96) = MEMORY[0x277D837D0];
          *(v208 + 104) = v246;
          *(v208 + 72) = v244;
          *(v208 + 80) = v226;
          OUTLINED_FUNCTION_52();
          sub_220DC05F0();
          OUTLINED_FUNCTION_17_0();

          v142 = *(v273 + 8);
          v142(v243, v186);
          break;
      }
    }

    else
    {
      v66 = OUTLINED_FUNCTION_27_6(v56, v58);
      v67 = sub_220DC08F0();
      if (v66)
      {
        switch(v59)
        {
          case 1:
            OUTLINED_FUNCTION_12_19();
            if (v92)
            {
              OUTLINED_FUNCTION_29();
              if (!v65)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              goto LABEL_56;
            }

            OUTLINED_FUNCTION_29();
            if (!v65)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

            goto LABEL_106;
          case 2:
            OUTLINED_FUNCTION_12_19();
            if (v77)
            {
              OUTLINED_FUNCTION_29();
              if (!v65)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              OUTLINED_FUNCTION_2_0();
              v83 = v66 + 8;
              v84 = v57 | 0x8000000000000000;
              v85 = v66 + 71;
            }

            else
            {
              OUTLINED_FUNCTION_29();
              if (!v65)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              OUTLINED_FUNCTION_2_0();
              v83 = v66 + 9;
              v84 = v57 | 0x8000000000000000;
              v85 = v66 + 57;
            }

            goto LABEL_119;
          case 3:
            if (v67)
            {
              OUTLINED_FUNCTION_19();
              if (!v65)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              OUTLINED_FUNCTION_2_28();
              v83 = v90 + 10;
              goto LABEL_66;
            }

            OUTLINED_FUNCTION_19();
            if (!v65)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

            OUTLINED_FUNCTION_2_28();
            v83 = v97 + 11;
            v84 = v66 | 0x8000000000000000;
            v85 = v97 + 59;
            goto LABEL_119;
          case 4:
            OUTLINED_FUNCTION_12_19();
            if (v75)
            {
              OUTLINED_FUNCTION_29();
              if (!v65)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              goto LABEL_74;
            }

            OUTLINED_FUNCTION_29();
            if (!v65)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

            goto LABEL_118;
          case 5:
            if (v67)
            {
              OUTLINED_FUNCTION_19();
              if (!v65)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              OUTLINED_FUNCTION_2_28();
              v83 = v90 + 7;
LABEL_66:
              v84 = v66 | 0x8000000000000000;
              v85 = v90 + 70;
            }

            else
            {
              OUTLINED_FUNCTION_19();
              if (!v65)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              OUTLINED_FUNCTION_2_28();
              v83 = v99 + 8;
              v84 = v66 | 0x8000000000000000;
              v85 = v99 + 56;
            }

            goto LABEL_119;
          case 6:
            OUTLINED_FUNCTION_12_19();
            if (v95)
            {
              OUTLINED_FUNCTION_29();
              if (!v65)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

LABEL_74:
              OUTLINED_FUNCTION_2_0();
              v83 = v66 + 9;
              v84 = v57 | 0x8000000000000000;
              v85 = v66 + 69;
            }

            else
            {
              OUTLINED_FUNCTION_29();
              if (!v65)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

LABEL_118:
              OUTLINED_FUNCTION_2_0();
              v83 = v66 + 10;
              v84 = v57 | 0x8000000000000000;
              v85 = v66 + 58;
            }

LABEL_119:
            v101 = OUTLINED_FUNCTION_10_18(v83, v84, v78, v79, v80, v81, v82, v85);
            OUTLINED_FUNCTION_51_1(v101, v102);
            v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
            v104 = OUTLINED_FUNCTION_15_7(v103);
            *(v104 + 16) = xmmword_220DC17C0;
            v105 = v282;
            v106 = *(v282 + 104);
            v267 = v282 + 104;
            v268 = v106;
            v107 = v269;
            OUTLINED_FUNCTION_58_1();
            v108();
            v109 = sub_220DBE5E0();
            OUTLINED_FUNCTION_53_1(v109);
            v110 = v270;
            OUTLINED_FUNCTION_9_8();
            __swift_storeEnumTagSinglePayload(v111, v112, v113, v114);
            sub_220DC07E0();
            v115 = v271;
            sub_220DC0270();

            sub_220CE1ABC(v110, &qword_27CF95228, &unk_220DC1E60);
            v116 = *(v105 + 8);
            v282 = v105 + 8;
            v262 = v116;
            v116(v107, v57);
            v261 = *MEMORY[0x277D7B408];
            v117 = v284;
            OUTLINED_FUNCTION_37_2();
            v118 = v272;
            v119 = v277;
            v120(v272);
            v121 = sub_220DBF100();
            OUTLINED_FUNCTION_40_2(v121, &v286);
            v257 = sub_220D3A63C();
            v253 = OUTLINED_FUNCTION_61_0(v115, v118, v122, MEMORY[0x277D7AA40], v123, v124, v257);
            v252 = v125;

            v126 = *(v117 + 8);
            v284 = v117 + 8;
            v256 = v126;
            v126(v118, v119);
            v127 = *(v283 + 8);
            v283 += 8;
            v255 = v127;
            v127(v115, v46);
            *(v104 + 56) = MEMORY[0x277D837D0];
            v254 = sub_220CEFDB0();
            *(v104 + 64) = v254;
            v128 = v252;
            *(v104 + 32) = v253;
            *(v104 + 40) = v128;
            (v268)(v107, *MEMORY[0x277D7B498], v279);
            OUTLINED_FUNCTION_9_8();
            OUTLINED_FUNCTION_63(v129, v130, v131, &v289);
            sub_220DC0270();

            sub_220CE1ABC(v110, &qword_27CF95228, &unk_220DC1E60);
            OUTLINED_FUNCTION_18_12();
            v132();
            v133 = v277;
            OUTLINED_FUNCTION_16_16();
            v134();
            v53 = sub_220DBF0D0();
            v135 = v281;
            v136 = v278;
            v137 = sub_220DBE0B0();
            v139 = v138;

            v256(v118, v133);
            OUTLINED_FUNCTION_32_3();
            v140();
            v141 = v254;
            *(v104 + 96) = MEMORY[0x277D837D0];
            *(v104 + 104) = v141;
            *(v104 + 72) = v137;
            *(v104 + 80) = v139;
            OUTLINED_FUNCTION_52();
            sub_220DC05F0();
            OUTLINED_FUNCTION_17_0();

            v142 = *(v273 + 8);
            v142(v136, v135);
            v142(v276, v135);
            v143 = v280;
            v144 = v135;
            break;
          default:
            OUTLINED_FUNCTION_12_19();
            if (v68)
            {
              OUTLINED_FUNCTION_29();
              if (!v65)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

LABEL_56:
              OUTLINED_FUNCTION_2_0();
              v83 = v66 + 7;
              v84 = v57 | 0x8000000000000000;
              v85 = v66 + 70;
            }

            else
            {
              OUTLINED_FUNCTION_29();
              if (!v65)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

LABEL_106:
              OUTLINED_FUNCTION_2_0();
              v83 = v66 + 8;
              v84 = v57 | 0x8000000000000000;
              v85 = v66 + 56;
            }

            goto LABEL_119;
        }

        goto LABEL_173;
      }

      switch(v59)
      {
        case 1:
          OUTLINED_FUNCTION_12_19();
          if (v93)
          {
            OUTLINED_FUNCTION_29();
            if (!v65)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

            v74 = qword_280FA6608;
            goto LABEL_61;
          }

          OUTLINED_FUNCTION_29();
          if (!v65)
          {
            OUTLINED_FUNCTION_10(&qword_280FA6600);
          }

          goto LABEL_109;
        case 2:
          OUTLINED_FUNCTION_12_19();
          if (v86)
          {
            OUTLINED_FUNCTION_29();
            if (!v65)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

            v87 = OUTLINED_FUNCTION_36_2();
            v89 = v66 + 63;
            goto LABEL_123;
          }

          OUTLINED_FUNCTION_29();
          if (!v65)
          {
            OUTLINED_FUNCTION_10(&qword_280FA6600);
          }

          OUTLINED_FUNCTION_2_0();
          v88 = v57 | 0x8000000000000000;
          v89 = v66 + 50;
          goto LABEL_91;
        case 3:
          if (v67)
          {
            OUTLINED_FUNCTION_19();
            if (!v65)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

            OUTLINED_FUNCTION_3_25();
            v87 = v91 | 1;
            v88 = v66 | 0x8000000000000000;
            v89 = v91 | 0x41;
          }

          else
          {
            OUTLINED_FUNCTION_19();
            if (!v65)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

            OUTLINED_FUNCTION_2_28();
            v87 = v98 + 2;
            v88 = v66 | 0x8000000000000000;
            v89 = v98 + 52;
          }

          goto LABEL_123;
        case 4:
          OUTLINED_FUNCTION_12_19();
          if (v76)
          {
            OUTLINED_FUNCTION_29();
            if (!v65)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

            goto LABEL_78;
          }

          OUTLINED_FUNCTION_29();
          if (!v65)
          {
            OUTLINED_FUNCTION_10(&qword_280FA6600);
          }

          goto LABEL_122;
        case 5:
          if (v67)
          {
            OUTLINED_FUNCTION_19();
            if (!v65)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

            OUTLINED_FUNCTION_3_25();
            v87 = v94 - 2;
            v88 = v66 | 0x8000000000000000;
            v89 = v94 + 62;
          }

          else
          {
            OUTLINED_FUNCTION_19();
            if (!v65)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

            OUTLINED_FUNCTION_3_25();
            v87 = v100 - 1;
            v88 = v66 | 0x8000000000000000;
            v89 = v100 + 49;
          }

          goto LABEL_123;
        case 6:
          OUTLINED_FUNCTION_12_19();
          if (v96)
          {
            OUTLINED_FUNCTION_29();
            if (!v65)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

LABEL_78:
            OUTLINED_FUNCTION_2_0();
            v88 = v57 | 0x8000000000000000;
            v89 = v66 + 64;
LABEL_91:
            v87 = 0xD00000000000003ELL;
          }

          else
          {
            OUTLINED_FUNCTION_29();
            if (!v65)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

LABEL_122:
            OUTLINED_FUNCTION_2_0();
            v87 = v66 + 1;
            v88 = v57 | 0x8000000000000000;
            v89 = v66 + 51;
          }

LABEL_123:
          v145 = OUTLINED_FUNCTION_10_18(v87, v88, v70, v71, v74, v72, v73, v89);
          OUTLINED_FUNCTION_29_4(v145);
          v251 = v146;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
          v147 = swift_allocObject();
          *(v147 + 16) = xmmword_220DC1CC0;
          sub_220DC0800();
          LODWORD(v253) = *MEMORY[0x277D7B490];
          v148 = v282;
          v149 = *(v282 + 104);
          v267 = v282 + 104;
          v268 = v149;
          v150 = v269;
          v151 = v279;
          v149(v269);
          v262 = sub_220DBE5E0();
          v152 = v270;
          OUTLINED_FUNCTION_9_8();
          __swift_storeEnumTagSinglePayload(v153, v154, v155, v156);
          v157 = v271;
          sub_220DC0270();

          sub_220CE1ABC(v152, &qword_27CF95228, &unk_220DC1E60);
          v158 = *(v148 + 8);
          v282 = v148 + 8;
          v263 = v158;
          v158(v150, v151);
          v261 = *MEMORY[0x277D7B408];
          v159 = v284;
          OUTLINED_FUNCTION_37_2();
          v160 = v272;
          v161(v272);
          v162 = sub_220DBF100();
          OUTLINED_FUNCTION_40_2(v162, &v286);
          v257 = sub_220D3A63C();
          v163 = v274;
          v164 = sub_220DBE0B0();
          v166 = v165;

          v254 = *(v159 + 8);
          v284 = v159 + 8;
          v167 = v277;
          v254(v160, v277);
          v256 = *(v283 + 8);
          v283 += 8;
          v256(v157, v163);
          *(v147 + 56) = MEMORY[0x277D837D0];
          v255 = sub_220CEFDB0();
          *(v147 + 64) = v255;
          *(v147 + 32) = v164;
          *(v147 + 40) = v166;
          OUTLINED_FUNCTION_58_1();
          (v268)();
          OUTLINED_FUNCTION_9_8();
          OUTLINED_FUNCTION_63(v168, v169, v170, &v288);
          v171 = v157;
          sub_220DC0270();

          sub_220CE1ABC(v152, &qword_27CF95228, &unk_220DC1E60);
          OUTLINED_FUNCTION_18_12();
          v172();
          OUTLINED_FUNCTION_16_16();
          v173();
          sub_220DBF0D0();
          v174 = v274;
          v175 = sub_220DBE0B0();
          v177 = v176;

          v254(v160, v167);
          v256(v171, v174);
          OUTLINED_FUNCTION_38_2();
          *(v147 + 96) = v179;
          *(v147 + 104) = v178;
          *(v147 + 72) = v175;
          *(v147 + 80) = v177;
          (v268)(v150, *MEMORY[0x277D7B498], v279);
          OUTLINED_FUNCTION_9_8();
          OUTLINED_FUNCTION_63(v180, v181, v182, &v288);
          sub_220DC0270();

          sub_220CE1ABC(v152, &qword_27CF95228, &unk_220DC1E60);
          OUTLINED_FUNCTION_18_12();
          v183();
          OUTLINED_FUNCTION_16_16();
          v184();
          v185 = v258;
          v53 = sub_220DBF0D0();
          v186 = v281;
          OUTLINED_FUNCTION_46_1();
          OUTLINED_FUNCTION_33_1();

          v187 = OUTLINED_FUNCTION_9_9();
          (v254)(v187);
          v256(v171, v174);
          OUTLINED_FUNCTION_38_2();
          *(v147 + 136) = v189;
          *(v147 + 144) = v188;
          *(v147 + 112) = v185;
          *(v147 + 120) = v174;
          OUTLINED_FUNCTION_52();
          sub_220DC05F0();
          OUTLINED_FUNCTION_17_0();

          v142 = *(v273 + 8);
          v142(v152, v186);
          break;
        default:
          OUTLINED_FUNCTION_12_19();
          if (v69)
          {
            OUTLINED_FUNCTION_29();
            if (!v65)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

            v74 = qword_280FA6608;
LABEL_61:
            v87 = v66 - 2;
            v88 = v57 | 0x8000000000000000;
            v89 = v66 + 62;
          }

          else
          {
            OUTLINED_FUNCTION_29();
            if (!v65)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

LABEL_109:
            v87 = OUTLINED_FUNCTION_36_2();
            v89 = v66 + 49;
          }

          goto LABEL_123;
      }
    }

    v142(v276, v186);
    v143 = v280;
    v144 = v186;
LABEL_173:
    v142(v143, v144);
    v247 = *(v265 + 8);
    v248 = v266;
    v247(v275, v266);
    v247(v264, v248);
    return v53;
  }

  v34 = v6;
LABEL_5:
  sub_220CE1ABC(v34, &qword_27CF94F90, &unk_220DC4410);
  if (qword_27CF94F40 != -1)
  {
    OUTLINED_FUNCTION_4_0(&qword_27CF94F40);
  }

  v48 = sub_220DBF410();
  __swift_project_value_buffer(v48, qword_27CF95F48);
  v49 = sub_220DBF3F0();
  v50 = sub_220DC0980();
  if (OUTLINED_FUNCTION_19_10(v50))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_12_16(&dword_220CD1000, v51, v52, "Failed to make future day platter string for Wind due to missing extrema values");
    OUTLINED_FUNCTION_17();
  }

  return 0;
}

uint64_t sub_220D7336C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v138 = sub_220DC0300();
  v144 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v132 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95228, &unk_220DC1E60);
  MEMORY[0x28223BE20](v5 - 8);
  v131 = &v114 - v6;
  v141 = sub_220DC0920();
  v143 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v8 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_220DC0910();
  v140 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v135 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95258, &unk_220DC2CF0);
  v134 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v114 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v114 - v17;
  v19 = *(a3 + 16);
  v20 = *(a3 + 24);
  sub_220DBF2F0();
  sub_220D3A5F8();
  v21 = v19;
  sub_220DBE040();
  sub_220DBF300();
  v21;
  sub_220DBE040();
  sub_220DBF2F0();
  sub_220DBE040();
  v22 = sub_220DBE020();
  v142 = v10;
  v133 = v13;
  v137 = v16;
  v139 = v18;
  if (v22)
  {
    sub_220DBE050();
    if (v23 == 0.0)
    {
      sub_220DBE050();
      if (v24 == 0.0)
      {
        if (sub_220DC08F0())
        {
          if (qword_280FA6600 == -1)
          {
            goto LABEL_19;
          }
        }

        else if (qword_280FA6600 == -1)
        {
LABEL_19:
          v129 = sub_220DBE240();
          v130 = v92;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
          v29 = swift_allocObject();
          *(v29 + 16) = xmmword_220DC17C0;
          v93 = *MEMORY[0x277D7B490];
          v94 = v143;
          v95 = *(v143 + 104);
          v127 = (v143 + 104);
          v128 = v95;
          v96 = v8;
          v97 = v141;
          v95(v8, v93, v141);
          v126 = sub_220DBE5E0();
          v98 = v131;
          __swift_storeEnumTagSinglePayload(v131, 1, 1, v126);
          sub_220DC07E0();
          v99 = v135;
          sub_220DC0270();

          sub_220CE1ABC(v98, &qword_27CF95228, &unk_220DC1E60);
          v100 = *(v94 + 8);
          v143 = v94 + 8;
          v125 = v100;
          v100(v96, v97);
          LODWORD(v124) = *MEMORY[0x277D7B408];
          v101 = *(v144 + 104);
          v120 = (v144 + 104);
          v123 = v101;
          v102 = v132;
          v103 = v138;
          v101(v132);
          v122 = sub_220DBF100();
          sub_220DBF0D0();
          v121 = sub_220D3A63C();
          v104 = v136;
          v105 = sub_220DBE0B0();
          v107 = v106;

          v119 = *(v144 + 8);
          v144 += 8;
          v119(v102, v103);
          v140 = *(v140 + 8);
          (v140)(v99, v104);
          *(v29 + 56) = MEMORY[0x277D837D0];
          v118 = sub_220CEFDB0();
          *(v29 + 64) = v118;
          *(v29 + 32) = v105;
          *(v29 + 40) = v107;
          v108 = v141;
          v128(v96, *MEMORY[0x277D7B498], v141);
          __swift_storeEnumTagSinglePayload(v98, 1, 1, v126);
          sub_220DC07E0();
          sub_220DC0270();

          sub_220CE1ABC(v98, &qword_27CF95228, &unk_220DC1E60);
          v125(v96, v108);
          v109 = v138;
          v123(v102, v124, v138);
          sub_220DBF0D0();
          v50 = v104;
          v51 = v133;
          v52 = sub_220DBE0B0();
          v54 = v110;

          v119(v102, v109);
          v49 = v142;
          v55 = v99;
          goto LABEL_20;
        }

        swift_once();
        goto LABEL_19;
      }
    }
  }

  v25 = sub_220DBE020();
  v26 = sub_220DC08F0();
  if (v25)
  {
    if (v26)
    {
      if (qword_280FA6600 == -1)
      {
        goto LABEL_15;
      }
    }

    else if (qword_280FA6600 == -1)
    {
LABEL_15:
      v129 = sub_220DBE240();
      v130 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_220DC17C0;
      v30 = *MEMORY[0x277D7B490];
      v31 = v143;
      v32 = *(v143 + 104);
      v127 = (v143 + 104);
      v128 = v32;
      v33 = v8;
      v34 = v141;
      v32(v8, v30, v141);
      v126 = sub_220DBE5E0();
      v35 = v131;
      __swift_storeEnumTagSinglePayload(v131, 1, 1, v126);
      sub_220DC07E0();
      v36 = v135;
      sub_220DC0270();

      sub_220CE1ABC(v35, &qword_27CF95228, &unk_220DC1E60);
      v37 = *(v31 + 8);
      v143 = v31 + 8;
      v125 = v37;
      v37(v8, v34);
      LODWORD(v124) = *MEMORY[0x277D7B408];
      v38 = v144;
      v39 = *(v144 + 104);
      v122 = v144 + 104;
      v123 = v39;
      v40 = v132;
      v41 = v138;
      v39(v132);
      v121 = sub_220DBF100();
      sub_220DBF0D0();
      v120 = sub_220D3A63C();
      v42 = v36;
      v43 = v136;
      v44 = sub_220DBE0B0();
      v117 = v45;

      v46 = *(v38 + 8);
      v144 = v38 + 8;
      v119 = v46;
      v46(v40, v41);
      v140 = *(v140 + 8);
      (v140)(v42, v43);
      *(v29 + 56) = MEMORY[0x277D837D0];
      v118 = sub_220CEFDB0();
      *(v29 + 64) = v118;
      v47 = v117;
      *(v29 + 32) = v44;
      *(v29 + 40) = v47;
      v48 = v141;
      v49 = v142;
      v128(v33, *MEMORY[0x277D7B498], v141);
      __swift_storeEnumTagSinglePayload(v35, 1, 1, v126);
      sub_220DC07E0();
      sub_220DC0270();

      sub_220CE1ABC(v35, &qword_27CF95228, &unk_220DC1E60);
      v125(v33, v48);
      v123(v40, v124, v41);
      sub_220DBF0D0();
      v50 = v136;
      v51 = v133;
      v52 = sub_220DBE0B0();
      v54 = v53;

      v119(v40, v138);
      v55 = v42;
LABEL_20:
      (v140)(v55, v50);
      v111 = v118;
      *(v29 + 96) = MEMORY[0x277D837D0];
      *(v29 + 104) = v111;
      *(v29 + 72) = v52;
      *(v29 + 80) = v54;
      v91 = sub_220DC05F0();
      v83 = v137;
      goto LABEL_21;
    }

    swift_once();
    goto LABEL_15;
  }

  if (v26)
  {
    v27 = v138;
    if (qword_280FA6600 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_23;
  }

  v27 = v138;
  if (qword_280FA6600 != -1)
  {
LABEL_23:
    swift_once();
  }

LABEL_17:
  v117 = sub_220DBE240();
  v130 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_220DC1CC0;
  sub_220DC0800();
  v116 = *MEMORY[0x277D7B490];
  v58 = v143;
  v59 = *(v143 + 104);
  v128 = (v143 + 104);
  v129 = v59;
  v60 = v8;
  v61 = v141;
  v59(v8);
  v126 = sub_220DBE5E0();
  v62 = v131;
  __swift_storeEnumTagSinglePayload(v131, 1, 1, v126);
  v63 = v135;
  sub_220DC0270();

  sub_220CE1ABC(v62, &qword_27CF95228, &unk_220DC1E60);
  v64 = *(v58 + 8);
  v143 = v58 + 8;
  v127 = v64;
  v64(v8, v61);
  LODWORD(v125) = *MEMORY[0x277D7B408];
  v65 = v144;
  v66 = *(v144 + 104);
  v123 = (v144 + 104);
  v124 = v66;
  v67 = v132;
  v66(v132);
  v118 = sub_220DBF100();
  sub_220DBF0D0();
  v122 = sub_220D3A63C();
  v68 = v136;
  v69 = sub_220DBE0B0();
  v115 = v70;

  v71 = *(v65 + 8);
  v144 = v65 + 8;
  v121 = v71;
  v71(v67, v27);
  v72 = *(v140 + 8);
  v140 += 8;
  v120 = v72;
  v72(v63, v68);
  *(v57 + 56) = MEMORY[0x277D837D0];
  v119 = sub_220CEFDB0();
  *(v57 + 64) = v119;
  v73 = v115;
  *(v57 + 32) = v69;
  *(v57 + 40) = v73;
  v74 = v141;
  v129(v60, v116, v141);
  __swift_storeEnumTagSinglePayload(v62, 1, 1, v126);
  sub_220DC07E0();
  sub_220DC0270();

  sub_220CE1ABC(v62, &qword_27CF95228, &unk_220DC1E60);
  v127(v60, v74);
  v75 = v27;
  v124(v67, v125, v27);
  sub_220DBF0D0();
  v76 = sub_220DBE0B0();
  v78 = v77;

  v121(v67, v75);
  v79 = v68;
  v120(v63, v68);
  v80 = v119;
  *(v57 + 96) = MEMORY[0x277D837D0];
  *(v57 + 104) = v80;
  *(v57 + 72) = v76;
  *(v57 + 80) = v78;
  v81 = v141;
  v49 = v142;
  v129(v60, *MEMORY[0x277D7B498], v141);
  __swift_storeEnumTagSinglePayload(v62, 1, 1, v126);
  sub_220DC07E0();
  sub_220DC0270();

  sub_220CE1ABC(v62, &qword_27CF95228, &unk_220DC1E60);
  v82 = v60;
  v83 = v137;
  v127(v82, v81);
  v84 = v67;
  v85 = v138;
  v124(v67, v125, v138);
  sub_220DBF0D0();
  v86 = v133;
  v87 = sub_220DBE0B0();
  v89 = v88;

  v121(v84, v85);
  v120(v135, v79);
  v90 = v119;
  *(v57 + 136) = MEMORY[0x277D837D0];
  *(v57 + 144) = v90;
  *(v57 + 112) = v87;
  *(v57 + 120) = v89;
  v51 = v86;
  v91 = sub_220DC05F0();
LABEL_21:

  v112 = *(v134 + 8);
  v112(v51, v49);
  v112(v83, v49);
  v112(v139, v49);
  return v91;
}

void OUTLINED_FUNCTION_37_2()
{
  v2 = *(v0 + 104);
  *(v1 - 312) = v0 + 104;
  *(v1 - 304) = v2;
}

uint64_t OUTLINED_FUNCTION_40_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = a1;

  return sub_220DBF0D0();
}

uint64_t OUTLINED_FUNCTION_42_1(uint64_t a1)
{

  return sub_220DC0270();
}

uint64_t OUTLINED_FUNCTION_44_1(uint64_t a1)
{

  return sub_220DBE040();
}

uint64_t OUTLINED_FUNCTION_45_1(uint64_t a1)
{

  return sub_220DC0270();
}

uint64_t OUTLINED_FUNCTION_46_1()
{

  return sub_220DBE0B0();
}

uint64_t OUTLINED_FUNCTION_51_1(uint64_t result, uint64_t a2)
{
  *(v2 - 376) = result;
  *(v2 - 384) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_61_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_220DBE0B0();
}

uint64_t OUTLINED_FUNCTION_62_0()
{

  return sub_220DBF310();
}

uint64_t OUTLINED_FUNCTION_63@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, *(a4 - 256));

  return sub_220DC07E0();
}

uint64_t SunriseSunsetDetailChartContent.init(model:style:sampleBlocks:)@<X0>(uint64_t *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_220D7B5E8(a1, a4);
  v8 = type metadata accessor for SunriseSunsetDetailChartContent(0);
  memcpy((a4 + *(v8 + 20)), a2, 0x90uLL);
  v9 = sub_220D7494C(a1, a3);

  result = sub_220D7B644(a1, type metadata accessor for SunriseSunsetDetailChartViewModel);
  *(a4 + *(v8 + 24)) = v9;
  return result;
}

uint64_t type metadata accessor for SunriseSunsetDetailChartContent(uint64_t a1)
{
  result = qword_27CF95E00;
  if (!qword_27CF95E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220D7494C(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailChartDataElement(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_220DC04A0();
  v9 = MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = *(*a1 + 16);
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  v27 = v10;
  v28 = v9;
  v29 = a2;
  v15 = *(v4 + 20);
  v16 = v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v17 = *(v5 + 72);
  v18 = MEMORY[0x277D84F90];
  do
  {
    sub_220D7B5E8(v16, v7);
    v19 = *&v7[v15];
    sub_220D7B644(v7, type metadata accessor for DetailChartDataElement);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_220D56758(0, *(v18 + 16) + 1, 1, v18);
      v18 = v22;
    }

    v21 = *(v18 + 16);
    v20 = *(v18 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_220D56758(v20 > 1, v21 + 1, 1, v18);
      v18 = v23;
    }

    *(v18 + 16) = v21 + 1;
    *(v18 + 8 * v21 + 32) = v19;
    v16 += v17;
    --v14;
  }

  while (v14);

  result = sub_220DC0480();
  if (*(v13 + 16))
  {
    v25 = sub_220DC0490();
    (*(v27 + 8))(v12, v28);
    return v25;
  }

  __break(1u);
  return result;
}

uint64_t SunriseSunsetDetailChartContent.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v76 = a1;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D38, &qword_220DC5840);
  OUTLINED_FUNCTION_0();
  v75 = v3;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_4(&v68 - v5);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D40, &qword_220DC5848);
  OUTLINED_FUNCTION_0();
  v93 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_9();
  v90 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_4(&v68 - v10);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D48, &qword_220DC5850);
  OUTLINED_FUNCTION_0();
  v92 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_4(&v68 - v14);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D50, &qword_220DC5858);
  OUTLINED_FUNCTION_0();
  v71 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_4(&v68 - v18);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D58, &qword_220DC5860);
  OUTLINED_FUNCTION_0();
  v87 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v23);
  v25 = &v68 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D60, &qword_220DC5868);
  OUTLINED_FUNCTION_0();
  v28 = v27;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v29);
  v31 = &v68 - v30;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D68, &qword_220DC5870);
  OUTLINED_FUNCTION_0();
  v82 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v34);
  v36 = &v68 - v35;
  v96 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D70, &qword_220DC5878);
  sub_220D77D34();
  sub_220DBF670();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95DA8, &qword_220DC5898);
  v37 = MEMORY[0x277CBB3F0];
  sub_220CE161C(&qword_27CF95DB0, &qword_27CF95D60, &qword_220DC5868, MEMORY[0x277CBB3F0]);
  sub_220D7803C();
  v38 = v36;
  v69 = v36;
  sub_220DBF4B0();
  (*(v28 + 8))(v31, v26);
  v68 = v25;
  sub_220D75500(v25);
  v39 = v77;
  sub_220D75BE0(v77);
  v40 = v70;
  sub_220D762C0(v70);
  sub_220D766C4(v84);
  v95 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95DD0, &qword_220DC58A8);
  sub_220D7983C();
  v41 = v73;
  sub_220DBF670();
  v94 = v2;
  sub_220DBF590();
  sub_220CE161C(&qword_27CF95DF8, &qword_27CF95D38, &qword_220DC5840, v37);
  v42 = v72;
  v43 = v74;
  sub_220DBF500();
  (*(v75 + 8))(v41, v43);
  v44 = v78;
  (*(v82 + 16))(v78, v38, v83);
  v97[0] = v44;
  v45 = *(v87 + 16);
  v46 = v79;
  v47 = v81;
  v45(v79, v25, v81);
  v97[1] = v46;
  v48 = v80;
  v45(v80, v39, v47);
  v97[2] = v48;
  v49 = v71;
  v50 = v85;
  v51 = v40;
  v52 = v86;
  (*(v71 + 16))(v85, v40, v86);
  v97[3] = v50;
  v53 = v92;
  v54 = v88;
  v55 = v84;
  v56 = v89;
  (*(v92 + 16))(v88, v84, v89);
  v97[4] = v54;
  v57 = v93;
  v58 = v90;
  v59 = v91;
  (*(v93 + 16))(v90, v42, v91);
  v97[5] = v58;
  sub_220D76CC4(v97, v76);
  v60 = *(v57 + 8);
  v93 = v57 + 8;
  v60(v42, v59);
  v61 = *(v53 + 8);
  v92 = v53 + 8;
  v61(v55, v56);
  v62 = *(v49 + 8);
  v62(v51, v52);
  v63 = *(v87 + 8);
  v64 = v81;
  v63(v77, v81);
  v63(v68, v64);
  v65 = *(v82 + 8);
  v66 = v83;
  v65(v69, v83);
  v60(v90, v91);
  v61(v88, v89);
  v62(v85, v86);
  v63(v80, v64);
  v63(v79, v64);
  return (v65)(v78, v66);
}

uint64_t sub_220D75500@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v2 = type metadata accessor for SunriseSunsetDetailChartContent(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95E48, &qword_220DC5978);
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v7 = &v28 - v6;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95E40, &qword_220DC5970);
  v34 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v9 = &v28 - v8;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95E38, &qword_220DC5968);
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v29 = &v28 - v10;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95E28, &qword_220DC5958);
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v33 = &v28 - v11;
  v12 = *(v3 + 32);
  v28 = v1;
  *&v47[0] = *(v1 + v12);
  swift_getKeyPath();
  sub_220D7B5E8(v1, &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_220D7AD94(&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF957B8, &qword_220DC3078);
  sub_220DBF6B0();
  sub_220CE161C(qword_27CF957C0, &qword_27CF957B8, &qword_220DC3078, MEMORY[0x277D83980]);
  sub_220DC0090();
  v15 = sub_220D7A90C();
  v16 = v30;
  sub_220DBF4F0();
  (*(v31 + 8))(v7, v16);
  v17 = v28;
  sub_220DBF720();
  *&v47[0] = v16;
  *(&v47[0] + 1) = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = v29;
  v20 = v32;
  sub_220DBF560();
  sub_220D7AD40(v46);
  (*(v34 + 8))(v9, v20);

  sub_220DC01B0();
  sub_220DC01C0();
  sub_220DBF7B0();
  v43 = v47[0];
  v44 = v47[1];
  v45 = v48;
  v41 = v20;
  v42 = OpaqueTypeConformance2;
  v21 = swift_getOpaqueTypeConformance2();
  v22 = MEMORY[0x277CDF838];
  v23 = MEMORY[0x277CDF828];
  v24 = v33;
  v25 = v35;
  sub_220DBF4A0();
  sub_220D7AE00(v47);
  (*(v36 + 8))(v19, v25);
  v40 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95E30, &qword_220DC5960);
  *&v43 = v25;
  *(&v43 + 1) = v22;
  *&v44 = v21;
  *(&v44 + 1) = v23;
  swift_getOpaqueTypeConformance2();
  *&v43 = sub_220DBF590();
  *(&v43 + 1) = MEMORY[0x277CBB2F8];
  swift_getOpaqueTypeConformance2();
  v26 = v37;
  sub_220DBF500();
  return (*(v38 + 8))(v24, v26);
}

uint64_t sub_220D75BE0@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v2 = type metadata accessor for SunriseSunsetDetailChartContent(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95E48, &qword_220DC5978);
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v7 = &v28 - v6;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95E40, &qword_220DC5970);
  v34 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v9 = &v28 - v8;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95E38, &qword_220DC5968);
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v29 = &v28 - v10;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95E28, &qword_220DC5958);
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v33 = &v28 - v11;
  v12 = *(v3 + 32);
  v28 = v1;
  *&v47[0] = *(v1 + v12);
  swift_getKeyPath();
  sub_220D7B5E8(v1, &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_220D7AD94(&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF957B8, &qword_220DC3078);
  sub_220DBF6B0();
  sub_220CE161C(qword_27CF957C0, &qword_27CF957B8, &qword_220DC3078, MEMORY[0x277D83980]);
  sub_220DC0090();
  v15 = sub_220D7A90C();
  v16 = v30;
  sub_220DBF4F0();
  (*(v31 + 8))(v7, v16);
  v17 = v28;
  sub_220DBF720();
  *&v47[0] = v16;
  *(&v47[0] + 1) = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = v29;
  v20 = v32;
  sub_220DBF560();
  sub_220D7AD40(v46);
  (*(v34 + 8))(v9, v20);

  sub_220DC01B0();
  sub_220DC01C0();
  sub_220DBF7B0();
  v43 = v47[0];
  v44 = v47[1];
  v45 = v48;
  v41 = v20;
  v42 = OpaqueTypeConformance2;
  v21 = swift_getOpaqueTypeConformance2();
  v22 = MEMORY[0x277CDF838];
  v23 = MEMORY[0x277CDF828];
  v24 = v33;
  v25 = v35;
  sub_220DBF4A0();
  sub_220D7AE00(v47);
  (*(v36 + 8))(v19, v25);
  v40 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95E30, &qword_220DC5960);
  *&v43 = v25;
  *(&v43 + 1) = v22;
  *&v44 = v21;
  *(&v44 + 1) = v23;
  swift_getOpaqueTypeConformance2();
  *&v43 = sub_220DBF590();
  *(&v43 + 1) = MEMORY[0x277CBB2F8];
  swift_getOpaqueTypeConformance2();
  v26 = v37;
  sub_220DBF500();
  return (*(v38 + 8))(v24, v26);
}

uint64_t sub_220D762C0@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95ED0, &unk_220DC59D8);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_220DBF6D0();
  v23 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95E60, &qword_220DC5988);
  v7 = *(v6 - 8);
  v24 = v6;
  v25 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95E58, &qword_220DC5980);
  v11 = *(v10 - 8);
  v26 = v10;
  v27 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - v12;
  sub_220DBFA00();
  v34[0] = 0;
  sub_220DBF5A0();

  sub_220DBF6C0();
  v14 = v1 + *(type metadata accessor for SunriseSunsetDetailChartContent(0) + 20);
  sub_220DBF720();
  v15 = MEMORY[0x277CBB450];
  sub_220DBF560();
  sub_220D7AD40(v34);
  (*(v23 + 8))(v5, v3);
  v33 = *(v14 + 48);
  v29 = v3;
  v30 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = MEMORY[0x277CE0F78];
  v18 = MEMORY[0x277CE0F60];
  v19 = v24;
  sub_220DBF4A0();
  (*(v25 + 8))(v9, v19);
  v29 = v19;
  v30 = v17;
  v31 = OpaqueTypeConformance2;
  v32 = v18;
  swift_getOpaqueTypeConformance2();
  v20 = v26;
  sub_220DBF530();
  return (*(v27 + 8))(v13, v20);
}

uint64_t sub_220D766C4@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = sub_220DBF5E0();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x28223BE20](v2);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB0, &unk_220DC7330);
  MEMORY[0x28223BE20](v4 - 8);
  v32 = &v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB8, &qword_220DC59C0);
  MEMORY[0x28223BE20](v6 - 8);
  v34 = sub_220DBF6F0();
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95DE0, &qword_220DC58B0);
  v10 = *(v9 - 8);
  v37 = v9;
  v38 = v10;
  MEMORY[0x28223BE20](v9);
  v31 = &v30 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95E68, &qword_220DC5990);
  v13 = *(v12 - 8);
  v39 = v12;
  v40 = v13;
  MEMORY[0x28223BE20](v12);
  v33 = &v30 - v14;
  sub_220DBFA00();
  v15 = v1 + *(type metadata accessor for SunriseSunsetDetailChartViewModel(0) + 20);
  sub_220DBE560();
  sub_220DBF5A0();

  sub_220DBFA00();
  v46 = *(v15 + *(type metadata accessor for DetailChartDataElement(0) + 20));
  sub_220DBF5A0();

  sub_220DBF6E0();
  v16 = v35;
  sub_220DBF5D0();
  v45 = v1;
  sub_220DC0120();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95DE8, &qword_220DC58B8);
  v29 = sub_220D79A64();
  v18 = MEMORY[0x277CBB468];
  v19 = v31;
  v20 = v34;
  sub_220DBF480();
  (*(v41 + 8))(v16, v42);
  (*(v36 + 8))(v8, v20);
  v21 = sub_220DBFEE0();
  v49 = v29;
  v50 = v21;
  v46 = v20;
  v47 = v17;
  v48 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = MEMORY[0x277CE0F78];
  v24 = MEMORY[0x277CE0F60];
  v25 = v33;
  v26 = v37;
  sub_220DBF4A0();

  (*(v38 + 8))(v19, v26);
  v44 = v1;
  sub_220DBF590();
  v46 = v26;
  v47 = v23;
  v48 = OpaqueTypeConformance2;
  v49 = v24;
  swift_getOpaqueTypeConformance2();
  v27 = v39;
  sub_220DBF500();
  return (*(v40 + 8))(v25, v27);
}

uint64_t sub_220D76CC4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EA8, &unk_220DC59B0);
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D68, &qword_220DC5870);
  v9 = MEMORY[0x277CBB3F0];
  sub_220CE161C(&qword_27CF95DB0, &qword_27CF95D60, &qword_220DC5868, MEMORY[0x277CBB3F0]);
  sub_220D7803C();
  (*(*(v8 - 8) + 16))(v7, *a1, v8);
  v21[0] = v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D58, &qword_220DC5860);
  sub_220D7A90C();
  sub_220DBF590();
  v11 = &v7[v5[14]];
  v12 = *(*(v10 - 8) + 16);
  v12(v11, a1[1], v10);
  v21[1] = v11;
  v13 = &v7[v5[18]];
  v12(v13, a1[2], v10);
  v21[2] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D50, &qword_220DC5858);
  sub_220DBF6D0();
  v15 = &v7[v5[22]];
  (*(*(v14 - 8) + 16))(v15, a1[3], v14);
  v21[3] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D48, &qword_220DC5850);
  sub_220DBF6F0();
  sub_220D79A64();
  v17 = &v7[v5[26]];
  (*(*(v16 - 8) + 16))(v17, a1[4], v16);
  v21[4] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D40, &qword_220DC5848);
  sub_220CE161C(&qword_27CF95DF8, &qword_27CF95D38, &qword_220DC5840, v9);
  v19 = &v7[v5[30]];
  (*(*(v18 - 8) + 16))(v19, a1[5], v18);
  v21[5] = v19;
  return sub_220D7AB1C(v21, a2);
}

uint64_t sub_220D76FB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EF8, &unk_220DC5A20);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D88, &qword_220DC5880);
  sub_220D77DC4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v10(v7, *a1, v8);
  v11 = *(v5 + 56);
  v10(&v7[v11], a1[1], v8);
  v12 = *(v5 + 72);
  v10(&v7[v12], a1[2], v8);
  v13 = *(v9 + 32);
  v13(a2, v7, v8);
  v13(a2 + *(v5 + 56), &v7[v11], v8);
  return (v13)(a2 + *(v5 + 72), &v7[v12], v8);
}

uint64_t sub_220D77140@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EC8, &qword_220DC59D0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EC0, &qword_220DC59C8);
  sub_220DBF600();
  sub_220DBF6F0();
  sub_220D7B1E4(&qword_27CF95DA0, MEMORY[0x277CBB3B8], MEMORY[0x277CBB3B0]);
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, *a1, v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95E68, &qword_220DC5990);
  sub_220D79A64();
  v11 = *(v5 + 56);
  v12 = a1[1];
  v13 = *(v10 - 8);
  (*(v13 + 16))(&v7[v11], v12, v10);
  (*(v9 + 32))(a2, v7, v8);
  return (*(v13 + 32))(a2 + *(v5 + 56), &v7[v11], v10);
}

uint64_t sub_220D77318@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95E90, &qword_220DC59A8) - 8;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  type metadata accessor for ChartPointMarkSeriesContent(0);
  sub_220D7B1E4(&qword_27CF95E98, type metadata accessor for ChartPointMarkSeriesContent, &unk_220DC720C);
  sub_220D7B5E8(*a1, v7);
  type metadata accessor for ChartPointMarkBorderAndAnnotationSeriesContent(0);
  sub_220D7B1E4(&qword_27CF95EA0, type metadata accessor for ChartPointMarkBorderAndAnnotationSeriesContent, &unk_220DC726C);
  v8 = *(v4 + 56);
  sub_220D7B5E8(a1[1], &v7[v8]);
  sub_220D7AD94(v7, a2);
  return sub_220D7AD94(&v7[v8], a2 + *(v4 + 56));
}

uint64_t sub_220D7749C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95E70, &qword_220DC5998) - 8;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  type metadata accessor for StyledLineMark(0);
  sub_220D7B1E4(&qword_27CF95E78, type metadata accessor for StyledLineMark, &unk_220DC8520);
  sub_220D7B5E8(*a1, v7);
  sub_220D7A988();
  v8 = *(v4 + 56);
  sub_220D7AA3C(a1[1], &v7[v8]);
  sub_220D7AD94(v7, a2);
  return sub_220D7AAAC(&v7[v8], a2 + *(v4 + 56));
}

uint64_t sub_220D775C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = type metadata accessor for SunriseSunsetDetailChartContent(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D88, &qword_220DC5880);
  v59 = *(v8 - 8);
  v60 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v64 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v63 = v54 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v62 = v54 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v61 = v54 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v73 = v54 - v18;
  MEMORY[0x28223BE20](v17);
  v68 = v54 - v19;
  v58 = type metadata accessor for SunriseSunsetDetailChartViewModel(0);
  v20 = *(v58 + 28);
  v21 = a1;
  v56 = a1;
  v22 = *(a1 + v20);
  v69 = (v21 + *(v4 + 28));
  v23 = v69[14];
  v78 = v22;
  v57 = type metadata accessor for SunriseSunsetDetailChartContent;
  sub_220D7B5E8(v21, v7);
  v24 = *(v5 + 80);
  v71 = (v24 + 16) & ~v24;
  v72 = v24;
  v25 = (v6 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = v25;
  v26 = swift_allocObject();
  v70 = type metadata accessor for SunriseSunsetDetailChartContent;
  sub_220D7AD94(v7, v26 + ((v24 + 16) & ~v24));
  *(v26 + v25) = v23;

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EE0, &qword_220DC85D0);
  v67 = sub_220DBE560();
  v54[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EC0, &qword_220DC59C8);
  v28 = sub_220CE161C(&qword_27CF95EE8, &qword_27CF95EE0, &qword_220DC85D0, MEMORY[0x277D83980]);
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95D90, &qword_220DC5888);
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95D98, &qword_220DC5890);
  v31 = sub_220DBF600();
  v74 = sub_220DBF6F0();
  v75 = MEMORY[0x277CBB468];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = sub_220D7B1E4(&qword_27CF95DA0, MEMORY[0x277CBB3B8], MEMORY[0x277CBB3B0]);
  v74 = v30;
  v75 = v31;
  v76 = OpaqueTypeConformance2;
  v77 = v33;
  v34 = swift_getOpaqueTypeConformance2();
  v74 = v29;
  v75 = MEMORY[0x277CE0F78];
  v76 = v34;
  v77 = MEMORY[0x277CE0F60];
  v54[1] = swift_getOpaqueTypeConformance2();
  v66 = sub_220D7B1E4(&qword_27CF95EF0, type metadata accessor for DetailChartDataElement, &protocol conformance descriptor for DetailChartDataElement);
  v54[4] = v27;
  v54[3] = v28;
  sub_220DC0080();
  v35 = v58;
  v36 = v56;
  v37 = v69[15];
  v74 = *(v56 + *(v58 + 32));
  sub_220D7B5E8(v56, v7);
  v38 = v55;
  v39 = swift_allocObject();
  sub_220D7AD94(v7, v39 + v71);
  *(v39 + v38) = v37;

  sub_220DC0080();
  v40 = v69[16];
  v74 = *(v36 + *(v35 + 36));
  sub_220D7B5E8(v36, v7);
  v41 = swift_allocObject();
  sub_220D7AD94(v7, v41 + v71);
  *(v41 + v38) = v40;

  v42 = v61;
  sub_220DC0080();
  v43 = v59;
  v44 = v60;
  v45 = *(v59 + 16);
  v46 = v62;
  v47 = v68;
  v45(v62, v68, v60);
  v74 = v46;
  v48 = v63;
  v49 = v73;
  v45(v63, v73, v44);
  v75 = v48;
  v50 = v48;
  v51 = v64;
  v45(v64, v42, v44);
  v76 = v51;
  sub_220D76FB8(&v74, v65);
  v52 = *(v43 + 8);
  v52(v42, v44);
  v52(v49, v44);
  v52(v47, v44);
  v52(v51, v44);
  v52(v50, v44);
  return (v52)(v46, v44);
}

unint64_t sub_220D77D34()
{
  result = qword_27CF95D78;
  if (!qword_27CF95D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95D70, &qword_220DC5878);
    sub_220D77DC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95D78);
  }

  return result;
}

unint64_t sub_220D77DC4()
{
  result = qword_27CF95D80;
  if (!qword_27CF95D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95D88, &qword_220DC5880);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95D90, &qword_220DC5888);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95D98, &qword_220DC5890);
    sub_220DBF600();
    sub_220DBF6F0();
    swift_getOpaqueTypeConformance2();
    sub_220D7B1E4(&qword_27CF95DA0, MEMORY[0x277CBB3B8], MEMORY[0x277CBB3B0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95D80);
  }

  return result;
}

uint64_t sub_220D77F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95DA8, &qword_220DC5898) + 36);
  v5 = *MEMORY[0x277CE13B8];
  v6 = sub_220DC0150();
  (*(*(v6 - 8) + 104))(a2 + v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95DC8, &qword_220DC58A0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, a1, v7);
}

unint64_t sub_220D7803C()
{
  result = qword_27CF95DB8;
  if (!qword_27CF95DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95DA8, &qword_220DC5898);
    sub_220CE161C(&qword_27CF95DC0, &qword_27CF95DC8, &qword_220DC58A0, MEMORY[0x277CE0520]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95DB8);
  }

  return result;
}

uint64_t sub_220D780F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10[1] = a1;
  v10[2] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB0, &unk_220DC7330);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v4);
  v5 = sub_220DBF590();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBFA00();
  v11 = *(a1 + *(type metadata accessor for SunriseSunsetDetailChartViewModel(0) + 60));
  sub_220DBF5A0();

  sub_220DBFA00();
  v11 = 0;
  sub_220DBF5A0();

  sub_220DBF570();
  type metadata accessor for SunriseSunsetDetailChartContent(0);
  sub_220DBF510();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_220D78358@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a3;
  v33 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95ED8, &unk_220DC5A10);
  OUTLINED_FUNCTION_18(v8);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  v11 = v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB0, &unk_220DC7330);
  OUTLINED_FUNCTION_18(v12);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  v31[3] = v31 - v14;
  v34 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB8, &qword_220DC59C0);
  OUTLINED_FUNCTION_18(v20);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v21);
  v35 = v31 - v22;
  v23 = *a1;
  result = sub_220DBFA00();
  if ((v23 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v31[2] = v11;
  v25 = *a2;
  if (v23 >= *(*a2 + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v31[1] = a5;
  v26 = OUTLINED_FUNCTION_11_0();
  v31[0] = type metadata accessor for DetailChartDataElement(v26);
  OUTLINED_FUNCTION_4_19();
  v29 = v25 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v28 + 72) * v23;
  v30 = v34;
  (*(v16 + 16))(v19, v29, v34);
  sub_220DBF5A0();

  (*(v16 + 8))(v19, v30);
  result = sub_220DBFA00();
  if (v23 < *(v25 + 16))
  {
    v36 = *(v29 + *(v31[0] + 20));
    sub_220DBF5A0();

    sub_220DBFA00();
    v36 = v32;
    v37 = v33;
    sub_220DBF5A0();

    return sub_220DBF6A0();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_220D78718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB0, &unk_220DC7330);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v4);
  v5 = sub_220DBF590();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBFA00();
  v11 = 0.0;
  sub_220DBF5A0();

  sub_220DBFA00();
  v11 = *(a1 + *(type metadata accessor for SunriseSunsetDetailChartViewModel(0) + 56)) + 5.0;
  sub_220DBF5A0();

  sub_220DBF570();
  type metadata accessor for SunriseSunsetDetailChartContent(0);
  sub_220DBF510();
  return (*(v6 + 8))(v8, v5);
}

double sub_220D78988@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_220DBFF90();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SunriseSunsetDetailChartContent(0);
  (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
  v7 = sub_220DBFFE0();
  (*(v4 + 8))(v6, v3);
  sub_220DC0120();
  sub_220DBF760();
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v11 = v16;
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  result = *&v17;
  *(a2 + 40) = v17;
  return result;
}

uint64_t sub_220D78B00(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB0, &unk_220DC7330);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  MEMORY[0x28223BE20](v2);
  sub_220DBFA00();
  sub_220DBF5A0();

  sub_220DBFA00();
  type metadata accessor for SunriseSunsetDetailChartViewModel(0);
  sub_220DBF5A0();

  return sub_220DBF570();
}

uint64_t sub_220D78CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v79 = sub_220DBF5E0();
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v74 = v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95DE0, &qword_220DC58B0);
  v83 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v75 = v59 - v4;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95E68, &qword_220DC5990);
  v80 = *(v82 - 8);
  v5 = MEMORY[0x28223BE20](v82);
  v78 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v76 = v59 - v7;
  v69 = sub_220DBF600();
  v70 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB0, &unk_220DC7330);
  MEMORY[0x28223BE20](v9 - 8);
  v85 = v59 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB8, &qword_220DC59C0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v59 - v12;
  v14 = sub_220DBF6F0();
  v15 = *(v14 - 8);
  v86 = v14;
  v87 = v15;
  MEMORY[0x28223BE20](v14);
  v60 = v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D98, &qword_220DC5890);
  v65 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v18 = v59 - v17;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D90, &qword_220DC5888);
  v67 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v20 = v59 - v19;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EC0, &qword_220DC59C8);
  v72 = *(v73 - 8);
  v21 = MEMORY[0x28223BE20](v73);
  v71 = v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v62 = v59 - v23;
  sub_220DBFA00();
  v24 = *(type metadata accessor for SunriseSunsetDetailChartViewModel(0) + 20);
  v61 = a1;
  v25 = a1 + v24;
  v26 = sub_220DBE560();
  v59[1] = v13;
  v59[3] = v25;
  v59[2] = v26;
  sub_220DBF5A0();

  sub_220DBFA00();
  v27 = *(v25 + *(type metadata accessor for DetailChartDataElement(0) + 20));
  v89 = v27;
  sub_220DBF5A0();

  v28 = v60;
  sub_220DBF6E0();
  v29 = a1 + *(type metadata accessor for SunriseSunsetDetailChartContent(0) + 20);
  v30 = v86;
  v31 = MEMORY[0x277CBB468];
  sub_220DBF490();
  v32 = *(v87 + 8);
  v87 += 8;
  v64 = v32;
  v32(v28, v30);
  v33 = v68;
  sub_220DBF5B0();
  v89 = v30;
  v90 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = sub_220D7B1E4(&qword_27CF95DA0, MEMORY[0x277CBB3B8], MEMORY[0x277CBB3B0]);
  v36 = v63;
  v37 = v69;
  sub_220DBF540();
  (*(v70 + 8))(v33, v37);
  (*(v65 + 8))(v18, v36);
  v38 = *(v29 + 96);
  v92 = v35;
  v93 = v38;
  v89 = v36;
  v90 = v37;
  v91 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v39 = v62;
  v40 = v66;
  sub_220DBF4A0();
  (*(v67 + 8))(v20, v40);
  sub_220DBFA00();
  sub_220DBF5A0();

  sub_220DBFA00();
  v89 = v27;
  sub_220DBF5A0();

  sub_220DBF6E0();
  v41 = v74;
  sub_220DBF5D0();
  v88 = v61;
  sub_220DC0120();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95DE8, &qword_220DC58B8);
  v58 = sub_220D79A64();
  v43 = MEMORY[0x277CBB468];
  v44 = v75;
  v45 = v86;
  sub_220DBF480();
  (*(v77 + 8))(v41, v79);
  v64(v28, v45);
  v46 = sub_220DBFEE0();
  v92 = v58;
  v93 = v46;
  v89 = v45;
  v90 = v42;
  v91 = v43;
  swift_getOpaqueTypeConformance2();
  v47 = v76;
  v48 = v81;
  sub_220DBF4A0();

  (*(v83 + 8))(v44, v48);
  v49 = v72;
  v50 = v71;
  v51 = v73;
  (*(v72 + 16))(v71, v39, v73);
  v89 = v50;
  v52 = v80;
  v53 = v78;
  v54 = v82;
  (*(v80 + 16))(v78, v47, v82);
  v90 = v53;
  sub_220D77140(&v89, v84);
  v55 = *(v52 + 8);
  v55(v47, v54);
  v56 = *(v49 + 8);
  v56(v39, v51);
  v55(v53, v54);
  return (v56)(v50, v51);
}

unint64_t sub_220D7983C()
{
  result = qword_27CF95DD8;
  if (!qword_27CF95DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95DD0, &qword_220DC58A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95D90, &qword_220DC5888);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95D98, &qword_220DC5890);
    sub_220DBF600();
    sub_220DBF6F0();
    swift_getOpaqueTypeConformance2();
    sub_220D7B1E4(&qword_27CF95DA0, MEMORY[0x277CBB3B8], MEMORY[0x277CBB3B0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95DE0, &qword_220DC58B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95DE8, &qword_220DC58B8);
    sub_220D79A64();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95DD8);
  }

  return result;
}

unint64_t sub_220D79A64()
{
  result = qword_27CF95DF0;
  if (!qword_27CF95DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95DE8, &qword_220DC58B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95DF0);
  }

  return result;
}

double sub_220D79AE8@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_220DBFF90();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SunriseSunsetDetailChartContent(0);
  (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
  v7 = sub_220DBFFE0();
  (*(v4 + 8))(v6, v3);
  sub_220DC0120();
  sub_220DBF760();
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v11 = v16;
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  result = *&v17;
  *(a2 + 40) = v17;
  return result;
}

uint64_t sub_220D79C60(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB0, &unk_220DC7330);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  MEMORY[0x28223BE20](v2);
  sub_220DBFA00();
  sub_220DBF5A0();

  sub_220DBFA00();
  type metadata accessor for SunriseSunsetDetailChartViewModel(0);
  sub_220DBF5A0();

  return sub_220DBF570();
}

uint64_t sub_220D79E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a3;
  v43 = a4;
  v39 = a2;
  v5 = sub_220DBF600();
  v6 = *(v5 - 8);
  v40 = v5;
  v41 = v6;
  MEMORY[0x28223BE20](v5);
  v38 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB0, &unk_220DC7330);
  MEMORY[0x28223BE20](v8 - 8);
  v32 = &v30 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB8, &qword_220DC59C0);
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_220DBF6F0();
  v33 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D98, &qword_220DC5890);
  v15 = *(v14 - 8);
  v34 = v14;
  v35 = v15;
  MEMORY[0x28223BE20](v14);
  v30 = &v30 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D90, &qword_220DC5888);
  v18 = *(v17 - 8);
  v36 = v17;
  v37 = v18;
  MEMORY[0x28223BE20](v17);
  v31 = &v30 - v19;
  sub_220DBFA00();
  sub_220DBE560();
  sub_220DBF5A0();

  sub_220DBFA00();
  v44 = *(a1 + *(type metadata accessor for DetailChartDataElement(0) + 20));
  sub_220DBF5A0();

  sub_220DBF6E0();
  type metadata accessor for SunriseSunsetDetailChartContent(0);
  v20 = MEMORY[0x277CBB468];
  v21 = v30;
  sub_220DBF490();
  (*(v33 + 8))(v13, v11);
  v22 = v38;
  sub_220DBF5B0();
  v44 = v11;
  v45 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = sub_220D7B1E4(&qword_27CF95DA0, MEMORY[0x277CBB3B8], MEMORY[0x277CBB3B0]);
  v25 = v31;
  v26 = v34;
  v27 = v40;
  sub_220DBF540();
  (*(v41 + 8))(v22, v27);
  (*(v35 + 8))(v21, v26);
  v47 = v24;
  v48 = v42;
  v44 = v26;
  v45 = v27;
  v46 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v28 = v36;
  sub_220DBF4A0();
  return (*(v37 + 8))(v25, v28);
}

void sub_220D7A3D0(uint64_t a1)
{
  type metadata accessor for SunriseSunsetDetailChartViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_220D7A45C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_220D7A45C()
{
  if (!qword_27CF95E10)
  {
    v0 = sub_220DC0770();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF95E10);
    }
  }
}

unint64_t sub_220D7A4AC()
{
  result = qword_27CF95E18;
  if (!qword_27CF95E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95E20, &qword_220DC5950);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95D60, &qword_220DC5868);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95DA8, &qword_220DC5898);
    v1 = MEMORY[0x277CBB3F0];
    sub_220CE161C(&qword_27CF95DB0, &qword_27CF95D60, &qword_220DC5868, MEMORY[0x277CBB3F0]);
    sub_220D7803C();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95E28, &qword_220DC5958);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95E30, &qword_220DC5960);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95E38, &qword_220DC5968);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95E40, &qword_220DC5970);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95E48, &qword_220DC5978);
    sub_220D7A90C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_220DBF590();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95E58, &qword_220DC5980);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95E60, &qword_220DC5988);
    sub_220DBF6D0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95E68, &qword_220DC5990);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95DE0, &qword_220DC58B0);
    sub_220DBF6F0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95DE8, &qword_220DC58B8);
    sub_220D79A64();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95D38, &qword_220DC5840);
    sub_220CE161C(&qword_27CF95DF8, &qword_27CF95D38, &qword_220DC5840, v1);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95E18);
  }

  return result;
}

unint64_t sub_220D7A90C()
{
  result = qword_27CF95E50;
  if (!qword_27CF95E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95E48, &qword_220DC5978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95E50);
  }

  return result;
}

unint64_t sub_220D7A988()
{
  result = qword_27CF95E88;
  if (!qword_27CF95E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95E80, &qword_220DC59A0);
    sub_220D7B1E4(&qword_27CF95E78, type metadata accessor for StyledLineMark, &unk_220DC8520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95E88);
  }

  return result;
}

uint64_t sub_220D7AA3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95E80, &qword_220DC59A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220D7AAAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95E80, &qword_220DC59A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220D7AB1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D68, &qword_220DC5870);
  (*(*(v5 - 8) + 32))(a2, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EA8, &unk_220DC59B0);
  v7 = v6[12];
  v8 = a1[1];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D58, &qword_220DC5860);
  v10 = *(*(v9 - 8) + 32);
  v10(a2 + v7, v8, v9);
  v10(a2 + v6[16], a1[2], v9);
  v11 = v6[20];
  v12 = a1[3];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D50, &qword_220DC5858);
  (*(*(v13 - 8) + 32))(a2 + v11, v12, v13);
  v14 = v6[24];
  v15 = a1[4];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D48, &qword_220DC5850);
  (*(*(v16 - 8) + 32))(a2 + v14, v15, v16);
  v17 = v6[28];
  v18 = a1[5];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D40, &qword_220DC5848);
  v20 = *(*(v19 - 8) + 32);

  return v20(a2 + v17, v18, v19);
}

uint64_t sub_220D7AD94(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_11_0();
  v5(v4);
  OUTLINED_FUNCTION_6();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t objectdestroyTm()
{
  type metadata accessor for SunriseSunsetDetailChartContent(0);
  OUTLINED_FUNCTION_4_19();
  v18 = *(v2 + 80);
  v16 = *(v3 + 64);
  v17 = (v18 + 16) & ~v18;
  v19 = v0;
  v4 = v0 + v17;

  v5 = type metadata accessor for SunriseSunsetDetailChartViewModel(0);
  v6 = v4 + v5[5];
  v7 = sub_220DBE560();
  OUTLINED_FUNCTION_6();
  v9 = *(v8 + 8);
  v9(v6, v7);
  type metadata accessor for DetailChartDataElement(0);
  OUTLINED_FUNCTION_10_19();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
  }

  else if (!EnumCaseMultiPayload)
  {

    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A50, &unk_220DC5A00) + 48);
    v12 = sub_220DBFFC0();
    if (!__swift_getEnumTagSinglePayload(v1 + v11, 1, v12))
    {
      (*(*(v12 - 8) + 8))(v1 + v11, v12);
    }
  }

  OUTLINED_FUNCTION_6_19();

  OUTLINED_FUNCTION_6_19();
  OUTLINED_FUNCTION_6_19();
  v13 = v5[6];
  sub_220DBF1D0();
  OUTLINED_FUNCTION_6();
  (*(v14 + 8))(v4 + v13);

  v9(v4 + v5[10], v7);

  return MEMORY[0x2821FE8E8](v19, v17 + v16, v18 | 7);
}

uint64_t sub_220D7B150@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for SunriseSunsetDetailChartContent(0);
  OUTLINED_FUNCTION_18(v9);
  return sub_220D78358(a1, (v4 + ((*(v10 + 80) + 16) & ~*(v10 + 80))), a2, a3, a4);
}

uint64_t sub_220D7B1E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_17Tm()
{
  type metadata accessor for SunriseSunsetDetailChartContent(0);
  OUTLINED_FUNCTION_4_19();
  v22 = *(v2 + 80);
  v3 = (v22 + 16) & ~v22;
  v21 = *(v4 + 64);
  v23 = v0;
  v5 = v0 + v3;

  v6 = type metadata accessor for SunriseSunsetDetailChartViewModel(0);
  v7 = v0 + v3 + v6[5];
  v8 = sub_220DBE560();
  OUTLINED_FUNCTION_6();
  v10 = *(v9 + 8);
  v10(v7, v8);
  type metadata accessor for DetailChartDataElement(0);
  OUTLINED_FUNCTION_10_19();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
  }

  else if (!EnumCaseMultiPayload)
  {

    v12 = v10;
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A50, &unk_220DC5A00) + 48);
    v14 = sub_220DBFFC0();
    v20 = v13;
    v15 = v1 + v13;
    v10 = v12;
    if (!__swift_getEnumTagSinglePayload(v15, 1, v14))
    {
      (*(*(v14 - 8) + 8))(v1 + v20, v14);
    }
  }

  v16 = (v21 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  OUTLINED_FUNCTION_6_19();

  OUTLINED_FUNCTION_6_19();
  OUTLINED_FUNCTION_6_19();
  v17 = v6[6];
  sub_220DBF1D0();
  OUTLINED_FUNCTION_6();
  (*(v18 + 8))(v5 + v17);

  v10(v5 + v6[10], v8);

  return MEMORY[0x2821FE8E8](v23, v16 + 8, v22 | 7);
}

uint64_t sub_220D7B53C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SunriseSunsetDetailChartContent(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_220D79E28(a1, v2 + v6, v7, a2);
}

uint64_t sub_220D7B5E8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_11_0();
  v5(v4);
  OUTLINED_FUNCTION_6();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_220D7B644(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_220D7B6A0(uint64_t a1, char a2)
{
  sub_220DC0660();
}

uint64_t sub_220D7B7E4(uint64_t a1, char a2)
{
  sub_220DC0CE0();
  sub_220D7B6A0(v4, a2);
  return sub_220DC0D20();
}

uint64_t sub_220D7B828@<X0>(uint64_t (*a1)(char *, char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v22 = a1;
  type metadata accessor for DetailChartDataElement(0);
  OUTLINED_FUNCTION_0();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v12 = &v20 - v11;
  v13 = *(a2 + 16);
  if (v13)
  {
    v20 = a3;
    v21 = v10;
    OUTLINED_FUNCTION_0_20();
    sub_220D7FC40();
    for (i = 1; ; ++i)
    {
      if (v13 == i)
      {
        v18 = v20;
        sub_220D804B8();
        v16 = v18;
        v17 = 0;
        v10 = v21;
        return __swift_storeEnumTagSinglePayload(v16, v17, 1, v10);
      }

      OUTLINED_FUNCTION_0_20();
      sub_220D7FC40();
      v15 = v22(v9, v12);
      if (v3)
      {
        break;
      }

      if (v15)
      {
        sub_220D7FC98(v12, type metadata accessor for DetailChartDataElement);
        sub_220D804B8();
      }

      else
      {
        sub_220D7FC98(v9, type metadata accessor for DetailChartDataElement);
      }
    }

    sub_220D7FC98(v9, type metadata accessor for DetailChartDataElement);
    return sub_220D7FC98(v12, type metadata accessor for DetailChartDataElement);
  }

  else
  {
    v16 = a3;
    v17 = 1;
    return __swift_storeEnumTagSinglePayload(v16, v17, 1, v10);
  }
}

uint64_t SunriseSunsetDetailChartViewModelFactory.__allocating_init(sunElevationCalculator:chartBackgroundFactory:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_220CD570C(a1, v4 + 16);
  sub_220CD570C(a2, v4 + 56);
  return v4;
}

uint64_t SunriseSunsetDetailChartViewModelFactory.init(sunElevationCalculator:chartBackgroundFactory:)(__int128 *a1, __int128 *a2)
{
  sub_220CD570C(a1, v2 + 16);
  sub_220CD570C(a2, v2 + 56);
  return v2;
}

uint64_t SunriseSunsetDetailChartViewModelFactory.makeViewModel(location:startDate:numberOfMinutesShownOnChart:currentWeather:sunEvents:cachedElevations:cachedDateHoursString:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *&v616 = a7;
  v624 = a6;
  v583 = a5;
  v619 = a2;
  v620 = a3;
  v627 = a1;
  v594 = a8;
  v599 = sub_220DBF1D0();
  OUTLINED_FUNCTION_0();
  v593 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_4(v12 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95F00, &unk_220DC5A50);
  v569 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_4_4(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  MEMORY[0x28223BE20](v29 - 8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_4_4(v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95F08, &qword_220DC5A60);
  v571 = *(v48 - 8);
  MEMORY[0x28223BE20](v48 - 8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_4_4(v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF955F0, &qword_220DC2938);
  MEMORY[0x28223BE20](v66 - 8);
  OUTLINED_FUNCTION_14(v550 - v67);
  v596 = sub_220DBF070();
  OUTLINED_FUNCTION_0();
  v590 = v68;
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_1();
  v72 = OUTLINED_FUNCTION_14(v71 - v70);
  v609 = type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel(v72);
  OUTLINED_FUNCTION_0();
  v606 = v73;
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_57();
  v77 = OUTLINED_FUNCTION_14(v76);
  v630 = type metadata accessor for DetailChartDataElement(v77);
  OUTLINED_FUNCTION_0();
  v615 = v78;
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_25_0();
  v628 = v93;
  v95 = MEMORY[0x28223BE20](v94);
  v97 = (v550 - v96);
  MEMORY[0x28223BE20](v95);
  v99 = (v550 - v98);
  v623 = sub_220DC0500();
  OUTLINED_FUNCTION_0();
  v631 = v100;
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  v103 = MEMORY[0x28223BE20](v102);
  v105 = v550 - v104;
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_14(v106);
  v613 = sub_220DBE740();
  OUTLINED_FUNCTION_0();
  v108 = v107;
  MEMORY[0x28223BE20](v109);
  OUTLINED_FUNCTION_1();
  v112 = v111 - v110;
  v589 = sub_220DBE6E0();
  OUTLINED_FUNCTION_0();
  v588 = v113;
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_1();
  v117 = v116 - v115;
  v118 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v603 = v119;
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v121);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v122);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v123);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v124);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v125);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v126);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v127);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v128);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v129);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  v131 = MEMORY[0x28223BE20](v130);
  v133 = v550 - v132;
  MEMORY[0x28223BE20](v131);
  v135 = v550 - v134;
  v591 = a4;
  sub_220DBEA60();
  v136 = v627;
  sub_220DBF1C0();
  v618 = v117;
  sub_220DBE600();
  v137 = *(v108 + 8);
  v611 = v112;
  v612 = v108 + 8;
  v610 = v137;
  v137(v112, v613);
  v138 = v603;
  OUTLINED_FUNCTION_38_3();
  sub_220D7EE58(v136, v135, v624, v139);
  v140 = *(v138 + 16);
  v585 = v135;
  v629 = v118;
  v622 = v138 + 16;
  v617 = v140;
  v140(v99, v135, v118);
  sub_220DC04F0();
  v142 = v141;
  v143 = v630;
  v144 = v99 + v630[8];
  v145 = 0xE000000000000000;
  *v144 = 0;
  *(v144 + 1) = 0xE000000000000000;
  v614 = type metadata accessor for DetailChartDataElement.ValueLabel(0);
  swift_storeEnumTagMultiPayload();
  *(v99 + v143[5]) = v142;
  *(v99 + v143[6]) = 0;
  v146 = v99 + v143[7];
  *v146 = 0;
  v146[8] = 1;
  v147 = v99 + v143[9];
  *v147 = 0;
  *(v147 + 1) = 0xE000000000000000;
  v148 = v99 + v143[12];
  *v148 = 0;
  *(v148 + 1) = 0xE000000000000000;
  v149 = v99 + v143[13];
  *v149 = 0;
  *(v149 + 1) = 0xE000000000000000;
  *(v99 + v143[10]) = 0;
  v150 = v143[11];
  v602 = v99;
  *(v99 + v150) = 0;
  v634 = MEMORY[0x277D84F90];
  v635 = MEMORY[0x277D84F90];
  v633 = MEMORY[0x277D84F90];
  if (v620 < 0)
  {
LABEL_142:
    __break(1u);
LABEL_143:
    swift_once();
    goto LABEL_17;
  }

  v151 = 0;
  v621 = (v631 + 1);
  v626 = (v138 + 8);
  v631 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_220DBE3B0();
    sub_220D7EE58(v627, v133, v624, v105);
    sub_220DC04F0();
    v153 = v152;
    v154 = v616;
    if (v616 && *(v616 + 16) && (v155 = sub_220D7FE8C(v133), (v156 & 1) != 0))
    {
      v157 = (*(v154 + 56) + 16 * v155);
      v158 = *v157;
      v159 = v157[1];
    }

    else
    {
      OUTLINED_FUNCTION_38_3();
      sub_220DBF1C0();
      v158 = sub_220DBE4B0();
      v159 = v160;
      v610(v145, v613);
    }

    v617(v97, v133, v629);
    v161 = v630;
    v162 = (v97 + v630[8]);
    *v162 = 0;
    v162[1] = 0xE000000000000000;
    swift_storeEnumTagMultiPayload();
    *(v97 + v161[5]) = v153;
    *(v97 + v161[6]) = v153;
    v163 = v97 + v161[7];
    *v163 = 0;
    v163[8] = 1;
    v164 = (v97 + v161[9]);
    *v164 = v158;
    v164[1] = v159;
    v165 = (v97 + v161[12]);
    *v165 = 0;
    v165[1] = 0xE000000000000000;
    v166 = (v97 + v161[13]);
    *v166 = 0;
    v166[1] = 0xE000000000000000;
    *(v97 + v161[10]) = 0;
    *(v97 + v161[11]) = 0;
    OUTLINED_FUNCTION_0_20();
    sub_220D7FC40();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_19_11();
      sub_220D569D8();
      v631 = v172;
    }

    v145 = v631[2];
    if (v145 >= v631[3] >> 1)
    {
      sub_220D569D8();
      v631 = v173;
    }

    sub_220D7FC98(v97, type metadata accessor for DetailChartDataElement);
    v167 = *v621;
    (*v621)(v105, v623);
    v168 = *v626;
    (*v626)(v133, v629);
    v631[2] = v145 + 1;
    v169 = (*(v615 + 80) + 32) & ~*(v615 + 80);
    v170 = *(v615 + 9);
    sub_220D804B8();
    if (v620 == v151)
    {
      break;
    }

    if (__OFADD__(v151++, 1))
    {
      __break(1u);
      goto LABEL_142;
    }
  }

  v620 = v170;
  v628 = v169;
  v615 = v167;
  v604 = v168;
  if (qword_280FA6600 != -1)
  {
    goto LABEL_143;
  }

LABEL_17:
  OUTLINED_FUNCTION_36_3();
  v174 = qword_280FA6608;
  OUTLINED_FUNCTION_11();
  v183 = OUTLINED_FUNCTION_31_5(v175, v176, v177, v178, v179, v180, v181, v182);
  sub_220D7F650(v602, v183, v184, 1, v601);

  v185 = v582;
  sub_220D7FCF0();
  v186 = v596;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v185, 1, v596);
  v188 = v629;
  v189 = v581;
  if (EnumTagSinglePayload == 1)
  {
    sub_220CDA548(v185, &qword_27CF955F0, &qword_220DC2938);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952A0, &unk_220DC4F90);
    *(swift_allocObject() + 16) = xmmword_220DC17A0;
    OUTLINED_FUNCTION_5_23();
    v628 = v190;
    sub_220D7FC40();
    v191 = v591;
LABEL_141:
    v523 = v586;
    v524 = v625[10];
    v525 = v625[11];
    __swift_project_boxed_opaque_existential_1(v625 + 7, v524);
    v526 = v587;
    sub_220DBEA60();
    v527 = v627;
    sub_220D7EE58(v627, v526, v624, v523);
    v604(v526, v188);
    (*(v525 + 8))(v632, v527, v191, v523, v524, v525);
    OUTLINED_FUNCTION_52_2();
    v528();
    v624 = v632[1];
    v625 = v632[0];
    OUTLINED_FUNCTION_0_20();
    v630 = v529;
    sub_220D7FC40();
    v530 = v593;
    v531 = *(v593 + 16);
    v532 = v188;
    v533 = v592;
    v531(v592, v527, v599);
    *&v616 = v635;
    v620 = v634;
    v627 = v633;
    v534 = v532;
    v535 = v617;
    v617(v526, v619, v534);
    v536 = type metadata accessor for SunriseSunsetDetailChartViewModel(0);
    v537 = v594;
    *&v594[v536[14]] = 0x4056800000000000;
    *&v537[v536[15]] = 0xC056800000000000;
    v538 = v631;
    *v537 = v631;
    sub_220D7FC40();
    v539 = v599;
    v531(&v537[v536[6]], v533, v599);
    *&v537[v536[7]] = v616;
    *&v537[v536[8]] = v620;
    *&v537[v536[9]] = v627;
    v540 = v629;
    v535(&v537[v536[10]], v526, v629);
    *&v537[v536[11]] = v628;
    v541 = &v537[v536[12]];
    v542 = v624;
    *v541 = v625;
    *(v541 + 1) = v542;
    v631 = v538;

    v544 = sub_220D823B8(v543, v533, v526);
    v545 = v604;
    v604(v526, v540);
    (*(v530 + 8))(v533, v539);
    v546 = v630;
    sub_220D7FC98(v598, v630);
    OUTLINED_FUNCTION_1_32();
    sub_220D7FC98(v601, v547);
    sub_220D7FC98(v602, v546);
    OUTLINED_FUNCTION_52_2();
    v548();
    (*(v588 + 8))(v618, v589);
    v545(v585, v540);

    *&v537[v536[13]] = v544;
    return result;
  }

  (*(v590 + 32))(v595, v185, v186);
  OUTLINED_FUNCTION_38_3();
  sub_220DBF040();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_31_5(v192, v193, v194, v195, v196, v197, v198, v199);
  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_49_2();
  sub_220D7FCF0();
  OUTLINED_FUNCTION_11_15(0xEA00000000006B73);
  if (v212)
  {
    v185 = &unk_220DC1D80;
    OUTLINED_FUNCTION_52();
    sub_220CDA548(v200, v201, v202);

    OUTLINED_FUNCTION_52();
    sub_220CDA548(v203, v204, v205);
    v614 = 0;
    OUTLINED_FUNCTION_42_2();
  }

  else
  {
    OUTLINED_FUNCTION_30_6();
    OUTLINED_FUNCTION_43_1();
    v206();
    OUTLINED_FUNCTION_29_5();
    MEMORY[0x28223BE20](v207);
    OUTLINED_FUNCTION_12_20();
    *(v208 - 16) = v189;
    v97 = v189;
    OUTLINED_FUNCTION_32_4();
    sub_220D7B828(v209, v210, v211);
    v614 = 0;
    OUTLINED_FUNCTION_7_18(v189);
    if (v212)
    {

      OUTLINED_FUNCTION_3_26();
      v213();
      sub_220CDA548(v573, &qword_27CF951E0, &unk_220DC1D80);
      sub_220CDA548(v189, &qword_27CF95F00, &unk_220DC5A50);
    }

    else
    {
      OUTLINED_FUNCTION_2_29();
      v186 = v550[1];
      sub_220D804B8();
      v214 = OUTLINED_FUNCTION_9_21();
      OUTLINED_FUNCTION_33_2(v214, v215, v216, v217);

      v218 = OUTLINED_FUNCTION_27_0();
      sub_220D7FC98(v218, v219);
      OUTLINED_FUNCTION_3_26();
      v220();
      sub_220CDA548(v573, &qword_27CF951E0, &unk_220DC1D80);
    }

    OUTLINED_FUNCTION_42_2();
    OUTLINED_FUNCTION_36_3();
  }

  v221 = OUTLINED_FUNCTION_13_14(&v618);
  __swift_storeEnumTagSinglePayload(v221, v223, v224, *(v222 - 256));
  sub_220DBF050();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_31_5(v225, v226, v227, v228, v229, v230, v231, v232);
  OUTLINED_FUNCTION_16_17();
  v233 = v559;
  sub_220D7FCF0();
  OUTLINED_FUNCTION_11_15(v233);
  if (v212)
  {
    OUTLINED_FUNCTION_52();
    sub_220CDA548(v234, v235, v236);

    OUTLINED_FUNCTION_52();
    sub_220CDA548(v237, v238, v239);
  }

  else
  {
    OUTLINED_FUNCTION_30_6();
    v240 = v550[10];
    v241();
    OUTLINED_FUNCTION_29_5();
    MEMORY[0x28223BE20](v242);
    OUTLINED_FUNCTION_12_20();
    *(v243 - 16) = v240;
    v244 = v551;
    v245 = v614;
    sub_220D7B828(sub_220D81A90, v631, v551);
    OUTLINED_FUNCTION_7_18(v244);
    v614 = v245;
    if (v246)
    {

      v247 = OUTLINED_FUNCTION_39_3();
      v185(v247);
      sub_220CDA548(v574, &qword_27CF951E0, &unk_220DC1D80);
      sub_220CDA548(v244, &qword_27CF95F00, &unk_220DC5A50);
    }

    else
    {
      OUTLINED_FUNCTION_2_29();
      sub_220D804B8();
      v248 = OUTLINED_FUNCTION_9_21();
      OUTLINED_FUNCTION_33_2(v248, v249, v250, v251);

      v252 = OUTLINED_FUNCTION_27_0();
      sub_220D7FC98(v252, v253);
      v254 = OUTLINED_FUNCTION_39_3();
      v185(v254);
      sub_220CDA548(v574, &qword_27CF951E0, &unk_220DC1D80);
    }

    v186 = v584;
  }

  v255 = v558;
  v256 = OUTLINED_FUNCTION_13_14(&v619);
  OUTLINED_FUNCTION_37_3(v256, v257, v258, v259);
  sub_220DBEFE0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_11();
  *&v616 = v174;
  v268 = OUTLINED_FUNCTION_31_5(v260, v261, v262, v263, v264, v265, v266, v267);
  v270 = v269;
  OUTLINED_FUNCTION_49_2();
  sub_220D7FCF0();
  OUTLINED_FUNCTION_11_15(0x6C6163697475614ELL);
  if (v212)
  {
    sub_220CDA548(v186, &qword_27CF951E0, &unk_220DC1D80);

    v271 = 0x6C6163697475614ELL;
    v272 = &qword_27CF951E0;
    v273 = &unk_220DC1D80;
  }

  else
  {
    OUTLINED_FUNCTION_30_6();
    v274 = v550[11];
    OUTLINED_FUNCTION_43_1();
    v276 = v275();
    MEMORY[0x28223BE20](v276);
    OUTLINED_FUNCTION_12_20();
    *(v277 - 16) = v274;
    OUTLINED_FUNCTION_38_3();
    v278 = v614;
    sub_220D7B828(v279, v631, v280);
    v614 = v278;
    OUTLINED_FUNCTION_7_18(v186);
    if (!v281)
    {
      OUTLINED_FUNCTION_2_29();
      v283 = v550[3];
      sub_220D804B8();
      OUTLINED_FUNCTION_33_2(v283, v268, v270, v600);

      v284 = OUTLINED_FUNCTION_27_0();
      sub_220D7FC98(v284, v285);
      OUTLINED_FUNCTION_3_26();
      v286();
      sub_220CDA548(v584, &qword_27CF951E0, &unk_220DC1D80);
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_3_26();
    v282();
    sub_220CDA548(v584, &qword_27CF951E0, &unk_220DC1D80);
    v272 = &qword_27CF95F00;
    v273 = &unk_220DC5A50;
    v271 = v186;
  }

  sub_220CDA548(v271, v272, v273);
LABEL_40:
  v287 = v576;
  v288 = v560;
  v289 = v575;
  v290 = OUTLINED_FUNCTION_13_14(&v620);
  OUTLINED_FUNCTION_37_3(v290, v291, v292, v293);
  sub_220DBEFF0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10_20(0x6C6163697475614ELL, 0xED00006B73754420, v294, v295, v296, v297, v298, v97 + 58);
  OUTLINED_FUNCTION_16_17();
  sub_220D7FCF0();
  OUTLINED_FUNCTION_11_15(v288);
  v299 = v614;
  if (v212)
  {
    v255 = &qword_27CF951E0;
    OUTLINED_FUNCTION_40_3(v287);

    OUTLINED_FUNCTION_40_3(v288);
    OUTLINED_FUNCTION_48_1();
  }

  else
  {
    (*(v603 + 32))(v255, v288, v188);
    OUTLINED_FUNCTION_29_5();
    MEMORY[0x28223BE20](v300);
    OUTLINED_FUNCTION_12_20();
    *(v301 - 16) = v255;
    v288 = v255;
    OUTLINED_FUNCTION_32_4();
    sub_220D7B828(v302, v303, v304);
    OUTLINED_FUNCTION_7_18(v255);
    if (v305)
    {

      OUTLINED_FUNCTION_3_26();
      v306();
      sub_220CDA548(v576, &qword_27CF951E0, &unk_220DC1D80);
      sub_220CDA548(v255, &qword_27CF95F00, &unk_220DC5A50);
    }

    else
    {
      OUTLINED_FUNCTION_2_29();
      v287 = v550[4];
      sub_220D804B8();
      v307 = OUTLINED_FUNCTION_9_21();
      OUTLINED_FUNCTION_33_2(v307, v308, v309, v310);

      v311 = OUTLINED_FUNCTION_27_0();
      sub_220D7FC98(v311, v312);
      OUTLINED_FUNCTION_3_26();
      v313();
      sub_220CDA548(v576, &qword_27CF951E0, &unk_220DC1D80);
    }

    OUTLINED_FUNCTION_48_1();
    v289 = v575;
  }

  v314 = OUTLINED_FUNCTION_13_14(&v621);
  OUTLINED_FUNCTION_37_3(v314, v315, v316, v317);
  sub_220DBF000();
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_10_20(0xD000000000000011, v318, v319, v320, v321, v322, v323, v97 + 64);
  OUTLINED_FUNCTION_16_17();
  sub_220D7FCF0();
  OUTLINED_FUNCTION_11_15(v255);
  if (v212)
  {
    v324 = v287;
    v327 = v255;
    OUTLINED_FUNCTION_40_3(v324);

    OUTLINED_FUNCTION_40_3(v255);
    OUTLINED_FUNCTION_46_2();
  }

  else
  {
    (*(v603 + 32))(v289, v255, v188);
    OUTLINED_FUNCTION_29_5();
    MEMORY[0x28223BE20](v325);
    OUTLINED_FUNCTION_12_20();
    *(v326 - 16) = v289;
    v97 = v554;
    sub_220D7B828(sub_220D81A90, v631, v554);
    v327 = v97;
    OUTLINED_FUNCTION_7_18(v97);
    if (v328)
    {

      OUTLINED_FUNCTION_3_26();
      v329();
      sub_220CDA548(v577, &qword_27CF951E0, &unk_220DC1D80);
      sub_220CDA548(v97, &qword_27CF95F00, &unk_220DC5A50);
    }

    else
    {
      v97 = type metadata accessor for DetailChartDataElement;
      v327 = v550[5];
      sub_220D804B8();
      v330 = OUTLINED_FUNCTION_9_21();
      OUTLINED_FUNCTION_33_2(v330, v331, v332, v333);

      sub_220D7FC98(v327, type metadata accessor for DetailChartDataElement);
      OUTLINED_FUNCTION_3_26();
      v334();
      sub_220CDA548(v577, &qword_27CF951E0, &unk_220DC1D80);
    }

    OUTLINED_FUNCTION_46_2();
    OUTLINED_FUNCTION_36_3();
  }

  v335 = OUTLINED_FUNCTION_13_14(&v622);
  OUTLINED_FUNCTION_37_3(v335, v336, v337, v338);
  sub_220DBF010();
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_10_20(0xD000000000000011, v339, v340, v341, v342, v343, v344, v97 + 62);
  OUTLINED_FUNCTION_16_17();
  sub_220D7FCF0();
  OUTLINED_FUNCTION_11_15(v288);
  v345 = v603;
  if (v212)
  {
    v356 = v299;
    v299 = &qword_27CF951E0;
    OUTLINED_FUNCTION_52();
    sub_220CDA548(v346, v347, v348);

    OUTLINED_FUNCTION_52();
    sub_220CDA548(v349, v350, v351);
    OUTLINED_FUNCTION_44_2();
  }

  else
  {
    OUTLINED_FUNCTION_30_6();
    v97 = v552;
    v352(v552, v288, v188);
    OUTLINED_FUNCTION_29_5();
    MEMORY[0x28223BE20](v353);
    OUTLINED_FUNCTION_12_20();
    *(v354 - 16) = v97;
    v355 = v555;
    sub_220D7B828(sub_220D81A90, v631, v555);
    v356 = v299;
    OUTLINED_FUNCTION_7_18(v355);
    if (v357)
    {

      OUTLINED_FUNCTION_3_26();
      v358();
      sub_220CDA548(v578, &qword_27CF951E0, &unk_220DC1D80);
      sub_220CDA548(v355, &qword_27CF95F00, &unk_220DC5A50);
    }

    else
    {
      OUTLINED_FUNCTION_2_29();
      v327 = v550[6];
      sub_220D804B8();
      v359 = OUTLINED_FUNCTION_9_21();
      OUTLINED_FUNCTION_33_2(v359, v360, v361, v362);

      v363 = OUTLINED_FUNCTION_27_0();
      sub_220D7FC98(v363, v364);
      OUTLINED_FUNCTION_3_26();
      v365();
      sub_220CDA548(v578, &qword_27CF951E0, &unk_220DC1D80);
    }

    OUTLINED_FUNCTION_44_2();
    v345 = v603;
    OUTLINED_FUNCTION_36_3();
  }

  v366 = OUTLINED_FUNCTION_13_14(&v623);
  OUTLINED_FUNCTION_37_3(v366, v367, v368, v369);
  sub_220DBF030();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10_20(0x657369726E7553, 0xE700000000000000, v370, v371, v372, v373, v374, v97 + 22);
  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_27_0();
  sub_220D7FCF0();
  OUTLINED_FUNCTION_11_15(v299);
  if (v212)
  {
    OUTLINED_FUNCTION_52();
    sub_220CDA548(v375, v376, v377);

    OUTLINED_FUNCTION_52();
    sub_220CDA548(v378, v379, v380);
    v381 = v562;
    v382 = v561;
    v387 = v356;
  }

  else
  {
    OUTLINED_FUNCTION_30_6();
    v383 = v553;
    OUTLINED_FUNCTION_43_1();
    v385 = v384();
    MEMORY[0x28223BE20](v385);
    OUTLINED_FUNCTION_12_20();
    *(v386 - 16) = v383;
    OUTLINED_FUNCTION_38_3();
    v387 = v356;
    sub_220D7B828(v388, v631, v389);
    OUTLINED_FUNCTION_7_18(v327);
    if (v390)
    {

      OUTLINED_FUNCTION_3_26();
      v391();
      sub_220CDA548(v579, &qword_27CF951E0, &unk_220DC1D80);
      sub_220CDA548(v327, &qword_27CF95F00, &unk_220DC5A50);
    }

    else
    {
      v392 = v550[7];
      sub_220D804B8();
      v393 = OUTLINED_FUNCTION_9_21();
      OUTLINED_FUNCTION_33_2(v393, v394, v395, v396);

      sub_220D7FC98(v392, type metadata accessor for DetailChartDataElement);
      OUTLINED_FUNCTION_3_26();
      v397();
      sub_220CDA548(v579, &qword_27CF951E0, &unk_220DC1D80);
    }

    v381 = v562;
    v345 = v603;
    v382 = v561;
  }

  v398 = v580;
  v399 = OUTLINED_FUNCTION_13_14(&v613);
  __swift_storeEnumTagSinglePayload(v399, v401, v402, *(v400 - 256));
  sub_220DBF060();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10_20(0x6F4E2072616C6F53, 0xEA00000000006E6FLL, v403, v404, v405, v406, v407, v97 + 38);
  OUTLINED_FUNCTION_16_17();
  sub_220D7FCF0();
  OUTLINED_FUNCTION_11_15(v381);
  if (v212)
  {
    OUTLINED_FUNCTION_40_3(v398);

    OUTLINED_FUNCTION_40_3(v381);
    v408 = v565;
  }

  else
  {
    OUTLINED_FUNCTION_30_6();
    v409(v382, v381, v188);
    OUTLINED_FUNCTION_29_5();
    MEMORY[0x28223BE20](v410);
    OUTLINED_FUNCTION_12_20();
    *(v411 - 16) = v382;
    OUTLINED_FUNCTION_32_4();
    v97 = v382;
    sub_220D7B828(v412, v413, v414);
    v415 = v398;
    OUTLINED_FUNCTION_7_18(v398);
    v408 = v565;
    if (v416)
    {

      OUTLINED_FUNCTION_3_26();
      v417();
      sub_220CDA548(v580, &qword_27CF951E0, &unk_220DC1D80);
      sub_220CDA548(v415, &qword_27CF95F00, &unk_220DC5A50);
    }

    else
    {
      v418 = v550[8];
      sub_220D804B8();
      v419 = OUTLINED_FUNCTION_9_21();
      sub_220D7F650(v419, v420, v421, 1, v422);

      sub_220D7FC98(v418, type metadata accessor for DetailChartDataElement);
      OUTLINED_FUNCTION_3_26();
      v423();
      sub_220CDA548(v580, &qword_27CF951E0, &unk_220DC1D80);
    }

    OUTLINED_FUNCTION_36_3();
  }

  v424 = OUTLINED_FUNCTION_13_14(&v614);
  __swift_storeEnumTagSinglePayload(v424, v426, v427, *(v425 - 256));
  sub_220DBF020();
  OUTLINED_FUNCTION_2_0();
  v433 = OUTLINED_FUNCTION_10_20(0x7465736E7553, 0xE600000000000000, v428, v429, v430, v431, v432, v97 + 21);
  v435 = v434;
  v436 = v563;
  sub_220D7FCF0();
  OUTLINED_FUNCTION_11_15(v436);
  if (v212)
  {
    v614 = v387;
    OUTLINED_FUNCTION_52();
    sub_220CDA548(v437, v438, v439);

    OUTLINED_FUNCTION_52();
LABEL_81:
    sub_220CDA548(v440, v441, v442);
    goto LABEL_82;
  }

  v443 = v556;
  (*(v345 + 32))(v556, v436, v188);
  OUTLINED_FUNCTION_29_5();
  MEMORY[0x28223BE20](v444);
  OUTLINED_FUNCTION_12_20();
  *(v445 - 16) = v443;
  v446 = v557;
  sub_220D7B828(sub_220D80510, v631, v557);
  OUTLINED_FUNCTION_7_18(v446);
  v614 = v387;
  if (v447)
  {

    OUTLINED_FUNCTION_3_26();
    v448();
    sub_220CDA548(v408, &qword_27CF951E0, &unk_220DC1D80);
    v441 = &qword_27CF95F00;
    v442 = &unk_220DC5A50;
    v440 = v446;
    goto LABEL_81;
  }

  OUTLINED_FUNCTION_2_29();
  v449 = v550[9];
  sub_220D804B8();
  OUTLINED_FUNCTION_33_2(v449, v433, v435, v597);

  v450 = OUTLINED_FUNCTION_27_0();
  sub_220D7FC98(v450, v451);
  OUTLINED_FUNCTION_3_26();
  v452();
  sub_220CDA548(v408, &qword_27CF951E0, &unk_220DC1D80);
LABEL_82:
  v453 = OUTLINED_FUNCTION_13_14(&v615);
  __swift_storeEnumTagSinglePayload(v453, v455, v456, *(v454 - 256));
  v457 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95F10, &qword_220DC5A68);
  v458 = *(v569 + 72);
  v459 = (*(v569 + 80) + 32) & ~*(v569 + 80);
  v460 = swift_allocObject();
  v616 = xmmword_220DC17C0;
  *(v460 + 16) = xmmword_220DC17C0;
  v613 = v460;
  v461 = v460 + v459;
  v462 = v564;
  sub_220D7FCF0();
  OUTLINED_FUNCTION_18_13(v462);
  v463 = v568;
  v464 = v566;
  if (v212)
  {
    sub_220CDA548(v462, &qword_27CF95F08, &qword_220DC5A60);
    v466 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_0_20();
    sub_220D7FC40();
    OUTLINED_FUNCTION_1_32();
    sub_220D7FC98(v462, v465);
    v466 = 0;
  }

  OUTLINED_FUNCTION_41_2(v461, v466);
  sub_220D7FCF0();
  OUTLINED_FUNCTION_18_13(v464);
  if (v212)
  {
    sub_220CDA548(v464, &qword_27CF95F08, &qword_220DC5A60);
    v468 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_0_20();
    sub_220D7FC40();
    OUTLINED_FUNCTION_1_32();
    sub_220D7FC98(v464, v467);
    v468 = 0;
  }

  OUTLINED_FUNCTION_41_2(v461 + v458, v468);
  v469 = swift_allocObject();
  *(v469 + 16) = v616;
  v611 = v469;
  v470 = v469 + v459;
  v471 = v567;
  sub_220D7FCF0();
  OUTLINED_FUNCTION_18_13(v471);
  if (v212)
  {
    sub_220CDA548(v471, &qword_27CF95F08, &qword_220DC5A60);
    v473 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_0_20();
    sub_220D7FC40();
    OUTLINED_FUNCTION_1_32();
    sub_220D7FC98(v471, v472);
    v473 = 0;
  }

  OUTLINED_FUNCTION_41_2(v470, v473);
  sub_220D7FCF0();
  OUTLINED_FUNCTION_18_13(v463);
  if (v212)
  {
    sub_220CDA548(v463, &qword_27CF95F08, &qword_220DC5A60);
    v475 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_0_20();
    sub_220D7FC40();
    OUTLINED_FUNCTION_1_32();
    sub_220D7FC98(v463, v474);
    v475 = 0;
  }

  OUTLINED_FUNCTION_41_2(v470 + v458, v475);
  v476 = swift_allocObject();
  *(v476 + 16) = v616;
  v612 = v476;
  v477 = v476 + v459;
  OUTLINED_FUNCTION_49_2();
  sub_220D7FCF0();
  OUTLINED_FUNCTION_18_13(v457);
  if (v212)
  {
    sub_220CDA548(v457, &qword_27CF95F08, &qword_220DC5A60);
    v479 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_0_20();
    sub_220D7FC40();
    OUTLINED_FUNCTION_1_32();
    sub_220D7FC98(v457, v478);
    v479 = 0;
  }

  v480 = v605;
  v481 = v570;
  OUTLINED_FUNCTION_41_2(v477, v479);
  sub_220D7FCF0();
  OUTLINED_FUNCTION_18_13(v481);
  if (v212)
  {
    sub_220CDA548(v481, &qword_27CF95F08, &qword_220DC5A60);
    v483 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_0_20();
    sub_220D7FC40();
    OUTLINED_FUNCTION_1_32();
    sub_220D7FC98(v481, v482);
    v483 = 0;
  }

  v484 = v608;
  *&v616 = v477;
  OUTLINED_FUNCTION_41_2(v477 + v458, v483);
  v485 = 0;
  v486 = MEMORY[0x277D84F90];
  do
  {
    v487 = v485;
    sub_220D7FCF0();
    OUTLINED_FUNCTION_43_1();
    sub_220D7FD48();
    OUTLINED_FUNCTION_7_18(v480);
    if (v212)
    {
      sub_220CDA548(v480, &qword_27CF95F00, &unk_220DC5A50);
    }

    else
    {
      OUTLINED_FUNCTION_0_20();
      sub_220D804B8();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_19_11();
        sub_220D569D8();
        v486 = v491;
      }

      v490 = *(v486 + 16);
      v489 = *(v486 + 24);
      if (v490 >= v489 >> 1)
      {
        OUTLINED_FUNCTION_27_7(v489);
        sub_220D569D8();
        v486 = v492;
      }

      *(v486 + 16) = v490 + 1;
      OUTLINED_FUNCTION_0_20();
      sub_220D804B8();
      v484 = v608;
      v480 = v605;
    }

    v485 = 1;
  }

  while ((v487 & 1) == 0);

  sub_220D7FA3C(v486);
  v493 = 0;
  v494 = MEMORY[0x277D84F90];
  do
  {
    v495 = v493;
    OUTLINED_FUNCTION_49_2();
    sub_220D7FCF0();
    sub_220D7FD48();
    OUTLINED_FUNCTION_7_18(v484);
    if (v212)
    {
      v496 = OUTLINED_FUNCTION_20();
      sub_220CDA548(v496, v497, &unk_220DC5A50);
    }

    else
    {
      OUTLINED_FUNCTION_0_20();
      sub_220D804B8();
      v498 = swift_isUniquelyReferenced_nonNull_native();
      if ((v498 & 1) == 0)
      {
        OUTLINED_FUNCTION_19_11();
        sub_220D569D8();
        v494 = v501;
      }

      v500 = *(v494 + 16);
      v499 = *(v494 + 24);
      if (v500 >= v499 >> 1)
      {
        OUTLINED_FUNCTION_27_7(v499);
        sub_220D569D8();
        v494 = v502;
      }

      *(v494 + 16) = v500 + 1;
      OUTLINED_FUNCTION_0_20();
      sub_220D804B8();
      v484 = v608;
    }

    v493 = 1;
  }

  while ((v495 & 1) == 0);

  sub_220D7FA3C(v494);
  v503 = 0;
  v504 = MEMORY[0x277D84F90];
  v505 = v572;
  do
  {
    v506 = v503;
    sub_220D7FCF0();
    sub_220D7FD48();
    OUTLINED_FUNCTION_7_18(v505);
    if (v212)
    {
      sub_220CDA548(v505, &qword_27CF95F00, &unk_220DC5A50);
    }

    else
    {
      OUTLINED_FUNCTION_0_20();
      sub_220D804B8();
      v507 = swift_isUniquelyReferenced_nonNull_native();
      if ((v507 & 1) == 0)
      {
        OUTLINED_FUNCTION_19_11();
        sub_220D569D8();
        v504 = v509;
      }

      v508 = *(v504 + 16);
      if (v508 >= *(v504 + 24) >> 1)
      {
        sub_220D569D8();
        v504 = v510;
      }

      *(v504 + 16) = v508 + 1;
      OUTLINED_FUNCTION_0_20();
      sub_220D804B8();
    }

    v503 = 1;
  }

  while ((v506 & 1) == 0);
  swift_setDeallocating();
  sub_220D7FDA0(&qword_27CF95F00, &unk_220DC5A50);
  sub_220D7FA3C(v504);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95F18, &qword_220DC5A70);
  v511 = *(v571 + 72);
  v512 = (*(v571 + 80) + 32) & ~*(v571 + 80);
  v513 = 10;
  v514 = swift_allocObject();
  *(v514 + 16) = xmmword_220DC5A30;
  v515 = v514 + v512;
  sub_220D7FCF0();
  OUTLINED_FUNCTION_21_9();
  OUTLINED_FUNCTION_21_9();
  OUTLINED_FUNCTION_21_9();
  OUTLINED_FUNCTION_5_23();
  sub_220D7FC40();
  __swift_storeEnumTagSinglePayload(v515 + 4 * v511, 0, 1, v609);
  OUTLINED_FUNCTION_21_9();
  OUTLINED_FUNCTION_21_9();
  OUTLINED_FUNCTION_21_9();
  OUTLINED_FUNCTION_21_9();
  OUTLINED_FUNCTION_21_9();
  v516 = MEMORY[0x277D84F90];
  v517 = v607;
  do
  {
    sub_220D7FCF0();
    OUTLINED_FUNCTION_52();
    sub_220D7FD48();
    if (__swift_getEnumTagSinglePayload(v517, 1, v609) == 1)
    {
      sub_220CDA548(v517, &qword_27CF95F08, &qword_220DC5A60);
    }

    else
    {
      OUTLINED_FUNCTION_5_23();
      sub_220D804B8();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_19_11();
        sub_220D56910();
        v516 = v520;
      }

      v519 = *(v516 + 16);
      v518 = *(v516 + 24);
      if (v519 >= v518 >> 1)
      {
        OUTLINED_FUNCTION_27_7(v518);
        sub_220D56910();
        v516 = v521;
      }

      *(v516 + 16) = v519 + 1;
      OUTLINED_FUNCTION_5_23();
      sub_220D804B8();
      v517 = v607;
    }

    v515 += v511;
    --v513;
  }

  while (v513);
  swift_setDeallocating();
  sub_220D7FDA0(&qword_27CF95F08, &qword_220DC5A60);
  v632[0] = v516;

  v522 = v614;
  sub_220D80410(v632);
  if (!v522)
  {

    OUTLINED_FUNCTION_20_6(&v615);
    OUTLINED_FUNCTION_20_6(&v614);
    OUTLINED_FUNCTION_20_6(&v613);
    OUTLINED_FUNCTION_20_6(&v623);
    OUTLINED_FUNCTION_20_6(&v622);
    OUTLINED_FUNCTION_20_6(&v621);
    OUTLINED_FUNCTION_20_6(&v620);
    OUTLINED_FUNCTION_20_6(&v619);
    OUTLINED_FUNCTION_20_6(&v618);
    (*(v590 + 8))(v595, v596);
    v628 = v632[0];
    v191 = v591;
    v188 = v629;
    goto LABEL_141;
  }

  __break(1u);
  return result;
}

uint64_t sub_220D7EE58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v69 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95AE8, &qword_220DC47B0);
  MEMORY[0x28223BE20](v8 - 8);
  v62 = &v54 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v54 - v11;
  v63 = sub_220DBE560();
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v60 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_220DBE1A0();
  v67 = *(v14 - 8);
  v68 = v14;
  MEMORY[0x28223BE20](v14);
  v66 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_220DBE740();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_220DBE6E0();
  v64 = *(v20 - 8);
  v65 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_220DC0500();
  v24 = MEMORY[0x28223BE20](v23);
  v27 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    v44 = v4[5];
    v45 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v44);
    return (*(v45 + 8))(a1, v69, v44, v45);
  }

  v57 = v25;
  v58 = v24;
  v59 = v4;
  if (*(a3 + 16))
  {
    v28 = sub_220D7FE8C(v69);
    if (v29)
    {
      v30 = v57;
      v31 = v58;
      (*(v57 + 16))(v27, *(a3 + 56) + *(v57 + 72) * v28, v58);
      return (*(v30 + 32))(a4, v27, v31);
    }
  }

  v55 = a1;
  v56 = a4;
  sub_220DBF1C0();
  sub_220DBE600();
  (*(v17 + 8))(v19, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952F8, &unk_220DC5420);
  v33 = sub_220DBE6C0();
  v34 = *(v33 - 8);
  v35 = *(v34 + 72);
  v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_220DC5A40;
  v38 = v37 + v36;
  v39 = *(v34 + 104);
  v39(v38, *MEMORY[0x277CC9988], v33);
  v39(v38 + v35, *MEMORY[0x277CC9968], v33);
  v39(v38 + 2 * v35, *MEMORY[0x277CC9998], v33);
  v39(v38 + 3 * v35, *MEMORY[0x277CC9980], v33);
  v39(v38 + 4 * v35, *MEMORY[0x277CC99A0], v33);
  sub_220CE05C8(v37);
  v40 = v66;
  v41 = v69;
  sub_220DBE630();

  sub_220DBE660();
  v42 = v63;
  if (__swift_getEnumTagSinglePayload(v12, 1, v63) == 1)
  {
    sub_220CDA548(v12, &qword_27CF951E0, &unk_220DC1D80);
    v43 = v59;
LABEL_10:
    v52 = v43[5];
    v53 = v43[6];
    __swift_project_boxed_opaque_existential_1(v43 + 2, v52);
    (*(v53 + 8))(v55, v41, v52, v53);
    (*(v67 + 8))(v40, v68);
    return (*(v64 + 8))(v22, v65);
  }

  v47 = v60;
  v46 = v61;
  (*(v61 + 32))(v60, v12, v42);
  v48 = v62;
  sub_220D7F588(v47, a3, v62);
  (*(v46 + 8))(v47, v42);
  v49 = v58;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v48, 1, v58);
  v51 = v56;
  v43 = v59;
  if (EnumTagSinglePayload == 1)
  {
    sub_220CDA548(v48, &qword_27CF95AE8, &qword_220DC47B0);
    goto LABEL_10;
  }

  (*(v67 + 8))(v40, v68);
  (*(v64 + 8))(v22, v65);
  return (*(v57 + 32))(v51, v48, v49);
}

uint64_t sub_220D7F588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_220D7FE8C(a1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a2 + 56);
    v9 = sub_220DC0500();
    (*(*(v9 - 8) + 16))(a3, v8 + *(*(v9 - 8) + 72) * v7, v9);
    v10 = a3;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = sub_220DC0500();
    v10 = a3;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t sub_220D7F650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_220DBE740();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBF1C0();
  v14 = sub_220DBE4A0();
  v46 = v15;
  v47 = v14;
  (*(v11 + 8))(v13, v10);
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_220DC17A0;
  v17 = *(a1 + *(type metadata accessor for DetailChartDataElement(0) + 20));
  v18 = MEMORY[0x277D83A80];
  *(v16 + 56) = MEMORY[0x277D839F8];
  *(v16 + 64) = v18;
  *(v16 + 32) = v17;
  v19 = sub_220DC05F0();
  v21 = v20;

  if (a3)
  {

    sub_220D56830(0, 1, 1, MEMORY[0x277D84F90]);
    v23 = v22;
    v25 = *(v22 + 16);
    v24 = *(v22 + 24);
    v26 = v25 + 1;
    if (v25 >= v24 >> 1)
    {
      sub_220D56830(v24 > 1, v25 + 1, 1, v22);
      v23 = v42;
    }

    *(v23 + 16) = v26;
    v27 = v23 + 16 * v25;
    *(v27 + 32) = a2;
    *(v27 + 40) = a3;
    if ((a4 & 1) == 0)
    {

      goto LABEL_15;
    }

    v28 = *(v23 + 24);
    if ((v25 + 2) > (v28 >> 1))
    {
      sub_220D56830(v28 > 1, v25 + 2, 1, v23);
      v23 = v44;
    }

    *(v23 + 16) = v25 + 2;
    v29 = v23 + 16 * v26;
  }

  else
  {
    sub_220D56830(0, 1, 1, MEMORY[0x277D84F90]);
    v23 = v30;
    v32 = *(v30 + 16);
    v31 = *(v30 + 24);
    if (v32 >= v31 >> 1)
    {
      sub_220D56830(v31 > 1, v32 + 1, 1, v30);
      v23 = v43;
    }

    *(v23 + 16) = v32 + 1;
    v29 = v23 + 16 * v32;
  }

  *(v29 + 32) = v19;
  *(v29 + 40) = v21;
LABEL_15:
  v48 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95750, &qword_220DC5B30);
  sub_220D3A694();
  v33 = sub_220DC0570();
  v35 = v34;

  v36 = sub_220DBE560();
  (*(*(v36 - 8) + 16))(a5, a1, v36);
  v37 = type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel(0);
  result = sub_220D7FC40();
  v39 = (a5 + *(v37 + 20));
  v40 = v46;
  *v39 = v47;
  v39[1] = v40;
  v41 = (a5 + *(v37 + 24));
  *v41 = v33;
  v41[1] = v35;
  return result;
}

uint64_t sub_220D7FA3C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_220D8198C(result, 1, sub_220D569D8);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for DetailChartDataElement(0);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

BOOL sub_220D7FB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220DBE470();
  v4 = fabs(v3);
  sub_220DBE470();
  return v4 < fabs(v5);
}

uint64_t SunriseSunsetDetailChartViewModelFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  return v0;
}

uint64_t SunriseSunsetDetailChartViewModelFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_220D7FC40()
{
  OUTLINED_FUNCTION_6_4();
  v1(0);
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_20();
  v3(v2);
  return v0;
}

uint64_t sub_220D7FC98(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_220D7FCF0()
{
  OUTLINED_FUNCTION_6_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_20();
  v4(v3);
  return v0;
}

uint64_t sub_220D7FD48()
{
  OUTLINED_FUNCTION_6_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_20();
  v4(v3);
  return v0;
}

uint64_t sub_220D7FDA0(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v2, 32, 7);
}

uint64_t sub_220D7FE3C(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v2, 32, 7);
}

unint64_t sub_220D7FE8C(uint64_t a1)
{
  sub_220DBE560();
  sub_220D14970(&qword_280FA77A0, MEMORY[0x277CC9588]);
  v2 = sub_220DC0550();

  return sub_220D7FF7C(a1, v2);
}

unint64_t sub_220D7FF10(uint64_t a1)
{
  v1 = a1;
  sub_220DC0CE0();
  sub_220D7B6A0(v4, v1);
  v2 = sub_220DC0D20();

  return sub_220D80124(v1, v2);
}

unint64_t sub_220D7FF7C(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = sub_220DBE560();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_220D14970(&qword_27CF95528, MEMORY[0x277CC9598]);
    v9 = sub_220DC05B0();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_220D80124(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE800000000000000;
      v8 = 0x79746964696D7568;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x6572757373657270;
          break;
        case 2:
          v8 = 0xD000000000000012;
          v7 = 0x8000000220DC8A80;
          break;
        case 3:
          v8 = 0x74617265706D6574;
          v7 = 0xEB00000000657275;
          break;
        case 4:
          v8 = 0xD000000000000014;
          v7 = 0x8000000220DC8AA0;
          break;
        case 5:
          v7 = 0xE700000000000000;
          v8 = 0x7865646E497675;
          break;
        case 6:
          v8 = 0x696C696269736976;
          v7 = 0xEA00000000007974;
          break;
        case 7:
          v7 = 0xE400000000000000;
          v8 = 1684957559;
          break;
        case 8:
          v8 = 0x664F65636E616863;
          v7 = 0xEC0000006E696152;
          break;
        default:
          break;
      }

      v9 = 0xE800000000000000;
      v10 = 0x79746964696D7568;
      switch(a1)
      {
        case 1:
          v10 = 0x6572757373657270;
          break;
        case 2:
          v10 = 0xD000000000000012;
          v9 = 0x8000000220DC8A80;
          break;
        case 3:
          v10 = 0x74617265706D6574;
          v9 = 0xEB00000000657275;
          break;
        case 4:
          v10 = 0xD000000000000014;
          v9 = 0x8000000220DC8AA0;
          break;
        case 5:
          v9 = 0xE700000000000000;
          v10 = 0x7865646E497675;
          break;
        case 6:
          v10 = 0x696C696269736976;
          v9 = 0xEA00000000007974;
          break;
        case 7:
          v9 = 0xE400000000000000;
          v10 = 1684957559;
          break;
        case 8:
          v10 = 0x664F65636E616863;
          v9 = 0xEC0000006E696152;
          break;
        default:
          break;
      }

      if (v8 == v10 && v7 == v9)
      {
        break;
      }

      v12 = sub_220DC0CA0();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

uint64_t sub_220D80410(uint64_t *a1)
{
  v2 = *(type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_220D81A64();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_220D8059C(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_220D804B8()
{
  OUTLINED_FUNCTION_6_4();
  v1(0);
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_20();
  v3(v2);
  return v0;
}

uint64_t sub_220D8059C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_220DC0C60();
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
        type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel(0);
        v6 = sub_220DC0760();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_220D80900(v8, v9, a1, v4);
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
    return sub_220D806CC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_220D806CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v32 = type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel(0);
  v8 = MEMORY[0x28223BE20](v32);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  result = MEMORY[0x28223BE20](v9);
  v15 = &v24 - v14;
  v26 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v19 = -v17;
    v20 = a1 - a3;
    v31 = v16;
    v25 = v17;
    v21 = v16 + v17 * a3;
    while (2)
    {
      v29 = v18;
      v30 = a3;
      v27 = v21;
      v28 = v20;
      do
      {
        sub_220D7FC40();
        sub_220D7FC40();
        v22 = sub_220DBE440();
        sub_220D7FC98(v11, type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel);
        result = sub_220D7FC98(v15, type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel);
        if ((v22 & 1) == 0)
        {
          break;
        }

        if (!v31)
        {
          __break(1u);
          return result;
        }

        sub_220D804B8();
        swift_arrayInitWithTakeFrontToBack();
        result = sub_220D804B8();
        v18 += v19;
        v21 += v19;
      }

      while (!__CFADD__(v20++, 1));
      a3 = v30 + 1;
      v18 = v29 + v25;
      v20 = v28 - 1;
      v21 = v27 + v25;
      if (v30 + 1 != v26)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_220D80900(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v100 = a1;
  v114 = type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel(0);
  v109 = *(v114 - 8);
  v9 = MEMORY[0x28223BE20](v114);
  v104 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v113 = &v97 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v115 = &v97 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v97 - v15;
  v111 = a3;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_101:
    v5 = *v100;
    if (!*v100)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v90 = v19 + 16;
      v91 = *(v19 + 2);
      for (i = v19; v91 >= 2; v19 = i)
      {
        if (!*v111)
        {
          goto LABEL_139;
        }

        v92 = &v19[16 * v91];
        v93 = *v92;
        v94 = &v90[2 * v91];
        v95 = v94[1];
        sub_220D811D4(*v111 + *(v109 + 72) * *v92, *v111 + *(v109 + 72) * *v94, *v111 + *(v109 + 72) * v95, v5);
        if (v6)
        {
          break;
        }

        if (v95 < v93)
        {
          goto LABEL_127;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_128;
        }

        *v92 = v93;
        *(v92 + 1) = v95;
        v96 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_129;
        }

        v91 = *v90 - 1;
        memmove(v94, v94 + 2, 16 * v96);
        *v90 = v91;
      }

LABEL_111:

      return;
    }

LABEL_136:
    v19 = sub_220D81650();
    goto LABEL_103;
  }

  v99 = a4;
  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  v105 = &v97 - v15;
  while (1)
  {
    v20 = v18++;
    i = v19;
    v101 = v20;
    if (v18 < v17)
    {
      v21 = *v111;
      v5 = *(v109 + 72);
      v22 = v20;
      v23 = *v111 + v5 * v18;
      v108 = v17;
      sub_220D7FC40();
      v24 = v115;
      sub_220D7FC40();
      LODWORD(v107) = sub_220DBE440();
      sub_220D7FC98(v24, type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel);
      sub_220D7FC98(v16, type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel);
      v25 = v108;
      v26 = v22 + 2;
      v110 = v5;
      v27 = v21 + v5 * (v22 + 2);
      while (1)
      {
        v28 = v26;
        if (++v18 >= v25)
        {
          break;
        }

        sub_220D7FC40();
        v5 = v115;
        sub_220D7FC40();
        v29 = sub_220DBE440() & 1;
        sub_220D7FC98(v5, type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel);
        sub_220D7FC98(v16, type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel);
        v27 += v110;
        v23 += v110;
        v26 = v28 + 1;
        v25 = v108;
        if ((v107 & 1) != v29)
        {
          goto LABEL_9;
        }
      }

      v18 = v25;
LABEL_9:
      if (v107)
      {
        v20 = v101;
        if (v18 < v101)
        {
          goto LABEL_133;
        }

        if (v101 >= v18)
        {
          v19 = i;
          goto LABEL_32;
        }

        v98 = v6;
        if (v25 >= v28)
        {
          v30 = v28;
        }

        else
        {
          v30 = v25;
        }

        v31 = v110 * (v30 - 1);
        v32 = v101;
        v33 = v110 * v30;
        v34 = v101 * v110;
        v35 = v18;
        v19 = i;
        do
        {
          if (v32 != --v35)
          {
            v5 = *v111;
            if (!*v111)
            {
              goto LABEL_140;
            }

            sub_220D804B8();
            v36 = v34 < v31 || v5 + v34 >= v5 + v33;
            if (v36)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v34 != v31)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_220D804B8();
            v19 = i;
          }

          ++v32;
          v31 -= v110;
          v33 -= v110;
          v34 += v110;
        }

        while (v32 < v35);
        v6 = v98;
      }

      else
      {
        v19 = i;
      }

      v20 = v101;
    }

LABEL_32:
    v37 = v111[1];
    if (v18 < v37)
    {
      if (__OFSUB__(v18, v20))
      {
        goto LABEL_132;
      }

      if (v18 - v20 < v99)
      {
        break;
      }
    }

LABEL_48:
    if (v18 < v20)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_220D562D4();
      v19 = v88;
    }

    v46 = *(v19 + 2);
    v47 = v46 + 1;
    if (v46 >= *(v19 + 3) >> 1)
    {
      sub_220D562D4();
      v19 = v89;
    }

    *(v19 + 2) = v47;
    v48 = v19 + 32;
    v49 = &v19[16 * v46 + 32];
    *v49 = v101;
    *(v49 + 1) = v18;
    v110 = *v100;
    if (!v110)
    {
      goto LABEL_141;
    }

    v50 = v16;
    if (v46)
    {
      i = v19;
      while (1)
      {
        v51 = v47 - 1;
        v52 = &v48[16 * v47 - 16];
        v53 = &v19[16 * v47];
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v54 = *(v19 + 4);
          v55 = *(v19 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_69:
          if (v57)
          {
            goto LABEL_118;
          }

          v69 = *v53;
          v68 = *(v53 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_121;
          }

          v73 = *(v52 + 1);
          v74 = v73 - *v52;
          if (__OFSUB__(v73, *v52))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v71, v74))
          {
            goto LABEL_126;
          }

          if (v71 + v74 >= v56)
          {
            if (v56 < v74)
            {
              v51 = v47 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v47 < 2)
        {
          goto LABEL_120;
        }

        v76 = *v53;
        v75 = *(v53 + 1);
        v64 = __OFSUB__(v75, v76);
        v71 = v75 - v76;
        v72 = v64;
LABEL_84:
        if (v72)
        {
          goto LABEL_123;
        }

        v78 = *v52;
        v77 = *(v52 + 1);
        v64 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v64)
        {
          goto LABEL_125;
        }

        if (v79 < v71)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v51 - 1 >= v47)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*v111)
        {
          goto LABEL_138;
        }

        v83 = &v48[16 * v51 - 16];
        v84 = *v83;
        v5 = v51;
        v85 = &v48[16 * v51];
        v86 = *(v85 + 1);
        sub_220D811D4(*v111 + *(v109 + 72) * *v83, *v111 + *(v109 + 72) * *v85, *v111 + *(v109 + 72) * v86, v110);
        if (v6)
        {
          goto LABEL_111;
        }

        if (v86 < v84)
        {
          goto LABEL_113;
        }

        v6 = *(i + 2);
        if (v5 > v6)
        {
          goto LABEL_114;
        }

        *v83 = v84;
        *(v83 + 1) = v86;
        if (v5 >= v6)
        {
          goto LABEL_115;
        }

        v47 = v6 - 1;
        memmove(v85, v85 + 16, 16 * (v6 - 1 - v5));
        v19 = i;
        *(i + 2) = v6 - 1;
        v87 = v6 > 2;
        v6 = 0;
        v50 = v105;
        if (!v87)
        {
          goto LABEL_98;
        }
      }

      v58 = &v48[16 * v47];
      v59 = *(v58 - 8);
      v60 = *(v58 - 7);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_116;
      }

      v63 = *(v58 - 6);
      v62 = *(v58 - 5);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_117;
      }

      v65 = *(v53 + 1);
      v66 = v65 - *v53;
      if (__OFSUB__(v65, *v53))
      {
        goto LABEL_119;
      }

      v64 = __OFADD__(v56, v66);
      v67 = v56 + v66;
      if (v64)
      {
        goto LABEL_122;
      }

      if (v67 >= v61)
      {
        v81 = *v52;
        v80 = *(v52 + 1);
        v64 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v64)
        {
          goto LABEL_130;
        }

        if (v56 < v82)
        {
          v51 = v47 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v17 = v111[1];
    v16 = v50;
    if (v18 >= v17)
    {
      goto LABEL_101;
    }
  }

  v38 = v20 + v99;
  if (__OFADD__(v20, v99))
  {
    goto LABEL_134;
  }

  if (v38 >= v37)
  {
    v38 = v111[1];
  }

  if (v38 < v20)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v18 == v38)
  {
    goto LABEL_48;
  }

  v98 = v6;
  v39 = *v111;
  v40 = *(v109 + 72);
  v5 = *v111 + v40 * (v18 - 1);
  v41 = -v40;
  v42 = v20 - v18;
  v102 = v40;
  v103 = v38;
  v43 = v39 + v18 * v40;
LABEL_41:
  v110 = v18;
  v106 = v43;
  v107 = v42;
  v108 = v5;
  while (1)
  {
    sub_220D7FC40();
    v44 = v115;
    sub_220D7FC40();
    v45 = sub_220DBE440();
    sub_220D7FC98(v44, type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel);
    sub_220D7FC98(v16, type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel);
    if ((v45 & 1) == 0)
    {
LABEL_46:
      v18 = v110 + 1;
      v5 = v108 + v102;
      v42 = v107 - 1;
      v43 = v106 + v102;
      if (v110 + 1 == v103)
      {
        v18 = v103;
        v6 = v98;
        v19 = i;
        v20 = v101;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v39)
    {
      break;
    }

    sub_220D804B8();
    swift_arrayInitWithTakeFrontToBack();
    sub_220D804B8();
    v5 += v41;
    v43 += v41;
    v36 = __CFADD__(v42++, 1);
    if (v36)
    {
      goto LABEL_46;
    }
  }

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
}