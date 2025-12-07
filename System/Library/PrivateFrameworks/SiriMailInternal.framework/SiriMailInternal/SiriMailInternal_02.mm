void sub_26760760C()
{
  OUTLINED_FUNCTION_7_8();
  if (v3)
  {
    OUTLINED_FUNCTION_6_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_24_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_9();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_26760793C(*(v0 + 16), v4, &qword_2801CC528, &qword_2676CF290, &qword_2801CC3D8, &unk_2676CEC00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_12();
  if (v1)
  {
    v8 = OUTLINED_FUNCTION_4_7(v7);
    sub_2676C2590(v8, v9, v10);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_9();
  }
}

void sub_2676076F0()
{
  OUTLINED_FUNCTION_7_8();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_24_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_53(v2, v5, &qword_2801CC518, &qword_2676CF278);
  OUTLINED_FUNCTION_29_1();
  sub_2676CAECC();
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_12();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_4_7(v8);
    sub_2676C25A4(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_9();
  }
}

void sub_2676077B8()
{
  OUTLINED_FUNCTION_7_8();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_24_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_53(v2, v5, &qword_2801CC500, &qword_2676D57A0);
  OUTLINED_FUNCTION_29_1();
  sub_2676CB14C();
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_12();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_4_7(v8);
    sub_2676C2488(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_9();
  }
}

void *sub_267607880(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBB78, &qword_2676CD280);
  v4 = swift_allocObject();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_64();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

void *sub_26760793C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_1_0(v10);
  v12 = *(v11 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v15);
  if (v12)
  {
    if ((result - v14) != 0x8000000000000000 || v12 != -1)
    {
      v15[2] = a1;
      v15[3] = 2 * ((result - v14) / v12);
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_267607A34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = a5(0);
  OUTLINED_FUNCTION_1_0(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if ((result - v12) != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_267607B28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_267607B90(uint64_t *a1)
{
  v2 = *(sub_2676C8BFC() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_267609F44(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_267607C8C(v6);
  *a1 = v3;
  return result;
}

unint64_t sub_267607C38()
{
  result = qword_2801CC4E8;
  if (!qword_2801CC4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC4E8);
  }

  return result;
}

uint64_t sub_267607C8C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_2676CC55C();
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
        sub_2676C8BFC();
        v6 = sub_2676CC14C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_2676C8BFC() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_267608154(v8, v9, a1, v4);
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
    return sub_267607DBC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_267607DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = sub_2676C90CC();
  v8 = *(v60 - 8);
  v9 = MEMORY[0x28223BE20](v60);
  v59 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = &v41 - v11;
  v12 = sub_2676C8BFC();
  v13 = MEMORY[0x28223BE20](v12);
  v51 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v57 = &v41 - v16;
  result = MEMORY[0x28223BE20](v15);
  v56 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v18 + 16);
    v21 = v18 + 16;
    v23 = *(v21 + 56);
    v53 = (v8 + 8);
    v54 = v22;
    v52 = (v21 - 8);
    v55 = v21;
    v24 = (v20 + v23 * (a3 - 1));
    v48 = -v23;
    v49 = (v21 + 16);
    v25 = a1 - a3;
    v50 = v20;
    v42 = v23;
    v26 = v20 + v23 * a3;
    v27 = v58;
    while (2)
    {
      v46 = v24;
      v47 = a3;
      v44 = v26;
      v45 = v25;
      v61 = v25;
      do
      {
        v28 = v56;
        v29 = v54;
        v54(v56, v26, v12);
        v30 = v12;
        v31 = v57;
        v29(v57, v24, v30);
        sub_2676C8A7C();
        v32 = v59;
        sub_2676C8A7C();
        v62 = sub_2676C906C();
        v33 = *v53;
        v34 = v32;
        v35 = v60;
        (*v53)(v34, v60);
        v33(v27, v35);
        v36 = *v52;
        v37 = v31;
        v12 = v30;
        (*v52)(v37, v30);
        result = v36(v28, v30);
        if ((v62 & 1) == 0)
        {
          break;
        }

        if (!v50)
        {
          __break(1u);
          return result;
        }

        v38 = *v49;
        v39 = v51;
        (*v49)(v51, v26, v30);
        swift_arrayInitWithTakeFrontToBack();
        result = v38(v24, v39, v30);
        v24 += v48;
        v26 += v48;
      }

      while (!__CFADD__(v61++, 1));
      a3 = v47 + 1;
      v24 = &v46[v42];
      v25 = v45 - 1;
      v26 = v44 + v42;
      if (v47 + 1 != v43)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_267608154(char **a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v133 = a1;
  v157 = sub_2676C90CC();
  v8 = *(v157 - 8);
  v9 = MEMORY[0x28223BE20](v157);
  v156 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v155 = &v130 - v11;
  v12 = sub_2676C8BFC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v136 = &v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v147 = &v130 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v154 = &v130 - v19;
  result = MEMORY[0x28223BE20](v18);
  v158 = &v130 - v21;
  v142 = a3;
  v22 = a3[1];
  v137 = v13;
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_101:
    v159 = *v133;
    if (!v159)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_103:
      v123 = (v24 + 16);
      v124 = *(v24 + 16);
      while (v124 >= 2)
      {
        if (!*v142)
        {
          goto LABEL_139;
        }

        v125 = v24;
        v126 = (v24 + 16 * v124);
        v127 = *v126;
        v128 = &v123[2 * v124];
        v24 = v128[1];
        sub_267608D48(&(*v142)[*(v137 + 9) * *v126], &(*v142)[*(v137 + 9) * *v128], &(*v142)[*(v137 + 9) * v24], v159);
        if (v5)
        {
          break;
        }

        if (v24 < v127)
        {
          goto LABEL_127;
        }

        if (v124 - 2 >= *v123)
        {
          goto LABEL_128;
        }

        *v126 = v127;
        v126[1] = v24;
        v129 = *v123 - v124;
        if (*v123 < v124)
        {
          goto LABEL_129;
        }

        v124 = *v123 - 1;
        result = memmove(v128, v128 + 2, 16 * v129);
        *v123 = v124;
        v24 = v125;
      }
    }

LABEL_136:
    result = sub_2676093B4(v24);
    v24 = result;
    goto LABEL_103;
  }

  v131 = a4;
  v23 = 0;
  v151 = (v8 + 8);
  v152 = v13 + 16;
  v149 = (v13 + 32);
  v150 = (v13 + 8);
  v24 = MEMORY[0x277D84F90];
  v153 = v12;
  while (1)
  {
    v25 = v23;
    v26 = v23 + 1;
    if (v23 + 1 < v22)
    {
      v132 = v24;
      v27 = v23;
      v134 = v23;
      v143 = v5;
      v144 = v23 + 1;
      v28 = *v142;
      v159 = v28;
      v29 = v13;
      v30 = *(v13 + 9);
      v145 = v22;
      v146 = v30;
      v31 = v28 + v30 * v26;
      v32 = v12;
      v33 = *(v29 + 2);
      v33(v158, v31, v12);
      v34 = v154;
      v140 = v33;
      v33(v154, v28 + v30 * v27, v32);
      v5 = v155;
      v24 = v158;
      sub_2676C8A7C();
      v35 = v156;
      sub_2676C8A7C();
      LODWORD(v141) = sub_2676C906C();
      v36 = *v151;
      v37 = v157;
      (*v151)(v35, v157);
      v139 = v36;
      (v36)(v5, v37);
      v38 = *(v137 + 1);
      (v38)(v34, v32);
      v138 = v38;
      result = (v38)(v24, v32);
      v39 = v145;
      v40 = v134 + 2;
      v41 = v159 + v146 * (v134 + 2);
      while (1)
      {
        v42 = v40;
        if (++v144 >= v39)
        {
          break;
        }

        v5 = v158;
        v43 = v153;
        v44 = v140;
        v159 = v40;
        (v140)(v158, v41, v153);
        v24 = v154;
        v44(v154, v31, v43);
        v45 = v155;
        sub_2676C8A7C();
        v46 = v156;
        sub_2676C8A7C();
        LOBYTE(v148) = sub_2676C906C() & 1;
        LODWORD(v148) = v148;
        v47 = v46;
        v48 = v157;
        v49 = v139;
        (v139)(v47, v157);
        v49(v45, v48);
        v50 = v138;
        (v138)(v24, v43);
        result = (v50)(v5, v43);
        v42 = v159;
        v39 = v145;
        v41 += v146;
        v31 += v146;
        v40 = v159 + 1;
        if ((v141 & 1) != v148)
        {
          goto LABEL_9;
        }
      }

      v144 = v39;
LABEL_9:
      if (v141)
      {
        v26 = v144;
        v25 = v134;
        v12 = v153;
        if (v144 < v134)
        {
          goto LABEL_133;
        }

        if (v134 >= v144)
        {
          v5 = v143;
          v13 = v137;
          v24 = v132;
          goto LABEL_32;
        }

        if (v39 >= v42)
        {
          v51 = v42;
        }

        else
        {
          v51 = v39;
        }

        v52 = v146 * (v51 - 1);
        v53 = v146 * v51;
        v54 = v134;
        v55 = v134 * v146;
        v5 = v143;
        v13 = v137;
        do
        {
          if (v54 != --v26)
          {
            v56 = v5;
            v57 = *v142;
            if (!*v142)
            {
              goto LABEL_140;
            }

            v159 = *v149;
            (v159)(v136, &v57[v55], v12);
            v58 = v55 < v52 || &v57[v55] >= &v57[v53];
            if (v58)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v55 != v52)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v159)(&v57[v52], v136, v12);
            v5 = v56;
            v13 = v137;
          }

          ++v54;
          v52 -= v146;
          v53 -= v146;
          v55 += v146;
        }

        while (v54 < v26);
        v24 = v132;
      }

      else
      {
        v5 = v143;
        v13 = v137;
        v24 = v132;
        v12 = v153;
      }

      v26 = v144;
      v25 = v134;
    }

LABEL_32:
    v59 = v142[1];
    if (v26 < v59)
    {
      if (__OFSUB__(v26, v25))
      {
        goto LABEL_132;
      }

      if (v26 - v25 < v131)
      {
        break;
      }
    }

LABEL_48:
    if (v26 < v25)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_267607264(0, *(v24 + 16) + 1, 1, v24);
      v24 = result;
    }

    v80 = *(v24 + 16);
    v79 = *(v24 + 24);
    v81 = v80 + 1;
    if (v80 >= v79 >> 1)
    {
      result = sub_267607264((v79 > 1), v80 + 1, 1, v24);
      v24 = result;
    }

    *(v24 + 16) = v81;
    v82 = (v24 + 32);
    v83 = (v24 + 32 + 16 * v80);
    *v83 = v25;
    v83[1] = v26;
    v159 = *v133;
    if (!v159)
    {
      goto LABEL_141;
    }

    v144 = v26;
    if (v80)
    {
      v148 = (v24 + 32);
      while (1)
      {
        v84 = v81 - 1;
        v85 = &v82[16 * v81 - 16];
        v86 = (v24 + 16 * v81);
        if (v81 >= 4)
        {
          break;
        }

        if (v81 == 3)
        {
          v87 = *(v24 + 32);
          v88 = *(v24 + 40);
          v97 = __OFSUB__(v88, v87);
          v89 = v88 - v87;
          v90 = v97;
LABEL_69:
          if (v90)
          {
            goto LABEL_118;
          }

          v102 = *v86;
          v101 = v86[1];
          v103 = __OFSUB__(v101, v102);
          v104 = v101 - v102;
          v105 = v103;
          if (v103)
          {
            goto LABEL_121;
          }

          v106 = *(v85 + 1);
          v107 = v106 - *v85;
          if (__OFSUB__(v106, *v85))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v104, v107))
          {
            goto LABEL_126;
          }

          if (v104 + v107 >= v89)
          {
            if (v89 < v107)
            {
              v84 = v81 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v81 < 2)
        {
          goto LABEL_120;
        }

        v109 = *v86;
        v108 = v86[1];
        v97 = __OFSUB__(v108, v109);
        v104 = v108 - v109;
        v105 = v97;
LABEL_84:
        if (v105)
        {
          goto LABEL_123;
        }

        v111 = *v85;
        v110 = *(v85 + 1);
        v97 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v97)
        {
          goto LABEL_125;
        }

        if (v112 < v104)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v84 - 1 >= v81)
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

        if (!*v142)
        {
          goto LABEL_138;
        }

        v116 = &v82[16 * v84 - 16];
        v117 = *v116;
        v118 = v84;
        v119 = &v82[16 * v84];
        v120 = *(v119 + 1);
        sub_267608D48(&(*v142)[*(v13 + 9) * *v116], &(*v142)[*(v13 + 9) * *v119], &(*v142)[*(v13 + 9) * v120], v159);
        if (v5)
        {
        }

        if (v120 < v117)
        {
          goto LABEL_113;
        }

        v143 = 0;
        v5 = v13;
        v121 = v24;
        v24 = *(v24 + 16);
        if (v118 > v24)
        {
          goto LABEL_114;
        }

        *v116 = v117;
        *(v116 + 1) = v120;
        if (v118 >= v24)
        {
          goto LABEL_115;
        }

        v81 = v24 - 1;
        result = memmove(v119, v119 + 16, 16 * (v24 - 1 - v118));
        *(v121 + 16) = v24 - 1;
        v122 = v24 > 2;
        v24 = v121;
        v13 = v5;
        v5 = v143;
        v82 = v148;
        if (!v122)
        {
          goto LABEL_98;
        }
      }

      v91 = &v82[16 * v81];
      v92 = *(v91 - 8);
      v93 = *(v91 - 7);
      v97 = __OFSUB__(v93, v92);
      v94 = v93 - v92;
      if (v97)
      {
        goto LABEL_116;
      }

      v96 = *(v91 - 6);
      v95 = *(v91 - 5);
      v97 = __OFSUB__(v95, v96);
      v89 = v95 - v96;
      v90 = v97;
      if (v97)
      {
        goto LABEL_117;
      }

      v98 = v86[1];
      v99 = v98 - *v86;
      if (__OFSUB__(v98, *v86))
      {
        goto LABEL_119;
      }

      v97 = __OFADD__(v89, v99);
      v100 = v89 + v99;
      if (v97)
      {
        goto LABEL_122;
      }

      if (v100 >= v94)
      {
        v114 = *v85;
        v113 = *(v85 + 1);
        v97 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v97)
        {
          goto LABEL_130;
        }

        if (v89 < v115)
        {
          v84 = v81 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v22 = v142[1];
    v23 = v144;
    if (v144 >= v22)
    {
      goto LABEL_101;
    }
  }

  v60 = (v25 + v131);
  if (__OFADD__(v25, v131))
  {
    goto LABEL_134;
  }

  if (v60 >= v59)
  {
    v60 = v142[1];
  }

  if (v60 < v25)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v26 == v60)
  {
    goto LABEL_48;
  }

  v132 = v24;
  v143 = v5;
  v61 = *v142;
  v62 = *(v13 + 9);
  v148 = *(v13 + 2);
  v63 = &v61[v62 * (v26 - 1)];
  v145 = -v62;
  v134 = v25;
  v64 = (v25 - v26);
  v146 = v61;
  v135 = v62;
  v65 = &v61[v26 * v62];
  v138 = v60;
LABEL_41:
  v144 = v26;
  v139 = v65;
  v140 = v64;
  v141 = v63;
  v66 = v63;
  while (1)
  {
    v67 = v158;
    v68 = v148;
    (v148)(v158, v65, v12);
    v69 = v154;
    (v68)(v154, v66, v12);
    v70 = v155;
    sub_2676C8A7C();
    v71 = v156;
    sub_2676C8A7C();
    LODWORD(v159) = sub_2676C906C();
    v72 = *v151;
    v73 = v71;
    v74 = v157;
    (*v151)(v73, v157);
    v75 = v70;
    v12 = v153;
    v72(v75, v74);
    v76 = *v150;
    (*v150)(v69, v12);
    result = v76(v67, v12);
    if ((v159 & 1) == 0)
    {
LABEL_46:
      v26 = v144 + 1;
      v63 = &v141[v135];
      v64 = v140 - 1;
      v65 = &v139[v135];
      if ((v144 + 1) == v138)
      {
        v26 = v138;
        v5 = v143;
        v13 = v137;
        v24 = v132;
        v25 = v134;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v146)
    {
      break;
    }

    v77 = *v149;
    v78 = v147;
    (*v149)(v147, v65, v12);
    swift_arrayInitWithTakeFrontToBack();
    v77(v66, v78, v12);
    v66 += v145;
    v65 += v145;
    v58 = __CFADD__(v64++, 1);
    if (v58)
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
  return result;
}

uint64_t sub_267608D48(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v84 = a4;
  v79 = sub_2676C90CC();
  v7 = *(v79 - 8);
  v8 = MEMORY[0x28223BE20](v79);
  v78 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v77 = &v67 - v10;
  v83 = sub_2676C8BFC();
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
    sub_2676C2564(a2, v19 / v17, v84);
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
      sub_2676C8A7C();
      v57 = v78;
      sub_2676C8A7C();
      LODWORD(v72) = sub_2676C906C();
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
    sub_2676C2564(a1, (a2 - a1) / v17, v84);
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
      sub_2676C8A7C();
      v30 = v78;
      sub_2676C8A7C();
      v31 = sub_2676C906C();
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
  sub_2676093C8(&v87, &v86, &v85);
  return 1;
}

uint64_t sub_2676093C8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_2676C8BFC();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_2676094A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC570, &qword_2676CF2D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_267609608(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t dispatch thunk of LinkServicesProviding.markMessageAsRead(message:)()
{
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_26_3(v0, v1, v2);
  OUTLINED_FUNCTION_10_7();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_42(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11_6(v4);

  return v7(v6);
}

uint64_t dispatch thunk of LinkServicesProviding.performSendMail(intent:)()
{
  OUTLINED_FUNCTION_62();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_10_7();
  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_42(v9);
  *v10 = v11;
  v10[1] = sub_267605CFC;

  return v13(v7, v5, v3, v1);
}

uint64_t dispatch thunk of LinkServicesProviding.performGetMail(identifiers:)()
{
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_26_3(v0, v1, v2);
  OUTLINED_FUNCTION_10_7();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_42(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11_6(v4);

  return v7(v6);
}

uint64_t sub_267609970()
{
  OUTLINED_FUNCTION_3_0();
  v2 = v1;
  OUTLINED_FUNCTION_9_3();
  v3 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v4 = v3;

  OUTLINED_FUNCTION_17_6();

  return v5(v2);
}

uint64_t dispatch thunk of LinkServicesProviding.performGetMail(subject:isRead:isNew:fromAddressee:dateTimeRange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_10_7();
  v21 = (v16 + *v16);
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_42(v17);
  *v18 = v19;
  v18[1] = sub_267609F58;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of LinkServicesProviding.deleteMessage(message:)()
{
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_26_3(v0, v1, v2);
  OUTLINED_FUNCTION_10_7();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_42(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11_6(v4);

  return v7(v6);
}

uint64_t dispatch thunk of LinkServicesProviding.resolveMailViewEntities()()
{
  OUTLINED_FUNCTION_16_2();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_10_7();
  v9 = (v4 + *v4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_42(v5);
  *v6 = v7;
  v6[1] = sub_26760623C;

  return v9(v3, v1);
}

_BYTE *storeEnumTagSinglePayload for LinkServicesProvider(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16SiriMailInternal04SendB6ResultO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_267609E94(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_267609ED4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_267609F18(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_9()
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_19_2()
{

  JUMPOUT(0x26D5FEA80);
}

uint64_t OUTLINED_FUNCTION_23_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_2676CBDFC();
}

uint64_t OUTLINED_FUNCTION_27_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_28_1()
{
}

uint64_t OUTLINED_FUNCTION_34_0()
{
}

BOOL OUTLINED_FUNCTION_35_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_36_0()
{

  return swift_slowAlloc();
}

void *OUTLINED_FUNCTION_41(void *a1)
{

  return sub_26760735C(a1, v1, 1, v2);
}

void *OUTLINED_FUNCTION_53(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_267607A34(v5, a2, a3, a4, v4);
}

uint64_t OUTLINED_FUNCTION_57()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_65(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_66(uint64_t a1, uint64_t a2)
{

  return sub_2676C89CC();
}

uint64_t sub_26760A344(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v3 = sub_2676C8C8C();
  OUTLINED_FUNCTION_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_7();
  v9 = (v7 - v8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v47 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v47 - v14;
  v16 = sub_2676C8BFC();
  OUTLINED_FUNCTION_3();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_2();
  v22 = v21 - v20;
  v23 = *(a2 + 16);
  v24 = MEMORY[0x277D84F90];
  if (v23)
  {
    v61 = MEMORY[0x277D84F90];
    v52 = v23;
    sub_2676C2950(0, v23, 0);
    v24 = v61;
    v25 = v18 + 16;
    OUTLINED_FUNCTION_2_12();
    v50 = v27;
    v51 = v28;
    v49 = a2 + v27;
    v60 = v5 + 16;
    v29 = (v5 + 8);
    v30 = *(v25 + 56);
    v58 = v5;
    v55 = v22;
    v53 = v25;
    v54 = v16;
    v47 = v30;
    v48 = (v25 + 16);
    do
    {
      v56 = v24;
      v57 = v26;
      v51(v22, v49 + v30 * v26, v16);
      v31 = sub_2676C8ACC();
      v32 = *(v31 + 16);
      if (v32)
      {
        OUTLINED_FUNCTION_2_14(v31);
        do
        {
          OUTLINED_FUNCTION_4_8();
          v5();
          sub_2676C8C1C();
          if (v33)
          {
          }

          else
          {
            sub_26760B734();
            sub_2676C8C2C();
          }

          (*v29)(v15, v3);
          v22 += v16;
          --v32;
        }

        while (v32);

        v5 = v58;
        v22 = v55;
      }

      else
      {
      }

      v34 = sub_2676C8A9C();
      v35 = *(v34 + 16);
      if (v35)
      {
        OUTLINED_FUNCTION_2_14(v34);
        do
        {
          OUTLINED_FUNCTION_4_8();
          v5();
          sub_2676C8C1C();
          if (v36)
          {
          }

          else
          {
            sub_26760B734();
            sub_2676C8C2C();
          }

          (*v29)(v13, v3);
          v22 += v16;
          --v35;
        }

        while (v35);

        v5 = v58;
        v22 = v55;
      }

      else
      {
      }

      v37 = sub_2676C8ADC();
      v38 = *(v37 + 16);
      if (v38)
      {
        OUTLINED_FUNCTION_2_14(v37);
        do
        {
          OUTLINED_FUNCTION_4_8();
          v5();
          sub_2676C8C1C();
          if (v39)
          {
          }

          else
          {
            sub_26760B734();
            sub_2676C8C2C();
          }

          (*v29)(v9, v3);
          v22 += v16;
          --v38;
        }

        while (v38);

        v22 = v55;
      }

      else
      {
      }

      v24 = v56;
      v40 = v57;
      v61 = v56;
      v42 = *(v56 + 16);
      v41 = *(v56 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_2676C2950(v41 > 1, v42 + 1, 1);
        v40 = v57;
        v24 = v61;
      }

      *(v24 + 16) = v42 + 1;
      v43 = v47;
      v44 = v24 + v50 + v42 * v47;
      v16 = v54;
      v45 = v40 + 1;
      (*v48)(v44, v22, v54);
      v30 = v43;
      v26 = v45;
      v5 = v58;
    }

    while (v45 != v52);
  }

  return v24;
}

uint64_t sub_26760A76C(uint64_t a1, uint64_t a2)
{
  v22 = sub_2676CAB2C();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_2();
  v7 = (v6 - v5);
  v8 = sub_2676CAABC();
  OUTLINED_FUNCTION_3();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_2();
  v14 = v13 - v12;
  sub_2676CAEBC();
  sub_2676C8C1C();
  if (v15)
  {
    sub_2676CAEAC();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC580, &qword_2676CF270);
  sub_2676CAB1C();
  *(swift_allocObject() + 16) = xmmword_2676CDE20;
  (*(v10 + 104))(v14, *MEMORY[0x277D56008], v8);
  v16 = sub_2676C8C4C();
  OUTLINED_FUNCTION_7_9(0, 0, v14, v18, v19, v16, v17);
  sub_2676CAE6C();
  sub_2676C8C6C();
  sub_2676CAE0C();
  *v7 = a1;
  v7[1] = a2;
  (*(v3 + 104))(v7, *MEMORY[0x277D56060], v22);

  return sub_2676CAE3C();
}

uint64_t *sub_26760A9D0(uint64_t a1)
{
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC588, &qword_2676CF300);
  MEMORY[0x28223BE20](v167);
  OUTLINED_FUNCTION_1_7();
  v166 = v2 - v3;
  v5 = MEMORY[0x28223BE20](v4);
  v165 = &v145 - v6;
  MEMORY[0x28223BE20](v5);
  v164 = &v145 - v7;
  OUTLINED_FUNCTION_7_3();
  v156 = sub_2676CAB2C();
  OUTLINED_FUNCTION_3();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_2();
  v155 = (v12 - v11);
  OUTLINED_FUNCTION_7_3();
  v13 = sub_2676CAECC();
  OUTLINED_FUNCTION_3();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_7();
  v163 = (v17 - v18);
  MEMORY[0x28223BE20](v19);
  v21 = &v145 - v20;
  v162 = sub_2676CAABC();
  OUTLINED_FUNCTION_3();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3_2();
  v161 = v26 - v25;
  OUTLINED_FUNCTION_7_3();
  v146 = sub_2676CAB1C();
  OUTLINED_FUNCTION_3();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3_2();
  v147 = v31 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC590, &qword_2676CF308);
  MEMORY[0x28223BE20](v32 - 8);
  v174 = (&v145 - v33);
  OUTLINED_FUNCTION_7_3();
  v34 = sub_2676C8C8C();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_3_2();
  v39 = v38 - v37;
  v178 = MEMORY[0x277D84F98];
  v40 = *(a1 + 16);
  v175 = v13;
  v173 = v15;
  if (v40)
  {
    v172 = *(v36 + 16);
    OUTLINED_FUNCTION_2_12();
    v42 = a1 + v41;
    v169 = *(v43 + 56);
    v148 = v15 + 16;
    v168 = v43 - 8;
    LODWORD(v160) = *MEMORY[0x277D56008];
    v159 = v23 + 104;
    v145 = v28 + 32;
    v154 = 0x80000002676D6080;
    v153 = *MEMORY[0x277D56060];
    v152 = (v9 + 104);
    v150 = v15 + 32;
    v149 = v15 + 40;
    v151 = xmmword_2676CDE20;
    v158 = v21;
    v157 = v28;
    v170 = v43;
    v171 = v34;
    while (1)
    {
      v172(v39, v42, v34);
      v44 = sub_2676C8C1C();
      if (!v45)
      {
        v44 = sub_2676C8C4C();
      }

      v46 = v178;
      if (!*(v178 + 16))
      {
        break;
      }

      v47 = sub_26760BE20(v44, v45);
      v49 = v48;

      if ((v49 & 1) == 0)
      {
        goto LABEL_17;
      }

      v50 = v174;
      v51 = *(v46 + 56) + *(v173 + 72) * v47;
      v52 = v175;
      (*(v173 + 16))(v174, v51, v175);
      __swift_storeEnumTagSinglePayload(v50, 0, 1, v52);
      sub_26760BE98(v50);
      v53 = sub_2676C8C1C();
      if (!v54)
      {
        v53 = sub_2676C8C4C();
      }

      v55 = sub_26760B674(&v177, v53, v54);
      v34 = v56;
      if (!__swift_getEnumTagSinglePayload(v56, 1, v175))
      {
        OUTLINED_FUNCTION_13_6();
        v58 = *(v57 - 256);
        OUTLINED_FUNCTION_12_4();
        v60(v59);
        v61 = sub_2676C8C4C();
        OUTLINED_FUNCTION_7_9(0, 0, v58, v63, v64, v61, v62);
        v65 = sub_2676CAE4C();
        v67 = v66;
        v34 = *v66;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v67 = v34;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_267606CBC();
          v34 = v106;
          *v67 = v106;
        }

        v69 = *(v34 + 16);
        if (v69 >= *(v34 + 24) >> 1)
        {
          sub_267606CBC();
          v34 = v107;
          *v67 = v107;
        }

        *(v34 + 16) = v69 + 1;
        v70 = v157;
        OUTLINED_FUNCTION_2_12();
        (*(v70 + 32))(v34 + v71 + *(v70 + 72) * v69, v147, v146);
        v65(v176, 0);
      }

      (v55)(&v177, 0);

      v72 = OUTLINED_FUNCTION_6_7();
      v73(v72);
LABEL_30:
      v42 += v169;
      if (!--v40)
      {
        v108 = v178;
        v13 = v175;
        goto LABEL_33;
      }
    }

LABEL_17:
    v74 = v174;
    __swift_storeEnumTagSinglePayload(v174, 1, 1, v175);
    sub_26760BE98(v74);
    v75 = sub_2676C8C1C();
    if (!v76)
    {
      v75 = sub_2676C8C4C();
    }

    v77 = v75;
    v78 = v76;
    sub_2676CAEBC();
    sub_2676C8C1C();
    if (v79)
    {
      sub_2676CAEAC();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC580, &qword_2676CF270);
    *(swift_allocObject() + 16) = v151;
    OUTLINED_FUNCTION_13_6();
    v81 = *(v80 - 256);
    OUTLINED_FUNCTION_12_4();
    v83(v82);
    v84 = sub_2676C8C4C();
    OUTLINED_FUNCTION_7_9(0, 0, v81, v86, v87, v84, v85);
    sub_2676CAE6C();
    sub_2676C8C6C();
    sub_2676CAE0C();
    v88 = v155;
    *v155 = 0xD000000000000014;
    v88[1] = v154;
    (*v152)(v88, v153, v156);
    sub_2676CAE3C();
    v89 = v178;
    swift_isUniquelyReferenced_nonNull_native();
    v177 = v89;
    v178 = 0x8000000000000000;
    v90 = sub_26760BE20(v77, v78);
    if (__OFADD__(v89[2], (v91 & 1) == 0))
    {
      goto LABEL_61;
    }

    v34 = v90;
    v92 = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC598, &unk_2676CF310);
    if (sub_2676CC4AC())
    {
      v93 = sub_26760BE20(v77, v78);
      if ((v92 & 1) != (v94 & 1))
      {
        goto LABEL_63;
      }

      v34 = v93;
    }

    v95 = v177;
    if (v92)
    {
      OUTLINED_FUNCTION_9_7();
      OUTLINED_FUNCTION_11_7();
      v97(v96);
    }

    else
    {
      v177[(v34 >> 6) + 8] |= 1 << v34;
      v98 = (v95[6] + 16 * v34);
      *v98 = v77;
      v98[1] = v78;
      OUTLINED_FUNCTION_9_7();
      OUTLINED_FUNCTION_11_7();
      v100(v99);
      v101 = v95[2];
      v102 = __OFADD__(v101, 1);
      v103 = v101 + 1;
      if (v102)
      {
        goto LABEL_62;
      }

      v95[2] = v103;
    }

    v104 = OUTLINED_FUNCTION_6_7();
    v105(v104);
    v178 = v95;

    goto LABEL_30;
  }

  v108 = MEMORY[0x277D84F98];
LABEL_33:
  v109 = *(v108 + 16);
  v174 = MEMORY[0x277D84F90];
  v110 = v173;
  if (v109)
  {
    v177 = MEMORY[0x277D84F90];

    sub_2676C2A30(0, v109, 0);
    v174 = v177;
    v113 = sub_26760C5E4(v108);
    v114 = 0;
    v115 = v108 + 64;
    v168 = v110 + 16;
    v169 = v110 + 32;
    v159 = v108 + 72;
    v160 = v109;
    v161 = v108 + 64;
    v162 = v108;
    if ((v113 & 0x8000000000000000) == 0)
    {
      while (v113 < 1 << *(v108 + 32))
      {
        v116 = v113 >> 6;
        if ((*(v115 + 8 * (v113 >> 6)) & (1 << v113)) == 0)
        {
          goto LABEL_56;
        }

        if (*(v108 + 36) != v111)
        {
          goto LABEL_57;
        }

        LODWORD(v170) = v112;
        v171 = v114;
        v172 = v111;
        v117 = v167;
        v118 = *(v167 + 48);
        v119 = *(v108 + 56);
        v120 = (*(v108 + 48) + 16 * v113);
        v122 = *v120;
        v121 = v120[1];
        v173 = *(v110 + 72);
        v123 = *(v110 + 16);
        v124 = v110;
        v125 = v164;
        v123(&v164[v118], v119 + v173 * v113, v13);
        v126 = v165;
        *v165 = v122;
        *(v126 + 1) = v121;
        v127 = *(v124 + 32);
        v127(&v126[*(v117 + 48)], &v125[v118], v175);
        v128 = v126;
        v129 = v166;
        sub_26760C624(v128, v166);

        v130 = v129 + *(v117 + 48);
        v13 = v175;
        v131 = v163;
        v127(v163, v130, v175);
        v177 = v174;
        v133 = v174[2];
        v132 = v174[3];
        if (v133 >= v132 >> 1)
        {
          sub_2676C2A30((v132 > 1), v133 + 1, 1);
          v174 = v177;
        }

        v174[2] = v133 + 1;
        OUTLINED_FUNCTION_2_12();
        v127((v135 + v134 + v133 * v173), v131, v13);
        v108 = v162;
        v136 = 1 << *(v162 + 32);
        if (v113 >= v136)
        {
          goto LABEL_58;
        }

        v115 = v161;
        v137 = *(v161 + 8 * v116);
        if ((v137 & (1 << v113)) == 0)
        {
          goto LABEL_59;
        }

        if (*(v162 + 36) != v172)
        {
          goto LABEL_60;
        }

        v110 = v124;
        v138 = v137 & (-2 << (v113 & 0x3F));
        if (v138)
        {
          v136 = __clz(__rbit64(v138)) | v113 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v139 = v116 << 6;
          v140 = v116 + 1;
          v141 = (v159 + 8 * v116);
          while (v140 < (v136 + 63) >> 6)
          {
            v143 = *v141++;
            v142 = v143;
            v139 += 64;
            ++v140;
            if (v143)
            {
              sub_26760C694(v113, v172, v170 & 1);
              v136 = __clz(__rbit64(v142)) + v139;
              goto LABEL_50;
            }
          }

          sub_26760C694(v113, v172, v170 & 1);
        }

LABEL_50:
        v114 = v171 + 1;
        if (v171 + 1 == v160)
        {

          goto LABEL_54;
        }

        v112 = 0;
        v111 = *(v108 + 36);
        v113 = v136;
        if (v136 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
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
    result = sub_2676CC5EC();
    __break(1u);
  }

  else
  {
LABEL_54:

    return v174;
  }

  return result;
}

uint64_t (*sub_26760B674(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_26760BFB4(v6, a2, a3);
  return sub_26760B6E8;
}

void sub_26760B6E8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_26760B734()
{
  v15[1] = *MEMORY[0x277D85DE8];
  v1 = objc_opt_self();
  sub_2676C8C4C();
  v2 = sub_2676CBF3C();

  v3 = [v1 predicateForContactsMatchingEmailAddress_];

  sub_26760C798();
  sub_26760B920();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A8, &unk_2676CF320);
  v4 = sub_2676CC0EC();

  v15[0] = 0;
  v5 = [v0 unifiedContactsMatchingPredicate:v3 keysToFetch:v4 error:v15];

  v6 = v15[0];
  if (!v5)
  {
    v12 = v15[0];
    v13 = sub_2676C8FCC();

    swift_willThrow();
    return 0;
  }

  v7 = sub_2676CC0FC();
  v8 = v6;

  if (!sub_267630B8C())
  {

    return 0;
  }

  sub_267692C1C();
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x26D5FE0E0](0, v7);
  }

  else
  {
    v9 = *(v7 + 32);
  }

  v10 = v9;

  v11 = sub_26760B9DC();

  return v11;
}

uint64_t sub_26760B920()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2676CF2F0;
  v1 = *MEMORY[0x277CBD068];
  v2 = *MEMORY[0x277CBD000];
  *(v0 + 32) = *MEMORY[0x277CBD068];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x277CBD058];
  v4 = *MEMORY[0x277CBCFF8];
  *(v0 + 48) = *MEMORY[0x277CBD058];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x277CBD070];
  *(v0 + 64) = *MEMORY[0x277CBD070];
  v6 = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  return v0;
}

uint64_t sub_26760B9DC()
{
  v1 = v0;
  v2 = sub_2676C8FBC();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_2();
  v8 = v7 - v6;
  sub_2676C8FAC();
  v9 = [v1 namePrefix];
  sub_2676CBF6C();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_8_10();
  sub_2676C8F3C();
  v10 = [v1 givenName];
  sub_2676CBF6C();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_8_10();
  sub_2676C8EDC();
  v11 = [v1 middleName];
  sub_2676CBF6C();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_8_10();
  sub_2676C8F1C();
  v12 = [v1 familyName];
  sub_2676CBF6C();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_8_10();
  sub_2676C8EFC();
  v13 = [v1 nameSuffix];
  sub_2676CBF6C();

  sub_2676C8F5C();
  v14 = objc_opt_self();
  v15 = sub_2676C8F6C();
  v16 = [v14 localizedStringFromPersonNameComponents:v15 style:2 options:0];

  v17 = sub_2676CBF6C();
  (*(v4 + 8))(v8, v2);
  return v17;
}

uint64_t sub_26760BBE4()
{
  v1 = v0;
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_self();
  sub_2676C8C4C();
  v3 = sub_2676CBF3C();

  v4 = [v2 predicateForContactsMatchingEmailAddress_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2676CD5C0;
  v6 = *MEMORY[0x277CBD018];
  *(v5 + 32) = *MEMORY[0x277CBD018];
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A8, &unk_2676CF320);
  v8 = sub_2676CC0EC();

  v20[0] = 0;
  v9 = [v1 unifiedContactsMatchingPredicate:v4 keysToFetch:v8 error:v20];

  v10 = v20[0];
  if (!v9)
  {
    v17 = v20[0];
    v18 = sub_2676C8FCC();

    swift_willThrow();
    return 0;
  }

  sub_26760C798();
  v11 = sub_2676CC0FC();
  v12 = v10;

  if (!sub_267630B8C())
  {

    return 0;
  }

  sub_267692C1C();
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x26D5FE0E0](0, v11);
  }

  else
  {
    v13 = *(v11 + 32);
  }

  v14 = v13;

  v15 = [v14 identifier];

  v16 = sub_2676CBF6C();
  return v16;
}

unint64_t sub_26760BE20(uint64_t a1, uint64_t a2)
{
  sub_2676CC64C();
  sub_2676CBFFC();
  v4 = sub_2676CC67C();

  return sub_26760BF00(a1, a2, v4);
}

uint64_t sub_26760BE98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC590, &qword_2676CF308);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26760BF00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_2676CC59C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void (*sub_26760BFB4(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_26760C5B0(v6);
  v6[9] = sub_26760C15C(v6 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_26760C04C;
}

void sub_26760C04C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t sub_26760C0AC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_2676CAECC();
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

void (*sub_26760C15C(uint64_t *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1, char a2)
{
  v5 = v4;
  v9 = __swift_coroFrameAllocStub(0x68uLL);
  *a1 = v9;
  v9[1] = a3;
  v9[2] = v4;
  *v9 = a2;
  v10 = sub_2676CAECC();
  v9[3] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v9[4] = v11;
  v13 = *(v11 + 64);
  v9[5] = __swift_coroFrameAllocStub(v13);
  v9[6] = __swift_coroFrameAllocStub(v13);
  v9[7] = __swift_coroFrameAllocStub(v13);
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC590, &qword_2676CF308) - 8) + 64);
  v9[8] = __swift_coroFrameAllocStub(v14);
  v9[9] = __swift_coroFrameAllocStub(v14);
  v15 = __swift_coroFrameAllocStub(v14);
  v9[10] = v15;
  v16 = *v5;
  v17 = sub_26760BE20(a2, a3);
  *(v9 + 96) = v18 & 1;
  if (__OFADD__(*(v16 + 16), (v18 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v19 = v17;
  v20 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC598, &unk_2676CF310);
  if (sub_2676CC4AC())
  {
    v21 = sub_26760BE20(a2, a3);
    if ((v20 & 1) == (v22 & 1))
    {
      v19 = v21;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_2676CC5EC();
    __break(1u);
    return result;
  }

LABEL_5:
  v9[11] = v19;
  if (v20)
  {
    (*(v12 + 32))(v15, *(*v5 + 56) + *(v12 + 72) * v19, v10);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  __swift_storeEnumTagSinglePayload(v15, v23, 1, v10);
  return sub_26760C3C0;
}

void sub_26760C3C0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = v2[3];
  if (a2)
  {
    v5 = v2[8];
    sub_26760C6D4(v3, v5);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v4);
    v7 = *(v2 + 96);
    v8 = v2[8];
    if (EnumTagSinglePayload != 1)
    {
      v9 = v2[2];
      v10 = *(v2[4] + 32);
      v10(v2[6], v8, v2[3]);
      v11 = *v9;
      v12 = v2[11];
      v13 = v2[6];
      if ((v7 & 1) == 0)
      {
LABEL_4:
        v14 = v2[5];
        v16 = *v2;
        v15 = v2[1];
        v10(v14, v13, v2[3]);
        sub_26760C0AC(v12, v16, v15, v14, v11);

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = v2[9];
    sub_26760C6D4(v3, v17);
    v18 = __swift_getEnumTagSinglePayload(v17, 1, v4);
    v7 = *(v2 + 96);
    v8 = v2[9];
    if (v18 != 1)
    {
      v19 = v2[2];
      v10 = *(v2[4] + 32);
      v10(v2[7], v8, v2[3]);
      v11 = *v19;
      v12 = v2[11];
      v13 = v2[7];
      if ((v7 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      v10(v11[7] + *(v2[4] + 72) * v12, v13, v2[3]);
      goto LABEL_10;
    }
  }

  sub_26760BE98(v8);
  if (v7)
  {
    sub_26760C744(*(*v2[2] + 48) + 16 * v2[11]);
    sub_2676CC4BC();
  }

LABEL_10:
  v20 = v2[9];
  v21 = v2[10];
  v23 = v2[7];
  v22 = v2[8];
  v25 = v2[5];
  v24 = v2[6];
  sub_26760BE98(v21);
  free(v21);
  free(v20);
  free(v22);
  free(v23);
  free(v24);
  free(v25);

  free(v2);
}

uint64_t (*sub_26760C5B0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_26760C5D8;
}

uint64_t sub_26760C624(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC588, &qword_2676CF300);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26760C694(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_26760C6D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC590, &qword_2676CF308);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26760C798()
{
  result = qword_2801CC5B0;
  if (!qword_2801CC5B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2801CC5B0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_2676CAACC();
}

void OUTLINED_FUNCTION_14_6()
{
}

uint64_t sub_26760C8B4(uint64_t a1)
{
  v1 = sub_2676C8C4C();
  v3 = v2;
  if (v1 == sub_2676C8C4C() && v3 == v4)
  {
  }

  else
  {
    v6 = sub_2676CC59C();

    v7 = 0;
    if ((v6 & 1) == 0)
    {
      return v7 & 1;
    }
  }

  v8 = sub_2676C8C1C();
  v10 = v9;
  v11 = sub_2676C8C1C();
  if (v10)
  {
    if (v12)
    {
      if (v8 == v11 && v10 == v12)
      {

        v7 = 1;
      }

      else
      {
        v7 = sub_2676CC59C();
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    if (!v12)
    {
      v7 = 1;
      return v7 & 1;
    }

    v7 = 0;
  }

  return v7 & 1;
}

uint64_t type metadata accessor for MailCommonCATsSimple(uint64_t a1)
{
  result = qword_2801CC5C0;
  if (!qword_2801CC5C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26760CA74(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_12();
}

uint64_t sub_26760CA88()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC180, &qword_2676CDEA8);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_2676CDE20;
  *(v2 + 32) = 0x656369766564;
  *(v2 + 40) = 0xE600000000000000;
  v3 = 0;
  if (v1)
  {
    v3 = sub_2676CB45C();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  OUTLINED_FUNCTION_8_11();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_10_8(v4);

  return v6(0xD00000000000001ALL);
}

uint64_t sub_26760CBAC()
{
  OUTLINED_FUNCTION_12_1();
  v7 = *v1;
  v2 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v3 = v2;
  *(v7 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26760CCEC, 0, 0);
  }

  else
  {

    v4 = OUTLINED_FUNCTION_9_8();

    return v5(v4);
  }
}

uint64_t sub_26760CCEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26760CD50()
{
  OUTLINED_FUNCTION_12_1();
  v0 = OUTLINED_FUNCTION_0_12();
  v1 = OUTLINED_FUNCTION_42(v0);
  *v1 = v2;
  v1[1] = sub_26760CDF4;
  OUTLINED_FUNCTION_4_9();
  v3 = OUTLINED_FUNCTION_5_10(23);

  return v4(v3);
}

uint64_t sub_26760CDF4(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_0_1();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

uint64_t sub_26760CEEC()
{
  OUTLINED_FUNCTION_12_1();
  v0 = OUTLINED_FUNCTION_0_12();
  v1 = OUTLINED_FUNCTION_42(v0);
  *v1 = v2;
  v1[1] = sub_26760D830;
  OUTLINED_FUNCTION_4_9();
  v3 = OUTLINED_FUNCTION_5_10(28);

  return v4(v3);
}

uint64_t sub_26760CF90(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_12();
}

uint64_t sub_26760CFA4()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC180, &qword_2676CDEA8);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_2676CDE20;
  *(v2 + 32) = 0x746361746E6F63;
  *(v2 + 40) = 0xE700000000000000;
  v3 = 0;
  if (v1)
  {
    v3 = sub_2676CB36C();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  OUTLINED_FUNCTION_8_11();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_10_8(v4);

  return v6(0xD00000000000002BLL);
}

uint64_t sub_26760D0CC()
{
  OUTLINED_FUNCTION_12_1();
  v7 = *v1;
  v2 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v3 = v2;
  *(v7 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26760D82C, 0, 0);
  }

  else
  {

    v4 = OUTLINED_FUNCTION_9_8();

    return v5(v4);
  }
}

uint64_t sub_26760D20C()
{
  OUTLINED_FUNCTION_12_1();
  v0 = OUTLINED_FUNCTION_0_12();
  v1 = OUTLINED_FUNCTION_42(v0);
  *v1 = v2;
  v1[1] = sub_26760D830;
  OUTLINED_FUNCTION_4_9();
  v3 = OUTLINED_FUNCTION_5_10(28);

  return v4(v3);
}

uint64_t sub_26760D2B0()
{
  OUTLINED_FUNCTION_12_1();
  v0 = OUTLINED_FUNCTION_0_12();
  v1 = OUTLINED_FUNCTION_42(v0);
  *v1 = v2;
  v1[1] = sub_26760D830;
  OUTLINED_FUNCTION_4_9();
  v3 = OUTLINED_FUNCTION_5_10(39);

  return v4(v3);
}

uint64_t sub_26760D354()
{
  OUTLINED_FUNCTION_12_1();
  v0 = OUTLINED_FUNCTION_0_12();
  v1 = OUTLINED_FUNCTION_42(v0);
  *v1 = v2;
  v1[1] = sub_26760D830;
  OUTLINED_FUNCTION_4_9();
  v3 = OUTLINED_FUNCTION_5_10(30);

  return v4(v3);
}

uint64_t sub_26760D3F8()
{
  OUTLINED_FUNCTION_12_1();
  v0 = OUTLINED_FUNCTION_0_12();
  v1 = OUTLINED_FUNCTION_42(v0);
  *v1 = v2;
  v1[1] = sub_26760D830;
  OUTLINED_FUNCTION_4_9();
  v3 = OUTLINED_FUNCTION_5_10(33);

  return v4(v3);
}

uint64_t sub_26760D4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2676CB48C();
  OUTLINED_FUNCTION_8_4();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CDAC0, &unk_2676CF3A0);
  MEMORY[0x28223BE20](v11 - 8);
  sub_26760D754(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_2676CB40C();
  (*(v7 + 8))(a2, v3);
  sub_26760D7C4(a1);
  return v13;
}

uint64_t sub_26760D64C(uint64_t a1, uint64_t a2)
{
  sub_2676CB48C();
  OUTLINED_FUNCTION_8_4();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_2676CB41C();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t sub_26760D754(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CDAC0, &unk_2676CF3A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26760D7C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CDAC0, &unk_2676CF3A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_12()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_8_11()
{
}

void sub_26760D8C8()
{
  OUTLINED_FUNCTION_21_1();
  v31 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC770, &unk_2676CF800);
  OUTLINED_FUNCTION_4_1(v1);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_7_3();
  sub_2676C9C4C();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_7_3();
  v4 = sub_2676C94AC();
  v5 = *(v4 - 8);
  v6 = v5;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_2();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_82();
  v10 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC540, &qword_2676D1400);
  v11 = *(v5 + 72);
  v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2676CF3B0;
  sub_2676C946C();
  sub_2676C949C();
  sub_2676C945C();
  *(v10 + 16) = v13;
  v14 = v10 + 16;
  type metadata accessor for PreFlightCheckFlow();
  sub_267614AF4(&qword_2801CC778, type metadata accessor for PreFlightCheckFlow, &unk_2676D0900);
  sub_2676C94BC();
  sub_267614794();
  v15 = *(*(v10 + 16) + 16);
  sub_267645DE4(v15);
  v16 = *(v10 + 16);
  *(v16 + 16) = v15 + 1;
  v17 = v16 + v12 + v15 * v11;
  v18 = *(v6 + 32);
  v18(v17, v9, v4);
  *(v10 + 16) = v16;
  v33[2] = &type metadata for Features;
  v33[3] = sub_267614A64();
  v32 = 4;
  LOBYTE(v16) = sub_2676CA04C();
  __swift_destroy_boxed_opaque_existential_1(&v32);
  if (v16)
  {
    v19 = dispatch_semaphore_create(0);
    sub_2676CC1FC();
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    OUTLINED_FUNCTION_90();
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = v31;
    v24[5] = v10;
    v24[6] = v19;

    v25 = v19;
    sub_26760E138();

    sub_2676CC2AC();
  }

  else
  {
    sub_2675F95E4(v31 + 32, &v32, &qword_2801CC690, &unk_2676CF580);
    v26 = v32;
    sub_2675EB7EC(v33, &qword_2801CC158, &qword_2676CDDA0);
    if (v26 == 1)
    {
      sub_2676C9C2C();
      sub_2676C947C();
      v27 = OUTLINED_FUNCTION_37_0();
      v28(v27);
    }

    else
    {
      sub_2676C948C();
    }

    sub_267614794();
    v29 = *(*v14 + 16);
    sub_267645DE4(v29);
    v30 = *v14;
    *(v30 + 16) = v29 + 1;
    v18(v30 + v12 + v29 * v11, v9, v4);
    *v14 = v30;
  }

  swift_beginAccess();

  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_26760DD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = sub_2676C94AC();
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  v8 = swift_task_alloc();
  v6[16] = v8;
  *v8 = v6;
  v8[1] = sub_26760DE14;

  return sub_267614100();
}

uint64_t sub_26760DE14()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_8_6();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 136) = v3;

  return MEMORY[0x2822009F8](sub_26760DF08, 0, 0);
}

uint64_t sub_26760DF08()
{
  if ((*(v0 + 136) & 1) != 0 || (sub_2675F95E4(*(v0 + 80) + 32, v0 + 16, &qword_2801CC690, &unk_2676CF580), v1 = *(v0 + 17), sub_2675EB7EC(v0 + 24, &qword_2801CC158, &qword_2676CDDA0), v1 == 1))
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v2 = sub_2676CBE4C();
    v3 = OUTLINED_FUNCTION_67(v2, qword_2801CDC90);
    v4 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_5_7(v4))
    {
      v5 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_4(v5);
      OUTLINED_FUNCTION_39_0(&dword_2675D4000, v6, v4, "#GuardFlow Mail is Class C data but notification previews are restricted or user is trying to send/reply - need authentication to read emails or present the compose sheet");
      OUTLINED_FUNCTION_4_6();
    }

    v8 = *(v0 + 112);
    v7 = *(v0 + 120);
    v9 = *(v0 + 104);
    v10 = *(v0 + 88);

    sub_2676C948C();
    OUTLINED_FUNCTION_70(v10 + 16, v0 + 56);
    sub_267614794();
    v11 = *(*(v10 + 16) + 16);
    sub_267645DE4(v11);
    v12 = *(v10 + 16);
    *(v12 + 16) = v11 + 1;
    (*(v8 + 32))(v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v11, v7, v9);
    *(v10 + 16) = v12;
    swift_endAccess();
  }

  else
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v13 = sub_2676CBE4C();
    v14 = OUTLINED_FUNCTION_67(v13, qword_2801CDC90);
    v15 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_5_7(v15))
    {
      v16 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_4(v16);
      OUTLINED_FUNCTION_39_0(&dword_2675D4000, v17, v15, "#GuardFlow Mail is Class C data, not sending nor replying, and notification previews are not restricted - no need to authenticate");
      OUTLINED_FUNCTION_4_6();
    }
  }

  sub_2676CC2BC();

  v18 = *(v0 + 8);

  return v18();
}

void sub_26760E138()
{
  OUTLINED_FUNCTION_21_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC770, &unk_2676CF800);
  OUTLINED_FUNCTION_4_1(v8);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v9);
  v11 = v23 - v10;
  sub_2675F95E4(v5, v23 - v10, &qword_2801CC770, &unk_2676CF800);
  v12 = sub_2676CC1FC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_2675EB7EC(v11, &qword_2801CC770, &unk_2676CF800);
  }

  else
  {
    sub_2676CC1EC();
    OUTLINED_FUNCTION_14_2();
    (*(v14 + 8))(v11, v12);
  }

  v15 = *(v1 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2676CC18C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (v7)
    {
LABEL_6:
      v19 = sub_2676CBFCC() + 32;
      OUTLINED_FUNCTION_79();
      v20 = swift_allocObject();
      *(v20 + 16) = v3;
      *(v20 + 24) = v1;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v21 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v23[1] = 7;
      v23[2] = v21;
      v23[3] = v19;
      swift_task_create();

      sub_2675EB7EC(v5, &qword_2801CC770, &unk_2676CF800);

      goto LABEL_14;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  sub_2675EB7EC(v5, &qword_2801CC770, &unk_2676CF800);
  OUTLINED_FUNCTION_79();
  v22 = swift_allocObject();
  *(v22 + 16) = v3;
  *(v22 + 24) = v1;
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_20_1();
}

void sub_26760E3F8()
{
  OUTLINED_FUNCTION_21_1();
  v1 = v0;
  v52 = v2;
  v3 = sub_2676C9E3C();
  OUTLINED_FUNCTION_3();
  v51 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_2();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC660, &qword_2676CF578);
  OUTLINED_FUNCTION_3();
  v50 = v10;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC750, &unk_2676D1310);
  OUTLINED_FUNCTION_3();
  v49 = v15;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v16);
  v18 = &v48 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC758, &unk_2676CF7F0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v20);
  v23 = &v48 - v22;
  v24 = *(v1 + 16);
  if (v24)
  {
    if (v24 == 1)
    {
      sub_26760ECF0();
      OUTLINED_FUNCTION_89();
      sub_2676C961C();
      sub_2676C961C();
      sub_2676C961C();
      __swift_destroy_boxed_opaque_existential_1(v53);
      OUTLINED_FUNCTION_87();
    }

    else if (v24 == 2)
    {
      v54[0] = v1;
      type metadata accessor for MailDelegateFlow(0);
      OUTLINED_FUNCTION_29_2();
      sub_267614AF4(v25, v26, &unk_2676CF4A0);
      sub_2676C944C();
      v55 = v9;
      v56 = OUTLINED_FUNCTION_0_13(&qword_2801CC668, &qword_2801CC660, &qword_2676CF578);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v54);
      v28 = v50;
      (*(v50 + 16))(boxed_opaque_existential_1, v13, v9);
      sub_2676C961C();
      __swift_destroy_boxed_opaque_existential_1(v54);
      OUTLINED_FUNCTION_89();
      sub_2676C961C();
      sub_2676C961C();
      OUTLINED_FUNCTION_87();
      (*(v28 + 8))(v13, v9);
    }

    else
    {
      v37 = v3;
      v38 = *(v24 + 16);
      v39 = *(v24 + 24);
      v54[0] = v1;
      sub_2675FD730();
      v40 = swift_allocError();
      *v41 = v38;
      v41[1] = v39;
      sub_267614AB8(v24);
      v42 = OUTLINED_FUNCTION_38_0();
      sub_267614AC8(v42, v43);
      type metadata accessor for MailDelegateFlow(0);
      OUTLINED_FUNCTION_29_2();
      sub_267614AF4(v44, v45, &unk_2676CF4A0);
      OUTLINED_FUNCTION_65_0();
      sub_2676C93EC();

      v55 = v37;
      v56 = MEMORY[0x277D5C0F0];
      __swift_allocate_boxed_opaque_existential_1(v54);
      v46 = v51;
      OUTLINED_FUNCTION_75();
      v47();
      sub_2676C961C();
      __swift_destroy_boxed_opaque_existential_1(v54);
      OUTLINED_FUNCTION_89();
      sub_2676C961C();
      sub_2676C961C();
      OUTLINED_FUNCTION_87();
      (*(v46 + 8))(v8, v37);
      sub_267614ADC(v24);
    }
  }

  else
  {
    v29 = v21;
    sub_26760D8C8();
    v54[0] = v30;

    sub_2676A1EC8(v31);
    v32 = sub_2676C925C();

    v54[0] = v32;
    v33 = sub_2676C934C();
    v34 = MEMORY[0x277D5B788];
    sub_2676C95AC();

    v54[0] = v33;
    v54[1] = v34;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_2676C938C();

    (*(v49 + 8))(v18, v14);
    v55 = v19;
    v53[10] = v14;
    v53[11] = OpaqueTypeConformance2;
    v56 = swift_getOpaqueTypeConformance2();
    v36 = __swift_allocate_boxed_opaque_existential_1(v54);
    (*(v29 + 16))(v36, v23, v19);
    sub_2676C960C();
    __swift_destroy_boxed_opaque_existential_1(v54);
    OUTLINED_FUNCTION_89();
    sub_2676C961C();
    sub_2676C961C();
    OUTLINED_FUNCTION_87();
    (*(v29 + 8))(v23, v19);
  }

  sub_2676C961C();
  __swift_destroy_boxed_opaque_existential_1(v54);
  OUTLINED_FUNCTION_20_1();
}

