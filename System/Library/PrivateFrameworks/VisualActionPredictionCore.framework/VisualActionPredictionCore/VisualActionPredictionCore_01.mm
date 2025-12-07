uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void (*sub_2262D1A14(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = sub_22634EEFC();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (v4)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_2262D1E98(v6);
  v6[12] = sub_2262D1BE8(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_2262D1B50;
}

void sub_2262D1B50(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_2262D1BE8(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = sub_22634EEFC();
  *(v10 + 24) = v11;
  v12 = *(v11 - 8);
  *(v10 + 32) = v12;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  *(v10 + 40) = v13;
  v14 = *v4;
  v15 = sub_2263394D8(a2);
  *(v10 + 56) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      sub_22633A6C4();
      v15 = v23;
      goto LABEL_14;
    }

    sub_226337124(v20, a3 & 1);
    v15 = sub_2263394D8(a2);
    if ((v21 & 1) == (v24 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_226350C8C();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 48) = v15;
  if (v21)
  {
    v25 = *(*(*v4 + 56) + 8 * v15);
  }

  else
  {
    v25 = 0;
  }

  *v10 = v25;
  return sub_2262D1D98;
}

void sub_2262D1D98(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = *v1[2];
    v4 = v1[6];
    if ((*a1)[7])
    {
      *(v3[7] + 8 * v4) = v2;
    }

    else
    {
      v7 = v1[5];
      (*(v1[4] + 16))(v7, v1[1], v1[3]);
      sub_2262E3160(v4, v7, v2, v3);
    }
  }

  else if ((*a1)[7])
  {
    v5 = v1[6];
    v6 = *v1[2];
    (*(v1[4] + 8))(*(v6 + 48) + *(v1[4] + 72) * v5, v1[3]);
    sub_2262E2768(v5, v6);
  }

  v8 = v1[5];

  free(v8);

  free(v1);
}

uint64_t (*sub_2262D1E98(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2262D1EC0;
}

unint64_t sub_2262D1ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for RankedVisualAction(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_2262D67D8(a4, &qword_27D793090, &qword_226351F48);
  }

  if (v17 < 1)
  {
    return sub_2262D67D8(a4, &qword_27D793090, &qword_226351F48);
  }

  result = sub_2262D5EB8(a4, v15, type metadata accessor for RankedVisualAction);
  if (v12 >= v17)
  {
    return sub_2262D67D8(a4, &qword_27D793090, &qword_226351F48);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_2262D2058(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930D0, &unk_226352510) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2262DF55C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_2262D210C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_2262D210C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_226350C0C();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930D0, &unk_226352510);
        v6 = sub_22635059C();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930D0, &unk_226352510) - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_2262D25EC(v8, v9, a1, v4);
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
    return sub_2262D2250(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2262D2250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930D0, &unk_226352510);
  v9 = MEMORY[0x28223BE20](v8);
  v51 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v53 = &v42 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v52 = &v42 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v57 = &v42 - v16;
  result = MEMORY[0x28223BE20](v15);
  v56 = &v42 - v19;
  v44 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v18 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v49 = -v21;
    v50 = v20;
    v23 = a1 - a3;
    v43 = v21;
    v24 = v20 + v21 * a3;
    v25 = &qword_27D7930D0;
    v55 = v8;
LABEL_5:
    v47 = v22;
    v48 = a3;
    v45 = v24;
    v46 = v23;
    v54 = v23;
    while (1)
    {
      v26 = v56;
      sub_2262D66FC(v24, v56, v25, &unk_226352510);
      v27 = v57;
      sub_2262D66FC(v22, v57, v25, &unk_226352510);
      v28 = v52;
      sub_2262D66FC(v26, v52, v25, &unk_226352510);
      v29 = v28 + *(v8 + 48);
      v30 = type metadata accessor for ActionContext(0);
      v31 = *(v29 + *(v30 + 28));
      sub_2262D6068(v29, type metadata accessor for ActionContext);
      v32 = v27;
      v33 = v25;
      v34 = v53;
      sub_2262D66FC(v32, v53, v33, &unk_226352510);
      v35 = v34 + *(v55 + 48);
      v36 = *(v35 + *(v30 + 28));
      sub_2262D6068(v35, type metadata accessor for ActionContext);
      v37 = sub_22634EEFC();
      v38 = *(*(v37 - 8) + 8);
      v39 = v34;
      v25 = v33;
      v38(v39, v37);
      v38(v28, v37);
      v8 = v55;
      sub_2262D67D8(v57, v33, &unk_226352510);
      result = sub_2262D67D8(v56, v33, &unk_226352510);
      if (v31 >= v36)
      {
LABEL_4:
        a3 = v48 + 1;
        v22 = v47 + v43;
        v23 = v46 - 1;
        v24 = v45 + v43;
        if (v48 + 1 == v44)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v50)
      {
        break;
      }

      v40 = v51;
      sub_2262D6764(v24, v51, v33, &unk_226352510);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_2262D6764(v40, v22, v33, &unk_226352510);
      v22 += v49;
      v24 += v49;
      if (__CFADD__(v54++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2262D25EC(uint64_t **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v5;
  v148 = a1;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930D0, &unk_226352510);
  v156 = *(v164 - 8);
  v9 = MEMORY[0x28223BE20](v164);
  v11 = &v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v160 = &v144 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v163 = &v144 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v162 = &v144 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v161 = &v144 - v19;
  result = MEMORY[0x28223BE20](v18);
  v166 = &v144 - v21;
  v22 = a3[1];
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_97:
    v25 = *v148;
    if (!*v148)
    {
      goto LABEL_136;
    }

    v4 = v24;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
LABEL_100:
      v167 = result;
      v4 = *(result + 16);
      if (v4 >= 2)
      {
        while (*a3)
        {
          v140 = *(result + 16 * v4);
          v141 = result;
          v142 = *(result + 16 * (v4 - 1) + 40);
          sub_2262D3268(*a3 + *(v156 + 72) * v140, *a3 + *(v156 + 72) * *(result + 16 * (v4 - 1) + 32), *a3 + *(v156 + 72) * v142, v25);
          if (v6)
          {
          }

          if (v142 < v140)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v141 = sub_2262DECA8(v141);
          }

          if (v4 - 2 >= *(v141 + 2))
          {
            goto LABEL_124;
          }

          v143 = &v141[16 * v4];
          *v143 = v140;
          *(v143 + 1) = v142;
          v167 = v141;
          sub_2262DEC1C(v4 - 1);
          result = v167;
          v4 = *(v167 + 16);
          if (v4 <= 1)
          {
          }
        }

        goto LABEL_134;
      }
    }

LABEL_130:
    result = sub_2262DECA8(v4);
    goto LABEL_100;
  }

  v144 = a4;
  v23 = 0;
  v24 = MEMORY[0x277D84F90];
  v25 = &qword_27D7930D0;
  v149 = a3;
  v145 = v11;
  while (1)
  {
    v151 = v24;
    if (v23 + 1 >= v22)
    {
      v45 = v23 + 1;
    }

    else
    {
      v157 = v22;
      v147 = v6;
      v165 = *a3;
      v26 = v165;
      v27 = *(v156 + 72);
      v158 = v27;
      v28 = v165 + v27 * (v23 + 1);
      v29 = v166;
      sub_2262D66FC(v28, v166, &qword_27D7930D0, &unk_226352510);
      v30 = v161;
      sub_2262D66FC(v26 + v27 * v23, v161, &qword_27D7930D0, &unk_226352510);
      v31 = v162;
      sub_2262D66FC(v29, v162, &qword_27D7930D0, &unk_226352510);
      v32 = v164;
      v33 = v31 + *(v164 + 48);
      v34 = type metadata accessor for ActionContext(0);
      v35 = *(v33 + *(v34 + 28));
      sub_2262D6068(v33, type metadata accessor for ActionContext);
      v36 = v163;
      sub_2262D66FC(v30, v163, &qword_27D7930D0, &unk_226352510);
      v37 = v36 + *(v32 + 48);
      v155 = v34;
      v38 = *(v37 + *(v34 + 28));
      sub_2262D6068(v37, type metadata accessor for ActionContext);
      v39 = sub_22634EEFC();
      v40 = *(v39 - 8);
      v41 = *(v40 + 8);
      v42 = v40 + 8;
      v41(v36, v39);
      v43 = v31;
      v25 = &qword_27D7930D0;
      v153 = v41;
      v154 = v39;
      v152 = v42;
      v41(v43, v39);
      sub_2262D67D8(v30, &qword_27D7930D0, &unk_226352510);
      result = sub_2262D67D8(v166, &qword_27D7930D0, &unk_226352510);
      v146 = v23;
      v44 = v23 + 2;
      v4 = v165 + v158 * v44;
      while (1)
      {
        v45 = v157;
        if (v157 == v44)
        {
          break;
        }

        LODWORD(v159) = v35 < v38;
        v46 = v166;
        sub_2262D66FC(v4, v166, &qword_27D7930D0, &unk_226352510);
        v47 = v161;
        sub_2262D66FC(v28, v161, &qword_27D7930D0, &unk_226352510);
        v48 = v162;
        sub_2262D66FC(v46, v162, &qword_27D7930D0, &unk_226352510);
        v49 = v164;
        v50 = v48 + *(v164 + 48);
        v165 = v28;
        v51 = v155;
        v52 = *(v50 + *(v155 + 28));
        sub_2262D6068(v50, type metadata accessor for ActionContext);
        v53 = v163;
        sub_2262D66FC(v47, v163, &qword_27D7930D0, &unk_226352510);
        v54 = v53 + *(v49 + 48);
        v55 = *(v51 + 28);
        v56 = v165;
        v57 = *(v54 + v55);
        sub_2262D6068(v54, type metadata accessor for ActionContext);
        v58 = v53;
        v60 = v153;
        v59 = v154;
        v153(v58, v154);
        v61 = v48;
        v25 = &qword_27D7930D0;
        v60(v61, v59);
        sub_2262D67D8(v47, &qword_27D7930D0, &unk_226352510);
        result = sub_2262D67D8(v46, &qword_27D7930D0, &unk_226352510);
        ++v44;
        v4 += v158;
        v28 = v56 + v158;
        if (((v159 ^ (v52 >= v57)) & 1) == 0)
        {
          v45 = v44 - 1;
          break;
        }
      }

      v6 = v147;
      a3 = v149;
      v62 = v145;
      v23 = v146;
      if (v35 < v38)
      {
        if (v45 < v146)
        {
          goto LABEL_127;
        }

        if (v146 < v45)
        {
          v63 = v45;
          v64 = v158 * (v45 - 1);
          v65 = v45 * v158;
          v157 = v45;
          v66 = v146 * v158;
          do
          {
            if (v23 != --v63)
            {
              v67 = *v149;
              if (!*v149)
              {
                goto LABEL_133;
              }

              v4 = v67 + v66;
              sub_2262D6764(v67 + v66, v62, &qword_27D7930D0, &unk_226352510);
              if (v66 < v64 || v4 >= v67 + v65)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v66 != v64)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_2262D6764(v62, v67 + v64, &qword_27D7930D0, &unk_226352510);
            }

            ++v23;
            v64 -= v158;
            v65 -= v158;
            v66 += v158;
          }

          while (v23 < v63);
          v6 = v147;
          a3 = v149;
          v23 = v146;
          v45 = v157;
        }
      }
    }

    v68 = a3[1];
    if (v45 >= v68)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v45, v23))
    {
      goto LABEL_126;
    }

    if (v45 - v23 >= v144)
    {
LABEL_32:
      v70 = v45;
      if (v45 < v23)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v23, v144))
    {
      goto LABEL_128;
    }

    if (v23 + v144 >= v68)
    {
      v69 = a3[1];
    }

    else
    {
      v69 = v23 + v144;
    }

    if (v69 < v23)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (v45 == v69)
    {
      goto LABEL_32;
    }

    v147 = v6;
    v118 = *a3;
    v119 = *(v156 + 72);
    v120 = *a3 + v119 * (v45 - 1);
    v158 = -v119;
    v146 = v23;
    v121 = v23 - v45;
    v159 = v118;
    v150 = v119;
    v4 = v118 + v45 * v119;
    v122 = v164;
    v152 = v69;
LABEL_87:
    v157 = v45;
    v153 = v4;
    v154 = v121;
    v123 = v121;
    v155 = v120;
    v124 = v120;
LABEL_88:
    v165 = v123;
    v125 = v166;
    sub_2262D66FC(v4, v166, &qword_27D7930D0, &unk_226352510);
    v126 = v161;
    sub_2262D66FC(v124, v161, &qword_27D7930D0, &unk_226352510);
    v127 = v162;
    sub_2262D66FC(v125, v162, &qword_27D7930D0, &unk_226352510);
    v128 = v127 + *(v122 + 48);
    v129 = type metadata accessor for ActionContext(0);
    v130 = *(v128 + *(v129 + 28));
    sub_2262D6068(v128, type metadata accessor for ActionContext);
    v131 = v163;
    sub_2262D66FC(v126, v163, &qword_27D7930D0, &unk_226352510);
    v132 = v131 + *(v122 + 48);
    v133 = *(v132 + *(v129 + 28));
    sub_2262D6068(v132, type metadata accessor for ActionContext);
    v134 = sub_22634EEFC();
    v135 = *(*(v134 - 8) + 8);
    v136 = v131;
    v25 = &qword_27D7930D0;
    v135(v136, v134);
    v135(v127, v134);
    sub_2262D67D8(v126, &qword_27D7930D0, &unk_226352510);
    result = sub_2262D67D8(v166, &qword_27D7930D0, &unk_226352510);
    if (v130 < v133)
    {
      break;
    }

    v122 = v164;
