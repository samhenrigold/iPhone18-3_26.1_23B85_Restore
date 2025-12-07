uint64_t sub_2312EF28C(uint64_t a1)
{
  *(*v1 + 192) = a1;

  return MEMORY[0x2822009F8](sub_2312EF38C, 0, 0);
}

void sub_2312EF38C(__n128 a1)
{
  v2 = v1[21];
  v3 = *(v2 + 16);
  if (v3)
  {
    sub_23136A6C0();
    sub_2313692F0();
    v16 = *MEMORY[0x277D60B50];
    v4 = sub_231367D20();
    OUTLINED_FUNCTION_0_34();
    v7 = sub_2312EF7B8(v5, 255, v6, MEMORY[0x277D60B60]);
    v8 = (v2 + 40);
    do
    {
      v9 = v1[17];
      v10 = *(v8 - 1);
      v11 = *v8;
      v1[10] = v4;
      v1[11] = v7;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 7);
      (*(*(v4 - 8) + 104))(boxed_opaque_existential_1, v16, v4);
      sub_231369EE0();
      sub_2312C3FA0(v10, v11);
      sub_231367B70();
      v13 = sub_231367B80();
      __swift_storeEnumTagSinglePayload(v9, 0, 1, v13);
      sub_231369220();
      sub_23136A6A0();
      sub_23136A6D0();
      sub_23136A6E0();
      sub_23136A6B0();
      v8 += 2;
      --v3;
    }

    while (v3);
  }

  else
  {
  }

  OUTLINED_FUNCTION_7();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_2312EF5B0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_2312EF624(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23120B320;

  return sub_2312EEE20(v4, a2);
}

void sub_2312EF6BC(uint64_t a1, uint64_t a2)
{
  sub_2312EF7B8(qword_280F815F0, a2, type metadata accessor for OpenAppSignalExtractor, &unk_231376348);

  JUMPOUT(0x2319284B0);
}

uint64_t sub_2312EF7B8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_2312EF800(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_23136A8A0();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_231367B30();
        v6 = sub_23136A230();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_231367B30() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_2312EFBC8(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_2312EF930(0, v2, 1, a1);
  }
}

void sub_2312EF930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_231367B30();
  MEMORY[0x28223BE20](v8);
  v45 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v49 = &v35 - v11;
  v14 = MEMORY[0x28223BE20](v12);
  v48 = &v35 - v15;
  v37 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v46 = *(v13 + 16);
    v47 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v43 = (v13 + 32);
    v44 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v42 = -v17;
    v20 = a1 - a3;
    v36 = v17;
    v21 = v16 + v17 * a3;
    while (2)
    {
      v40 = v19;
      v41 = a3;
      v38 = v21;
      v39 = v20;
      v22 = v20;
      v23 = v19;
      do
      {
        v24 = v48;
        v25 = v46;
        (v46)(v48, v21, v8, v14);
        v26 = v49;
        v25(v49, v23, v8);
        sub_231367B10();
        v28 = v27;
        sub_231367B10();
        v30 = v29;
        v31 = *v18;
        (*v18)(v26, v8);
        v31(v24, v8);
        if (v30 >= v28)
        {
          break;
        }

        if (!v44)
        {
          __break(1u);
          return;
        }

        v32 = *v43;
        v33 = v45;
        (*v43)(v45, v21, v8);
        swift_arrayInitWithTakeFrontToBack();
        v32(v23, v33, v8);
        v23 += v42;
        v21 += v42;
      }

      while (!__CFADD__(v22++, 1));
      a3 = v41 + 1;
      v19 = &v40[v36];
      v20 = v39 - 1;
      v21 = v38 + v36;
      if (v41 + 1 != v37)
      {
        continue;
      }

      break;
    }
  }
}

void sub_2312EFBC8(char **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v131 = a1;
  v6 = sub_231367B30();
  MEMORY[0x28223BE20](v6);
  v134 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v144 = &v129 - v9;
  MEMORY[0x28223BE20](v10);
  v150 = &v129 - v11;
  v16 = MEMORY[0x28223BE20](v12);
  v149 = &v129 - v17;
  v139 = v15;
  v140 = a3;
  v18 = *(a3 + 8);
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_103:
    v150 = *v131;
    if (!v150)
    {
      goto LABEL_145;
    }

    a3 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = v142;
    if (isUniquelyReferenced_nonNull_native)
    {
      v122 = a3;
LABEL_106:
      a3 = (v122 + 16);
      v123 = *(v122 + 2);
      while (v123 >= 2)
      {
        if (!*v140)
        {
          goto LABEL_142;
        }

        v124 = v122;
        v125 = &v122[16 * v123];
        v126 = *v125;
        v127 = a3 + 16 * v123;
        v128 = *(v127 + 8);
        sub_2312F05A8(&(*v140)[*(v139 + 72) * *v125], &(*v140)[*(v139 + 72) * *v127], &(*v140)[*(v139 + 72) * v128], v150);
        if (v19)
        {
          break;
        }

        if (v128 < v126)
        {
          goto LABEL_130;
        }

        if (v123 - 2 >= *a3)
        {
          goto LABEL_131;
        }

        *v125 = v126;
        *(v125 + 1) = v128;
        v13 = *a3 - v123;
        if (*a3 < v123)
        {
          goto LABEL_132;
        }

        v123 = *a3 - 1;
        sub_2311E6448((v127 + 16), v13, v127);
        *a3 = v123;
        v122 = v124;
      }

LABEL_114:

      return;
    }

LABEL_139:
    v122 = sub_2311E6430(a3, v13, v14, v20);
    goto LABEL_106;
  }

  v129 = a4;
  v19 = 0;
  v147 = (v15 + 8);
  v148 = v15 + 16;
  v146 = (v15 + 32);
  v20 = MEMORY[0x277D84F90];
  while (1)
  {
    v21 = v19++;
    if (v19 < v18)
    {
      v22 = v21;
      v23 = *(v15 + 72);
      v24 = &(*v140)[v23 * v19];
      v145 = *v140;
      v25 = v145;
      v26 = *(v15 + 16);
      v27 = v149;
      v138 = v20;
      v141 = v18;
      v26(v149, &v145[v23 * v19], v6, v16);
      v28 = &v25[v23 * v21];
      v29 = v150;
      v137 = v26;
      (v26)(v150, v28, v6);
      sub_231367B10();
      v31 = v30;
      sub_231367B10();
      v33 = v32;
      v34 = *(v139 + 8);
      v35 = v29;
      a3 = v147;
      v34(v35, v6);
      v136 = v34;
      v34(v27, v6);
      v36 = v141;
      v20 = v138;
      v130 = v22;
      v37 = v22 + 2;
      v143 = v23;
      v38 = &v145[v23 * (v22 + 2)];
      while (1)
      {
        v39 = v37;
        v40 = v19 + 1;
        if (v40 >= v36)
        {
          break;
        }

        LODWORD(v145) = v33 < v31;
        v41 = v149;
        v42 = v137;
        (v137)(v149, v38, v6, v20);
        v43 = v40;
        v44 = v150;
        v42(v150, v24, v6);
        sub_231367B10();
        v46 = v45;
        sub_231367B10();
        v48 = v47;
        v49 = v44;
        v19 = v43;
        a3 = v147;
        v50 = v136;
        (v136)(v49, v6);
        v50(v41, v6);
        v36 = v141;
        v20 = v138;
        v38 = &v143[v38];
        v24 += v143;
        v37 = v39 + 1;
        if (((v145 ^ (v48 >= v46)) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v19 = v36;
LABEL_9:
      if (v33 >= v31)
      {
        v15 = v139;
      }

      else
      {
        v21 = v130;
        if (v19 < v130)
        {
          goto LABEL_136;
        }

        if (v130 >= v19)
        {
          v15 = v139;
          goto LABEL_32;
        }

        if (v36 >= v39)
        {
          v51 = v39;
        }

        else
        {
          v51 = v36;
        }

        a3 = v143 * (v51 - 1);
        v52 = v130;
        v53 = v143 * v51;
        v54 = v130 * v143;
        v55 = v19;
        do
        {
          if (v52 != --v55)
          {
            v56 = *v140;
            if (!*v140)
            {
              goto LABEL_143;
            }

            v145 = *v146;
            (v145)(v134, &v56[v54], v6, v20);
            v57 = v54 < a3 || &v56[v54] >= &v56[v53];
            if (v57)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v54 != a3)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            (v145)(&v56[a3], v134, v6);
          }

          ++v52;
          a3 -= v143;
          v53 -= v143;
          v54 += v143;
        }

        while (v52 < v55);
        v20 = v138;
        v15 = v139;
      }

      v21 = v130;
    }

LABEL_32:
    v58 = v140[1];
    if (v19 < v58)
    {
      if (__OFSUB__(v19, v21))
      {
        goto LABEL_135;
      }

      if (v19 - v21 < v129)
      {
        break;
      }
    }

LABEL_48:
    if (v19 < v21)
    {
      goto LABEL_134;
    }

    v77 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = v77;
    }

    else
    {
      sub_23126DB78();
      v20 = v119;
    }

    a3 = v20[2];
    v78 = a3 + 1;
    if (a3 >= v20[3] >> 1)
    {
      sub_23126DB78();
      v20 = v120;
    }

    v20[2] = v78;
    v79 = v20 + 4;
    v80 = &v20[2 * a3 + 4];
    *v80 = v21;
    v80[1] = v19;
    v145 = *v131;
    if (!v145)
    {
      goto LABEL_144;
    }

    if (a3)
    {
      v141 = v19;
      while (1)
      {
        v81 = v78 - 1;
        v82 = &v79[2 * v78 - 2];
        v83 = &v20[2 * v78];
        if (v78 >= 4)
        {
          break;
        }

        if (v78 == 3)
        {
          v84 = v20[4];
          v85 = v20[5];
          v94 = __OFSUB__(v85, v84);
          v86 = v85 - v84;
          v87 = v94;
LABEL_69:
          if (v87)
          {
            goto LABEL_121;
          }

          v99 = *v83;
          v98 = v83[1];
          v100 = __OFSUB__(v98, v99);
          v101 = v98 - v99;
          v102 = v100;
          if (v100)
          {
            goto LABEL_124;
          }

          v103 = v82[1];
          v104 = v103 - *v82;
          if (__OFSUB__(v103, *v82))
          {
            goto LABEL_127;
          }

          if (__OFADD__(v101, v104))
          {
            goto LABEL_129;
          }

          if (v101 + v104 >= v86)
          {
            if (v86 < v104)
            {
              v81 = v78 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v78 < 2)
        {
          goto LABEL_123;
        }

        v106 = *v83;
        v105 = v83[1];
        v94 = __OFSUB__(v105, v106);
        v101 = v105 - v106;
        v102 = v94;
LABEL_84:
        if (v102)
        {
          goto LABEL_126;
        }

        v108 = *v82;
        v107 = v82[1];
        v94 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v94)
        {
          goto LABEL_128;
        }

        if (v109 < v101)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v81 - 1 >= v78)
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
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*v140)
        {
          goto LABEL_141;
        }

        v19 = v20;
        a3 = &v79[2 * v81 - 2];
        v113 = *a3;
        v114 = v81;
        v115 = &v79[2 * v81];
        v116 = *(v115 + 1);
        v117 = v142;
        sub_2312F05A8(&(*v140)[*(v139 + 72) * *a3], &(*v140)[*(v139 + 72) * *v115], &(*v140)[*(v139 + 72) * v116], v145);
        v142 = v117;
        if (v117)
        {
          goto LABEL_114;
        }

        if (v116 < v113)
        {
          goto LABEL_116;
        }

        v118 = *(v19 + 16);
        if (v114 > v118)
        {
          goto LABEL_117;
        }

        *a3 = v113;
        *(a3 + 8) = v116;
        if (v114 >= v118)
        {
          goto LABEL_118;
        }

        v78 = v118 - 1;
        sub_2311E6448(v115 + 16, v118 - 1 - v114, v115);
        v20 = v19;
        *(v19 + 16) = v118 - 1;
        v19 = v141;
        if (v118 <= 2)
        {
          goto LABEL_98;
        }
      }

      v88 = &v79[2 * v78];
      v89 = *(v88 - 8);
      v90 = *(v88 - 7);
      v94 = __OFSUB__(v90, v89);
      v91 = v90 - v89;
      if (v94)
      {
        goto LABEL_119;
      }

      v93 = *(v88 - 6);
      v92 = *(v88 - 5);
      v94 = __OFSUB__(v92, v93);
      v86 = v92 - v93;
      v87 = v94;
      if (v94)
      {
        goto LABEL_120;
      }

      v95 = v83[1];
      v96 = v95 - *v83;
      if (__OFSUB__(v95, *v83))
      {
        goto LABEL_122;
      }

      v94 = __OFADD__(v86, v96);
      v97 = v86 + v96;
      if (v94)
      {
        goto LABEL_125;
      }

      if (v97 >= v91)
      {
        v111 = *v82;
        v110 = v82[1];
        v94 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v94)
        {
          goto LABEL_133;
        }

        if (v86 < v112)
        {
          v81 = v78 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v15 = v139;
    v18 = v140[1];
    if (v19 >= v18)
    {
      goto LABEL_103;
    }
  }

  v59 = v21 + v129;
  if (__OFADD__(v21, v129))
  {
    goto LABEL_137;
  }

  if (v59 >= v58)
  {
    v59 = v140[1];
  }

  if (v59 < v21)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v19 == v59)
  {
    goto LABEL_48;
  }

  v138 = v20;
  v60 = *v140;
  v61 = *(v15 + 72);
  v145 = *(v15 + 16);
  v62 = &v60[v61 * (v19 - 1)];
  v63 = -v61;
  v130 = v21;
  v64 = (v21 - v19);
  v143 = v60;
  v132 = v61;
  v65 = &v60[v19 * v61];
  v133 = v59;
LABEL_41:
  v141 = v19;
  v135 = v65;
  v136 = v64;
  v137 = v62;
  while (1)
  {
    v66 = v149;
    v67 = v145;
    (v145)(v149, v65, v6);
    v68 = v150;
    v67(v150, v62, v6);
    sub_231367B10();
    v70 = v69;
    sub_231367B10();
    v72 = v71;
    v73 = *v147;
    (*v147)(v68, v6);
    v74 = v66;
    a3 = v6;
    v73(v74, v6);
    if (v72 >= v70)
    {
LABEL_46:
      v19 = v141 + 1;
      v62 = &v137[v132];
      v64 = v136 - 1;
      v65 = &v135[v132];
      if (v141 + 1 == v133)
      {
        v19 = v133;
        v20 = v138;
        v21 = v130;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v143)
    {
      break;
    }

    v75 = *v146;
    v76 = v144;
    (*v146)(v144, v65, v6);
    swift_arrayInitWithTakeFrontToBack();
    v75(v62, v76, v6);
    v62 += v63;
    v65 += v63;
    v57 = __CFADD__(v64++, 1);
    if (v57)
    {
      goto LABEL_46;
    }
  }

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
}

void sub_2312F05A8(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v59 = a4;
  v8 = sub_231367B30();
  MEMORY[0x28223BE20](v8);
  v65 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v64 = v55 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v15 = a2 - a1 == 0x8000000000000000 && v14 == -1;
  if (v15)
  {
    goto LABEL_61;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v18 = (a2 - a1) / v14;
  v68 = a1;
  v67 = v59;
  v62 = (v11 + 8);
  v63 = (v11 + 16);
  v19 = v16 / v14;
  v55[1] = v4;
  if (v18 >= v16 / v14)
  {
    v60 = a1;
    sub_23126F71C(a2, v16 / v14, v59);
    v32 = v59;
    v33 = v59 + v19 * v14;
    v34 = -v14;
    v35 = v33;
    v57 = -v14;
LABEL_37:
    v61 = a2 + v34;
    v36 = a3;
    v55[0] = v35;
    v58 = a2;
    while (1)
    {
      if (v33 <= v32)
      {
        v68 = a2;
        v66 = v35;
        goto LABEL_59;
      }

      if (a2 <= v60)
      {
        break;
      }

      v56 = v35;
      v37 = v36 + v34;
      v38 = v33 + v34;
      v39 = v64;
      v40 = *v63;
      v41 = v33;
      (*v63)(v64, v33 + v34, v8);
      v42 = v65;
      v40(v65, v61, v8);
      sub_231367B10();
      v44 = v43;
      sub_231367B10();
      v46 = v45;
      v47 = *v62;
      (*v62)(v42, v8);
      v47(v39, v8);
      if (v46 < v44)
      {
        v51 = v36 < v58 || v37 >= v58;
        a3 = v36 + v34;
        if (v51)
        {
          v52 = v61;
          swift_arrayInitWithTakeFrontToBack();
          a2 = v52;
          v35 = v56;
          v34 = v57;
          v32 = v59;
          v33 = v41;
        }

        else
        {
          v53 = v56;
          v34 = v57;
          v35 = v56;
          v54 = v61;
          v32 = v59;
          v33 = v41;
          a2 = v61;
          if (v36 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
            v33 = v41;
            v32 = v59;
            a2 = v54;
            v35 = v53;
          }
        }

        goto LABEL_37;
      }

      v48 = v36 < v41 || v37 >= v41;
      v49 = v36 + v34;
      v50 = v58;
      if (v48)
      {
        swift_arrayInitWithTakeFrontToBack();
        v36 += v34;
        v33 = v38;
        v35 = v38;
        v32 = v59;
        v34 = v57;
        a2 = v50;
      }

      else
      {
        v35 = v38;
        v15 = v41 == v36;
        v36 += v34;
        v33 = v38;
        v32 = v59;
        v34 = v57;
        a2 = v58;
        if (!v15)
        {
          swift_arrayInitWithTakeBackToFront();
          v32 = v59;
          v36 = v49;
          v33 = v38;
          v35 = v38;
        }
      }
    }

    v68 = a2;
    v66 = v55[0];
  }

  else
  {
    v61 = a3;
    sub_23126F71C(a1, (a2 - a1) / v14, v59);
    v20 = v59;
    v60 = v59 + v18 * v14;
    v66 = v60;
    v21 = v65;
    while (v20 < v60 && a2 < v61)
    {
      v23 = v64;
      v24 = *v63;
      (*v63)(v64, a2, v8);
      v24(v21, v20, v8);
      sub_231367B10();
      v26 = v25;
      sub_231367B10();
      v28 = v27;
      v29 = *v62;
      (*v62)(v21, v8);
      v29(v23, v8);
      if (v28 >= v26)
      {
        if (a1 < v20 || a1 >= v20 + v14)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v20)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v67 = v20 + v14;
        v20 += v14;
      }

      else
      {
        if (a1 < a2 || a1 >= a2 + v14)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v14;
      }

      a1 += v14;
      v68 = a1;
    }
  }

LABEL_59:
  sub_23120C4CC(&v68, &v67, &v66);
}

unint64_t sub_2312F0AD8(unint64_t result, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(a3 + 16);
  if (v4 < result || v4 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    a4(0);
    return sub_231369EE0();
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2312F0B88(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_2312F0BF4()
{
  v1 = v0[7];
  v2 = swift_allocObject();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_231367AD0();
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  *(v2 + 16) = MEMORY[0x231929610](v3, v4);
  *(v2 + 24) = v5;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v6 = v0[1];

  return v6(v2 | 0xA000000000000000);
}

uint64_t sub_2312F0CEC(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23120B320;

  return sub_2312F0BD4(v4, a2);
}

uint64_t sub_2312F0D80()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44860, &qword_2313765E0);
  result = sub_231368700();
  qword_27DD4BA18 = result;
  return result;
}

uint64_t sub_2312F0DD8()
{
  OUTLINED_FUNCTION_8();
  v1[27] = v2;
  v1[28] = v0;
  v1[25] = v3;
  v1[26] = v4;
  v1[24] = v5;
  v1[29] = *v0;
  v6 = sub_231368180();
  v1[30] = v6;
  OUTLINED_FUNCTION_0(v6);
  v1[31] = v7;
  v1[32] = OUTLINED_FUNCTION_43();
  v8 = sub_2313667A0();
  v1[33] = v8;
  OUTLINED_FUNCTION_0(v8);
  v1[34] = v9;
  v1[35] = OUTLINED_FUNCTION_43();
  v10 = sub_2313673A0();
  v1[36] = v10;
  OUTLINED_FUNCTION_0(v10);
  v1[37] = v11;
  v1[38] = OUTLINED_FUNCTION_43();
  v12 = sub_2313698C0();
  v1[39] = v12;
  OUTLINED_FUNCTION_0(v12);
  v1[40] = v13;
  v1[41] = OUTLINED_FUNCTION_67();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44858, &qword_2313765C0);
  OUTLINED_FUNCTION_40_0(v14);
  v1[46] = OUTLINED_FUNCTION_43();
  v15 = sub_231367490();
  v1[47] = v15;
  OUTLINED_FUNCTION_0(v15);
  v1[48] = v16;
  v1[49] = OUTLINED_FUNCTION_67();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_2312F1050()
{
  v34 = v0;
  v1 = *(v0 + 224);
  v2 = sub_231368520();
  if (v2 == *(v1 + 16) && v3 == *(v1 + 24))
  {
  }

  else
  {
    v5 = OUTLINED_FUNCTION_33_14(v2);

    if ((v5 & 1) == 0)
    {
      sub_231369130();

      v6 = sub_2313698A0();
      v7 = sub_23136A3A0();

      v8 = os_log_type_enabled(v6, v7);
      v9 = *(v0 + 336);
      v10 = *(v0 + 312);
      v11 = *(v0 + 320);
      if (v8)
      {
        v12 = *(v0 + 224);
        v32 = *(v0 + 336);
        v13 = OUTLINED_FUNCTION_29_0();
        v33 = swift_slowAlloc();
        *v13 = 136315650;
        v14 = sub_231368520();
        sub_2311CFD58(v14, v15, &v33);
        OUTLINED_FUNCTION_36_12();
        *(v13 + 4) = v10;
        *(v13 + 12) = 2080;
        *(v0 + 176) = v12;

        v16 = sub_23136A010();
        sub_2311CFD58(v16, v17, &v33);
        OUTLINED_FUNCTION_36_12();
        *(v13 + 14) = v10;
        *(v13 + 22) = 2080;
        v18 = OUTLINED_FUNCTION_26_1();
        *(v13 + 24) = sub_2311CFD58(v18, v19, v20);
        OUTLINED_FUNCTION_34_12(&dword_2311CB000, v21, v22, "Parameter's identifier (%s) is required to match %s's resolverTypeOperand (%s). Returning empty results");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_10_25();
        OUTLINED_FUNCTION_29();

        (*(v11 + 8))(v32, v10);
      }

      else
      {

        (*(v11 + 8))(v9, v10);
      }

      OUTLINED_FUNCTION_1_38();

      OUTLINED_FUNCTION_14();
      v30 = MEMORY[0x277D84F90];

      return v29(v30);
    }
  }

  OUTLINED_FUNCTION_2_25(*(v0 + 200));
  sub_231368300();
  OUTLINED_FUNCTION_90();
  *(v0 + 416) = v23;
  *(v0 + 424) = v24;
  ObjectType = swift_getObjectType();
  *(v0 + 432) = ObjectType;
  OUTLINED_FUNCTION_109(ObjectType);
  OUTLINED_FUNCTION_36_0();
  v26 = OUTLINED_FUNCTION_10_16();

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t sub_2312F1334()
{
  OUTLINED_FUNCTION_8();
  sub_231369360();
  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

void sub_2312F13A0()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 376);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 200);
    sub_231228E9C(v1, &qword_27DD44858, &qword_2313765C0);
    sub_231369130();
    sub_2311CF324(v3, v0 + 16);
    v4 = sub_2313698A0();
    v5 = sub_23136A3A0();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 312);
    v8 = *(v0 + 320);
    if (v6)
    {
      v9 = OUTLINED_FUNCTION_60();
      v60 = OUTLINED_FUNCTION_29_0();
      *v9 = 136315138;
      v65 = v60;
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      OUTLINED_FUNCTION_32_13();
      sub_2313676F0();

      sub_231368130();
      v10 = OUTLINED_FUNCTION_22_18();
      v11(v10);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
      v12 = OUTLINED_FUNCTION_28();
      v15 = sub_2311CFD58(v12, v13, v14);

      *(v9 + 4) = v15;
      OUTLINED_FUNCTION_17_16();
      _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      OUTLINED_FUNCTION_10_25();
      OUTLINED_FUNCTION_29();

      (*(v8 + 8))(v62, v7);
    }

    else
    {

      v45 = OUTLINED_FUNCTION_28();
      v46(v45);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    }

    OUTLINED_FUNCTION_1_38();

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_31();

    __asm { BRAA            X2, X16 }
  }

  v22 = *(v0 + 400);
  v21 = *(v0 + 408);
  v23 = *(v0 + 384);
  (*(v23 + 32))(v21, v1, v2);
  sub_231369130();
  v24 = *(v23 + 16);
  *(v0 + 440) = v24;
  *(v0 + 448) = (v23 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v24(v22, v21, v2);
  v25 = sub_2313698A0();
  v26 = sub_23136A3A0();
  v27 = os_log_type_enabled(v25, v26);
  v28 = *(v0 + 400);
  v29 = *(v0 + 376);
  v30 = *(v0 + 384);
  v31 = *(v0 + 360);
  v33 = *(v0 + 312);
  v32 = *(v0 + 320);
  if (v27)
  {
    v57 = v25;
    v64 = *(v0 + 360);
    v63 = *(v0 + 312);
    v58 = OUTLINED_FUNCTION_60();
    v61 = OUTLINED_FUNCTION_29_0();
    v65 = v61;
    *v58 = 136315138;
    v59 = v26;
    sub_231367430();
    OUTLINED_FUNCTION_8_24();
    sub_2312F42C8(v34, 255, v35, MEMORY[0x277D608A8]);
    v36 = sub_23136A8B0();
    v37 = v29;
    v39 = v38;
    v40 = OUTLINED_FUNCTION_28_0();
    v41(v40);
    v42 = *(v30 + 8);
    v42(v28, v37);
    v43 = sub_2311CFD58(v36, v39, &v65);

    *(v58 + 4) = v43;
    _os_log_impl(&dword_2311CB000, v57, v59, "ToolKitIntentDetailsResolver: Resolving IntentDetails for intentQuery.intentType: %s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_10_25();

    v44 = *(v32 + 8);
    v44(v64, v63);
  }

  else
  {

    v42 = *(v30 + 8);
    v42(v28, v29);
    v44 = *(v32 + 8);
    v44(v31, v33);
  }

  *(v0 + 456) = v42;
  *(v0 + 464) = v44;
  if (qword_27DD42DE8 != -1)
  {
    swift_once();
  }

  v50 = *(v0 + 216);
  v49 = *(v0 + 224);
  v52 = *(v0 + 200);
  v51 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1(v51, v51[3]);
  sub_2313677C0();
  sub_2311CF324(v52, v0 + 56);
  sub_2311CF324(v51, v0 + 96);
  sub_2311CF324(v50, v0 + 136);
  v53 = swift_allocObject();
  *(v0 + 472) = v53;
  sub_2311D38A8((v0 + 56), v53 + 16);
  sub_2311D38A8((v0 + 96), v53 + 56);
  sub_2311D38A8((v0 + 136), v53 + 96);
  *(v53 + 136) = v49;

  v54 = swift_task_alloc();
  *(v0 + 480) = v54;
  *v54 = v0;
  v54[1] = sub_2312F1960;
  OUTLINED_FUNCTION_31();

  __asm { BR              X4 }
}

uint64_t sub_2312F1960()
{
  OUTLINED_FUNCTION_26();
  v2 = *v1;
  *(*v1 + 488) = v0;

  (*(v2[34] + 8))(v2[35], v2[33]);

  if (v0)
  {
    v3 = sub_2312F1E48;
  }

  else
  {
    v3 = sub_2312F1AE0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2312F1AE0()
{
  v40 = v0;
  v1 = v0[55];
  v2 = v0[51];
  v3 = v0[49];
  v4 = v0[47];
  v5 = v0[23];
  v6 = swift_task_alloc();
  *(v6 + 16) = v2;
  sub_231254A3C(sub_2312F42A8, v6, v5, v7);
  v9 = v8;

  sub_231369130();
  v1(v3, v2, v4);
  sub_231369EE0();
  v10 = sub_2313698A0();
  v11 = sub_23136A3A0();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[58];
  v14 = v0[44];
  v15 = v0[39];
  if (v12)
  {
    v37 = v0[44];
    v36 = v0[39];
    v16 = swift_slowAlloc();
    v34 = OUTLINED_FUNCTION_29_0();
    v39 = v34;
    *v16 = 134218242;
    *(v16 + 4) = *(v9 + 16);

    *(v16 + 12) = 2080;
    v35 = v13;
    sub_231367430();
    OUTLINED_FUNCTION_8_24();
    sub_2312F42C8(v17, 255, v18, MEMORY[0x277D608A8]);
    v19 = sub_23136A8B0();
    v21 = v20;
    v22 = OUTLINED_FUNCTION_71();
    v23(v22);
    v24 = OUTLINED_FUNCTION_31_18();
    v25(v24);
    v26 = sub_2311CFD58(v19, v21, &v39);

    *(v16 + 14) = v26;
    _os_log_impl(&dword_2311CB000, v10, v11, "ToolKitIntentDetailsResolver: Resolved %ld IntentDetails for intentQuery.intentType: %s", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    OUTLINED_FUNCTION_10_25();
    OUTLINED_FUNCTION_29();

    v35(v37, v36);
  }

  else
  {

    v28 = OUTLINED_FUNCTION_31_18();
    v29(v28);
    v27.n128_f64[0] = (v13)(v14, v15);
  }

  v30 = v0[57];
  v38 = sub_23121D750(v9, v27);

  v31 = OUTLINED_FUNCTION_26_1();
  v30(v31);

  OUTLINED_FUNCTION_14();

  return v32(v38);
}

uint64_t sub_2312F1E48(uint64_t a1)
{
  v2 = v1[61];
  sub_231369130();
  v3 = v2;
  v4 = sub_2313698A0();
  v5 = sub_23136A3B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[61];
    v7 = OUTLINED_FUNCTION_60();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2311CB000, v4, v5, "Unable to communicate with ToolKitIntentService: %@", v7, 0xCu);
    sub_231228E9C(v8, &qword_27DD433B0, &unk_23136EDC0);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();
  }

  v11 = v1[61];
  v13 = v1[57];
  v12 = v1[58];

  v14 = OUTLINED_FUNCTION_71();
  v12(v14);

  v15 = OUTLINED_FUNCTION_26_1();
  v13(v15);
  OUTLINED_FUNCTION_1_38();

  OUTLINED_FUNCTION_14();
  v17 = MEMORY[0x277D84F90];

  return v16(v17);
}

uint64_t sub_2312F2044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_231366860();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = sub_231367C70();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312F2174, 0, 0);
}