unint64_t sub_26760E9CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC768, &unk_2676D1590);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v28 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = *(v5 + 16);
  v12(&v28 - v13, a1, v4);
  if (swift_dynamicCast())
  {
    v14 = *(a2 + 16);
    if (v31)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v16 = sub_2676CBE4C();
    __swift_project_value_buffer(v16, qword_2801CDC90);
    v12(v11, a1, v4);
    v17 = sub_2676CBE2C();
    v18 = sub_2676CC24C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v29 = a2;
      v20 = v19;
      v21 = swift_slowAlloc();
      v30 = v21;
      *v20 = 136315138;
      v12(v8, v11, v4);
      v22 = sub_2676CBFBC();
      v24 = v23;
      (*(v5 + 8))(v11, v4);
      v25 = sub_2676B0B84(v22, v24, &v30);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_2675D4000, v17, v18, "#MailDelegateFlow: Unexpected return value from Guard flows: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x26D5FEA80](v21, -1, -1);
      v26 = v20;
      a2 = v29;
      MEMORY[0x26D5FEA80](v26, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v11, v4);
    }

    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    v14 = *(a2 + 16);
  }

  *(a2 + 16) = v15;
  return sub_267614ADC(v14);
}

void sub_26760ECF0()
{
  OUTLINED_FUNCTION_21_1();
  v1 = v0;
  v903 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5E0, &qword_2676CF4D0);
  OUTLINED_FUNCTION_4_1(v3);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_9_1();
  v834 = v5;
  v835 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5E8, &unk_2676CF4D8);
  OUTLINED_FUNCTION_3();
  v821 = v6;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_9_1();
  v820 = v8;
  v869 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
  OUTLINED_FUNCTION_3();
  v858 = v9;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_1();
  v825 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5F0, &qword_2676CF4E8);
  OUTLINED_FUNCTION_4_1(v12);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9_1();
  v840 = v14;
  v854 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5F8, &qword_2676CF4F0);
  OUTLINED_FUNCTION_3();
  v832 = v15;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_9_1();
  v838 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC600, &qword_2676CF4F8);
  v19 = OUTLINED_FUNCTION_4_1(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4();
  v852 = v20;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_10_4();
  v851 = v22;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_10_4();
  v850 = v24;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_10_4();
  v849 = v26;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_10_4();
  v848 = v28;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_10_4();
  v847 = v30;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_10_4();
  v846 = v32;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_24_1();
  v878 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC608, &unk_2676CF500);
  v36 = OUTLINED_FUNCTION_4_1(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_4();
  v845 = v37;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_10_4();
  v843 = v39;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_10_4();
  v844 = v41;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_24_1();
  v870 = v43;
  OUTLINED_FUNCTION_7_3();
  v855 = sub_2676CB5AC();
  OUTLINED_FUNCTION_3();
  v857 = v44;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_3_2();
  v824 = v47 - v46;
  v856 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC610, &unk_2676D0C10);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_4();
  v830 = v49;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_24_1();
  v860 = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  v53 = OUTLINED_FUNCTION_4_1(v52);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_4();
  v822 = v54;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_24_1();
  v827 = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC050, &unk_2676D0C20);
  v58 = OUTLINED_FUNCTION_4_1(v57);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_4();
  v814 = v59;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_24_1();
  v819 = v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC618, &qword_2676CF520);
  v63 = OUTLINED_FUNCTION_4_1(v62);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_4();
  v823 = v64;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_10_4();
  v836 = v66;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_10_4();
  v837 = v68;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_10_4();
  v828 = v70;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_10_4();
  v853 = v72;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_24_1();
  v841 = v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC620, &unk_2676D0C30);
  OUTLINED_FUNCTION_4_1(v75);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_9_1();
  v859 = v77;
  v876 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC628, &unk_2676CF530);
  OUTLINED_FUNCTION_3();
  v862 = v78;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_9_1();
  v877 = v80;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  v82 = OUTLINED_FUNCTION_4_1(v81);
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_4();
  v826 = v83;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_10_4();
  v842 = v85;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_10_4();
  v829 = v87;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_10_4();
  v839 = v89;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_24_1();
  v864 = v91;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC630, &qword_2676CF540);
  OUTLINED_FUNCTION_4_1(v92);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_9_1();
  v871 = v94;
  v885 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC638, &qword_2676CF548);
  OUTLINED_FUNCTION_3();
  v875 = v95;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_9_1();
  v881 = v97;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC640, &unk_2676CF550);
  OUTLINED_FUNCTION_4_1(v98);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v99);
  v101 = &v811 - v100;
  v898 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC648, &qword_2676CF990);
  OUTLINED_FUNCTION_3();
  v888 = v102;
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_4();
  v893 = v104;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_24_1();
  v889 = v106;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC650, &unk_2676CF560);
  v108 = OUTLINED_FUNCTION_4_1(v107);
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_4();
  v882 = v109;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_24_1();
  v879 = v111;
  v892 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC658, &qword_2676D45A0);
  OUTLINED_FUNCTION_3();
  v891 = v112;
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_4();
  v818 = v114;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_10_4();
  v817 = v116;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_10_4();
  v831 = v118;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_10_4();
  v873 = v120;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v121);
  OUTLINED_FUNCTION_10_4();
  v874 = v122;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v123);
  OUTLINED_FUNCTION_10_4();
  v884 = v124;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v125);
  OUTLINED_FUNCTION_10_4();
  v887 = v126;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v127);
  OUTLINED_FUNCTION_10_4();
  v868 = v128;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v129);
  OUTLINED_FUNCTION_10_4();
  v886 = v130;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v131);
  OUTLINED_FUNCTION_10_4();
  v866 = v132;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v133);
  OUTLINED_FUNCTION_24_1();
  v880 = v134;
  OUTLINED_FUNCTION_7_3();
  v900 = sub_2676CAB9C();
  OUTLINED_FUNCTION_3();
  v899 = v135;
  MEMORY[0x28223BE20](v136);
  OUTLINED_FUNCTION_3_2();
  v895 = (v138 - v137);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1E8, &qword_2676CF570);
  v140 = OUTLINED_FUNCTION_4_1(v139);
  MEMORY[0x28223BE20](v140);
  OUTLINED_FUNCTION_4();
  v863 = v141;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v142);
  OUTLINED_FUNCTION_24_1();
  v897 = v143;
  v901 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC660, &qword_2676CF578);
  OUTLINED_FUNCTION_3();
  v894 = v144;
  MEMORY[0x28223BE20](v145);
  OUTLINED_FUNCTION_4();
  v833 = v146;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v147);
  OUTLINED_FUNCTION_10_4();
  v816 = v148;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v149);
  OUTLINED_FUNCTION_10_4();
  v815 = v150;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v151);
  OUTLINED_FUNCTION_10_4();
  v861 = v152;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v153);
  OUTLINED_FUNCTION_10_4();
  v872 = v154;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v155);
  OUTLINED_FUNCTION_10_4();
  v883 = v156;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v157);
  OUTLINED_FUNCTION_10_4();
  v867 = v158;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v159);
  OUTLINED_FUNCTION_10_4();
  v865 = v160;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v161);
  OUTLINED_FUNCTION_24_1();
  v896 = v162;
  OUTLINED_FUNCTION_7_3();
  v163 = sub_2676C9EBC();
  OUTLINED_FUNCTION_3();
  v165 = v164;
  MEMORY[0x28223BE20](v166);
  OUTLINED_FUNCTION_3_2();
  v169 = v168 - v167;
  v170 = sub_2676C9EAC();
  OUTLINED_FUNCTION_3();
  v172 = v171;
  MEMORY[0x28223BE20](v173);
  OUTLINED_FUNCTION_3_2();
  v176 = v175 - v174;
  v177 = [objc_opt_self() sharedInstance];
  v890 = [v177 isLocked];

  v178 = OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_inputParse;
  v179 = *(v165 + 16);
  v902 = v1;
  v179(v169, v1 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_inputParse, v163);
  if ((*(v165 + 88))(v169, v163) != *MEMORY[0x277D5C150])
  {
    (*(v165 + 8))(v169, v163);
    goto LABEL_11;
  }

  (*(v165 + 96))(v169, v163);
  v812 = v172;
  v813 = v170;
  v180 = OUTLINED_FUNCTION_65_0();
  v181(v180);
  v183 = sub_2676C9E8C() == 0xD00000000000001CLL && 0x80000002676D5EA0 == v182;
  if (v183)
  {

    v185 = v902;
LABEL_23:
    v898 = v176;
    sub_2676C9F8C();
    OUTLINED_FUNCTION_69(OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_linkServicesProvider);
    sub_2676149CC(v185 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_responseFactory, &v930);
    sub_2676149CC(v185 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_readingUtil, v927);
    v216 = *(v185 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_globals);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F0, &unk_2676CE100);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v217, v218, v219, v220);
    v893 = v216;
    v221 = v895;
    sub_2676CAB8C();
    __swift_mutable_project_boxed_opaque_existential_1(v927, v928);
    OUTLINED_FUNCTION_41_0();
    v902 = v222;
    OUTLINED_FUNCTION_5_11();
    MEMORY[0x28223BE20](v223);
    OUTLINED_FUNCTION_3_2();
    v226 = (v225 - v224);
    (*(v227 + 16))(v225 - v224);
    v228 = *v226;
    v229 = type metadata accessor for ReadingUtil();
    v926 = &off_2878AE2F8;
    v925 = v229;
    v924[0] = v228;
    v230 = v900;
    v922 = v900;
    v923 = &off_2878AD4E0;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v921);
    v232 = v899;
    (*(v899 + 2))(boxed_opaque_existential_1, v221, v230);
    v919 = &type metadata for MailFeatureFlags;
    v920 = &off_2878ADBB0;
    type metadata accessor for ReadMailActingFlow(0);
    OUTLINED_FUNCTION_20_4();
    v892 = v233;
    v234 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v924, v925);
    OUTLINED_FUNCTION_41_0();
    v891 = v235;
    OUTLINED_FUNCTION_5_11();
    MEMORY[0x28223BE20](v236);
    OUTLINED_FUNCTION_3_2();
    v239 = (v238 - v237);
    (*(v240 + 16))(v238 - v237);
    __swift_mutable_project_boxed_opaque_existential_1(&v921, v922);
    OUTLINED_FUNCTION_41_0();
    v889 = v241;
    OUTLINED_FUNCTION_5_11();
    MEMORY[0x28223BE20](v242);
    OUTLINED_FUNCTION_3_2();
    v245 = v244 - v243;
    (*(v246 + 16))(v244 - v243);
    __swift_mutable_project_boxed_opaque_existential_1(v918, &type metadata for MailFeatureFlags);
    v247 = *v239;
    v917 = &off_2878AE2F8;
    v916 = v229;
    *&v915 = v247;
    v913 = v230;
    v914 = &off_2878AD4E0;
    v248 = __swift_allocate_boxed_opaque_existential_1(&v912);
    (v232)[4](v248, v245, v230);
    v910 = &type metadata for MailFeatureFlags;
    v911 = &off_2878ADBB0;
    *(v234 + 16) = xmmword_2676CF3C0;
    v249 = MEMORY[0x277D84F90];
    *(v234 + 32) = MEMORY[0x277D84F90];
    *(v234 + 48) = 0;
    sub_2676CB9FC();
    sub_267614AF4(&qword_2801CC738, MEMORY[0x277D5C7E8], MEMORY[0x277D5C7D0]);
    sub_2676C97BC();
    sub_2676C8C8C();
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v250, v251, v252, v253);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F8, &qword_2676CEBA0);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v254, v255, v256, v257);
    sub_2676C9ECC();
    __swift_project_boxed_opaque_existential_1(v906, v907);
    v258 = OUTLINED_FUNCTION_38_0();
    LODWORD(v229) = sub_267691338(v258, v259);
    __swift_destroy_boxed_opaque_existential_1(v906);
    if ((v229 & v890 & 1) != 0 && (v907 = &type metadata for Features, v908 = sub_267614A64(), LOBYTE(v906[0]) = 4, v260 = sub_2676CA04C(), __swift_destroy_boxed_opaque_existential_1(v906), (v260 & 1) == 0))
    {
      v262 = v903;
      v263 = v813;
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2801CBAA0);
      }

      v284 = sub_2676CBE4C();
      v285 = OUTLINED_FUNCTION_67(v284, qword_2801CDC90);
      v286 = sub_2676CC23C();
      v287 = OUTLINED_FUNCTION_5_7(v286);
      v264 = v812;
      if (v287)
      {
        v288 = OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_9_4(v288);
        OUTLINED_FUNCTION_39_0(&dword_2675D4000, v289, v286, "#ReadMailActingFlow user is in the car, their device is locked, and Mail data is not Class C - we cannot read emails.");
        OUTLINED_FUNCTION_4_6();
      }

      v290 = OUTLINED_FUNCTION_36_1();
      v291(v290);
      v272 = 0x9000000000000000;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v909, v910);
      v261 = sub_267616C5C();
      v262 = v903;
      v264 = v812;
      v263 = v813;
      if (v261)
      {
        if (qword_2801CBAA0 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_2801CBAA0);
        }

        v265 = sub_2676CBE4C();
        v266 = OUTLINED_FUNCTION_67(v265, qword_2801CDC90);
        v267 = sub_2676CC23C();
        if (OUTLINED_FUNCTION_5_7(v267))
        {
          v268 = OUTLINED_FUNCTION_17_3();
          OUTLINED_FUNCTION_9_4(v268);
          OUTLINED_FUNCTION_39_0(&dword_2675D4000, v269, v267, "#ReadMailActingFlow user asked for general inbox read or general summary and CatchUp is enabled, read their highlights first");
          OUTLINED_FUNCTION_4_6();
        }

        v270 = OUTLINED_FUNCTION_36_1();
        v271(v270);
        v272 = 0x9000000000000018;
      }

      else
      {
        v281 = OUTLINED_FUNCTION_36_1();
        v282(v281);
        OUTLINED_FUNCTION_82();
        v283 = swift_allocObject();
        *(v283 + 16) = 0xF000000000000007;
        v272 = v283 | 0x1000000000000000;
      }
    }

    *(v234 + 40) = v272;
    *(v234 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_isRequestToSummarize) = 0;
    *(v234 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_senderInput) = v249;
    v292 = (v234 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_subjectInput);
    *v292 = 0;
    v292[1] = 0;
    *(v234 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_isReadInput) = 2;
    *(v234 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_isNewInput) = 2;
    *(v234 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_isRequestToRead) = 2;
    v293 = v897;
    sub_2675F95E4(v897, v234 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_dateTimeInput, &qword_2801CC1E8, &qword_2676CF570);
    *(v234 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_isMostRecent) = 2;
    sub_2675DD73C(&v912, v234 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_dateTimeResolver);
    sub_2675DD73C(&v933, v234 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_linkServicesProvider);
    sub_2675DD73C(&v930, v234 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_responseFactory);
    sub_2675DD73C(&v915, v234 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_readingUtil);
    *(v234 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_globals) = v893;
    sub_2676149CC(v909, v234 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_featureFlags);
    *(v234 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_hasExactSpanMatch) = 0;
    __swift_destroy_boxed_opaque_existential_1(v909);
    sub_2675EB7EC(v293, &qword_2801CC1E8, &qword_2676CF570);
    __swift_destroy_boxed_opaque_existential_1(v918);
    __swift_destroy_boxed_opaque_existential_1(&v921);
    __swift_destroy_boxed_opaque_existential_1(v924);
    __swift_destroy_boxed_opaque_existential_1(v927);
    v934 = v892;
    OUTLINED_FUNCTION_33_2();
    v935 = sub_267614AF4(v294, v295, &unk_2676D12C8);
    *&v933 = v234;
    v262[3] = v901;
    v262[4] = OUTLINED_FUNCTION_0_13(&qword_2801CC668, &qword_2801CC660, &qword_2676CF578);
    __swift_allocate_boxed_opaque_existential_1(v262);
    OUTLINED_FUNCTION_13_7();
    sub_2676C9F6C();
    v296 = OUTLINED_FUNCTION_15_7();
    v297(v296);
    (*(v264 + 8))(v898, v263);
    goto LABEL_181;
  }

  v184 = sub_2676CC59C();

  v185 = v902;
  if (v184)
  {
    goto LABEL_23;
  }

  v186 = sub_2676C9E8C();
  v187 = v879;
  sub_267615530(v186, v188, v879);

  v189 = v892;
  OUTLINED_FUNCTION_21_3(v187, 1, v892);
  if (!v183)
  {
    v898 = v176;
    v326 = (v891 + 32);
    v327 = v880;
    (*(v891 + 32))(v880, v187, v189);
    sub_2676C919C();
    v328 = sub_2676C918C();
    v329 = (v326 - 1);
    if (v328)
    {
      sub_2676C9F8C();
      OUTLINED_FUNCTION_69(OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_linkServicesProvider);
      v900 = *v329;
      (v900)(v866, v327, v189);
      v330 = *(v185 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_globals);
      v331 = OUTLINED_FUNCTION_14_7();
      *v326 = 0u;
      v326[1] = 0u;
      v926 = 0;
      OUTLINED_FUNCTION_20_4();
      swift_allocObject();
      v332 = sub_2676C9B8C();
      type metadata accessor for SendMailSceneHostPlan(0);
      OUTLINED_FUNCTION_20_4();
      v333 = swift_allocObject();
      sub_2676CBA1C();
      OUTLINED_FUNCTION_10_9();
      sub_267614AF4(v334, v335, MEMORY[0x277D5C7F0]);

      OUTLINED_FUNCTION_53_0();
      v336 = sub_2676C97BC();
      *(v333 + OBJC_IVAR____TtC16SiriMailInternal21SendMailSceneHostPlan_confirmIntentOptions) = 0;
      OUTLINED_FUNCTION_101(v336, v337, &qword_2801CC6A8, &unk_2676CF5F0);
      OUTLINED_FUNCTION_102();
      v338 = OUTLINED_FUNCTION_86();
      OUTLINED_FUNCTION_94(v338, v339);
      v340 = OUTLINED_FUNCTION_81();
      sub_2675F95E4(v340, v341, &off_2801CC6B8, &unk_2676CF600);
      v911 = &protocol witness table for ResponseFactory;
      v910 = v331;
      v909[0] = v332;
      sub_2676C981C();
      sub_2676C981C();
      sub_2676CB18C();
      sub_2676C981C();
      v342 = v333 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_resolverOverride;
      *v342 = 0u;
      *(v342 + 16) = 0u;
      *(v342 + 32) = 0;
      *(v333 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_globals) = v330;
      OUTLINED_FUNCTION_70(v342, v906);
      v343 = v330;
      sub_267614854(&v921, v342);
      swift_endAccess();
      OUTLINED_FUNCTION_100(OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_linkServicesProvider);
      v344 = OUTLINED_FUNCTION_88();
      OUTLINED_FUNCTION_94(v344, v345);
      OUTLINED_FUNCTION_97(OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_responseFactory);
      v346 = OUTLINED_FUNCTION_78();
      sub_2675F95E4(v346, v347, &off_2801CC6B8, &unk_2676CF600);
      if (v905)
      {
        sub_2675EB7EC(&v912, &off_2801CC6B8, &unk_2676CF600);
        sub_2675EB7EC(&v915, &qword_2801CC6B0, &qword_2676CFC80);
        __swift_destroy_boxed_opaque_existential_1(v918);
        sub_2675EB7EC(&v921, &qword_2801CC6A8, &unk_2676CF5F0);
        OUTLINED_FUNCTION_48();
      }

      else
      {
        sub_2676C964C();
        sub_2675EB7EC(&v912, &off_2801CC6B8, &unk_2676CF600);
        sub_2675EB7EC(&v915, &qword_2801CC6B0, &qword_2676CFC80);
        __swift_destroy_boxed_opaque_existential_1(v918);
        sub_2675EB7EC(&v921, &qword_2801CC6A8, &unk_2676CF5F0);
        OUTLINED_FUNCTION_98();
        if (v431)
        {
          sub_2675EB7EC(v904, &off_2801CC6B8, &unk_2676CF600);
        }
      }

      OUTLINED_FUNCTION_99(OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_eventSender);
      v432 = v886;
      OUTLINED_FUNCTION_71();
      v900();
      sub_2676A31F0(v432);

      sub_2675EB7EC(v924, &off_2801CC6B8, &unk_2676CF600);
      sub_2675EB7EC(v927, &qword_2801CC6B0, &qword_2676CFC80);
      sub_2675EB7EC(&v930, &qword_2801CC6A8, &unk_2676CF5F0);
      v433 = OUTLINED_FUNCTION_72();
      (v330)(v433);
      OUTLINED_FUNCTION_103();
      v434 = OUTLINED_FUNCTION_53_0();
      v436 = __swift_instantiateConcreteTypeFromMangledNameV2(v434, v435);
      OUTLINED_FUNCTION_20_4();
      swift_allocObject();
      OUTLINED_FUNCTION_59();
      v927[0] = sub_2676C94CC();
      v934 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC6E0, &qword_2676CF620);
      v437 = OUTLINED_FUNCTION_6_8(&qword_2801CC6E8);
      *&v930 = v436;
      *(&v930 + 1) = &type metadata for SendMailResult;
      v438 = OUTLINED_FUNCTION_4_10(v437);
      OUTLINED_FUNCTION_56(v438);
      v439 = OUTLINED_FUNCTION_8_12();
      OUTLINED_FUNCTION_96(v439, v440, v436);

      OUTLINED_FUNCTION_55_0();
      v441 = OUTLINED_FUNCTION_0_13(&qword_2801CC668, &qword_2801CC660, &qword_2676CF578);
      OUTLINED_FUNCTION_95(v441);
      OUTLINED_FUNCTION_13_7();
    }

    else
    {
      sub_2676C9F8C();
      OUTLINED_FUNCTION_69(OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_linkServicesProvider);
      v900 = *v329;
      (v900)(v868, v327, v189);
      v330 = *(v185 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_globals);
      v389 = OUTLINED_FUNCTION_14_7();
      *v326 = 0u;
      v326[1] = 0u;
      v926 = 0;
      OUTLINED_FUNCTION_20_4();
      swift_allocObject();
      v390 = sub_2676C9B8C();
      type metadata accessor for SendMailPlan(0);
      OUTLINED_FUNCTION_20_4();
      v391 = swift_allocObject();
      sub_2676CBA1C();
      OUTLINED_FUNCTION_10_9();
      sub_267614AF4(v392, v393, MEMORY[0x277D5C7F0]);

      v394 = sub_2676C97BC();
      *(v391 + OBJC_IVAR____TtC16SiriMailInternal12SendMailPlan_confirmIntentOptions) = 0;
      OUTLINED_FUNCTION_101(v394, v395, &qword_2801CC6A8, &unk_2676CF5F0);
      OUTLINED_FUNCTION_102();
      v396 = OUTLINED_FUNCTION_86();
      OUTLINED_FUNCTION_94(v396, v397);
      v398 = OUTLINED_FUNCTION_81();
      sub_2675F95E4(v398, v399, &off_2801CC6B8, &unk_2676CF600);
      v911 = &protocol witness table for ResponseFactory;
      v910 = v389;
      v909[0] = v390;
      sub_2676C8D8C();
      sub_2676C981C();
      sub_2676CB0DC();
      sub_2676C981C();
      sub_2676C981C();
      sub_2676C981C();
      v400 = v391 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_resolverOverride;
      *v400 = 0u;
      *(v400 + 16) = 0u;
      *(v400 + 32) = 0;
      *(v391 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_globals) = v330;
      OUTLINED_FUNCTION_70(v400, v906);
      v401 = v330;
      sub_267614854(&v921, v400);
      swift_endAccess();
      OUTLINED_FUNCTION_100(OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_linkServicesProvider);
      v402 = OUTLINED_FUNCTION_88();
      OUTLINED_FUNCTION_94(v402, v403);
      OUTLINED_FUNCTION_97(OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_responseFactory);
      v404 = OUTLINED_FUNCTION_78();
      sub_2675F95E4(v404, v405, &off_2801CC6B8, &unk_2676CF600);
      if (v905)
      {
        sub_2675EB7EC(&v912, &off_2801CC6B8, &unk_2676CF600);
        sub_2675EB7EC(&v915, &qword_2801CC6B0, &qword_2676CFC80);
        __swift_destroy_boxed_opaque_existential_1(v918);
        sub_2675EB7EC(&v921, &qword_2801CC6A8, &unk_2676CF5F0);
        OUTLINED_FUNCTION_48();
      }

      else
      {
        sub_2676C964C();
        sub_2675EB7EC(&v912, &off_2801CC6B8, &unk_2676CF600);
        sub_2675EB7EC(&v915, &qword_2801CC6B0, &qword_2676CFC80);
        __swift_destroy_boxed_opaque_existential_1(v918);
        sub_2675EB7EC(&v921, &qword_2801CC6A8, &unk_2676CF5F0);
        OUTLINED_FUNCTION_98();
        if (v442)
        {
          sub_2675EB7EC(v904, &off_2801CC6B8, &unk_2676CF600);
        }
      }

      OUTLINED_FUNCTION_99(OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_eventSender);
      v443 = v886;
      OUTLINED_FUNCTION_71();
      v900();
      sub_2676994B8(v443);

      sub_2675EB7EC(v924, &off_2801CC6B8, &unk_2676CF600);
      sub_2675EB7EC(v927, &qword_2801CC6B0, &qword_2676CFC80);
      sub_2675EB7EC(&v930, &qword_2801CC6A8, &unk_2676CF5F0);
      v444 = OUTLINED_FUNCTION_72();
      (v330)(v444);
      OUTLINED_FUNCTION_103();
      v445 = OUTLINED_FUNCTION_53_0();
      v447 = __swift_instantiateConcreteTypeFromMangledNameV2(v445, v446);
      OUTLINED_FUNCTION_20_4();
      swift_allocObject();
      OUTLINED_FUNCTION_59();
      v927[0] = sub_2676C94CC();
      v934 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC6C8, &qword_2676CF610);
      v448 = OUTLINED_FUNCTION_6_8(&qword_2801CC6D0);
      *&v930 = v447;
      *(&v930 + 1) = &type metadata for SendMailResult;
      v449 = OUTLINED_FUNCTION_4_10(v448);
      OUTLINED_FUNCTION_56(v449);
      v450 = OUTLINED_FUNCTION_8_12();
      OUTLINED_FUNCTION_96(v450, v451, v447);

      OUTLINED_FUNCTION_55_0();
      v452 = OUTLINED_FUNCTION_0_13(&qword_2801CC668, &qword_2801CC660, &qword_2676CF578);
      OUTLINED_FUNCTION_95(v452);
      OUTLINED_FUNCTION_13_7();
    }

    sub_2676C9F6C();
    v453 = OUTLINED_FUNCTION_15_7();
    v454(v453);
    (v330)(v880, &qword_2801CC6B0);
    (*(v812 + 8))(v898, v813);
    goto LABEL_181;
  }

  (*(v812 + 8))(v176, v813);
  sub_2675EB7EC(v187, &qword_2801CC650, &unk_2676CF560);