LABEL_86:
    v45 = v157 + 1;
    v120 = v155 + v150;
    v121 = v154 - 1;
    v70 = v152;
    v4 = v153 + v150;
    if (v157 + 1 != v152)
    {
      goto LABEL_87;
    }

    v6 = v147;
    a3 = v149;
    v23 = v146;
    if (v152 < v146)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v24 = v151;
    }

    else
    {
      result = sub_2262DCB70(0, *(v151 + 2) + 1, 1, v151);
      v24 = result;
    }

    v72 = *(v24 + 2);
    v71 = *(v24 + 3);
    v4 = v72 + 1;
    if (v72 >= v71 >> 1)
    {
      result = sub_2262DCB70((v71 > 1), v72 + 1, 1, v24);
      v24 = result;
    }

    *(v24 + 2) = v4;
    v73 = &v24[16 * v72];
    *(v73 + 4) = v23;
    *(v73 + 5) = v70;
    v74 = *v148;
    if (!*v148)
    {
      goto LABEL_135;
    }

    v152 = v70;
    if (v72)
    {
      v75 = v74;
      while (1)
      {
        v76 = v4 - 1;
        if (v4 >= 4)
        {
          break;
        }

        if (v4 == 3)
        {
          v77 = *(v24 + 4);
          v78 = *(v24 + 5);
          v87 = __OFSUB__(v78, v77);
          v79 = v78 - v77;
          v80 = v87;
LABEL_53:
          if (v80)
          {
            goto LABEL_114;
          }

          v93 = &v24[16 * v4];
          v95 = *v93;
          v94 = *(v93 + 1);
          v96 = __OFSUB__(v94, v95);
          v97 = v94 - v95;
          v98 = v96;
          if (v96)
          {
            goto LABEL_117;
          }

          v99 = &v24[16 * v76 + 32];
          v101 = *v99;
          v100 = *(v99 + 1);
          v87 = __OFSUB__(v100, v101);
          v102 = v100 - v101;
          if (v87)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v97, v102))
          {
            goto LABEL_121;
          }

          if (v97 + v102 >= v79)
          {
            if (v79 < v102)
            {
              v76 = v4 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v103 = &v24[16 * v4];
        v105 = *v103;
        v104 = *(v103 + 1);
        v87 = __OFSUB__(v104, v105);
        v97 = v104 - v105;
        v98 = v87;
LABEL_67:
        if (v98)
        {
          goto LABEL_116;
        }

        v106 = &v24[16 * v76];
        v108 = *(v106 + 4);
        v107 = *(v106 + 5);
        v87 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v87)
        {
          goto LABEL_119;
        }

        if (v109 < v97)
        {
          goto LABEL_3;
        }

LABEL_74:
        v114 = v76 - 1;
        if (v76 - 1 >= v4)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
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
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v115 = v24;
        v4 = *&v24[16 * v114 + 32];
        v116 = *&v24[16 * v76 + 40];
        sub_2262D3268(*a3 + *(v156 + 72) * v4, *a3 + *(v156 + 72) * *&v24[16 * v76 + 32], *a3 + *(v156 + 72) * v116, v75);
        if (v6)
        {
        }

        if (v116 < v4)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = sub_2262DECA8(v115);
        }

        if (v114 >= *(v115 + 2))
        {
          goto LABEL_111;
        }

        v117 = &v115[16 * v114];
        *(v117 + 4) = v4;
        *(v117 + 5) = v116;
        v167 = v115;
        result = sub_2262DEC1C(v76);
        v24 = v167;
        v4 = *(v167 + 16);
        if (v4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v81 = &v24[16 * v4 + 32];
      v82 = *(v81 - 64);
      v83 = *(v81 - 56);
      v87 = __OFSUB__(v83, v82);
      v84 = v83 - v82;
      if (v87)
      {
        goto LABEL_112;
      }

      v86 = *(v81 - 48);
      v85 = *(v81 - 40);
      v87 = __OFSUB__(v85, v86);
      v79 = v85 - v86;
      v80 = v87;
      if (v87)
      {
        goto LABEL_113;
      }

      v88 = &v24[16 * v4];
      v90 = *v88;
      v89 = *(v88 + 1);
      v87 = __OFSUB__(v89, v90);
      v91 = v89 - v90;
      if (v87)
      {
        goto LABEL_115;
      }

      v87 = __OFADD__(v79, v91);
      v92 = v79 + v91;
      if (v87)
      {
        goto LABEL_118;
      }

      if (v92 >= v84)
      {
        v110 = &v24[16 * v76 + 32];
        v112 = *v110;
        v111 = *(v110 + 1);
        v87 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v87)
        {
          goto LABEL_122;
        }

        if (v79 < v113)
        {
          v76 = v4 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v22 = a3[1];
    v23 = v152;
    if (v152 >= v22)
    {
      goto LABEL_97;
    }
  }

  v137 = v165;
  if (v159)
  {
    v138 = v160;
    sub_2262D6764(v4, v160, &qword_27D7930D0, &unk_226352510);
    v122 = v164;
    swift_arrayInitWithTakeFrontToBack();
    sub_2262D6764(v138, v124, &qword_27D7930D0, &unk_226352510);
    v124 += v158;
    v4 += v158;
    v139 = __CFADD__(v137, 1);
    v123 = v137 + 1;
    if (v139)
    {
      goto LABEL_86;
    }

    goto LABEL_88;
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_2262D3268(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930D0, &unk_226352510);
  v8 = MEMORY[0x28223BE20](v77);
  v71 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v70 = &v63 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v69 = &v63 - v13;
  result = MEMORY[0x28223BE20](v12);
  v73 = &v63 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_61;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_62;
  }

  v19 = (a2 - a1) / v17;
  v80 = a1;
  v79 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || a2 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v38 = a4 + v21;
    if (v21 >= 1)
    {
      v39 = -v17;
      v40 = v38;
      v74 = a4;
      v75 = a1;
      v66 = -v17;
      while (2)
      {
        while (1)
        {
          v64 = v38;
          v41 = a2;
          v42 = a2 + v39;
          v76 = v42;
          v67 = v41;
          while (1)
          {
            if (v41 <= a1)
            {
              v80 = v41;
              v78 = v64;
              goto LABEL_59;
            }

            v65 = v38;
            v72 = a3 + v39;
            v45 = v40 + v39;
            v46 = v73;
            v68 = a3;
            sub_2262D66FC(v45, v73, &qword_27D7930D0, &unk_226352510);
            v47 = v69;
            sub_2262D66FC(v42, v69, &qword_27D7930D0, &unk_226352510);
            v48 = v46;
            v49 = v40;
            v50 = v70;
            sub_2262D66FC(v48, v70, &qword_27D7930D0, &unk_226352510);
            v51 = v77;
            v52 = v50 + *(v77 + 48);
            v53 = type metadata accessor for ActionContext(0);
            v54 = *(v52 + *(v53 + 28));
            sub_2262D6068(v52, type metadata accessor for ActionContext);
            v55 = v71;
            sub_2262D66FC(v47, v71, &qword_27D7930D0, &unk_226352510);
            v56 = v55 + *(v51 + 48);
            v57 = *(v56 + *(v53 + 28));
            sub_2262D6068(v56, type metadata accessor for ActionContext);
            v58 = sub_22634EEFC();
            v59 = *(*(v58 - 8) + 8);
            v59(v55, v58);
            v59(v50, v58);
            sub_2262D67D8(v47, &qword_27D7930D0, &unk_226352510);
            sub_2262D67D8(v73, &qword_27D7930D0, &unk_226352510);
            if (v54 < v57)
            {
              break;
            }

            v38 = v45;
            a3 = v72;
            v60 = v74;
            v43 = v45;
            if (v68 < v49 || v72 >= v49)
            {
              swift_arrayInitWithTakeFrontToBack();
              v43 = v45;
              a1 = v75;
              v42 = v76;
              v39 = v66;
            }

            else
            {
              a1 = v75;
              v42 = v76;
              v39 = v66;
              if (v68 != v49)
              {
                v61 = v43;
                swift_arrayInitWithTakeBackToFront();
                v43 = v61;
              }
            }

            v40 = v38;
            v44 = v43 > v60;
            v41 = v67;
            if (!v44)
            {
              a2 = v67;
              goto LABEL_58;
            }
          }

          a3 = v72;
          v62 = v74;
          if (v68 < v67 || v72 >= v67)
          {
            break;
          }

          a1 = v75;
          a2 = v76;
          v38 = v65;
          v39 = v66;
          v40 = v49;
          if (v68 != v67)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v49 <= v62)
          {
            goto LABEL_58;
          }
        }

        a2 = v76;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v75;
        v38 = v65;
        v39 = v66;
        v40 = v49;
        if (v49 > v62)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v80 = a2;
    v78 = v38;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v68 = a4 + v20;
    v78 = a4 + v20;
    if (v20 >= 1 && a2 < a3)
    {
      v72 = a3;
      v67 = v17;
      do
      {
        v74 = a4;
        v75 = a1;
        v76 = a2;
        v23 = v73;
        sub_2262D66FC(a2, v73, &qword_27D7930D0, &unk_226352510);
        v24 = v69;
        sub_2262D66FC(a4, v69, &qword_27D7930D0, &unk_226352510);
        v25 = v70;
        sub_2262D66FC(v23, v70, &qword_27D7930D0, &unk_226352510);
        v26 = v77;
        v27 = v25 + *(v77 + 48);
        v28 = type metadata accessor for ActionContext(0);
        v29 = *(v27 + *(v28 + 28));
        sub_2262D6068(v27, type metadata accessor for ActionContext);
        v30 = v71;
        sub_2262D66FC(v24, v71, &qword_27D7930D0, &unk_226352510);
        v31 = v30 + *(v26 + 48);
        v32 = *(v31 + *(v28 + 28));
        sub_2262D6068(v31, type metadata accessor for ActionContext);
        v33 = sub_22634EEFC();
        v34 = *(*(v33 - 8) + 8);
        v34(v30, v33);
        v34(v25, v33);
        sub_2262D67D8(v24, &qword_27D7930D0, &unk_226352510);
        sub_2262D67D8(v23, &qword_27D7930D0, &unk_226352510);
        if (v29 >= v32)
        {
          v35 = v75;
          a2 = v76;
          v36 = v67;
          a4 = v74 + v67;
          if (v75 < v74 || v75 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v37 = v72;
          }

          else
          {
            v37 = v72;
            if (v75 != v74)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v79 = a4;
        }

        else
        {
          a4 = v74;
          v35 = v75;
          v36 = v67;
          a2 = v76 + v67;
          if (v75 < v76 || v75 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v37 = v72;
          }

          else
          {
            v37 = v72;
            if (v75 != v76)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        a1 = v35 + v36;
        v80 = a1;
      }

      while (a4 < v68 && a2 < v37);
    }
  }

LABEL_59:
  sub_2262EA7B8(&v80, &v79, &v78);
  return 1;
}

void *sub_2262D39B8(void *result, uint64_t a2, uint64_t a3, double a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_2262D3C50(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_2262D3A40(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_2262D44D8(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

void *sub_2262D3ADC(uint64_t a1, double a2)
{
  v4 = a1;
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_2262D3C50(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_2262D39B8(v10, v6, v4, a2);
  result = MEMORY[0x22AA7D570](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

uint64_t sub_2262D3C50(unint64_t *a1, uint64_t a2, uint64_t a3, double a4)
{
  v40 = a2;
  v41 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930D0, &unk_226352510);
  v6 = MEMORY[0x28223BE20](v56);
  v55 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v54 = &v40 - v8;
  v9 = type metadata accessor for ActionContext(0);
  v52 = *(v9 - 8);
  v53 = v9;
  MEMORY[0x28223BE20](v9);
  v51 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_22634EEFC();
  result = MEMORY[0x28223BE20](v50);
  v48 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v12;
  v14 = 0;
  v57 = a3;
  v15 = *(a3 + 64);
  v44 = a3 + 64;
  v16 = 1 << *(a3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v42 = 0;
  v43 = (v16 + 63) >> 6;
  v46 = v12 + 1;
  v47 = v12 + 2;
  v19 = v12;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v58 = (v18 - 1) & v18;
LABEL_11:
    v23 = v20 | (v14 << 6);
    v24 = v57;
    v25 = v19[2];
    v26 = v48;
    v27 = v50;
    v25(v48, v57[6] + v19[9] * v23, v50);
    v28 = v24[7];
    v29 = *(v52 + 72);
    v45 = v23;
    v30 = v28 + v29 * v23;
    v31 = v51;
    sub_2262D5EB8(v30, v51, type metadata accessor for ActionContext);
    v32 = v54;
    v25(v54, v26, v27);
    v33 = v56;
    sub_2262D5EB8(v31, &v32[*(v56 + 48)], type metadata accessor for ActionContext);
    v34 = v32;
    v35 = v55;
    sub_2262D6764(v34, v55, &qword_27D7930D0, &unk_226352510);
    v36 = v35 + *(v33 + 48);
    v37 = *(v36 + *(v53 + 28));
    sub_2262D6068(v36, type metadata accessor for ActionContext);
    v38 = v19[1];
    v38(v35, v27);
    sub_2262D6068(v31, type metadata accessor for ActionContext);
    result = (v38)(v26, v27);
    v18 = v58;
    if (v37 < a4)
    {
      *(v41 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
      if (__OFADD__(v42++, 1))
      {
        __break(1u);
        return sub_2262D4048(v41, v40, v42, v57);
      }
    }
  }

  v21 = v14;
  while (1)
  {
    v14 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v14 >= v43)
    {
      return sub_2262D4048(v41, v40, v42, v57);
    }

    v22 = *(v44 + 8 * v14);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v58 = (v22 - 1) & v22;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2262D4048(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for ActionContext(0);
  v48 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v55 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v47 = v43 - v11;
  v54 = sub_22634EEFC();
  v52 = *(v54 - 8);
  v12 = MEMORY[0x28223BE20](v54);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v46 = v43 - v15;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930D8, &unk_226351FA0);
  result = sub_226350A9C();
  v17 = result;
  if (a2 < 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = *a1;
  }

  v19 = 0;
  v43[1] = v52 + 16;
  v44 = a2;
  v53 = v52 + 32;
  v20 = result + 64;
  v45 = a1;
  v43[0] = a4;
  v21 = v54;
  while (v18)
  {
    v22 = v14;
    v23 = __clz(__rbit64(v18));
    v49 = (v18 - 1) & v18;
LABEL_16:
    v26 = v23 | (v19 << 6);
    v27 = a4[6];
    v28 = v52;
    v51 = *(v52 + 72);
    v29 = v46;
    (*(v52 + 16))(v46, v27 + v51 * v26, v21);
    v30 = a4[7];
    v50 = *(v48 + 72);
    v31 = v30 + v50 * v26;
    v32 = v47;
    sub_2262D5EB8(v31, v47, type metadata accessor for ActionContext);
    v33 = *(v28 + 32);
    v14 = v22;
    v33(v22, v29, v21);
    sub_2262D6000(v32, v55, type metadata accessor for ActionContext);
    sub_2262D62A4(&qword_28137FA50, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    result = sub_22635040C();
    v34 = -1 << *(v17 + 32);
    v35 = result & ~v34;
    v36 = v35 >> 6;
    if (((-1 << v35) & ~*(v20 + 8 * (v35 >> 6))) == 0)
    {
      v38 = 0;
      v39 = (63 - v34) >> 6;
      a2 = v44;
      a1 = v45;
      while (++v36 != v39 || (v38 & 1) == 0)
      {
        v40 = v36 == v39;
        if (v36 == v39)
        {
          v36 = 0;
        }

        v38 |= v40;
        v41 = *(v20 + 8 * v36);
        if (v41 != -1)
        {
          v37 = __clz(__rbit64(~v41)) + (v36 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v37 = __clz(__rbit64((-1 << v35) & ~*(v20 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
    a2 = v44;
    a1 = v45;
LABEL_26:
    *(v20 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
    v33((*(v17 + 48) + v37 * v51), v14, v54);
    result = sub_2262D6000(v55, *(v17 + 56) + v37 * v50, type metadata accessor for ActionContext);
    ++*(v17 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v43[0];
    v18 = v49;
    if (!a3)
    {
      return v17;
    }
  }

  v24 = v19;
  while (1)
  {
    v19 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v19 >= a2)
    {
      return v17;
    }

    v25 = a1[v19];
    ++v24;
    if (v25)
    {
      v22 = v14;
      v23 = __clz(__rbit64(v25));
      v49 = (v25 - 1) & v25;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2262D44D8(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v51 = a2;
  v52 = a1;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930D0, &unk_226352510);
  v6 = MEMORY[0x28223BE20](v60);
  v66 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v65 = &v51 - v8;
  v9 = type metadata accessor for ActionContext(0);
  v59 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v64 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22634EEFC();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v71 = &v51 - v16;
  result = MEMORY[0x28223BE20](v15);
  v63 = &v51 - v19;
  v20 = 0;
  v61 = a3;
  v21 = *(a3 + 64);
  v53 = a3 + 64;
  v54 = 0;
  v22 = 1 << *(a3 + 32);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & v21;
  v25 = (v22 + 63) >> 6;
  v67 = a4 + 7;
  v57 = v25;
  v58 = v18;
  v69 = (v18 + 8);
  v70 = a4;
  v56 = v14;
  while (v24)
  {
    v27 = __clz(__rbit64(v24));
    v62 = (v24 - 1) & v24;
LABEL_13:
    v30 = v27 | (v20 << 6);
    v31 = v61;
    v32 = v61[6];
    v68 = *(v58 + 72);
    v33 = *(v58 + 16);
    v34 = v63;
    v33(v63, v32 + v68 * v30, v11);
    v35 = v31[7];
    v36 = *(v59 + 72);
    v55 = v30;
    v37 = v64;
    sub_2262D5EB8(v35 + v36 * v30, v64, type metadata accessor for ActionContext);
    v38 = v65;
    v33(v65, v34, v11);
    v39 = v60;
    sub_2262D5EB8(v37, v38 + *(v60 + 48), type metadata accessor for ActionContext);
    v40 = v66;
    sub_2262D66FC(v38, v66, &qword_27D7930D0, &unk_226352510);
    v41 = *(v39 + 48);
    v33(v71, v40 + v41, v11);
    sub_2262D6068(v40 + v41, type metadata accessor for ActionContext);
    v42 = v56;
    if (v70[2] && (v43 = v70, sub_2262D62A4(&qword_28137FA50, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]), v44 = sub_22635040C(), v45 = -1 << *(v43 + 32), v46 = v44 & ~v45, ((*(v67 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) != 0))
    {
      v47 = ~v45;
      while (1)
      {
        v33(v42, v70[6] + v46 * v68, v11);
        sub_2262D62A4(&qword_28137FA40, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v48 = sub_22635044C();
        v49 = *v69;
        (*v69)(v42, v11);
        if (v48)
        {
          break;
        }

        v46 = (v46 + 1) & v47;
        if (((*(v67 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v49(v71, v11);
      sub_2262D67D8(v65, &qword_27D7930D0, &unk_226352510);
      v49(v66, v11);
      sub_2262D6068(v64, type metadata accessor for ActionContext);
      result = (v49)(v63, v11);
      *(v52 + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v55;
      v50 = __OFADD__(v54++, 1);
      v25 = v57;
      v24 = v62;
      if (v50)
      {
        __break(1u);
        return sub_2262D4048(v52, v51, v54, v61);
      }
    }

    else
    {
LABEL_5:
      v26 = *v69;
      (*v69)(v71, v11);
      sub_2262D67D8(v65, &qword_27D7930D0, &unk_226352510);
      v26(v66, v11);
      sub_2262D6068(v64, type metadata accessor for ActionContext);
      result = (v26)(v63, v11);
      v25 = v57;
      v24 = v62;
    }
  }

  v28 = v20;
  while (1)
  {
    v20 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v20 >= v25)
    {
      return sub_2262D4048(v52, v51, v54, v61);
    }

    v29 = *(v53 + 8 * v20);
    ++v28;
    if (v29)
    {
      v27 = __clz(__rbit64(v29));
      v62 = (v29 - 1) & v29;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2262D4B1C(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_2262D3A40(v12, v7, a1, a2);
      MEMORY[0x22AA7D570](v12, -1, -1);
      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_2262D44D8((v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_2262D4CDC(uint64_t a1, uint64_t a2)
{
  v146 = 0;
  v162 = *MEMORY[0x277D85DE8];
  v143 = sub_22635004C();
  v142 = *(v143 - 8);
  v4 = MEMORY[0x28223BE20](v143);
  v129 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v127 = &v121 - v7;
  MEMORY[0x28223BE20](v6);
  v122 = &v121 - v8;
  v132 = sub_2263504BC();
  v131 = *(v132 - 8);
  v9 = MEMORY[0x28223BE20](v132);
  v130 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v123 = &v121 - v11;
  v12 = sub_22634EE0C();
  MEMORY[0x28223BE20](v12 - 8);
  v126 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_22634EECC();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v128 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793C20, &unk_226351F80);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v139 = &v121 - v19;
  v20 = sub_22634F41C();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v147 = &v121 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v154 = &v121 - v24;
  v148 = sub_22634F43C();
  v156 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v26 = &v121 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_22634EEFC();
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v136 = &v121 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(a2 + 16);
  v29 = MEMORY[0x277D84F90];
  v155 = v20;
  v157 = v26;
  v145 = v18;
  v144 = a1;
  if (v28)
  {
    v153 = v21;
    v158 = MEMORY[0x277D84F90];
    sub_226316630(0, v28, 0);
    v29 = v158;
    v30 = *(type metadata accessor for RankedVisualAction(0) - 8);
    v31 = a2 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v32 = *(v30 + 72);
    v33 = v146;
    do
    {
      sub_2262D10DC(v31, &v160);
      v34 = v160;
      v35 = v161;
      v158 = v29;
      v37 = v29[2];
      v36 = v29[3];
      if (v37 >= v36 >> 1)
      {
        sub_226316630((v36 > 1), v37 + 1, 1);
        v29 = v158;
      }

      v29[2] = v37 + 1;
      v38 = &v29[2 * v37];
      v38[4] = v34;
      v38[5] = v35;
      v31 += v32;
      --v28;
    }

    while (v28);
    v146 = v33;
    v18 = v145;
    v20 = v155;
    v26 = v157;
    v21 = v153;
  }

  v160 = v29;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930A8, &qword_226354940);
  v133 = sub_2262D6578();
  v134 = sub_22635042C();
  v135 = v40;

  v41 = sub_22634F4BC();
  v42 = *(v41 + 16);
  if (v42)
  {
    v125 = v39;
    v158 = MEMORY[0x277D84F90];
    sub_226316630(0, v42, 0);
    v43 = v158;
    v153 = *(v156 + 16);
    v44 = (*(v156 + 80) + 32) & ~*(v156 + 80);
    v124 = v41;
    v45 = v41 + v44;
    v152 = *(v156 + 72);
    v151 = (v21 + 88);
    v150 = *MEMORY[0x277D786C0];
    v46 = (v21 + 8);
    v156 += 16;
    v149 = (v156 - 8);
    v47 = v148;
    do
    {
      (v153)(v26, v45, v47);
      v48 = v154;
      sub_22634F42C();
      v49 = (*v151)(v48, v20);
      v50 = *v46;
      (*v46)(v48, v20);
      if (v49 == v150)
      {
        v51 = 0;
        v52 = 0xE000000000000000;
      }

      else
      {
        v160 = 0xA3E5045533CLL;
        v161 = 0xE600000000000000;
        v53 = v147;
        sub_22634F42C();
        v54 = sub_22634F40C();
        v56 = v55;
        v57 = v53;
        v47 = v148;
        v50(v57, v20);
        v58 = v54;
        v26 = v157;
        MEMORY[0x22AA7C5B0](v58, v56);

        v51 = v160;
        v52 = v161;
      }

      (*v149)(v26, v47);
      v158 = v43;
      v60 = v43[2];
      v59 = v43[3];
      if (v60 >= v59 >> 1)
      {
        sub_226316630((v59 > 1), v60 + 1, 1);
        v43 = v158;
      }

      v43[2] = v60 + 1;
      v61 = &v43[2 * v60];
      v61[4] = v51;
      v61[5] = v52;
      v45 += v152;
      --v42;
      v20 = v155;
      v26 = v157;
    }

    while (v42);

    v18 = v145;
  }

  else
  {

    v43 = MEMORY[0x277D84F90];
  }

  v160 = v43;
  v62 = sub_22635042C();
  v64 = v63;

  v160 = 0;
  v161 = 0xE000000000000000;
  sub_22635096C();
  MEMORY[0x22AA7C5B0](0xD000000000000010, 0x8000000226356570);
  v65 = v136;
  sub_22634F4DC();
  sub_2262D62A4(&qword_28137FA38, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v66 = v138;
  v67 = sub_226350C1C();
  MEMORY[0x22AA7C5B0](v67);

  (*(v137 + 8))(v65, v66);
  MEMORY[0x22AA7C5B0](0xD000000000000018, 0x8000000226356590);
  MEMORY[0x22AA7C5B0](v62, v64);

  MEMORY[0x22AA7C5B0](0xD00000000000001DLL, 0x80000002263565B0);
  MEMORY[0x22AA7C5B0](v134, v135);

  MEMORY[0x22AA7C5B0](0x534E4F495443413CLL, 0xED00003E444E455FLL);
  v69 = v160;
  v68 = v161;
  v70 = objc_opt_self();
  v71 = [v70 visualIntelligenceSessionLogFilePath];
  if (!v71)
  {
    sub_22635046C();
    v71 = sub_22635045C();
  }

  v72 = sub_22635046C();
  v74 = v73;
  v75 = [v70 modificationDateOfFileAtPath_];

  if (v75)
  {
    sub_22634EE9C();

    v76 = 0;
  }

  else
  {
    v76 = 1;
  }

  v77 = v141;
  v78 = v140;
  (*(v140 + 56))(v18, v76, 1, v141);
  v79 = v139;
  sub_2262D6764(v18, v139, &qword_27D793C20, &unk_226351F80);
  if ((*(v78 + 48))(v79, 1, v77) == 1)
  {
    sub_2262D67D8(v79, &qword_27D793C20, &unk_226351F80);
LABEL_28:
    v160 = v69;
    v161 = v68;
    v158 = v72;
    v159 = v74;
    v92 = v130;
    sub_2263504AC();
    sub_2262D61E0();
    v93 = v146;
    sub_22635086C();
    if (!v93)
    {
      (*(v131 + 8))(v92, v132);

      v103 = v127;
      sub_22634FFEC();
      v104 = sub_22635003C();
      v105 = sub_22635071C();
      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        *v106 = 0;
        _os_log_impl(&dword_2262B6000, v104, v105, "Session log overwritten successfully", v106, 2u);
        MEMORY[0x22AA7D570](v106, -1, -1);
      }

      v102 = v103;
      goto LABEL_38;
    }

    v90 = v93;
    (*(v131 + 8))(v92, v132);

    goto LABEL_30;
  }

  sub_22634EE5C();
  v81 = v80;
  v82 = *(v78 + 8);
  v82(v79, v77);
  v83 = v128;
  sub_22634EEAC();
  sub_22634EE5C();
  v85 = v84;
  v82(v83, v77);
  if (v85 - v81 >= 300.0)
  {
    goto LABEL_28;
  }

  sub_2262D6624();
  v86 = v126;
  sub_22634EDCC();

  v87 = v86;
  v88 = v146;
  v89 = sub_2262D1334(v87);
  v90 = v88;
  if (v88)
  {
LABEL_30:

LABEL_31:
    v94 = v129;
    sub_22634FFEC();
    v95 = v90;
    v96 = sub_22635003C();
    v97 = sub_22635073C();

    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      *v98 = 138412290;
      v100 = v90;
      v101 = _swift_stdlib_bridgeErrorToNSError();
      *(v98 + 4) = v101;
      *v99 = v101;
      _os_log_impl(&dword_2262B6000, v96, v97, "Error writing to session log file: %@", v98, 0xCu);
      sub_2262D67D8(v99, &qword_27D793CC0, qword_226352A00);
      MEMORY[0x22AA7D570](v99, -1, -1);
      MEMORY[0x22AA7D570](v98, -1, -1);
    }

    else
    {
    }

    v102 = v94;
LABEL_38:
    v107 = v143;
    v108 = v142;
    return (*(v108 + 8))(v102, v107);
  }

  v91 = v89;
  sub_22635070C();
  v110 = v123;
  sub_2263504AC();
  v111 = sub_22635047C();
  v113 = v112;

  (*(v131 + 8))(v110, v132);
  if (v113 >> 60 != 15)
  {
    v160 = v111;
    v161 = v113;
    sub_2262D6670();
    sub_2263506FC();
    sub_2262D66C4(v111, v113);
  }

  v160 = 0;
  if (![v91 closeAndReturnError_])
  {
    v120 = v160;
    v90 = sub_22634EDAC();

    swift_willThrow();
    goto LABEL_31;
  }

  v114 = v160;
  v115 = v122;
  sub_22634FFEC();
  v116 = v115;
  v117 = sub_22635003C();
  v118 = sub_22635071C();
  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    *v119 = 0;
    _os_log_impl(&dword_2262B6000, v117, v118, "Appended to session log successfully", v119, 2u);
    MEMORY[0x22AA7D570](v119, -1, -1);
  }

  v107 = v143;
  v108 = v142;
  v102 = v116;
  return (*(v108 + 8))(v102, v107);
}

uint64_t sub_2262D5D0C(uint64_t a1)
{
  v2 = sub_22634EEFC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v16 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_226309C44(v9, v6);
      result = (*(v11 - 8))(v9, v2);
      v14 += v15;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_2262D5E54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2262D5EB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2262D5F20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FE0, &unk_226351C10);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2262D5F90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FE0, &unk_226351C10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2262D6000(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2262D6068(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2262D60C8()
{
  result = qword_27D793050;
  if (!qword_27D793050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793050);
  }

  return result;
}

uint64_t sub_2262D611C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2262D6170(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_2262D61E0()
{
  result = qword_27D793080;
  if (!qword_27D793080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793080);
  }

  return result;
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

double sub_2262D6284(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 1;
  return result;
}

uint64_t sub_2262D62A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2262D62EC(uint64_t a1)
{
  v4 = *(sub_22634F51C() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2262D641C;

  return sub_2262C1C98(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_2262D641C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2262D6510(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_2262D6578()
{
  result = qword_27D7930B0;
  if (!qword_27D7930B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7930A8, &qword_226354940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7930B0);
  }

  return result;
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

unint64_t sub_2262D6624()
{
  result = qword_27D7930B8;
  if (!qword_27D7930B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7930B8);
  }

  return result;
}

unint64_t sub_2262D6670()
{
  result = qword_27D7930C0;
  if (!qword_27D7930C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7930C0);
  }

  return result;
}

uint64_t sub_2262D66C4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2262D611C(result, a2);
  }

  return result;
}

uint64_t sub_2262D66D8(uint64_t a1)
{
  if (*(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2262D66FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2262D6764(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2262D67CC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_2262D67D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for RankedVisualAction(uint64_t a1)
{
  result = qword_28137F4A0;
  if (!qword_28137F4A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2262D68B0(uint64_t a1)
{
  type metadata accessor for VisualAction(319);
  if (v1 <= 0x3F)
  {
    sub_2262D694C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2262D694C()
{
  if (!qword_28137EC78[0])
  {
    v0 = sub_22635085C();
    if (!v1)
    {
      atomic_store(v0, qword_28137EC78);
    }
  }
}

uint64_t sub_2262D699C()
{
  v1 = sub_22634F34C();
  v2 = *(v1 - 8);
  v62 = v1;
  v63 = v2;
  v3 = MEMORY[0x28223BE20](v1);
  v60 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v61 = &v59 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v59 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v59 - v10;
  v12 = type metadata accessor for VisualAction.Kind(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v59 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v59 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v59 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v59 - v25;
  v27 = *(type metadata accessor for VisualAction(0) + 20);
  sub_2262D76C0(v0 + v27, v26);
  v64 = v26;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_2262D90E8(v64, type metadata accessor for VisualAction.Kind);
      if (*(v0 + *(type metadata accessor for RankedVisualAction(0) + 28)) != 1)
      {
        return 0;
      }

      sub_2262D76C0(v0 + v27, v21);
      v37 = swift_getEnumCaseMultiPayload();
      if (v37 > 1)
      {
        if (v37 != 2)
        {
          if (v37 == 3)
          {
            v38 = sub_22634FBEC();
            (*(*(v38 - 8) + 8))(v21, v38);
            return 0;
          }

          return 1;
        }

        v48 = v62;
        v47 = v63;
        v49 = v9;
        (*(v63 + 32))(v9, v21, v62);
        v54 = (*(v47 + 88))(v9, v48);
        if (v54 != *MEMORY[0x277D785E0] && v54 != *MEMORY[0x277D785E8])
        {
          v39 = 1;
          if (v54 != *MEMORY[0x277D78608] && v54 != *MEMORY[0x277D78600] && v54 != *MEMORY[0x277D78628])
          {
            v39 = 0;
            if (v54 != *MEMORY[0x277D78630] && v54 != *MEMORY[0x277D78618])
            {
              v39 = 1;
              if (v54 != *MEMORY[0x277D78610] && v54 != *MEMORY[0x277D785C0])
              {
                if (v54 == *MEMORY[0x277D78620])
                {
                  return 0;
                }

                if (v54 == *MEMORY[0x277D785D0])
                {
                  return v39;
                }

                if (v54 == *MEMORY[0x277D785D8])
                {
                  return 0;
                }

                if (v54 != *MEMORY[0x277D785F0] && v54 != *MEMORY[0x277D785B8])
                {
                  v39 = 0;
                  if (v54 != *MEMORY[0x277D785F8] && v54 != *MEMORY[0x277D785C8])
                  {
                    (*(v63 + 8))(v9, v62);
                    return 0;
                  }
                }
              }
            }
          }

          return v39;
        }

LABEL_66:
        (*(v47 + 8))(v49, v48);
        return 0;
      }

      if (!v37)
      {
        v46 = v21;
        goto LABEL_43;
      }

      v55 = *(v21 + 1);
      v56 = *(v21 + 6);
LABEL_74:

      if (!v55)
      {

        return 1;
      }

      return 0;
    }

    if (*(v0 + *(type metadata accessor for RankedVisualAction(0) + 28)) != 1)
    {
      goto LABEL_71;
    }

    sub_2262D76C0(v0 + v27, v24);
    v30 = swift_getEnumCaseMultiPayload();
    if (v30 <= 1)
    {
      if (v30)
      {
        v57 = *(v24 + 1);

        if (!v57)
        {

          v39 = 1;
          goto LABEL_72;
        }

        goto LABEL_71;
      }

      sub_2262D90E8(v24, type metadata accessor for VisualAction.Kind);
      v39 = 1;
    }

    else
    {
      if (v30 == 2)
      {
        v52 = v62;
        v51 = v63;
        (*(v63 + 32))(v11, v24, v62);
        v53 = (*(v51 + 88))(v11, v52);
        if (v53 == *MEMORY[0x277D785E0] || v53 == *MEMORY[0x277D785E8])
        {
          (*(v51 + 8))(v11, v52);
        }

        else
        {
          v39 = 1;
          if (v53 == *MEMORY[0x277D78608])
          {
            goto LABEL_72;
          }

          if (v53 == *MEMORY[0x277D78600])
          {
            goto LABEL_72;
          }

          if (v53 == *MEMORY[0x277D78628])
          {
            goto LABEL_72;
          }

          v39 = 0;
          if (v53 == *MEMORY[0x277D78630])
          {
            goto LABEL_72;
          }

          if (v53 == *MEMORY[0x277D78618])
          {
            goto LABEL_72;
          }

          v39 = 1;
          if (v53 == *MEMORY[0x277D78610] || v53 == *MEMORY[0x277D785C0])
          {
            goto LABEL_72;
          }

          if (v53 != *MEMORY[0x277D78620])
          {
            if (v53 == *MEMORY[0x277D785D0])
            {
              goto LABEL_72;
            }

            if (v53 != *MEMORY[0x277D785D8])
            {
              if (v53 == *MEMORY[0x277D785F0])
              {
                goto LABEL_72;
              }

              if (v53 == *MEMORY[0x277D785B8])
              {
                goto LABEL_72;
              }

              v39 = 0;
              if (v53 == *MEMORY[0x277D785F8] || v53 == *MEMORY[0x277D785C8])
              {
                goto LABEL_72;
              }

              (*(v63 + 8))(v11, v62);
            }
          }
        }

        goto LABEL_71;
      }

      if (v30 == 3)
      {
        v31 = sub_22634FBEC();
        (*(*(v31 - 8) + 8))(v24, v31);
LABEL_71:
        v39 = 0;
        goto LABEL_72;
      }

      v39 = 1;
    }

LABEL_72:
    sub_2262D90E8(v64, type metadata accessor for VisualAction.Kind);
    return v39;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_2262D76C0(v0 + v27, v18);
    v32 = swift_getEnumCaseMultiPayload();
    if (v32 <= 1)
    {
      if (v32)
      {
        v45 = *(v18 + 1);

        v33 = v64;
        if (!v45)
        {

          v39 = 1;
          goto LABEL_35;
        }

        goto LABEL_34;
      }

      sub_2262D90E8(v18, type metadata accessor for VisualAction.Kind);
      v39 = 1;
      v33 = v64;
    }

    else
    {
      if (v32 == 2)
      {
        v40 = v63;
        v41 = v61;
        v42 = v18;
        v43 = v62;
        (*(v63 + 32))(v61, v42, v62);
        v44 = (*(v40 + 88))(v41, v43);
        v33 = v64;
        if (v44 != *MEMORY[0x277D785E0] && v44 != *MEMORY[0x277D785E8])
        {
          v39 = 1;
          if (v44 == *MEMORY[0x277D78608])
          {
            goto LABEL_35;
          }

          if (v44 == *MEMORY[0x277D78600])
          {
            goto LABEL_35;
          }

          if (v44 == *MEMORY[0x277D78628])
          {
            goto LABEL_35;
          }

          v39 = 0;
          if (v44 == *MEMORY[0x277D78630])
          {
            goto LABEL_35;
          }

          if (v44 == *MEMORY[0x277D78618])
          {
            goto LABEL_35;
          }

          v39 = 1;
          if (v44 == *MEMORY[0x277D78610] || v44 == *MEMORY[0x277D785C0])
          {
            goto LABEL_35;
          }

          if (v44 == *MEMORY[0x277D78620])
          {
            goto LABEL_34;
          }

          if (v44 == *MEMORY[0x277D785D0])
          {
            goto LABEL_35;
          }

          if (v44 == *MEMORY[0x277D785D8])
          {
            goto LABEL_34;
          }

          if (v44 == *MEMORY[0x277D785F0])
          {
            goto LABEL_35;
          }

          if (v44 == *MEMORY[0x277D785B8])
          {
            goto LABEL_35;
          }

          v39 = 0;
          if (v44 == *MEMORY[0x277D785F8] || v44 == *MEMORY[0x277D785C8])
          {
            goto LABEL_35;
          }
        }

        (*(v40 + 8))(v41, v43);
LABEL_34:
        v39 = 0;
        goto LABEL_35;
      }

      v33 = v64;
      if (v32 == 3)
      {
        v34 = sub_22634FBEC();
        (*(*(v34 - 8) + 8))(v18, v34);
        goto LABEL_34;
      }

      v39 = 1;
    }

LABEL_35:
    sub_2262D90E8(v33, type metadata accessor for VisualAction.Kind);
    return v39;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v29 = sub_22634FBEC();
    (*(*(v29 - 8) + 8))(v64, v29);
    return 0;
  }

  if (*(v0 + *(type metadata accessor for RankedVisualAction(0) + 28)) != 1)
  {
    return 0;
  }

  sub_2262D76C0(v0 + v27, v15);
  v35 = swift_getEnumCaseMultiPayload();
  if (v35 <= 1)
  {
    if (!v35)
    {
      v46 = v15;
LABEL_43:
      sub_2262D90E8(v46, type metadata accessor for VisualAction.Kind);
      return 1;
    }

    v55 = *(v15 + 1);
    v56 = *(v15 + 6);
    goto LABEL_74;
  }

  if (v35 != 2)
  {
    if (v35 == 3)
    {
      v36 = sub_22634FBEC();
      (*(*(v36 - 8) + 8))(v15, v36);
      return 0;
    }

    return 1;
  }

  v48 = v62;
  v47 = v63;
  v49 = v60;
  (*(v63 + 32))(v60, v15, v62);
  v50 = (*(v47 + 88))(v49, v48);
  if (v50 == *MEMORY[0x277D785E0] || v50 == *MEMORY[0x277D785E8])
  {
    goto LABEL_66;
  }

  v39 = 1;
  if (v50 != *MEMORY[0x277D78608] && v50 != *MEMORY[0x277D78600] && v50 != *MEMORY[0x277D78628])
  {
    v39 = 0;
    if (v50 != *MEMORY[0x277D78630] && v50 != *MEMORY[0x277D78618])
    {
      v39 = 1;
      if (v50 != *MEMORY[0x277D78610] && v50 != *MEMORY[0x277D785C0])
      {
        if (v50 == *MEMORY[0x277D78620])
        {
          return 0;
        }

        if (v50 != *MEMORY[0x277D785D0])
        {
          if (v50 == *MEMORY[0x277D785D8])
          {
            return 0;
          }

          if (v50 != *MEMORY[0x277D785F0] && v50 != *MEMORY[0x277D785B8])
          {
            v39 = 0;
            if (v50 != *MEMORY[0x277D785F8] && v50 != *MEMORY[0x277D785C8])
            {
              (*(v63 + 8))(v60, v62);
              return 0;
            }
          }
        }
      }
    }
  }

  return v39;
}

uint64_t sub_2262D76C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualAction.Kind(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2262D7724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_22634FF9C();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = sub_22634F34C();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  sub_22634F36C();
  v5[13] = swift_task_alloc();
  v8 = sub_22634F37C();
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v9 = sub_22635029C();
  v5[20] = v9;
  v5[21] = *(v9 - 8);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v10 = sub_2263502BC();
  v5[24] = v10;
  v5[25] = *(v10 - 8);
  v5[26] = swift_task_alloc();
  v11 = sub_22634F3BC();
  v5[27] = v11;
  v5[28] = *(v11 - 8);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v12 = sub_22634EEFC();
  v5[33] = v12;
  v5[34] = *(v12 - 8);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  type metadata accessor for VisualAction.Kind.SystemTool(0);
  v5[39] = swift_task_alloc();
  v5[40] = type metadata accessor for VisualAction.Kind(0);
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2262D7B2C, 0, 0);
}

uint64_t sub_2262D7B2C()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 48);
  v3 = *(type metadata accessor for VisualAction(0) + 20);
  sub_2262D76C0(v2 + v3, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_2262D90E8(*(v0 + 344), type metadata accessor for VisualAction.Kind);
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        v7 = 1;
        goto LABEL_12;
      }

      v5 = *(v0 + 344);
      v6 = sub_22634FBEC();
      (*(*(v6 - 8) + 8))(v5, v6);
    }

    goto LABEL_11;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_2262D90E8(*(v0 + 344), type metadata accessor for VisualAction.Kind);
    v7 = 1;
    goto LABEL_12;
  }

  v8 = *(v0 + 344);
  v9 = *(v8 + 8);
  v10 = *(v8 + 48);

  if (v9)
  {

LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  v7 = 1;
LABEL_12:
  *(v0 + 368) = v7;
  v11 = *(v0 + 336);
  *(v0 + 369) = sub_2262D8B3C() & 1;
  sub_2262D76C0(v2 + v3, v11);
  v12 = swift_getEnumCaseMultiPayload();
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      if (v12 != 3)
      {
        v15 = 1;
        goto LABEL_22;
      }

      v13 = *(v0 + 336);
      v14 = sub_22634FBEC();
      (*(*(v14 - 8) + 8))(v13, v14);
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  if (!v12)
  {
LABEL_17:
    sub_2262D90E8(*(v0 + 336), type metadata accessor for VisualAction.Kind);
LABEL_21:
    v15 = 0;
    goto LABEL_22;
  }

  v16 = *(v0 + 336);
  v17 = *(v16 + 8);
  v18 = *(v16 + 48);

  if (v17)
  {

    goto LABEL_21;
  }

  v15 = 1;
LABEL_22:
  *(v0 + 370) = v15;
  sub_2262D76C0(v2 + v3, *(v0 + 328));
  v19 = swift_getEnumCaseMultiPayload();
  if (v19 <= 1)
  {
    if (v19)
    {
      v50 = *(*(v0 + 328) + 48);
      v51 = [v50 title];
      if (!v51)
      {
        v66 = *(v0 + 16);

        v67 = sub_22634F3DC();
        (*(*(v67 - 8) + 56))(v66, 1, 1, v67);
        goto LABEL_41;
      }

      v52 = v51;
      v73 = *(v0 + 296);
      v53 = *(v0 + 264);
      v54 = *(v0 + 272);
      v55 = *(v0 + 248);
      v56 = *(v0 + 224);
      v75 = *(v0 + 216);
      v81 = *(v0 + 144);
      v57 = *(v0 + 120);
      v82 = *(v0 + 112);
      v58 = *(v0 + 48);
      v90 = v50;
      v59 = *(v0 + 24);
      v86 = *(v0 + 16);
      v60 = [v51 localizedStringForLocaleIdentifier_];

      sub_22635046C();
      (*(v54 + 16))(v73, v59, v53);
      sub_2262DBE60();
      v61 = v58[1];
      *v55 = *v58;
      *(v55 + 8) = v61;
      *(v55 + 16) = 0;
      (*(v56 + 104))(v55, *MEMORY[0x277D78678], v75);

      v62 = sub_2262D699C();
      v63 = MEMORY[0x277D78658];
      if ((v62 & 1) == 0)
      {
        v63 = MEMORY[0x277D78660];
      }

      (*(v57 + 104))(v81, *v63, v82);
      sub_22634F35C();
      v37 = v86;
      sub_22634F3AC();
    }

    else
    {
      v24 = *(v0 + 304);
      v25 = *(v0 + 272);
      v83 = *(v0 + 264);
      v74 = *(v0 + 256);
      v76 = *(v0 + 224);
      v78 = *(v0 + 216);
      v27 = *(v0 + 200);
      v26 = *(v0 + 208);
      v69 = *(v0 + 184);
      v70 = *(v0 + 192);
      v71 = *(v0 + 176);
      v29 = *(v0 + 160);
      v28 = *(v0 + 168);
      v79 = *(v0 + 120);
      v84 = *(v0 + 152);
      v87 = *(v0 + 112);
      v30 = *(v0 + 48);
      v31 = *(v0 + 24);
      v91 = *(v0 + 16);
      v72 = *(v0 + 312);
      sub_2262D902C(*(v0 + 328), v72);
      (*(v25 + 16))(v24, v31, v83);
      sub_2262DBE60();
      v32 = *v30;
      v33 = v30[1];

      sub_2263500BC();
      sub_2263502AC();
      (*(v27 + 8))(v26, v70);
      (*(v28 + 104))(v71, *MEMORY[0x277D730E8], v29);
      sub_2262D9090();
      LOBYTE(v24) = sub_22635044C();
      v34 = *(v28 + 8);
      v34(v71, v29);
      v34(v69, v29);
      *v74 = v32;
      *(v74 + 8) = v33;
      *(v74 + 16) = v24 & 1;
      (*(v76 + 104))(v74, *MEMORY[0x277D78678], v78);
      sub_2263500CC();
      v35 = sub_2262D699C();
      v36 = MEMORY[0x277D78658];
      if ((v35 & 1) == 0)
      {
        v36 = MEMORY[0x277D78660];
      }

      (*(v79 + 104))(v84, *v36, v87);
      sub_22634F35C();
      v37 = v91;
      sub_22634F3AC();
      sub_2262D90E8(v72, type metadata accessor for VisualAction.Kind.SystemTool);
    }

    goto LABEL_40;
  }

  if (v19 == 2)
  {
    v38 = *(v0 + 288);
    v39 = *(v0 + 272);
    v80 = *(v0 + 264);
    v92 = *(v0 + 240);
    v40 = *(v0 + 224);
    v77 = *(v0 + 216);
    v41 = *(v0 + 120);
    v85 = *(v0 + 136);
    v88 = *(v0 + 112);
    v42 = *(v0 + 88);
    v43 = *(v0 + 96);
    v44 = *(v0 + 80);
    v45 = *(v0 + 24);
    v89 = *(v0 + 16);
    (*(v42 + 32))(v43, *(v0 + 328), v44);
    (*(v39 + 16))(v38, v45, v80);
    sub_2262DBE60();
    (*(v42 + 16))(v92, v43, v44);
    (*(v40 + 104))(v92, *MEMORY[0x277D78668], v77);
    sub_22634F31C();
    v46 = sub_2262D699C();
    v47 = MEMORY[0x277D78658];
    if ((v46 & 1) == 0)
    {
      v47 = MEMORY[0x277D78660];
    }

    (*(v41 + 104))(v85, *v47, v88);
    sub_22634F35C();
    v37 = v89;
    sub_22634F3AC();
    (*(v42 + 8))(v43, v44);
LABEL_40:
    v64 = sub_22634F3DC();
    (*(*(v64 - 8) + 56))(v37, 0, 1, v64);
    goto LABEL_41;
  }

  if (v19 == 3)
  {
    v20 = *(v0 + 328);
    v21 = *(v0 + 16);
    v22 = sub_22634F3DC();
    (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
    v23 = sub_22634FBEC();
    (*(*(v23 - 8) + 8))(v20, v23);
LABEL_41:

    v65 = *(v0 + 8);

    return v65();
  }

  v48 = *(v0 + 40);
  v49 = *(v0 + 48);
  *(v0 + 352) = *v49;
  *(v0 + 360) = v49[1];

  return MEMORY[0x2822009F8](sub_2262D85EC, v48, 0);
}

uint64_t sub_2262D85EC()
{
  sub_22632F498(v0[44], v0[45], v0[9]);

  return MEMORY[0x2822009F8](sub_2262D8684, 0, 0);
}

uint64_t sub_2262D8684()
{
  v17 = v0[44];
  v18 = v0[45];
  v1 = v0[34];
  v14 = v0[35];
  v15 = v0[33];
  v3 = v0[28];
  v2 = v0[29];
  v16 = v0[27];
  v4 = v0[15];
  v19 = v0[16];
  v20 = v0[14];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  v8 = v0[3];
  v21 = v0[2];
  sub_22634FE5C();
  (*(v6 + 8))(v5, v7);
  (*(v1 + 16))(v14, v8, v15);
  sub_2262DBE60();
  *v2 = v17;
  v2[1] = v18;
  (*(v3 + 104))(v2, *MEMORY[0x277D78680], v16);

  v9 = sub_2262D699C();
  v10 = MEMORY[0x277D78658];
  if ((v9 & 1) == 0)
  {
    v10 = MEMORY[0x277D78660];
  }

  (*(v4 + 104))(v19, *v10, v20);
  sub_22634F35C();
  sub_22634F3AC();
  v11 = sub_22634F3DC();
  (*(*(v11 - 8) + 56))(v21, 0, 1, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_2262D8984()
{
  v1 = *(v0 + 16);
  v2 = sub_22634F3DC();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2262D8B3C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FE0, &unk_226351C10);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930F0, &qword_226352008);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  v13 = type metadata accessor for VisualAction.Kind(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for VisualAction(0);
  sub_2262D76C0(v0 + *(v16 + 20), v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_2262D90E8(v15, type metadata accessor for VisualAction.Kind);
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v18 = sub_22634FBEC();
      (*(*(v18 - 8) + 8))(v15, v18);
    }

LABEL_20:
    v23 = 0;
    return v23 & 1;
  }

  if (EnumCaseMultiPayload)
  {
    v24 = *(v15 + 6);
    if (*(v15 + 1))
    {
    }

    else
    {
      sub_22634F4CC();
      v25 = sub_22634FD0C();
      if ((*(*(v25 - 8) + 48))(v10, 1, v25) == 1)
      {
        sub_2262D67D8(v10, &qword_27D7930F0, &qword_226352008);
        sub_22634F4FC();
        v26 = sub_22634F47C();
        v27 = *(v26 - 8);
        if ((*(v27 + 48))(v4, 1, v26) != 1)
        {
          v23 = sub_22634F45C();

          (*(v27 + 8))(v4, v26);
          return v23 & 1;
        }

        v28 = &qword_27D792FE0;
        v29 = &unk_226351C10;
        v30 = v4;
      }

      else
      {

        v28 = &qword_27D7930F0;
        v29 = &qword_226352008;
        v30 = v10;
      }

      sub_2262D67D8(v30, v28, v29);
    }

    goto LABEL_20;
  }

  sub_22634F4CC();
  v19 = sub_22634FD0C();
  v20 = (*(*(v19 - 8) + 48))(v12, 1, v19);
  sub_2262D67D8(v12, &qword_27D7930F0, &qword_226352008);
  if (v20 == 1)
  {
    sub_22634F4FC();
    v21 = sub_22634F47C();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v6, 1, v21) != 1)
    {
      v23 = sub_22634F45C();
      (*(v22 + 8))(v6, v21);
      goto LABEL_17;
    }

    sub_2262D67D8(v6, &qword_27D792FE0, &unk_226351C10);
  }

  v23 = 0;
LABEL_17:
  sub_2262D90E8(v15, type metadata accessor for VisualAction.Kind);
  return v23 & 1;
}

uint64_t sub_2262D902C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualAction.Kind.SystemTool(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2262D9090()
{
  result = qword_27D7930E8;
  if (!qword_27D7930E8)
  {
    sub_22635029C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7930E8);
  }

  return result;
}

uint64_t sub_2262D90E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_2262D916C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2262D918C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 128) = v3;
  return result;
}

uint64_t sub_2262D91E8()
{
  sub_22635096C();
  MEMORY[0x22AA7C5B0](0xD000000000000020, 0x8000000226356610);
  sub_2263506DC();
  MEMORY[0x22AA7C5B0](0xD00000000000001FLL, 0x8000000226356640);
  sub_2263506DC();
  MEMORY[0x22AA7C5B0](0xD00000000000001BLL, 0x8000000226356660);
  sub_2263506DC();
  MEMORY[0x22AA7C5B0](0xD00000000000001ALL, 0x8000000226356680);
  sub_2263506DC();
  MEMORY[0x22AA7C5B0](0xD00000000000001ALL, 0x80000002263566A0);
  sub_2263506DC();
  MEMORY[0x22AA7C5B0](0xD000000000000016, 0x80000002263566C0);
  sub_2263506DC();
  MEMORY[0x22AA7C5B0](0xD000000000000018, 0x80000002263566E0);
  sub_2263506DC();
  MEMORY[0x22AA7C5B0](0xD000000000000018, 0x8000000226356700);
  sub_2263506DC();
  MEMORY[0x22AA7C5B0](0xD000000000000014, 0x8000000226356720);
  sub_2263506DC();
  MEMORY[0x22AA7C5B0](0xD00000000000001FLL, 0x8000000226356740);
  sub_2263506DC();
  MEMORY[0x22AA7C5B0](0xD00000000000001FLL, 0x8000000226356760);
  sub_2263506DC();
  MEMORY[0x22AA7C5B0](0xD00000000000001BLL, 0x8000000226356780);
  sub_2263506DC();
  MEMORY[0x22AA7C5B0](0xD000000000000015, 0x80000002263567A0);
  sub_2263506DC();
  MEMORY[0x22AA7C5B0](0xD000000000000018, 0x80000002263567C0);
  sub_2263506DC();
  MEMORY[0x22AA7C5B0](0xD00000000000001ALL, 0x80000002263567E0);
  v0 = sub_226350C1C();
  MEMORY[0x22AA7C5B0](v0);

  MEMORY[0x22AA7C5B0](0xD00000000000001FLL, 0x8000000226356800);
  v1 = sub_226350C1C();
  MEMORY[0x22AA7C5B0](v1);

  MEMORY[0x22AA7C5B0](32010, 0xE200000000000000);
  return 0;
}

__n128 sub_2262D95CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930F8, &qword_2263524D0);
  v1 = swift_allocObject();
  v2 = *v0;
  v3 = v0[1];
  *(v1 + 16) = xmmword_226352020;
  *(v1 + 32) = v2;
  v4 = v0[2];
  v5 = v0[3];
  *(v1 + 48) = v3;
  *(v1 + 64) = v4;
  v6 = v0[4];
  v7 = v0[5];
  *(v1 + 80) = v5;
  *(v1 + 96) = v6;
  result = v0[6];
  *(v1 + 112) = v7;
  *(v1 + 128) = result;
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2262D963C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2262D9684(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2262D96DC()
{
  sub_226350CEC();
  sub_2263504EC();
  sub_2263504EC();
  sub_22635083C();
  return sub_226350D0C();
}

uint64_t sub_2262D9758(uint64_t a1)
{
  sub_2263504EC();
  sub_2263504EC();
  return sub_22635083C();
}

uint64_t sub_2262D97A8(uint64_t a1)
{
  sub_226350CEC();
  sub_2263504EC();
  sub_2263504EC();
  sub_22635083C();
  return sub_226350D0C();
}

uint64_t sub_2262D9820(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_226350C4C() & 1) == 0)
  {
    return 0;
  }

  v7 = v2 == v4 && v3 == v5;
  if (!v7 && (sub_226350C4C() & 1) == 0)
  {
    return 0;
  }

  sub_2262D9C1C(0, &qword_28137DF78, 0x277D82BB8);
  return sub_22635082C() & 1;
}

unint64_t sub_2262D98E8()
{
  result = qword_27D793100;
  if (!qword_27D793100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793100);
  }

  return result;
}

unint64_t sub_2262D993C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_22635096C();

  MEMORY[0x22AA7C5B0](v1, v2);
  MEMORY[0x22AA7C5B0](46, 0xE100000000000000);
  MEMORY[0x22AA7C5B0](v3, v4);
  MEMORY[0x22AA7C5B0](41, 0xE100000000000000);
  return 0xD000000000000015;
}

uint64_t sub_2262D99F4(void *a1)
{
  v1 = [a1 parameters];
  sub_2262D9C1C(0, &qword_27D793108, 0x277D23748);
  v2 = sub_22635056C();

  v13 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_226350A6C())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x22AA7CA30](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 valueType];
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_2262D9C1C(0, &qword_28137DF78, 0x277D82BB8);
        sub_2262D9C1C(0, &unk_28137DF90, 0x277D23930);
        v9 = sub_2263507EC();
        v10 = sub_22635082C();

        if (v10)
        {
          sub_2263509CC();
          sub_2263509EC();
          sub_2263509FC();
          sub_2263509DC();
        }

        else
        {
        }
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        v11 = v13;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_20:

  return v11;
}

uint64_t sub_2262D9C1C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2262D9C80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2262D9CC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2262D9D24()
{
  v1 = *(v0 + 8);
  sub_226350CEC();
  if (v1)
  {
    MEMORY[0x22AA7CDB0](0);
    sub_2263504EC();
  }

  else
  {
    MEMORY[0x22AA7CDB0](1);
  }

  return sub_226350D0C();
}

uint64_t sub_2262D9D94(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return MEMORY[0x22AA7CDB0](1);
  }

  MEMORY[0x22AA7CDB0](0);

  return sub_2263504EC();
}

uint64_t sub_2262D9E0C(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_226350CEC();
  if (v2)
  {
    MEMORY[0x22AA7CDB0](0);
    sub_2263504EC();
  }

  else
  {
    MEMORY[0x22AA7CDB0](1);
  }

  return sub_226350D0C();
}

uint64_t sub_2262D9E78(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return v4 == 0;
  }

  if (!v4)
  {
    return 0;
  }

  if (*a1 == *a2 && v3 == v4)
  {
    return 1;
  }

  else
  {
    return sub_226350C4C();
  }
}

uint64_t sub_2262D9EC4()
{
  v1 = *(v0 + 8);
  sub_226350CEC();
  if (v1)
  {
    MEMORY[0x22AA7CDB0](0);
    sub_2263504EC();
  }

  else
  {
    MEMORY[0x22AA7CDB0](1);
  }

  sub_2263504EC();
  sub_2263504EC();
  sub_22635083C();
  return sub_226350D0C();
}

uint64_t sub_2262D9F7C(uint64_t a1)
{
  if (*(v1 + 8))
  {
    MEMORY[0x22AA7CDB0](0);
    sub_2263504EC();
  }

  else
  {
    MEMORY[0x22AA7CDB0](1);
  }

  sub_2263504EC();
  sub_2263504EC();
  return sub_22635083C();
}

uint64_t sub_2262DA028(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_226350CEC();
  if (v2)
  {
    MEMORY[0x22AA7CDB0](0);
    sub_2263504EC();
  }

  else
  {
    MEMORY[0x22AA7CDB0](1);
  }

  sub_2263504EC();
  sub_2263504EC();
  sub_22635083C();
  return sub_226350D0C();
}

uint64_t sub_2262DA0DC(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a2[1];
  v9 = a2[2];
  v11 = a2[3];
  v10 = a2[4];
  v12 = a2[5];
  if (v3)
  {
    if (!v8 || (*a1 != *a2 || v3 != v8) && (sub_226350C4C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v4 == v9 && v6 == v11 || (sub_226350C4C()) && (v5 == v10 && v7 == v12 || (sub_226350C4C()))
  {
    sub_2262DA244();
    if (sub_22635082C())
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_2262DA1F0()
{
  result = qword_27D793110;
  if (!qword_27D793110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793110);
  }

  return result;
}

unint64_t sub_2262DA244()
{
  result = qword_28137DF78;
  if (!qword_28137DF78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28137DF78);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2262DA29C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2262DA2EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2262DA340(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_2262DA358(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_2262DA38C()
{
  result = qword_27D793118;
  if (!qword_27D793118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793118);
  }

  return result;
}

uint64_t sub_2262DA3E0()
{
  v1 = *v0;
  sub_226350CEC();
  MEMORY[0x22AA7CDB0](v1);
  return sub_226350D0C();
}

uint64_t sub_2262DA428(uint64_t a1)
{
  v2 = *v1;
  sub_226350CEC();
  MEMORY[0x22AA7CDB0](v2);
  return sub_226350D0C();
}

unint64_t sub_2262DA46C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2262DB640(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_2262DA498()
{
  v0 = sub_2263502EC();
  v38 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2263500AC();
  v37 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v40 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v39 = v27 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v36 = v27 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793120, &qword_226352310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226352300;
  strcpy(v41, "saveScene");
  HIWORD(v41[2]) = 0;
  v41[3] = -385875968;
  sub_22635091C();
  v13 = *(sub_22634F4EC() + 16);

  if (v13)
  {
    v14 = 3;
  }

  else
  {
    v14 = 1;
  }

  *(inited + 72) = v14;
  if (qword_27D792EA0 != -1)
  {
    swift_once();
  }

  v35 = __swift_project_value_buffer(v0, qword_27D793ED8);
  v38 = *(v38 + 16);
  (v38)(v2, v35, v0);
  v34 = "ResultsInAppIntent";
  v15 = v2;
  sub_22635032C();
  v33 = *MEMORY[0x277D72148];
  v16 = v37;
  v31 = *(v37 + 104);
  v32 = v37 + 104;
  v31(v11);
  v28 = v0;
  v30 = *(v16 + 16);
  v17 = v36;
  v30(v36, v11, v3);
  v27[1] = v16 + 16;
  v29 = sub_2262DB424();
  sub_22635091C();
  v37 = *(v16 + 8);
  (v37)(v11, v3);
  v18 = *(sub_22634F4EC() + 16);

  if (v18)
  {
    v19 = 3;
  }

  else
  {
    v19 = 1;
  }

  *(inited + 120) = v19;
  strcpy(v41, "VisualSearch");
  BYTE1(v41[3]) = 0;
  HIWORD(v41[3]) = -5120;
  sub_22635091C();
  *(inited + 168) = 1;
  (v38)(v15, v35, v28);
  sub_22635032C();
  v20 = v31;
  (v31)(v17, v33, v3);
  v21 = v39;
  v22 = v30;
  v30(v39, v17, v3);
  sub_22635091C();
  v23 = v17;
  v24 = v37;
  (v37)(v23, v3);
  *(inited + 216) = 0;
  (v20)(v21, *MEMORY[0x277D72120], v3);
  v22(v40, v21, v3);
  sub_22635091C();
  v24(v21, v3);
  *(inited + 264) = 0;
  v25 = sub_2262FE204(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793130, qword_226352318);
  swift_arrayDestroy();
  return v25;
}

unint64_t sub_2262DA9E0()
{
  v0 = sub_2263502EC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2263500AC();
  v37 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v39 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v38 = v28 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v36 = v28 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = v28 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793120, &qword_226352310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226352300;
  strcpy(v40, "saveScene");
  HIWORD(v40[2]) = 0;
  v40[3] = -385875968;
  sub_22635091C();
  if (sub_22634F45C())
  {
    v14 = 3;
  }

  else
  {
    v14 = 1;
  }

  *(inited + 72) = v14;
  if (qword_27D792EA0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v0, qword_27D793ED8);
  v16 = *(v1 + 16);
  v28[2] = v1 + 16;
  v34 = v16;
  v35 = v15;
  v16(v3, v15, v0);
  v33 = "ResultsInAppIntent";
  v17 = v3;
  sub_22635032C();
  v32 = *MEMORY[0x277D72148];
  v18 = v37;
  v30 = *(v37 + 104);
  v31 = v37 + 104;
  v30(v12);
  v29 = *(v18 + 16);
  v19 = v36;
  v29(v36, v12, v4);
  v28[1] = v18 + 16;
  v28[3] = sub_2262DB424();
  sub_22635091C();
  v37 = *(v18 + 8);
  (v37)(v12, v4);
  if (sub_22634F45C())
  {
    v20 = 3;
  }

  else
  {
    v20 = 1;
  }

  *(inited + 120) = v20;
  strcpy(v40, "VisualSearch");
  BYTE1(v40[3]) = 0;
  HIWORD(v40[3]) = -5120;
  sub_22635091C();
  *(inited + 168) = 1;
  v34(v17, v35, v0);
  sub_22635032C();
  v21 = v30;
  (v30)(v19, v32, v4);
  v22 = v38;
  v23 = v29;
  v29(v38, v19, v4);
  sub_22635091C();
  v24 = v19;
  v25 = v37;
  (v37)(v24, v4);
  *(inited + 216) = 0;
  (v21)(v22, *MEMORY[0x277D72120], v4);
  v23(v39, v22, v4);
  sub_22635091C();
  v25(v22, v4);
  *(inited + 264) = 0;
  v26 = sub_2262FE204(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793130, qword_226352318);
  swift_arrayDestroy();
  return v26;
}

unint64_t sub_2262DAF10()
{
  v0 = sub_2263502EC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2263500AC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v37 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v36 = v24 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v35 = v24 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = v24 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793120, &qword_226352310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226352300;
  strcpy(v38, "saveScene");
  HIWORD(v38[2]) = 0;
  v38[3] = -385875968;
  sub_22635091C();
  *(inited + 72) = 1;
  if (qword_27D792EA0 != -1)
  {
    swift_once();
  }

  v25 = v0;
  v15 = __swift_project_value_buffer(v0, qword_27D793ED8);
  v33 = *(v1 + 16);
  v34 = v15;
  v33(v3, v15, v0);
  v32 = "ResultsInAppIntent";
  sub_22635032C();
  v30 = *MEMORY[0x277D72148];
  v29 = v5[13];
  v31 = v5 + 13;
  v29(v13);
  v28 = v5[2];
  v16 = v35;
  v28(v35, v13, v4);
  v24[1] = v5 + 2;
  v27 = sub_2262DB424();
  sub_22635091C();
  v26 = v5[1];
  v26(v13, v4);
  *(inited + 120) = 1;
  strcpy(v38, "VisualSearch");
  BYTE1(v38[3]) = 0;
  HIWORD(v38[3]) = -5120;
  sub_22635091C();
  *(inited + 168) = 1;
  v33(v3, v34, v25);
  sub_22635032C();
  v17 = v29;
  (v29)(v16, v30, v4);
  v18 = v36;
  v19 = v28;
  v28(v36, v16, v4);
  sub_22635091C();
  v20 = v16;
  v21 = v26;
  v26(v20, v4);
  *(inited + 216) = 0;
  (v17)(v18, *MEMORY[0x277D72120], v4);
  v19(v37, v18, v4);
  sub_22635091C();
  v21(v18, v4);
  *(inited + 264) = 0;
  v22 = sub_2262FE204(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793130, qword_226352318);
  swift_arrayDestroy();
  return v22;
}

unint64_t sub_2262DB424()
{
  result = qword_27D793128;
  if (!qword_27D793128)
  {
    sub_2263500AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793128);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VisualActionRichnessMap.ActionRichness(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VisualActionRichnessMap.ActionRichness(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2262DB5EC()
{
  result = qword_27D793138;
  if (!qword_27D793138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793138);
  }

  return result;
}

unint64_t sub_2262DB640(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

void sub_2262DB6B8(uint64_t a1)
{
  type metadata accessor for VisualAction.Kind(319);
  if (v1 <= 0x3F)
  {
    sub_2262DB764(319);
    if (v2 <= 0x3F)
    {
      sub_2262DB7CC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2262DB764(uint64_t a1)
{
  if (!qword_28137E038)
  {
    sub_22635027C();
    v1 = sub_2263503FC();
    if (!v2)
    {
      atomic_store(v1, &qword_28137E038);
    }
  }
}

void sub_2262DB7CC(uint64_t a1)
{
  if (!qword_28137E040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D793140, &qword_226353220);
    v1 = sub_2263503FC();
    if (!v2)
    {
      atomic_store(v1, &qword_28137E040);
    }
  }
}

void sub_2262DB890(uint64_t a1)
{
  type metadata accessor for VisualAction.Kind.SystemTool(319);
  if (v1 <= 0x3F)
  {
    sub_22634F34C();
    if (v2 <= 0x3F)
    {
      sub_2262DB978();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_2262DB940(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2262DB978()
{
  if (!qword_28137E0B0)
  {
    v0 = sub_22634FBEC();
    if (!v1)
    {
      atomic_store(v0, &qword_28137E0B0);
    }
  }
}

uint64_t sub_2262DB9E8(uint64_t a1)
{
  result = sub_2263500DC();
  if (v2 <= 0x3F)
  {
    result = sub_2263500AC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2262DBA6C()
{
  v1 = sub_2263502EC();
  v26 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2263500AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for VisualAction.Kind.SystemTool(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for VisualAction.Kind(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for VisualAction(0);
  sub_2262DF61C(v0 + *(v14 + 20), v13, type metadata accessor for VisualAction.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v17 = v10;
    v18 = v5;
    v19 = v26;
    if (EnumCaseMultiPayload)
    {
      v23 = *(v13 + 1);

      if (!v23)
      {

        v22 = 1;
        return v22 & 1;
      }

      goto LABEL_13;
    }

    sub_2262D902C(v13, v17);
    if (qword_27D792EA0 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v1, qword_27D793ED8);
    (*(v19 + 16))(v3, v20, v1);
    sub_22635032C();
    (*(v18 + 104))(v7, *MEMORY[0x277D72148], v4);
    v21 = sub_22635009C();
    (*(v18 + 8))(v7, v4);
    sub_2262DF5BC(v17, type metadata accessor for VisualAction.Kind.SystemTool);
    v22 = v21 ^ 1;
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_2262DF5BC(v13, type metadata accessor for VisualAction.Kind);
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v16 = sub_22634FBEC();
      (*(*(v16 - 8) + 8))(v13, v16);
LABEL_13:
      v22 = 0;
      return v22 & 1;
    }

    v22 = 1;
  }

  return v22 & 1;
}

uint64_t sub_2262DBE60()
{
  v1 = sub_22634F34C();
  v54 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v53 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22635007C();
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  v49 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for VisualAction.Kind.SystemTool(0);
  MEMORY[0x28223BE20](v48);
  v52 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for VisualAction.Kind(0);
  MEMORY[0x28223BE20](v56);
  v57 = (&v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = type metadata accessor for VisualAction(0);
  v7 = *(v55 + 32);
  v58 = v0;
  v8 = *(v0 + v7);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = sub_2262DD634(*(v8 + 16), 0);
    v11 = sub_2262DECBC(&v61, (v10 + 4), v9, v8);
    v12 = v61;

    sub_2262D66F4(v12);
    if (v11 == v9)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v10 = MEMORY[0x277D84F90];
LABEL_5:
  v47 = v1;
  v61 = v10;
  sub_2262DE1D4(&v61);
  v13 = v61;
  v61 = 0;
  v62 = 0xE000000000000000;
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = (v13 + 56);
    v16 = (v13 + 56);
    do
    {
      v18 = *v16;
      v16 += 4;
      v17 = v18;
      if (v18)
      {
        v20 = *(v15 - 2);
        v19 = *(v15 - 1);
        v21 = *(v15 - 3);
        v59 = 95;
        v60 = 0xE100000000000000;

        MEMORY[0x22AA7C5B0](v21, v20);

        MEMORY[0x22AA7C5B0](58, 0xE100000000000000);
        MEMORY[0x22AA7C5B0](v19, v17);

        MEMORY[0x22AA7C5B0](v59, v60);
      }

      v15 = v16;
      --v14;
    }

    while (v14);
  }

  v22 = v57;
  v23 = v58;
  sub_2262DF61C(v58 + *(v55 + 20), v57, type metadata accessor for VisualAction.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v28 = v52;
      sub_2262D902C(v22, v52);
      v29 = v23[1];
      v59 = *v23;
      v60 = v29;

      MEMORY[0x22AA7C5B0](95, 0xE100000000000000);
      v30 = v49;
      sub_22635008C();
      v31 = sub_22635006C();
      v33 = v32;
      (*(v50 + 8))(v30, v51);
      MEMORY[0x22AA7C5B0](v31, v33);

      MEMORY[0x22AA7C5B0](v61, v62);

      v26 = v59;
      sub_2262DF5BC(v28, type metadata accessor for VisualAction.Kind.SystemTool);
      return v26;
    }

    v41 = v22[4];
    v42 = v22[5];
    v43 = v22[6];
    v44 = v23[1];
    v59 = *v23;
    v60 = v44;

    MEMORY[0x22AA7C5B0](95, 0xE100000000000000);

    MEMORY[0x22AA7C5B0](v41, v42);

    MEMORY[0x22AA7C5B0](v61, v62);

LABEL_19:

    return v59;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v35 = v53;
    v34 = v54;
    v36 = v47;
    (*(v54 + 32))(v53, v22, v47);
    v37 = v23[1];
    v59 = *v23;
    v60 = v37;

    MEMORY[0x22AA7C5B0](95, 0xE100000000000000);
    v38 = sub_22634F31C();
    MEMORY[0x22AA7C5B0](v38);

    MEMORY[0x22AA7C5B0](v61, v62);

    v26 = v59;
    (*(v34 + 8))(v35, v36);
    return v26;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v59 = 0;
    v60 = 0xE000000000000000;
    sub_22635096C();
    v40 = *v23;
    v39 = v23[1];

    v59 = v40;
    v60 = v39;
    MEMORY[0x22AA7C5B0](0x536C61757369565FLL, 0xED00006863726165);
    MEMORY[0x22AA7C5B0](v61, v62);
    goto LABEL_19;
  }

  v25 = v23[1];
  v59 = *v23;
  v60 = v25;

  MEMORY[0x22AA7C5B0](0x746E456E65704F5FLL, 0xEB00000000797469);
  MEMORY[0x22AA7C5B0](v61, v62);

  v26 = v59;
  v27 = sub_22634FBEC();
  (*(*(v27 - 8) + 8))(v22, v27);
  return v26;
}

uint64_t sub_2262DC4AC()
{
  v1 = v0;
  v2 = sub_22634F34C();
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22635007C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for VisualAction.Kind.SystemTool(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for VisualAction.Kind(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2262DF61C(v1, v14, type metadata accessor for VisualAction.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_2262D902C(v14, v11);
      sub_22635008C();
      v18 = sub_22635006C();
      (*(v6 + 8))(v8, v5);
      sub_2262DF5BC(v11, type metadata accessor for VisualAction.Kind.SystemTool);
      return v18;
    }

    v22 = *(v14 + 1);

    if (!v22)
    {

      return 0x6E65635365766173;
    }

    v17 = 1702257011;
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v20 = v24;
      (*(v24 + 32))(v4, v14, v2);
      v21 = sub_22634F31C();
      (*(v20 + 8))(v4, v2);
      return v21;
    }

    if (EnumCaseMultiPayload != 3)
    {
      return 0x65536C6175736956;
    }

    v16 = sub_22634FBEC();
    (*(*(v16 - 8) + 8))(v14, v16);
    v17 = 1852141647;
  }

  return v17 | 0x69746E4500000000;
}

char *sub_2262DC850(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7931B8, &qword_2263524C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void *sub_2262DC994(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_2262DCB70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793150, &qword_226352458);
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

char *sub_2262DCC9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930F8, &qword_2263524D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_2262DCDA0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7931C8, &qword_2263524D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7931D0, &qword_2263524E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2262DCFC4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793188, &qword_226352490);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2262DD0D0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793198, &qword_2263524A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7931A0, &qword_2263524A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2262DD204(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793190, &qword_226352498);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2262DD324(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793170, &qword_226352478);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2262DD444(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793178, &unk_226352480);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793180, &qword_226354E90) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793180, &qword_226354E90) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_2262DD634(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793158, &qword_226352460);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void *sub_2262DD6B8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793188, &qword_226352490);
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

void *sub_2262DD73C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7931F8, &qword_226352508);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930D0, &unk_226352510) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2262DD844(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7931A8, &unk_2263524B0);
  v4 = *(sub_22634EEFC() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2262DD968(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793158, &qword_226352460);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793148, &qword_226352450);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2262DDA9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930F8, &qword_2263524D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_2262DDBA0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7931C8, &qword_2263524D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7931D0, &qword_2263524E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2262DDCD4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_2262DDEB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793188, &qword_226352490);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2262DDFE4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7931F8, &qword_226352508);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930D0, &unk_226352510) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930D0, &unk_226352510) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_2262DE1D4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2262DF4F8(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_2262DE240(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2262DE240(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_226350C0C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793148, &qword_226352450);
        v5 = sub_22635059C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2262DE418(v7, v8, a1, v4);
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
    return sub_2262DE348(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2262DE348(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 32 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *v12 && v10 == *(v12 + 8);
      if (v13 || (result = sub_226350C4C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 32;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *(v12 + 32);
      v10 = *(v12 + 40);
      v14 = *(v12 + 48);
      v15 = *(v12 + 16);
      *(v12 + 32) = *v12;
      *(v12 + 48) = v15;
      *v12 = result;
      *(v12 + 8) = v10;
      *(v12 + 16) = v14;
      v12 -= 32;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2262DE418(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v98 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_105:
    v8 = *v98;
    if (!*v98)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_2262DECA8(v7);
      v7 = result;
    }

    v89 = v7 + 16;
    v90 = *(v7 + 2);
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = &v7[16 * v90];
        v92 = *v91;
        v93 = &v89[2 * v90];
        v94 = v93[1];
        sub_2262DE9F4((*a3 + 32 * *v91), (*a3 + 32 * *v93), (*a3 + 32 * v94), v8);
        if (v4)
        {
        }

        if (v94 < v92)
        {
          goto LABEL_129;
        }

        if (v90 - 2 >= *v89)
        {
          goto LABEL_130;
        }

        *v91 = v92;
        *(v91 + 1) = v94;
        v95 = *v89 - v90;
        if (*v89 < v90)
        {
          goto LABEL_131;
        }

        v90 = *v89 - 1;
        result = memmove(v93, v93 + 2, 16 * v95);
        *v89 = v90;
        if (v90 <= 1)
        {
        }
      }

      goto LABEL_141;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = (*a3 + 32 * v6);
      result = *v9;
      v10 = (*a3 + 32 * v8);
      if (*v9 == *v10 && v9[1] == v10[1])
      {
        v12 = 0;
      }

      else
      {
        result = sub_226350C4C();
        v12 = result;
      }

      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v13 = v10 + 5;
        v14 = v10 + 5;
        do
        {
          result = v13[3];
          v16 = v14[4];
          v14 += 4;
          v15 = v16;
          if (result == *(v13 - 1) && v15 == *v13)
          {
            if (v12)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_226350C4C();
            if ((v12 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v6;
          v13 = v14;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_23:
      if (v12)
      {
LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_134;
        }

        if (v8 < v6)
        {
          v18 = 32 * v6 - 16;
          v19 = 32 * v8;
          v20 = v6;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v22 = (v28 + v19);
              v23 = (v28 + v18);
              v24 = *v22;
              v25 = v22[1];
              v26 = *(v22 + 1);
              v27 = *v23;
              *v22 = *(v23 - 1);
              *(v22 + 1) = v27;
              *(v23 - 2) = v24;
              *(v23 - 1) = v25;
              *v23 = v26;
            }

            ++v21;
            v18 -= 32;
            v19 += 32;
          }

          while (v21 < v20);
        }
      }
    }

    v29 = a3[1];
    if (v6 < v29)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_133;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_135;
        }

        if (v8 + a4 >= v29)
        {
          v30 = a3[1];
        }

        else
        {
          v30 = v8 + a4;
        }

        if (v30 < v8)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v6 != v30)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v6 < v8)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2262DCB70(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v44 = *(v7 + 2);
    v43 = *(v7 + 3);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      result = sub_2262DCB70((v43 > 1), v44 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v45;
    v46 = &v7[16 * v44];
    *(v46 + 4) = v8;
    *(v46 + 5) = v6;
    v47 = *v98;
    if (!*v98)
    {
      goto LABEL_142;
    }

    if (v44)
    {
      while (1)
      {
        v48 = v45 - 1;
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v49 = *(v7 + 4);
          v50 = *(v7 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_74:
          if (v52)
          {
            goto LABEL_120;
          }

          v65 = &v7[16 * v45];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_123;
          }

          v71 = &v7[16 * v48 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_127;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = v45 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v75 = &v7[16 * v45];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_88:
        if (v70)
        {
          goto LABEL_122;
        }

        v78 = &v7[16 * v48];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_125;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_95:
        v8 = v48 - 1;
        if (v48 - 1 >= v45)
        {
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
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v86 = *&v7[16 * v8 + 32];
        v87 = *&v7[16 * v48 + 40];
        sub_2262DE9F4((*a3 + 32 * v86), (*a3 + 32 * *&v7[16 * v48 + 32]), (*a3 + 32 * v87), v47);
        if (v4)
        {
        }

        if (v87 < v86)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2262DECA8(v7);
        }

        if (v8 >= *(v7 + 2))
        {
          goto LABEL_117;
        }

        v88 = &v7[16 * v8];
        *(v88 + 4) = v86;
        *(v88 + 5) = v87;
        result = sub_2262DEC1C(v48);
        v45 = *(v7 + 2);
        if (v45 <= 1)
        {
          goto LABEL_3;
        }
      }

      v53 = &v7[16 * v45 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_118;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_119;
      }

      v60 = &v7[16 * v45];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_121;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_124;
      }

      if (v64 >= v56)
      {
        v82 = &v7[16 * v48 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_128;
        }

        if (v51 < v85)
        {
          v48 = v45 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_105;
    }
  }

  v31 = *a3;
  v32 = *a3 + 32 * v6 - 32;
  v96 = v8;
  v33 = (v8 - v6);
LABEL_43:
  v34 = (v31 + 32 * v6);
  v35 = *v34;
  v36 = v34[1];
  v37 = v33;
  v38 = v32;
  while (1)
  {
    v39 = v35 == *v38 && v36 == *(v38 + 8);
    if (v39 || (result = sub_226350C4C(), (result & 1) == 0))
    {
LABEL_42:
      ++v6;
      v32 += 32;
      --v33;
      if (v6 != v30)
      {
        goto LABEL_43;
      }

      v6 = v30;
      v8 = v96;
      goto LABEL_54;
    }

    if (!v31)
    {
      break;
    }

    v35 = *(v38 + 32);
    v36 = *(v38 + 40);
    v40 = *(v38 + 48);
    v41 = *(v38 + 16);
    *(v38 + 32) = *v38;
    *(v38 + 48) = v41;
    *v38 = v35;
    *(v38 + 8) = v36;
    *(v38 + 16) = v40;
    v38 -= 32;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_2262DE9F4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v17 && (sub_226350C4C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v17 = v7 == v4;
      v4 += 32;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v17 = v7 == v6;
    v6 += 32;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    v16 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v16;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_28:
    v18 = v6 - 32;
    v5 -= 32;
    v19 = v14;
    do
    {
      v20 = *(v19 - 4);
      v21 = *(v19 - 3);
      v19 -= 32;
      v22 = v20 == *(v6 - 4) && v21 == *(v6 - 3);
      if (!v22 && (sub_226350C4C() & 1) != 0)
      {
        if (v5 + 32 != v6)
        {
          v24 = *(v6 - 1);
          *v5 = *v18;
          *(v5 + 1) = v24;
        }

        if (v14 <= v4 || (v6 -= 32, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 32 != v14)
      {
        v23 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v23;
      }

      v5 -= 32;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

uint64_t sub_2262DEC1C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2262DECA8(v3);
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

void *sub_2262DECBC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
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
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v24 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v12 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v20 = v19[1];
      v21 = *(*(a4 + 56) + v18);
      *v11 = *v19;
      *(v11 + 8) = v20;
      *(v11 + 16) = v21;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 32;

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
        goto LABEL_28;
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
    if (v13 <= v12 + 1)
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = v13;
    }

    v12 = v23 - 1;
    v10 = result;
LABEL_23:
    v7 = v24;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_2262DEE44(void *result, void *a2, uint64_t a3, uint64_t a4)
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

        goto LABEL_24;
      }

      v11 += 2;

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

uint64_t sub_2262DEF9C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930D0, &unk_226352510);
  v38 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = (&v34 - v12);
  v41 = a4;
  v15 = *(a4 + 64);
  v14 = a4 + 64;
  v13 = v15;
  v16 = -1 << *(v14 - 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  if (!a2)
  {
LABEL_18:
    v26 = 0;
    a3 = 0;
LABEL_25:
    *a1 = v41;
    a1[1] = v14;
    a1[2] = ~v16;
    a1[3] = v26;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v26 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(v14 - 32);
    v36 = a1;
    result = 0;
    v19 = 0;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    v37 = a3;
    v22 = v41;
    while (v18)
    {
LABEL_14:
      v25 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v26 = v19;
      v27 = v25 | (v19 << 6);
      v28 = *(v22 + 48);
      v29 = sub_22634EEFC();
      (*(*(v29 - 8) + 16))(v10, v28 + *(*(v29 - 8) + 72) * v27, v29);
      v30 = *(v22 + 56);
      v31 = type metadata accessor for ActionContext(0);
      sub_2262DF61C(v30 + *(*(v31 - 8) + 72) * v27, &v10[*(v40 + 48)], type metadata accessor for ActionContext);
      a1 = v39;
      sub_2262DF684(v10, v39);
      sub_2262DF684(a1, a2);
      a3 = v37;
      if (v21 == v37)
      {
        goto LABEL_23;
      }

      a2 += *(v38 + 72);
      result = v21;
      v32 = __OFADD__(v21++, 1);
      v19 = v26;
      if (v32)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v23 = v19;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v24 >= v20)
      {
        break;
      }

      v18 = *(v14 + 8 * v24);
      ++v23;
      if (v18)
      {
        v19 = v24;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v33 = v19 + 1;
    }

    else
    {
      v33 = v20;
    }

    v26 = v33 - 1;
    a3 = result;
LABEL_23:
    v16 = v35;
    a1 = v36;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2262DF254(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_22634EEFC();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_2262DF5BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2262DF61C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2262DF684(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930D0, &unk_226352510);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2262DF6F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793218, &unk_2263525E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for Analytics.Interval(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_2262D67D8(a1, &qword_27D793218, &unk_2263525E0);
    v13 = sub_2263393B0(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_226339AE4();
        v17 = v21;
      }

      sub_2262E47D4(*(v17 + 56) + *(v10 + 72) * v15, v8, type metadata accessor for Analytics.Interval);
      sub_2262E2200(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_2262D67D8(v8, &qword_27D793218, &unk_2263525E0);
  }

  else
  {
    sub_2262E47D4(a1, v12, type metadata accessor for Analytics.Interval);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_2262E34B4(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_2262DF948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793BC0, &qword_2263525D8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_22634FF9C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_2262D67D8(a1, &unk_27D793BC0, &qword_2263525D8);
    sub_2262E1B48(a2, a3, v9);

    return sub_2262D67D8(v9, &unk_27D793BC0, &qword_2263525D8);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_2262E3608(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_2262DFB20(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793210, &unk_2263525C8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for ResourceManager.Record(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_2262D67D8(a1, &qword_27D793210, &unk_2263525C8);
    sub_2262E1CCC(a2, v7);
    v12 = sub_22634EEFC();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_2262D67D8(v7, &qword_27D793210, &unk_2263525C8);
  }

  else
  {
    sub_2262E47D4(a1, v10, type metadata accessor for ResourceManager.Record);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_2262E3ACC(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_22634EEFC();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_2262DFD40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793008, &unk_226351EC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for VisualAction(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_2262D67D8(a1, &qword_27D793008, &unk_226351EC0);
    sub_2262E1E7C(a2, a3, v9);

    return sub_2262D67D8(v9, &qword_27D793008, &unk_226351EC0);
  }

  else
  {
    sub_2262E47D4(a1, v12, type metadata accessor for VisualAction);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_2262E3CFC(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_2262DFF14(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793010, &unk_226354CE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_22634EEFC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_2262D67D8(a1, &qword_27D793010, &unk_226354CE0);
    sub_2262E1FFC(v7, a2);
    v12 = sub_22634F34C();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_2262D67D8(v7, &qword_27D793010, &unk_226354CE0);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_2262E4094(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_22634F34C();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_2262E0140(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_2262E443C(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_22634EEFC();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_2263394D8(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_22633B2CC();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_22634EEFC();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);
      swift_unknownObjectRelease();
      sub_2262E2768(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_22634EEFC();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_2262E0300(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_2262E4608(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_22634EEFC();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_2263394D8(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_22633B54C();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_22634EEFC();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_2262E2768(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_22634EEFC();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_2262E04C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22634EEFC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2262E0528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793210, &unk_2263525C8);
  MEMORY[0x28223BE20](v3 - 8);
  v65 = &v55 - v4;
  v5 = type metadata accessor for ResourceManager.Record(0);
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22634EEFC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v67 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v61 = &v55 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v55 - v14;
  v70 = sub_22635004C();
  v16 = *(v70 - 8);
  v17 = MEMORY[0x28223BE20](v70);
  v69 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v55 - v19;
  sub_22634EEEC();
  sub_22635002C();
  v21 = *(v9 + 16);
  v66 = a2;
  v71 = v8;
  v60 = v21;
  v21(v15, a2, v8);
  v22 = sub_22635003C();
  v23 = sub_22635072C();
  v24 = os_log_type_enabled(v22, v23);
  v68 = v9;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v57 = v16;
    v26 = v25;
    v58 = swift_slowAlloc();
    v72[0] = v58;
    *v26 = 136315138;
    sub_2262E48A4(&qword_28137FA38, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v27 = v71;
    v28 = sub_226350C1C();
    v56 = v7;
    v30 = v29;
    v59 = *(v9 + 8);
    v59(v15, v27);
    v31 = sub_226345004(v28, v30, v72);
    v7 = v56;

    *(v26 + 4) = v31;
    _os_log_impl(&dword_2262B6000, v22, v23, "Adding resource %s...", v26, 0xCu);
    v32 = v58;
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    MEMORY[0x22AA7D570](v32, -1, -1);
    v33 = v26;
    v16 = v57;
    MEMORY[0x22AA7D570](v33, -1, -1);
  }

  else
  {

    v59 = *(v9 + 8);
    v59(v15, v71);
  }

  v58 = *(v16 + 8);
  (v58)(v20, v70);
  v34 = v66;
  v35 = v71;
  v36 = v60;
  v60(v7, v66, v71);
  v37 = v63;
  sub_22634EEAC();
  v38 = *(v37 + 24);
  v39 = sub_22634FDDC();
  (*(*(v39 - 8) + 16))(&v7[v38], v64, v39);
  v40 = v61;
  v36(v61, v34, v35);
  v41 = v65;
  sub_2262E219C(v7, v65);
  (*(v62 + 56))(v41, 0, 1, v37);
  swift_beginAccess();
  sub_2262DFB20(v41, v40);
  swift_endAccess();
  v42 = v69;
  sub_22635002C();
  v43 = v67;
  v36(v67, v34, v35);
  v44 = sub_22635003C();
  v45 = sub_22635072C();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v72[0] = v47;
    *v46 = 136315138;
    sub_2262E48A4(&qword_28137FA38, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v48 = v71;
    v49 = sub_226350C1C();
    v51 = v50;
    v59(v43, v48);
    v52 = sub_226345004(v49, v51, v72);

    *(v46 + 4) = v52;
    _os_log_impl(&dword_2262B6000, v44, v45, "Added resource %s.", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    MEMORY[0x22AA7D570](v47, -1, -1);
    MEMORY[0x22AA7D570](v46, -1, -1);

    v53 = v69;
  }

  else
  {

    v59(v43, v71);
    v53 = v42;
  }

  (v58)(v53, v70);
  return sub_2262E3CA0(v7);
}

BOOL sub_2262E0C04(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22634EEFC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v76 = v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v74 = v66 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = v66 - v10;
  v12 = sub_22635004C();
  v13 = *(v12 - 8);
  v78 = v12;
  v79 = v13;
  v14 = MEMORY[0x28223BE20](v12);
  v77 = v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v66 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793210, &unk_2263525C8);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v75 = v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = v66 - v21;
  swift_beginAccess();
  v23 = *(v1 + 112);
  if (*(v23 + 16))
  {
    v72 = v11;
    v24 = sub_2263394D8(a1);
    if (v25)
    {
      v26 = v24;
      v71 = *(v23 + 56);
      v27 = type metadata accessor for ResourceManager.Record(0);
      v28 = v17;
      v29 = v4;
      v30 = v2;
      v31 = a1;
      v32 = v5;
      v33 = *(v27 - 8);
      sub_2262E219C(v71 + *(v33 + 72) * v26, v22);
      (*(v33 + 56))(v22, 0, 1, v27);
      v5 = v32;
      a1 = v31;
      v2 = v30;
      v4 = v29;
      v17 = v28;
    }

    else
    {
      v27 = type metadata accessor for ResourceManager.Record(0);
      (*(*(v27 - 8) + 56))(v22, 1, 1, v27);
    }

    v11 = v72;
  }

  else
  {
    v27 = type metadata accessor for ResourceManager.Record(0);
    (*(*(v27 - 8) + 56))(v22, 1, 1, v27);
  }

  swift_endAccess();
  type metadata accessor for ResourceManager.Record(0);
  v34 = *(v27 - 8);
  v35 = (*(v34 + 48))(v22, 1, v27);
  sub_2262D67D8(v22, &qword_27D793210, &unk_2263525C8);
  if (v35 != 1)
  {
    v71 = v34;
    LODWORD(v72) = v35;
    sub_22635002C();
    v70 = *(v5 + 16);
    v70(v11, a1, v4);
    v36 = sub_22635003C();
    v37 = sub_22635072C();
    v68 = v17;
    v38 = v37;
    v39 = os_log_type_enabled(v36, v37);
    v73 = v5;
    if (v39)
    {
      v40 = v4;
      v41 = v11;
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v67 = a1;
      v44 = v43;
      v80[0] = v43;
      *v42 = 136315138;
      sub_2262E48A4(&qword_28137FA38, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v45 = sub_226350C1C();
      v66[1] = v2;
      v47 = v46;
      v69 = *(v73 + 8);
      v69(v41, v40);
      v48 = sub_226345004(v45, v47, v80);
      v49 = v78;

      *(v42 + 4) = v48;
      _os_log_impl(&dword_2262B6000, v36, v38, "Removing resource %s...", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      v50 = v44;
      a1 = v67;
      MEMORY[0x22AA7D570](v50, -1, -1);
      MEMORY[0x22AA7D570](v42, -1, -1);

      v51 = *(v79 + 8);
      v51(v68, v49);
      v52 = v40;
    }

    else
    {

      v69 = *(v5 + 8);
      v69(v11, v4);
      v51 = *(v79 + 8);
      v51(v68, v78);
      v52 = v4;
    }

    v53 = v74;
    v54 = v70;
    v70(v74, a1, v52);
    v55 = v75;
    (*(v71 + 56))(v75, 1, 1, v27);
    swift_beginAccess();
    sub_2262DFB20(v55, v53);
    swift_endAccess();
    sub_22635002C();
    v56 = v76;
    v54(v76, a1, v52);
    v57 = sub_22635003C();
    v58 = sub_22635072C();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v80[0] = v60;
      *v59 = 136315138;
      sub_2262E48A4(&qword_28137FA38, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v61 = sub_226350C1C();
      v63 = v62;
      v69(v56, v52);
      v64 = sub_226345004(v61, v63, v80);

      *(v59 + 4) = v64;
      _os_log_impl(&dword_2262B6000, v57, v58, "Removed resource %s.", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      MEMORY[0x22AA7D570](v60, -1, -1);
      MEMORY[0x22AA7D570](v59, -1, -1);
    }

    else
    {

      v69(v56, v52);
    }

    v51(v77, v78);
    v35 = v72;
  }

  return v35 != 1;
}

void *sub_2262E1420(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22634FDDC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ResourceManager.Record(0);
  v57 = *(v8 - 8);
  v58 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v56 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v52 - v11;
  v66 = sub_22634EEFC();
  v13 = *(v66 - 8);
  v14 = MEMORY[0x28223BE20](v66);
  v62 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v52 - v16;
  v18 = sub_2262FEEC0(MEMORY[0x277D84F90]);
  v19 = *(a1 + 16);
  if (!v19)
  {
    return v18;
  }

  v61 = v12;
  v20 = *(v13 + 16);
  v21 = v13 + 16;
  v22 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v64 = *(v21 + 56);
  v65 = v21;
  v54 = v5;
  v55 = (v5 + 16);
  v63 = (v21 - 8);
  v52[0] = v5 + 40;
  v52[1] = v5 + 32;
  v53 = v2;
  v59 = v20;
  v60 = v17;
  v20(v17, v22, v66);
  while (1)
  {
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    swift_beginAccess();
    v23 = *(v2 + 112);
    if (!*(v23 + 16) || (v24 = sub_2263394D8(v17), (v25 & 1) == 0))
    {
      swift_endAccess();
      (*v63)(v17, v66);
      goto LABEL_4;
    }

    v26 = v56;
    sub_2262E219C(*(v23 + 56) + *(v57 + 72) * v24, v56);
    v27 = v26;
    v28 = v61;
    sub_2262E47D4(v27, v61, type metadata accessor for ResourceManager.Record);
    swift_endAccess();
    v29 = v62;
    v20(v62, v17, v66);
    v30 = v28 + *(v58 + 24);
    v31 = v7;
    v32 = v4;
    (*v55)(v7, v30, v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = v18;
    v35 = sub_2263394D8(v29);
    v36 = v18[2];
    v37 = (v34 & 1) == 0;
    v38 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
      break;
    }

    v39 = v34;
    if (v18[3] >= v38)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22633ADC4();
      }
    }

    else
    {
      sub_2263384A8(v38, isUniquelyReferenced_nonNull_native);
      v40 = sub_2263394D8(v62);
      if ((v39 & 1) != (v41 & 1))
      {
        goto LABEL_24;
      }

      v35 = v40;
    }

    v7 = v31;
    v18 = v67;
    if (v39)
    {
      v42 = v67[7] + *(v54 + 72) * v35;
      v4 = v32;
      (*(v54 + 40))(v42, v31, v32);
      v43 = *v63;
      v44 = v66;
      (*v63)(v62, v66);
      sub_2262E3CA0(v61);
      v43(v60, v44);
    }

    else
    {
      v67[(v35 >> 6) + 8] |= 1 << v35;
      v45 = v62;
      v46 = v66;
      v59(v18[6] + v35 * v64, v62, v66);
      (*(v54 + 32))(v18[7] + *(v54 + 72) * v35, v7, v32);
      v47 = *v63;
      (*v63)(v45, v46);
      sub_2262E3CA0(v61);
      v47(v60, v46);
      v48 = v18[2];
      v49 = __OFADD__(v48, 1);
      v50 = v48 + 1;
      if (v49)
      {
        goto LABEL_23;
      }

      v18[2] = v50;
      v4 = v32;
    }

    v2 = v53;
    v20 = v59;
    v17 = v60;
LABEL_4:
    v22 += v64;
    if (!--v19)
    {
      return v18;
    }

    v20(v17, v22, v66);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_226350C8C();
  __break(1u);
  return result;
}

uint64_t sub_2262E1994()
{

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t type metadata accessor for ResourceManager.Record(uint64_t a1)
{
  result = qword_27D793200;
  if (!qword_27D793200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2262E1A64(uint64_t a1)
{
  result = sub_22634EEFC();
  if (v2 <= 0x3F)
  {
    result = sub_22634EECC();
    if (v3 <= 0x3F)
    {
      result = sub_22634FDDC();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2262E1B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_22633941C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_226339D1C();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_22634FF9C();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_2262E2A88(v8, v10, MEMORY[0x277D78D68]);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_22634FF9C();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_2262E1CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_2263394D8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22633AAB0();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_22634EEFC();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for ResourceManager.Record(0);
    v20 = *(v13 - 8);
    sub_2262E47D4(v12 + *(v20 + 72) * v7, a2, type metadata accessor for ResourceManager.Record);
    sub_2262E2418(v7, v9, type metadata accessor for ResourceManager.Record);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for ResourceManager.Record(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_2262E1E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_22633941C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22633AAEC();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for VisualAction(0);
    v19 = *(v12 - 8);
    sub_2262E47D4(v11 + *(v19 + 72) * v8, a3, type metadata accessor for VisualAction);
    sub_2262E2A88(v8, v10, type metadata accessor for VisualAction);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for VisualAction(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_2262E1FFC@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v3 = v2;
  v5 = sub_2263395AC(a2);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22633AD88();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_22634F34C();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = sub_22634EEFC();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a1, v12 + *(v20 + 72) * v7, v13);
    sub_2262E2C7C(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a1;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_22634EEFC();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a1;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_2262E219C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResourceManager.Record(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2262E2200(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2263508EC() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + v6);
      sub_226350CEC();
      MEMORY[0x22AA7CDB0](v9);
      result = sub_226350D0C();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + v3);
      v13 = (v11 + v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for Analytics.Interval(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2262E2418(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v37 = a3;
  v5 = sub_22634EEFC();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v42 = a2;
    v13 = ~v11;
    v14 = sub_2263508EC();
    v15 = v13;
    a2 = v42;
    v41 = (v14 + 1) & v15;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v39 = v10;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v40(v9, *(a2 + 48) + v18 * v12, v5);
      sub_2262E48A4(&qword_28137FA50, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_22635040C();
      result = (*v38)(v9, v5);
      v15 = v21;
      v24 = v23 & v21;
      if (a1 >= v41)
      {
        if (v24 >= v41 && a1 >= v24)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v42 + 48) + v19 * a1 >= (*(v42 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v42;
          v27 = *(v42 + 56);
          v28 = *(*(v37(0) - 8) + 72);
          v29 = v28 * a1;
          result = v27 + v28 * a1;
          v30 = v28 * v12;
          v31 = v27 + v28 * v12 + v28;
          if (v29 < v30 || result >= v31)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v39;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v33 = v29 == v30;
            v10 = v39;
            v15 = v21;
            if (!v33)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v41 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v39;
      a2 = v42;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2262E2768(int64_t a1, uint64_t a2)
{
  v40 = sub_22634EEFC();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_2263508EC();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_2262E48A4(&qword_28137FA50, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_22635040C();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_2262E2A88(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_2263508EC() + 1) & ~v6;
    while (1)
    {
      sub_226350CEC();

      sub_2263504EC();
      v11 = sub_226350D0C();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2262E2C7C(int64_t a1, uint64_t a2)
{
  v4 = sub_22634F34C();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = sub_2263508EC();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_2262E48A4(&unk_27D793220, MEMORY[0x277D78638], MEMORY[0x277D78640]);
      v22 = sub_22635040C();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(sub_22634EEFC() - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2262E2FC0(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for Analytics.Interval(0);
  result = sub_2262E47D4(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for Analytics.Interval);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_2262E3068(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_22634FF9C();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_2262E3118(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_2262E3160(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22634EEFC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_2262E3218(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22634EEFC();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for ResourceManager.Record(0);
  result = sub_2262E47D4(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for ResourceManager.Record);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_2262E3308(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for VisualAction(0);
  result = sub_2262E47D4(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for VisualAction);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_2262E33B4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a4[6];
  v12 = a5(0);
  (*(*(v12 - 8) + 32))(v11 + *(*(v12 - 8) + 72) * a1, a2, v12);
  v13 = a4[7];
  v14 = a6(0);
  result = (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * a1, a3, v14);
  v16 = a4[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v18;
  }

  return result;
}

uint64_t sub_2262E34B4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2263393B0(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for Analytics.Interval(0);
      return sub_2262E483C(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for Analytics.Interval);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_226339AE4();
    goto LABEL_7;
  }

  sub_226336018(v13, a3 & 1);
  v20 = sub_2263393B0(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = sub_226350C8C();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_2262E2FC0(v10, a2, a1, v16);
}