uint64_t sub_2312F2174()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_25(*(v0 + 24));
  sub_231368300();
  OUTLINED_FUNCTION_90();
  *(v0 + 112) = v1;
  *(v0 + 120) = v2;
  ObjectType = swift_getObjectType();
  *(v0 + 128) = ObjectType;
  OUTLINED_FUNCTION_109(ObjectType);
  OUTLINED_FUNCTION_36_0();
  v4 = OUTLINED_FUNCTION_10_16();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2312F21F4()
{
  OUTLINED_FUNCTION_26();
  v1 = sub_231369340();
  v3 = v2;
  swift_unknownObjectRelease();
  v0[17] = v1;
  v0[18] = v3;
  v0[19] = swift_getObjectType();
  sub_23136A260();
  OUTLINED_FUNCTION_36_0();
  v4 = OUTLINED_FUNCTION_10_16();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2312F2290()
{
  OUTLINED_FUNCTION_8();
  *(v0 + 160) = sub_231368020();
  swift_unknownObjectRelease();
  v1 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_2312F22FC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
  OUTLINED_FUNCTION_71();
  sub_2313677D0();
  (*(v3 + 104))(v1, *MEMORY[0x277D60AC8], v2);
  sub_2312F42C8(&qword_280F7CA78, 255, MEMORY[0x277D60AE8], MEMORY[0x277D60B00]);
  v4 = sub_231369F60();
  v5 = *(v3 + 8);
  v5(v1, v2);
  v6 = OUTLINED_FUNCTION_28_0();
  (v5)(v6);
  if (v4)
  {
    v7 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_2_25(*(v0 + 40));
    v7 = sub_2313683A0();
  }

  *(v0 + 168) = v7;
  v8 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1((*(v0 + 48) + 32), *(*(v0 + 48) + 56));
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  OUTLINED_FUNCTION_71();
  sub_231368360();
  v9 = swift_task_alloc();
  *(v0 + 176) = v9;
  *v9 = v0;
  v9[1] = sub_2312F24E0;

  return sub_2312F5834();
}

uint64_t sub_2312F24E0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *v6 = *v2;
  v5[23] = v1;

  v7 = v4[9];
  v8 = v4[8];
  v9 = v4[7];
  if (v1)
  {
    (*(v8 + 8))(v7, v9);

    v10 = sub_2312F2730;
  }

  else
  {
    v5[24] = a1;
    (*(v8 + 8))(v7, v9);

    v10 = sub_2312F26B0;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_2312F26B0()
{
  OUTLINED_FUNCTION_8();
  **(v0 + 16) = *(v0 + 192);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2312F2730()
{
  OUTLINED_FUNCTION_8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2312F27F4()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_2312F2858()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2312F2918;

  return sub_2312F0DD8();
}

uint64_t sub_2312F2918()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_14();

  return v5(v2);
}

uint64_t sub_2312F2A04()
{
  OUTLINED_FUNCTION_8();
  v1[15] = v2;
  v1[16] = v0;
  v1[14] = v3;
  v1[17] = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F08, &qword_231370CD0);
  OUTLINED_FUNCTION_40_0(v4);
  v1[18] = OUTLINED_FUNCTION_43();
  v5 = sub_231369A00();
  v1[19] = v5;
  OUTLINED_FUNCTION_0(v5);
  v1[20] = v6;
  v1[21] = OUTLINED_FUNCTION_43();
  v7 = sub_2313673A0();
  v1[22] = v7;
  OUTLINED_FUNCTION_0(v7);
  v1[23] = v8;
  v1[24] = OUTLINED_FUNCTION_43();
  v9 = type metadata accessor for IntentDetails(0);
  v1[25] = v9;
  OUTLINED_FUNCTION_40_0(v9);
  v1[26] = OUTLINED_FUNCTION_43();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43808, &qword_231373E90);
  OUTLINED_FUNCTION_40_0(v10);
  v1[27] = OUTLINED_FUNCTION_43();
  v11 = sub_231367550();
  v1[28] = v11;
  OUTLINED_FUNCTION_0(v11);
  v1[29] = v12;
  v1[30] = OUTLINED_FUNCTION_67();
  v1[31] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44858, &qword_2313765C0);
  OUTLINED_FUNCTION_40_0(v13);
  v1[32] = OUTLINED_FUNCTION_43();
  v14 = sub_231367490();
  v1[33] = v14;
  OUTLINED_FUNCTION_0(v14);
  v1[34] = v15;
  v1[35] = OUTLINED_FUNCTION_67();
  v1[36] = swift_task_alloc();
  v16 = sub_231368180();
  v1[37] = v16;
  OUTLINED_FUNCTION_0(v16);
  v1[38] = v17;
  v1[39] = OUTLINED_FUNCTION_43();
  v18 = sub_2313698C0();
  v1[40] = v18;
  OUTLINED_FUNCTION_0(v18);
  v1[41] = v19;
  v1[42] = OUTLINED_FUNCTION_67();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_2312F2D4C()
{
  v63 = v0;
  v1 = v0[16];
  v2 = sub_231368520();
  if (v2 == *(v1 + 16) && v3 == *(v1 + 24))
  {
  }

  else
  {
    v5 = OUTLINED_FUNCTION_33_14(v2);

    if ((v5 & 1) == 0)
    {
      sub_231369130();

      v6 = sub_2313698A0();
      v7 = sub_23136A3A0();

      v8 = os_log_type_enabled(v6, v7);
      v10 = v0[41];
      v9 = v0[42];
      v11 = v0[40];
      if (v8)
      {
        v12 = v0[16];
        v61 = v0[42];
        v13 = OUTLINED_FUNCTION_29_0();
        v62 = swift_slowAlloc();
        *v13 = 136315650;
        v14 = sub_231368520();
        sub_2311CFD58(v14, v15, &v62);
        OUTLINED_FUNCTION_36_12();
        *(v13 + 4) = v11;
        *(v13 + 12) = 2080;
        v0[12] = v12;

        v16 = sub_23136A010();
        sub_2311CFD58(v16, v17, &v62);
        OUTLINED_FUNCTION_36_12();
        *(v13 + 14) = v11;
        *(v13 + 22) = 2080;
        v18 = OUTLINED_FUNCTION_26_1();
        *(v13 + 24) = sub_2311CFD58(v18, v19, v20);
        OUTLINED_FUNCTION_34_12(&dword_2311CB000, v21, v22, "Parameter's identifier (%s) is required to match %s's resolverTypeOperand (%s). Returning empty results");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_10_25();
        OUTLINED_FUNCTION_29();

        (*(v10 + 8))(v61, v11);
      }

      else
      {

        (*(v10 + 8))(v9, v11);
      }

      v54 = OUTLINED_FUNCTION_3_30();
      OUTLINED_FUNCTION_6_21(v54);

      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_35();

      __asm { BRAA            X2, X16 }
    }
  }

  v23 = v0[15];
  sub_231369130();
  sub_2311CF324(v23, (v0 + 2));

  v24 = sub_2313698A0();
  v25 = sub_23136A3A0();

  v26 = os_log_type_enabled(v24, v25);
  v27 = v0[47];
  v28 = v0[40];
  v29 = v0[41];
  if (v26)
  {
    v58 = v0[16];
    v30 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v30 = 136315394;
    v62 = v59;
    v60 = v27;
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    sub_2313682A0();
    sub_2313676F0();

    sub_231368130();
    v31 = OUTLINED_FUNCTION_22_18();
    v32(v31);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v33 = OUTLINED_FUNCTION_28();
    v36 = sub_2311CFD58(v33, v34, v35);

    *(v30 + 4) = v36;
    *(v30 + 12) = 2080;
    v0[13] = v58;

    v37 = sub_23136A010();
    v39 = sub_2311CFD58(v37, v38, &v62);

    *(v30 + 14) = v39;
    OUTLINED_FUNCTION_17_16();
    _os_log_impl(v40, v41, v42, v43, v44, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10_25();
    OUTLINED_FUNCTION_29();

    v45 = *(v29 + 8);
    v45(v60, v28);
  }

  else
  {

    v45 = *(v29 + 8);
    v46 = OUTLINED_FUNCTION_26_1();
    (v45)(v46);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  }

  v0[48] = v45;
  OUTLINED_FUNCTION_2_25(v0[15]);
  sub_231368300();
  OUTLINED_FUNCTION_90();
  v0[49] = v47;
  v0[50] = v48;
  ObjectType = swift_getObjectType();
  v0[51] = ObjectType;
  OUTLINED_FUNCTION_109(ObjectType);
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_10_16();
  OUTLINED_FUNCTION_35();

  return MEMORY[0x2822009F8](v50, v51, v52);
}

uint64_t sub_2312F3208()
{
  OUTLINED_FUNCTION_8();
  sub_231369360();
  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_2312F3274()
{
  v2 = v0[32];
  v1 = v0[33];
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v3 = v0[15];
    sub_231228E9C(v2, &qword_27DD44858, &qword_2313765C0);
    sub_231369130();
    sub_2311CF324(v3, (v0 + 7));
    v4 = sub_2313698A0();
    v5 = sub_23136A3A0();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[48];
    v8 = v0[43];
    if (v6)
    {
      v36 = v0[40];
      v9 = v0[38];
      v10 = v0[39];
      v34 = v0[37];
      v11 = OUTLINED_FUNCTION_60();
      v37 = OUTLINED_FUNCTION_29_0();
      *v11 = 136315138;
      __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      OUTLINED_FUNCTION_32_13();
      sub_2313676F0();

      sub_231368130();
      (*(v9 + 8))(v10, v34);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
      v12 = OUTLINED_FUNCTION_28();
      v15 = sub_2311CFD58(v12, v13, v14);

      *(v11 + 4) = v15;
      OUTLINED_FUNCTION_17_16();
      _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      v35(v8, v36);
    }

    else
    {

      v29 = OUTLINED_FUNCTION_26_1();
      v7(v29);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    }

    v30 = OUTLINED_FUNCTION_3_30();
    OUTLINED_FUNCTION_6_21(v30);

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_35();

    __asm { BRAA            X2, X16 }
  }

  v21 = v0[15];
  (*(v0[34] + 32))(v0[36], v2, v1);
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  sub_231368300();
  OUTLINED_FUNCTION_90();
  v0[52] = v22;
  v0[53] = v23;
  ObjectType = swift_getObjectType();
  v0[54] = ObjectType;
  OUTLINED_FUNCTION_109(ObjectType);
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_10_16();
  OUTLINED_FUNCTION_35();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_2312F35A0()
{
  OUTLINED_FUNCTION_26();
  v1 = sub_2313693D0();
  v3 = v2;
  swift_unknownObjectRelease();
  *(v0 + 440) = v1;
  *(v0 + 448) = v3;
  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2312F361C()
{
  v1 = *(v0 + 448);
  if (!v1)
  {
LABEL_9:
    sub_231369130();
    v10 = sub_2313698A0();
    v11 = sub_23136A3A0();
    if (os_log_type_enabled(v10, v11))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_57(&dword_2311CB000, v12, v13, "Fallback phrase not provided for intent");
      OUTLINED_FUNCTION_29();
    }

    v14 = *(v0 + 384);

    v15 = OUTLINED_FUNCTION_28_0();
    v14(v15);
    v16 = OUTLINED_FUNCTION_54_0();
    v17(v16);
    OUTLINED_FUNCTION_3_30();

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_31();

    __asm { BRAA            X2, X16 }
  }

  v2 = *(v0 + 440) & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (!v2)
  {

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_2_25(*(v0 + 120));
  sub_231368300();
  OUTLINED_FUNCTION_90();
  *(v0 + 456) = v3;
  *(v0 + 464) = v4;
  ObjectType = swift_getObjectType();
  *(v0 + 472) = ObjectType;
  OUTLINED_FUNCTION_109(ObjectType);
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_10_16();
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2312F384C()
{
  OUTLINED_FUNCTION_8();
  sub_231369460();
  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_2312F38B8()
{
  v75 = v0;
  v1 = v0[27];
  v2 = v0[28];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) != 1)
  {
    (*(v0[29] + 32))(v0[31], v1, v2);
    sub_231369130();
    sub_231369EE0();
    v11 = sub_2313698A0();
    v12 = sub_23136A3A0();

    if (os_log_type_enabled(v11, v12))
    {
      v14 = v0[55];
      v13 = v0[56];
      v71 = v0[48];
      v15 = OUTLINED_FUNCTION_60();
      v16 = OUTLINED_FUNCTION_29_0();
      v73 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_2311CFD58(v14, v13, &v73);
      _os_log_impl(&dword_2311CB000, v11, v12, "Creating IntentDetails using provided phrase fallback from our client: %s.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      v17 = OUTLINED_FUNCTION_28_0();
      v71(v17);
    }

    else
    {
      v18 = v0[48];

      v19 = OUTLINED_FUNCTION_28_0();
      v18(v19);
    }

    v66 = v0[55];
    v68 = v0[56];
    v20 = v0[35];
    v72 = v0[36];
    v21 = v0[33];
    v22 = v0[34];
    v23 = v0[28];
    v24 = v0[26];
    v62 = v0[30];
    v63 = v0[25];
    v25 = v0[23];
    v64 = v0[24];
    v65 = v0[22];
    v26 = *(v0[29] + 16);
    v26();
    v27 = *(v22 + 16);
    v27(v20, v72, v21);
    sub_231369EC0();
    (v26)(v24, v62, v23);
    v27(v24 + *(v63 + 20), v20, v21);
    v28 = (v24 + *(v63 + 28));
    *v28 = v66;
    v28[1] = v68;
    sub_231367430();
    v29 = (*(v25 + 88))(v64, v65);
    if (v29 == *MEMORY[0x277D60878])
    {
      v30 = v0[21];
      v32 = v0[19];
      v31 = v0[20];
      (*(v0[23] + 8))(v0[24], v0[22]);
      (*(v31 + 104))(v30, *MEMORY[0x277D723F0], v32);
      v33 = sub_2313699F0();
      v35 = v34;
      (*(v31 + 8))(v30, v32);
      v73 = v33;
      v74 = v35;
    }

    else
    {
      if (v29 != *MEMORY[0x277D60868])
      {
        sub_231367520();
        v45 = OUTLINED_FUNCTION_54_0();
        v46(v45);
        goto LABEL_14;
      }

      v37 = v0[20];
      v36 = v0[21];
      v38 = v0[19];
      v39 = OUTLINED_FUNCTION_54_0();
      v40(v39);
      (*(v37 + 104))(v36, *MEMORY[0x277D723E8], v38);
      v41 = sub_2313699F0();
      v43 = v42;
      (*(v37 + 8))(v36, v38);
      v73 = v41;
      v74 = v43;
    }

    MEMORY[0x23192A730](95, 0xE100000000000000);
    v44 = sub_231367520();
    MEMORY[0x23192A730](v44);

LABEL_14:
    v47 = v0[35];
    v48 = v0[33];
    v49 = v0[34];
    v50 = v0[30];
    v67 = v0[31];
    v69 = v0[36];
    v51 = v0[28];
    v52 = v0[29];
    v54 = v0[25];
    v53 = v0[26];
    sub_231367530();
    sub_231369020();
    v55 = *(v49 + 8);
    v55(v47, v48);
    v56 = *(v52 + 8);
    v56(v50, v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43490, &qword_2313703F0);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_23136B670;
    *(v57 + 56) = v54;
    v70 = v57;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v57 + 32));
    sub_2312053C8(v53, boxed_opaque_existential_1, v59);
    v56(v67, v51);
    v55(v69, v48);
    goto LABEL_15;
  }

  sub_231228E9C(v1, &qword_27DD43808, &qword_231373E90);
  sub_231369130();
  v3 = sub_2313698A0();
  v4 = sub_23136A3A0();
  if (os_log_type_enabled(v3, v4))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_57(&dword_2311CB000, v5, v6, "Cannot get intent from Context");
    OUTLINED_FUNCTION_29();
  }

  v7 = v0[48];

  v8 = OUTLINED_FUNCTION_28_0();
  v7(v8);
  v9 = OUTLINED_FUNCTION_54_0();
  v10(v9);
  v70 = MEMORY[0x277D84F90];
LABEL_15:
  OUTLINED_FUNCTION_6_21(v0[47]);

  OUTLINED_FUNCTION_14();

  return v60(v70);
}

uint64_t sub_2312F3F48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2312F4310;

  return sub_2312F2A04();
}

uint64_t sub_2312F4110()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v4 = *(v0 + 136);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2312F41C0;

  return sub_2312F2044(v3, v0 + 16, v0 + 56, v0 + 96, v4);
}