LABEL_11:
  v190 = v903;
  sub_2676371E0();
  v191 = v898;
  if (v192)
  {
    v193 = sub_2676CA77C();

    sub_267698EA0(v193);

    OUTLINED_FUNCTION_21_3(v101, 1, v191);
    if (!v183)
    {
      (*(v888 + 32))(v889, v101, v191);
      OUTLINED_FUNCTION_46_0();
      v195 = v194;
      v194();
      v196 = sub_2676CBA1C();
      OUTLINED_FUNCTION_10_9();
      v199 = sub_267614AF4(v197, v198, MEMORY[0x277D5C7F0]);
      v200 = v882;
      v897 = v196;
      v896 = v199;
      sub_2676CA3FC();
      OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_21_3(v201, v202, v203);
      if (!v183)
      {
        (*(v891 + 32))(v887, v200, v196);
        v298 = v902;
        if (qword_2801CBAA0 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_2801CBAA0);
        }

        v299 = sub_2676CBE4C();
        v300 = OUTLINED_FUNCTION_67(v299, qword_2801CDC90);
        v301 = sub_2676CC23C();
        if (OUTLINED_FUNCTION_5_7(v301))
        {
          *OUTLINED_FUNCTION_17_3() = 0;
          OUTLINED_FUNCTION_44_0(&dword_2675D4000, v302, v303, "#MailFlowFactory found DynamicTask<Common.Message.Send>, pushing SendMailFlow");
          OUTLINED_FUNCTION_2_5();
        }

        sub_2676C9F8C();
        v304 = (v891 + 16);
        v900 = *(v891 + 16);
        (v900)(v884, v887, v196);
        OUTLINED_FUNCTION_69(OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_linkServicesProvider);
        v899 = *(v298 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_globals);
        sub_267630BAC(v899, v305, v306, v307, v308, v309, v310, v311, v811, v812, v813, v814, v815, v816, v817, v818, v819, v820, v821, v822);
        LODWORD(v893) = v312;
        v313 = sub_2676CBDEC();
        v314 = sub_2676CBDDC();
        v315 = sub_2676CAB5C();
        OUTLINED_FUNCTION_20_4();
        v316 = swift_allocObject();
        v317 = sub_2676CAB4C();
        v931 = v315;
        v932 = &off_2878AD3E8;
        *&v930 = v317;
        v928 = v313;
        v929 = &off_2878AE9E0;
        v927[0] = v314;
        v925 = &type metadata for MailFeatureFlags;
        v926 = &off_2878ADBB0;
        v318 = type metadata accessor for SendMailFlow(0);
        OUTLINED_FUNCTION_20_4();
        v319 = swift_allocObject();
        __swift_mutable_project_boxed_opaque_existential_1(&v930, v315);
        OUTLINED_FUNCTION_41_0();
        v895 = v320;
        OUTLINED_FUNCTION_5_11();
        MEMORY[0x28223BE20](v321);
        OUTLINED_FUNCTION_3_2();
        v323 = OUTLINED_FUNCTION_63(v322);
        v324(v323);
        __swift_mutable_project_boxed_opaque_existential_1(v924, v925);
        OUTLINED_FUNCTION_43(*v316);
        v902 = v314;

        sub_2676C97BC();
        if (v893)
        {
          v325 = 0x8000000000000000;
        }

        else
        {
          v325 = swift_allocObject();
          *(v325 + 16) = 0u;
          *(v325 + 32) = 0u;
        }

        v380 = v903;
        *(v319 + 16) = v325;
        sub_2676149CC(&v933, v319 + OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow_linkServicesProvider);
        sub_2676149CC(v918, v319 + OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow_featureFlags);
        sub_2676149CC(v927, v319 + OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow_referenceResolver);
        sub_2676149CC(&v921, v319 + OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow_resolverOverride);
        OUTLINED_FUNCTION_58_0(OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow_globals);
        OUTLINED_FUNCTION_76();
        v381();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC720, &qword_2676CF7D0);
        sub_2676C97AC();

        __swift_destroy_boxed_opaque_existential_1(&v933);
        v382 = OUTLINED_FUNCTION_85();
        v304(v382);
        __swift_destroy_boxed_opaque_existential_1(v927);
        __swift_destroy_boxed_opaque_existential_1(v918);
        __swift_destroy_boxed_opaque_existential_1(&v921);
        __swift_destroy_boxed_opaque_existential_1(v924);
        __swift_destroy_boxed_opaque_existential_1(&v930);
        v927[0] = v319;
        v934 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC728, &qword_2676CF7D8);
        OUTLINED_FUNCTION_32_2();
        v385 = sub_267614AF4(v383, v384, &unk_2676D4340);
        *&v930 = v318;
        *(&v930 + 1) = v385;
        v386 = OUTLINED_FUNCTION_7_10();
        OUTLINED_FUNCTION_56(v386);
        sub_2676C943C();

        v380[3] = v901;
        v380[4] = OUTLINED_FUNCTION_0_13(&qword_2801CC668, &qword_2801CC660, &qword_2676CF578);
        __swift_allocate_boxed_opaque_existential_1(v380);
        OUTLINED_FUNCTION_13_7();
        sub_2676C9F6C();
        v387 = OUTLINED_FUNCTION_15_7();
        v388(v387);
        (v304)(v887, &type metadata for MailFeatureFlags);
        goto LABEL_180;
      }

      sub_2675EB7EC(v200, &qword_2801CC650, &unk_2676CF560);
      OUTLINED_FUNCTION_46_0();
      v895 = v195;
      v195();
      sub_2676CBA8C();
      v204 = sub_267614AF4(&qword_2801CC678, MEMORY[0x277D5C848], MEMORY[0x277D5C830]);
      v205 = v871;
      v887 = v204;
      sub_2676CA3FC();
      v206 = v885;
      OUTLINED_FUNCTION_21_3(v205, 1, v885);
      if (!v183)
      {
        (*(v875 + 32))(v881, v205, v206);
        if (qword_2801CBAA0 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_2801CBAA0);
        }

        v348 = sub_2676CBE4C();
        v349 = OUTLINED_FUNCTION_67(v348, qword_2801CDC90);
        v350 = sub_2676CC23C();
        v351 = OUTLINED_FUNCTION_5_7(v350);
        v352 = v892;
        if (v351)
        {
          *OUTLINED_FUNCTION_17_3() = 0;
          OUTLINED_FUNCTION_66_0(&dword_2675D4000, v353, v350, "#MailFlowFactory found DynamicTask<Common.Message.Share>, converting parse and pushing SendMailFlow");
          OUTLINED_FUNCTION_2_5();
        }

        swift_getKeyPath();
        OUTLINED_FUNCTION_12_5();
        sub_267614AF4(v354, v355, MEMORY[0x277D5C780]);
        sub_2676CA3EC();

        v356 = v874;
        sub_2676CA3BC();
        sub_2676C9F8C();
        v357 = (v891 + 16);
        v900 = *(v891 + 16);
        (v900)(v873, v356, v352);
        v358 = v902;
        sub_2676149CC(v902 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_linkServicesProvider, &v933);
        v899 = *(v358 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_globals);
        sub_267630BAC(v899, v359, v360, v361, v362, v363, v364, v365, v811, v812, v813, v814, v815, v816, v817, v818, v819, v820, v821, v822);
        LODWORD(v893) = v366;
        v367 = sub_2676CBDEC();
        v368 = sub_2676CBDDC();
        v369 = sub_2676CAB5C();
        OUTLINED_FUNCTION_20_4();
        v370 = swift_allocObject();
        v371 = sub_2676CAB4C();
        v931 = v369;
        v932 = &off_2878AD3E8;
        *&v930 = v371;
        v928 = v367;
        v929 = &off_2878AE9E0;
        v927[0] = v368;
        v925 = &type metadata for MailFeatureFlags;
        v926 = &off_2878ADBB0;
        v372 = type metadata accessor for SendMailFlow(0);
        OUTLINED_FUNCTION_20_4();
        v373 = swift_allocObject();
        __swift_mutable_project_boxed_opaque_existential_1(&v930, v369);
        OUTLINED_FUNCTION_41_0();
        v895 = v374;
        OUTLINED_FUNCTION_5_11();
        MEMORY[0x28223BE20](v375);
        OUTLINED_FUNCTION_3_2();
        v377 = OUTLINED_FUNCTION_63(v376);
        v378(v377);
        __swift_mutable_project_boxed_opaque_existential_1(v924, v925);
        OUTLINED_FUNCTION_43(*v370);
        v902 = v368;

        sub_2676C97BC();
        if (v893)
        {
          v379 = 0x8000000000000000;
        }

        else
        {
          v379 = swift_allocObject();
          *(v379 + 16) = 0u;
          *(v379 + 32) = 0u;
        }

        v422 = v903;
        *(v373 + 16) = v379;
        sub_2676149CC(&v933, v373 + OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow_linkServicesProvider);
        sub_2676149CC(v918, v373 + OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow_featureFlags);
        sub_2676149CC(v927, v373 + OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow_referenceResolver);
        sub_2676149CC(&v921, v373 + OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow_resolverOverride);
        OUTLINED_FUNCTION_58_0(OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow_globals);
        OUTLINED_FUNCTION_76();
        v423();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC720, &qword_2676CF7D0);
        sub_2676C97AC();

        __swift_destroy_boxed_opaque_existential_1(&v933);
        v424 = OUTLINED_FUNCTION_85();
        v357(v424);
        __swift_destroy_boxed_opaque_existential_1(v927);
        __swift_destroy_boxed_opaque_existential_1(v918);
        __swift_destroy_boxed_opaque_existential_1(&v921);
        __swift_destroy_boxed_opaque_existential_1(v924);
        __swift_destroy_boxed_opaque_existential_1(&v930);
        v927[0] = v373;
        v934 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC728, &qword_2676CF7D8);
        OUTLINED_FUNCTION_32_2();
        v427 = sub_267614AF4(v425, v426, &unk_2676D4340);
        *&v930 = v372;
        *(&v930 + 1) = v427;
        v428 = OUTLINED_FUNCTION_7_10();
        OUTLINED_FUNCTION_56(v428);
        OUTLINED_FUNCTION_51_0();
        sub_2676C943C();

        v422[3] = v901;
        v422[4] = OUTLINED_FUNCTION_0_13(&qword_2801CC668, &qword_2801CC660, &qword_2676CF578);
        __swift_allocate_boxed_opaque_existential_1(v422);
        OUTLINED_FUNCTION_13_7();
        sub_2676C9F6C();
        v429 = OUTLINED_FUNCTION_15_7();
        v430(v429);
        (v357)(v874, &type metadata for MailFeatureFlags);
        (*(v875 + 8))(v881, v885);
        goto LABEL_180;
      }

      sub_2675EB7EC(v205, &qword_2801CC630, &qword_2676CF540);
      OUTLINED_FUNCTION_64_0();
      v895();
      v207 = sub_2676CBA6C();
      v208 = sub_267614AF4(&qword_2801CC680, MEMORY[0x277D5C828], MEMORY[0x277D5C810]);
      v209 = v859;
      v887 = v208;
      sub_2676CA3FC();
      v210 = v876;
      OUTLINED_FUNCTION_21_3(v209, 1, v876);
      if (v183)
      {
        sub_2675EB7EC(v209, &qword_2801CC620, &unk_2676D0C30);
        OUTLINED_FUNCTION_64_0();
        v895();
        sub_2676CBABC();
        sub_267614AF4(&qword_2801CC688, MEMORY[0x277D5C878], MEMORY[0x277D5C860]);
        v211 = v840;
        sub_2676CA3FC();
        v212 = OUTLINED_FUNCTION_34_1();
        v213 = v854;
        OUTLINED_FUNCTION_21_3(v212, v214, v854);
        if (v183)
        {
          sub_2675EB7EC(v211, &qword_2801CC5F0, &qword_2676CF4E8);
          v215 = v903;
        }

        else
        {
          v455 = v832;
          v456 = v838;
          v457 = OUTLINED_FUNCTION_38_0();
          v458(v457);
          swift_getKeyPath();
          OUTLINED_FUNCTION_12_5();
          sub_267614AF4(v459, v460, MEMORY[0x277D5C780]);
          v461 = v826;
          sub_2676CA3EC();
          v462 = v461;

          v463 = v461;
          v464 = v869;
          OUTLINED_FUNCTION_21_3(v463, 1, v869);
          v215 = v903;
          if (v465)
          {
            (*(v455 + 8))(v456, v213);
            sub_2675EB7EC(v462, &qword_2801CC428, &unk_2676CEDD0);
          }

          else
          {
            v525 = OUTLINED_FUNCTION_38_0();
            v526(v525);
            swift_getKeyPath();
            OUTLINED_FUNCTION_11_8();
            sub_267614AF4(v527, v528, MEMORY[0x277D5C6A8]);
            OUTLINED_FUNCTION_64_0();
            v529 = sub_2676CA8CC();

            v530 = *(v529 + 16);

            if (v530 || (swift_getKeyPath(), OUTLINED_FUNCTION_64_0(), v531 = sub_2676CA8CC(), , v532 = *(v531 + 16), , v532) || (swift_getKeyPath(), OUTLINED_FUNCTION_64_0(), v533 = sub_2676CA8CC(), , v534 = *(v533 + 16), , v534))
            {
              swift_getKeyPath();
              sub_2676CA3EC();

              sub_2676CA3BC();
              sub_2676C919C();
              if (sub_2676C918C())
              {
                v535 = v892;
                v536 = v902;
                if (qword_2801CBAA0 != -1)
                {
                  OUTLINED_FUNCTION_0(&qword_2801CBAA0);
                }

                v537 = sub_2676CBE4C();
                v538 = OUTLINED_FUNCTION_67(v537, qword_2801CDC90);
                v539 = sub_2676CC23C();
                if (OUTLINED_FUNCTION_5_7(v539))
                {
                  *OUTLINED_FUNCTION_17_3() = 0;
                  OUTLINED_FUNCTION_66_0(&dword_2675D4000, v540, v539, "#MailFlowFactory found DynamicTask<Common.Message.NoVerb> with recipients, casted as DynamicTask<Common.Message.Send> and pushing SendMailSceneHostPlan");
                  v536 = v902;
                  OUTLINED_FUNCTION_2_5();
                }

                sub_2676C9F8C();
                OUTLINED_FUNCTION_69(OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_linkServicesProvider);
                v902 = *(v891 + 16);
                (v902)(v817, v831, v535);
                v541 = *(v536 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_globals);
                v542 = OUTLINED_FUNCTION_14_7();
                *v538 = 0u;
                v538[1] = 0u;
                v926 = 0;
                OUTLINED_FUNCTION_20_4();
                swift_allocObject();
                v543 = sub_2676C9B8C();
                type metadata accessor for SendMailSceneHostPlan(0);
                OUTLINED_FUNCTION_20_4();
                v544 = swift_allocObject();

                v545 = sub_2676C97BC();
                *(v544 + OBJC_IVAR____TtC16SiriMailInternal21SendMailSceneHostPlan_confirmIntentOptions) = 0;
                OUTLINED_FUNCTION_101(v545, v546, &qword_2801CC6A8, &unk_2676CF5F0);
                OUTLINED_FUNCTION_102();
                v547 = OUTLINED_FUNCTION_86();
                OUTLINED_FUNCTION_104(v547, v548);
                OUTLINED_FUNCTION_81();
                OUTLINED_FUNCTION_57_0();
                sub_2675F95E4(v549, v550, v551, v552);
                v911 = &protocol witness table for ResponseFactory;
                v910 = v542;
                v909[0] = v543;
                OUTLINED_FUNCTION_45_0();
                OUTLINED_FUNCTION_45_0();
                v553 = OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan__message;
                sub_2676CB18C();
                sub_2676C981C();
                OUTLINED_FUNCTION_73(OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_resolverOverride);
                *(v544 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_globals) = v541;
                OUTLINED_FUNCTION_70(v553, v906);
                v554 = v541;
                sub_267614854(&v921, v553);
                swift_endAccess();
                OUTLINED_FUNCTION_100(OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_linkServicesProvider);
                v555 = OUTLINED_FUNCTION_88();
                OUTLINED_FUNCTION_104(v555, v556);
                OUTLINED_FUNCTION_97(OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_responseFactory);
                OUTLINED_FUNCTION_78();
                OUTLINED_FUNCTION_57_0();
                sub_2675F95E4(v557, v558, v559, v560);
                if (v905)
                {
                  sub_2675EB7EC(&v912, &off_2801CC6B8, &unk_2676CF600);
                  sub_2675EB7EC(&v915, &qword_2801CC6B0, &qword_2676CFC80);
                  __swift_destroy_boxed_opaque_existential_1(v918);
                  sub_2675EB7EC(&v921, &qword_2801CC6A8, &unk_2676CF5F0);
                  OUTLINED_FUNCTION_48();
                  v561 = v903;
                }

                else
                {
                  sub_2676C964C();
                  sub_2675EB7EC(&v912, &off_2801CC6B8, &unk_2676CF600);
                  sub_2675EB7EC(&v915, &qword_2801CC6B0, &qword_2676CFC80);
                  __swift_destroy_boxed_opaque_existential_1(v918);
                  sub_2675EB7EC(&v921, &qword_2801CC6A8, &unk_2676CF5F0);
                  OUTLINED_FUNCTION_98();
                  v561 = v903;
                  if (v777)
                  {
                    sub_2675EB7EC(v904, &off_2801CC6B8, &unk_2676CF600);
                  }
                }

                OUTLINED_FUNCTION_99(OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_eventSender);
                v778 = v886;
                v779 = v817;
                v780 = v892;
                (v902)(v886, v817, v892);
                sub_2676A31F0(v778);

                sub_2675EB7EC(v924, &off_2801CC6B8, &unk_2676CF600);
                sub_2675EB7EC(v927, &qword_2801CC6B0, &qword_2676CFC80);
                sub_2675EB7EC(&v930, &qword_2801CC6A8, &unk_2676CF5F0);
                v781 = *(v891 + 8);
                v781(v779, v780);
                OUTLINED_FUNCTION_103();
                v782 = OUTLINED_FUNCTION_53_0();
                v784 = __swift_instantiateConcreteTypeFromMangledNameV2(v782, v783);
                OUTLINED_FUNCTION_20_4();
                swift_allocObject();
                OUTLINED_FUNCTION_59();
                v927[0] = sub_2676C94CC();
                v934 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC6E0, &qword_2676CF620);
                v785 = OUTLINED_FUNCTION_6_8(&qword_2801CC6E8);
                *&v930 = v784;
                *(&v930 + 1) = &type metadata for SendMailResult;
                v786 = OUTLINED_FUNCTION_4_10(v785);
                OUTLINED_FUNCTION_56(v786);
                v787 = OUTLINED_FUNCTION_8_12();
                OUTLINED_FUNCTION_96(v787, v788, v784);

                v789 = v901;
                v561[3] = v901;
                v561[4] = OUTLINED_FUNCTION_0_13(&qword_2801CC668, &qword_2801CC660, &qword_2676CF578);
                __swift_allocate_boxed_opaque_existential_1(v561);
                sub_2676C9F6C();
                v790 = OUTLINED_FUNCTION_37_0();
                v791(v790, v789);
                v781(v831, v780);
              }

              else
              {
                v750 = v892;
                v751 = v902;
                if (qword_2801CBAA0 != -1)
                {
                  OUTLINED_FUNCTION_0(&qword_2801CBAA0);
                }

                v752 = sub_2676CBE4C();
                v753 = OUTLINED_FUNCTION_67(v752, qword_2801CDC90);
                v754 = sub_2676CC23C();
                if (OUTLINED_FUNCTION_5_7(v754))
                {
                  *OUTLINED_FUNCTION_17_3() = 0;
                  OUTLINED_FUNCTION_66_0(&dword_2675D4000, v755, v754, "#MailFlowFactory found DynamicTask<Common.Message.NoVerb> with recipients, casted as DynamicTask<Common.Message.Send> and pushing SendMailPlan");
                  v751 = v902;
                  OUTLINED_FUNCTION_2_5();
                }

                sub_2676C9F8C();
                OUTLINED_FUNCTION_69(OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_linkServicesProvider);
                v902 = *(v891 + 16);
                (v902)(v818, v831, v750);
                v756 = *(v751 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_globals);
                v757 = OUTLINED_FUNCTION_14_7();
                *v753 = 0u;
                v753[1] = 0u;
                v926 = 0;
                OUTLINED_FUNCTION_20_4();
                swift_allocObject();
                v758 = sub_2676C9B8C();
                type metadata accessor for SendMailPlan(0);
                OUTLINED_FUNCTION_20_4();
                v759 = swift_allocObject();

                v760 = sub_2676C97BC();
                *(v759 + OBJC_IVAR____TtC16SiriMailInternal12SendMailPlan_confirmIntentOptions) = 0;
                OUTLINED_FUNCTION_101(v760, v761, &qword_2801CC6A8, &unk_2676CF5F0);
                OUTLINED_FUNCTION_102();
                v762 = OUTLINED_FUNCTION_86();
                OUTLINED_FUNCTION_104(v762, v763);
                OUTLINED_FUNCTION_81();
                OUTLINED_FUNCTION_57_0();
                sub_2675F95E4(v764, v765, v766, v767);
                v911 = &protocol witness table for ResponseFactory;
                v910 = v757;
                v909[0] = v758;
                sub_2676C8D8C();
                sub_2676C981C();
                sub_2676CB0DC();
                sub_2676C981C();
                v768 = MEMORY[0x277D839B0];
                OUTLINED_FUNCTION_45_0();
                OUTLINED_FUNCTION_45_0();
                OUTLINED_FUNCTION_73(OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_resolverOverride);
                *(v759 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_globals) = v756;
                OUTLINED_FUNCTION_70(v768, v906);
                v769 = v756;
                sub_267614854(&v921, v768);
                swift_endAccess();
                OUTLINED_FUNCTION_100(OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_linkServicesProvider);
                v770 = OUTLINED_FUNCTION_88();
                OUTLINED_FUNCTION_104(v770, v771);
                OUTLINED_FUNCTION_97(OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_responseFactory);
                OUTLINED_FUNCTION_78();
                OUTLINED_FUNCTION_57_0();
                sub_2675F95E4(v772, v773, v774, v775);
                if (v905)
                {
                  sub_2675EB7EC(&v912, &off_2801CC6B8, &unk_2676CF600);
                  sub_2675EB7EC(&v915, &qword_2801CC6B0, &qword_2676CFC80);
                  __swift_destroy_boxed_opaque_existential_1(v918);
                  sub_2675EB7EC(&v921, &qword_2801CC6A8, &unk_2676CF5F0);
                  OUTLINED_FUNCTION_48();
                }

                else
                {
                  sub_2676C964C();
                  sub_2675EB7EC(&v912, &off_2801CC6B8, &unk_2676CF600);
                  sub_2675EB7EC(&v915, &qword_2801CC6B0, &qword_2676CFC80);
                  __swift_destroy_boxed_opaque_existential_1(v918);
                  sub_2675EB7EC(&v921, &qword_2801CC6A8, &unk_2676CF5F0);
                  OUTLINED_FUNCTION_98();
                  if (v792)
                  {
                    sub_2675EB7EC(v904, &off_2801CC6B8, &unk_2676CF600);
                  }
                }

                OUTLINED_FUNCTION_99(OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_eventSender);
                v793 = v886;
                v794 = v818;
                OUTLINED_FUNCTION_71();
                (v902)();
                sub_2676994B8(v793);

                sub_2675EB7EC(v924, &off_2801CC6B8, &unk_2676CF600);
                sub_2675EB7EC(v927, &qword_2801CC6B0, &qword_2676CFC80);
                sub_2675EB7EC(&v930, &qword_2801CC6A8, &unk_2676CF5F0);
                v795 = *(v891 + 8);
                v795(v794, &qword_2676CFC80);
                OUTLINED_FUNCTION_103();
                v796 = OUTLINED_FUNCTION_53_0();
                v798 = __swift_instantiateConcreteTypeFromMangledNameV2(v796, v797);
                OUTLINED_FUNCTION_20_4();
                swift_allocObject();
                OUTLINED_FUNCTION_59();
                v927[0] = sub_2676C94CC();
                v934 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC6C8, &qword_2676CF610);
                v799 = OUTLINED_FUNCTION_6_8(&qword_2801CC6D0);
                *&v930 = v798;
                *(&v930 + 1) = &type metadata for SendMailResult;
                v800 = OUTLINED_FUNCTION_4_10(v799);
                OUTLINED_FUNCTION_56(v800);
                v801 = OUTLINED_FUNCTION_8_12();
                OUTLINED_FUNCTION_96(v801, v802, v798);

                v803 = v901;
                v903[3] = v901;
                v804 = OUTLINED_FUNCTION_0_13(&qword_2801CC668, &qword_2801CC660, &qword_2676CF578);
                OUTLINED_FUNCTION_95(v804);
                sub_2676C9F6C();
                v805 = OUTLINED_FUNCTION_37_0();
                v806(v805, v803);
                v795(v831, &qword_2676CFC80);
              }

              (*(v858 + 8))(v825, v869);
              v732 = OUTLINED_FUNCTION_74();
              goto LABEL_179;
            }

            v807 = OUTLINED_FUNCTION_37_0();
            v808(v807, v464);
            v809 = OUTLINED_FUNCTION_74();
            v810(v809);
          }
        }

        v466 = v902;
        sub_2675F95E4(v902 + 32, &v933, &qword_2801CC690, &unk_2676CF580);
        sub_267616E78(v933, SBYTE1(v933), BYTE2(v933), &v933 + 8, v466 + v178, v466 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_linkServicesProvider, v466 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_responseFactory, v466 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_readingUtil, v834, *(v466 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_globals));
        sub_2675EB7EC(&v933 + 8, &qword_2801CC158, &qword_2676CDDA0);
        OUTLINED_FUNCTION_17_2();
        v509 = v835;
        __swift_storeEnumTagSinglePayload(v510, v511, v512, v835);
        v514 = v820;
        v513 = v821;
        v515 = OUTLINED_FUNCTION_53_0();
        v516(v515);
        v517 = v833;
        sub_2676C9F8C();
        v934 = v509;
        MailActingFlow = type metadata accessor for ReadMailActingFlow(255);
        OUTLINED_FUNCTION_33_2();
        v521 = sub_267614AF4(v519, v520, &unk_2676D12C8);
        *&v930 = MailActingFlow;
        *(&v930 + 1) = v521;
        v522 = OUTLINED_FUNCTION_7_10();
        v523 = OUTLINED_FUNCTION_56(v522);
        (*(v513 + 16))(v523, v514, v509);
        v524 = v901;
        v215[3] = v901;
        v215[4] = OUTLINED_FUNCTION_0_13(&qword_2801CC668, &qword_2801CC660, &qword_2676CF578);
        __swift_allocate_boxed_opaque_existential_1(v215);
        OUTLINED_FUNCTION_13_7();
        sub_2676C9F6C();
        (*(v894 + 8))(v517, v524);
        (*(v513 + 8))(v514, v509);
LABEL_180:
        (*(v888 + 8))(v889, v898);
LABEL_181:
        __swift_destroy_boxed_opaque_existential_1(&v933);
        goto LABEL_182;
      }

      v896 = v207;
      (*(v862 + 32))(v877, v209, v210);
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2801CBAA0);
      }

      v406 = sub_2676CBE4C();
      v881 = __swift_project_value_buffer(v406, qword_2801CDC90);
      v407 = sub_2676CBE2C();
      v408 = sub_2676CC23C();
      v409 = OUTLINED_FUNCTION_5_7(v408);
      v410 = v869;
      v411 = v855;
      if (v409)
      {
        *OUTLINED_FUNCTION_17_3() = 0;
        OUTLINED_FUNCTION_44_0(&dword_2675D4000, v412, v413, "#MailFlowFactory found DynamicTask<Common.Message.Reply>, pushing ReplyMessageFlow");
        OUTLINED_FUNCTION_2_5();
      }

      swift_getKeyPath();
      OUTLINED_FUNCTION_12_5();
      v416 = sub_267614AF4(v414, v415, MEMORY[0x277D5C780]);
      v417 = v839;
      sub_2676CA3EC();

      v418 = OUTLINED_FUNCTION_34_1();
      OUTLINED_FUNCTION_21_3(v418, v419, v410);
      v897 = v416;
      if (v183)
      {
        v420 = &qword_2801CC428;
        v421 = &unk_2676CEDD0;
      }

      else
      {
        swift_getKeyPath();
        OUTLINED_FUNCTION_11_8();
        sub_267614AF4(v467, v468, MEMORY[0x277D5C6A8]);
        v469 = sub_2676CA8CC();

        v470 = OUTLINED_FUNCTION_83();
        v471(v470);
        v417 = v827;
        sub_267698E74(v469);

        v472 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
        OUTLINED_FUNCTION_18_5(v417);
        if (!v473)
        {
          swift_getKeyPath();
          OUTLINED_FUNCTION_31_1();
          sub_267614AF4(v562, v563, MEMORY[0x277D5C470]);
          v564 = v417;
          v565 = v819;
          sub_2676CA87C();

          OUTLINED_FUNCTION_25_3();
          (*(v566 + 8))(v564, v472);
          v567 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
          v568 = OUTLINED_FUNCTION_34_1();
          OUTLINED_FUNCTION_21_3(v568, v569, v567);
          if (!v570)
          {
            swift_getKeyPath();
            v474 = v841;
            sub_2676CA84C();

            OUTLINED_FUNCTION_14_2();
            (*(v749 + 8))(v565, v567);
            v411 = v855;
LABEL_88:
            v478 = v853;
            v479 = *(v857 + 104);
            LODWORD(v895) = *MEMORY[0x277D5C478];
            v893 = v479;
            v479(v853);
            OUTLINED_FUNCTION_17_2();
            __swift_storeEnumTagSinglePayload(v480, v481, v482, v411);
            v483 = v411;
            v484 = *(v856 + 48);
            v485 = v860;
            sub_2675F95E4(v474, v860, &qword_2801CC618, &qword_2676CF520);
            v486 = v485;
            sub_2675F95E4(v478, v485 + v484, &qword_2801CC618, &qword_2676CF520);
            OUTLINED_FUNCTION_21_3(v485, 1, v483);
            if (v183)
            {
              v487 = &qword_2801CC618;
              sub_2675EB7EC(v478, &qword_2801CC618, &qword_2676CF520);
              OUTLINED_FUNCTION_91();
              OUTLINED_FUNCTION_21_3(&qword_2801CC618 + v484, 1, v483);
              v488 = v483;
              if (v183)
              {
                v489 = v869;
                goto LABEL_127;
              }
            }

            else
            {
              v490 = v485;
              v491 = v828;
              sub_2675F95E4(v490, v828, &qword_2801CC618, &qword_2676CF520);
              OUTLINED_FUNCTION_21_3(v486 + v484, 1, v483);
              if (!v492)
              {
                v571 = v857;
                v572 = v824;
                (*(v857 + 32))(v824, v486 + v484, v483);
                OUTLINED_FUNCTION_30_2();
                sub_267614AF4(v573, v574, MEMORY[0x277D5C490]);
                v575 = sub_2676CBF1C();
                v576 = *(v571 + 8);
                v576(v572, v483);
                OUTLINED_FUNCTION_75();
                sub_2675EB7EC(v577, v578, v579);
                OUTLINED_FUNCTION_75();
                sub_2675EB7EC(v580, v581, v582);
                v583 = OUTLINED_FUNCTION_65_0();
                (v576)(v583);
                v489 = v869;
                OUTLINED_FUNCTION_75();
                sub_2675EB7EC(v584, v585, v586);
                v488 = v483;
                if (v575)
                {
                  goto LABEL_128;
                }

LABEL_97:
                KeyPath = swift_getKeyPath();
                v494 = v829;
                OUTLINED_FUNCTION_68(KeyPath);

                v495 = OUTLINED_FUNCTION_34_1();
                OUTLINED_FUNCTION_21_3(v495, v496, v489);
                if (v183)
                {
                  sub_2675EB7EC(v494, &qword_2801CC428, &unk_2676CEDD0);
                  v497 = v837;
                }

                else
                {
                  swift_getKeyPath();
                  OUTLINED_FUNCTION_11_8();
                  sub_267614AF4(v498, v499, MEMORY[0x277D5C6A8]);
                  v500 = sub_2676CA8CC();

                  v501 = OUTLINED_FUNCTION_83();
                  v502(v501);
                  v503 = v822;
                  sub_267698E74(v500);
                  v504 = v503;

                  v505 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
                  v506 = OUTLINED_FUNCTION_34_1();
                  OUTLINED_FUNCTION_21_3(v506, v507, v505);
                  v497 = v837;
                  if (v508)
                  {
                    sub_2675EB7EC(v504, &qword_2801CC168, &unk_2676CF510);
                    v488 = v855;
                  }

                  else
                  {
                    swift_getKeyPath();
                    OUTLINED_FUNCTION_31_1();
                    sub_267614AF4(v587, v588, MEMORY[0x277D5C470]);
                    v589 = v814;
                    sub_2676CA87C();

                    OUTLINED_FUNCTION_14_2();
                    (*(v590 + 8))(v504, v505);
                    v591 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
                    OUTLINED_FUNCTION_18_5(v589);
                    if (!v592)
                    {
                      swift_getKeyPath();
                      sub_2676CA84C();

                      OUTLINED_FUNCTION_25_3();
                      (*(v776 + 8))(v589, v591);
                      v489 = v869;
                      v488 = v855;
LABEL_122:
                      v596 = v836;
                      v893(v836, v895, v488);
                      OUTLINED_FUNCTION_17_2();
                      __swift_storeEnumTagSinglePayload(v597, v598, v599, v488);
                      v600 = *(v856 + 48);
                      v601 = v830;
                      sub_2675F95E4(v497, v830, &qword_2801CC618, &qword_2676CF520);
                      sub_2675F95E4(v596, v601 + v600, &qword_2801CC618, &qword_2676CF520);
                      OUTLINED_FUNCTION_21_3(v601, 1, v488);
                      if (!v183)
                      {
                        v608 = v823;
                        sub_2675F95E4(v601, v823, &qword_2801CC618, &qword_2676CF520);
                        OUTLINED_FUNCTION_21_3(v601 + v600, 1, v488);
                        if (!v609)
                        {
                          v734 = v857;
                          (*(v857 + 32))(v824, v601 + v600, v488);
                          OUTLINED_FUNCTION_30_2();
                          sub_267614AF4(v735, v736, MEMORY[0x277D5C490]);
                          v737 = sub_2676CBF1C();
                          v738 = *(v734 + 8);
                          v739 = OUTLINED_FUNCTION_65_0();
                          v738(v739);
                          OUTLINED_FUNCTION_84();
                          sub_2675EB7EC(v740, v741, v742);
                          OUTLINED_FUNCTION_84();
                          sub_2675EB7EC(v743, v744, v745);
                          (v738)(v608, v488);
                          OUTLINED_FUNCTION_84();
                          sub_2675EB7EC(v746, v747, v748);
                          if ((v737 & 1) == 0)
                          {
                            LODWORD(v895) = 1;
                            goto LABEL_133;
                          }

                          goto LABEL_128;
                        }

                        OUTLINED_FUNCTION_46_0();
                        sub_2675EB7EC(v610, v611, v612);
                        OUTLINED_FUNCTION_46_0();
                        sub_2675EB7EC(v613, v614, v615);
                        (*(v857 + 8))(v608, v488);
LABEL_132:
                        sub_2675EB7EC(v601, &qword_2801CC610, &unk_2676D0C10);
                        LODWORD(v895) = 1;
                        goto LABEL_133;
                      }

                      OUTLINED_FUNCTION_46_0();
                      sub_2675EB7EC(v602, v603, v604);
                      OUTLINED_FUNCTION_46_0();
                      sub_2675EB7EC(v605, v606, v607);
                      OUTLINED_FUNCTION_21_3(v601 + v600, 1, v488);
                      if (!v183)
                      {
                        goto LABEL_132;
                      }

                      v487 = v601;
LABEL_127:
                      sub_2675EB7EC(v487, &qword_2801CC618, &qword_2676CF520);
LABEL_128:
                      LODWORD(v895) = 0;
LABEL_133:
                      v616 = swift_getKeyPath();
                      v617 = v842;
                      OUTLINED_FUNCTION_68(v616);

                      v618 = OUTLINED_FUNCTION_34_1();
                      OUTLINED_FUNCTION_21_3(v618, v619, v489);
                      if (v183)
                      {
                        sub_2675EB7EC(v617, &qword_2801CC428, &unk_2676CEDD0);
                        v897 = 0;
                        v893 = 0;
                      }

                      else
                      {
                        swift_getKeyPath();
                        v897 = sub_2676CA89C();
                        v893 = v620;

                        v621 = OUTLINED_FUNCTION_83();
                        v622(v621);
                      }

                      v623 = v898;
                      v625 = v843;
                      v624 = v844;
                      MEMORY[0x26D5FC0E0](0x636E657265666572, 0xE900000000000065, v898);
                      v626 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC6F0, "м");
                      OUTLINED_FUNCTION_18_5(v624);
                      if (v183)
                      {
                        MEMORY[0x26D5FC0E0](0x746567726174, 0xE600000000000000, v623);
                        OUTLINED_FUNCTION_18_5(v625);
                        if (v183)
                        {
                          MEMORY[0x26D5FC0E0](0x797469746E65, 0xE600000000000000, v623);
                          OUTLINED_FUNCTION_18_5(v625);
                          v631 = v878;
                          if (!v183)
                          {
                            sub_2675EB7EC(v625, &qword_2801CC608, &unk_2676CF500);
                          }
                        }

                        else
                        {
                          OUTLINED_FUNCTION_25_3();
                          (*(v633 + 32))(v870, v625, v626);
                          OUTLINED_FUNCTION_17_2();
                          __swift_storeEnumTagSinglePayload(v634, v635, v636, v626);
                          v631 = v878;
                        }

                        OUTLINED_FUNCTION_18_5(v624);
                        v632 = v845;
                        if (!v183)
                        {
                          sub_2675EB7EC(v624, &qword_2801CC608, &unk_2676CF500);
                        }
                      }

                      else
                      {
                        OUTLINED_FUNCTION_25_3();
                        OUTLINED_FUNCTION_84();
                        v627();
                        OUTLINED_FUNCTION_17_2();
                        __swift_storeEnumTagSinglePayload(v628, v629, v630, v626);
                        v631 = v878;
                        v632 = v845;
                      }

                      sub_2675F95E4(v870, v632, &qword_2801CC608, &unk_2676CF500);
                      OUTLINED_FUNCTION_18_5(v632);
                      if (v183)
                      {
                        sub_2675EB7EC(v632, &qword_2801CC608, &unk_2676CF500);
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC6F8, &qword_2676CF6C0);
                        OUTLINED_FUNCTION_5_2();
                      }

                      else
                      {
                        v637 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC6F8, &qword_2676CF6C0);
                        sub_2676325D4(v631 + *(v637 + 128), v638, v639, v640, v641, v642, v643, v644, v811, v812, v813, v814, v815, v816, v817, v818, v819, v820, v821, v822);
                        v646 = v645;
                        v648 = v647;
                        v650 = v649;
                        v652 = v651;
                        LODWORD(v892) = v651 >> 8;
                        v653 = HIWORD(v651);
                        v654 = HIBYTE(v651);
                        OUTLINED_FUNCTION_25_3();
                        (*(v655 + 8))(v632, v626);
                        *v878 = v646;
                        *(v878 + 8) = v648;
                        *(v878 + 16) = v650;
                        *(v878 + 24) = v652;
                        *(v878 + 25) = v892;
                        v631 = v878;
                        *(v878 + 26) = v653;
                        *(v631 + 27) = v654;
                        OUTLINED_FUNCTION_17_2();
                        v659 = v637;
                      }

                      __swift_storeEnumTagSinglePayload(v656, v657, v658, v659);
                      v660 = v851;
                      v662 = v848;
                      v661 = v849;
                      v664 = v846;
                      v663 = v847;
                      sub_2676C9F8C();
                      v665 = v902;
                      sub_2676149CC(v902 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_linkServicesProvider, &v933);
                      sub_2676149CC(v665 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_responseFactory, &v930);
                      v666 = *(v665 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_globals);
                      sub_2675F95E4(v631, v664, &qword_2801CC600, &qword_2676CF4F8);
                      v667 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC6F8, &qword_2676CF6C0);
                      OUTLINED_FUNCTION_17_7(v664);
                      if (v183)
                      {
                        v668 = v666;
                        sub_2675EB7EC(v664, &qword_2801CC600, &qword_2676CF4F8);
                        v902 = MEMORY[0x277D84F90];
                      }

                      else
                      {
                        v902 = *v664;
                        v669 = v666;

                        sub_2675EB7EC(v664 + *(v667 + 128), &qword_2801CC1E8, &qword_2676CF570);
                      }

                      v670 = v850;
                      v671 = OUTLINED_FUNCTION_83();
                      sub_2675F95E4(v671, v672, v673, v674);
                      OUTLINED_FUNCTION_17_7(v663);
                      if (v183)
                      {
                        sub_2675EB7EC(v663, &qword_2801CC600, &qword_2676CF4F8);
                        v892 = 0;
                        v891 = 0;
                      }

                      else
                      {

                        v675 = *(v663 + 16);
                        v892 = *(v663 + 8);
                        v891 = v675;
                        sub_2675EB7EC(v663 + *(v667 + 128), &qword_2801CC1E8, &qword_2676CF570);
                      }

                      sub_2675F95E4(v631, v662, &qword_2801CC600, &qword_2676CF4F8);
                      OUTLINED_FUNCTION_17_7(v662);
                      if (v183)
                      {
                        sub_2675EB7EC(v662, &qword_2801CC600, &qword_2676CF4F8);
                        LODWORD(v886) = 2;
                      }

                      else
                      {

                        LODWORD(v886) = *(v662 + 24);
                        sub_2675EB7EC(v662 + *(v667 + 128), &qword_2801CC1E8, &qword_2676CF570);
                      }

                      sub_2675F95E4(v631, v661, &qword_2801CC600, &qword_2676CF4F8);
                      OUTLINED_FUNCTION_17_7(v661);
                      if (v183)
                      {
                        sub_2675EB7EC(v661, &qword_2801CC600, &qword_2676CF4F8);
                        v676 = 2;
                      }

                      else
                      {

                        v676 = *(v661 + 25);
                        sub_2675EB7EC(v661 + *(v667 + 128), &qword_2801CC1E8, &qword_2676CF570);
                      }

                      sub_2675F95E4(v631, v670, &qword_2801CC600, &qword_2676CF4F8);
                      OUTLINED_FUNCTION_17_7(v670);
                      if (v183)
                      {
                        sub_2675EB7EC(v670, &qword_2801CC600, &qword_2676CF4F8);
                        LODWORD(v884) = 2;
                      }

                      else
                      {

                        LODWORD(v884) = *(v670 + 26);
                        sub_2675EB7EC(v670 + *(v667 + 128), &qword_2801CC1E8, &qword_2676CF570);
                      }

                      sub_2675F95E4(v631, v660, &qword_2801CC600, &qword_2676CF4F8);
                      OUTLINED_FUNCTION_17_7(v660);
                      if (v183)
                      {
                        sub_2675EB7EC(v660, &qword_2801CC600, &qword_2676CF4F8);
                        LODWORD(v883) = 2;
                      }

                      else
                      {

                        LODWORD(v883) = *(v660 + 27);
                        sub_2675EB7EC(v660 + *(v667 + 128), &qword_2801CC1E8, &qword_2676CF570);
                      }

                      v677 = v631;
                      v678 = v852;
                      sub_2675F95E4(v677, v852, &qword_2801CC600, &qword_2676CF4F8);
                      OUTLINED_FUNCTION_17_7(v678);
                      LODWORD(v885) = v676;
                      if (v183)
                      {
                        sub_2675EB7EC(v678, &qword_2801CC600, &qword_2676CF4F8);
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F0, &unk_2676CE100);
                        OUTLINED_FUNCTION_5_2();
                        __swift_storeEnumTagSinglePayload(v679, v680, v681, v682);
                      }

                      else
                      {

                        sub_26761495C(v678 + *(v667 + 128), v863);
                      }

                      v683 = v900;
                      v928 = v900;
                      v929 = &off_2878AD4E0;
                      __swift_allocate_boxed_opaque_existential_1(v927);
                      sub_2676CAB8C();
                      __swift_mutable_project_boxed_opaque_existential_1(v927, v928);
                      OUTLINED_FUNCTION_41_0();
                      v882 = v684;
                      OUTLINED_FUNCTION_5_11();
                      MEMORY[0x28223BE20](v685);
                      OUTLINED_FUNCTION_3_2();
                      v688 = v687 - v686;
                      (*(v689 + 16))(v687 - v686);
                      v925 = v683;
                      v926 = &off_2878AD4E0;
                      v690 = __swift_allocate_boxed_opaque_existential_1(v924);
                      v691 = *(v899 + 4);
                      v691(v690, v688, v683);
                      v692 = type metadata accessor for ReplyMessageFlow(0);
                      OUTLINED_FUNCTION_20_4();
                      v693 = swift_allocObject();
                      __swift_mutable_project_boxed_opaque_existential_1(v924, v925);
                      OUTLINED_FUNCTION_41_0();
                      v899 = v694;
                      OUTLINED_FUNCTION_5_11();
                      MEMORY[0x28223BE20](v695);
                      OUTLINED_FUNCTION_3_2();
                      v698 = v697 - v696;
                      (*(v699 + 16))(v697 - v696);
                      v922 = v683;
                      v923 = &off_2878AD4E0;
                      v700 = __swift_allocate_boxed_opaque_existential_1(&v921);
                      v691(v700, v698, v683);
                      sub_2676C97BC();
                      sub_2676C8C8C();
                      OUTLINED_FUNCTION_5_2();
                      __swift_storeEnumTagSinglePayload(v701, v702, v703, v704);
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F8, &qword_2676CEBA0);
                      OUTLINED_FUNCTION_5_2();
                      __swift_storeEnumTagSinglePayload(v705, v706, v707, v708);
                      sub_2676C9ECC();
                      v709 = v919;
                      v710 = v920;
                      __swift_project_boxed_opaque_existential_1(v918, v919);
                      LODWORD(v709) = sub_267691338(v709, v710);
                      __swift_destroy_boxed_opaque_existential_1(v918);
                      if (v709 & v890)
                      {
                        v711 = sub_2676CBE2C();
                        v712 = sub_2676CC23C();
                        v713 = OUTLINED_FUNCTION_5_7(v712);
                        v714 = v902;
                        if (v713)
                        {
                          v715 = OUTLINED_FUNCTION_17_3();
                          *v715 = 0;
                          _os_log_impl(&dword_2675D4000, v711, v712, "#ReplyMessageFlow user is in the car and their device is locked - we cannot get emails.", v715, 2u);
                          OUTLINED_FUNCTION_2_5();
                        }

                        v716 = 0xC000000000000000;
                        LOBYTE(v717) = v885;
                      }

                      else
                      {
                        v716 = 0xC000000000000008;
                        v714 = v902;
                        v717 = v885;
                        if (!*(v902 + 16))
                        {
                          v718 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F0, &unk_2676CE100);
                          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v863, 1, v718);
                          if (v717 == 2 && EnumTagSinglePayload == 1)
                          {
                            v716 = 0xC000000000000018;
                          }
                        }
                      }

                      *(v693 + 16) = v716;
                      v721 = (v693 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_messageBodyPayload);
                      v722 = v893;
                      *v721 = v897;
                      v721[1] = v722;
                      *(v693 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_replyOption) = v895;
                      *(v693 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_senderInput) = v714;
                      v723 = (v693 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_subjectInput);
                      v724 = v891;
                      *v723 = v892;
                      v723[1] = v724;
                      *(v693 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_isReadInput) = v886;
                      *(v693 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_isNewInput) = v717;
                      v725 = v863;
                      sub_2675F95E4(v863, v693 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_dateTimeInput, &qword_2801CC1E8, &qword_2676CF570);
                      *(v693 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_isMostRecent) = v884;
                      *(v693 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_shouldResolveOnscreenEntity) = v883;
                      sub_2675DD73C(&v921, v693 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_dateTimeResolver);
                      sub_2675DD73C(&v933, v693 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_linkServicesProvider);
                      sub_2675DD73C(&v930, v693 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_responseFactory);
                      *(v693 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_globals) = v666;
                      *(v693 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_hasExactSpanMatch) = 0;
                      sub_2675EB7EC(v725, &qword_2801CC1E8, &qword_2676CF570);
                      __swift_destroy_boxed_opaque_existential_1(v924);
                      __swift_destroy_boxed_opaque_existential_1(v927);
                      v927[0] = v693;
                      v934 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC700, &qword_2676CF6C8);
                      v726 = sub_267614AF4(&qword_2801CC708, type metadata accessor for ReplyMessageFlow, &unk_2676D2688);
                      *&v930 = v692;
                      *(&v930 + 1) = v726;
                      v727 = OUTLINED_FUNCTION_7_10();
                      OUTLINED_FUNCTION_56(v727);
                      OUTLINED_FUNCTION_51_0();
                      sub_2676C943C();

                      OUTLINED_FUNCTION_55_0();
                      v728 = OUTLINED_FUNCTION_0_13(&qword_2801CC668, &qword_2801CC660, &qword_2676CF578);
                      OUTLINED_FUNCTION_95(v728);
                      OUTLINED_FUNCTION_13_7();
                      sub_2676C9F6C();
                      v729 = OUTLINED_FUNCTION_15_7();
                      v730(v729);
                      sub_2675EB7EC(v878, &qword_2801CC600, &qword_2676CF4F8);
                      sub_2675EB7EC(v870, &qword_2801CC608, &unk_2676CF500);
                      v731 = *(v862 + 8);
                      v732 = v877;
                      v733 = v876;