uint64_t sub_2312F41C0()
{
  OUTLINED_FUNCTION_8();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2312F42C8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2312F4328(uint64_t a1)
{
  v1 = sub_231366860();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231366800();
  sub_231369B10();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_2312F4424(uint64_t a1)
{
  v1 = sub_231369B50();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_231366860();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231366800();
  (*(v2 + 104))(v4, *MEMORY[0x277D72858], v1);
  v9 = sub_231369B00();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  return v9;
}

uint64_t sub_2312F45E4(uint64_t a1)
{
  v2 = sub_231369D00();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v62 = &v51[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v57 = &v51[-v6];
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD448B8, &qword_231376720);
  MEMORY[0x28223BE20](v61);
  v63 = &v51[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v56 = &v51[-v9];
  MEMORY[0x28223BE20](v10);
  v55 = &v51[-v11];
  v12 = MEMORY[0x277D84F98];
  v64 = MEMORY[0x277D84F98];
  v13 = a1 + 64;
  v14 = 1 << *(a1 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a1 + 64);
  v17 = (v14 + 63) >> 6;
  v53 = v3;
  v54 = (v3 + 16);
  v59 = a1;
  v60 = (v3 + 32);
  result = sub_231369EE0();
  v19 = 0;
  v52 = a1 + 64;
  v58 = v2;
  if (v16)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_5:
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v20 >= v17)
    {

      return v12;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
  }

  while (!v16);
  v19 = v20;
  while (1)
  {
LABEL_9:
    v21 = __clz(__rbit64(v16)) | (v19 << 6);
    v22 = *(v59 + 56);
    v23 = (*(v59 + 48) + 16 * v21);
    v25 = *v23;
    v24 = v23[1];
    v26 = (type metadata accessor for ResolvedParameter(0) - 8);
    v27 = v22 + *(*v26 + 72) * v21;
    v28 = v61;
    v29 = v55;
    sub_2312FB298(v27, &v55[*(v61 + 48)], type metadata accessor for ResolvedParameter);
    *v29 = v25;
    v29[1] = v24;
    v30 = v29;
    v31 = v56;
    sub_2312FB2F8(v30, v56);
    v32 = &v31[*(v28 + 48) + v26[8]];
    v33 = v57;
    v34 = v58;
    (*v54)(v57, v32, v58);
    sub_2312FB2F8(v31, v63);
    v35 = *v60;
    (*v60)(v62, v33, v34);
    v36 = *(v12 + 16);
    if (*(v12 + 24) <= v36)
    {
      sub_231369EE0();
      sub_2312B4368(v36 + 1, 1);
    }

    else
    {
      sub_231369EE0();
    }

    v12 = v64;
    v38 = *v63;
    v37 = v63[1];
    sub_23136A9D0();
    sub_23136A060();
    result = sub_23136AA00();
    v39 = v12 + 64;
    v40 = -1 << *(v12 + 32);
    v41 = result & ~v40;
    v42 = v41 >> 6;
    if (((-1 << v41) & ~*(v12 + 64 + 8 * (v41 >> 6))) == 0)
    {
      break;
    }

    v43 = __clz(__rbit64((-1 << v41) & ~*(v12 + 64 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v16 &= v16 - 1;
    v48 = v62;
    v49 = *(v61 + 48);
    *(v39 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
    v50 = (*(v12 + 48) + 16 * v43);
    *v50 = v38;
    v50[1] = v37;
    v35(*(v12 + 56) + *(v53 + 72) * v43, v48, v34);
    ++*(v12 + 16);
    result = sub_2312FB368(v63 + v49, type metadata accessor for ResolvedParameter);
    v13 = v52;
    if (!v16)
    {
      goto LABEL_5;
    }
  }

  v44 = 0;
  v45 = (63 - v40) >> 6;
  while (++v42 != v45 || (v44 & 1) == 0)
  {
    v46 = v42 == v45;
    if (v42 == v45)
    {
      v42 = 0;
    }

    v44 |= v46;
    v47 = *(v39 + 8 * v42);
    if (v47 != -1)
    {
      v43 = __clz(__rbit64(~v47)) + (v42 << 6);
      goto LABEL_21;
    }
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_2312F4A68(uint64_t a1)
{
  v2 = sub_2313673A0();
  v48 = *(v2 - 8);
  v49 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD448F8, &unk_2313767E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - v6;
  v8 = sub_231369A00();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v36 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_231367490();
  v11 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1 + 56;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 56);
  v18 = (v15 + 63) >> 6;
  v45 = v11 + 8;
  v46 = v11 + 16;
  v44 = (v48 + 88);
  v43 = *MEMORY[0x277D60878];
  v40 = *MEMORY[0x277D60868];
  v42 = (v48 + 8);
  v37 = *MEMORY[0x277D723E8];
  v41 = (v9 + 104);
  v39 = *MEMORY[0x277D723F0];
  v34 = v9;
  v35 = (v9 + 32);
  v48 = a1;
  sub_231369EE0();
  v19 = 0;
  v38 = MEMORY[0x277D84F90];
  while (1)
  {
    v20 = v19;
    if (!v17)
    {
      break;
    }

LABEL_8:
    v21 = v47;
    (*(v11 + 16))(v13, *(v48 + 48) + *(v11 + 72) * (__clz(__rbit64(v17)) | (v19 << 6)), v47);
    sub_231367430();
    (*(v11 + 8))(v13, v21);
    v22 = v49;
    v23 = (*v44)(v4, v49);
    if (v23 == v43)
    {
      (*v42)(v4, v22);
      (*v41)(v7, v39, v8);
    }

    else
    {
      if (v23 != v40)
      {
        __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
        (*v42)(v4, v49);
        goto LABEL_14;
      }

      (*v42)(v4, v49);
      (*v41)(v7, v37, v8);
    }

    __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
LABEL_14:
    v17 &= v17 - 1;
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
    {
      sub_2311D1F18(v7, &qword_27DD448F8, &unk_2313767E0);
    }

    else
    {
      v24 = *v35;
      (*v35)(v36, v7, v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23126F04C(0, *(v38 + 16) + 1, 1, v38);
        v38 = v29;
      }

      v26 = *(v38 + 16);
      v25 = *(v38 + 24);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v32 = *(v38 + 16);
        v33 = v26 + 1;
        sub_23126F04C(v25 > 1, v26 + 1, 1, v38);
        v26 = v32;
        v27 = v33;
        v38 = v30;
      }

      v28 = v38;
      *(v38 + 16) = v27;
      v24((v28 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v26), v36, v8);
    }
  }

  while (1)
  {
    v19 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v19 >= v18)
    {

      sub_231255414();
      return;
    }

    v17 = *(v14 + 8 * v19);
    ++v20;
    if (v17)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_2312F4FA4(uint64_t a1)
{
  v2 = sub_231367490();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v9 = *(v3 + 16);
    v8 = v3 + 16;
    v10 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v31 = *(v8 + 56);
    v32 = v9;
    v11 = MEMORY[0x277D84F90];
    v30 = v8;
    do
    {
      v32(v6, v10, v2, v4);
      v12 = sub_231367470();
      v14 = v13;
      (*(v8 - 8))(v6, v2);
      if (v14)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_23126DC90();
          v11 = v17;
        }

        v15 = *(v11 + 16);
        if (v15 >= *(v11 + 24) >> 1)
        {
          sub_23126DC90();
          v11 = v18;
        }

        *(v11 + 16) = v15 + 1;
        v16 = v11 + 16 * v15;
        *(v16 + 32) = v12;
        *(v16 + 40) = v14;
      }

      v10 += v31;
      --v7;
    }

    while (v7);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v19 = 0;
  v20 = *(v11 + 16);
  v21 = MEMORY[0x277D84F90];
LABEL_13:
  v22 = (v11 + 40 + 16 * v19);
  while (1)
  {
    if (v20 == v19)
    {

      sub_231255354(v21);
      return;
    }

    if (v19 >= *(v11 + 16))
    {
      break;
    }

    ++v19;
    v24 = *(v22 - 1);
    v23 = *v22;
    v22 += 2;
    v25 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v25 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {
      sub_231369EE0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2311F4E34(0);
        v21 = v33;
      }

      v28 = *(v21 + 16);
      v27 = *(v21 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_2311F4E34(v27 > 1);
        v21 = v33;
      }

      *(v21 + 16) = v28 + 1;
      v29 = v21 + 16 * v28;
      *(v29 + 32) = v24;
      *(v29 + 40) = v23;
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_2312F5238(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F08, &qword_231370CD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - v3;
  v5 = sub_231367490();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 + 56;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 56);
  v13 = (v10 + 63) >> 6;
  v32 = (v6 + 8);
  v33 = v6 + 16;
  v34 = a1;
  sub_231369EE0();
  v14 = 0;
  v31 = MEMORY[0x277D84F90];
  while (1)
  {
    v15 = v14;
    if (!v12)
    {
      break;
    }

LABEL_8:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    (*(v6 + 16))(v8, *(v34 + 48) + *(v6 + 72) * (v16 | (v14 << 6)), v5);
    sub_231367450();
    v17 = sub_231367960();
    if (__swift_getEnumTagSinglePayload(v4, 1, v17) == 1)
    {
      (*v32)(v8, v5);
      sub_2311D1F18(v4, &qword_27DD43F08, &qword_231370CD0);
    }

    else
    {
      v18 = sub_231367930();
      v28 = v19;
      v29 = v18;
      v20 = *v32;
      v30 = v5;
      v20(v8, v5);
      (*(*(v17 - 8) + 8))(v4, v17);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23126DC90();
        v31 = v25;
      }

      v21 = *(v31 + 16);
      if (v21 >= *(v31 + 24) >> 1)
      {
        sub_23126DC90();
        v31 = v26;
      }

      v22 = v31;
      *(v31 + 16) = v21 + 1;
      v23 = v22 + 16 * v21;
      v24 = v28;
      *(v23 + 32) = v29;
      *(v23 + 40) = v24;
      v5 = v30;
    }
  }

  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v13)
    {

      sub_231255354(v31);
      return;
    }

    v12 = *(v9 + 8 * v14);
    ++v15;
    if (v12)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_2312F555C(uint64_t a1)
{
  v2 = sub_231367490();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v23 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v9 = 0;
  v10 = *(a1 + 16);
  v24 = v3 + 16;
  v25 = a1;
  v22 = (v3 + 32);
  v11 = MEMORY[0x277D84F90];
  while (v10 != v9)
  {
    v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v13 = *(v3 + 72);
    (*(v3 + 16))(v8, v25 + v12 + v13 * v9, v2, v6);
    sub_231367470();
    if (v14)
    {

      (*(v3 + 8))(v8, v2);
      ++v9;
    }

    else
    {
      v21 = *v22;
      v21(v23, v8, v2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2311F5FD4(0, *(v11 + 16) + 1, 1);
        v11 = v26;
      }

      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v20 = v17 + 1;
        sub_2311F5FD4(v16 > 1, v17 + 1, 1);
        v18 = v20;
        v11 = v26;
      }

      ++v9;
      *(v11 + 16) = v18;
      v21((v11 + v12 + v17 * v13), v23, v2);
    }
  }

  sub_231255540();
}

uint64_t sub_2312F5798@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for SuggestionsToolDatabaseManager();
  swift_allocObject();
  result = sub_2311EB588();
  if (!v1)
  {
    a1[3] = v3;
    a1[4] = &off_2845F2D98;
    *a1 = result;
  }

  return result;
}

id sub_2312F57FC()
{
  v0 = objc_allocWithZone(MEMORY[0x277D23C38]);

  return [v0 init];
}

uint64_t sub_2312F5834()
{
  OUTLINED_FUNCTION_8();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[8] = v5;
  v6 = sub_2313698C0();
  v1[13] = v6;
  OUTLINED_FUNCTION_0(v6);
  v1[14] = v7;
  v1[15] = OUTLINED_FUNCTION_43();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44868, &qword_231376650);
  v1[16] = v8;
  OUTLINED_FUNCTION_0(v8);
  v1[17] = v9;
  v1[18] = OUTLINED_FUNCTION_43();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44870, &qword_231376658);
  OUTLINED_FUNCTION_40_0(v10);
  v1[19] = OUTLINED_FUNCTION_43();
  v11 = sub_2313698F0();
  v1[20] = v11;
  OUTLINED_FUNCTION_0(v11);
  v1[21] = v12;
  v1[22] = OUTLINED_FUNCTION_43();
  v13 = sub_231369AC0();
  v1[23] = v13;
  OUTLINED_FUNCTION_0(v13);
  v1[24] = v14;
  v1[25] = OUTLINED_FUNCTION_67();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v15 = sub_231369840();
  v1[29] = v15;
  OUTLINED_FUNCTION_0(v15);
  v1[30] = v16;
  v1[31] = OUTLINED_FUNCTION_43();
  v17 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_2312F5A6C(uint64_t a1)
{
  v2 = v1[12];
  v3 = sub_231369190();
  sub_231369140();

  v4 = sub_231369190();
  OUTLINED_FUNCTION_51_10();
  sub_2313691A0();

  (*(v2 + 16))();
  v5 = v1[27];
  v6 = v1[24];
  v43 = v1[28];
  v44 = v1[23];
  v7 = v1[21];
  v8 = v1[22];
  v42 = v1[20];
  v46 = v1[19];
  v45 = v1[8];
  sub_2312F4FA4(v45);
  v49 = v9;
  v1[7] = MEMORY[0x277D84F90];
  sub_231369AA0();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44878, &unk_231376690);
  v10 = sub_231369900();
  OUTLINED_FUNCTION_0_0();
  v12 = v11;
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_23136B670;
  (*(v12 + 104))(v14 + v13, *MEMORY[0x277D720F8], v10);
  sub_2312558B4();
  *v8 = v15;
  (*(v7 + 104))(v8, *MEMORY[0x277D720A8], v42);
  sub_2312FB430(&qword_27DD44880, MEMORY[0x277D724B8], MEMORY[0x277D724A0]);
  sub_2312FB430(&qword_27DD44888, MEMORY[0x277D720C0], MEMORY[0x277D720B8]);
  sub_231369B40();

  (*(v7 + 8))(v8, v42);
  v16 = *(v6 + 8);
  v1[32] = v16;
  v1[33] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v5, v44);
  sub_2312F66A4(v45, v43, (v1 + 2), v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44890, &qword_2313766A0);
  sub_23136A210();
  if (*(v49 + 16))
  {
    v18 = v1[26];
    v17 = v1[27];
    v19 = v1[24];
    v47 = v1[23];
    v48 = v1[25];
    v20 = v1[17];
    v21 = v1[18];
    v22 = v1[16];
    sub_231369AA0();
    swift_getKeyPath();
    v23 = swift_allocObject();
    *(v23 + 16) = v49;
    *v21 = v23;
    (*(v20 + 104))(v21, *MEMORY[0x277D721B8], v22);
    sub_2312FB3DC(&qword_27DD44898, &qword_27DD44868, &qword_231376650);
    sub_231369B40();

    (*(v20 + 8))(v21, v22);
    v16(v17, v47);
    (*(v19 + 16))(v48, v18, v47);
    v24 = v1[7];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23126F0CC(0, *(v24 + 16) + 1, 1, v24);
      v24 = v40;
    }

    v26 = *(v24 + 16);
    v25 = *(v24 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_23126F0CC(v25 > 1, v26 + 1, 1, v24);
      v24 = v41;
    }

    v27 = v1[25];
    v28 = v1[23];
    v29 = v1[24];
    v16(v1[26], v28);
    *(v24 + 16) = v26 + 1;
    (*(v29 + 32))(v24 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v26, v27, v28);
    v1[7] = v24;
  }

  else
  {

    v24 = v1[7];
  }

  v1[34] = v24;
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  v1[35] = v30;
  *v30 = v31;
  v30[1] = sub_2312F614C;
  OUTLINED_FUNCTION_35();

  return sub_2312F6B10(v32, v33, v34, v35, v36, v37);
}

uint64_t sub_2312F614C(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *v5 = *v2;
  *(v4 + 288) = v1;

  if (v1)
  {
    v6 = sub_2312F63DC;
  }

  else
  {
    *(v4 + 296) = a1;
    v6 = sub_2312F6288;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2312F6288()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = v0[31];
  v4 = v0[28];
  v5 = v0[29];
  v6 = v0[23];
  sub_2311D1F18(v0[19], &qword_27DD44870, &qword_231376658);
  v1(v4, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v7 = sub_231369190();
  OUTLINED_FUNCTION_51_10();
  sub_231369180();

  (*(v2 + 8))(v3, v5);

  OUTLINED_FUNCTION_14();
  v9 = v0[37];

  return v8(v9);
}

uint64_t sub_2312F63DC()
{
  v1 = v0[32];
  v2 = v0[28];
  v3 = v0[23];
  sub_2311D1F18(v0[19], &qword_27DD44870, &qword_231376658);
  (v1)(v2, v3);
  v4 = v0[36];
  sub_231369130();
  v5 = v4;
  v6 = sub_2313698A0();
  v7 = sub_23136A3B0();

  if (os_log_type_enabled(v6, v7))
  {
    OUTLINED_FUNCTION_60();
    v8 = OUTLINED_FUNCTION_46_12();
    *v1 = 138412290;
    v9 = v4;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v10;
    *v8 = v10;
    OUTLINED_FUNCTION_23_15(&dword_2311CB000, v11, v12, "Unable to communicate with toolkit intent service: %@");
    sub_2311D1F18(v8, &qword_27DD433B0, &unk_23136EDC0);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_17_17();
  }

  v13 = OUTLINED_FUNCTION_29_5();
  v14(v13);
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v15 = sub_231369190();
  OUTLINED_FUNCTION_47_8(v15, "SiriSuggestionsIntentService");

  v16 = OUTLINED_FUNCTION_25_16();
  v17(v16);

  OUTLINED_FUNCTION_56_0();

  return v18();
}

uint64_t sub_2312F65DC(uint64_t a1)
{
  v2 = sub_2313698F0();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_231369A40();
}

uint64_t sub_2312F66A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a2;
  v41 = a4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD448D0, &unk_231376740);
  v40 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v7 = &v32[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD448D8, &qword_231378770);
  v36 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v32[-v9];
  v11 = sub_231369AC0();
  v39 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v32[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2312F555C(a1);
  v15 = v14;
  sub_2312F4A68(v14);
  v17 = v16;
  sub_2312F5238(v15);
  v19 = v18;

  v43 = a3;
  v20 = v44;
  sub_2312E3C94(sub_2312FB3C0, v42, v19);
  if (v20)
  {
  }

  v44 = v11;
  v35 = v7;

  sub_231255788();
  v23 = v22;
  if (!*(v22 + 16))
  {
    __swift_storeEnumTagSinglePayload(v41, 1, 1, v44);
  }

  swift_getKeyPath();
  v34 = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = v17;
  *v10 = v24;
  v33 = *MEMORY[0x277D721B8];
  v25 = v36;
  (*(v36 + 104))(v10);
  sub_2312FB430(&qword_27DD44880, MEMORY[0x277D724B8], MEMORY[0x277D724A0]);
  sub_2312FB3DC(&qword_27DD448E0, &qword_27DD448D8, &qword_231378770);
  sub_231369B40();

  (*(v25 + 8))(v10, v8);
  swift_getKeyPath();
  v26 = swift_allocObject();
  v27 = v35;
  *(v26 + 16) = v34;
  *v27 = v26;
  v28 = v40;
  v29 = v38;
  (*(v40 + 104))(v27, v33, v38);
  sub_2312FB3DC(&qword_27DD448E8, &qword_27DD448D0, &unk_231376740);
  v30 = v41;
  sub_231369B40();

  (*(v28 + 8))(v27, v29);
  v31 = v44;
  (*(v39 + 8))(v13, v44);
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v31);
}

uint64_t sub_2312F6B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[8] = a6;
  v7[9] = v6;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  v8 = sub_231369990();
  v7[10] = v8;
  v7[11] = *(v8 - 8);
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  v9 = sub_2313698C0();
  v7[14] = v9;
  v7[15] = *(v9 - 8);
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v10 = sub_231369AC0();
  v7[19] = v10;
  v7[20] = *(v10 - 8);
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312F6CC4, 0, 0);
}

uint64_t sub_2312F6CC4(uint64_t a1)
{
  v54 = v1;
  v2 = MEMORY[0x277D84FA0];
  v1[2] = MEMORY[0x277D84FA0];
  v3 = v1[4];
  v47 = *(v3 + 16);
  if (v47)
  {
    v4 = 0;
    v5 = v1[20];
    v6 = *(v5 + 16);
    v5 += 16;
    v45 = v6;
    v46 = v1[3];
    v44 = v3 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v48 = (v1[15] + 8);
    v41 = v1[11];
    v7 = (v41 + 8);
    v43 = *(v5 + 56);
    do
    {
      v9 = v1[21];
      v8 = v1[22];
      v10 = v1[19];
      v45(v8, v44 + v4 * v43, v10);
      sub_231369130();
      v45(v9, v8, v10);
      v11 = sub_2313698A0();
      v12 = sub_23136A3A0();
      v13 = os_log_type_enabled(v11, v12);
      v14 = v1[18];
      v52 = v1[14];
      if (v13)
      {
        v15 = OUTLINED_FUNCTION_60();
        v53 = OUTLINED_FUNCTION_29_0();
        v16 = v53;
        *v15 = 136315138;
        v42 = sub_231369A60();
        v49 = v14;
        v18 = v17;
        v19 = OUTLINED_FUNCTION_67_0();
        v51 = v20;
        v20(v19);
        v21 = sub_2311CFD58(v42, v18, &v53);

        *(v15 + 4) = v21;
        _os_log_impl(&dword_2311CB000, v11, v12, "Querying tools using query: %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        v7 = (v41 + 8);
        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_29();

        (*v48)(v49, v52);
      }

      else
      {

        v22 = OUTLINED_FUNCTION_67_0();
        v51 = v23;
        v23(v22);
        (*v48)(v14, v52);
      }

      v24 = v1[22];
      __swift_project_boxed_opaque_existential_1(v1[3], *(v46 + 24));
      v25 = sub_2312F4424(v24);
      v50 = v4;
      v26 = *(v25 + 16);
      if (v26)
      {
        v27 = v25 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
        v28 = *(v41 + 72);
        v29 = *(v41 + 16);
        do
        {
          v30 = v1[12];
          v31 = v1[10];
          v32 = OUTLINED_FUNCTION_28();
          v29(v32);
          sub_23122EFC8();
          (*v7)(v30, v31);
          v27 += v28;
          --v26;
        }

        while (v26);
      }

      v4 = v50 + 1;
      v51(v1[22], v1[19]);
    }

    while (v50 + 1 != v47);
    v2 = v1[2];
  }

  v1[23] = v2;
  sub_231369130();
  sub_231369EE0();
  v33 = sub_2313698A0();
  v34 = sub_23136A3A0();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = OUTLINED_FUNCTION_60();
    *v35 = 134217984;
    *(v35 + 4) = *(v2 + 16);

    _os_log_impl(&dword_2311CB000, v33, v34, "Got %ld tools back from toolkit", v35, 0xCu);
    OUTLINED_FUNCTION_17_17();
  }

  else
  {
  }

  (*(v1[15] + 8))(v1[17], v1[14]);
  if (!*(v2 + 16))
  {

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_55_9();

    __asm { BRAA            X2, X16 }
  }

  sub_231369EE0();
  v36 = swift_task_alloc();
  v1[24] = v36;
  *v36 = v1;
  v36[1] = sub_2312F7334;
  OUTLINED_FUNCTION_55_9();

  return sub_2312F76A0();
}

uint64_t sub_2312F7334()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 200) = v3;

  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2312F7420()
{
  OUTLINED_FUNCTION_8();

  v1 = swift_task_alloc();
  *(v0 + 208) = v1;
  *v1 = v0;
  v1[1] = sub_2312F74C4;

  return sub_2312F7BFC();
}

uint64_t sub_2312F74C4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *(v6 + 216) = v5;

  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2312F75E4()
{
  v1 = *(v0 + 216);

  OUTLINED_FUNCTION_14();

  return v2(v1);
}

uint64_t sub_2312F76A0()
{
  OUTLINED_FUNCTION_8();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v5 = sub_231369990();
  v1[11] = v5;
  OUTLINED_FUNCTION_0(v5);
  v1[12] = v6;
  v1[13] = OUTLINED_FUNCTION_43();
  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2312F7748()
{
  OUTLINED_FUNCTION_8();
  __swift_project_boxed_opaque_existential_1((v0[10] + 32), *(v0[10] + 56));
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  v0[14] = v1;
  *v1 = v2;
  v1[1] = sub_2312F77F0;
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];

  return sub_2311EE480((v0 + 2), v3, v4, v5);
}

uint64_t sub_2312F77F0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2312F78D4()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43368, &qword_23136C2F0);
  v3 = sub_231369EC0();
  v4 = v2 + 56;
  v5 = -1;
  v6 = -1 << *(v2 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v2 + 56);
  v8 = (63 - v6) >> 6;
  v32 = v2;
  result = sub_231369EE0();
  v10 = 0;
  v30 = v8;
  v31 = v2 + 56;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      (*(v1 + 16))(v33[13], *(v32 + 48) + *(v1 + 72) * (__clz(__rbit64(v7)) | (v11 << 6)), v33[11]);
      __swift_project_boxed_opaque_existential_1(v33 + 2, v33[5]);
      sub_2311EDDB8();
      v13 = v12;
      v14 = sub_231369970();
      v16 = v15;
      v17 = OUTLINED_FUNCTION_26_1();
      v18(v17);
      swift_isUniquelyReferenced_nonNull_native();
      result = sub_231215F6C(v14, v16);
      if (__OFADD__(v3[2], (v19 & 1) == 0))
      {
        break;
      }

      v20 = result;
      v21 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD448C8, &qword_231376738);
      result = sub_23136A700();
      if (result)
      {
        result = sub_231215F6C(v14, v16);
        if ((v21 & 1) != (v22 & 1))
        {
          OUTLINED_FUNCTION_35();

          return sub_23136A970();
        }

        v20 = result;
      }

      v7 &= v7 - 1;
      if (v21)
      {

        *(v3[7] + 8 * v20) = v13;
      }

      else
      {
        v3[(v20 >> 6) + 8] |= 1 << v20;
        v23 = (v3[6] + 16 * v20);
        *v23 = v14;
        v23[1] = v16;
        *(v3[7] + 8 * v20) = v13;
        v24 = v3[2];
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          goto LABEL_26;
        }

        v3[2] = v26;
      }

      v10 = v11;
      v8 = v30;
      v4 = v31;
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v33 + 2);

        OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_35();

        __asm { BRAA            X2, X16 }
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2312F7BFC()
{
  OUTLINED_FUNCTION_8();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v1[9] = *v0;
  v7 = sub_2313698C0();
  v1[10] = v7;
  OUTLINED_FUNCTION_0(v7);
  v1[11] = v8;
  v1[12] = OUTLINED_FUNCTION_67();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436F0, &unk_23136D510);
  OUTLINED_FUNCTION_40_0(v9);
  v1[15] = OUTLINED_FUNCTION_43();
  v10 = type metadata accessor for IntentDetails(0);
  v1[16] = v10;
  OUTLINED_FUNCTION_0(v10);
  v1[17] = v11;
  v1[18] = OUTLINED_FUNCTION_67();
  v1[19] = swift_task_alloc();
  v12 = sub_231369990();
  v1[20] = v12;
  OUTLINED_FUNCTION_0(v12);
  v1[21] = v13;
  v1[22] = OUTLINED_FUNCTION_67();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v14 = sub_231367C70();
  v1[25] = v14;
  OUTLINED_FUNCTION_0(v14);
  v1[26] = v15;
  v1[27] = OUTLINED_FUNCTION_67();
  v1[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312F7E5C, 0, 0);
}