LABEL_179:
                      v731(v732, v733);
                      goto LABEL_180;
                    }

                    sub_2675EB7EC(v589, &qword_2801CC050, &unk_2676D0C20);
                    v489 = v869;
                    v488 = v855;
                  }
                }

                OUTLINED_FUNCTION_5_2();
                __swift_storeEnumTagSinglePayload(v593, v594, v595, v488);
                goto LABEL_122;
              }

              sub_2675EB7EC(v478, &qword_2801CC618, &qword_2676CF520);
              OUTLINED_FUNCTION_91();
              (*(v857 + 8))(v491, v483);
              v488 = v483;
            }

            sub_2675EB7EC(&qword_2801CC618, &qword_2801CC610, &unk_2676D0C10);
            v489 = v869;
            goto LABEL_97;
          }

          sub_2675EB7EC(v565, &qword_2801CC050, &unk_2676D0C20);
          v411 = v855;
LABEL_87:
          v474 = v841;
          OUTLINED_FUNCTION_5_2();
          __swift_storeEnumTagSinglePayload(v475, v476, v477, v411);
          goto LABEL_88;
        }

        v420 = &qword_2801CC168;
        v421 = &unk_2676CF510;
      }

      sub_2675EB7EC(v417, v420, v421);
      goto LABEL_87;
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v273, v274, v275, v191);
  }

  sub_2675EB7EC(v101, &qword_2801CC640, &unk_2676CF550);
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v276 = sub_2676CBE4C();
  v277 = OUTLINED_FUNCTION_67(v276, qword_2801CDC90);
  v278 = sub_2676CC24C();
  if (OUTLINED_FUNCTION_5_7(v278))
  {
    *OUTLINED_FUNCTION_17_3() = 0;
    OUTLINED_FUNCTION_44_0(&dword_2675D4000, v279, v280, "#MailFlowFactory failed to extract DynamicTask, returning noFlow");
    OUTLINED_FUNCTION_2_5();
  }

  v190[3] = v901;
  v190[4] = OUTLINED_FUNCTION_0_13(&qword_2801CC668, &qword_2801CC660, &qword_2676CF578);
  __swift_allocate_boxed_opaque_existential_1(v190);
  sub_2676C9F8C();
LABEL_182:
  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_267614058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC748, &unk_2676CF7E0);
  OUTLINED_FUNCTION_4_1(v7);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  sub_2675F95E4(a1, &v12 - v9, &qword_2801CC748, &unk_2676CF7E0);
  return a5(v10);
}

uint64_t sub_267614120()
{
  OUTLINED_FUNCTION_3_0();
  __swift_project_boxed_opaque_existential_1((*(v0 + 32) + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_deviceStateConnection), *(*(v0 + 32) + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_deviceStateConnection + 24));
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_2676141C4;

  return sub_2675F4568();
}

uint64_t sub_2676141C4()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_8_6();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 48) = v3;

  return MEMORY[0x2822009F8](sub_2676142B8, 0, 0);
}

uint64_t sub_2676142B8()
{
  v1 = v0[6];
  if (v1)
  {
    v0[2] = 0xD000000000000014;
    v0[3] = 0x80000002676D6080;
    v2 = swift_task_alloc();
    *(v2 + 16) = v0 + 2;
    v3 = sub_2676A25A0(sub_2676147E0, v2, v1);
  }

  else
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v4 = sub_2676CBE4C();
    v5 = OUTLINED_FUNCTION_67(v4, qword_2801CDC90);
    v6 = sub_2676CC24C();
    if (OUTLINED_FUNCTION_5_7(v6))
    {
      v7 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_4(v7);
      OUTLINED_FUNCTION_39_0(&dword_2675D4000, v8, v6, "fetchSiriKitAppIdentifiersWithNotificationPreviewRestrictions() returned nil, assuming preview is restricted");
      OUTLINED_FUNCTION_4_6();
    }

    v3 = 1;
  }

  v9 = v0[1];

  return v9(v3);
}

uint64_t sub_26761440C()
{
  sub_267614ADC(*(v0 + 16));

  sub_2675EB7EC(v0 + 32, &qword_2801CC690, &unk_2676CF580);
  v1 = OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_inputParse;
  sub_2676C9EBC();
  OUTLINED_FUNCTION_2_6();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_linkServicesProvider);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_responseFactory);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_readingUtil);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_featureFlags);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_deviceStateConnection);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_privacyDisclosureManager);
  return v0;
}

uint64_t sub_2676144FC()
{
  sub_26761440C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for MailDelegateFlow(uint64_t a1)
{
  result = qword_2801CC5D0;
  if (!qword_2801CC5D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2676145A8(uint64_t a1)
{
  result = sub_2676C9EBC();
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

uint64_t get_enum_tag_for_layout_string_16SiriMailInternal0B12DelegateFlowC5StateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_267614694(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2676146F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_267614740(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_267614794()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_26760747C();
    *v0 = v3;
  }
}

unint64_t sub_267614800()
{
  result = qword_2801CC698;
  if (!qword_2801CC698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC698);
  }

  return result;
}

uint64_t sub_267614854(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC6A8, &unk_2676CF5F0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2676148C4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
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

uint64_t sub_26761495C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1E8, &qword_2676CF570);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2676149CC(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_14_2();
  (*v3)(a2);
  return a2;
}

unint64_t sub_267614A2C(unint64_t result)
{
  switch(result >> 60)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:

      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_267614A64()
{
  result = qword_2801CC740;
  if (!qword_2801CC740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC740);
  }

  return result;
}

unint64_t sub_267614AB8(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t sub_267614AC8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 8)
  {
  }

  return result;
}

unint64_t sub_267614ADC(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t sub_267614AF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267614B3C(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_54_0(v4);
  *v5 = v6;
  v5[1] = sub_267614BF8;
  OUTLINED_FUNCTION_57_0();

  return sub_26760DD20(v7, v8, v9, v10, v2, v3);
}

uint64_t sub_267614BF8()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v1 = *v0;
  OUTLINED_FUNCTION_8_6();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_267614CE0()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_54_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_267614D78()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_54_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t OUTLINED_FUNCTION_0_13(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277D5C1B8];

  return sub_2676148C4(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_4_10(uint64_t a1)
{
  *(v1 - 176) = a1;

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_6_8(unint64_t *a1)
{
  v4 = MEMORY[0x277D5B828];

  return sub_2676148C4(a1, v1, v2, v4);
}

uint64_t OUTLINED_FUNCTION_7_10()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_14_7()
{
  *(v1 - 160) = 0;
  v0[70] = 0u;
  v0[71] = 0u;
  *(v1 - 208) = 0;
  v0[67] = 0u;
  v0[68] = 0u;

  return sub_2676C9B9C();
}

void OUTLINED_FUNCTION_39_0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_43@<X0>(uint64_t a1@<X8>)
{
  v2[127] = v1;
  v2[126] = v5;
  v2[123] = a1;
  v2[121] = v4;
  v2[122] = v3;
}

void OUTLINED_FUNCTION_44_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_45_0()
{

  return sub_2676C981C();
}

uint64_t OUTLINED_FUNCTION_48()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 824);

  return sub_2675DD73C((v0 + 744), v0 + 784);
}

uint64_t *OUTLINED_FUNCTION_56(uint64_t a1)
{
  *(v1 - 104) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 - 136));
}

void OUTLINED_FUNCTION_66_0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_67(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_2676CBE2C();
}

uint64_t OUTLINED_FUNCTION_68(uint64_t a1)
{

  return sub_2676CA3EC();
}

uint64_t OUTLINED_FUNCTION_69@<X0>(uint64_t a1@<X8>)
{

  return sub_2676149CC(v1 + a1, v2 - 136);
}

uint64_t OUTLINED_FUNCTION_70(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

double OUTLINED_FUNCTION_73@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_87()
{
  __swift_destroy_boxed_opaque_existential_1(v0 - 208);

  return __swift_destroy_boxed_opaque_existential_1(v0 - 168);
}

uint64_t OUTLINED_FUNCTION_91()
{

  return sub_2675EB7EC(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_94(uint64_t a1, uint64_t a2)
{

  return sub_2675F95E4(a1, a2, v2, v3);
}

uint64_t *OUTLINED_FUNCTION_95(uint64_t a1)
{
  v1[4] = a1;

  return __swift_allocate_boxed_opaque_existential_1(v1);
}

uint64_t OUTLINED_FUNCTION_96(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2676C937C();
}

uint64_t OUTLINED_FUNCTION_97@<X0>(uint64_t a1@<X8>)
{

  return sub_2676149CC(v1 + 824, v2 + a1);
}

uint64_t OUTLINED_FUNCTION_99@<X0>(uint64_t a1@<X8>)
{

  return sub_2675DD73C((v1 + 784), v2 + a1);
}

uint64_t OUTLINED_FUNCTION_100@<X0>(uint64_t a1@<X8>)
{

  return sub_2676149CC(v1 + 944, v2 + a1);
}

uint64_t OUTLINED_FUNCTION_101(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2675F95E4(v5 - 192, v4 + 984, a3, a4);
}

uint64_t OUTLINED_FUNCTION_102()
{

  return sub_2676149CC(v1 - 136, v0 + 944);
}

uint64_t OUTLINED_FUNCTION_103()
{
  result = __swift_destroy_boxed_opaque_existential_1(v1 - 136);
  *(v1 - 136) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_104(uint64_t a1, uint64_t a2)
{

  return sub_2675F95E4(a1, a2, v2, v3);
}

uint64_t sub_267615530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  v7 = OUTLINED_FUNCTION_4_1(v6);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
  v14 = *(v13 - 8);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v15);
  v17 = &v21 - v16;
  sub_26761578C(a1, a2, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_267616750(v12);
    v18 = 1;
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    (*(v14 + 16))(v10, v17, v13);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v13);
    sub_2676CA3BC();
    (*(v14 + 8))(v17, v13);
    v18 = 0;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC658, &qword_2676D45A0);
  return __swift_storeEnumTagSinglePayload(a3, v18, 1, v19);
}

unint64_t sub_267615740(uint64_t a1, uint64_t a2)
{
  v2 = sub_2676CC50C();

  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26761578C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v296 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC030, &qword_2676CDAA0);
  OUTLINED_FUNCTION_4_1(v5);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_1();
  v295 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_4_1(v8);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9_1();
  v294 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC040, &qword_2676CDAA8);
  OUTLINED_FUNCTION_4_1(v11);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_9_1();
  v293 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC048, &qword_2676CDAB0);
  OUTLINED_FUNCTION_4_1(v14);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_9_1();
  v292 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC050, &unk_2676D0C20);
  OUTLINED_FUNCTION_4_1(v17);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9_1();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC058, &unk_2676D0C50);
  OUTLINED_FUNCTION_4_1(v19);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_9_1();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC060, &qword_2676CDAB8);
  OUTLINED_FUNCTION_4_1(v21);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_9_1();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  OUTLINED_FUNCTION_4_1(v23);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_9_1();
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC780, &qword_2676CF830);
  OUTLINED_FUNCTION_4_1(v27);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_9_1();
  v297 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC788, &qword_2676CF838);
  OUTLINED_FUNCTION_4_1(v30);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v31);
  v33 = &v286 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC790, &qword_2676CF840);
  OUTLINED_FUNCTION_4_1(v34);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v35);
  v37 = &v286 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC798, &qword_2676CF848);
  OUTLINED_FUNCTION_4_1(v38);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v39);
  v41 = &v286 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1E8, &qword_2676CF570);
  OUTLINED_FUNCTION_4_1(v42);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v43);
  v45 = &v286 - v44;

  switch(sub_267615740(a1, a2))
  {
    case 1u:
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2801CBAA0);
      }

      v46 = sub_2676CBE4C();
      __swift_project_value_buffer(v46, qword_2801CDC90);
      v47 = sub_2676CBE2C();
      v48 = sub_2676CC23C();
      v49 = OUTLINED_FUNCTION_12_6(v48);
      v288 = v26;
      if (v49)
      {
        v50 = OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_1_13(v50);
        OUTLINED_FUNCTION_9_9(&dword_2675D4000, v51, v52, "[MailReactiveResolve.getUSOEntity()] Encountered sendMail DI, building corresponding entity");
        OUTLINED_FUNCTION_2_15();
      }

      v290 = v45;
      v291 = v41;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F0, &unk_2676CE100);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC7A0, &qword_2676CF850);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC7A8, &qword_2676CF858);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC7B0, &qword_2676CF860);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v65, v66, v67, v68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC7B8, &qword_2676CF868);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v69, v70, v71, v72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
      v73 = OUTLINED_FUNCTION_4_11();
      __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E0, &qword_2676CDB10);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v77, v78, v79, v80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E8, &qword_2676CDB18);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v81, v82, v83, v84);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
      v85 = OUTLINED_FUNCTION_3_9();
      __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F8, &unk_2676D2AA0);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v89, v90, v91, v92);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC100, &qword_2676CDB28);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v93, v94, v95, v96);
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
      v98 = OUTLINED_FUNCTION_4_11();
      __swift_storeEnumTagSinglePayload(v98, v99, v100, v97);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC110, &qword_2676CDB30);
      v101 = OUTLINED_FUNCTION_3_9();
      __swift_storeEnumTagSinglePayload(v101, v102, v103, v104);
      goto LABEL_17;
    case 2u:
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2801CBAA0);
      }

      v220 = sub_2676CBE4C();
      __swift_project_value_buffer(v220, qword_2801CDC90);
      v221 = sub_2676CBE2C();
      v222 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_12_6(v222))
      {
        v223 = OUTLINED_FUNCTION_17_3();
        v288 = v26;
        OUTLINED_FUNCTION_1_13(v223);
        OUTLINED_FUNCTION_9_9(&dword_2675D4000, v224, v225, "[MailReactiveResolve.getUSOEntity()] Encountered sendMailWithSubjectBody DI, building corresponding entity");
        OUTLINED_FUNCTION_2_15();
      }

      v290 = v45;
      v287 = v37;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F0, &unk_2676CE100);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v226, v227, v228, v229);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC7A0, &qword_2676CF850);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v230, v231, v232, v233);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC7A8, &qword_2676CF858);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v234, v235, v236, v237);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC7B0, &qword_2676CF860);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v238, v239, v240, v241);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC7B8, &qword_2676CF868);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v242, v243, v244, v245);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
      v246 = OUTLINED_FUNCTION_4_11();
      __swift_storeEnumTagSinglePayload(v246, v247, v248, v249);
      v286 = 0x80000002676D69E0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E0, &qword_2676CDB10);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v250, v251, v252, v253);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E8, &qword_2676CDB18);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v254, v255, v256, v257);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
      v289 = v33;
      v258 = OUTLINED_FUNCTION_3_9();
      __swift_storeEnumTagSinglePayload(v258, v259, v260, v261);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F8, &unk_2676D2AA0);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v262, v263, v264, v265);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC100, &qword_2676CDB28);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v266, v267, v268, v269);
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
      v270 = OUTLINED_FUNCTION_3_9();
      __swift_storeEnumTagSinglePayload(v270, v271, v272, v97);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC110, &qword_2676CDB30);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v273, v274, v275, v276);
      OUTLINED_FUNCTION_15_8();
      OUTLINED_FUNCTION_11_9();
      OUTLINED_FUNCTION_6_9();
      v162 = v296;
      OUTLINED_FUNCTION_13_8();
      goto LABEL_23;
    case 3u:
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2801CBAA0);
      }

      v105 = sub_2676CBE4C();
      __swift_project_value_buffer(v105, qword_2801CDC90);
      v106 = sub_2676CBE2C();
      v107 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_12_6(v107))
      {
        v108 = OUTLINED_FUNCTION_17_3();
        v288 = v26;
        OUTLINED_FUNCTION_1_13(v108);
        OUTLINED_FUNCTION_9_9(&dword_2675D4000, v109, v110, "[MailReactiveResolve.getUSOEntity()] Encountered sendMailWithSubject DI, building corresponding entity");
        OUTLINED_FUNCTION_2_15();
      }

      v291 = v41;
      v287 = v37;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F0, &unk_2676CE100);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v111, v112, v113, v114);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC7A0, &qword_2676CF850);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v115, v116, v117, v118);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC7A8, &qword_2676CF858);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v119, v120, v121, v122);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC7B0, &qword_2676CF860);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v123, v124, v125, v126);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC7B8, &qword_2676CF868);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v127, v128, v129, v130);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
      v131 = OUTLINED_FUNCTION_4_11();
      __swift_storeEnumTagSinglePayload(v131, v132, v133, v134);
      v286 = 0x80000002676D69E0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E0, &qword_2676CDB10);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v135, v136, v137, v138);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E8, &qword_2676CDB18);
      v289 = v33;
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v139, v140, v141, v142);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
      v143 = OUTLINED_FUNCTION_3_9();
      __swift_storeEnumTagSinglePayload(v143, v144, v145, v146);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F8, &unk_2676D2AA0);
      v147 = OUTLINED_FUNCTION_4_11();
      __swift_storeEnumTagSinglePayload(v147, v148, v149, v150);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC100, &qword_2676CDB28);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v151, v152, v153, v154);
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v155, v156, v157, v97);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC110, &qword_2676CDB30);
      v158 = OUTLINED_FUNCTION_3_9();
      __swift_storeEnumTagSinglePayload(v158, v159, v160, v161);
      OUTLINED_FUNCTION_15_8();
      OUTLINED_FUNCTION_6_9();
      v162 = v296;
      OUTLINED_FUNCTION_13_8();
      goto LABEL_23;
    case 4u:
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2801CBAA0);
      }

      v163 = sub_2676CBE4C();
      __swift_project_value_buffer(v163, qword_2801CDC90);
      v164 = sub_2676CBE2C();
      v165 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_12_6(v165))
      {
        v166 = OUTLINED_FUNCTION_17_3();
        v288 = v26;
        OUTLINED_FUNCTION_1_13(v166);
        OUTLINED_FUNCTION_9_9(&dword_2675D4000, v167, v168, "[MailReactiveResolve.getUSOEntity()] Encountered sendMailWithBody DI, building corresponding entity");
        OUTLINED_FUNCTION_2_15();
      }

      v290 = v45;
      v291 = v41;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F0, &unk_2676CE100);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v169, v170, v171, v172);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC7A0, &qword_2676CF850);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v173, v174, v175, v176);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC7A8, &qword_2676CF858);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v177, v178, v179, v180);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC7B0, &qword_2676CF860);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v181, v182, v183, v184);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC7B8, &qword_2676CF868);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v185, v186, v187, v188);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
      v189 = OUTLINED_FUNCTION_4_11();
      __swift_storeEnumTagSinglePayload(v189, v190, v191, v192);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E0, &qword_2676CDB10);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v193, v194, v195, v196);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E8, &qword_2676CDB18);
      v289 = v33;
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v197, v198, v199, v200);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
      v201 = OUTLINED_FUNCTION_3_9();
      __swift_storeEnumTagSinglePayload(v201, v202, v203, v204);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F8, &unk_2676D2AA0);
      v205 = OUTLINED_FUNCTION_4_11();
      __swift_storeEnumTagSinglePayload(v205, v206, v207, v208);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC100, &qword_2676CDB28);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v209, v210, v211, v212);
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
      v213 = OUTLINED_FUNCTION_3_9();
      __swift_storeEnumTagSinglePayload(v213, v214, v215, v97);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC110, &qword_2676CDB30);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v216, v217, v218, v219);
      OUTLINED_FUNCTION_11_9();
      OUTLINED_FUNCTION_6_9();
LABEL_17:
      v162 = v296;
      OUTLINED_FUNCTION_13_8();
LABEL_23:
      sub_2676CA80C();
      result = __swift_storeEnumTagSinglePayload(v162, 0, 1, v97);
      break;
    default:
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2801CBAA0);
      }

      v278 = sub_2676CBE4C();
      __swift_project_value_buffer(v278, qword_2801CDC90);
      v279 = sub_2676CBE2C();
      v280 = sub_2676CC23C();
      if (os_log_type_enabled(v279, v280))
      {
        v281 = OUTLINED_FUNCTION_17_3();
        *v281 = 0;
        _os_log_impl(&dword_2675D4000, v279, v280, "[MailReactiveResolve.getUSOEntity()] Encountered unsupported DI ID, returning nil", v281, 2u);
        MEMORY[0x26D5FEA80](v281, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
      OUTLINED_FUNCTION_5_2();

      result = __swift_storeEnumTagSinglePayload(v282, v283, v284, v285);
      break;
  }

  return result;
}