uint64_t sub_2312F856C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_2312F86CC, 0, 0);
}

uint64_t sub_2312F86CC()
{
  v101 = v0;
  v100[1] = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 120);
  if (__swift_getEnumTagSinglePayload(v2, 1, *(v0 + 128)) == 1)
  {
    v3 = *(v0 + 272);
    (*(*(v0 + 168) + 8))(*(v0 + 192), *(v0 + 160));

    sub_2311D1F18(v2, &qword_27DD436F0, &unk_23136D510);
    v4 = *(v0 + 264);
    v5 = (*(v0 + 256) - 1) & *(v0 + 256);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_28();
    sub_2312053C8(v6, v7, v8);
    v9 = OUTLINED_FUNCTION_26_1();
    sub_2312FB298(v9, v10, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v2 = *(v0 + 248);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_39:
      sub_23126F08C(0, v2[2] + 1, 1, v2);
      v2 = v85;
    }

    v14 = v2[2];
    v13 = v2[3];
    v3 = (v14 + 1);
    if (v14 >= v13 >> 1)
    {
      sub_23126F08C(v13 > 1, v14 + 1, 1, v2);
      v2 = v86;
    }

    v1 = *(v0 + 144);
    v15 = *(v0 + 152);
    v16 = *(v0 + 136);

    sub_2312FB368(v15, type metadata accessor for IntentDetails);
    v17 = OUTLINED_FUNCTION_26_1();
    v19.n128_f64[0] = v18(v17);
    v2[2] = v3;
    sub_2312053C8(v1, v2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v14, v19);
    v4 = *(v0 + 264);
    v5 = (*(v0 + 256) - 1) & *(v0 + 256);
    *(v0 + 248) = v2;
  }

  v20 = 1;
  v99 = 136315138;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        do
        {
          if (!v5)
          {
            while (!__OFADD__(v4, 1))
            {
              OUTLINED_FUNCTION_45_9();
              if (v22 == v23)
              {

                OUTLINED_FUNCTION_19_19();

                OUTLINED_FUNCTION_14();
                OUTLINED_FUNCTION_33_0();

                __asm { BRAA            X2, X16 }
              }

              v5 = *(v3 + v21 + 8);
              ++v4;
              if (v5)
              {
                v4 = v21;
                goto LABEL_15;
              }
            }

            __break(1u);
            goto LABEL_39;
          }

          v3 = *(v0 + 240);
LABEL_15:
          *(v0 + 256) = v5;
          *(v0 + 264) = v4;
          OUTLINED_FUNCTION_31_19();
          OUTLINED_FUNCTION_21_20(v24);
        }

        while (!v26);
        v27 = v25;
        sub_231369EE0();
        sub_2312168CC(v27);
        if (v28)
        {
          break;
        }
      }

      v29 = *(v0 + 168);
      v32 = *(v29 + 16);
      v31 = v29 + 16;
      v30 = v32;
      v33 = OUTLINED_FUNCTION_52_10(*(v0 + 192));
      v32(v33);
      if (v1 >> 62 ? sub_23136A5A0() : *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      OUTLINED_FUNCTION_58_7();
      sub_231369130();
      v38 = OUTLINED_FUNCTION_11_23();
      v30(v38);
      v2 = v27;
      v3 = sub_2313698A0();
      v39 = sub_23136A3A0();
      OUTLINED_FUNCTION_48_9(v39);
      OUTLINED_FUNCTION_28_16();
      if (v40)
      {
        OUTLINED_FUNCTION_60();
        v41 = OUTLINED_FUNCTION_10_26();
        OUTLINED_FUNCTION_27_14(v41, v42, v43, v44, v45, v46, v47, v48, v87, v90, v93, v94, v95, v96, v97, v98, v99);
        v49 = OUTLINED_FUNCTION_1_39();
        v50 = (v1)(v49);
        OUTLINED_FUNCTION_59_8(v50, v51, v100, v52, v53, v54, v55, v56, v88, v91);
        OUTLINED_FUNCTION_38();

        OUTLINED_FUNCTION_12_20();
        OUTLINED_FUNCTION_50_8();
        v60 = "LNPhraseTemplates result for toolId %s is empty. Not constructing IntentDetails";
        goto LABEL_29;
      }

LABEL_30:

      v3 = v27[1];
      (v3)(v2, v1);
      (*(v31 + 8))(v97, v98);
      (v3)(v20, v1);
      v20 = 1;
    }

    v20 = *(v0 + 32);
    v35 = sub_231369970();
    if (*(v20 + 16))
    {
      break;
    }

LABEL_27:
    OUTLINED_FUNCTION_57_11();
    sub_231369130();
    v61 = OUTLINED_FUNCTION_11_23();
    v30(v61);
    v2 = v27;
    v3 = sub_2313698A0();
    v39 = sub_23136A3A0();
    OUTLINED_FUNCTION_48_9(v39);
    OUTLINED_FUNCTION_40_13();
    if (!v62)
    {
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_60();
    v63 = OUTLINED_FUNCTION_10_26();
    OUTLINED_FUNCTION_27_14(v63, v64, v65, v66, v67, v68, v69, v70, v87, v90, v93, v94, v95, v96, v97, v98, v99);
    v71 = OUTLINED_FUNCTION_1_39();
    v72 = (v1)(v71);
    OUTLINED_FUNCTION_59_8(v72, v73, v100, v74, v75, v76, v77, v78, v89, v92);
    OUTLINED_FUNCTION_38();

    OUTLINED_FUNCTION_12_20();
    OUTLINED_FUNCTION_50_8();
    v60 = "Unable to get resolvedParameters for toolId %s. Not constructing IntentDetails";
LABEL_29:
    _os_log_impl(v57, v58, v59, v60, v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v95 + 8))(v97, v98);
    (v1)(v96, v31);
    v20 = 1;
  }

  sub_231215F6C(v35, v36);
  v20 = v37;

  if ((v20 & 1) == 0)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_53_10();
  sub_231369EE0();
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v0 + 296) = v81;
  *v81 = v82;
  OUTLINED_FUNCTION_5_25(v81);
  OUTLINED_FUNCTION_33_0();

  return sub_2312F95A8();
}

uint64_t sub_2312F8CD4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v21[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44868, &qword_231376650);
  v5 = *(v21[0] - 8);
  MEMORY[0x28223BE20](v21[0]);
  v7 = (v21 - v6);
  v22 = sub_231369E30();
  v8 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v21 - v12;
  v15 = *a1;
  v14 = a1[1];
  v21[1] = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_231369E20();
  swift_getKeyPath();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  *v7 = v16;
  v17 = v21[0];
  (*(v5 + 104))(v7, *MEMORY[0x277D721C8], v21[0]);
  sub_2312FB430(&qword_27DD448F0, MEMORY[0x277D73330], MEMORY[0x277D73328]);
  sub_2312FB3DC(&qword_27DD44898, &qword_27DD44868, &qword_231376650);
  sub_231369EE0();
  sub_231369B40();

  (*(v5 + 8))(v7, v17);
  v18 = v22;
  v19 = *(v8 + 8);
  v19(v10, v22);
  sub_2312F4328(v13);
  return (v19)(v13, v18);
}

uint64_t sub_2312F8FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_0_0();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  (*(v13 + 16))(&v15 - v11, a1, v10);
  return a7(v12);
}

void *sub_2312F9064(uint64_t a1)
{
  v59 = sub_231369D90();
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v58 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_231369990();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v7);
  v65 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v52 - v10;
  MEMORY[0x28223BE20](v12);
  v56 = v52 - v14;
  v15 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 56);
  v19 = (v16 + 63) >> 6;
  v67 = v13 + 16;
  v62 = v13 + 32;
  v55 = (v3 + 8);
  v52[0] = v13 + 40;
  v57 = v13;
  v53 = (v13 + 8);
  v60 = a1;
  sub_231369EE0();
  v20 = 0;
  v21 = MEMORY[0x277D84F98];
  v54 = v19;
  v66 = v6;
  if (v18)
  {
    while (1)
    {
LABEL_8:
      v24 = v56;
      v23 = v57;
      v25 = *(v60 + 48) + *(v57 + 72) * (__clz(__rbit64(v18)) | (v20 << 6));
      v26 = *(v57 + 16);
      v63 = *(v57 + 72);
      v64 = v26;
      v26(v56, v25, v6);
      v61 = *(v23 + 32);
      v61(v11, v24, v6);
      v27 = v58;
      sub_231369930();
      v28 = sub_231369D70();
      v30 = v29;
      (*v55)(v27, v59);
      v31 = sub_231369960();
      if (v31[2])
      {
        v32 = v31[4];
        v33 = v31[5];
        sub_231369EE0();
      }

      else
      {

        v34 = sub_231369970();
        v52[1] = v35;
        v72 = v34;
        v73 = v35;
        v70 = v28;
        v71 = v30;
        sub_231369EE0();
        v36 = MEMORY[0x23192A730](46, 0xE100000000000000);
        v68 = 0;
        v69 = 0xE000000000000000;
        sub_231207C1C(v36, v37, v38);
        v32 = sub_23136A500();
        v33 = v39;
      }

      v40 = objc_allocWithZone(MEMORY[0x277D23778]);
      v41 = sub_2312FB210(v28, v30, v32, v33);
      v64(v65, v11, v66);
      swift_isUniquelyReferenced_nonNull_native();
      v72 = v21;
      v42 = sub_2312168CC(v41);
      if (__OFADD__(v21[2], (v43 & 1) == 0))
      {
        break;
      }

      v44 = v42;
      v45 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD448C0, &unk_231376728);
      if (sub_23136A700())
      {
        v46 = sub_2312168CC(v41);
        if ((v45 & 1) != (v47 & 1))
        {
          goto LABEL_25;
        }

        v44 = v46;
      }

      v21 = v72;
      if (v45)
      {
        v6 = v66;
        (*v52[0])(v72[7] + v44 * v63, v65, v66);
      }

      else
      {
        v72[(v44 >> 6) + 8] |= 1 << v44;
        *(v21[6] + 8 * v44) = v41;
        v6 = v66;
        v61((v21[7] + v44 * v63), v65, v66);
        v48 = v21[2];
        v49 = __OFADD__(v48, 1);
        v50 = v48 + 1;
        if (v49)
        {
          goto LABEL_24;
        }

        v21[2] = v50;
      }

      v18 &= v18 - 1;
      (*v53)(v11, v6);
      v19 = v54;
      if (!v18)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v19)
      {

        return v21;
      }

      v18 = *(v15 + 8 * v22);
      ++v20;
      if (v18)
      {
        v20 = v22;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_2312176CC();
  result = sub_23136A970();
  __break(1u);
  return result;
}

uint64_t sub_2312F95A8()
{
  OUTLINED_FUNCTION_8();
  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  *(v1 + 484) = v3;
  *(v1 + 72) = v4;
  *(v1 + 80) = v5;
  *(v1 + 56) = v6;
  *(v1 + 64) = v7;
  *(v1 + 48) = v8;
  v9 = sub_2313698C0();
  *(v1 + 104) = v9;
  OUTLINED_FUNCTION_0(v9);
  *(v1 + 112) = v10;
  *(v1 + 120) = OUTLINED_FUNCTION_67();
  *(v1 + 128) = swift_task_alloc();
  *(v1 + 136) = swift_task_alloc();
  *(v1 + 144) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F08, &qword_231370CD0);
  OUTLINED_FUNCTION_40_0(v11);
  *(v1 + 152) = OUTLINED_FUNCTION_43();
  v12 = sub_2313673A0();
  *(v1 + 160) = v12;
  OUTLINED_FUNCTION_0(v12);
  *(v1 + 168) = v13;
  *(v1 + 176) = OUTLINED_FUNCTION_43();
  v14 = sub_231367550();
  *(v1 + 184) = v14;
  OUTLINED_FUNCTION_0(v14);
  *(v1 + 192) = v15;
  *(v1 + 200) = OUTLINED_FUNCTION_67();
  *(v1 + 208) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44858, &qword_2313765C0);
  OUTLINED_FUNCTION_40_0(v16);
  *(v1 + 216) = OUTLINED_FUNCTION_43();
  v17 = sub_231367490();
  *(v1 + 224) = v17;
  OUTLINED_FUNCTION_0(v17);
  *(v1 + 232) = v18;
  *(v1 + 240) = OUTLINED_FUNCTION_67();
  *(v1 + 248) = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD448B0, &qword_231378740);
  OUTLINED_FUNCTION_40_0(v19);
  *(v1 + 256) = OUTLINED_FUNCTION_43();
  v20 = sub_231369990();
  *(v1 + 264) = v20;
  OUTLINED_FUNCTION_0(v20);
  *(v1 + 272) = v21;
  *(v1 + 280) = OUTLINED_FUNCTION_67();
  *(v1 + 288) = swift_task_alloc();
  *(v1 + 296) = swift_task_alloc();
  *(v1 + 304) = swift_task_alloc();
  *(v1 + 312) = swift_task_alloc();
  v22 = sub_2313699E0();
  *(v1 + 320) = v22;
  OUTLINED_FUNCTION_0(v22);
  *(v1 + 328) = v23;
  *(v1 + 336) = OUTLINED_FUNCTION_67();
  *(v1 + 344) = swift_task_alloc();
  *(v1 + 352) = swift_task_alloc();
  v24 = sub_231369A00();
  *(v1 + 360) = v24;
  OUTLINED_FUNCTION_0(v24);
  *(v1 + 368) = v25;
  *(v1 + 376) = OUTLINED_FUNCTION_67();
  *(v1 + 384) = swift_task_alloc();
  v26 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t sub_2312F9938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_56_7();
  a33 = v35;
  a34 = v36;
  a32 = v34;
  v38 = *(v34 + 376);
  v37 = *(v34 + 384);
  v39 = *(v34 + 360);
  v40 = *(v34 + 368);
  v41 = *(v34 + 272);
  sub_231369980();
  *(v34 + 480) = *MEMORY[0x277D723F0];
  v42 = *(v40 + 104);
  *(v34 + 392) = v42;
  *(v34 + 400) = (v40 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v42(v38);
  v43 = sub_2313122BC(v37, v38);
  v44 = *(v40 + 8);
  *(v34 + 408) = v44;
  *(v34 + 416) = (v40 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v45 = OUTLINED_FUNCTION_26_1();
  v44(v45);
  (v44)(v37, v39);
  v46 = (v41 + 16);
  v47 = *(v34 + 264);
  if (v43)
  {
    v48 = *(v34 + 312);
    v49 = *(v34 + 256);
    v50 = *(v34 + 56);
    sub_2312F45E4(*(v34 + 64));
    v51 = *v46;
    *(v34 + 424) = *v46;
    *(v34 + 432) = v46 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v51(v48, v50, v47);
    sub_23134B4B4();

    v52 = sub_231369AF0();
    __swift_storeEnumTagSinglePayload(v49, 1, 1, v52);
    sub_2313699A0();
    (*(*(v34 + 328) + 32))(*(v34 + 352), *(v34 + 344), *(v34 + 320));
    v78 = swift_task_alloc();
    *(v34 + 440) = v78;
    *v78 = v34;
    v78[1] = sub_2312FA000;
    OUTLINED_FUNCTION_24_19();

    return sub_231205488(v79, v80, v81, v82);
  }

  else
  {
    v54 = *(v34 + 288);
    v53 = *(v34 + 296);
    v55 = *(v34 + 56);
    sub_231369130();
    v56 = *v46;
    (*v46)(v53, v55, v47);
    v56(v54, v55, v47);
    v57 = sub_2313698A0();
    v58 = sub_23136A3A0();
    if (OUTLINED_FUNCTION_48_9(v58))
    {
      a16 = *(v34 + 384);
      a17 = *(v34 + 360);
      v59 = *(v34 + 272);
      a14 = *(v34 + 264);
      a15 = *(v34 + 288);
      a19 = *(v34 + 112);
      a20 = *(v34 + 104);
      a21 = *(v34 + 128);
      v60 = swift_slowAlloc();
      a18 = swift_slowAlloc();
      a22 = a18;
      *v60 = 136315394;
      v61 = sub_231369970();
      v63 = v62;
      v64 = *(v59 + 8);
      v65 = OUTLINED_FUNCTION_28();
      v64(v65);
      v66 = sub_2311CFD58(v61, v63, &a22);

      *(v60 + 4) = v66;
      *(v60 + 12) = 2080;
      sub_231369980();
      v67 = sub_23136A010();
      (v64)(a15, a14);
      v68 = OUTLINED_FUNCTION_28();
      sub_2311CFD58(v68, v69, v70);
      OUTLINED_FUNCTION_38();

      *(v60 + 14) = v67;
      _os_log_impl(&dword_2311CB000, v57, v58, "ToolKitIntentService only supports appIntent tools currently. Returning nil IntentDetails for toolId: %s. toolType: %s", v60, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      (*(a19 + 8))(a21, a20);
    }

    else
    {
      v71 = *(v34 + 272);
      v72 = *(v34 + 128);
      v73 = *(v34 + 104);
      v74 = *(v34 + 112);

      v75 = *(v71 + 8);
      v76 = OUTLINED_FUNCTION_26_1();
      v75(v76);
      v77 = OUTLINED_FUNCTION_67_0();
      v75(v77);
      (*(v74 + 8))(v72, v73);
    }

    type metadata accessor for IntentDetails(0);
    v85 = OUTLINED_FUNCTION_15_23();
    __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
    v89 = OUTLINED_FUNCTION_3_31();
    OUTLINED_FUNCTION_9_25(v89);

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_24_19();

    return v91(v90, v91, v92, v93, v94, v95, v96, v97, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
  }
}

uint64_t sub_2312FA000()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v1[2] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  *v2 = *v0;
  v1[56] = v3;
  v1[57] = v4;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2312FA0F4(uint64_t a1)
{
  v44 = v1;
  if (!v1[57])
  {
    v9 = v1[53];
    sub_231369130();
    v10 = OUTLINED_FUNCTION_67_0();
    v9(v10);
    v11 = sub_2313698A0();
    v41 = sub_23136A3B0();
    v12 = os_log_type_enabled(v11, v41);
    v13 = v1[44];
    v15 = v1[40];
    v14 = v1[41];
    v16 = v1[33];
    v17 = v1[17];
    v18 = v1[14];
    v42 = v1[13];
    if (v12)
    {
      v40 = v1[17];
      v19 = OUTLINED_FUNCTION_60();
      v39 = v14;
      v20 = OUTLINED_FUNCTION_29_0();
      v43 = v20;
      *v19 = 136315138;
      v37 = v15;
      v38 = v13;
      v21 = sub_231369970();
      v23 = v22;
      v24 = OUTLINED_FUNCTION_49_10();
      v25(v24, v16);
      v26 = sub_2311CFD58(v21, v23, &v43);

      *(v19 + 4) = v26;
      _os_log_impl(&dword_2311CB000, v11, v41, "Unable to form hydrated phrase from resolved parameters for id: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      (*(v18 + 8))(v40, v42);
      (*(v39 + 8))(v38, v37);
    }

    else
    {

      v27 = OUTLINED_FUNCTION_49_10();
      v28(v27, v16);
      (*(v18 + 8))(v17, v42);
      v29 = OUTLINED_FUNCTION_29_5();
      v30(v29);
    }

    type metadata accessor for IntentDetails(0);
    v31 = OUTLINED_FUNCTION_15_23();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
    OUTLINED_FUNCTION_3_31();

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_33_0();

    __asm { BRAA            X1, X16 }
  }

  v1[58] = v1[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  v1[59] = v2;
  *v2 = v3;
  v2[1] = sub_2312FA468;
  OUTLINED_FUNCTION_33_0();

  return sub_2312FAC5C(v4, v5, v6);
}

uint64_t sub_2312FA468()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2312FA54C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, os_log_t log, uint64_t a19, void *a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_56_7();
  a33 = v35;
  a34 = v36;
  a32 = v34;
  v37 = *(v34 + 216);
  v38 = *(v34 + 224);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, 1, v38);
  v41 = *(v34 + 320);
  v40 = *(v34 + 328);
  if (EnumTagSinglePayload == 1)
  {
    v42 = *(v34 + 352);
    v43 = *(v34 + 336);

    sub_2311D1F18(v37, &qword_27DD44858, &qword_2313765C0);
    sub_231369130();
    (*(v40 + 16))(v43, v42, v41);
    v44 = sub_2313698A0();
    v45 = sub_23136A3B0();
    v46 = os_log_type_enabled(v44, v45);
    v47 = *(v34 + 352);
    v49 = *(v34 + 328);
    v48 = *(v34 + 336);
    v50 = *(v34 + 320);
    v51 = *(v34 + 144);
    v52 = *(v34 + 112);
    v128 = *(v34 + 104);
    if (v46)
    {
      log = v44;
      v53 = *(v34 + 320);
      v54 = OUTLINED_FUNCTION_60();
      a20 = v51;
      v55 = OUTLINED_FUNCTION_29_0();
      a22 = v55;
      *v54 = 136315138;
      LODWORD(a17) = v45;
      v56 = sub_2313699C0();
      a19 = v47;
      v58 = v57;
      v59 = *(v49 + 8);
      v60 = OUTLINED_FUNCTION_67_0();
      v59(v60);
      v61 = sub_2311CFD58(v56, v58, &a22);

      *(v54 + 4) = v61;
      _os_log_impl(&dword_2311CB000, log, a17, "Unable to find a query to associate with this tool %s. Cannot construct IntentDetails", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      (*(v52 + 8))(a20, v128);
      (v59)(a19, v53);
    }

    else
    {

      v83 = *(v49 + 8);
      v83(v48, v50);
      (*(v52 + 8))(v51, v128);
      v83(v47, v50);
    }

    type metadata accessor for IntentDetails(0);
    v84 = OUTLINED_FUNCTION_15_23();
    goto LABEL_13;
  }

  v127 = *(v34 + 464);
  v62 = *(v34 + 352);
  v63 = *(v34 + 232);
  v123 = *(v34 + 456);
  v64 = *(v34 + 208);
  v129 = *(v34 + 200);
  v65 = *(v34 + 184);
  v66 = *(v34 + 192);
  v121 = *(v34 + 240);
  v122 = *(v34 + 176);
  v124 = *(v34 + 168);
  loga = *(v34 + 160);
  v126 = *(v34 + 448);
  v119 = *(v34 + 248);
  a10 = *(v34 + 72);
  v120 = *(v34 + 48);
  (*(v63 + 32))();
  (*(v40 + 16))(v64, v62, v41);
  v67 = *MEMORY[0x277D60950];
  sub_231367560();
  OUTLINED_FUNCTION_11();
  (*(v68 + 104))(v64, v67);
  (*(v66 + 104))(v64, *MEMORY[0x277D60920], v65);
  a20 = sub_2312FB02C(v127);
  v69 = *(v66 + 16);
  v69(v129, v64, v65);
  v70 = *(v63 + 16);
  v70(v121, v119, v38);
  v69(v120, v129, v65);
  v71 = type metadata accessor for IntentDetails(0);
  v70(v120 + *(v71 + 20), v121, v38);
  v128 = v71;
  v72 = (v120 + *(v71 + 28));
  *v72 = v126;
  v72[1] = v123;
  sub_231367430();
  v73 = (*(v124 + 88))(v122, loga);
  if (v73 == *MEMORY[0x277D60878])
  {
    v74 = *(v34 + 408);
    v75 = *(v34 + 392);
    v76 = *(v34 + 480);
    v77 = *(v34 + 384);
    v78 = *(v34 + 360);
    (*(*(v34 + 168) + 8))(*(v34 + 176), *(v34 + 160));
    v75(v77, v76, v78);
    v79 = sub_2313699F0();
    v81 = v80;
    v82 = OUTLINED_FUNCTION_26_1();
    v74(v82);
    a22 = v79;
    a23 = v81;
    MEMORY[0x23192A730](95, 0xE100000000000000);
  }

  else
  {
    if (v73 != *MEMORY[0x277D60868])
    {
      v97 = *(v34 + 168);
      v98 = *(v34 + 176);
      v99 = *(v34 + 160);
      a17 = sub_231367520();
      a15 = v100;
      (*(v97 + 8))(v98, v99);
      goto LABEL_12;
    }

    v88 = *(v34 + 408);
    v89 = *(v34 + 392);
    v90 = *(v34 + 384);
    v91 = *(v34 + 360);
    (*(*(v34 + 168) + 8))(*(v34 + 176), *(v34 + 160));
    v89(v90, *MEMORY[0x277D723E8], v91);
    v92 = sub_2313699F0();
    v94 = v93;
    v95 = OUTLINED_FUNCTION_28();
    v88(v95);
    a22 = v92;
    a23 = v94;
    MEMORY[0x23192A730](95, 0xE100000000000000);
  }

  v96 = sub_231367520();
  MEMORY[0x23192A730](v96);

  a17 = a22;
  a15 = a23;
LABEL_12:
  v101 = *(v34 + 328);
  log = *(v34 + 320);
  a19 = *(v34 + 352);
  a16 = *(v34 + 248);
  a11 = *(v34 + 240);
  v102 = *(v34 + 224);
  v103 = *(v34 + 232);
  v104 = *(v34 + 200);
  a12 = *(v34 + 208);
  a13 = *(v34 + 464);
  v106 = *(v34 + 184);
  v105 = *(v34 + 192);
  a14 = *(v34 + 48);
  sub_231367530();
  sub_231369020();
  v107 = *(v103 + 8);
  v107(a11, v102);
  v108 = *(v105 + 8);
  v108(v104, v106);

  v108(a12, v106);
  v107(a16, v102);
  (*(v101 + 8))(a19, log);
  v84 = a14;
  v85 = 0;
  v86 = 1;
  v87 = v128;
LABEL_13:
  __swift_storeEnumTagSinglePayload(v84, v85, v86, v87);
  v109 = OUTLINED_FUNCTION_3_31();
  OUTLINED_FUNCTION_9_25(v109);

  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_24_19();

  return v111(v110, v111, v112, v113, v114, v115, v116, v117, a9, a10, a11, a12, a13, a14, a15, a16, a17, log, a19, a20, v128, a22, a23, a24, a25, a26);
}

uint64_t sub_2312FAC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_231367490();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312FAD20, 0, 0);
}

uint64_t sub_2312FAD20()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0[4] + 16);
  v0[8] = v1;
  v0[9] = 0;
  if (v1)
  {
    OUTLINED_FUNCTION_54_10();
    v2();
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    OUTLINED_FUNCTION_6_22(v3);

    return sub_231357934();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v0[2], 1, 1, v0[5]);

    OUTLINED_FUNCTION_56_0();

    return v5();
  }
}