uint64_t sub_267616750(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void OUTLINED_FUNCTION_2_15()
{

  JUMPOUT(0x26D5FEA80);
}

void OUTLINED_FUNCTION_9_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL OUTLINED_FUNCTION_12_6(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t getEnumTagSinglePayload for Features(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Features(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267616A54()
{
  result = qword_2801CC7C0;
  if (!qword_2801CC7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC7C0);
  }

  return result;
}

const char *sub_267616AA8(unsigned __int8 a1)
{
  v1 = "Link";
  if (a1 != 2)
  {
    v1 = "SiriMail";
  }

  if (a1 - 3 >= 2)
  {
    return v1;
  }

  else
  {
    return "Mail";
  }
}

const char *sub_267616AF4(char a1)
{
  result = "SiriX";
  switch(a1)
  {
    case 1:
      result = "Encore";
      break;
    case 2:
      result = "viewActions";
      break;
    case 3:
      result = "CatchUp";
      break;
    case 4:
      result = "ClassCData";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267616BA4(unsigned __int8 a1)
{
  sub_2676CC64C();
  MEMORY[0x26D5FE320](a1);
  return sub_2676CC67C();
}

uint64_t sub_267616C08(uint64_t a1)
{
  v2 = *v1;
  sub_2676CC64C();
  MEMORY[0x26D5FE320](v2);
  return sub_2676CC67C();
}

uint64_t sub_267616C5C()
{
  v0 = *MEMORY[0x277D06C60];
  v1 = objc_allocWithZone(MEMORY[0x277D06E58]);
  v2 = sub_267616D18(v0, 1, 0, 0);
  v3 = [v2 isEnabled];

  if (v3 && EMIsGreymatterAvailable())
  {
    v7 = &type metadata for Features;
    v8 = sub_267614A64();
    v6[0] = 3;
    v4 = sub_2676CA04C();
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

id sub_267616D18(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v10[4] = a3;
    v10[5] = a4;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_267616DE4;
    v10[3] = &block_descriptor_0;
    v7 = _Block_copy(v10);
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 initWithUserDefaultKey:a1 keyRepresentsDisabled:a2 & 1 handler:v7];
  _Block_release(v7);

  return v8;
}

uint64_t sub_267616DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = sub_2676CBF6C();
  v7 = v6;

  v4(v5, v7, a3);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_267616E78@<X0>(char a1@<W0>, char a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, void *a10)
{
  v379 = a9;
  v377 = a7;
  v378 = a8;
  v375 = a5;
  v376 = a6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1E8, &qword_2676CF570);
  OUTLINED_FUNCTION_4_1(v14);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_9_1();
  v384 = v16;
  OUTLINED_FUNCTION_7_3();
  sub_2676CAB9C();
  OUTLINED_FUNCTION_5_11();
  v385 = v17;
  v386 = v18;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4();
  v383 = v19;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_24_1();
  v354 = v21;
  v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC6F8, &qword_2676CF6C0);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_4();
  v360 = v23;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v24);
  v358 = &v345 - v25;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v26);
  v357 = (&v345 - v27);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_24_1();
  v359 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC608, &unk_2676CF500);
  v31 = OUTLINED_FUNCTION_4_1(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_4();
  v369 = v32;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_24_1();
  v353 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC6F0, "м");
  OUTLINED_FUNCTION_5_11();
  v364 = v36;
  v365 = v35;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_9_1();
  v356 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC640, &unk_2676CF550);
  OUTLINED_FUNCTION_4_1(v39);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_9_1();
  v374 = v41;
  v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC648, &qword_2676CF990);
  OUTLINED_FUNCTION_5_11();
  v368 = v42;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_9_1();
  v381 = v44;
  OUTLINED_FUNCTION_7_3();
  v352 = sub_2676CA70C();
  OUTLINED_FUNCTION_5_11();
  v363 = v45;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_3_2();
  v348 = v48 - v47;
  v351 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC7D8, &qword_2676CF998);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_9_1();
  v367 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC7E0, &qword_2676CF9A0);
  v52 = OUTLINED_FUNCTION_4_1(v51);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_4();
  v350 = v53;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v54);
  v362 = &v345 - v55;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_24_1();
  v372 = v57;
  OUTLINED_FUNCTION_7_3();
  v58 = sub_2676CA61C();
  OUTLINED_FUNCTION_5_11();
  v370 = v59;
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_3_2();
  v349 = v62 - v61;
  v366 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC7E8, &qword_2676CF9A8);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_9_1();
  v371 = v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC7F0, &unk_2676CF9B0);
  v66 = OUTLINED_FUNCTION_4_1(v65);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_4();
  v361 = v67;
  OUTLINED_FUNCTION_12_0();
  v69 = MEMORY[0x28223BE20](v68);
  v71 = &v345 - v70;
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_24_1();
  v382 = v72;
  v73 = OUTLINED_FUNCTION_7_3();
  v74 = type metadata accessor for Signpost.OpenSignpost(v73);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_3_2();
  v78 = v77 - v76;
  v415[0] = a1;
  v415[1] = a2;
  v373 = a3;
  v415[2] = a3;
  sub_2675F95E4(a4, &v416, &qword_2801CC158, &qword_2676CDDA0);
  if (qword_2801CBAA8 != -1)
  {
    swift_once();
  }

  v79 = qword_2801D3F18;
  sub_2676CBE0C();
  sub_2676CC29C();
  v387 = v79;
  sub_2676CBDFC();
  v80 = *(v74 + 20);
  v417 = v78;
  v81 = v78 + v80;
  *v81 = "FindActingFlowForParse";
  *(v81 + 8) = 22;
  *(v81 + 16) = 2;
  sub_2675F95E4(v415, v412, &qword_2801CC690, &unk_2676CF580);
  if (v413)
  {
    sub_267619E0C((v412 + 8), v414);
    sub_2675F95E4(v415, v412, &qword_2801CC690, &unk_2676CF580);
    v82 = LOBYTE(v412[0]);
    sub_2675EB7EC(v412 + 8, &qword_2801CC158, &qword_2676CDDA0);
    if (v82 == 1)
    {
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_1_8();
        swift_once();
      }

      v83 = sub_2676CBE4C();
      v346 = __swift_project_value_buffer(v83, qword_2801CDC90);
      v84 = sub_2676CBE2C();
      v85 = sub_2676CC23C();
      v86 = OUTLINED_FUNCTION_7_11();
      v88 = os_log_type_enabled(v86, v87);
      v89 = v372;
      v90 = v58;
      if (v88)
      {
        OUTLINED_FUNCTION_6_10();
        v91 = swift_slowAlloc();
        *v91 = 0;
        _os_log_impl(&dword_2675D4000, v84, v85, "#MailFlowFactory returning ReadMailActingFlow", v91, 2u);
        OUTLINED_FUNCTION_5_12();
        MEMORY[0x26D5FEA80]();
      }

      v92 = [objc_opt_self() sharedInstance];
      LODWORD(v347) = [v92 isLocked];

      sub_2675EB89C(v414, v412);
      sub_2676CA5EC();
      OUTLINED_FUNCTION_21_4();
      v93 = swift_dynamicCast();
      v94 = v371;
      v95 = v382;
      if (v93)
      {

        HIDWORD(v347) = 1;
      }

      else
      {
        sub_2675EB89C(v414, v412);
        sub_2676CA59C();
        OUTLINED_FUNCTION_21_4();
        HIDWORD(v347) = swift_dynamicCast();
        if (HIDWORD(v347))
        {
        }
      }

      v373 &= 1u;
      sub_2675EB89C(v414, v412);
      OUTLINED_FUNCTION_21_4();
      if ((swift_dynamicCast() & 1) == 0)
      {
        v119 = 0;
        v120 = v380;
        goto LABEL_53;
      }

      v117 = *&v411[0];

      sub_2676CA5CC();
      v345 = v117;

      if (*&v412[0] && (v118 = sub_2676CA52C(), , v118))
      {
        sub_2676CA60C();
      }

      else
      {
        OUTLINED_FUNCTION_5_2();
        __swift_storeEnumTagSinglePayload(v121, v122, v123, v90);
      }

      (*(v370 + 104))(v71, *MEMORY[0x277D5EB00], v90);
      __swift_storeEnumTagSinglePayload(v71, 0, 1, v90);
      v124 = *(v366 + 48);
      OUTLINED_FUNCTION_28_2(v95);
      sub_2675F95E4(v71, v94 + v124, &qword_2801CC7F0, &unk_2676CF9B0);
      OUTLINED_FUNCTION_18_3(v94);
      if (v127)
      {
        OUTLINED_FUNCTION_36_2(v71);
        OUTLINED_FUNCTION_36_2(v95);
        OUTLINED_FUNCTION_18_3(v94 + v124);
        if (v127)
        {
          sub_2675EB7EC(v94, &qword_2801CC7F0, &unk_2676CF9B0);
          v125 = v381;
LABEL_52:

          v119 = 1;
          v120 = v380;
          goto LABEL_54;
        }
      }

      else
      {
        v126 = v361;
        sub_2675F95E4(v94, v361, &qword_2801CC7F0, &unk_2676CF9B0);
        OUTLINED_FUNCTION_18_3(v94 + v124);
        if (!v127)
        {
          v145 = v370;
          v146 = v349;
          (*(v370 + 32))(v349, v94 + v124, v90);
          sub_267619E1C(&qword_2801CC800, MEMORY[0x277D5EB08], MEMORY[0x277D5EB10]);
          LODWORD(v366) = sub_2676CBF1C();
          v147 = *(v145 + 8);
          v95 = v145 + 8;
          v147(v146, v90);
          sub_2675EB7EC(v71, &qword_2801CC7F0, &unk_2676CF9B0);
          sub_2675EB7EC(v382, &qword_2801CC7F0, &unk_2676CF9B0);
          v147(v361, v90);
          sub_2675EB7EC(v94, &qword_2801CC7F0, &unk_2676CF9B0);
          v125 = v381;
          if (v366)
          {
            goto LABEL_52;
          }

          goto LABEL_38;
        }

        OUTLINED_FUNCTION_36_2(v71);
        OUTLINED_FUNCTION_36_2(v382);
        (*(v370 + 8))(v126, v90);
      }

      sub_2675EB7EC(v94, &qword_2801CC7E8, &qword_2676CF9A8);
LABEL_38:
      sub_2676CA5CC();
      v120 = v380;
      if (*&v412[0] && (v128 = sub_2676CA4CC(), , v128))
      {
        sub_2676CA6FC();

        v129 = v352;
      }

      else
      {
        OUTLINED_FUNCTION_5_2();
        v129 = v352;
        __swift_storeEnumTagSinglePayload(v130, v131, v132, v352);
      }

      v95 = v362;
      (*(v363 + 104))(v362, *MEMORY[0x277D5F040], v129);
      __swift_storeEnumTagSinglePayload(v95, 0, 1, v129);
      v133 = *(v351 + 48);
      v134 = v89;
      v135 = v367;
      sub_2675F95E4(v134, v367, &qword_2801CC7E0, &qword_2676CF9A0);
      v136 = v135;
      sub_2675F95E4(v95, v135 + v133, &qword_2801CC7E0, &qword_2676CF9A0);
      OUTLINED_FUNCTION_21_3(v135, 1, v129);
      if (!v127)
      {
        v140 = v135;
        v141 = v350;
        sub_2675F95E4(v140, v350, &qword_2801CC7E0, &qword_2676CF9A0);
        OUTLINED_FUNCTION_21_3(v136 + v133, 1, v129);
        if (!v142)
        {
          v148 = v363;
          v149 = v348;
          (*(v363 + 32))(v348, v136 + v133, v129);
          sub_267619E1C(&qword_2801CC7F8, MEMORY[0x277D5F058], MEMORY[0x277D5F060]);
          v119 = sub_2676CBF1C();

          v150 = *(v148 + 8);
          v95 = v148 + 8;
          v150(v149, v129);
          OUTLINED_FUNCTION_29_3(v362);
          v151 = OUTLINED_FUNCTION_25_4();
          sub_2675EB7EC(v151, v152, &qword_2676CF9A0);
          v150(v350, v129);
          OUTLINED_FUNCTION_29_3(v367);
          goto LABEL_53;
        }

        OUTLINED_FUNCTION_29_3(v362);
        v143 = OUTLINED_FUNCTION_25_4();
        v138 = v367;
        sub_2675EB7EC(v143, v144, &qword_2676CF9A0);
        (*(v363 + 8))(v141, v129);
LABEL_50:
        sub_2675EB7EC(v138, &qword_2801CC7D8, &qword_2676CF998);
        v119 = 0;
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_29_3(v95);
      v137 = OUTLINED_FUNCTION_25_4();
      v138 = v367;
      sub_2675EB7EC(v137, v139, &qword_2676CF9A0);
      OUTLINED_FUNCTION_21_3(v138 + v133, 1, v129);
      if (!v127)
      {
        goto LABEL_50;
      }

      sub_2675EB7EC(v138, &qword_2801CC7E0, &qword_2676CF9A0);
      v119 = 1;
LABEL_53:
      v125 = v381;
LABEL_54:
      v382 = a10;
      sub_2676371E0();
      LODWORD(v372) = v119;
      if (v153)
      {
        v154 = sub_2676CA77C();

        v155 = v374;
        sub_267698EA0(v154);

        OUTLINED_FUNCTION_21_3(v155, 1, v120);
        if (!v127)
        {
          v156 = OUTLINED_FUNCTION_25_4();
          v157(v156);
          v158 = v369;
          MEMORY[0x26D5FC0E0](0x636E657265666572, 0xE900000000000065, v120);
          v159 = v158;
          v160 = v365;
          OUTLINED_FUNCTION_21_3(v159, 1, v365);
          if (v127)
          {
            v245 = v353;
            MEMORY[0x26D5FC0E0](0x797469746E65, 0xE600000000000000, v120);
            OUTLINED_FUNCTION_18_3(v369);
            if (!v127)
            {
              sub_2675EB7EC(v369, &qword_2801CC608, &unk_2676CF500);
            }
          }

          else
          {
            v245 = v353;
            (*(v364 + 32))(v353, v369, v160);
            __swift_storeEnumTagSinglePayload(v245, 0, 1, v160);
          }

          OUTLINED_FUNCTION_18_3(v245);
          if (!v127)
          {
            (*(v364 + 32))(v356, v245, v160);
            v246 = v355;
            v247 = v359;
            sub_2676325D4(v359 + *(v355 + 128), v248, v249, v250, v251, v252, v253, v254, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356);
            *v247 = v255;
            *(v247 + 8) = v256;
            *(v247 + 16) = v257;
            LODWORD(v371) = v258;
            *(v247 + 24) = v258;
            LODWORD(v375) = v258 >> 8;
            *(v247 + 25) = BYTE1(v258);
            LODWORD(v374) = HIWORD(v258);
            *(v247 + 26) = BYTE2(v258);
            *(v247 + 27) = HIBYTE(v258);
            sub_2675E5D38(v376, v412);
            sub_2675E5D38(v377, v411);
            sub_2675E5D38(v378, v409);
            v259 = v357;
            OUTLINED_FUNCTION_28_2(v247);
            v384 = *v259;

            v260 = v358;
            OUTLINED_FUNCTION_28_2(v247);

            v261 = *(v260 + 1);
            v377 = *(v260 + 2);
            v378 = v261;
            sub_2675F95E4(v247, v360, &qword_2801CC6F8, &qword_2676CF6C0);

            v383 = *(v246 + 128);
            v262 = v354;
            sub_2676CAB8C();
            __swift_mutable_project_boxed_opaque_existential_1(v409, v410);
            OUTLINED_FUNCTION_41_0();
            v376 = v263;
            OUTLINED_FUNCTION_5_11();
            MEMORY[0x28223BE20](v264);
            OUTLINED_FUNCTION_3_2();
            v267 = (v266 - v265);
            (*(v268 + 16))(v266 - v265);
            v269 = *v267;
            v270 = type metadata accessor for ReadingUtil();
            v408 = &off_2878AE2F8;
            v407 = v270;
            v406[0] = v269;
            v271 = v385;
            v404 = v385;
            v405 = &off_2878AD4E0;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v403);
            v273 = v386;
            (*(v386 + 16))(boxed_opaque_existential_1, v262, v271);
            v401 = &type metadata for MailFeatureFlags;
            v402 = &off_2878ADBB0;
            type metadata accessor for ReadMailActingFlow(0);
            OUTLINED_FUNCTION_20_4();
            v370 = v274;
            v275 = swift_allocObject();
            __swift_mutable_project_boxed_opaque_existential_1(v406, v407);
            OUTLINED_FUNCTION_41_0();
            v369 = v276;
            OUTLINED_FUNCTION_5_11();
            MEMORY[0x28223BE20](v277);
            OUTLINED_FUNCTION_3_2();
            v279 = OUTLINED_FUNCTION_33_3(v278);
            v280(v279);
            __swift_mutable_project_boxed_opaque_existential_1(v403, v404);
            OUTLINED_FUNCTION_41_0();
            v367 = v281;
            OUTLINED_FUNCTION_5_11();
            MEMORY[0x28223BE20](v282);
            OUTLINED_FUNCTION_3_2();
            v284 = OUTLINED_FUNCTION_11_10(v283);
            v285(v284);
            __swift_mutable_project_boxed_opaque_existential_1(v400, &type metadata for MailFeatureFlags);
            v286 = *v246;
            v398 = v270;
            v399 = &off_2878AE2F8;
            *&v397 = v286;
            v395 = v271;
            v396 = &off_2878AD4E0;
            v287 = __swift_allocate_boxed_opaque_existential_1(&v394);
            (*(v273 + 32))(v287, v119, v271);
            v392 = &type metadata for MailFeatureFlags;
            v393 = &off_2878ADBB0;
            *(v275 + 16) = xmmword_2676CF3C0;
            *(v275 + 32) = MEMORY[0x277D84F90];
            *(v275 + 48) = 0;
            sub_2676CB9FC();
            OUTLINED_FUNCTION_9_10();
            sub_267619E1C(v288, v289, MEMORY[0x277D5C7D0]);
            sub_2676C97BC();
            sub_2676C8C8C();
            OUTLINED_FUNCTION_5_2();
            __swift_storeEnumTagSinglePayload(v290, v291, v292, v293);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F8, &qword_2676CEBA0);
            OUTLINED_FUNCTION_5_2();
            __swift_storeEnumTagSinglePayload(v294, v295, v296, v297);
            sub_2676C9ECC();
            v298 = v389;
            v299 = v390;
            v300 = __swift_project_boxed_opaque_existential_1(v388, v389);
            v301 = v298;
            v302 = v300;
            sub_267691338(v301, v299);
            OUTLINED_FUNCTION_37_1();
            if ((v302 & v347 & 1) != 0 && (v389 = &type metadata for Features, v303 = sub_267614A64(), OUTLINED_FUNCTION_35_1(v303), OUTLINED_FUNCTION_37_1(), (v302 & 1) == 0))
            {
              v313 = sub_2676CBE2C();
              v314 = sub_2676CC23C();
              v315 = OUTLINED_FUNCTION_7_11();
              v317 = os_log_type_enabled(v315, v316);
              v304 = v372;
              if (v317)
              {
                OUTLINED_FUNCTION_6_10();
                v318 = swift_slowAlloc();
                OUTLINED_FUNCTION_34_2(v318);
                OUTLINED_FUNCTION_17_8(&dword_2675D4000, v319, v314, "#ReadMailActingFlow user is in the car, their device is locked, and Mail data is not Class C - we cannot read emails.");
                OUTLINED_FUNCTION_5_12();
                MEMORY[0x26D5FEA80]();
              }

              v320 = OUTLINED_FUNCTION_12_7();
              v321(v320);
              v310 = 0x9000000000000000;
              v311 = v374;
              v312 = v371;
              v305 = v375;
            }

            else
            {
              v304 = v372;
              v305 = v375;
              if (!*(v384 + 16) && ((v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F0, &unk_2676CE100), OUTLINED_FUNCTION_21_3(v360 + v383, 1, v306), v127) ? (v307 = v305 == 2) : (v307 = 0), v307))
              {
                __swift_project_boxed_opaque_existential_1(v391, v392);
                v322 = sub_267616C5C();
                v311 = v374;
                v312 = v371;
                if ((v322 & 1) != 0 && ((v304 & 1) != 0 || sub_2676632C4(v378, v377) && (v311 == 2 ? (v331 = v312 == 2) : (v331 = 0), v331 && (OUTLINED_FUNCTION_21_3(v360 + v383, 1, v306), v127))))
                {
                  v323 = sub_2676CBE2C();
                  v324 = sub_2676CC23C();
                  v325 = OUTLINED_FUNCTION_7_11();
                  if (os_log_type_enabled(v325, v326))
                  {
                    OUTLINED_FUNCTION_6_10();
                    v327 = swift_slowAlloc();
                    OUTLINED_FUNCTION_34_2(v327);
                    OUTLINED_FUNCTION_17_8(&dword_2675D4000, v328, v324, "#ReadMailActingFlow user asked for general inbox read or general summary and CatchUp is enabled, read their highlights first");
                    v305 = v375;
                    OUTLINED_FUNCTION_5_12();
                    MEMORY[0x26D5FEA80]();
                  }

                  v310 = 0x9000000000000018;

                  v329 = OUTLINED_FUNCTION_12_7();
                  v330(v329);
                }

                else
                {
                  v332 = OUTLINED_FUNCTION_12_7();
                  v333(v332);
                  OUTLINED_FUNCTION_82();
                  v334 = swift_allocObject();
                  *(v334 + 16) = 0xF000000000000007;
                  v310 = v334 | 0x1000000000000000;
                }
              }

              else
              {
                v308 = OUTLINED_FUNCTION_12_7();
                v309(v308);
                v310 = 0x9000000000000008;
                v311 = v374;
                v312 = v371;
              }
            }

            *(v275 + 40) = v310;
            v335 = *(v355 + 128);
            *(v275 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_isRequestToSummarize) = v304 & 1;
            *(v275 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_senderInput) = v384;
            v336 = (v275 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_subjectInput);
            v337 = v377;
            *v336 = v378;
            v336[1] = v337;
            *(v275 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_isReadInput) = v312;
            *(v275 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_isNewInput) = v305;
            *(v275 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_isRequestToRead) = BYTE4(v347);
            v338 = 0x7A6972616D6D7553;
            if ((v304 & 1) == 0)
            {
              v338 = 0x6C69614D64616552;
            }

            v386 = v338;
            v339 = v360;
            v340 = v383;
            sub_2675F95E4(v360 + v383, v275 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_dateTimeInput, &qword_2801CC1E8, &qword_2676CF570);
            *(v275 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_isMostRecent) = v311;
            sub_2675DD73C(&v394, v275 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_dateTimeResolver);
            sub_2675DD73C(v412, v275 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_linkServicesProvider);
            sub_2675DD73C(v411, v275 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_responseFactory);
            sub_2675DD73C(&v397, v275 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_readingUtil);
            v341 = v382;
            *(v275 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_globals) = v382;
            sub_2675E5D38(v391, v275 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_featureFlags);
            *(v275 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_hasExactSpanMatch) = v373;
            v342 = v341;
            __swift_destroy_boxed_opaque_existential_1(v391);
            sub_2675EB7EC(v339 + v340, &qword_2801CC1E8, &qword_2676CF570);
            __swift_destroy_boxed_opaque_existential_1(v400);
            __swift_destroy_boxed_opaque_existential_1(v403);
            __swift_destroy_boxed_opaque_existential_1(v406);
            __swift_destroy_boxed_opaque_existential_1(v409);
            sub_2675EB7EC(&v358[v335], &qword_2801CC1E8, &qword_2676CF570);
            sub_2675EB7EC(v357 + v335, &qword_2801CC1E8, &qword_2676CF570);
            *&v412[0] = v275;
            OUTLINED_FUNCTION_8_13();
            sub_267619E1C(v343, v344, &unk_2676D12C8);
            sub_2676C943C();

            sub_2675EB7EC(v359, &qword_2801CC6F8, &qword_2676CF6C0);
            (*(v364 + 8))(v356, v365);
            (*(v368 + 8))(v381, v380);
LABEL_73:
            __swift_destroy_boxed_opaque_existential_1(v414);
            sub_2676CC28C();
            v244 = v417;
            sub_2676CBDFC();
            sub_2675DE628(v244);
            return sub_2675EB7EC(v415, &qword_2801CC690, &unk_2676CF580);
          }

          (*(v368 + 8))(v125, v120);
          v164 = &qword_2801CC608;
          v165 = &unk_2676CF500;
          v166 = v245;
LABEL_62:
          sub_2675EB7EC(v166, v164, v165);
          sub_2675E5D38(v376, v412);
          sub_2675E5D38(v377, v411);
          sub_2675E5D38(v378, v409);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F0, &unk_2676CE100);
          OUTLINED_FUNCTION_5_2();
          __swift_storeEnumTagSinglePayload(v167, v168, v169, v170);
          v171 = v383;
          sub_2676CAB8C();
          __swift_mutable_project_boxed_opaque_existential_1(v409, v410);
          OUTLINED_FUNCTION_41_0();
          v381 = v172;
          OUTLINED_FUNCTION_5_11();
          MEMORY[0x28223BE20](v173);
          OUTLINED_FUNCTION_3_2();
          v176 = (v175 - v174);
          (*(v177 + 16))(v175 - v174);
          v178 = *v176;
          v179 = type metadata accessor for ReadingUtil();
          v408 = &off_2878AE2F8;
          v407 = v179;
          v406[0] = v178;
          v180 = v385;
          v404 = v385;
          v405 = &off_2878AD4E0;
          v181 = __swift_allocate_boxed_opaque_existential_1(v403);
          v182 = v386;
          (*(v386 + 16))(v181, v171, v180);
          v401 = &type metadata for MailFeatureFlags;
          v402 = &off_2878ADBB0;
          type metadata accessor for ReadMailActingFlow(0);
          OUTLINED_FUNCTION_20_4();
          v380 = v183;
          v184 = swift_allocObject();
          __swift_mutable_project_boxed_opaque_existential_1(v406, v407);
          OUTLINED_FUNCTION_41_0();
          v378 = v185;
          OUTLINED_FUNCTION_5_11();
          MEMORY[0x28223BE20](v186);
          OUTLINED_FUNCTION_3_2();
          v188 = OUTLINED_FUNCTION_11_10(v187);
          v189(v188);
          __swift_mutable_project_boxed_opaque_existential_1(v403, v404);
          OUTLINED_FUNCTION_41_0();
          v377 = v190;
          OUTLINED_FUNCTION_5_11();
          MEMORY[0x28223BE20](v191);
          OUTLINED_FUNCTION_3_2();
          v193 = OUTLINED_FUNCTION_30_3(v192);
          v194(v193);
          __swift_mutable_project_boxed_opaque_existential_1(v400, &type metadata for MailFeatureFlags);
          v195 = *v119;
          v398 = v179;
          v399 = &off_2878AE2F8;
          *&v397 = v195;
          v395 = v180;
          v396 = &off_2878AD4E0;
          v196 = __swift_allocate_boxed_opaque_existential_1(&v394);
          (*(v182 + 32))(v196, v95, v180);
          v392 = &type metadata for MailFeatureFlags;
          v393 = &off_2878ADBB0;
          *(v184 + 16) = xmmword_2676CF3C0;
          v197 = MEMORY[0x277D84F90];
          *(v184 + 32) = MEMORY[0x277D84F90];
          *(v184 + 48) = 0;
          sub_2676CB9FC();
          OUTLINED_FUNCTION_9_10();
          sub_267619E1C(v198, v199, MEMORY[0x277D5C7D0]);
          sub_2676C97BC();
          sub_2676C8C8C();
          OUTLINED_FUNCTION_5_2();
          __swift_storeEnumTagSinglePayload(v200, v201, v202, v203);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F8, &qword_2676CEBA0);
          OUTLINED_FUNCTION_5_2();
          __swift_storeEnumTagSinglePayload(v204, v205, v206, v207);
          sub_2676C9ECC();
          v208 = v389;
          v209 = v390;
          v210 = __swift_project_boxed_opaque_existential_1(v388, v389);
          v211 = v208;
          v212 = v210;
          sub_267691338(v211, v209);
          OUTLINED_FUNCTION_37_1();
          if ((v212 & v347 & 1) != 0 && (v389 = &type metadata for Features, v213 = sub_267614A64(), OUTLINED_FUNCTION_35_1(v213), OUTLINED_FUNCTION_37_1(), (v212 & 1) == 0))
          {
            v228 = sub_2676CBE2C();
            v229 = sub_2676CC23C();
            v230 = OUTLINED_FUNCTION_7_11();
            v232 = os_log_type_enabled(v230, v231);
            v215 = v372;
            if (v232)
            {
              OUTLINED_FUNCTION_6_10();
              v233 = swift_slowAlloc();
              OUTLINED_FUNCTION_34_2(v233);
              OUTLINED_FUNCTION_17_8(&dword_2675D4000, v234, v229, "#ReadMailActingFlow user is in the car, their device is locked, and Mail data is not Class C - we cannot read emails.");
              OUTLINED_FUNCTION_5_12();
              MEMORY[0x26D5FEA80]();
            }

            v235 = OUTLINED_FUNCTION_22_3();
            v236(v235);
            v222 = 0x9000000000000000;
          }

          else
          {
            __swift_project_boxed_opaque_existential_1(v391, v392);
            v214 = sub_267616C5C();
            v215 = v372;
            if (v214 & v372)
            {
              v216 = sub_2676CBE2C();
              v217 = sub_2676CC23C();
              v218 = OUTLINED_FUNCTION_7_11();
              if (os_log_type_enabled(v218, v219))
              {
                OUTLINED_FUNCTION_6_10();
                v220 = swift_slowAlloc();
                OUTLINED_FUNCTION_34_2(v220);
                OUTLINED_FUNCTION_17_8(&dword_2675D4000, v221, v217, "#ReadMailActingFlow user asked for general inbox read or general summary and CatchUp is enabled, read their highlights first");
                OUTLINED_FUNCTION_5_12();
                MEMORY[0x26D5FEA80]();
              }

              v222 = 0x9000000000000018;

              v223 = OUTLINED_FUNCTION_22_3();
              v224(v223);
            }

            else
            {
              v225 = OUTLINED_FUNCTION_22_3();
              v226(v225);
              OUTLINED_FUNCTION_82();
              v227 = swift_allocObject();
              *(v227 + 16) = 0xF000000000000007;
              v222 = v227 | 0x1000000000000000;
            }
          }

          *(v184 + 40) = v222;
          *(v184 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_isRequestToSummarize) = v215 & 1;
          *(v184 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_senderInput) = v197;
          v237 = (v184 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_subjectInput);
          *v237 = 0;
          v237[1] = 0;
          *(v184 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_isReadInput) = 0;
          *(v184 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_isNewInput) = 2;
          *(v184 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_isRequestToRead) = BYTE4(v347);
          sub_2675F95E4(v384, v184 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_dateTimeInput, &qword_2801CC1E8, &qword_2676CF570);
          *(v184 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_isMostRecent) = 2;
          sub_2675DD73C(&v394, v184 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_dateTimeResolver);
          sub_2675DD73C(v412, v184 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_linkServicesProvider);
          sub_2675DD73C(v411, v184 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_responseFactory);
          sub_2675DD73C(&v397, v184 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_readingUtil);
          v238 = v382;
          *(v184 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_globals) = v382;
          sub_2675E5D38(v391, v184 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_featureFlags);
          *(v184 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_hasExactSpanMatch) = v373;
          v239 = v238;
          __swift_destroy_boxed_opaque_existential_1(v391);
          v240 = OUTLINED_FUNCTION_25_4();
          sub_2675EB7EC(v240, v241, &qword_2676CF570);
          __swift_destroy_boxed_opaque_existential_1(v400);
          __swift_destroy_boxed_opaque_existential_1(v403);
          __swift_destroy_boxed_opaque_existential_1(v406);
          __swift_destroy_boxed_opaque_existential_1(v409);
          *&v412[0] = v184;
          OUTLINED_FUNCTION_8_13();
          sub_267619E1C(v242, v243, &unk_2676D12C8);
          sub_2676C943C();

          goto LABEL_73;
        }
      }

      else
      {
        v155 = v374;
        OUTLINED_FUNCTION_5_2();
        __swift_storeEnumTagSinglePayload(v161, v162, v163, v120);
      }

      v164 = &qword_2801CC640;
      v165 = &unk_2676CF550;
      v166 = v155;
      goto LABEL_62;
    }

    __swift_destroy_boxed_opaque_existential_1(v414);
  }

  else
  {
    sub_2675EB7EC(v412 + 8, &qword_2801CC158, &qword_2676CDDA0);
  }

  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_1_8();
    swift_once();
  }

  v96 = sub_2676CBE4C();
  __swift_project_value_buffer(v96, qword_2801CDC90);
  sub_2675F95E4(v415, v412, &qword_2801CC690, &unk_2676CF580);
  v97 = sub_2676CBE2C();
  v98 = sub_2676CC23C();
  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v409[0] = v100;
    *v99 = 136315138;
    sub_2675F95E4(v412, v411, &qword_2801CC690, &unk_2676CF580);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC158, &qword_2676CDDA0);
    v101 = sub_2676CBFBC();
    v103 = v102;
    sub_2675EB7EC(v412, &qword_2801CC690, &unk_2676CF580);
    v104 = sub_2676B0B84(v101, v103, v409);

    *(v99 + 4) = v104;
    _os_log_impl(&dword_2675D4000, v97, v98, "#MailFlowFactory received task we don't support: %s", v99, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v100);
    OUTLINED_FUNCTION_5_12();
    MEMORY[0x26D5FEA80]();
    OUTLINED_FUNCTION_5_12();
    MEMORY[0x26D5FEA80]();
  }

  else
  {

    sub_2675EB7EC(v412, &qword_2801CC690, &unk_2676CF580);
  }

  v105 = v417;
  v106 = sub_2676CBE2C();
  sub_2676CC23C();
  v107 = OUTLINED_FUNCTION_7_11();
  if (os_log_type_enabled(v107, v108))
  {
    OUTLINED_FUNCTION_6_10();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_31_2();
    _os_log_impl(v109, v110, v111, v112, v113, v114);
    OUTLINED_FUNCTION_5_12();
    MEMORY[0x26D5FEA80]();
  }

  sub_2675FD730();
  swift_allocError();
  *v115 = 0;
  v115[1] = 0;
  swift_willThrow();
  sub_2676CC28C();
  sub_2676CBDFC();
  sub_2675DE628(v105);
  return sub_2675EB7EC(v415, &qword_2801CC690, &unk_2676CF580);
}

uint64_t static MailFlowFactory.buildFlowResult(parse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2676C9EBC();
  OUTLINED_FUNCTION_5_11();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_2();
  v10 = v9 - v8;
  v106 = &type metadata for Features;
  v11 = sub_267614A64();
  v107 = v11;
  LOBYTE(v105) = 0;
  v12 = sub_2676CA04C();
  __swift_destroy_boxed_opaque_existential_1(&v105);
  if ((v12 & 1) == 0)
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_1_8();
      swift_once();
    }

    v57 = sub_2676CBE4C();
    __swift_project_value_buffer(v57, qword_2801CDC90);
    v58 = sub_2676CBE2C();
    sub_2676CC23C();
    v59 = OUTLINED_FUNCTION_7_11();
    if (!os_log_type_enabled(v59, v60))
    {
      goto LABEL_20;
    }

LABEL_19:
    OUTLINED_FUNCTION_6_10();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_31_2();
    _os_log_impl(v64, v65, v66, v67, v68, v69);
    OUTLINED_FUNCTION_5_12();
    MEMORY[0x26D5FEA80]();