uint64_t sub_2312FAE08()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 88) = v3;

  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2312FAEF4()
{
  OUTLINED_FUNCTION_8();
  if (*(v0 + 88))
  {
    (*(*(v0 + 48) + 32))(*(v0 + 16), *(v0 + 56), *(v0 + 40));
    v1 = 0;
LABEL_5:
    __swift_storeEnumTagSinglePayload(*(v0 + 16), v1, 1, *(v0 + 40));

    OUTLINED_FUNCTION_56_0();

    return v3();
  }

  v2 = *(v0 + 72) + 1;
  (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
  *(v0 + 72) = v2;
  if (v2 == *(v0 + 64))
  {
    v1 = 1;
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_54_10();
  v5();
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_6_22(v6);

  return sub_231357934();
}

void *sub_2312FB02C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD445B8, &qword_231374970);
  result = sub_23136A770();
  v3 = result;
  v4 = 0;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = result + 8;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = (*(a1 + 48) + 16 * v13);
      v15 = *v14;
      result = v14[1];
      *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v16 = (v3[6] + 16 * v13);
      *v16 = v15;
      v16[1] = result;
      v17 = (v3[7] + 16 * v13);
      *v17 = 0x7465537369;
      v17[1] = 0xE500000000000000;
      v18 = v3[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        break;
      }

      v3[2] = v20;
      result = sub_231369EE0();
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return v3;
      }

      v12 = *(a1 + 64 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2312FB188()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return v0;
}

uint64_t sub_2312FB1B8()
{
  sub_2312FB188();

  return swift_deallocClassInstance();
}

id sub_2312FB210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_231369FA0();

  v6 = sub_231369FA0();

  v7 = [v4 initWithBundleIdentifier:v5 actionIdentifier:v6];

  return v7;
}

uint64_t sub_2312FB298(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_11();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2312FB2F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD448B8, &qword_231376720);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2312FB368(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_11();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2312FB3DC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2312FB430(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void OUTLINED_FUNCTION_17_17()
{

  JUMPOUT(0x23192B930);
}

void OUTLINED_FUNCTION_23_15(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_26_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17)
{
  *(v18 - 88) = a1;
  *v17 = a17;

  return sub_231369970();
}

uint64_t OUTLINED_FUNCTION_46_12()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_47_8(uint64_t a1, uint64_t a2)
{

  return sub_231369180();
}

uint64_t OUTLINED_FUNCTION_57_11()
{
}

uint64_t OUTLINED_FUNCTION_58_7()
{
}

unint64_t OUTLINED_FUNCTION_59_8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_2311CFD58(a10, v10, a3);
}

void ConstCodableDict.encode(to:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = a2[3];
  v7 = sub_23136A4D0();
  OUTLINED_FUNCTION_40_0(v7);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v8);
  v38 = v32 - v9;
  v10 = a2[2];
  v37 = a2[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_24(v13, v32[0]);
  v14 = sub_23136A4D0();
  OUTLINED_FUNCTION_40_0(v14);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v15);
  v17 = v32 - v16;
  v18 = *v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23136AA30();
  swift_getTupleTypeMetadata2();
  sub_23136A220();
  v40 = a2[10];
  v41 = AssociatedTypeWitness;
  v48 = sub_231369EC0();
  v33 = a2;
  v35 = a2[4];
  v36 = v18;
  v42 = v6;
  v19 = sub_231369EE0();
  v20 = v19;
  if ((v19 & 0xC000000000000001) != 0)
  {
    v21 = sub_23136A730();
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v20 = v21 | 0x8000000000000000;
  }

  else
  {
    v22 = v19 + 64;
    OUTLINED_FUNCTION_3_32();
    v24 = v25 & v26;
  }

  v43 = 0;
  v32[1] = v23;
  v27 = (v23 + 64) >> 6;
  v39 = v10 - 8;
  v34 = v20;
  if ((v20 & 0x8000000000000000) != 0)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v28 = v43;
    if (!v24)
    {
      break;
    }

    v29 = v43;
LABEL_11:
    v30 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    (*(*(v10 - 8) + 16))(v17, *(v20 + 48) + *(*(v10 - 8) + 72) * (v30 | (v29 << 6)), v10);
    while (1)
    {
      __swift_storeEnumTagSinglePayload(v17, 0, 1, v10);
      sub_23136A140();
      sub_231369F00();
      (*(*(v10 - 8) + 8))(v17, v10);
      sub_231369EF0();
      sub_231369F10();
      v20 = v34;
      if ((v34 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_12:
      if (!sub_23136A740())
      {
        goto LABEL_16;
      }

      sub_23136A8E0();
      swift_unknownObjectRelease();
    }
  }

  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v29 >= v27)
    {
LABEL_16:
      __swift_storeEnumTagSinglePayload(v17, 1, 1, v10);
      sub_2311D3BBC(v20);
      v46 = v48;
      __swift_mutable_project_boxed_opaque_existential_1(v47, v47[3]);
      sub_231369EF0();
      v31 = v33[7];
      v44 = v33[9];
      v45 = v31;
      swift_getWitnessTable();
      sub_23136A920();

      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      return;
    }

    v24 = *(v22 + 8 * v29);
    ++v28;
    if (v24)
    {
      v43 = v29;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_2312FBAD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2312FBB14(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2312FBB54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2312FBBE8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0(*(v0 + 16));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_8_0(v1);

  return MEMORY[0x2821C6C80](v2);
}

uint64_t sub_2312FBC80()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_12();
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_14();

  return v5(v2);
}

uint64_t sub_2312FBD7C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0(*(v0 + 16));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_8_0(v1);

  return MEMORY[0x2821C6C90](v2);
}

uint64_t sub_2312FBE14()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  OUTLINED_FUNCTION_10_27();
  return sub_231367FA0();
}

uint64_t sub_2312FBE6C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_2312FBEAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2312FBF1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311DDECC;

  return sub_2312FBBD4();
}

uint64_t sub_2312FBFA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311E6A24;

  return sub_2312FBD68();
}

uint64_t sub_2312FC060(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_9_18();
}

uint64_t sub_2312FC078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0(*(v14 + 32));
  v15 = swift_task_alloc();
  *(v14 + 40) = v15;
  *v15 = v14;
  v15[1] = sub_2312FC124;
  v21 = *(v14 + 16);
  v20 = *(v14 + 24);

  return MEMORY[0x2821C7498](v21, v20, v12, v13, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_2312FC124()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2312FC208()
{
  __swift_project_boxed_opaque_existential_1((v0 + 40), *(v0 + 64));
  OUTLINED_FUNCTION_10_27();
  return sub_231367AD0();
}

uint64_t sub_2312FC248(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_9_18();
}

uint64_t sub_2312FC25C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0(*(v0 + 24));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_6_23(v1);

  return MEMORY[0x2821C74A8](v2);
}

uint64_t sub_2312FC2F4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7_21();

  return v4(v3);
}

uint64_t sub_2312FC3E8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_9_18();
}

uint64_t sub_2312FC3FC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0(*(v0 + 24));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_6_23(v1);

  return MEMORY[0x2821C74A8](v2);
}

uint64_t sub_2312FC494()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  *(v1 + 48) = v0;
  *(v1 + 40) = v2;

  return MEMORY[0x2822009F8](sub_2312FC590, 0, 0);
}

uint64_t sub_2312FC590()
{
  OUTLINED_FUNCTION_8();

  OUTLINED_FUNCTION_14();
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t sub_2312FC5EC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = v1[3];
  v5 = __swift_project_boxed_opaque_existential_1(v2, v4);
  a1[3] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v7 = *(*(v4 - 8) + 16);

  return v7(boxed_opaque_existential_1, v5, v4);
}

uint64_t sub_2312FC674(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2311D44D4;

  return sub_2312FC060(a1, a2);
}

uint64_t sub_2312FC718(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2311DDECC;

  return sub_2312FC3E8(a1);
}

uint64_t sub_2312FC7AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2312FC840;

  return sub_2312FC248(a1);
}

uint64_t sub_2312FC840()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7_21();

  return v4(v3);
}

uint64_t sub_2312FC938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2311EB1F8(a1, a2, a3);

  return MEMORY[0x2821C74C0](a1, a2, v5);
}

unint64_t sub_2312FC990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F7D1E0;
  if (!qword_280F7D1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7D1E0);
  }

  return result;
}

uint64_t sub_2312FCA10(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD445E8, &qword_2313749C8);
    v3 = sub_23136A790();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_2312FFC08(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_2312FCAA8()
{
  OUTLINED_FUNCTION_8();
  v0[7] = v1;
  v0[8] = type metadata accessor for SuggestionPool();
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_26_3(v2);

  return sub_2312FD524();
}

uint64_t sub_2312FCB48()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 80) = v3;

  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2312FCC30()
{
  OUTLINED_FUNCTION_8();
  sub_2311CF388(*(v0 + 56), v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_2312FCCD4;

  return sub_2312FCDFC();
}

uint64_t sub_2312FCCD4()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v4 = v3;
  *(v3 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2312AB0B8, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_14();

    return v5(v2);
  }
}

uint64_t sub_2312FCDFC()
{
  OUTLINED_FUNCTION_8();
  v1[43] = v2;
  v1[44] = v0;
  v1[42] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44908, &qword_231376B20);
  v1[45] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2312FCE90()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 344);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44910, &qword_231376B28);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v3);
  sub_2311CF388(v2, v0 + 176);
  v4 = swift_allocObject();
  *(v0 + 368) = v4;
  sub_2311D38A8((v0 + 176), v4 + 16);
  v5 = swift_task_alloc();
  *(v0 + 376) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434F8, &qword_23136CA38);
  v7 = sub_231367710();
  *v5 = v0;
  v5[1] = sub_2312FCFD8;
  v10 = *(v0 + 360);
  v11 = *(v0 + 336);

  return MEMORY[0x2821C6B08](v11, v10, &unk_231376B38, v4, v6, v7, v8, v9);
}

void sub_2312FCFD8()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  *(v1 + 384) = v3;
  *(v1 + 392) = v0;

  if (v0)
  {
  }

  else
  {
    sub_2311EB450(*(v2 + 360), &qword_27DD44908, &qword_231376B20);

    MEMORY[0x2822009F8](sub_2312FD12C, 0, 0);
  }
}

void sub_2312FD12C()
{
  v1 = *(v0 + 336);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = MEMORY[0x277D84F90];
    do
    {
      sub_2311EB398(v3, v0 + 16, &qword_27DD434F8, &qword_23136CA38);
      memcpy((v0 + 96), (v0 + 16), 0x50uLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43FD0, &unk_231370E70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44000, &qword_231376B40);
      if ((swift_dynamicCast() & 1) == 0)
      {
        *(v0 + 288) = 0;
        *(v0 + 256) = 0u;
        *(v0 + 272) = 0u;
      }

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
      if (*(v0 + 280))
      {
        sub_2311D38A8((v0 + 256), v0 + 216);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = OUTLINED_FUNCTION_8_25();
          sub_23126EEA8(v7);
          v4 = v8;
        }

        v6 = *(v4 + 16);
        v5 = *(v4 + 24);
        if (v6 >= v5 >> 1)
        {
          v9 = OUTLINED_FUNCTION_37(v5);
          sub_23126EEA8(v9);
          v4 = v10;
        }

        *(v4 + 16) = v6 + 1;
        sub_2311D38A8((v0 + 216), v4 + 40 * v6 + 32);
      }

      else
      {
        sub_2311EB450(v0 + 256, &qword_27DD44918, &qword_231376B48);
      }

      v3 += 80;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v11 = *(v4 + 16);
  if (v11)
  {
    v12 = MEMORY[0x277D84F90];
    v13 = v4 + 32;
    while (1)
    {
      sub_2311CF388(v13, v0 + 296);
      __swift_project_boxed_opaque_existential_1((v0 + 296), *(v0 + 320));
      swift_getDynamicType();
      v14 = sub_231368910();
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 296));
      v15 = *(v14 + 16);
      v16 = *(v12 + 16);
      if (__OFADD__(v16, v15))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v16 + v15 > *(v12 + 24) >> 1)
      {
        sub_23126E7FC(isUniquelyReferenced_nonNull_native);
        v12 = v18;
      }

      if (*(v14 + 16))
      {
        if ((*(v12 + 24) >> 1) - *(v12 + 16) < v15)
        {
          goto LABEL_39;
        }

        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43440, &qword_23136C960);
        OUTLINED_FUNCTION_13_20(v19);

        if (v15)
        {
          v20 = *(v12 + 16);
          v21 = __OFADD__(v20, v15);
          v22 = v20 + v15;
          if (v21)
          {
            goto LABEL_40;
          }

          *(v12 + 16) = v22;
        }
      }

      else
      {

        if (v15)
        {
          goto LABEL_38;
        }
      }

      v13 += 40;
      if (!--v11)
      {

        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
LABEL_30:
    v23 = *(v0 + 392);
    sub_2312FED88(*(v0 + 384));
    if (v23)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(*(v0 + 344));

      v24 = *(v0 + 8);

      v24();
    }

    else
    {
      v25 = *(v0 + 344);
      v26 = *(v0 + 336);
      static SuggestionPool.keySuggestions(suggestions:)();
      v28 = v27;

      sub_2312FF578(v26);
      v30 = v29;

      swift_allocObject();
      v31 = SuggestionPool.init(pool:resolvers:intentOwners:)(v28, v12, v30);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);

      OUTLINED_FUNCTION_14();

      v32(v31);
    }
  }
}

uint64_t sub_2312FD524()
{
  OUTLINED_FUNCTION_8();
  v0[98] = v1;
  v0[97] = v2;
  v3 = sub_2313698C0();
  v0[99] = v3;
  v0[100] = *(v3 - 8);
  v0[101] = swift_task_alloc();
  v0[102] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2312FD5E8()
{
  v1 = *(v0 + 776);
  v2 = v1[4];
  OUTLINED_FUNCTION_3_2(v1);
  v6 = (*(v2 + 8) + **(v2 + 8));
  v3 = swift_task_alloc();
  *(v0 + 824) = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_26_3(v3);

  return v6(v4, v2);
}

uint64_t sub_2312FD6FC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 832) = v3;

  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2312FD7E4()
{
  v48 = v0;
  v1 = v0[104];
  v2 = *(v1 + 16);
  if (v2)
  {
    v47 = MEMORY[0x277D84F90];
    v3 = OUTLINED_FUNCTION_10_28();
    sub_2311F5E10(v3, v2, 0);
    v4 = v47;
    v5 = v1 + 32;
    do
    {
      sub_2311CF388(v5, (v0 + 42));
      __swift_project_boxed_opaque_existential_1(v0 + 42, v0[45]);
      sub_231367DD0();
      __swift_project_boxed_opaque_existential_1(v0 + 47, v0[50]);
      sub_231368740();
      v6 = v0[55];
      v7 = v0[56];
      __swift_project_boxed_opaque_existential_1(v0 + 52, v6);
      v0[5] = v6;
      v0[6] = *(v7 + 8);
      __swift_allocate_boxed_opaque_existential_1(v0 + 2);
      OUTLINED_FUNCTION_26_0();
      (*(v8 + 16))();
      v9 = v0[45];
      v10 = v0[46];
      __swift_project_boxed_opaque_existential_1(v0 + 42, v9);
      v0[10] = v9;
      v0[11] = *(v10 + 8);
      __swift_allocate_boxed_opaque_existential_1(v0 + 7);
      OUTLINED_FUNCTION_26_0();
      (*(v11 + 16))();
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 52);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 47);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 42);
      v47 = v4;
      v13 = *(v4 + 16);
      v12 = *(v4 + 24);
      if (v13 >= v12 >> 1)
      {
        v14 = OUTLINED_FUNCTION_37(v12);
        sub_2311F5E10(v14, v13 + 1, 1);
        v4 = v47;
      }

      *(v4 + 16) = v13 + 1;
      memcpy((v4 + 80 * v13 + 32), v0 + 2, 0x50uLL);
      v5 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  v0[105] = v4;
  sub_231369100();
  sub_231369EE0();
  v15 = sub_2313698A0();
  v16 = sub_23136A3A0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v46 = v44;
    *v17 = 136315138;
    v18 = *(v4 + 16);
    v19 = MEMORY[0x277D84F90];
    if (v18)
    {
      v43 = v16;
      v47 = MEMORY[0x277D84F90];
      v20 = OUTLINED_FUNCTION_10_28();
      sub_2311F59B0(v20, v18, 0);
      v19 = v47;
      v21 = v4 + 32;
      do
      {
        sub_2311EB398(v21, (v0 + 32), &qword_27DD434F8, &qword_23136CA38);
        __swift_project_boxed_opaque_existential_1(v0 + 37, v0[40]);
        sub_231367AD0();
        sub_2311EB450((v0 + 32), &qword_27DD434F8, &qword_23136CA38);
        v47 = v19;
        v23 = *(v19 + 16);
        v22 = *(v19 + 24);
        if (v23 >= v22 >> 1)
        {
          v26 = OUTLINED_FUNCTION_37(v22);
          sub_2311F59B0(v26, v23 + 1, 1);
        }

        __swift_mutable_project_boxed_opaque_existential_1((v0 + 92), v0[95]);
        OUTLINED_FUNCTION_12_21();
        v25 = v24;
        swift_task_alloc();
        (*(v25 + 16))();
        sub_23125D3D4();
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 92);

        v19 = v47;
        v21 += 80;
        --v18;
      }

      while (v18);
      v16 = v43;
    }

    v30 = v0[102];
    v31 = v0[100];
    v32 = v0[99];
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43600, &qword_23136CB40);
    v34 = MEMORY[0x23192A860](v19, v33);
    v36 = v35;

    v37 = sub_2311CFD58(v34, v36, &v46);

    *(v17 + 4) = v37;
    _os_log_impl(&dword_2311CB000, v15, v16, "domain repos from %s loaded", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    v28 = *(v31 + 8);
    v28(v30, v32);
  }

  else
  {
    v27 = v0[100];

    v28 = *(v27 + 8);
    v29 = OUTLINED_FUNCTION_27();
    (v28)(v29);
  }

  v0[106] = v28;
  v38 = v0[98];
  v39 = v38[4];
  OUTLINED_FUNCTION_3_2(v38);
  v45 = (*(v39 + 16) + **(v39 + 16));
  v40 = swift_task_alloc();
  v0[107] = v40;
  *v40 = v0;
  v41 = OUTLINED_FUNCTION_26_3(v40);

  return v45(v41, v39);
}

uint64_t sub_2312FDD98()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 864) = v3;

  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_2312FDE80()
{
  v66 = v0;
  v1 = *(v0 + 864);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_2311CF388(v3, v0 + 456);
      sub_2311D38A8((v0 + 456), v0 + 576);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD431F8, &unk_231374F20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43FC0, &qword_231370E60);
      if (swift_dynamicCast())
      {
        if (*(v0 + 560))
        {
          sub_2311D38A8((v0 + 536), v0 + 496);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = OUTLINED_FUNCTION_8_25();
            sub_23126ED68(v7);
            v4 = v8;
          }

          v6 = *(v4 + 16);
          v5 = *(v4 + 24);
          if (v6 >= v5 >> 1)
          {
            v9 = OUTLINED_FUNCTION_37(v5);
            sub_23126ED68(v9);
            v4 = v10;
          }

          *(v4 + 16) = v6 + 1;
          sub_2311D38A8((v0 + 496), v4 + 40 * v6 + 32);
          goto LABEL_12;
        }
      }

      else
      {
        *(v0 + 568) = 0;
        *(v0 + 536) = 0u;
        *(v0 + 552) = 0u;
      }

      sub_2311EB450(v0 + 536, &qword_27DD44900, &unk_231376B08);
LABEL_12:
      v3 += 40;
      if (!--v2)
      {

        goto LABEL_15;
      }
    }
  }

  v4 = MEMORY[0x277D84F90];
LABEL_15:
  v11 = *(v4 + 16);
  if (v11)
  {
    v12 = MEMORY[0x277D84F90];
    v13 = v4 + 32;
    while (1)
    {
      sub_2311CF388(v13, v0 + 616);
      __swift_project_boxed_opaque_existential_1((v0 + 616), *(v0 + 640));
      v14 = sub_231366F70();
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 616));
      v15 = *(v14 + 16);
      v16 = *(v12 + 16);
      if (__OFADD__(v16, v15))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v16 + v15 > *(v12 + 24) >> 1)
      {
        sub_23126ED44(isUniquelyReferenced_nonNull_native);
        v12 = v18;
      }

      if (*(v14 + 16))
      {
        if ((*(v12 + 24) >> 1) - *(v12 + 16) < v15)
        {
          goto LABEL_51;
        }

        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43FD0, &unk_231370E70);
        OUTLINED_FUNCTION_13_20(v19);

        if (v15)
        {
          v20 = *(v12 + 16);
          v21 = __OFADD__(v20, v15);
          v22 = v20 + v15;
          if (v21)
          {
            goto LABEL_52;
          }

          *(v12 + 16) = v22;
        }
      }

      else
      {

        if (v15)
        {
          goto LABEL_50;
        }
      }

      v13 += 40;
      if (!--v11)
      {

        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
LABEL_30:
    v23 = MEMORY[0x277D84F90];
    v24 = *(v12 + 16);
    if (v24)
    {
      v65 = MEMORY[0x277D84F90];
      v25 = OUTLINED_FUNCTION_10_28();
      sub_2311F5E10(v25, v24, 0);
      v26 = v65;
      v27 = v12 + 32;
      do
      {
        sub_2311CF388(v27, v0 + 656);
        sub_2311CF388(v0 + 656, v0 + 96);
        v28 = *(v0 + 680);
        v29 = *(v0 + 688);
        __swift_project_boxed_opaque_existential_1((v0 + 656), v28);
        *(v0 + 160) = v28;
        *(v0 + 168) = *(v29 + 8);
        __swift_allocate_boxed_opaque_existential_1((v0 + 136));
        OUTLINED_FUNCTION_26_0();
        (*(v30 + 16))();
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 656));
        v65 = v26;
        v32 = *(v26 + 16);
        v31 = *(v26 + 24);
        if (v32 >= v31 >> 1)
        {
          v33 = OUTLINED_FUNCTION_37(v31);
          sub_2311F5E10(v33, v32 + 1, 1);
          v26 = v65;
        }

        *(v26 + 16) = v32 + 1;
        memcpy((v26 + 80 * v32 + 32), (v0 + 96), 0x50uLL);
        v27 += 40;
        --v24;
      }

      while (v24);
    }

    else
    {

      v26 = MEMORY[0x277D84F90];
    }

    sub_231369100();
    sub_231369EE0();
    v34 = sub_2313698A0();
    v35 = sub_23136A3A0();

    if (os_log_type_enabled(v34, v35))
    {
      v62 = v35;
      log = v34;
      v36 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v64 = v60;
      buf = v36;
      *v36 = 136315138;
      v37 = *(v26 + 16);
      v38 = MEMORY[0x277D84F90];
      if (v37)
      {
        v65 = MEMORY[0x277D84F90];
        v39 = OUTLINED_FUNCTION_10_28();
        sub_2311F59B0(v39, v37, 0);
        v38 = v65;
        v40 = v26 + 32;
        do
        {
          sub_2311EB398(v40, v0 + 176, &qword_27DD434F8, &qword_23136CA38);
          __swift_project_boxed_opaque_existential_1((v0 + 216), *(v0 + 240));
          sub_231367AD0();
          sub_2311EB450(v0 + 176, &qword_27DD434F8, &qword_23136CA38);
          v65 = v38;
          v42 = *(v38 + 16);
          v41 = *(v38 + 24);
          if (v42 >= v41 >> 1)
          {
            v45 = OUTLINED_FUNCTION_37(v41);
            sub_2311F59B0(v45, v42 + 1, 1);
          }

          __swift_mutable_project_boxed_opaque_existential_1(v0 + 696, *(v0 + 720));
          OUTLINED_FUNCTION_12_21();
          v44 = v43;
          swift_task_alloc();
          (*(v44 + 16))();
          sub_23125D3D4();
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 696));

          v38 = v65;
          v40 += 80;
          --v37;
        }

        while (v37);
        v23 = MEMORY[0x277D84F90];
      }

      v49 = *(v0 + 848);
      v50 = *(v0 + 808);
      v51 = *(v0 + 792);
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43600, &qword_23136CB40);
      v53 = MEMORY[0x23192A860](v38, v52);
      v55 = v54;

      v56 = sub_2311CFD58(v53, v55, &v64);

      *(buf + 4) = v56;
      _os_log_impl(&dword_2311CB000, log, v62, "generator repos from %s loaded", buf, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      v49(v50, v51);
    }

    else
    {
      v46 = *(v0 + 848);
      v47 = *(v0 + 808);
      v48 = *(v0 + 792);

      v46(v47, v48);
    }

    v57 = *(v0 + 840);
    v65 = v23;
    sub_2312676A0(v57);
    sub_2312676A0(v26);
    v58 = v65;

    OUTLINED_FUNCTION_14();

    v59(v58);
  }
}

uint64_t sub_2312FE5D4(uint64_t a1, uint64_t a2)
{
  v2[42] = a1;
  v2[43] = a2;
  v3 = sub_231368180();
  v2[44] = v3;
  v2[45] = *(v3 - 8);
  v2[46] = swift_task_alloc();
  v4 = sub_2313698C0();
  v2[47] = v4;
  v2[48] = *(v4 - 8);
  v2[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312FE6F0, 0, 0);
}

uint64_t sub_2312FE6F0()
{
  v1 = *(v0 + 336);
  sub_2311EB398(v1, v0 + 16, &qword_27DD434F8, &qword_23136CA38);
  sub_2311D38A8((v0 + 16), v0 + 176);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  sub_2311EB398(v1, v0 + 96, &qword_27DD434F8, &qword_23136CA38);
  sub_2311D38A8((v0 + 136), v0 + 216);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  v2 = *(v0 + 208);
  OUTLINED_FUNCTION_3_2((v0 + 176));
  v3 = swift_task_alloc();
  *(v0 + 400) = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_26_3(v3);

  return MEMORY[0x2821C64A0](v4, v2);
}

uint64_t sub_2312FE7F8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 408) = v3;

  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2312FE8E0(uint64_t a1)
{
  v52 = v1;
  v2 = v1 + 27;
  sub_231369100();
  sub_2311CF388((v1 + 27), (v1 + 32));
  sub_231369EE0();
  v3 = sub_2313698A0();
  v4 = sub_23136A3A0();

  if (os_log_type_enabled(v3, v4))
  {
    v45 = v4;
    v5 = v1[51];
    v6 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v6 = 136315394;
    __swift_project_boxed_opaque_existential_1(v1 + 32, v1[35]);
    sub_231367AD0();
    v7 = v1[40];
    v8 = v1[41];
    OUTLINED_FUNCTION_3_2(v1 + 37);
    MEMORY[0x231929610](v7, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 37);
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 32);
    v9 = OUTLINED_FUNCTION_27();
    v12 = sub_2311CFD58(v9, v10, v11);

    *(v6 + 4) = v12;
    buf = v6;
    *(v6 + 12) = 2080;
    v13 = *(v5 + 16);
    v14 = MEMORY[0x277D84F90];
    v49 = v1;
    if (v13)
    {
      v43 = v3;
      v44 = v1 + 27;
      v15 = v1[51];
      v16 = v1[45];
      v51 = MEMORY[0x277D84F90];
      sub_2311F4E34(0);
      v14 = v51;
      v17 = *(v16 + 16);
      v16 += 16;
      v18 = v15 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
      v47 = *(v16 + 56);
      v48 = v17;
      do
      {
        v48(v1[46], v18, v1[44]);
        v19 = sub_231368130();
        v21 = v20;
        v22 = OUTLINED_FUNCTION_27();
        v23(v22);
        v51 = v14;
        v25 = *(v14 + 16);
        v24 = *(v14 + 24);
        if (v25 >= v24 >> 1)
        {
          v27 = OUTLINED_FUNCTION_37(v24);
          sub_2311F4E34(v27);
          v14 = v51;
        }

        *(v14 + 16) = v25 + 1;
        v26 = v14 + 16 * v25;
        *(v26 + 32) = v19;
        *(v26 + 40) = v21;
        v18 += v47;
        --v13;
        v1 = v49;
      }

      while (v13);
      v3 = v43;
      v2 = v44;
    }

    v51 = v14;
    sub_231369EE0();
    sub_231255C38(&v51);
    v31 = v1[48];
    v30 = v1[49];
    v32 = v1[47];

    v33 = sub_231367920();
    v35 = v34;

    v1 = v49;
    v36 = sub_2311CFD58(v33, v35, &v50);

    *(buf + 14) = v36;
    _os_log_impl(&dword_2311CB000, v3, v45, "SuggestionPool:: Loaded from provider %s:\n%s", buf, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v31 + 8))(v30, v32);
  }

  else
  {

    v28 = OUTLINED_FUNCTION_27();
    v29(v28);
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 32);
  }

  v37 = v1[51];
  v38 = v1[43];
  v39 = swift_task_alloc();
  *(v39 + 16) = v38;
  *(v39 + 24) = v2;
  v40 = sub_2312E3FC8(sub_231300310, v39, v37);

  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 22);

  OUTLINED_FUNCTION_14();

  return v41(v40);
}

uint64_t sub_2312FED24@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = sub_2312A4110(a1, a3);
  *a4 = result;
  return result;
}

uint64_t sub_2312FED88(uint64_t a1)
{
  v3 = sub_2313698C0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_231368180();
  v7 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v70 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43600, &qword_23136CB40);
  v77 = sub_231369EC0();
  sub_23125D7A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44928, &qword_231376B60);
  sub_231369EA0();
  v69 = sub_23125D7A0();
  if (!v69)
  {
  }

  v63 = v6;
  v64 = v1;
  v61 = v4;
  v62 = v3;
  v9 = 0;
  v65 = a1 & 0xFFFFFFFFFFFFFF8;
  v66 = a1;
  v67 = (v7 + 8);
  v68 = a1 & 0xC000000000000001;
  while (1)
  {
    if (v68)
    {
      v10 = MEMORY[0x23192AD10](v9, a1);
    }

    else
    {
      if (v9 >= *(v65 + 16))
      {
        goto LABEL_30;
      }

      v10 = *(a1 + 8 * v9 + 32);
    }

    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v11 = v70;
    sub_2313676F0();
    v12 = sub_231368130();
    v14 = v13;
    (*v67)(v11, v71);
    v15 = v77;
    v16 = *(v77 + 16);
    v72 = v9 + 1;
    if (v16)
    {
      break;
    }

LABEL_11:
    v76 = 0;
    v74 = 0u;
    v75 = 0u;
    sub_2311EB450(&v74, &qword_27DD43D30, qword_231375200);
    sub_2313676D0();
    swift_isUniquelyReferenced_nonNull_native();
    v73 = v15;
    v19 = v12;
    v20 = v14;
    v21 = sub_231215F6C(v12, v14);
    if (__OFADD__(*(v15 + 16), (v22 & 1) == 0))
    {
      goto LABEL_28;
    }

    v23 = v21;
    v24 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E00, &unk_231370780);
    if (sub_23136A700())
    {
      v25 = sub_231215F6C(v19, v20);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_32;
      }

      v23 = v25;
    }

    if (v24)
    {

      v27 = v73;
      v28 = (v73[7] + 40 * v23);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      sub_2311D38A8(&v74, v28);
    }

    else
    {
      v27 = v73;
      v73[(v23 >> 6) + 8] |= 1 << v23;
      v29 = (v27[6] + 16 * v23);
      *v29 = v19;
      v29[1] = v20;
      sub_2311D38A8(&v74, v27[7] + 40 * v23);

      v30 = v27[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_29;
      }

      v27[2] = v32;
    }

    v77 = v27;
    ++v9;
    a1 = v66;
    if (v72 == v69)
    {
    }
  }

  v17 = sub_231215F6C(v12, v14);
  if ((v18 & 1) == 0)
  {
    v15 = v77;
    goto LABEL_11;
  }

  sub_2311CF388(*(v15 + 56) + 40 * v17, &v74);
  sub_2311EB450(&v74, &qword_27DD43D30, qword_231375200);
  v34 = v63;
  sub_231369100();
  sub_231369EE0();

  v35 = sub_2313698A0();
  v36 = sub_23136A3B0();

  if (!os_log_type_enabled(v35, v36))
  {

    swift_bridgeObjectRelease_n();
    v57 = (*(v61 + 8))(v34, v62);
    goto LABEL_26;
  }

  LODWORD(v71) = v36;
  v37 = v14;
  v38 = swift_slowAlloc();
  v70 = swift_slowAlloc();
  v73 = v70;
  *v38 = 136315650;
  *(v38 + 4) = sub_2311CFD58(v12, v37, &v73);
  *(v38 + 12) = 2080;
  v72 = v10;
  sub_2313676D0();
  v39 = __swift_project_boxed_opaque_existential_1(&v74, *(&v75 + 1));
  v40 = MEMORY[0x28223BE20](v39);
  (*(v42 + 16))(&v60 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0), v40);
  v43 = sub_23136A020();
  v45 = v44;
  __swift_destroy_boxed_opaque_existential_1Tm(&v74);
  v46 = sub_2311CFD58(v43, v45, &v73);

  *(v38 + 14) = v46;
  *(v38 + 22) = 2080;
  sub_2312177CC();
  v47 = *(&v75 + 1);

  if (v47)
  {

    v48 = __swift_project_boxed_opaque_existential_1(&v74, *(&v75 + 1));
    v49 = MEMORY[0x28223BE20](v48);
    (*(v51 + 16))(&v60 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0), v49);
    v52 = sub_23136A020();
    v54 = v53;
    __swift_destroy_boxed_opaque_existential_1Tm(&v74);
    v55 = sub_2311CFD58(v52, v54, &v73);

    *(v38 + 24) = v55;
    _os_log_impl(&dword_2311CB000, v35, v71, "Found duplicate suggestionId: %s. Conflict amoungst owners: %s and %s", v38, 0x20u);
    v56 = v70;
    swift_arrayDestroy();
    MEMORY[0x23192B930](v56, -1, -1);
    MEMORY[0x23192B930](v38, -1, -1);

    v57 = (*(v61 + 8))(v63, v62);
LABEL_26:
    sub_2313002BC(v57, v58, v59);
    swift_allocError();
    swift_willThrow();
  }

LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_23136A970();
  __break(1u);
  return result;
}

void sub_2312FF578(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43590, &qword_23136CAD0);
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - v3;
  v5 = 0;
  v28 = 0;
  v30 = *(a1 + 16);
  v29 = a1 + 32;
  v6 = MEMORY[0x277D84F90];
  v34 = xmmword_23136B670;
  while (1)
  {
    if (v5 == v30)
    {
      goto LABEL_24;
    }

    sub_2311EB398(v29 + 80 * v5, v41, &qword_27DD434F8, &qword_23136CA38);
    __swift_project_boxed_opaque_existential_1(v41, v41[3]);
    v7 = sub_231366F60();
    v8 = *(v7 + 16);
    if (v8)
    {
      v32 = v6;
      v33 = v5;
      v40 = MEMORY[0x277D84F90];
      sub_2311F602C(0, v8, 0);
      v9 = v40;
      v37 = sub_2313673A0();
      v10 = *(v37 - 8);
      v11 = *(v10 + 16);
      v10 += 16;
      v36 = v11;
      v12 = (*(v10 + 64) + 32) & ~*(v10 + 64);
      v31 = v7;
      v13 = v7 + v12;
      v35 = v10;
      v14 = *(v10 + 56);
      do
      {
        v15 = *(v39 + 48);
        v36(v4, v13, v37);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435F8, &qword_231374530);
        v16 = swift_allocObject();
        *(v16 + 16) = v34;
        __swift_project_boxed_opaque_existential_1(v42, v43);
        sub_231367AD0();
        *&v4[v15] = v16;
        v40 = v9;
        v18 = *(v9 + 16);
        v17 = *(v9 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_2311F602C((v17 > 1), v18 + 1, 1);
          v9 = v40;
        }

        *(v9 + 16) = v18 + 1;
        sub_23130024C(v4, v9 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v18);
        v13 += v14;
        --v8;
      }

      while (v8);

      v6 = v32;
      v5 = v33;
    }

    else
    {

      v9 = MEMORY[0x277D84F90];
    }

    sub_2311EB450(v41, &qword_27DD434F8, &qword_23136CA38);
    v19 = *(v9 + 16);
    v20 = *(v6 + 16);
    v21 = v20 + v19;
    if (__OFADD__(v20, v19))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v21 > *(v6 + 24) >> 1)
    {
      if (v20 <= v21)
      {
        v23 = v20 + v19;
      }

      else
      {
        v23 = v20;
      }

      sub_23126ED8C(isUniquelyReferenced_nonNull_native, v23, 1, v6);
      v6 = v24;
    }

    ++v5;
    if (*(v9 + 16))
    {
      if ((*(v6 + 24) >> 1) - *(v6 + 16) < v19)
      {
        goto LABEL_26;
      }

      swift_arrayInitWithCopy();

      if (v19)
      {
        v25 = *(v6 + 16);
        v26 = __OFADD__(v25, v19);
        v27 = v25 + v19;
        if (v26)
        {
          goto LABEL_27;
        }

        *(v6 + 16) = v27;
      }
    }

    else
    {

      if (v19)
      {
        __break(1u);
LABEL_24:
        sub_2312FCA10(v6);
        return;
      }
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_2312FF950(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v7 = sub_2313698C0();
  v34 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *a2;
  sub_231369110();
  sub_231369EE0();
  sub_231369EE0();
  v12 = sub_2313698A0();
  v13 = sub_23136A390();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v31 = v7;
    v15 = v14;
    v30 = swift_slowAlloc();
    v35 = v30;
    *v15 = 136315650;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43600, &qword_23136CB40);
    v33 = v3;
    v17 = v16;
    v18 = MEMORY[0x23192A860](v10, v16);
    v32 = a3;
    v20 = sub_2311CFD58(v18, v19, &v35);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v21 = MEMORY[0x23192A860](v10, v17);
    v23 = sub_2311CFD58(v21, v22, &v35);

    *(v15 + 14) = v23;
    a3 = v32;
    *(v15 + 22) = 2080;
    v24 = MEMORY[0x23192A860](v11, v17);
    v26 = sub_2311CFD58(v24, v25, &v35);

    *(v15 + 24) = v26;
    _os_log_impl(&dword_2311CB000, v12, v13, "[warning] duplicate intent registered for %s. Existing owner: %s, duplicate owner: %s", v15, 0x20u);
    v27 = v30;
    swift_arrayDestroy();
    MEMORY[0x23192B930](v27, -1, -1);
    MEMORY[0x23192B930](v15, -1, -1);

    (*(v34 + 8))(v9, v31);
  }

  else
  {

    (*(v34 + 8))(v9, v7);
  }

  *a3 = v10;
  sub_231369EE0();
  v28 = sub_231369EE0();
  sub_2312673D8(v28);
}

void sub_2312FFC08(uint64_t a1, char a2, uint64_t a3)
{
  v44 = a3;
  v42 = sub_2313673A0();
  v6 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v43 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43590, &qword_23136CAD0);
  MEMORY[0x28223BE20](v8);
  v39 = &v34 - v11;
  v38 = *(a1 + 16);
  if (!v38)
  {
LABEL_17:

    return;
  }

  v12 = 0;
  v37 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v13 = *(v9 + 48);
  v35 = v6;
  v36 = v13;
  v40 = v3;
  v41 = (v6 + 32);
  v34 = (v6 + 8);
  while (1)
  {
    if (v12 >= *(a1 + 16))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      sub_23136A970();
      __break(1u);
      goto LABEL_25;
    }

    v14 = v10;
    v15 = v39;
    sub_2311EB398(v37 + *(v10 + 72) * v12, v39, &qword_27DD43590, &qword_23136CAD0);
    v16 = *v41;
    (*v41)(v43, v15, v42);
    v17 = *(v15 + v36);
    v47 = v17;
    v18 = *v44;
    v20 = sub_23121652C();
    v21 = v18[2];
    v22 = (v19 & 1) == 0;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_22;
    }

    v23 = v19;
    if (v18[3] < v21 + v22)
    {
      break;
    }

    if (a2)
    {
      if (v19)
      {
        goto LABEL_11;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44920, &unk_231376B50);
      sub_23136A710();
      if (v23)
      {
        goto LABEL_11;
      }
    }

LABEL_14:
    v28 = v43;
    v29 = *v44;
    *(*v44 + 8 * (v20 >> 6) + 64) |= 1 << v20;
    v16((v29[6] + *(v35 + 72) * v20), v28, v42);
    *(v29[7] + 8 * v20) = v17;
    v30 = v29[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      goto LABEL_23;
    }

    v29[2] = v32;
LABEL_16:
    ++v12;
    a2 = 1;
    v10 = v14;
    if (v38 == v12)
    {
      goto LABEL_17;
    }
  }

  sub_2312B5A70();
  v24 = sub_23121652C();
  if ((v23 & 1) != (v25 & 1))
  {
    goto LABEL_24;
  }

  v20 = v24;
  if ((v23 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v26 = *v44;
  v46 = *(*(*v44 + 56) + 8 * v20);
  sub_231369EE0();
  v27 = v40;
  sub_2312FF950(&v46, &v47, v45);
  v40 = v27;
  if (!v27)
  {

    (*v34)(v43, v42);
    *(v26[7] + 8 * v20) = v45[0];

    goto LABEL_16;
  }

  v46 = v40;
  v33 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436A0, &qword_23136CC90);
  if ((swift_dynamicCast() & 1) == 0)
  {

    (*v34)(v43, v42);

    return;
  }

LABEL_25:
  v45[0] = 0;
  v45[1] = 0xE000000000000000;
  sub_23136A650();
  MEMORY[0x23192A730](0xD00000000000001BLL, 0x800000023137D480);
  sub_23136A6F0();
  MEMORY[0x23192A730](39, 0xE100000000000000);
  sub_23136A750();
  __break(1u);
}

uint64_t sub_2313000C8()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23130015C;

  return sub_2312FE5D4(v3, v0 + 16);
}

uint64_t sub_23130015C()
{
  OUTLINED_FUNCTION_8();
  v1 = v0;
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_14();

  return v2(v1);
}

uint64_t sub_23130024C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43590, &qword_23136CAD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2313002BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD44930;
  if (!qword_27DD44930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44930);
  }

  return result;
}

_BYTE *_s6ErrorsOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_2313003DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD44938;
  if (!qword_27DD44938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44938);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_20(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_231300450()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437A0, &qword_23136DB10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23136B670;
  v1 = sub_231367D20();
  *(v0 + 56) = v1;
  OUTLINED_FUNCTION_0_35();
  *(v0 + 64) = sub_2313008F4(v2, 255, v3, MEMORY[0x277D60B60]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 32));
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D60B48], v1);
  return v0;
}

uint64_t sub_23130053C()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 56), *(*(v0 + 56) + 24));
  sub_2313006BC();
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D60, &qword_231370690);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_2313707C0;
    sub_2313692F0();
    v3 = sub_231367D20();
    *(v0 + 40) = v3;
    OUTLINED_FUNCTION_0_35();
    *(v0 + 48) = sub_2313008F4(v4, 255, v5, MEMORY[0x277D60B60]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    (*(*(v3 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D60B48], v3);
    *(v2 + 32) = sub_231369230();
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v7 = *(v0 + 8);

  return v7(v2);
}

uint64_t sub_2313006BC()
{
  MEMORY[0x231927EB0](v4);
  v0 = v5;
  v1 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v2 = MEMORY[0x231929610](v0, v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v2;
}

uint64_t sub_231300764(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23120B320;

  return sub_23130051C(a1);
}

void sub_2313007F8(uint64_t a1, uint64_t a2)
{
  sub_2313008F4(qword_280F7D130, a2, type metadata accessor for ConversationalContinuerSignalExtractor, &unk_231376C88);

  JUMPOUT(0x2319284B0);
}

uint64_t sub_2313008F4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_23130093C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a2;
  v6 = sub_231369050();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231300A00, 0, 0);
}