LABEL_20:

    return sub_2676C95EC();
  }

  v106 = &type metadata for Features;
  v107 = v11;
  LOBYTE(v105) = 1;
  v13 = sub_2676CA04C();
  __swift_destroy_boxed_opaque_existential_1(&v105);
  if ((v13 & 1) == 0)
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_1_8();
      swift_once();
    }

    v61 = sub_2676CBE4C();
    __swift_project_value_buffer(v61, qword_2801CDC90);
    v58 = sub_2676CBE2C();
    sub_2676CC23C();
    v62 = OUTLINED_FUNCTION_7_11();
    if (!os_log_type_enabled(v62, v63))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v14 = sub_2676C9B9C();
  OUTLINED_FUNCTION_20_4();
  swift_allocObject();
  v95 = sub_2676C9B8C();
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_1_8();
    swift_once();
  }

  v15 = sub_2676CBE4C();
  __swift_project_value_buffer(v15, qword_2801CDC90);
  v16 = sub_2676CBE2C();
  v17 = sub_2676CC23C();
  v18 = OUTLINED_FUNCTION_7_11();
  if (os_log_type_enabled(v18, v19))
  {
    OUTLINED_FUNCTION_6_10();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_27_3(&dword_2675D4000, v20, v17, "#MailFlowFactory SiriMail/Encore=1");
    OUTLINED_FUNCTION_5_12();
    MEMORY[0x26D5FEA80]();
  }

  sub_2676C9ECC();
  v21 = v106;
  v22 = v107;
  __swift_project_boxed_opaque_existential_1(&v105, v106);
  LOBYTE(v21) = sub_2675F4898(v21, v22);
  __swift_destroy_boxed_opaque_existential_1(&v105);
  if (v21)
  {
    if (sub_2675DD880())
    {
      sub_267636AB8(v104, v23, v24, v25, v26, v27, v28, v29, v82, v83, v85, v87, v88, v89, v90, v91, v93, a2, v95, v97[0]);
      v94 = v30;
      (*(v6 + 16))(v10, a1, v4);
      v31 = type metadata accessor for ReadingUtil();
      OUTLINED_FUNCTION_82();
      v32 = swift_allocObject();
      v32[2] = 0;
      sub_2676CB38C();

      v92 = sub_2676CB37C();
      if (qword_2801CBA90 != -1)
      {
        swift_once();
      }

      v33 = qword_2801D3DF8;
      v86 = type metadata accessor for DeviceConnectionManager();
      OUTLINED_FUNCTION_82();
      v34 = swift_allocObject();
      *(v34 + 16) = [objc_allocWithZone(MEMORY[0x277CEF258]) init];
      v106 = &type metadata for LinkServicesProvider;
      v107 = &protocol witness table for LinkServicesProvider;
      v102 = v14;
      v103 = &protocol witness table for ResponseFactory;
      *&v101 = v96;
      v100[3] = v31;
      v100[4] = &off_2878AE2F8;
      v100[0] = v32;
      v84 = type metadata accessor for PrivacyDisclosureManager();
      v99[3] = v84;
      v99[4] = &off_2878AE1B0;
      v99[0] = v33;
      v98[3] = &type metadata for MailFeatureFlags;
      v98[4] = &off_2878ADBB0;
      v97[3] = v86;
      v97[4] = &off_2878AD540;
      v97[0] = v34;
      type metadata accessor for MailDelegateFlow(0);
      OUTLINED_FUNCTION_20_4();
      v35 = swift_allocObject();
      __swift_mutable_project_boxed_opaque_existential_1(v100, v31);
      OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_5_11();
      MEMORY[0x28223BE20](v36);
      OUTLINED_FUNCTION_3_2();
      v38 = OUTLINED_FUNCTION_11_10(v37);
      v39(v38);
      __swift_mutable_project_boxed_opaque_existential_1(v99, v84);
      OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_5_11();
      MEMORY[0x28223BE20](v40);
      OUTLINED_FUNCTION_3_2();
      v42 = OUTLINED_FUNCTION_30_3(v41);
      v43(v42);
      __swift_mutable_project_boxed_opaque_existential_1(v98, &type metadata for MailFeatureFlags);
      __swift_mutable_project_boxed_opaque_existential_1(v97, v86);
      OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_5_11();
      MEMORY[0x28223BE20](v44);
      OUTLINED_FUNCTION_3_2();
      v46 = OUTLINED_FUNCTION_33_3(v45);
      v47(v46);
      v48 = *v32;
      v49 = *v86;
      v50 = *v14;
      v51 = (v35 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_readingUtil);
      v51[3] = v31;
      v51[4] = &off_2878AE2F8;
      *v51 = v48;
      v52 = (v35 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_privacyDisclosureManager);
      v52[3] = v84;
      v52[4] = &off_2878AE1B0;
      *v52 = v49;
      v53 = v35 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_featureFlags;
      *(v53 + 24) = &type metadata for MailFeatureFlags;
      *(v53 + 32) = &off_2878ADBB0;
      v54 = (v35 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_deviceStateConnection);
      v54[3] = v86;
      v54[4] = &off_2878AD540;
      *v54 = v50;
      v55 = v104[0];
      *(v35 + 56) = v104[1];
      *(v35 + 32) = v94 & 1;
      *(v35 + 33) = BYTE1(v94) & 1;
      *(v35 + 34) = BYTE2(v94) & 1;
      *(v35 + 40) = v55;
      (*(v6 + 32))(v35 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_inputParse, v10, v4);
      v56 = MEMORY[0x277D84F90];
      *(v35 + 16) = 0;
      *(v35 + 24) = v56;
      sub_2675DD73C(&v105, v35 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_linkServicesProvider);
      sub_2675DD73C(&v101, v35 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_responseFactory);
      *(v35 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_globals) = v92;

      __swift_destroy_boxed_opaque_existential_1(v97);
      __swift_destroy_boxed_opaque_existential_1(v98);
      __swift_destroy_boxed_opaque_existential_1(v99);
      __swift_destroy_boxed_opaque_existential_1(v100);
      *&v105 = v35;
      sub_267619E1C(&qword_2801CC760, type metadata accessor for MailDelegateFlow, &unk_2676CF4A0);
      sub_2676C95FC();
    }

    v76 = sub_2676CBE2C();
    v77 = sub_2676CC23C();
    v78 = OUTLINED_FUNCTION_7_11();
    if (os_log_type_enabled(v78, v79))
    {
      OUTLINED_FUNCTION_6_10();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_27_3(&dword_2675D4000, v80, v77, "#MailFlowFactory user does not have a Mail account set up");
      OUTLINED_FUNCTION_5_12();
      MEMORY[0x26D5FEA80]();
    }

    v106 = &unk_2878AFA80;
    v107 = sub_267619D0C();
  }

  else
  {
    v71 = sub_2676CBE2C();
    v72 = sub_2676CC23C();
    v73 = OUTLINED_FUNCTION_7_11();
    if (os_log_type_enabled(v73, v74))
    {
      OUTLINED_FUNCTION_6_10();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_27_3(&dword_2675D4000, v75, v72, "#MailFlowFactory encountered device we don't support, returning unsupported output flow");
      OUTLINED_FUNCTION_5_12();
      MEMORY[0x26D5FEA80]();
    }

    v106 = &unk_2878AFB00;
    v107 = sub_267619CB8();
  }

  v81 = swift_allocObject();
  *&v105 = v81;
  v81[5] = v14;
  v81[6] = &protocol witness table for ResponseFactory;
  v81[2] = v95;
  sub_2676C9EFC();
  OUTLINED_FUNCTION_20_4();
  swift_allocObject();

  *&v105 = sub_2676C9F0C();
  sub_2676C95FC();
}

uint64_t static MailFlowFactory.sendMailFlow()()
{
  sub_267619AF4(v2);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v0 = sub_2676C935C();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0;
}

uint64_t sub_267619AF4@<X0>(uint64_t *a2@<X8>)
{
  sub_2676C919C();
  if (sub_2676C918C())
  {
    type metadata accessor for SendMailSceneHostPlan(0);
    OUTLINED_FUNCTION_20_4();
    swift_allocObject();
    SendMailSceneHostPlan.init()();
    v3 = &qword_2801CC6D8;
    v4 = &qword_2676CF618;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC6D8, &qword_2676CF618);
    OUTLINED_FUNCTION_20_4();
    swift_allocObject();
    sub_2676C94CC();
    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC6E0, &qword_2676CF620);
    v5 = &qword_2801CC6E8;
  }

  else
  {
    type metadata accessor for SendMailPlan(0);
    OUTLINED_FUNCTION_20_4();
    swift_allocObject();
    SendMailPlan.init()();
    v3 = &qword_2801CC6C0;
    v4 = &qword_2676D43A0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC6C0, &qword_2676D43A0);
    OUTLINED_FUNCTION_20_4();
    swift_allocObject();
    sub_2676C94CC();
    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC6C8, &qword_2676CF610);
    v5 = &qword_2801CC6D0;
  }

  sub_267619E64(v5, v3, v4);
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_2676C937C();
}

unint64_t sub_267619CB8()
{
  result = qword_2801CC7C8;
  if (!qword_2801CC7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC7C8);
  }

  return result;
}

unint64_t sub_267619D0C()
{
  result = qword_2801CC7D0;
  if (!qword_2801CC7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC7D0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MailFlowFactory(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_OWORD *sub_267619E0C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_267619E1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267619E64(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void OUTLINED_FUNCTION_17_8(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

void OUTLINED_FUNCTION_27_3(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_28_2(uint64_t a1)
{

  return sub_2675F95E4(a1, v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_29_3(uint64_t a1)
{

  return sub_2675EB7EC(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_35_1(uint64_t a1)
{
  *(v1 + 384) = a1;
  *(v1 + 352) = 4;

  return sub_2676CA04C();
}

uint64_t OUTLINED_FUNCTION_36_2(uint64_t a1)
{

  return sub_2675EB7EC(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_37_1()
{

  return __swift_destroy_boxed_opaque_existential_1(v0 + 352);
}

uint64_t type metadata accessor for MailLabelCATs(uint64_t a1)
{
  result = qword_2801CC808;
  if (!qword_2801CC808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26761A1AC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC180, &qword_2676CDEA8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2676CDE20;
  strcpy((v2 + 32), "toRecipients");
  *(v2 + 45) = 0;
  *(v2 + 46) = -5120;
  *(v2 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC188, &qword_2676CDEB0);
  *(v2 + 48) = a1;

  sub_2676CB3AC();
}

uint64_t sub_26761A2EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC180, &qword_2676CDEA8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2676CDE20;
  *(v5 + 32) = 0x7463656A627573;
  *(v5 + 40) = 0xE700000000000000;
  sub_267607B28(a1, v4, &qword_2801CBFD0, &qword_2676CDEA0);
  v6 = sub_2676CB3FC();
  if (__swift_getEnumTagSinglePayload(v4, 1, v6) == 1)
  {
    sub_2675E35CC(v4, &qword_2801CBFD0, &qword_2676CDEA0);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v5 + 48));
    (*(*(v6 - 8) + 32))(boxed_opaque_existential_1, v4, v6);
  }

  sub_2676CB3AC();
}

uint64_t sub_26761A620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2676CB48C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CDAC0, &unk_2676CF3A0);
  MEMORY[0x28223BE20](v9 - 8);
  sub_267607B28(a1, &v13 - v10, &unk_2801CDAC0, &unk_2676CF3A0);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_2676CB39C();
  (*(v6 + 8))(a2, v5);
  sub_2675E35CC(a1, &unk_2801CDAC0, &unk_2676CF3A0);
  return v11;
}

uint64_t sub_26761A7AC()
{
  v0 = sub_2676CB3CC();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t sub_26761A7EC()
{
  v1 = OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_subject;
  sub_2676CB3FC();
  OUTLINED_FUNCTION_10_10(v0 + v1);
  OUTLINED_FUNCTION_10_10(v0 + OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_body);
  *(v0 + OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_sender) = 0;
  *(v0 + OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_recipients) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_10_10(v0 + OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_type);
  return v0;
}

uint64_t sub_26761A870(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_sender) = a1;
}

uint64_t sub_26761A8BC(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_recipients) = a1;
}

uint64_t sub_26761A908()
{
  sub_2675E3BB8(v0 + OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_subject);
  sub_2675E3BB8(v0 + OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_body);

  sub_2675E3BB8(v0 + OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_type);
  return v0;
}

uint64_t sub_26761A9A4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  *(v1 + 16) = 0;
  v6 = OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_subject;
  swift_beginAccess();
  sub_26761BD8C(a1 + v6, v1 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_subject);
  v7 = OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_body;
  swift_beginAccess();
  sub_26761BD8C(a1 + v7, v1 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_body);
  *(v1 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_sender) = *(a1 + OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_sender);
  *(v1 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_recipients) = *(a1 + OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_recipients);
  v8 = OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_type;
  swift_beginAccess();
  sub_26761BD8C(a1 + v8, v5);

  sub_26761BDFC(v5, v1 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_type);
  return v1;
}

uint64_t sub_26761AB14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v27 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  v16 = a1 == 0x7463656A627573 && a2 == 0xE700000000000000;
  if (v16 || (OUTLINED_FUNCTION_4_12(0x7463656A627573, 0xE700000000000000) & 1) != 0)
  {
    sub_26761BD8C(v3 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_subject, v15);
    v17 = sub_2676CB3FC();
    OUTLINED_FUNCTION_17_7(v15);
    if (!v16)
    {
      goto LABEL_42;
    }

    v18 = v15;
    goto LABEL_9;
  }

  v20 = a1 == 2036625250 && a2 == 0xE400000000000000;
  if (v20 || (OUTLINED_FUNCTION_4_12(2036625250, 0xE400000000000000) & 1) != 0)
  {
    sub_26761BD8C(v3 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_body, v13);
    v17 = sub_2676CB3FC();
    OUTLINED_FUNCTION_17_7(v13);
    if (!v16)
    {
      goto LABEL_42;
    }

    v18 = v13;
LABEL_9:
    result = sub_2675E3BB8(v18);
LABEL_10:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  result = 0x7265646E6573;
  v21 = a1 == 0x7265646E6573 && a2 == 0xE600000000000000;
  if (v21 || (result = OUTLINED_FUNCTION_4_12(0x7265646E6573, 0xE600000000000000), (result & 1) != 0))
  {
    if (!*(v3 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_sender))
    {
      goto LABEL_10;
    }

    v22 = sub_2676CB36C();
    OUTLINED_FUNCTION_11_11(v22);
  }

  else
  {
    v23 = a1 == 0x6E65697069636572 && a2 == 0xEA00000000007374;
    if (!v23 && (OUTLINED_FUNCTION_4_12(0x6E65697069636572, 0xEA00000000007374) & 1) == 0)
    {
      if (a1 != 1701869940 || a2 != 0xE400000000000000)
      {
        result = OUTLINED_FUNCTION_4_12(1701869940, 0xE400000000000000);
        if ((result & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      sub_26761BD8C(v3 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_type, v10);
      v17 = sub_2676CB3FC();
      OUTLINED_FUNCTION_17_7(v10);
      if (!v16)
      {
LABEL_42:
        *(a3 + 24) = v17;
        __swift_allocate_boxed_opaque_existential_1(a3);
        OUTLINED_FUNCTION_9_11();
        return (*(v26 + 32))();
      }

      v18 = v10;
      goto LABEL_9;
    }

    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC188, &qword_2676CDEB0);
    OUTLINED_FUNCTION_11_11(v24);
  }
}

unint64_t sub_26761AE88(uint64_t a1, uint64_t a2)
{
  v2 = sub_2676CC50C();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26761AED4(char a1)
{
  result = 0x7463656A627573;
  switch(a1)
  {
    case 1:
      result = 2036625250;
      break;
    case 2:
      result = 0x7265646E6573;
      break;
    case 3:
      result = 0x6E65697069636572;
      break;
    case 4:
      result = 1701869940;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26761AF84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26761AE88(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_26761AFB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26761AED4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_26761AFE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26761AE88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26761B028(uint64_t a1)
{
  v2 = sub_26761BE6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26761B064(uint64_t a1)
{
  v2 = sub_26761BE6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26761B0A0()
{
  sub_2675E3BB8(v0 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_subject);
  sub_2675E3BB8(v0 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_body);

  sub_2675E3BB8(v0 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_type);
  return v0;
}

uint64_t sub_26761B128(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

void sub_26761B1AC(uint64_t a1)
{
  sub_26761B51C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_26761B25C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC878, &qword_2676CFB08);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26761BE6C();
  sub_2676CC6BC();
  v11 = OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_subject;
  LOBYTE(v18) = 0;
  sub_2676CB3FC();
  OUTLINED_FUNCTION_2_16();
  sub_26761BD44(v12, v13, MEMORY[0x277D55C50]);
  OUTLINED_FUNCTION_1_14(v3 + v11);
  if (!v2)
  {
    LOBYTE(v18) = 1;
    OUTLINED_FUNCTION_1_14(v3 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_body);
    v18 = *(v3 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_sender);
    HIBYTE(v17) = 2;
    sub_2676CB36C();
    OUTLINED_FUNCTION_0_15();
    sub_26761BD44(v14, v15, MEMORY[0x277D55B78]);
    OUTLINED_FUNCTION_6_11();
    sub_2676CC53C();
    v18 = *(v3 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_recipients);
    HIBYTE(v17) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC188, &qword_2676CDEB0);
    sub_26761BEC0(&qword_2801CC890, &qword_2801CC888, MEMORY[0x277D55B78], MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_6_11();
    sub_2676CC54C();
    LOBYTE(v18) = 4;
    OUTLINED_FUNCTION_1_14(v3 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_type);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_26761B4CC(void *a1)
{
  v2 = swift_allocObject();
  sub_26761B648(a1);
  return v2;
}

void sub_26761B51C(uint64_t a1)
{
  if (!qword_2801CC828)
  {
    sub_2676CB3FC();
    v1 = sub_2676CC2FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2801CC828);
    }
  }
}

void sub_26761B59C(uint64_t a1)
{
  sub_26761B51C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_26761B648(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v28 - v9;
  MEMORY[0x28223BE20](v8);
  v29 = v28 - v11;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC850, &unk_2676CFAF8);
  OUTLINED_FUNCTION_3();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = v28 - v15;
  v32 = v1;
  v33 = a1;
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26761BE6C();
  v31 = v16;
  sub_2676CC6AC();
  if (v2)
  {
    v22 = v32;

    type metadata accessor for MailMessageConcept(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v28[0] = v7;
    v28[1] = v13;
    sub_2676CB3FC();
    LOBYTE(v35) = 0;
    OUTLINED_FUNCTION_2_16();
    v19 = sub_26761BD44(v17, v18, MEMORY[0x277D55C60]);
    v20 = v29;
    OUTLINED_FUNCTION_8_14();
    sub_2676CC51C();
    v22 = v32;
    sub_26761BDFC(v20, v32 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_subject);
    LOBYTE(v35) = 1;
    OUTLINED_FUNCTION_8_14();
    sub_2676CC51C();
    v29 = v19;
    sub_26761BDFC(v10, v22 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_body);
    sub_2676CB36C();
    v34 = 2;
    OUTLINED_FUNCTION_0_15();
    sub_26761BD44(v23, v24, MEMORY[0x277D55B80]);
    OUTLINED_FUNCTION_5_13();
    sub_2676CC51C();
    *(v22 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_sender) = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC188, &qword_2676CDEB0);
    v34 = 3;
    sub_26761BEC0(&qword_2801CC870, &qword_2801CC868, MEMORY[0x277D55B80], MEMORY[0x277D83978]);
    OUTLINED_FUNCTION_5_13();
    sub_2676CC52C();
    *(v22 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_recipients) = v35;
    LOBYTE(v35) = 4;
    v25 = v28[0];
    OUTLINED_FUNCTION_8_14();
    sub_2676CC51C();
    v26 = OUTLINED_FUNCTION_3_10();
    v27(v26);
    sub_26761BDFC(v25, v22 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_type);
  }

  __swift_destroy_boxed_opaque_existential_1(v33);
  return v22;
}

void *sub_26761BB54()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = v2;
  return v2;
}

void sub_26761BB9C(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;
}

uint64_t sub_26761BC64@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26761B4CC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_26761BD44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26761BD8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26761BDFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26761BE6C()
{
  result = qword_2801CC858;
  if (!qword_2801CC858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC858);
  }

  return result;
}

uint64_t sub_26761BEC0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CC188, &qword_2676CDEB0);
    OUTLINED_FUNCTION_0_15();
    sub_26761BD44(a2, v8, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MailMessageConcept.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26761C02C()
{
  result = qword_2801CC898;
  if (!qword_2801CC898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC898);
  }

  return result;
}

unint64_t sub_26761C084()
{
  result = qword_2801CC8A0;
  if (!qword_2801CC8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC8A0);
  }

  return result;
}

unint64_t sub_26761C0DC()
{
  result = qword_2801CC8A8;
  if (!qword_2801CC8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC8A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_14(uint64_t a1)
{

  return sub_2676CC53C();
}

uint64_t OUTLINED_FUNCTION_4_12(uint64_t a1, uint64_t a2)
{

  return sub_2676CC59C();
}

uint64_t OUTLINED_FUNCTION_10_10(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_11_11(uint64_t a1)
{
  v1[3] = a1;
  *v1 = v2;
  return v2;
}

uint64_t sub_26761C25C(char a1, int a2, uint64_t a3)
{
  v18 = a2;
  v5 = sub_2676C91BC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v19 = MEMORY[0x277D84F90];
    sub_2676C29D8(0, v9, 0);
    v10 = v19;
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00) - 8);
    v12 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v13 = *(v11 + 72);
    do
    {
      sub_26761C434(v12, a1 & 1, v18 & 1, v8);
      v19 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_2676C29D8((v14 > 1), v15 + 1, 1);
        v10 = v19;
      }

      *(v10 + 16) = v15 + 1;
      sub_26761D1B4(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15);
      v12 += v13;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t sub_26761C434@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v114 = a3;
  v115 = a2;
  v116 = a4;
  v5 = sub_2676CB48C();
  MEMORY[0x28223BE20](v5 - 8);
  v125 = (v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC440, &qword_2676CEEF0);
  MEMORY[0x28223BE20](v113);
  v112 = v96 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CDAC0, &unk_2676CF3A0);
  MEMORY[0x28223BE20](v8 - 8);
  v122 = v96 - v9;
  v10 = sub_2676C90CC();
  MEMORY[0x28223BE20](v10 - 8);
  v121 = v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_2676C8E9C();
  MEMORY[0x28223BE20](v101);
  v100 = v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_2676C8EBC();
  v98 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v97 = v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070);
  MEMORY[0x28223BE20](v14 - 8);
  v102 = v96 - v15;
  v16 = sub_2676C8C8C();
  v126 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v108 = v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v96 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = v96 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  v25 = MEMORY[0x28223BE20](v24);
  v120 = v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = v96 - v27;
  v29 = sub_2676C8BFC();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = a1;
  sub_26761D218(a1, v28);
  v104 = v24;

  v117 = v30;
  v118 = v29;
  (*(v30 + 32))(v32, v28, v29);
  if (qword_2801CBA80 != -1)
  {
    swift_once();
  }

  v33 = qword_2801D3CD8;
  sub_2676C8B3C();
  v34 = sub_26760BBE4();
  v36 = v35;

  v37 = *(v126 + 8);
  v37(v23, v16);
  v38 = v32;
  v119 = v36;
  v99 = v23;
  if (v36)
  {
    v109 = v34;
  }

  else
  {
    sub_2676C8B3C();
    v109 = sub_2676C8C6C();
    v119 = v39;
    v37(v23, v16);
  }

  v40 = v16;
  v41 = sub_2676C8ABC();
  v110 = v42;
  v111 = v41;
  sub_2676C8B3C();
  v43 = sub_2676C8C1C();
  v45 = v44;
  v37(v21, v16);
  v46 = v102;
  if (v45)
  {
    v107 = v45;
    v108 = v43;
  }

  else
  {
    v47 = v108;
    sub_2676C8B3C();
    v48 = sub_2676C8C4C();
    v50 = v49;
    v37(v47, v16);

    v51 = HIBYTE(v50) & 0xF;
    if ((v50 & 0x2000000000000000) == 0)
    {
      v51 = v48 & 0xFFFFFFFFFFFFLL;
    }

    if (v51)
    {
      v52 = v99;
      sub_2676C8B3C();
      v53 = sub_2676C8C4C();
      v107 = v54;
      v108 = v53;
      v37(v52, v16);
    }

    else
    {
      v107 = 0;
      v108 = 0;
    }
  }

  v106 = sub_2676C8BAC();
  v105 = v55;
  v56 = v120;
  sub_26761D218(v124, v120);
  v57 = (v56 + *(v104 + 48));
  v59 = *v57;
  v58 = v57[1];
  v104 = v59;
  v103 = v58;
  sub_2676C8AFC();
  v60 = v123;
  if (__swift_getEnumTagSinglePayload(v46, 1, v123))
  {
    sub_2675E35CC(v46, &qword_2801CBFE0, &qword_2676D1070);
    v102 = 0;
    v101 = 0;
  }

  else
  {
    v61 = v37;
    v62 = v98;
    v63 = v97;
    (*(v98 + 16))(v97, v46, v60);
    sub_2675E35CC(v46, &qword_2801CBFE0, &qword_2676D1070);
    sub_2676C8E8C();
    sub_2675E362C();
    v102 = sub_2676CC08C();
    v101 = v64;
    (*(v62 + 8))(v63, v60);
    v37 = v61;
  }

  sub_2676C8A7C();
  v65 = sub_2676C8B2C();
  MailMessagePrototype.idURL.getter(v122);
  type metadata accessor for MailLabelCATs(0);
  sub_2676CB47C();
  v100 = sub_2676CB3BC();
  v123 = v38;
  v66 = sub_2676C8ACC();
  v67 = *(v66 + 16);
  if (v67)
  {
    LODWORD(v98) = v65;
    v127 = MEMORY[0x277D84F90];
    sub_2676CC46C();
    v68 = v99;
    v70 = *(v126 + 16);
    v69 = v126 + 16;
    v125 = v37;
    v126 = v70;
    v71 = (*(v69 + 64) + 32) & ~*(v69 + 64);
    v97 = v66;
    v72 = v66 + v71;
    v124 = *(v69 + 56);
    do
    {
      (v126)(v68, v72, v40);
      sub_267626550();
      v125(v68, v40);
      sub_2676CC44C();
      sub_2676CC47C();
      sub_2676CC48C();
      sub_2676CC45C();
      v72 += v124;
      --v67;
    }

    while (v67);

    v73 = v127;
    v65 = v98;
  }

  else
  {

    v73 = MEMORY[0x277D84F90];
  }

  v74 = v112;
  sub_26761A1AC(v73);

  v75 = sub_2676CC68C();
  v77 = v76;
  sub_2675E35CC(v74, &qword_2801CC440, &qword_2676CEEF0);
  if (v77)
  {
    v78 = v75;
  }

  else
  {
    v78 = 0;
  }

  v96[2] = v78;
  v79 = 0xE000000000000000;
  if (v77)
  {
    v79 = v77;
  }

  v96[1] = v79;
  LODWORD(v112) = v65 ^ 1;
  if (qword_2801CBA70 != -1)
  {
    swift_once();
  }

  v98 = *(qword_2801D3CD0 + 16);
  v97 = *(qword_2801D3CD0 + 256);
  v99 = *(qword_2801D3CD0 + 392);
  v100 = *(qword_2801D3CD0 + 408);
  v113 = *(qword_2801D3CD0 + 424);
  v80 = *(qword_2801D3CD0 + 440);
  v124 = *(qword_2801D3CD0 + 456);
  v125 = v80;
  v126 = *(qword_2801D3CD0 + 472);
  sub_2676C91AC();
  v81 = *(v117 + 8);

  v82 = v118;
  v81(v120, v118);
  sub_2676C8BAC();
  v83 = objc_opt_self();
  v84 = sub_2676CBF3C();

  v85 = [v83 ec:v84 partiallyRedactedStringForSubjectOrSummary:?];

  v86 = sub_2676CBF6C();
  v88 = v87;

  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v89 = sub_2676CBE4C();
  __swift_project_value_buffer(v89, qword_2801CDC90);

  v90 = sub_2676CBE2C();
  v91 = sub_2676CC23C();

  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v127 = v93;
    *v92 = 136315138;
    v94 = sub_2676B0B84(v86, v88, &v127);

    *(v92 + 4) = v94;
    _os_log_impl(&dword_2675D4000, v90, v91, "#WidgetMessage producing WidgetMessage for UI plugin with redacted subject: %s", v92, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v93);
    MEMORY[0x26D5FEA80](v93, -1, -1);
    MEMORY[0x26D5FEA80](v92, -1, -1);
  }

  else
  {
  }

  return (v81)(v123, v82);
}

uint64_t sub_26761D1B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2676C91BC();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26761D218(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26761D2F8(uint64_t *a1, uint64_t *a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  (*(v7 + 16))(&v12 - v9, v3 + *a3, v5);
  sub_2676C980C();
  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_26761D3E0(uint64_t a1, char a2)
{
  v4 = sub_2676CB0DC();
  OUTLINED_FUNCTION_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v34[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
  OUTLINED_FUNCTION_3();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v34[-v14];
  if (!*(a1 + 8) || *(a1 + 8) == 2 && *a1 == 1)
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v16 = sub_2676CBE4C();
    __swift_project_value_buffer(v16, qword_2801CDC90);
    v17 = sub_2676CBE2C();
    v18 = sub_2676CC23C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      OUTLINED_FUNCTION_12_8(v19);
      OUTLINED_FUNCTION_15_9(&dword_2675D4000, v20, v21, "SendMailIntent succeeded");
      OUTLINED_FUNCTION_9_12();
    }

    sub_26761D2A4();
    v22 = OUTLINED_FUNCTION_10_11();
    v23(v22);
    sub_2676C984C();
    (*(v6 + 8))(v9, v4);
    (*(v12 + 8))(v15, v10);
    v35 = &type metadata for IntentHandled;
    v24 = sub_26761F5D0();
  }

  else
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v25 = sub_2676CBE4C();
    __swift_project_value_buffer(v25, qword_2801CDC90);
    v26 = sub_2676CBE2C();
    v27 = sub_2676CC23C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      OUTLINED_FUNCTION_12_8(v28);
      OUTLINED_FUNCTION_15_9(&dword_2675D4000, v29, v30, "SendMailIntent failed");
      OUTLINED_FUNCTION_9_12();
    }

    sub_26761D2A4();
    v31 = OUTLINED_FUNCTION_10_11();
    v32(v31);
    sub_2676C984C();
    (*(v6 + 8))(v9, v4);
    (*(v12 + 8))(v15, v10);
    v35 = &type metadata for IntentCancelled;
    v24 = sub_26761F57C();
  }

  v36 = v24;
  v34[8] = a2 & 1;
  sub_2676C9EFC();
  swift_allocObject();
  return sub_2676C9F0C();
}

uint64_t sub_26761D754()
{
  OUTLINED_FUNCTION_3_0();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = sub_2676C8D8C();
  v1[7] = v4;
  v5 = *(v4 - 8);
  v1[8] = v5;
  v1[9] = *(v5 + 64);
  v1[10] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v6, v7, v8);
}