uint64_t sub_231300A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = v18[2];
  v20 = v19[3];
  v21 = v19[4];
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v27 = swift_task_alloc();
  v18[9] = v27;
  *v27 = v18;
  v27[1] = sub_231300ABC;
  v28 = v18[8];

  return MEMORY[0x2821C6E60](v28, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_231300ABC()
{

  return MEMORY[0x2822009F8](sub_231300BB8, 0, 0);
}

uint64_t sub_231300BB8(uint64_t a1)
{
  v53 = v1;
  v3 = v1[3];
  v4 = sub_231369040();
  v6 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v7 = sub_231254950();
  v8 = v7 + 1;
  if (v7 == -1)
  {
    __break(1u);
  }

  else if (qword_280F7C8A0 == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v9 = sub_2313698C0();
  __swift_project_value_buffer(v9, qword_280F8E510);
  sub_231369EE0();
  v10 = sub_2313698A0();
  v11 = sub_23136A3A0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_45();
    v2 = swift_slowAlloc();
    v52 = v2;
    *v12 = 136315394;
    *(v12 + 4) = OUTLINED_FUNCTION_3_33(v2, v13, v14, v15);
    *(v12 + 12) = 2048;
    *(v12 + 14) = v8;
    _os_log_impl(&dword_2311CB000, v10, v11, "DiscoverabilityScorer: %s Calculated signalWeighting as %lu", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    OUTLINED_FUNCTION_24();
    MEMORY[0x23192B930](v12, -1, -1);
  }

  v16 = v1[5];
  v17 = sub_231300FE4(v1[8], v1[3]);
  v18 = __swift_project_boxed_opaque_existential_1((v16 + 16), *(v16 + 40));
  v19 = log(v18[8]);
  v20 = 2.0 / (pow(v17, 0.693147181 / v19) + v8);
  sub_231369EE0();
  v21 = sub_2313698A0();
  v22 = sub_23136A3A0();

  if (os_log_type_enabled(v21, v22))
  {
    OUTLINED_FUNCTION_45();
    v23 = OUTLINED_FUNCTION_57_0();
    v52 = v23;
    *v2 = 136315394;
    *(v2 + 4) = OUTLINED_FUNCTION_3_33(v23, v24, v25, v26);
    *(v2 + 12) = 2048;
    *(v2 + 14) = v20;
    OUTLINED_FUNCTION_2_4(&dword_2311CB000, v27, v28, "DiscoverabilityScorer: %s Calculated interest as %f");
    OUTLINED_FUNCTION_26_2();
    OUTLINED_FUNCTION_24();
  }

  sub_23130129C(v4, v6, v1[2], v1[8], v1[3], v1[4]);
  v30 = v29;
  sub_231369EE0();
  v31 = sub_2313698A0();
  v32 = sub_23136A3A0();

  if (os_log_type_enabled(v31, v32))
  {
    OUTLINED_FUNCTION_45();
    v33 = OUTLINED_FUNCTION_57_0();
    v52 = v33;
    *v2 = 136315394;
    *(v2 + 4) = OUTLINED_FUNCTION_3_33(v33, v34, v35, v36);
    *(v2 + 12) = 2048;
    *(v2 + 14) = v30;
    OUTLINED_FUNCTION_2_4(&dword_2311CB000, v37, v38, "DiscoverabilityScorer: %s Calculated existingKnowledge as %f");
    OUTLINED_FUNCTION_26_2();
    OUTLINED_FUNCTION_24();
  }

  v39 = v20 / ((v30 + 1.0) * *(__swift_project_boxed_opaque_existential_1((v16 + 16), *(v16 + 40)) + 10));
  sub_231369EE0();
  v40 = sub_2313698A0();
  v41 = sub_23136A3A0();

  v42 = os_log_type_enabled(v40, v41);
  v44 = v1[7];
  v43 = v1[8];
  v45 = v1[6];
  if (v42)
  {
    OUTLINED_FUNCTION_45();
    v52 = OUTLINED_FUNCTION_57_0();
    *v2 = 136315394;
    v46 = sub_2311CFD58(v4, v6, &v52);

    *(v2 + 4) = v46;
    *(v2 + 12) = 2048;
    *(v2 + 14) = v39;
    OUTLINED_FUNCTION_2_4(&dword_2311CB000, v47, v48, "DiscoverabilityScorer: %s Calculated finalScore as %f");
    OUTLINED_FUNCTION_26_2();
    OUTLINED_FUNCTION_24();
  }

  else
  {
  }

  (*(v44 + 8))(v43, v45);

  v49 = v1[1];
  v50.n128_f64[0] = v39;

  return v49(v50);
}

uint64_t sub_231300FE4(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_231369050();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  result = sub_231254248(a1, v10, v11);
  if (v13)
  {
    v14 = __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
    memcpy(v32, v14, sizeof(v32));
    sub_231301C34();
    v16 = v15 != 0;
    result = v15 - 1;
    if (!v16)
    {
      __break(1u);
      return result;
    }
  }

  v17 = result + 1;
  if (result == -1)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (qword_280F7C8A0 != -1)
  {
LABEL_11:
    swift_once();
  }

  v18 = sub_2313698C0();
  __swift_project_value_buffer(v18, qword_280F8E510);
  (*(v7 + 16))(v9, a1, v6);
  v19 = sub_2313698A0();
  v20 = sub_23136A3A0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30 = v17;
    v31 = v22;
    v23 = v6;
    v24 = v22;
    *v21 = 136315394;
    v25 = sub_231369040();
    v27 = v26;
    v28 = v23;
    v17 = v30;
    (*(v7 + 8))(v9, v28);
    v29 = sub_2311CFD58(v25, v27, &v31);

    *(v21 + 4) = v29;
    *(v21 + 12) = 2048;
    *(v21 + 14) = v17;
    _os_log_impl(&dword_2311CB000, v19, v20, "rank for candidate: %s fetched as %lu", v21, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x23192B930](v24, -1, -1);
    MEMORY[0x23192B930](v21, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  return v17;
}

uint64_t sub_23130129C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v13 = a5[3];
  v14 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v13);
  result = sub_2312548B8(v13, v14);
  if (result == -1)
  {
    __break(1u);
  }

  else
  {
    v16 = a5[3];
    v17 = a5[4];
    __swift_project_boxed_opaque_existential_1(a5, v16);
    v18 = sub_231254598(a4, v16, v17);
    MEMORY[0x28223BE20](v18);
    v24[2] = v7;
    v24[3] = a6;
    v24[4] = a1;
    v24[5] = a2;
    v19 = sub_23132BC28(sub_2313020CC, v24, v18);

    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = (v19 + 32);
      v22 = 0.0;
      do
      {
        v23 = *v21++;
        v22 = v22 + v23;
        --v20;
      }

      while (v20);
    }
  }

  return result;
}

void sub_2313013F8(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, NSObject *a5@<X4>, double *a6@<X8>)
{
  v84 = a6;
  v82 = a5;
  v78 = a4;
  v9 = sub_231368090();
  v85 = *(v9 - 8);
  v86 = v9;
  MEMORY[0x28223BE20](v9);
  v83 = (v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v80 = v77 - v12;
  MEMORY[0x28223BE20](v13);
  v79 = v77 - v14;
  v15 = sub_231368260();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v77 - v20;
  v22 = __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
  v23 = v22[10];
  v24 = v22[11];
  v25 = v22[12];
  v87 = *(v22 + 4);
  v88 = v23;
  v89 = v24;
  v90 = v25;
  v26 = SiriSuggestionsRuntimeConfig.SiriSuggestionsDiscoverabilityConfig.observedActionTypeCoefficients.getter();
  sub_231368060();
  v81 = COERCE_DOUBLE(sub_231210F50(v21, v26));
  v28 = v27;

  v29 = *(v16 + 8);
  v29(v21, v15);
  if (v28)
  {
    if (qword_280F7C8A0 != -1)
    {
      swift_once();
    }

    v30 = sub_2313698C0();
    __swift_project_value_buffer(v30, qword_280F8E510);
    v32 = v85;
    v31 = v86;
    v33 = v79;
    (*(v85 + 16))(v79, a1, v86);
    v34 = sub_2313698A0();
    v35 = sub_23136A3B0();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = COERCE_DOUBLE(swift_slowAlloc());
      v81 = v36;
      v83 = swift_slowAlloc();
      *&v87 = v83;
      **&v36 = 136315138;
      v82 = v34;
      sub_231368060();
      sub_2313020F0(&qword_27DD44940, MEMORY[0x277D60E40], MEMORY[0x277D60E58]);
      v37 = sub_23136A8B0();
      LODWORD(v80) = v35;
      v39 = v38;
      v29(v18, v15);
      (*(v32 + 8))(v33, v86);
      v40 = sub_2311CFD58(v37, v39, &v87);

      v41 = *&v81;
      v42 = v82;
      *(*&v81 + 4) = v40;
      v43 = v41;
      _os_log_impl(&dword_2311CB000, v42, v80, "DiscoverabilityScorer: Unable to determine action coefficient for %s. Check instantiation of DiscoverabilityScorer", v41, 0xCu);
      v44 = v83;
      __swift_destroy_boxed_opaque_existential_1Tm(v83);
      MEMORY[0x23192B930](v44, -1, -1);
      MEMORY[0x23192B930](v43, -1, -1);
    }

    else
    {

      (*(v32 + 8))(v33, v31);
    }

    v63 = 0.0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    sub_231368380();
    v46 = v45;
    sub_231368050();
    v48 = v47;
    v49 = a1;
    if (qword_280F7C8A0 != -1)
    {
      swift_once();
    }

    v50 = v46 - v48;
    v51 = sub_2313698C0();
    v52 = __swift_project_value_buffer(v51, qword_280F8E510);
    v54 = v85;
    v53 = v86;
    v55 = *(v85 + 16);
    v56 = v80;
    v79 = v49;
    v55(v80, v49, v86);

    v77[1] = v52;
    v57 = sub_2313698A0();
    v58 = sub_23136A3A0();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 134218752;
      *(v59 + 4) = v81;
      *(v59 + 12) = 2048;
      *(v59 + 14) = v46;
      *(v59 + 22) = 2048;
      sub_231368050();
      v61 = v60;
      v80 = *(v85 + 8);
      (v80)(v56, v86);
      *(v59 + 24) = v61;
      *(v59 + 32) = 2048;
      *(v59 + 34) = 0.693147181 / (__swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40))[9] * 86400.0);
      _os_log_impl(&dword_2311CB000, v57, v58, "%f * (1 / exp((%f - %f) * %f))", v59, 0x2Au);
      v62 = v59;
      v53 = v86;
      MEMORY[0x23192B930](v62, -1, -1);
    }

    else
    {

      v80 = *(v54 + 8);
      (v80)(v56, v53);
    }

    v64 = __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
    v65 = exp(v50 * (0.693147181 / (v64[9] * 86400.0)));
    v63 = 0.0;
    if (fabs(v65) != INFINITY)
    {
      v63 = 1.0 / v65 * v81;
    }

    v66 = v83;
    v55(v83, v79, v53);
    v67 = v82;
    sub_231369EE0();
    v68 = sub_2313698A0();
    v69 = sub_23136A3A0();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *&v87 = v71;
      *v70 = 136315906;
      *(v70 + 4) = sub_2311CFD58(v78, v67, &v87);
      *(v70 + 12) = 2080;
      sub_2313020F0(&qword_27DD44948, MEMORY[0x277D60D90], MEMORY[0x277D60DA8]);
      v72 = sub_23136A8B0();
      v73 = v53;
      v75 = v74;
      (v80)(v66, v73);
      v76 = sub_2311CFD58(v72, v75, &v87);

      *(v70 + 14) = v76;
      *(v70 + 22) = 2048;
      *(v70 + 24) = v63;
      *(v70 + 32) = 2048;
      *(v70 + 34) = v46;
      _os_log_impl(&dword_2311CB000, v68, v69, "DiscoverabilityScorer: %s calculated observed action: %s as %f with currentTs: %f", v70, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23192B930](v71, -1, -1);
      MEMORY[0x23192B930](v70, -1, -1);
    }

    else
    {

      (v80)(v66, v53);
    }
  }

  *v84 = v63;
}

void sub_231301C34()
{
  v1 = log(*(v0 + 64));
  v2 = exp2(1.0 / (0.693147181 / v1));
  if (v2 == INFINITY)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 >= 1.84467441e19)
  {
LABEL_7:
    __break(1u);
  }
}

uint64_t sub_231301CAC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = OBJC_IVAR____TtC15SiriSuggestions21DiscoverabilityScorer_objective;
  v2 = sub_2313694E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DiscoverabilityScorer(uint64_t a1)
{
  result = qword_280F82060;
  if (!qword_280F82060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_231301DA4(uint64_t a1)
{
  result = sub_2313694E0();
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

uint64_t sub_231301EA4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15SiriSuggestions21DiscoverabilityScorer_objective;
  v5 = sub_2313694E0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_231301F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_231301FD0;

  return sub_23130093C(a1, a2, v9, a4);
}

uint64_t sub_231301FD0(double a1)
{
  v6 = *v1;

  v3 = *(v6 + 8);
  v4.n128_f64[0] = a1;

  return v3(v4);
}

uint64_t sub_2313020F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t DefaultTrialCoreAnalyticsLogger.__allocating_init(coreAnalyticsClient:)(void *a1)
{
  swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v2);
  v4 = OUTLINED_FUNCTION_1_40(v3, v8);
  v5(v4);
  v6 = OUTLINED_FUNCTION_7_22();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

unint64_t sub_2313022E0(char a1)
{
  result = 0xD000000000000014;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000024;
      break;
    default:
      return result;
  }

  return result;
}

SiriSuggestions::TrialUseCase_optional __swiftcall TrialUseCase.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23136A7B0();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t TrialUseCase.rawValue.getter()
{
  v1 = 0x4C65727574616566;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000019;
  }
}

unint64_t sub_231302470@<X0>(unint64_t *a1@<X8>)
{
  result = TrialUseCase.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2313024A8(uint64_t *a1, char a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = sub_2313698C0();
  OUTLINED_FUNCTION_21();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = *a1;
  if (*(v77 + 16))
  {
    sub_231369FA0();

    v19 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v85 = v19;
    sub_231259C34();
    v20 = v85;
    if (a5)
    {
      sub_231369FA0();
      swift_isUniquelyReferenced_nonNull_native();
      v85 = v20;
      sub_231259C34();
      v20 = v85;
    }

    v71 = v6;
    sub_231369FA0();

    swift_isUniquelyReferenced_nonNull_native();
    v85 = v20;
    sub_231259C34();
    v21 = v85;
    v22 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    [v22 initWithInteger_];
    swift_isUniquelyReferenced_nonNull_native();
    v85 = v21;
    sub_231259C34();
    v23 = v77 + 64;
    v24 = 1 << *(v77 + 32);
    v25 = -1;
    v26 = v85;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v27 = v25 & *(v77 + 64);
    v28 = (v24 + 63) >> 6;
    v75 = "_trialExperimentId";
    v76 = "edSuggestionsService";
    v74 = "_trialDeploymentId";
    sub_231369EE0();
    v29 = 0;
    v72 = v28;
    v73 = v23;
    if (v27)
    {
      while (1)
      {
        v30 = v29;
LABEL_15:
        v31 = __clz(__rbit64(v27));
        v27 &= v27 - 1;
        v32 = v31 | (v30 << 6);
        v33 = *(*(v77 + 48) + v32);
        v34 = *(v77 + 56) + 40 * v32;
        v80 = *(v34 + 16);
        v35 = *(v34 + 32);
        v78 = *(v34 + 24);
        v36 = 0xEE00415F70756F72;
        v37 = 0x675F6E69616D6F64;
        switch(v33)
        {
          case 1:
            v36 = 0xEE00425F70756F72;
            break;
          case 2:
            v36 = 0xE800000000000000;
            v37 = 0x6D726F6674616C70;
            break;
          case 3:
            v36 = 0xE900000000000073;
            v37 = 0x7473696C796E6564;
            break;
          default:
            break;
        }

        v82 = v37;
        v85 = v37;
        v86 = v36;
        sub_231369EE0();
        v79 = v35;
        sub_231369EE0();
        v83 = v36;
        sub_231369EE0();
        OUTLINED_FUNCTION_6_24();
        sub_231369FA0();

        swift_isUniquelyReferenced_nonNull_native();
        v85 = v26;
        v38 = OUTLINED_FUNCTION_50_2();
        sub_231215F6C(v38, v39);
        if (__OFADD__(v26[2], (v40 & 1) == 0))
        {
          break;
        }

        v41 = v40;
        v42 = &v85;
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EB8, &unk_231376F60);
        if (sub_23136A700())
        {
          v42 = v85;
          v43 = OUTLINED_FUNCTION_50_2();
          sub_231215F6C(v43, v44);
          if ((v41 & 1) != (v45 & 1))
          {
            goto LABEL_50;
          }
        }

        v46 = v85;
        if (v41)
        {
          OUTLINED_FUNCTION_2_26();
        }

        else
        {
          OUTLINED_FUNCTION_0_36();
          if (v48)
          {
            goto LABEL_47;
          }

          v46[2] = v47;
        }

        v85 = v82;
        v86 = v83;
        sub_231369EE0();
        OUTLINED_FUNCTION_6_24();
        v84 = v80;
        sub_23130306C(v49, v50, v51);
        sub_23136A530();
        sub_231369FA0();

        swift_isUniquelyReferenced_nonNull_native();
        v85 = v46;
        v52 = OUTLINED_FUNCTION_50_2();
        sub_231215F6C(v52, v53);
        v55 = v54;
        OUTLINED_FUNCTION_5_26();
        if (v48)
        {
          goto LABEL_45;
        }

        v56 = &v85;
        if (sub_23136A700())
        {
          v56 = v85;
          v57 = OUTLINED_FUNCTION_50_2();
          sub_231215F6C(v57, v58);
          if ((v55 & 1) != (v59 & 1))
          {
            goto LABEL_50;
          }
        }

        v60 = v85;
        if (v55)
        {
          OUTLINED_FUNCTION_2_26();
        }

        else
        {
          OUTLINED_FUNCTION_0_36();
          if (v48)
          {
            goto LABEL_48;
          }

          v60[2] = v61;
        }

        v85 = v82;
        v86 = v83;
        sub_231369EE0();
        MEMORY[0x23192A730](0xD000000000000011, v74 | 0x8000000000000000);

        sub_231369FA0();

        swift_isUniquelyReferenced_nonNull_native();
        v85 = v60;
        v62 = OUTLINED_FUNCTION_50_2();
        sub_231215F6C(v62, v63);
        v65 = v64;
        OUTLINED_FUNCTION_5_26();
        if (v48)
        {
          goto LABEL_46;
        }

        v66 = &v85;
        if (sub_23136A700())
        {
          v66 = v85;
          v67 = OUTLINED_FUNCTION_50_2();
          sub_231215F6C(v67, v68);
          if ((v65 & 1) != (v69 & 1))
          {
            goto LABEL_50;
          }
        }

        v26 = v85;
        if (v65)
        {
          OUTLINED_FUNCTION_2_26();
        }

        else
        {
          OUTLINED_FUNCTION_0_36();
          if (v48)
          {
            goto LABEL_49;
          }

          v26[2] = v70;
        }

        v29 = v30;
        v28 = v72;
        v23 = v73;
        if (!v27)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      while (1)
      {
        v30 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v30 >= v28)
        {

          sub_231368340();
        }

        v27 = *(v23 + 8 * v30);
        ++v29;
        if (v27)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    result = sub_23136A970();
    __break(1u);
  }

  else
  {
    sub_231369100();
    v15 = sub_2313698A0();
    v16 = sub_23136A3A0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2311CB000, v15, v16, "device not participating in any experiments or rollouts, not logging to core analytics", v17, 2u);
      MEMORY[0x23192B930](v17, -1, -1);
    }

    return (*(v11 + 8))(v14, v9);
  }

  return result;
}

uint64_t DefaultTrialCoreAnalyticsLogger.init(coreAnalyticsClient:)(void *a1)
{
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v2);
  v4 = OUTLINED_FUNCTION_1_40(v3, v8);
  v5(v4);
  v6 = OUTLINED_FUNCTION_7_22();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

uint64_t DefaultTrialCoreAnalyticsLogger.__deallocating_deinit()
{
  _s15SiriSuggestions31DefaultTrialCoreAnalyticsLoggerCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_231302D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[3] = a3;
  v10[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  sub_2311CF324(v10, &v9);
  v7 = sub_231368330();
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  return v7;
}

unint64_t sub_231302E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD44950;
  if (!qword_27DD44950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44950);
  }

  return result;
}

unint64_t sub_231302E6C()
{
  result = qword_27DD44958;
  if (!qword_27DD44958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD44960, &qword_231376EA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44958);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TrialUseCase(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for DefaultTrialCoreAnalyticsLogger(uint64_t a1)
{
  result = qword_280F7DE58;
  if (!qword_280F7DE58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23130306C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD44968;
  if (!qword_27DD44968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44968);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_22()
{

  return sub_231302D78(v3, v0, v1, v2);
}

void sub_2313030F4(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a1 + 16);
  v5 = a1 + 56;
  v30 = MEMORY[0x277D84F90];
  v20 = a1 + 56;
  v21 = v4;
  while (1)
  {
    v6 = ~v3;
    v7 = v5 + 32 * v3;
    v8 = v4 - v3;
    if (!v8)
    {
      break;
    }

    while (1)
    {
      v9 = *(v7 - 24);
      if ((v9 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

      if (v9 >= *(*a2 + 16))
      {
        goto LABEL_20;
      }

      v10 = *(*a2 + 8 * v9 + 32);
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_21;
      }

      if (v10 >= *(*v7 + 16))
      {
        goto LABEL_22;
      }

      v11 = *(v7 - 16);
      v12 = *(v7 - 8);
      sub_231247A14(*v7 + 32 * v10 + 32, &v25, &qword_27DD443C0, &unk_23136E000);
      if (v26)
      {
        sub_2312250F8(&v25, &v22);
        *&v27 = v11;
        *(&v27 + 1) = v12;
        sub_2312250F8(&v22, &v28);
        sub_231369EE0();
      }

      else
      {
        sub_231369EE0();
        sub_231369EE0();
        sub_231228E9C(&v25, &qword_27DD443C0, &unk_23136E000);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
      }

      if (*(&v27 + 1))
      {
        break;
      }

      sub_231228E9C(&v27, &qword_27DD44988, &unk_231377078);
      --v6;
      v7 += 32;
      if (!--v8)
      {
        return;
      }
    }

    v22 = v27;
    v23 = v28;
    v24 = v29;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23126F1D8();
      v30 = v18;
    }

    v4 = v21;
    v13 = *(v30 + 16);
    if (v13 >= *(v30 + 24) >> 1)
    {
      sub_23126F1D8();
      v30 = v19;
    }

    v3 = -v6;
    v14 = v30;
    *(v30 + 16) = v13 + 1;
    v15 = (v14 + 48 * v13);
    v16 = v22;
    v17 = v24;
    v15[3] = v23;
    v15[4] = v17;
    v15[2] = v16;
    v5 = v20;
  }
}

uint64_t ResolutionService.resolveParameters(_:interaction:environment:)()
{
  OUTLINED_FUNCTION_8();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v5 = sub_2313698C0();
  v1[7] = v5;
  v1[8] = *(v5 - 8);
  v1[9] = swift_task_alloc();
  v6 = sub_231369840();
  v1[10] = v6;
  v1[11] = *(v6 - 8);
  v1[12] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23130343C(uint64_t a1)
{
  v2 = sub_231369190();
  sub_231369140();

  sub_231367590();
  v3 = sub_231369190();
  OUTLINED_FUNCTION_28();
  sub_2313691A0();

  sub_231369160();
  v4 = sub_2313698A0();
  v5 = sub_23136A3A0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2311CB000, v4, v5, "Resolving parameters...", v6, 2u);
    OUTLINED_FUNCTION_29();
  }

  v7 = *(v1 + 48);
  v8 = *(v1 + 24);
  v16 = *(v1 + 32);

  v9 = OUTLINED_FUNCTION_28_0();
  v10(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436C0, &qword_23136D378);
  v11 = swift_task_alloc();
  *(v1 + 104) = v11;
  *(v11 + 16) = v8;
  *(v11 + 24) = v7;
  *(v11 + 32) = v16;
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v1 + 112) = v12;
  *v12 = v13;
  v12[1] = sub_23130362C;
  OUTLINED_FUNCTION_24_20();

  return MEMORY[0x282200600](v14);
}

uint64_t sub_23130362C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_23130372C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  sub_231367590();
  v4 = sub_231369190();
  sub_231369180();

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_40();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_231303808(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2311E6768(v2, v3, v4, v5);
    v2 = v6;
  }

  v7 = *(v2 + 16);
  v9[0] = v2 + 32;
  v9[1] = v7;
  result = sub_231308024(v9);
  *a1 = v2;
  return result;
}

uint64_t sub_2313038A4(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, char *, uint64_t, uint64_t, uint64_t))
{
  v7 = a2[3];
  v8 = a2[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  v14 = a3(a1, v12, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v14;
}

uint64_t ResolutionService.description.getter()
{
  v0 = sub_2313698C0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231369160();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44660, &qword_231376F90);
  v4 = sub_231369860();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_231303AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[29] = a5;
  v6[30] = a6;
  v6[27] = a3;
  v6[28] = a4;
  v6[25] = a1;
  v6[26] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD439C0, &qword_23136ED90);
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44970, &qword_231377018);
  v6[33] = v7;
  v6[34] = *(v7 - 8);
  v6[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231303C04, 0, 0);
}

uint64_t sub_231303C04()
{
  v1 = *(v0 + 216);
  v2 = *(v1 + 16);
  if (v2)
  {
    v22 = **(v0 + 208);
    v3 = v1 + 32;
    v4 = sub_23136A2C0();
    v21 = v4;
    do
    {
      v5 = *(v0 + 248);
      v6 = *(v0 + 256);
      v8 = *(v0 + 232);
      v7 = *(v0 + 240);
      v9 = *(v0 + 224);
      __swift_storeEnumTagSinglePayload(v6, 1, 1, v4);
      sub_2311CF324(v3, v0 + 16);
      sub_2311CF324(v8, v0 + 56);
      sub_2311CF324(v7, v0 + 96);
      v10 = swift_allocObject();
      v10[2] = 0;
      v10[3] = 0;
      sub_2311D38A8((v0 + 16), (v10 + 4));
      v10[9] = v9;
      sub_2311D38A8((v0 + 56), (v10 + 10));
      sub_2311D38A8((v0 + 96), (v10 + 15));
      sub_231247A14(v6, v5, &qword_27DD439C0, &qword_23136ED90);
      LODWORD(v5) = __swift_getEnumTagSinglePayload(v5, 1, v4);

      v11 = *(v0 + 248);
      if (v5 == 1)
      {
        sub_231228E9C(*(v0 + 248), &qword_27DD439C0, &qword_23136ED90);
      }

      else
      {
        sub_23136A2B0();
        (*(*(v4 - 8) + 8))(v11, v4);
      }

      if (v10[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v12 = sub_23136A260();
        v14 = v13;
        swift_unknownObjectRelease();
      }

      else
      {
        v12 = 0;
        v14 = 0;
      }

      v15 = swift_allocObject();
      *(v15 + 16) = &unk_231377030;
      *(v15 + 24) = v10;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436C0, &qword_23136D378);
      v16 = v14 | v12;
      if (v14 | v12)
      {
        v16 = v0 + 136;
        *(v0 + 136) = 0;
        *(v0 + 144) = 0;
        *(v0 + 152) = v12;
        *(v0 + 160) = v14;
      }

      v17 = *(v0 + 256);
      *(v0 + 168) = 1;
      *(v0 + 176) = v16;
      *(v0 + 184) = v22;
      swift_task_create();

      sub_231228E9C(v17, &qword_27DD439C0, &qword_23136ED90);
      v3 += 40;
      --v2;
      v4 = v21;
    }

    while (v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436C0, &qword_23136D378);
  sub_23136A290();
  *(v0 + 288) = MEMORY[0x277D84F90];
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v0 + 296) = v18;
  *v18 = v19;
  OUTLINED_FUNCTION_5_27(v18);

  return MEMORY[0x2822002E8](v0 + 192, 0, 0);
}

uint64_t sub_231303F74()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231304058()
{
  OUTLINED_FUNCTION_16();
  v4 = v0[24];
  v5 = v0[36];
  if (v4)
  {
    v6 = *(v4 + 16);
    v7 = *(v5 + 16);
    if (__OFADD__(v7, v6))
    {
      __break(1u);
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = v0[36];
      if (!isUniquelyReferenced_nonNull_native || v7 + v6 > *(v8 + 24) >> 1)
      {
        sub_23126DF64(isUniquelyReferenced_nonNull_native);
        v8 = isUniquelyReferenced_nonNull_native;
      }

      if (*(v4 + 16))
      {
        if ((*(v8 + 24) >> 1) - *(v8 + 16) >= v6)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432E8, &qword_23136D380);
          swift_arrayInitWithCopy();

          if (!v6)
          {
            goto LABEL_15;
          }

          v9 = *(v8 + 16);
          v10 = __OFADD__(v9, v6);
          v11 = v9 + v6;
          if (!v10)
          {
            *(v8 + 16) = v11;
            goto LABEL_15;
          }

LABEL_21:
          __break(1u);
          return MEMORY[0x2822002E8](isUniquelyReferenced_nonNull_native, v2, v3);
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (!v6)
      {
LABEL_15:
        v0[36] = v8;
        swift_task_alloc();
        OUTLINED_FUNCTION_14_0();
        v0[37] = v15;
        *v15 = v16;
        OUTLINED_FUNCTION_5_27(v15);
        isUniquelyReferenced_nonNull_native = (v0 + 24);
        v2 = 0;
        v3 = 0;

        return MEMORY[0x2822002E8](isUniquelyReferenced_nonNull_native, v2, v3);
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  v12 = v0[25];
  (*(v0[34] + 8))(v0[35], v0[33]);
  *v12 = v5;

  OUTLINED_FUNCTION_56_0();

  return v13();
}

uint64_t sub_23130423C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_28_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_26(v1);

  return sub_231303AEC(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_2313042D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[34] = a6;
  v7[35] = a7;
  v7[32] = a4;
  v7[33] = a5;
  v7[31] = a1;
  v8 = sub_2313698C0();
  v7[36] = v8;
  v7[37] = *(v8 - 8);
  v7[38] = swift_task_alloc();
  v7[39] = swift_task_alloc();
  v9 = sub_231368180();
  v7[40] = v9;
  v7[41] = *(v9 - 8);
  v7[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432D8, &unk_23136BED0);
  v7[43] = swift_task_alloc();
  sub_2313694E0();
  v7[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810);
  v7[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23130449C, 0, 0);
}

uint64_t sub_23130449C()
{
  OUTLINED_FUNCTION_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44978, &qword_231377048);
  v1 = swift_task_alloc();
  *(v0 + 368) = v1;
  v2 = *(v0 + 272);
  *(v1 + 16) = *(v0 + 256);
  *(v1 + 32) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44980, &unk_231377060);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v0 + 376) = v3;
  *v3 = v4;
  v3[1] = sub_2313045A4;
  OUTLINED_FUNCTION_24_20();

  return MEMORY[0x282200600](v5);
}

uint64_t sub_2313045A4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2313046A4()
{
  v126 = v0;
  v125[0] = sub_23125967C(*(v0 + 240));
  v2 = 0;
  sub_231303808(v125);

  v3 = v125[0];
  v4 = *(v125[0] + 16);
  if (v4)
  {
    v124 = MEMORY[0x277D84F90];
    sub_2311F604C(0, v4, 0);
    i = MEMORY[0x277D84F70];
    v6 = 0;
    v115 = v124;
    v7 = *(v3 + 16);
    v109 = v3 + 32;
    if (v7 >= v4)
    {
      v7 = v4;
    }

    v113 = v7;
    v1 = &unk_23136E000;
    v107 = v3;
    v111 = v4;
    while (1)
    {
      v8 = v113;
      if (v6 == v113)
      {
        break;
      }

      v8 = *(v3 + 16);
      if (v6 >= v8)
      {
        goto LABEL_78;
      }

      v9 = (v109 + 24 * v6);
      v118 = v9[1];
      v120 = *v9;
      v10 = v9[2];
      v11 = *(v10 + 16);
      if (v11)
      {
        v125[0] = MEMORY[0x277D84F90];
        sub_231369EE0();
        sub_231369EE0();
        sub_2311F6098(0, v11, 0);
        i = MEMORY[0x277D84F70];
        v12 = v125[0];
        v13 = v10 + 32;
        do
        {
          sub_2311D1D6C(v13, v0 + 208);
          v14 = OUTLINED_FUNCTION_53_3();
          __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
          swift_dynamicCast();
          v125[0] = v12;
          v17 = *(v12 + 16);
          v16 = *(v12 + 24);
          if (v17 >= v16 >> 1)
          {
            v20 = OUTLINED_FUNCTION_37(v16);
            sub_2311F6098(v20, v17 + 1, 1);
            i = MEMORY[0x277D84F70];
            v12 = v125[0];
          }

          *(v12 + 16) = v17 + 1;
          v18 = v12 + 32 * v17;
          v19 = *(v0 + 192);
          *(v18 + 32) = *(v0 + 176);
          *(v18 + 48) = v19;
          v13 += 32;
          --v11;
        }

        while (v11);
        v3 = v107;
      }

      else
      {
        sub_231369EE0();
        sub_231369EE0();
        v12 = MEMORY[0x277D84F90];
      }

      if (!*(v12 + 16))
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43650, &unk_23136CB90);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_23136B670;
        *(v12 + 32) = 0u;
        *(v12 + 48) = 0u;
      }

      v21 = v115;
      v124 = v115;
      v23 = *(v115 + 16);
      v22 = *(v115 + 24);
      v2 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v25 = OUTLINED_FUNCTION_37(v22);
        sub_2311F604C(v25, v23 + 1, 1);
        i = MEMORY[0x277D84F70];
        v21 = v124;
      }

      *(v21 + 16) = v2;
      v115 = v21;
      v24 = (v21 + 32 * v23);
      v24[4] = v6;
      v24[5] = v120;
      v24[6] = v118;
      v24[7] = v12;
      ++v6;
      v4 = v111;
      if (v6 == v111)
      {

        v26 = v115;
        goto LABEL_21;
      }
    }

LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v26 = MEMORY[0x277D84F90];
LABEL_21:
  v105 = sub_2313076D4(0, *(v26 + 16));
  v124 = v105;
  sub_2313341CC(v26);
  if (!v28)
  {
    v88 = *(v0 + 256);

    __swift_project_boxed_opaque_existential_1(v88, v88[3]);
    sub_2313682A0();
    sub_231369EC0();
    __swift_project_boxed_opaque_existential_1(v88, v88[3]);
    sub_231368300();
    __swift_project_boxed_opaque_existential_1(v88, v88[3]);
    sub_2313682C0();
    __swift_project_boxed_opaque_existential_1(v88, v88[3]);
    sub_231368310();
    __swift_project_boxed_opaque_existential_1(v88, v88[3]);
    sub_2313682B0();
    v1 = sub_231368C60();
    swift_allocObject();
    i = sub_231368C50();
    sub_23126DF64(0);
    v90 = v89;
    v2 = *(v89 + 16);
    v8 = *(v89 + 24);
    v4 = v2 + 1;
    if (v2 < v8 >> 1)
    {
LABEL_68:
      *(v0 + 40) = v1;
      *(v0 + 48) = MEMORY[0x277D61158];
      *(v0 + 16) = i;
      *(v90 + 16) = v4;
      v91 = v90;
      sub_2311D38A8((v0 + 16), v90 + 40 * v2 + 32);
      goto LABEL_70;
    }

LABEL_81:
    v95 = OUTLINED_FUNCTION_37(v8);
    sub_23126DF64(v95);
    v90 = v96;
    goto LABEL_68;
  }

  v29 = 0;
  v101 = *(v0 + 256);
  v98 = *(v27 + 16);
  v99 = (*(v0 + 328) + 8);
  v114 = (*(v0 + 296) + 8);
  v100 = v26 + 56;
  v97 = MEMORY[0x277D84F90];
  v116 = v26;
  while (1)
  {
    v30 = sub_231334234(v105);
    if ((v31 & 1) == 0 && v30 == v98)
    {
      break;
    }

    sub_2313030F4(v26, &v124);
    v121 = v29;
    v104 = sub_23127E014(v32);
    v33 = v105;
    v8 = *(v105 + 16);
    v2 = -v8;
    v34 = v100;
    for (i = 4; ; ++i)
    {
      if (v2 + i == 4)
      {
        v105 = v33;
        goto LABEL_44;
      }

      v35 = (i - 4);
      if (i - 4 >= v8)
      {
        goto LABEL_74;
      }

      if (v35 >= *(v26 + 16))
      {
        goto LABEL_75;
      }

      v4 = *(v33 + 8 * i);
      v36 = *(*v34 + 16) - 1;
      v1 = (v8 - 1);
      v37 = v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (v4 != v36 || v35 == v1)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v33 = v37;
      }

      else
      {
        sub_23128D8A8();
      }

      v8 = *(v33 + 16);
      if (v35 >= v8)
      {
        goto LABEL_76;
      }

      *(v33 + 8 * i) = 0;
      v124 = v33;
      v34 += 32;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_23128D8A8();
      v37 = v84;
    }

    v8 = *(v37 + 16);
    if (v35 >= v8)
    {
      goto LABEL_79;
    }

    v40 = *(v37 + 8 * i);
    v41 = __OFADD__(v40, 1);
    v8 = v40 + 1;
    if (v41)
    {
      goto LABEL_80;
    }

    *(v37 + 8 * i) = v8;
    v105 = v37;
    v124 = v37;
LABEL_44:
    v42 = *(v0 + 336);
    v4 = *(v0 + 312);
    v43 = *(v0 + 320);
    v44 = *(v0 + 256);
    v45 = OUTLINED_FUNCTION_53_3();
    __swift_project_boxed_opaque_existential_1(v45, v46);
    sub_2313682A0();
    sub_2313676F0();

    v47 = sub_231368150();
    (*v99)(v42, v43);
    v48 = sub_2313078A4(v47);
    v49 = v121;

    sub_231369160();
    sub_2311CF324(v44, v0 + 56);

    v50 = sub_2313698A0();
    v1 = sub_23136A3A0();

    v51 = os_log_type_enabled(v50, v1);
    v52 = *(v0 + 312);
    v53 = *(v0 + 288);
    if (v51)
    {
      v54 = OUTLINED_FUNCTION_45();
      v4 = OUTLINED_FUNCTION_44();
      v125[0] = v4;
      *v54 = 136315394;
      v122 = v52;
      __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
      OUTLINED_FUNCTION_28();
      v55 = sub_231368320();
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
      v56 = OUTLINED_FUNCTION_28();
      sub_2311CFD58(v56, v57, v58);
      OUTLINED_FUNCTION_38();

      *(v54 + 4) = v55;
      *(v54 + 12) = 2080;
      sub_231368540();
      v59 = sub_231369E90();
      v61 = sub_2311CFD58(v59, v60, v125);

      *(v54 + 14) = v61;
      _os_log_impl(&dword_2311CB000, v50, v1, "Required params for: %s = %s", v54, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      v112 = *v114;
      (*v114)(v122, v53);
    }

    else
    {

      v112 = *v114;
      (*v114)(v52, v53);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    }

    sub_231369EE0();
    v2 = v49;
    i = sub_231307A08(v48, v104);
    v103 = v49;

    v62 = 0;
    v102 = *(i + 16);
    v64 = i + 64;
    v63 = *(i + 64);
    v117 = i;
    v65 = -1 << *(i + 32);
    if (-v65 < 64)
    {
      v66 = ~(-1 << -v65);
    }

    else
    {
      v66 = -1;
    }

    v67 = v66 & v63;
    v68 = (63 - v65) >> 6;
    if ((v66 & v63) != 0)
    {
      do
      {
LABEL_55:
        v69 = *(v0 + 256);
        v70 = (*(v117 + 48) + 16 * (__clz(__rbit64(v67)) | (v62 << 6)));
        v2 = *v70;
        v1 = v70[1];
        sub_231369EE0();

        sub_231369160();
        sub_2311CF324(v69, v0 + 96);
        sub_231369EE0();

        i = sub_2313698A0();
        LOBYTE(v69) = sub_23136A390();

        v119 = v69;
        v71 = os_log_type_enabled(i, v69);
        v4 = *(v0 + 304);
        v123 = *(v0 + 288);
        if (v71)
        {
          v110 = *(v0 + 304);
          v4 = OUTLINED_FUNCTION_45();
          v108 = OUTLINED_FUNCTION_44();
          v125[0] = v108;
          *v4 = 136315394;
          sub_231369EE0();
          log = i;
          v72 = sub_2311CFD58(v2, v1, v125);

          *(v4 + 4) = v72;
          *(v4 + 12) = 2080;
          __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
          OUTLINED_FUNCTION_28();
          v73 = sub_231368320();
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
          v74 = OUTLINED_FUNCTION_28();
          sub_2311CFD58(v74, v75, v76);
          OUTLINED_FUNCTION_38();

          *(v4 + 14) = v73;
          v2 = log;
          _os_log_impl(&dword_2311CB000, log, v119, "Mandatory parameter: %s was not resolved for candidate %s. Skipping it.", v4, 0x16u);
          i = v108;
          swift_arrayDestroy();
          OUTLINED_FUNCTION_29();
          OUTLINED_FUNCTION_29();

          v112(v110, v123);
        }

        else
        {

          v112(v4, v123);
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
        }

        v67 &= v67 - 1;
      }

      while (v67);
    }

    while (1)
    {
      v8 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      if (v8 >= v68)
      {
        break;
      }

      v67 = *(v64 + 8 * v8);
      ++v62;
      if (v67)
      {
        v62 = v8;
        goto LABEL_55;
      }
    }

    if (v102)
    {

      v26 = v116;
      v29 = v103;
    }

    else
    {
      v77 = *(v0 + 256);
      OUTLINED_FUNCTION_21_21();
      OUTLINED_FUNCTION_38();
      sub_2313682A0();
      sub_23134B810(v104);

      __swift_project_boxed_opaque_existential_1(v77, *(v101 + 24));
      OUTLINED_FUNCTION_38();
      sub_231368300();
      v78 = OUTLINED_FUNCTION_80();
      __swift_project_boxed_opaque_existential_1(v78, v79);
      sub_2313682C0();
      OUTLINED_FUNCTION_21_21();
      OUTLINED_FUNCTION_38();
      sub_231368310();
      OUTLINED_FUNCTION_21_21();
      OUTLINED_FUNCTION_38();
      sub_2313682B0();
      v1 = sub_231368C60();
      swift_allocObject();
      v80 = sub_231368C50();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23126DF64(0);
        v97 = v85;
      }

      v81 = v97;
      v83 = *(v97 + 16);
      v82 = *(v97 + 24);
      v4 = v83 + 1;
      v26 = v116;
      v29 = v103;
      if (v83 >= v82 >> 1)
      {
        v86 = OUTLINED_FUNCTION_37(v82);
        sub_23126DF64(v86);
        v81 = v87;
      }

      *(v0 + 160) = v1;
      *(v0 + 168) = MEMORY[0x277D61158];
      *(v0 + 136) = v80;
      v97 = v81;
      *(v81 + 16) = v4;
      sub_2311D38A8((v0 + 136), v81 + 40 * v83 + 32);
    }
  }

  v91 = v97;
LABEL_70:
  v92 = *(v0 + 248);

  *v92 = v91;

  OUTLINED_FUNCTION_56_0();

  return v93();
}

uint64_t sub_2313053F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[71] = a6;
  v6[70] = a5;
  v6[69] = a4;
  v6[68] = a3;
  v6[67] = a2;
  v6[66] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD439C0, &qword_23136ED90);
  v6[72] = swift_task_alloc();
  v6[73] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44990, &qword_231377088);
  v6[74] = v7;
  v6[75] = *(v7 - 8);
  v6[76] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23130551C, 0, 0);
}

uint64_t sub_23130551C()
{
  v1 = (v0 + 520);
  v49 = *(v0 + 552);
  v2 = *(v0 + 544);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B88, &qword_23136F500);
  *(v0 + 512) = sub_231369EC0();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  OUTLINED_FUNCTION_28_0();
  v3 = sub_2313682F0();
  v6 = v3;
  v7 = 0;
  v8 = v3 + 64;
  v9 = -1;
  v10 = -1 << *(v3 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v3 + 64);
  v12 = (63 - v10) >> 6;
  v48 = v3;
  v46 = v12;
  v47 = v3 + 64;
  if (v11)
  {
    while (1)
    {
      v13 = v7;
LABEL_9:
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v15 = v14 | (v13 << 6);
      v16 = (*(v6 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      sub_2311D1D6C(*(v6 + 56) + 32 * v15, v0 + 336);
      *(v0 + 128) = v17;
      *(v0 + 136) = v18;
      sub_2312250F8((v0 + 336), (v0 + 144));
      sub_231369EE0();
LABEL_10:
      v19 = *(v0 + 144);
      *(v0 + 80) = *(v0 + 128);
      *(v0 + 96) = v19;
      *(v0 + 112) = *(v0 + 160);
      v53 = *(v0 + 88);
      if (!v53)
      {
        break;
      }

      v20 = *(v0 + 80);
      sub_2312250F8((v0 + 96), (v0 + 368));
      sub_2311D1D6C(v0 + 368, v0 + 400);
      sub_231368540();
      if (swift_dynamicCast())
      {
        v50 = v11;
        v21 = *(v49 + 16);
        v52 = *v1;
        v22 = sub_231368520();
        if (*(v21 + 16) && (v24 = sub_231215F6C(v22, v23), (v25 & 1) != 0))
        {
          v26 = *(*(v21 + 56) + 8 * v24);
          sub_231369EE0();
        }

        else
        {
          v26 = MEMORY[0x277D84F90];
        }

        v11 = v50;

        v28 = *(v26 + 16);
        if (v28)
        {
          v51 = **(v0 + 536);
          v29 = v26 + 32;
          v30 = sub_23136A2C0();
          do
          {
            v57 = v28;
            v54 = *(v0 + 584);
            v55 = *(v0 + 576);
            v31 = *(v0 + 568);
            v32 = *(v0 + 560);
            v33 = *(v0 + 552);
            v34 = *(v0 + 544);
            __swift_storeEnumTagSinglePayload(v54, 1, 1, v30);
            v56 = v29;
            sub_2311CF324(v29, v0 + 176);
            sub_2311CF324(v34, v0 + 216);
            sub_2311CF324(v32, v0 + 256);
            sub_2311CF324(v31, v0 + 296);
            v35 = swift_allocObject();
            v35[2] = 0;
            v35[3] = 0;
            v35[4] = v33;
            v35[5] = v20;
            v35[6] = v53;
            sub_2311D38A8((v0 + 176), (v35 + 7));
            v35[12] = v52;
            sub_2311D38A8((v0 + 216), (v35 + 13));
            sub_2311D38A8((v0 + 256), (v35 + 18));
            sub_2311D38A8((v0 + 296), (v35 + 23));
            sub_231247A14(v54, v55, &qword_27DD439C0, &qword_23136ED90);
            LODWORD(v32) = __swift_getEnumTagSinglePayload(v55, 1, v30);

            sub_231369EE0();

            v36 = *(v0 + 576);
            if (v32 == 1)
            {
              sub_231228E9C(*(v0 + 576), &qword_27DD439C0, &qword_23136ED90);
            }

            else
            {
              sub_23136A2B0();
              (*(*(v30 - 8) + 8))(v36, v30);
            }

            if (v35[2])
            {
              swift_getObjectType();
              swift_unknownObjectRetain();
              v37 = sub_23136A260();
              v39 = v38;
              swift_unknownObjectRelease();
            }

            else
            {
              v37 = 0;
              v39 = 0;
            }

            v40 = swift_allocObject();
            *(v40 + 16) = &unk_2313770A0;
            *(v40 + 24) = v35;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44978, &qword_231377048);
            v41 = v39 | v37;
            if (v39 | v37)
            {
              v41 = v0 + 432;
              *(v0 + 432) = 0;
              *(v0 + 440) = 0;
              *(v0 + 448) = v37;
              *(v0 + 456) = v39;
            }

            v42 = *(v0 + 584);
            *(v0 + 488) = 1;
            *(v0 + 496) = v41;
            *(v0 + 504) = v51;
            swift_task_create();
            OUTLINED_FUNCTION_38();

            sub_231228E9C(v42, &qword_27DD439C0, &qword_23136ED90);
            v29 = v56 + 40;
            v28 = v57 - 1;
          }

          while (v57 != 1);

          v6 = v48;
          v1 = (v0 + 520);
          v12 = v46;
          v8 = v47;
          v11 = v50;
        }

        else
        {
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43490, &qword_2313703F0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_23136B670;
        sub_2311D1D6C(v0 + 368, inited + 32);
        sub_2313075DC((v0 + 512), v20, v53);

        swift_setDeallocating();
        sub_231322B5C();
      }

      v3 = __swift_destroy_boxed_opaque_existential_1Tm((v0 + 368));
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44978, &qword_231377048);
    sub_23136A290();
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    *(v0 + 616) = v43;
    *v43 = v44;
    v3 = OUTLINED_FUNCTION_3_34(v43);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        v11 = 0;
        *(v0 + 144) = 0u;
        *(v0 + 160) = 0u;
        *(v0 + 128) = 0u;
        goto LABEL_10;
      }

      v11 = *(v8 + 8 * v13);
      ++v7;
      if (v11)
      {
        v7 = v13;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return MEMORY[0x2822002E8](v3, v4, v5);
}

uint64_t sub_231305B68()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231305C4C()
{
  OUTLINED_FUNCTION_26();
  if (v0[59])
  {
    sub_2313075DC(v0 + 64, v0[58], v0[59]);

    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v0[77] = v1;
    *v1 = v2;
    v3 = OUTLINED_FUNCTION_3_34(v1);

    return MEMORY[0x2822002E8](v3, v4, v5);
  }

  else
  {
    v6 = v0[66];
    (*(v0[75] + 8))(v0[76], v0[74]);
    *v6 = v0[64];

    OUTLINED_FUNCTION_56_0();

    return v7();
  }
}