uint64_t sub_1BC7F9C7C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1BC8D94F4();
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1BC7F9DA8((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1BC7F9DA8(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1BC7DD5E4(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1BC8F8AA4() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_1BC7DD5E4(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_1BC8F8AA4() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

void sub_1BC7F9F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v136 = v25;
  v27 = v26;
  OUTLINED_FUNCTION_72_0();
  v142 = sub_1BC8F7324();
  OUTLINED_FUNCTION_0();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_4_4();
  v141 = v31;
  OUTLINED_FUNCTION_19_6();
  v32 = sub_1BC8F71E4();
  OUTLINED_FUNCTION_0();
  v146 = v33;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_47();
  v144 = v38;
  v39 = OUTLINED_FUNCTION_19_6();
  v148 = type metadata accessor for HistoryItem(v39);
  v40 = MEMORY[0x1EEE9AC00](v148);
  v42 = (&v126 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_52_2();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_52_2();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_52_2();
  v46 = MEMORY[0x1EEE9AC00](v45);
  v48 = (&v126 - v47);
  v49 = MEMORY[0x1EEE9AC00](v46);
  v51 = (&v126 - v50);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_65();
  v147 = v52;
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_65();
  v143 = v54;
  v56 = *(v55 + 72);
  if (!v56)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return;
  }

  if (v27 - v20 == 0x8000000000000000 && v56 == -1)
  {
    goto LABEL_73;
  }

  v58 = v136 - v27;
  if (v136 - v27 == 0x8000000000000000 && v56 == -1)
  {
    goto LABEL_74;
  }

  a10 = v20;
  v150 = v24;
  v138 = v29 + 8;
  v139 = v29 + 32;
  v137 = v146 + 16;
  v140 = (v146 + 8);
  v60 = v58 / v56;
  v145 = v32;
  if ((v27 - v20) / v56 >= v58 / v56)
  {
    sub_1BC7DD604(v27, v58 / v56, v24);
    v90 = v27;
    v91 = v24 + v60 * v56;
    v92 = -v56;
    v93 = v91;
    v94 = v136;
    v95 = v132;
    v129 = v42;
    v96 = v131;
    v128 = v24;
    v147 = -v56;
LABEL_43:
    v135 = v90 + v92;
    v97 = v94;
    v98 = v93;
    v146 = v90;
    v136 = v93;
    while (1)
    {
      if (v91 <= v24)
      {
        a10 = v90;
        v149 = v98;
        goto LABEL_71;
      }

      if (v90 <= v20)
      {
        break;
      }

      v143 = v97;
      v127 = v98;
      v144 = v91;
      v99 = v91 + v92;
      v100 = v133;
      sub_1BC7FB138(v91 + v92, v133);
      sub_1BC7FB138(v135, v96);
      v101 = v100;
      v102 = v130;
      sub_1BC7FB138(v101, v130);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v103 = *v102;
        v24 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
        OUTLINED_FUNCTION_13();
        swift_beginAccess();
        OUTLINED_FUNCTION_25_5();
        v104(v134);
      }

      else
      {
        v105 = OUTLINED_FUNCTION_10_9();
        v106(v105, v102, v24);
        sub_1BC8F7304();
        v107 = OUTLINED_FUNCTION_11_7();
        v108(v107);
      }

      sub_1BC7FB138(v96, v42);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v109 = *v42;
        OUTLINED_FUNCTION_13();
        swift_beginAccess();
        OUTLINED_FUNCTION_25_5();
        v110 = v145;
        v111(v95);
      }

      else
      {
        v112 = OUTLINED_FUNCTION_10_9();
        v113(v112, v42, v24);
        sub_1BC8F7304();
        v114 = OUTLINED_FUNCTION_11_7();
        v115(v114);
        v110 = v145;
      }

      v116 = v143;
      v94 = v143 + v147;
      v117 = v134;
      v118 = sub_1BC8F7184();
      v119 = *v140;
      (*v140)(v95, v110);
      v119(v117, v110);
      v96 = v131;
      sub_1BC7FB19C(v131);
      sub_1BC7FB19C(v133);
      if (v118)
      {
        v121 = v116 < v146 || v94 >= v146;
        v24 = v128;
        if (v121)
        {
          v122 = v135;
          OUTLINED_FUNCTION_28_3();
          swift_arrayInitWithTakeFrontToBack();
          v90 = v122;
          v93 = v127;
          v95 = v132;
          v42 = v129;
          v92 = v147;
          v91 = v144;
        }

        else
        {
          v93 = v127;
          v123 = v135;
          v90 = v135;
          v95 = v132;
          v42 = v129;
          v92 = v147;
          v91 = v144;
          if (v116 != v146)
          {
            OUTLINED_FUNCTION_23_3();
            v125 = v124;
            swift_arrayInitWithTakeBackToFront();
            v91 = v144;
            v90 = v123;
            v93 = v125;
          }
        }

        goto LABEL_43;
      }

      v120 = v116 < v144 || v94 >= v144;
      v24 = v128;
      if (v120)
      {
        OUTLINED_FUNCTION_23_3();
        swift_arrayInitWithTakeFrontToBack();
        v97 = v94;
        v91 = v99;
        v98 = v99;
        v90 = v146;
        v92 = v147;
        v95 = v132;
        v42 = v129;
        v93 = v136;
      }

      else
      {
        v98 = v99;
        v97 = v94;
        v91 = v99;
        v90 = v146;
        v92 = v147;
        v95 = v132;
        v42 = v129;
        v93 = v136;
        if (v144 != v116)
        {
          OUTLINED_FUNCTION_23_3();
          swift_arrayInitWithTakeBackToFront();
          v93 = v136;
          v90 = v146;
          v97 = v94;
          v91 = v99;
          v98 = v99;
        }
      }
    }

    a10 = v90;
    v149 = v93;
  }

  else
  {
    sub_1BC7DD604(v20, (v27 - v20) / v56, v24);
    v61 = v27;
    v134 = v24 + (v27 - v20) / v56 * v56;
    v149 = v134;
    v62 = v136;
    v63 = v135;
    v133 = v48;
    while (v24 < v134 && v61 < v62)
    {
      v146 = v61;
      sub_1BC7FB138(v61, v143);
      v65 = v24;
      sub_1BC7FB138(v24, v147);
      v66 = OUTLINED_FUNCTION_20_5();
      sub_1BC7FB138(v66, v67);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v68 = *v51;
        v24 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
        OUTLINED_FUNCTION_13();
        swift_beginAccess();
        OUTLINED_FUNCTION_25_5();
        v69(v144);
      }

      else
      {
        v70 = OUTLINED_FUNCTION_10_9();
        v71(v70, v51, v24);
        sub_1BC8F7304();
        v72 = OUTLINED_FUNCTION_11_7();
        v73(v72);
      }

      v74 = v51;
      sub_1BC7FB138(v147, v48);
      v75 = v20;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v76 = *v48;
        OUTLINED_FUNCTION_13();
        swift_beginAccess();
        OUTLINED_FUNCTION_25_5();
        v77 = v145;
        v78(v63);
      }

      else
      {
        v79 = OUTLINED_FUNCTION_10_9();
        v80(v79, v48, v24);
        sub_1BC8F7304();
        v81 = OUTLINED_FUNCTION_11_7();
        v82(v81);
        v77 = v145;
      }

      v83 = v144;
      v84 = sub_1BC8F7184();
      v85 = *v140;
      (*v140)(v63, v77);
      v85(v83, v77);
      sub_1BC7FB19C(v147);
      sub_1BC7FB19C(v143);
      if (v84)
      {
        v86 = v146 + v56;
        v87 = v75;
        v88 = v75 < v146 || v75 >= v86;
        v24 = v65;
        v48 = v133;
        if (v88)
        {
          OUTLINED_FUNCTION_28_3();
          swift_arrayInitWithTakeFrontToBack();
          v61 = v86;
          v63 = v135;
          v51 = v74;
        }

        else
        {
          v63 = v135;
          v51 = v74;
          if (v87 != v146)
          {
            OUTLINED_FUNCTION_28_3();
            swift_arrayInitWithTakeBackToFront();
          }

          v61 = v86;
        }
      }

      else
      {
        v24 = v65 + v56;
        v87 = v75;
        v89 = v75 < v65 || v75 >= v24;
        v48 = v133;
        if (v89)
        {
          OUTLINED_FUNCTION_62_0();
          OUTLINED_FUNCTION_28_3();
          swift_arrayInitWithTakeFrontToBack();
          v63 = v135;
          v51 = v74;
        }

        else
        {
          v63 = v135;
          v51 = v74;
          if (v87 != v65)
          {
            OUTLINED_FUNCTION_62_0();
            OUTLINED_FUNCTION_28_3();
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v150 = v65 + v56;
        v61 = v146;
      }

      v20 = v87 + v56;
      a10 = v20;
      v62 = v136;
    }
  }

LABEL_71:
  sub_1BC7FA8EC(&a10, &v150, &v149);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_1BC7FA8EC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for HistoryItem(0);
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

void sub_1BC7FA9FC()
{
  v3 = OUTLINED_FUNCTION_34_4();
  *v0 = v1;
  if (!v3 || v2 > *(v1 + 24) >> 1)
  {
    OUTLINED_FUNCTION_27_3();
    sub_1BC7AA188();
    *v0 = v4;
  }
}

void sub_1BC7FAA54()
{
  v3 = OUTLINED_FUNCTION_34_4();
  *v0 = v1;
  if (!v3 || v2 > *(v1 + 24) >> 1)
  {
    OUTLINED_FUNCTION_27_3();
    sub_1BC7F742C();
    *v0 = v4;
  }
}

uint64_t sub_1BC7FAADC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_1BC7FAB54(uint64_t a1, void (*a2)(char *), uint64_t a3, int a4, void *a5)
{
  v65 = a5;
  v53 = a2;
  v8 = sub_1BC8F7264();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for HistoryItem(0);
  v60 = *(v57 - 8);
  v11 = MEMORY[0x1EEE9AC00](v57);
  v63 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v50 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5698, &qword_1BC900B60);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v61 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v50 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF56A0, &qword_1BC900B68);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v58 = &v50 - v20;
  v21 = *(a1 + 16);
  v59 = (v9 + 32);
  v51 = (v9 + 8);
  v52 = v9;
  v54 = a1;

  v55 = a3;

  v22 = 0;
  while (1)
  {
    v62 = a4;
    if (v22 == v21)
    {
      v23 = 1;
      v22 = v21;
      v24 = v58;
    }

    else
    {
      if ((v22 & 0x8000000000000000) != 0)
      {
        goto LABEL_22;
      }

      v24 = v58;
      if (v22 >= *(v54 + 16))
      {
        goto LABEL_23;
      }

      sub_1BC7FB138(v54 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v22, v18);
      v23 = 0;
      ++v22;
    }

    v25 = 1;
    v26 = v57;
    __swift_storeEnumTagSinglePayload(v18, v23, 1, v57);
    v27 = v61;
    sub_1BC7FBD30(v18, v61);
    if (__swift_getEnumTagSinglePayload(v27, 1, v26) != 1)
    {
      v28 = v56;
      sub_1BC7FBC68(v61, v56);
      v53(v28);
      sub_1BC7FB19C(v28);
      v25 = 0;
    }

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF56A8, &unk_1BC900B70);
    __swift_storeEnumTagSinglePayload(v24, v25, 1, v29);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF56A8, &unk_1BC900B70);
    if (__swift_getEnumTagSinglePayload(v24, 1, v30) == 1)
    {

      return swift_bridgeObjectRelease_n();
    }

    v31 = *(v30 + 48);
    v32 = *v59;
    v33 = v8;
    (*v59)(v64, v24, v8);
    sub_1BC7FBC68(v24 + v31, v63);
    v34 = *v65;
    v36 = sub_1BC83C928();
    v37 = v34[2];
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      break;
    }

    v40 = v35;
    if (v34[3] >= v39)
    {
      if ((v62 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5688, &unk_1BC900B48);
        sub_1BC8F8744();
      }
    }

    else
    {
      sub_1BC7F79FC(v39, v62 & 1);
      v41 = sub_1BC83C928();
      if ((v40 & 1) != (v42 & 1))
      {
        goto LABEL_25;
      }

      v36 = v41;
    }

    v43 = *v65;
    if (v40)
    {
      v44 = v63;
      v45 = v56;
      sub_1BC7FB138(v63, v56);
      sub_1BC7FB19C(v44);
      v8 = v33;
      (*v51)(v64, v33);
      sub_1BC7FBCCC(v45, v43[7] + *(v60 + 72) * v36);
      a4 = 1;
    }

    else
    {
      v43[(v36 >> 6) + 8] |= 1 << v36;
      v8 = v33;
      v32((v43[6] + *(v52 + 72) * v36), v64, v33);
      sub_1BC7FBC68(v63, v43[7] + *(v60 + 72) * v36);
      v46 = v43[2];
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        goto LABEL_24;
      }

      v43[2] = v48;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1BC8F8B44();
  __break(1u);
  return result;
}

unint64_t sub_1BC7FB0D0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_71_1(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1BC7FB138(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoryItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC7FB19C(uint64_t a1)
{
  v2 = type metadata accessor for HistoryItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BC7FB1F8()
{
  result = qword_1EBCF55C8;
  if (!qword_1EBCF55C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF55C8);
  }

  return result;
}

unint64_t sub_1BC7FB24C()
{
  result = qword_1EBCF55D8;
  if (!qword_1EBCF55D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF55D8);
  }

  return result;
}

unint64_t sub_1BC7FB2A0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_71_1(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF55E0, &qword_1BC900680);
    sub_1BC7FBE94(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_1BC7FB338(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1BC8F8C64();
  v16 = a2;
  v3 = a2 + 56;
  OUTLINED_FUNCTION_45_0();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  if (v6)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      MEMORY[0x1BFB2A020](v9);
      return;
    }

    v6 = *(v3 + 8 * v11);
    ++v10;
    if (v6)
    {
      v10 = v11;
      do
      {
LABEL_6:
        v12 = *(*(v16 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v6)))));
        sub_1BC8F8C04();
        MEMORY[0x1BFB2A020](*(v12 + 16));
        v13 = *(v12 + 16);
        if (v13)
        {

          v14 = v12 + 40;
          do
          {

            sub_1BC8F7CD4();

            v14 += 16;
            --v13;
          }

          while (v13);
        }

        else
        {
        }

        v6 &= v6 - 1;
        v15 = sub_1BC8F8C64();

        v9 ^= v15;
      }

      while (v6);
    }
  }

  __break(1u);
}

void sub_1BC7FB4B0(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1BC8F8C64();
  OUTLINED_FUNCTION_45_0();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v16)
  {
    v10 = i;
LABEL_7:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(a2 + 48) + ((v10 << 11) | (32 * v11)));
    v13 = v12[1];
    v14 = v12[2];
    v15 = v12[3];
    v18 = *v12;
    v19 = v13;
    v20 = v14;
    v21 = v15;
    sub_1BC8F8C04();

    Person.hash(into:)(v17);
    v16 = sub_1BC8F8C64();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      MEMORY[0x1BFB2A020](v8);
      return;
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_7;
    }
  }

  __break(1u);
}

unint64_t sub_1BC7FB618(uint64_t a1)
{
  result = OUTLINED_FUNCTION_71_1(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBCF6520, &unk_1BC9076A0);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1BC7FB68C()
{
  result = qword_1EBCF5608;
  if (!qword_1EBCF5608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5608);
  }

  return result;
}

unint64_t sub_1BC7FB700()
{
  result = qword_1EBCF5620;
  if (!qword_1EBCF5620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5620);
  }

  return result;
}

unint64_t sub_1BC7FB758()
{
  result = qword_1EBCF5628;
  if (!qword_1EBCF5628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5628);
  }

  return result;
}

uint64_t sub_1BC7FB7AC(uint64_t *a1, int a2)
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

uint64_t sub_1BC7FB7EC(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1BC7FB844(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1BC7FB884(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GroupedHistoryItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ParticipantKey.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1BC7FBA5C()
{
  result = qword_1EBCF5630;
  if (!qword_1EBCF5630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5630);
  }

  return result;
}

unint64_t sub_1BC7FBAB4()
{
  result = qword_1EBCF5638;
  if (!qword_1EBCF5638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5638);
  }

  return result;
}

unint64_t sub_1BC7FBB0C()
{
  result = qword_1EBCF5640;
  if (!qword_1EBCF5640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5640);
  }

  return result;
}

unint64_t sub_1BC7FBB64()
{
  result = qword_1EBCF5648;
  if (!qword_1EBCF5648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5648);
  }

  return result;
}

unint64_t sub_1BC7FBBBC()
{
  result = qword_1EBCF5650;
  if (!qword_1EBCF5650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5650);
  }

  return result;
}

unint64_t sub_1BC7FBC14()
{
  result = qword_1EBCF5658;
  if (!qword_1EBCF5658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5658);
  }

  return result;
}

uint64_t sub_1BC7FBC68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoryItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC7FBCCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoryItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC7FBD30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5698, &qword_1BC900B60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC7FBDA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF56B8, &unk_1BC900B80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1BC7FBE10(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

unint64_t sub_1BC7FBE50()
{
  result = qword_1EBCF4FB0;
  if (!qword_1EBCF4FB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBCF4FB0);
  }

  return result;
}

unint64_t sub_1BC7FBE94(uint64_t a1)
{
  result = OUTLINED_FUNCTION_71_1(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

double sub_1BC7FBED8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_83()
{

  return swift_arrayInitWithCopy();
}

void sub_1BC7FBF5C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
}

unint64_t sub_1BC7FC010()
{
  result = qword_1EBCF56D0;
  if (!qword_1EBCF56D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF56D0);
  }

  return result;
}

unint64_t sub_1BC7FC174()
{
  result = qword_1EBCF56D8;
  if (!qword_1EBCF56D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF56D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccountMigrationStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AccountMigrationStatus(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1BC7FC3BC()
{
  v0 = OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_0_8(v0);
  return sub_1BC8F8C64();
}

uint64_t sub_1BC7FC41C(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_2_6();
  a2(v5, a1);
  return sub_1BC8F8C64();
}

uint64_t sub_1BC7FC470(uint64_t a1)
{
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x1BFB2A020](a1);
  return sub_1BC8F8C64();
}

uint64_t sub_1BC7FC4B0(uint64_t a1)
{
  OUTLINED_FUNCTION_2_6();
  sub_1BC8F8C34();
  return sub_1BC8F8C64();
}

uint64_t sub_1BC7FC4FC(uint64_t a1)
{
  v1 = sub_1BC8F8C04();
  OUTLINED_FUNCTION_0_8(v1);
  return sub_1BC8F8C64();
}

uint64_t sub_1BC7FC53C(uint64_t a1, unsigned __int8 a2)
{
  sub_1BC8F8C04();
  MEMORY[0x1BFB2A020](a2);
  return sub_1BC8F8C64();
}

uint64_t sub_1BC7FC580()
{
  OUTLINED_FUNCTION_3_10();
  if (!v0)
  {
    OUTLINED_FUNCTION_1_8();
  }

  sub_1BC8F7CD4();

  return sub_1BC8F8C64();
}

uint64_t sub_1BC7FC614()
{
  OUTLINED_FUNCTION_3_10();
  if (!v0)
  {
    OUTLINED_FUNCTION_1_8();
  }

  sub_1BC8F7CD4();

  return sub_1BC8F8C64();
}

uint64_t sub_1BC7FC6C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(_BYTE *, uint64_t))
{
  sub_1BC8F8C04();
  a3(v6, a2);
  return sub_1BC8F8C64();
}

uint64_t sub_1BC7FC714()
{
  OUTLINED_FUNCTION_3_10();
  sub_1BC8F8C34();
  return sub_1BC8F8C64();
}

uint64_t sub_1BC7FC750()
{
  OUTLINED_FUNCTION_3_10();
  MessageKey.rawValue.getter();
  sub_1BC8F7CD4();

  return sub_1BC8F8C64();
}

uint64_t sub_1BC7FC7AC(uint64_t a1, uint64_t a2)
{
  sub_1BC8F8C04();
  MEMORY[0x1BFB2A020](a2);
  return sub_1BC8F8C64();
}

unint64_t sub_1BC7FC7F0(char a1)
{
  result = 0x6E6979726575712ELL;
  switch(a1)
  {
    case 1:
      result = 0x617267694D6F6E2ELL;
      break;
    case 2:
    case 4:
      result = 0x54676E69766F6D2ELL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x6E696E61656C632ELL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1BC7FC8C0(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t sub_1BC7FC8F4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BC7FC8C0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1BC7FC920@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BC7FC8D0(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_1BC7FC958()
{
  result = qword_1EBCF56E0;
  if (!qword_1EBCF56E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF56E0);
  }

  return result;
}

void sub_1BC7FC9BC(uint64_t a1)
{
  v3 = type metadata accessor for TrackedOutgoingMessage(0);
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OutgoingVideoMessage(0);
  v30 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v27[1] = v1;
    v36 = MEMORY[0x1E69E7CC0];
    sub_1BC7DDAC4(0, v8, 0);
    v9 = v36;
    v12 = sub_1BC800458(a1);
    v13 = 0;
    v35 = a1 + 64;
    v28 = a1 + 72;
    v29 = v8;
    if ((v12 & 0x8000000000000000) == 0)
    {
      while (v12 < 1 << *(a1 + 32))
      {
        v14 = v12 >> 6;
        if ((*(v35 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
        {
          goto LABEL_23;
        }

        if (*(a1 + 36) != v10)
        {
          goto LABEL_24;
        }

        v33 = v11;
        v34 = v10;
        v15 = v31;
        sub_1BC800498(*(a1 + 56) + *(v32 + 72) * v12, v31, type metadata accessor for TrackedOutgoingMessage);
        sub_1BC800498(v15, v7, type metadata accessor for OutgoingVideoMessage);
        sub_1BC800388(v15, type metadata accessor for TrackedOutgoingMessage);
        v36 = v9;
        v17 = *(v9 + 16);
        v16 = *(v9 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_1BC7DDAC4(v16 > 1, v17 + 1, 1);
          v9 = v36;
        }

        *(v9 + 16) = v17 + 1;
        v18 = v7;
        sub_1BC800560(v7, v9 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v17, type metadata accessor for OutgoingVideoMessage);
        v19 = 1 << *(a1 + 32);
        if (v12 >= v19)
        {
          goto LABEL_25;
        }

        v20 = *(v35 + 8 * v14);
        if ((v20 & (1 << v12)) == 0)
        {
          goto LABEL_26;
        }

        if (*(a1 + 36) != v34)
        {
          goto LABEL_27;
        }

        v21 = v20 & (-2 << (v12 & 0x3F));
        if (v21)
        {
          v19 = __clz(__rbit64(v21)) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v22 = v14 << 6;
          v23 = v14 + 1;
          v24 = (v28 + 8 * v14);
          while (v23 < (v19 + 63) >> 6)
          {
            v26 = *v24++;
            v25 = v26;
            v22 += 64;
            ++v23;
            if (v26)
            {
              sub_1BC7FBED8(v12, v34, v33 & 1);
              v19 = __clz(__rbit64(v25)) + v22;
              goto LABEL_18;
            }
          }

          sub_1BC7FBED8(v12, v34, v33 & 1);
        }

LABEL_18:
        if (++v13 == v29)
        {
          return;
        }

        v11 = 0;
        v10 = *(a1 + 36);
        v12 = v19;
        v7 = v18;
        if (v12 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

void sub_1BC7FCD6C(uint64_t a1, uint64_t a2)
{
  if (sub_1BC8F7234())
  {
    v4 = type metadata accessor for OutgoingVideoMessage(0);
    v5 = v4[5];
    v6 = *(a1 + v5);
    v7 = *(a1 + v5 + 8);
    v8 = (a2 + v5);
    v9 = v6 == *v8 && v7 == v8[1];
    if (v9 || (sub_1BC8F8AA4()) && (sub_1BC7DB4D8(*(a1 + v4[6]), *(a2 + v4[6])) & 1) != 0 && *(a1 + v4[7]) == *(a2 + v4[7]) && (sub_1BC8F6FA4())
    {
      v10 = type metadata accessor for TrackedOutgoingMessage(0);
      if (*(a1 + *(v10 + 20)) == *(a2 + *(v10 + 20)))
      {
        v11 = v10;
        sub_1BC7DCBD8(*(a1 + *(v10 + 24)), *(a2 + *(v10 + 24)));
        if (v12)
        {
          v13 = *(v11 + 28);
          v14 = *(a1 + v13);
          v15 = *(a2 + v13);

          sub_1BC7DCBD8(v14, v15);
        }
      }
    }
  }
}

uint64_t sub_1BC7FCE78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567617373656DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E756F43797274 && a2 == 0xE800000000000000;
    if (v6 || (sub_1BC8F8AA4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001BC90BFB0 == a2;
      if (v7 || (sub_1BC8F8AA4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6C617551746E6573 && a2 == 0xED00007365697469)
      {

        return 3;
      }

      else
      {
        v9 = sub_1BC8F8AA4();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1BC7FCFE8(char a1)
{
  result = 0x6567617373656DLL;
  switch(a1)
  {
    case 1:
      result = 0x746E756F43797274;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x6C617551746E6573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BC7FD07C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5718, &qword_1BC901218);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC800334();
  sub_1BC8F8CA4();
  LOBYTE(v17) = 0;
  type metadata accessor for OutgoingVideoMessage(0);
  OUTLINED_FUNCTION_10_10();
  sub_1BC7FFA04(v11, v12, &protocol conformance descriptor for OutgoingVideoMessage);
  sub_1BC8F89F4();
  if (!v2)
  {
    v13 = type metadata accessor for TrackedOutgoingMessage(0);
    LOBYTE(v17) = 1;
    sub_1BC8F89E4();
    v17 = *(v3 + *(v13 + 24));
    v16 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5708, &qword_1BC901210);
    sub_1BC8003E0(&qword_1EBCF5728, sub_1BC7C4FF8, MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_15_6();
    v17 = *(v3 + *(v13 + 28));
    v16 = 3;
    OUTLINED_FUNCTION_15_6();
  }

  return (*(v7 + 8))(v10, v5);
}

void sub_1BC7FD2B4(uint64_t a1)
{
  sub_1BC8F7264();
  OUTLINED_FUNCTION_2_7();
  sub_1BC7FFA04(v2, v3, MEMORY[0x1E69695B8]);
  sub_1BC8F7B64();
  type metadata accessor for OutgoingVideoMessage(0);
  sub_1BC8F7CD4();
  sub_1BC7DEC58();
  sub_1BC8F8C34();
  sub_1BC8F7014();
  OUTLINED_FUNCTION_9_8();
  sub_1BC7FFA04(v4, v5, MEMORY[0x1E6968FC0]);
  sub_1BC8F7B64();
  v6 = type metadata accessor for TrackedOutgoingMessage(0);
  MEMORY[0x1BFB2A020](*(v1 + *(v6 + 20)));
  sub_1BC7DF9B0();

  sub_1BC7DF9B0();
}

uint64_t sub_1BC7FD3F0()
{
  sub_1BC8F8C04();
  sub_1BC8F7264();
  OUTLINED_FUNCTION_2_7();
  sub_1BC7FFA04(v1, v2, MEMORY[0x1E69695B8]);
  sub_1BC8F7B64();
  type metadata accessor for OutgoingVideoMessage(0);
  sub_1BC8F7CD4();
  sub_1BC7DEC58();
  sub_1BC8F8C34();
  sub_1BC8F7014();
  OUTLINED_FUNCTION_9_8();
  sub_1BC7FFA04(v3, v4, MEMORY[0x1E6968FC0]);
  sub_1BC8F7B64();
  v5 = type metadata accessor for TrackedOutgoingMessage(0);
  MEMORY[0x1BFB2A020](*(v0 + *(v5 + 20)));
  sub_1BC7DF9B0();
  sub_1BC7DF9B0();
  return sub_1BC8F8C64();
}

void sub_1BC7FD538(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for OutgoingVideoMessage(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12();
  v7 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF56F0, &qword_1BC901208);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = type metadata accessor for TrackedOutgoingMessage(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12();
  v13 = v12 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC800334();
  sub_1BC8F8C84();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    OUTLINED_FUNCTION_10_10();
    sub_1BC7FFA04(v14, v15, &protocol conformance descriptor for OutgoingVideoMessage);
    sub_1BC8F88F4();
    sub_1BC800560(v7, v13, type metadata accessor for OutgoingVideoMessage);
    LOBYTE(v21) = 1;
    *(v13 + v9[5]) = sub_1BC8F88E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5708, &qword_1BC901210);
    sub_1BC8003E0(&qword_1EBCF5710, sub_1BC7C732C, MEMORY[0x1E69E6330]);
    OUTLINED_FUNCTION_13_7();
    *(v13 + v9[6]) = v21;
    OUTLINED_FUNCTION_13_7();
    v16 = OUTLINED_FUNCTION_11_8();
    v17(v16);
    *(v13 + v9[7]) = v21;
    OUTLINED_FUNCTION_1_9();
    sub_1BC800498(v13, a2, v18);
    __swift_destroy_boxed_opaque_existential_1(a1);
    OUTLINED_FUNCTION_0_9();
    sub_1BC800388(v13, v19);
  }
}

uint64_t sub_1BC7FD8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC7FCE78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC7FD8FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BC7FCFE0();
  *a1 = result;
  return result;
}

uint64_t sub_1BC7FD924(uint64_t a1)
{
  v2 = sub_1BC800334();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7FD960(uint64_t a1)
{
  v2 = sub_1BC800334();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7FD9A4(uint64_t a1)
{
  sub_1BC8F8C04();
  sub_1BC7FD2B4(v2);
  return sub_1BC8F8C64();
}

uint64_t sub_1BC7FDA14(uint64_t a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  v4 = OBJC_IVAR____TtC20FaceTimeMessageStore20OutgoingMessageCache_cacheURL;
  v5 = sub_1BC8F7014();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v1 + v4, a1, v5);
  v7 = sub_1BC7FDB00(a1);
  (*(v6 + 8))(a1, v5);
  *(v2 + 112) = v7;
  return v2;
}

uint64_t sub_1BC7FDB00(uint64_t a1)
{
  v1 = [objc_opt_self() defaultManager];
  sub_1BC8F6FC4();
  v2 = sub_1BC8F7BE4();

  v3 = [v1 fileExistsAtPath_];

  if (v3)
  {
    v4 = sub_1BC8F7054();
    v6 = v5;
    sub_1BC8F6C54();
    swift_allocObject();
    sub_1BC8F6C44();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5738, &qword_1BC901228);
    sub_1BC8006AC();
    sub_1BC8F6C34();

    sub_1BC7D4C94(v4, v6);
    return v8;
  }

  else
  {
    sub_1BC8F7264();
    type metadata accessor for TrackedOutgoingMessage(0);
    sub_1BC7FFA04(&unk_1EDC20600, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

    return sub_1BC8F7AD4();
  }
}

void sub_1BC7FDD3C()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  v3 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  v9 = v8 - v7;
  v10 = type metadata accessor for TrackedOutgoingMessage(0);
  OUTLINED_FUNCTION_0();
  v36[1] = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_12();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5730, &qword_1BC901220);
  v17 = OUTLINED_FUNCTION_25(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_20_0();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v36 - v22;
  OUTLINED_FUNCTION_14_6();
  if (!*(*(v0 + 112) + 16))
  {
    goto LABEL_5;
  }

  sub_1BC83C928();
  if ((v24 & 1) == 0)
  {

LABEL_5:
    __swift_storeEnumTagSinglePayload(v23, 1, 1, v10);
    sub_1BC8004F8(v23);
    sub_1BC800498(v2, v15, type metadata accessor for OutgoingVideoMessage);
    *(v15 + v10[5]) = 0;
    v30 = MEMORY[0x1E69E7CC0];
    *(v15 + v10[6]) = MEMORY[0x1E69E7CC0];
    *(v15 + v10[7]) = v30;
    (*(v5 + 16))(v9, v2, v3);
    OUTLINED_FUNCTION_1_9();
    sub_1BC800498(v15, v20, v31);
    OUTLINED_FUNCTION_30_0();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v10);
    OUTLINED_FUNCTION_19_7(v0 + 112, &v37);
    sub_1BC843E58(v20, v9);
    swift_endAccess();
    sub_1BC7FDFE0();
    OUTLINED_FUNCTION_0_9();
    sub_1BC800388(v15, v35);
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_1_9();
  sub_1BC800498(v25, v23, v26);

  OUTLINED_FUNCTION_30_0();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v10);
  sub_1BC8004F8(v23);
LABEL_6:
  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC7FDFE0()
{
  swift_beginAccess();
  if (!*(*(v0 + 112) + 16))
  {
    if (qword_1EDC1E1F8 != -1)
    {
      swift_once();
    }

    v1 = sub_1BC8F7734();
    __swift_project_value_buffer(v1, qword_1EDC2B2B0);
    v2 = sub_1BC8F7714();
    v3 = sub_1BC8F8204();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1BC7A3000, v2, v3, "CACHE: Cache is empty", v4, 2u);
      MEMORY[0x1BFB2AA50](v4, -1, -1);
    }
  }

  sub_1BC8F6CB4();
  swift_allocObject();
  sub_1BC8F6CA4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5738, &qword_1BC901228);
  sub_1BC8005C0();
  v5 = sub_1BC8F6C94();
  v7 = v6;

  sub_1BC8F70F4();

  return sub_1BC7D4C94(v5, v7);
}

void sub_1BC7FE410()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  v50 = v3;
  v4 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_20_0();
  v51 = (v8 - v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5730, &qword_1BC901220);
  v14 = OUTLINED_FUNCTION_25(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_20_0();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v48 - v19;
  v21 = type metadata accessor for TrackedOutgoingMessage(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_12();
  v25 = v24 - v23;
  OUTLINED_FUNCTION_14_6();

  sub_1BC8E70B0();

  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    v26 = v4;
    sub_1BC8004F8(v20);
    if (qword_1EDC1E1F8 != -1)
    {
      OUTLINED_FUNCTION_3_2(&qword_1EDC1E1F8);
    }

    v27 = sub_1BC8F7734();
    __swift_project_value_buffer(v27, qword_1EDC2B2B0);
    v28 = v51;
    (*(v6 + 16))(v51, v2, v4);
    v29 = sub_1BC8F7714();
    v30 = sub_1BC8F8204();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v52[0] = v32;
      *v31 = 136446210;
      OUTLINED_FUNCTION_2_7();
      sub_1BC7FFA04(v33, v34, MEMORY[0x1E69695E0]);
      v35 = sub_1BC8F8A54();
      v37 = v36;
      (*(v6 + 8))(v28, v26);
      v38 = sub_1BC7A9A4C(v35, v37, v52);

      *(v31 + 4) = v38;
      _os_log_impl(&dword_1BC7A3000, v29, v30, "CACHE: No cached message for uuid %{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    else
    {

      (*(v6 + 8))(v28, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_7();
    v51 = v39;
    sub_1BC800560(v20, v25, v40);
    v41 = *(v21 + 24);
    v49 = v0;
    v42 = v2;
    v43 = v50;

    *(v25 + v41) = v43;
    (*(v6 + 16))(v12, v42, v4);
    OUTLINED_FUNCTION_1_9();
    sub_1BC800498(v25, v17, v44);
    OUTLINED_FUNCTION_30_0();
    __swift_storeEnumTagSinglePayload(v45, v46, v47, v21);
    OUTLINED_FUNCTION_19_7(v49 + 112, v52);
    sub_1BC843E58(v17, v12);
    swift_endAccess();
    sub_1BC7FDFE0();
    sub_1BC800388(v25, v51);
  }

  OUTLINED_FUNCTION_24();
}

void sub_1BC7FE7FC()
{
  OUTLINED_FUNCTION_29_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v82 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_20_0();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v80 = &v80 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5730, &qword_1BC901220);
  v15 = OUTLINED_FUNCTION_25(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_20_0();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v80 - v20;
  v22 = type metadata accessor for TrackedOutgoingMessage(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_20_0();
  v81 = v24 - v25;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v80 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v80 - v30;
  v84 = *v3;
  OUTLINED_FUNCTION_17_1(v1 + 112, &v88);

  v83 = v5;
  sub_1BC8E70B0();

  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    sub_1BC8004F8(v21);
    if (qword_1EDC1E1F8 != -1)
    {
      OUTLINED_FUNCTION_3_2(&qword_1EDC1E1F8);
    }

    v32 = sub_1BC8F7734();
    __swift_project_value_buffer(v32, qword_1EDC2B2B0);
    (*(v82 + 16))(v11, v83, v6);
    v33 = sub_1BC8F7714();
    v34 = sub_1BC8F8204();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v86[0] = v36;
      *v35 = 136446210;
      OUTLINED_FUNCTION_2_7();
      sub_1BC7FFA04(v37, v38, MEMORY[0x1E69695E0]);
      v39 = sub_1BC8F8A54();
      v41 = v40;
      v42 = OUTLINED_FUNCTION_21_7();
      v43(v42, v6);
      v44 = sub_1BC7A9A4C(v39, v41, v86);

      *(v35 + 4) = v44;
      _os_log_impl(&dword_1BC7A3000, v33, v34, "CACHE: No cached message for uuid %{public}s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    else
    {

      v50 = OUTLINED_FUNCTION_21_7();
      v51(v50, v6);
    }

    goto LABEL_32;
  }

  OUTLINED_FUNCTION_5_7();
  sub_1BC800560(v21, v31, v45);
  OUTLINED_FUNCTION_1_9();
  sub_1BC800498(v31, v29, v46);
  v86[0] = *&v29[*(v22 + 24)];

  sub_1BC7FFA4C(v86);
  v47 = v31;
  v48 = *(v86[0] + 16);
  if (v48)
  {
    v49 = *(v86[0] + v48 + 31);
  }

  else
  {
    v49 = 4;
  }

  OUTLINED_FUNCTION_0_9();
  sub_1BC800388(v29, v52);
  if (v84 == 4)
  {
    if (v49 != 4)
    {
LABEL_18:
      if (qword_1EDC1E1F8 != -1)
      {
        OUTLINED_FUNCTION_3_2(&qword_1EDC1E1F8);
      }

      v62 = sub_1BC8F7734();
      __swift_project_value_buffer(v62, qword_1EDC2B2B0);
      v63 = sub_1BC8F7714();
      v64 = sub_1BC8F81E4();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v87[0] = swift_slowAlloc();
        *v65 = 136446466;
        v66 = 7827308;
        v67 = 0xE300000000000000;
        switch(v84)
        {
          case 1:
            v67 = 0xE600000000000000;
            v66 = 0x6D756964656DLL;
            break;
          case 2:
            v67 = 0xE400000000000000;
            v66 = 1751607656;
            break;
          case 3:
            v66 = 7823730;
            break;
          default:
            break;
        }

        v68 = sub_1BC7A9A4C(v66, v67, v87);

        *(v65 + 4) = v68;
        *(v65 + 12) = 2080;
        v47 = v31;
        OUTLINED_FUNCTION_17_1(v31, v86);
        OUTLINED_FUNCTION_1_9();
        v69 = v81;
        sub_1BC800498(v31, v81, v70);
        v85 = *(v69 + *(v22 + 24));

        sub_1BC7FFA4C(&v85);
        v71 = *(v85 + 16);
        if (v71)
        {
          v72 = *(v85 + v71 + 31);

          OUTLINED_FUNCTION_0_9();
          sub_1BC800388(v69, v73);
          LOBYTE(v85) = v72;
          v74 = sub_1BC8F7C94();
          v76 = v75;
        }

        else
        {

          OUTLINED_FUNCTION_0_9();
          sub_1BC800388(v69, v77);
          v76 = 0xE300000000000000;
          v74 = 7104878;
        }

        v78 = sub_1BC7A9A4C(v74, v76, v87);

        *(v65 + 14) = v78;
        _os_log_impl(&dword_1BC7A3000, v63, v64, "CACHE: %{public}s is not the highest expected quality %s - so not retrying", v65, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_6();
      }

      goto LABEL_31;
    }
  }

  else if (v49 == 4 || (sub_1BC800E6C(v84, v49) & 1) == 0)
  {
    goto LABEL_18;
  }

  v53 = *(v22 + 20);
  v54 = *&v31[v53];
  v55 = (v54 + 1);
  if (v54 != -1)
  {
    *&v31[v53] = v55;
    if (v55 <= 2)
    {
      v56 = v80;
      (*(v82 + 16))(v80, v83, v6);
      OUTLINED_FUNCTION_1_9();
      sub_1BC800498(v31, v18, v57);
      OUTLINED_FUNCTION_30_0();
      __swift_storeEnumTagSinglePayload(v58, v59, v60, v22);
      OUTLINED_FUNCTION_19_7(v1 + 112, v86);
      sub_1BC843E58(v18, v56);
      swift_endAccess();
      sub_1BC7FDFE0();
      OUTLINED_FUNCTION_0_9();
      sub_1BC800388(v31, v61);
LABEL_32:
      OUTLINED_FUNCTION_24();
      return;
    }

    OUTLINED_FUNCTION_19_7(v1 + 112, v86);
    sub_1BC8496F0(v18);
    sub_1BC8004F8(v18);
    swift_endAccess();
    sub_1BC7FDFE0();
LABEL_31:
    OUTLINED_FUNCTION_0_9();
    sub_1BC800388(v47, v79);
    goto LABEL_32;
  }

  __break(1u);

  __break(1u);
}

void sub_1BC7FEF48()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  v4 = v3;
  v92 = v5;
  sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v89 = v7;
  v90 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_20_0();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v87 = &v87 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5730, &qword_1BC901220);
  v14 = OUTLINED_FUNCTION_25(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_20_0();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v87 - v19;
  v21 = type metadata accessor for TrackedOutgoingMessage(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_20_0();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v87 - v27;
  v29 = *v2;
  OUTLINED_FUNCTION_14_6();
  v88 = v0;

  v91 = v4;
  sub_1BC8E70B0();

  if (__swift_getEnumTagSinglePayload(v20, 1, v21) != 1)
  {
    OUTLINED_FUNCTION_5_7();
    sub_1BC800560(v20, v28, v44);
    OUTLINED_FUNCTION_1_9();
    sub_1BC800498(v28, v25, v45);
    v94[0] = *(v25 + *(v21 + 24));

    sub_1BC7FFA4C(v94);
    v46 = v28;
    v47 = *(v94[0] + 16);
    if (v47)
    {
      v48 = *(v94[0] + v47 + 31);
    }

    else
    {
      v48 = 4;
    }

    OUTLINED_FUNCTION_0_9();
    sub_1BC800388(v25, v52);
    if (v29 == 4)
    {
      if (v48 != 4)
      {
LABEL_21:
        v59 = *(v21 + 28);
        v60 = *&v28[v59];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1BC7F7088();
          v60 = v85;
        }

        v61 = *(v60 + 16);
        if (v61 >= *(v60 + 24) >> 1)
        {
          sub_1BC7F7088();
          v60 = v86;
        }

        *(v60 + 16) = v61 + 1;
        *(v60 + v61 + 32) = v29;
        *&v28[v59] = v60;
        v62 = v87;
        (*(v89 + 16))(v87, v91, v90);
        OUTLINED_FUNCTION_1_9();
        sub_1BC800498(v28, v17, v63);
        OUTLINED_FUNCTION_30_0();
        __swift_storeEnumTagSinglePayload(v64, v65, v66, v21);
        OUTLINED_FUNCTION_18_5();
        sub_1BC843E58(v17, v62);
        swift_endAccess();
        sub_1BC7FDFE0();
        v67 = sub_1BC8F7014();
        OUTLINED_FUNCTION_22_5(v67);
        OUTLINED_FUNCTION_0_9();
        v69 = v28;
LABEL_30:
        sub_1BC800388(v69, v68);
        goto LABEL_31;
      }
    }

    else if (v48 == 4 || (sub_1BC800E6C(v29, v48) & 1) == 0)
    {
      goto LABEL_21;
    }

    if (qword_1EDC1E1F8 != -1)
    {
      OUTLINED_FUNCTION_3_2(&qword_1EDC1E1F8);
    }

    v53 = sub_1BC8F7734();
    __swift_project_value_buffer(v53, qword_1EDC2B2B0);
    v54 = sub_1BC8F7714();
    v55 = sub_1BC8F8204();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v94[0] = swift_slowAlloc();
      *v56 = 136446466;
      v57 = 7827308;
      v58 = 0xE300000000000000;
      switch(v29)
      {
        case 1:
          v58 = 0xE600000000000000;
          v57 = 0x6D756964656DLL;
          break;
        case 2:
          v58 = 0xE400000000000000;
          v57 = 1751607656;
          break;
        case 3:
          v57 = 7823730;
          break;
        default:
          break;
      }

      v70 = sub_1BC7A9A4C(v57, v58, v94);

      *(v56 + 4) = v70;
      *(v56 + 12) = 2080;
      OUTLINED_FUNCTION_17_1(v46, &v93);
      OUTLINED_FUNCTION_1_9();
      sub_1BC800498(v46, v17, v71);
      OUTLINED_FUNCTION_30_0();
      __swift_storeEnumTagSinglePayload(v72, v73, v74, v21);
      v75 = sub_1BC8636B0();
      v77 = v76;
      sub_1BC8004F8(v17);
      v78 = sub_1BC7A9A4C(v75, v77, v94);

      *(v56 + 14) = v78;
      _os_log_impl(&dword_1BC7A3000, v54, v55, "CACHE: Removing from cache as %{public}s is the highest expected quality for %s", v56, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_18_5();
    sub_1BC8496F0(v17);
    sub_1BC8004F8(v17);
    swift_endAccess();
    sub_1BC7FDFE0();
    OUTLINED_FUNCTION_17_1(v46, v94);
    v79 = *(type metadata accessor for OutgoingVideoMessage(0) + 32);
    v80 = sub_1BC8F7014();
    OUTLINED_FUNCTION_4_1();
    (*(v81 + 16))(v92, v46 + v79, v80);
    OUTLINED_FUNCTION_30_0();
    __swift_storeEnumTagSinglePayload(v82, v83, v84, v80);
    OUTLINED_FUNCTION_0_9();
    v69 = v46;
    goto LABEL_30;
  }

  sub_1BC8004F8(v20);
  if (qword_1EDC1E1F8 != -1)
  {
    OUTLINED_FUNCTION_3_2(&qword_1EDC1E1F8);
  }

  v30 = sub_1BC8F7734();
  __swift_project_value_buffer(v30, qword_1EDC2B2B0);
  v31 = v90;
  (*(v89 + 16))(v10, v91, v90);
  v32 = sub_1BC8F7714();
  v33 = sub_1BC8F8204();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v94[0] = v35;
    *v34 = 136446210;
    OUTLINED_FUNCTION_2_7();
    sub_1BC7FFA04(v36, v37, MEMORY[0x1E69695E0]);
    v38 = sub_1BC8F8A54();
    v40 = v39;
    v41 = OUTLINED_FUNCTION_21_7();
    v42(v41, v31);
    v43 = sub_1BC7A9A4C(v38, v40, v94);

    *(v34 + 4) = v43;
    _os_log_impl(&dword_1BC7A3000, v32, v33, "CACHE: No cached message for uuid %{public}s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v49 = OUTLINED_FUNCTION_21_7();
    v50(v49, v31);
  }

  v51 = sub_1BC8F7014();
  OUTLINED_FUNCTION_22_5(v51);
LABEL_31:
  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC7FF6B0()
{
  OUTLINED_FUNCTION_17_1(v0 + 112, v5);

  sub_1BC7FC9BC(v1);
  v3 = v2;

  return v3;
}

uint64_t sub_1BC7FF70C()
{

  v1 = OBJC_IVAR____TtC20FaceTimeMessageStore20OutgoingMessageCache_cacheURL;
  sub_1BC8F7014();
  OUTLINED_FUNCTION_4_1();
  (*(v2 + 8))(v0 + v1);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1BC7FF774()
{
  sub_1BC7FF70C();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1BC7FF7C8(uint64_t a1)
{
  result = sub_1BC8F7014();
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

void sub_1BC7FF8B8(uint64_t a1)
{
  type metadata accessor for OutgoingVideoMessage(319);
  if (v1 <= 0x3F)
  {
    sub_1BC7FF944();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BC7FF944()
{
  if (!qword_1EDC1DF08)
  {
    v0 = sub_1BC8F7F24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC1DF08);
    }
  }
}

uint64_t sub_1BC7FFA04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BC7FFA4C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BC8DC0A0();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v5[0] = v2 + 32;
  v5[1] = v4;
  sub_1BC7FFAB8(v5);
  *a1 = v2;
}

void sub_1BC7FFAB8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1BC8F8A44();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1BC8F7EB4();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1BC7FFC08(v7, v8, a1, v4);
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
    sub_1BC7FFBAC(0, v2, 1, a1);
  }
}

uint64_t sub_1BC7FFBAC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + a3);
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *(v9 - 1);
        if (v7 >= v10)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v10;
        *--v9 = v7;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      ++v5;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1BC7FFC08(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v77 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v72 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + v8);
        v10 = *(*a3 + v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + v11++) >= v12);
          v12 = *(*a3 + v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = v5 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + v16);
                *(v17 + v16) = *(v17 + v15);
                *(v17 + v15) = v18;
              }

              v19 = ++v16 < v15--;
            }

            while (v19);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
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
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = (*a3 + v8);
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + v8);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *(v25 - 1);
                if (v23 >= v26)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v25 = v26;
                *--v25 = v23;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              ++v21;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v74 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BC7F6FCC();
        v7 = v70;
      }

      v28 = v7[2];
      v29 = v28 + 1;
      if (v28 >= v7[3] >> 1)
      {
        sub_1BC7F6FCC();
        v7 = v71;
      }

      v7[2] = v29;
      v30 = v7 + 4;
      v31 = &v7[2 * v28 + 4];
      *v31 = v6;
      v31[1] = v8;
      __dst = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v28)
      {
        while (1)
        {
          v32 = v29 - 1;
          v33 = &v30[2 * v29 - 2];
          v34 = &v7[2 * v29];
          if (v29 >= 4)
          {
            break;
          }

          if (v29 == 3)
          {
            v35 = v7[4];
            v36 = v7[5];
            v45 = __OFSUB__(v36, v35);
            v37 = v36 - v35;
            v38 = v45;
LABEL_56:
            if (v38)
            {
              goto LABEL_96;
            }

            v50 = *v34;
            v49 = v34[1];
            v51 = __OFSUB__(v49, v50);
            v52 = v49 - v50;
            v53 = v51;
            if (v51)
            {
              goto LABEL_99;
            }

            v54 = v33[1];
            v55 = v54 - *v33;
            if (__OFSUB__(v54, *v33))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v52, v55))
            {
              goto LABEL_104;
            }

            if (v52 + v55 >= v37)
            {
              if (v37 < v55)
              {
                v32 = v29 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v29 < 2)
          {
            goto LABEL_98;
          }

          v57 = *v34;
          v56 = v34[1];
          v45 = __OFSUB__(v56, v57);
          v52 = v56 - v57;
          v53 = v45;
LABEL_71:
          if (v53)
          {
            goto LABEL_101;
          }

          v59 = *v33;
          v58 = v33[1];
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_103;
          }

          if (v60 < v52)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v32 - 1 >= v29)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v64 = &v30[2 * v32 - 2];
          v65 = *v64;
          v66 = &v30[2 * v32];
          v67 = v66[1];
          sub_1BC8001D4((*a3 + *v64), (*a3 + *v66), (*a3 + v67), __dst);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v67 < v65)
          {
            goto LABEL_91;
          }

          v68 = v7;
          v69 = v7[2];
          if (v32 > v69)
          {
            goto LABEL_92;
          }

          *v64 = v65;
          v64[1] = v67;
          if (v32 >= v69)
          {
            goto LABEL_93;
          }

          v29 = v69 - 1;
          memmove(&v30[2 * v32], v66 + 2, 16 * (v69 - 1 - v32));
          v68[2] = v69 - 1;
          v19 = v69 > 2;
          v7 = v68;
          if (!v19)
          {
            goto LABEL_85;
          }
        }

        v39 = &v30[2 * v29];
        v40 = *(v39 - 8);
        v41 = *(v39 - 7);
        v45 = __OFSUB__(v41, v40);
        v42 = v41 - v40;
        if (v45)
        {
          goto LABEL_94;
        }

        v44 = *(v39 - 6);
        v43 = *(v39 - 5);
        v45 = __OFSUB__(v43, v44);
        v37 = v43 - v44;
        v38 = v45;
        if (v45)
        {
          goto LABEL_95;
        }

        v46 = v34[1];
        v47 = v46 - *v34;
        if (__OFSUB__(v46, *v34))
        {
          goto LABEL_97;
        }

        v45 = __OFADD__(v37, v47);
        v48 = v37 + v47;
        if (v45)
        {
          goto LABEL_100;
        }

        if (v48 >= v42)
        {
          v62 = *v33;
          v61 = v33[1];
          v45 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v45)
          {
            goto LABEL_105;
          }

          if (v37 < v63)
          {
            v32 = v29 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v74;
      a4 = v72;
      if (v74 >= v5)
      {
        v77 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1BC8000A8(&v77, *a1, a3);
LABEL_89:
}

uint64_t sub_1BC8000A8(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1BC8D94F4();
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1BC8001D4((*a3 + *v9), (*a3 + *v11), (*a3 + v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1BC8001D4(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a3 - a2;
  if (a2 - __src < a3 - a2)
  {
    sub_1BC7DD61C(__src, a2 - __src, __dst);
    v10 = &v4[v8];
    while (1)
    {
      v11 = v4 >= v10 || v6 >= v5;
      if (v11)
      {
        v6 = v7;
        goto LABEL_42;
      }

      v12 = *v6;
      v13 = *v4;
      if (v12 >= v13)
      {
        v11 = v7 >= v4++;
        v15 = !v11 || v7 >= v4;
        LOBYTE(v12) = v13;
        if (v15)
        {
LABEL_18:
          *v7 = v12;
        }
      }

      else
      {
        v11 = v7 >= v6++;
        if (!v11 || v7 >= v6)
        {
          goto LABEL_18;
        }
      }

      ++v7;
    }
  }

  sub_1BC7DD61C(a2, a3 - a2, __dst);
  v10 = &v4[v9];
LABEL_21:
  v16 = v6 - 1;
  --v5;
  while (v10 > v4 && v6 > v7)
  {
    v18 = *(v10 - 1);
    v19 = *v16;
    if (v18 < v19)
    {
      v21 = v5 + 1 < v6 || v5 >= v6;
      --v6;
      if (v21)
      {
        *v5 = v19;
        v6 = v16;
      }

      goto LABEL_21;
    }

    if ((v5 + 1) < v10 || v5 >= v10)
    {
      *v5 = v18;
    }

    --v5;
    --v10;
  }

LABEL_42:
  if (v6 != v4 || v6 >= v10)
  {
    memmove(v6, v4, v10 - v4);
  }

  return 1;
}

unint64_t sub_1BC800334()
{
  result = qword_1EBCF56F8;
  if (!qword_1EBCF56F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF56F8);
  }

  return result;
}

uint64_t sub_1BC800388(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1BC8003E0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5708, &qword_1BC901210);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BC800498(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BC8004F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5730, &qword_1BC901220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC800560(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_1BC8005C0()
{
  result = qword_1EBCF5740;
  if (!qword_1EBCF5740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5738, &qword_1BC901228);
    sub_1BC7FFA04(&unk_1EDC20FC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1BC7FFA04(&qword_1EBCF5748, type metadata accessor for TrackedOutgoingMessage, &unk_1BC901150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5740);
  }

  return result;
}

unint64_t sub_1BC8006AC()
{
  result = qword_1EBCF5750;
  if (!qword_1EBCF5750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5738, &qword_1BC901228);
    sub_1BC7FFA04(&unk_1EDC20FB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    sub_1BC7FFA04(&qword_1EBCF5758, type metadata accessor for TrackedOutgoingMessage, &unk_1BC901178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5750);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TrackedOutgoingMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BC800878()
{
  result = qword_1EBCF5760;
  if (!qword_1EBCF5760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5760);
  }

  return result;
}

unint64_t sub_1BC8008D0()
{
  result = qword_1EBCF5768;
  if (!qword_1EBCF5768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5768);
  }

  return result;
}

unint64_t sub_1BC800928()
{
  result = qword_1EBCF5770;
  if (!qword_1EBCF5770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5770);
  }

  return result;
}

uint64_t sub_1BC80097C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BC8F7C24();
  v4 = v3;
  if (v2 == sub_1BC8F7C24() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_45_1();
    v7 = sub_1BC8F8AA4();
  }

  return v7 & 1;
}

uint64_t sub_1BC8009FC()
{
  OUTLINED_FUNCTION_12_6();
  if (v6)
  {
    v4 = 0xE500000000000000;
    v3 = v1;
  }

  else
  {
    if (v2 == 1)
    {
      v3 = 7107189;
    }

    else
    {
      v3 = 0x656C646E6168;
    }

    if (v2 == 1)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  if (v0)
  {
    if (v0 == 1)
    {
      v1 = 7107189;
    }

    else
    {
      v1 = 0x656C646E6168;
    }

    if (v0 == 1)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = v3 == v1 && v4 == v5;
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_2_8(v3, v0, v1);
  }

  return v7 & 1;
}

uint64_t sub_1BC800AC4(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xD000000000000010;
  v3 = "low";
  v4 = "low";
  v5 = a1;
  v6 = 0xD000000000000010;
  switch(v5)
  {
    case 1:
      v4 = "fileDoesNotExist";
      v6 = 0xD000000000000011;
      break;
    case 2:
      v4 = "fileAlreadyExists";
      v6 = 0xD000000000000015;
      break;
    case 3:
      v4 = "resolvedSandboxURLNil";
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = "fileDoesNotExist";
      v2 = 0xD000000000000011;
      break;
    case 2:
      v3 = "fileAlreadyExists";
      v2 = 0xD000000000000015;
      break;
    case 3:
      v3 = "resolvedSandboxURLNil";
      break;
    default:
      break;
  }

  if (v6 == v2 && (v4 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_8(v6, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1BC800BD8()
{
  OUTLINED_FUNCTION_12_6();
  if (v6)
  {
    v4 = 0xE500000000000000;
    v3 = v1;
  }

  else
  {
    if (v2 == 1)
    {
      v3 = 0x4C5255656C6966;
    }

    else
    {
      v3 = 0x656C646E6168;
    }

    if (v2 == 1)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  if (v0)
  {
    if (v0 == 1)
    {
      v1 = 0x4C5255656C6966;
    }

    else
    {
      v1 = 0x656C646E6168;
    }

    if (v0 == 1)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = v3 == v1 && v4 == v5;
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_2_8(v3, v0, v1);
  }

  return v7 & 1;
}

uint64_t sub_1BC800CB0(char a1, uint64_t a2)
{
  v3 = 0xD00000000000001BLL;
  v4 = "ationContentTopLine";
  v5 = "ationContentTopLine";
  switch(a1)
  {
    case 1:
      v5 = "missingRequiredFileURLError";
      v3 = 0xD000000000000013;
      break;
    case 2:
      v5 = "fileCopyFailedError";
      v3 = 0xD000000000000014;
      break;
    case 3:
      v5 = "bundleUnzippingError";
      v3 = 0xD000000000000012;
      break;
    default:
      break;
  }

  v6 = 0xD00000000000001BLL;
  switch(a2)
  {
    case 1:
      v4 = "missingRequiredFileURLError";
      v6 = 0xD000000000000013;
      break;
    case 2:
      v4 = "fileCopyFailedError";
      v6 = 0xD000000000000014;
      break;
    case 3:
      v4 = "bundleUnzippingError";
      v6 = 0xD000000000000012;
      break;
    default:
      break;
  }

  if (v3 == v6 && (v5 | 0x8000000000000000) == (v4 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_8(v3, a2, v6);
  }

  return v8 & 1;
}

uint64_t sub_1BC800DDC()
{
  v0 = MessageKey.rawValue.getter();
  v2 = v1;
  if (v0 == MessageKey.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_45_1();
    v5 = sub_1BC8F8AA4();
  }

  return v5 & 1;
}

uint64_t sub_1BC800E6C(char a1, uint64_t a2)
{
  v3 = 7827308;
  v4 = 0xE300000000000000;
  switch(a1)
  {
    case 1:
      v4 = 0xE600000000000000;
      v3 = 0x6D756964656DLL;
      break;
    case 2:
      v4 = 0xE400000000000000;
      v3 = 1751607656;
      break;
    case 3:
      v3 = 7823730;
      break;
    default:
      break;
  }

  v5 = 7827308;
  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE600000000000000;
      v5 = 0x6D756964656DLL;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v5 = 1751607656;
      break;
    case 3:
      v5 = 7823730;
      break;
    default:
      break;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_8(v3, a2, v5);
  }

  return v8 & 1;
}

double sub_1BC800F98(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_1_8();
  }

  sub_1BC8F7CD4();

  return result;
}

double sub_1BC801008(uint64_t a1, char a2)
{
  sub_1BC8F7CD4();

  return result;
}

double sub_1BC8010B0(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_1_8();
  }

  sub_1BC8F7CD4();

  return result;
}

double sub_1BC801128(uint64_t a1, char a2)
{
  sub_1BC8F7CD4();

  return result;
}

double sub_1BC8011E0(uint64_t a1, char a2)
{
  v2 = MessageKey.rawValue.getter();
  OUTLINED_FUNCTION_9_1(v2, v3);

  return result;
}

double sub_1BC80122C(uint64_t a1, char a2)
{
  sub_1BC8F7CD4();

  return result;
}

double static SortedMessageStoreQuery.all.getter@<D0>(_OWORD *a1@<X8>)
{
  result = -2.68156159e154;
  *a1 = xmmword_1BC901350;
  return result;
}

uint64_t static SortedMessageStoreQuery.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if ((v2 & 4) != 0)
  {
    if ((v4 & 4) != 0)
    {
      v27 = OUTLINED_FUNCTION_45_1();
      sub_1BC80156C(v27, v28);
      v29 = OUTLINED_FUNCTION_3_11();
      sub_1BC80156C(v29, v30);
      v31 = OUTLINED_FUNCTION_3_11();
      sub_1BC80156C(v31, v32);
      v33 = OUTLINED_FUNCTION_45_1();
      sub_1BC80156C(v33, v34);
      if ((sub_1BC800DDC() & 1) != 0 && ((v5 ^ v3) & 0x100) == 0)
      {
        v44 = v4 & 0xFFFFFFFFFFFFFFFBLL;
        v45 = v2 & 0xFFFFFFFFFFFFFFFBLL;
        goto LABEL_4;
      }

      v35 = OUTLINED_FUNCTION_45_1();
      sub_1BC80157C(v35, v36);
      v37 = OUTLINED_FUNCTION_3_11();
      sub_1BC80157C(v37, v38);
LABEL_11:
      v39 = OUTLINED_FUNCTION_3_11();
      sub_1BC80157C(v39, v40);
      v41 = OUTLINED_FUNCTION_45_1();
      sub_1BC80157C(v41, v42);
      v14 = 0;
      return v14 & 1;
    }

LABEL_6:
    v23 = OUTLINED_FUNCTION_3_11();
    sub_1BC80156C(v23, v24);
    v25 = OUTLINED_FUNCTION_45_1();
    sub_1BC80156C(v25, v26);
    goto LABEL_11;
  }

  if ((v4 & 4) != 0)
  {
    goto LABEL_6;
  }

  v44 = *a2;
  v45 = v3;
  v6 = OUTLINED_FUNCTION_45_1();
  sub_1BC80156C(v6, v7);
  v8 = OUTLINED_FUNCTION_3_11();
  sub_1BC80156C(v8, v9);
  v10 = OUTLINED_FUNCTION_3_11();
  sub_1BC80156C(v10, v11);
  v12 = OUTLINED_FUNCTION_45_1();
  sub_1BC80156C(v12, v13);
LABEL_4:
  v14 = static MessageStoreQuery.== infix(_:_:)(&v45, &v44);
  v15 = OUTLINED_FUNCTION_3_11();
  sub_1BC80157C(v15, v16);
  v17 = OUTLINED_FUNCTION_45_1();
  sub_1BC80157C(v17, v18);
  v19 = OUTLINED_FUNCTION_45_1();
  sub_1BC80157C(v19, v20);
  v21 = OUTLINED_FUNCTION_3_11();
  sub_1BC80157C(v21, v22);
  return v14 & 1;
}

unint64_t sub_1BC80156C(unint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0)
  {
    a1 = a2 & 0xFFFFFFFFFFFFFFFBLL;
  }

  return sub_1BC7A5AB4(a1);
}

unint64_t sub_1BC80157C(unint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0)
  {
    a1 = a2 & 0xFFFFFFFFFFFFFFFBLL;
  }

  return sub_1BC7B0EFC(a1);
}

uint64_t sub_1BC80158C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726564726FLL && a2 == 0xE500000000000000;
    if (v6 || (sub_1BC8F8AA4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7972657571 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1BC8F8AA4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1BC80169C(char a1)
{
  if (!a1)
  {
    return 7955819;
  }

  if (a1 == 1)
  {
    return 0x726564726FLL;
  }

  return 0x7972657571;
}

uint64_t sub_1BC8016E4(uint64_t a1)
{
  v2 = sub_1BC8023C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC801720(uint64_t a1)
{
  v2 = sub_1BC8023C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC801764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC80158C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC80178C(uint64_t a1)
{
  v2 = sub_1BC80241C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC8017C8(uint64_t a1)
{
  v2 = sub_1BC80241C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC801804(uint64_t a1)
{
  v2 = sub_1BC802470();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC801840(uint64_t a1)
{
  v2 = sub_1BC802470();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SortedMessageStoreQuery.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5778, &qword_1BC901360);
  OUTLINED_FUNCTION_0();
  v41 = v4;
  v42 = v3;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v36 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5780, &qword_1BC901368);
  OUTLINED_FUNCTION_0();
  v38 = v7;
  v39 = v8;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5788, &qword_1BC901370);
  OUTLINED_FUNCTION_0();
  v14 = v13;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - v16;
  v18 = v1[1];
  v43 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC8023C8();
  sub_1BC8F8CA4();
  v37 = v18;
  if ((v18 & 4) != 0)
  {
    LOBYTE(v45) = 1;
    v24 = sub_1BC80241C();
    v11 = v40;
    OUTLINED_FUNCTION_13_8(&type metadata for SortedMessageStoreQuery.SortedCodingKeys, &v45, v25, v26, v24);
    v27 = BYTE1(v43);
    LOBYTE(v45) = v43;
    v46 = 0;
    sub_1BC7B85DC();
    v22 = v42;
    v28 = v44;
    sub_1BC8F89F4();
    if (!v28)
    {
      LOBYTE(v45) = v27 & 1;
      v46 = 1;
      v29 = sub_1BC7B882C();
      OUTLINED_FUNCTION_8_11(v29, v30, v31, &type metadata for MessageSortOrder, v29);
      v45 = v37 & 0xFFFFFFFFFFFFFFFBLL;
      v46 = 2;
      v32 = sub_1BC7B2348();
      OUTLINED_FUNCTION_8_11(v32, v33, v34, &type metadata for MessageStoreQuery, v32);
    }

    v23 = v41;
  }

  else
  {
    LOBYTE(v45) = 0;
    v19 = sub_1BC802470();
    OUTLINED_FUNCTION_13_8(&type metadata for SortedMessageStoreQuery.UnsortedCodingKeys, &v45, v20, v21, v19);
    v45 = v43;
    sub_1BC7B2348();
    v22 = v38;
    sub_1BC8F89F4();
    v23 = v39;
  }

  (*(v23 + 8))(v11, v22);
  return (*(v14 + 8))(v17, v12);
}

void SortedMessageStoreQuery.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if ((v1[1] & 4) != 0)
  {
    MEMORY[0x1BFB2A020](1);
    v4 = MessageKey.rawValue.getter();
    OUTLINED_FUNCTION_9_1(v4, v5);

    MEMORY[0x1BFB2A020]((v3 >> 8) & 1);
  }

  else
  {
    MEMORY[0x1BFB2A020](0);
  }

  MessageStoreQuery.hash(into:)(a1);
}

uint64_t SortedMessageStoreQuery.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  sub_1BC8F8C04();
  if ((v1 & 4) != 0)
  {
    MEMORY[0x1BFB2A020](1);
    MessageKey.rawValue.getter();
    sub_1BC8F7CD4();

    MEMORY[0x1BFB2A020]((v2 >> 8) & 1);
  }

  else
  {
    MEMORY[0x1BFB2A020](0);
  }

  MessageStoreQuery.hash(into:)(v4);
  return sub_1BC8F8C64();
}

void SortedMessageStoreQuery.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v49 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5798, &qword_1BC901378);
  OUTLINED_FUNCTION_0();
  v47 = v3;
  v48 = v4;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF57A0, &qword_1BC901380);
  OUTLINED_FUNCTION_0();
  v46 = v6;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v45 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF57A8, &unk_1BC901388);
  OUTLINED_FUNCTION_0();
  v12 = v11;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - v14;
  v16 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1BC8023C8();
  v17 = v51;
  sub_1BC8F8C84();
  if (v17)
  {
    goto LABEL_8;
  }

  v45 = v9;
  v18 = v49;
  v51 = v12;
  v19 = v15;
  v20 = sub_1BC8F8914();
  sub_1BC7B85D4(v20, 0);
  if (v22 == v23 >> 1)
  {
    goto LABEL_7;
  }

  if (v22 >= (v23 >> 1))
  {
    __break(1u);
    return;
  }

  v53 = *(v21 + v22);
  sub_1BC7B85D0(v22 + 1);
  v25 = v24;
  v27 = v26;
  swift_unknownObjectRelease();
  if (v25 != v27 >> 1)
  {
LABEL_7:
    v28 = sub_1BC8F8624();
    swift_allocError();
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6350, &qword_1BC8FB5C0);
    *v30 = &type metadata for SortedMessageStoreQuery;
    sub_1BC8F8824();
    sub_1BC8F8614();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_7_4();
    v31(v19, v10);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v50);
    return;
  }

  if (v53)
  {
    LOBYTE(v52) = 1;
    sub_1BC80241C();
    sub_1BC8F8814();
    v32 = v18;
    v46 = v15;
    LOBYTE(v52) = 0;
    sub_1BC7BD914();
    v33 = v47;
    sub_1BC8F88F4();
    v34 = v56;
    LOBYTE(v52) = 1;
    sub_1BC7BE118();
    sub_1BC8F88F4();
    LODWORD(v45) = v55;
    v54 = 2;
    sub_1BC7B5D7C();
    sub_1BC8F88F4();
    swift_unknownObjectRelease();
    v40 = OUTLINED_FUNCTION_5_8();
    v41(v40, v33);
    v42 = OUTLINED_FUNCTION_6_8();
    v43(v42);
    v44 = 256;
    if (!v45)
    {
      v44 = 0;
    }

    v39 = v44 | v34;
    v38 = v52 | 4;
  }

  else
  {
    LOBYTE(v52) = 0;
    sub_1BC802470();
    sub_1BC8F8814();
    v32 = v18;
    sub_1BC7B5D7C();
    sub_1BC8F88F4();
    swift_unknownObjectRelease();
    v35 = OUTLINED_FUNCTION_11_9();
    v36(v35);
    OUTLINED_FUNCTION_7_4();
    v37(v15, v10);
    v38 = 0;
    v39 = v52;
  }

  *v32 = v39;
  v32[1] = v38;
  __swift_destroy_boxed_opaque_existential_1(v50);
}

uint64_t sub_1BC80237C(uint64_t a1)
{
  v4 = *v1;
  sub_1BC8F8C04();
  SortedMessageStoreQuery.hash(into:)(v3);
  return sub_1BC8F8C64();
}

unint64_t sub_1BC8023C8()
{
  result = qword_1EDC205B0;
  if (!qword_1EDC205B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC205B0);
  }

  return result;
}

unint64_t sub_1BC80241C()
{
  result = qword_1EBCF5790;
  if (!qword_1EBCF5790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5790);
  }

  return result;
}

unint64_t sub_1BC802470()
{
  result = qword_1EDC20598;
  if (!qword_1EDC20598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20598);
  }

  return result;
}

unint64_t sub_1BC8024C8()
{
  result = qword_1EBCF57B0;
  if (!qword_1EBCF57B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF57B0);
  }

  return result;
}

uint64_t sub_1BC802528(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 7 && *(a1 + 16))
    {
      v2 = *a1 + 6;
    }

    else
    {
      v2 = ((*(a1 + 8) >> 2) & 1 | (2 * (*(a1 + 8) & 3))) ^ 7;
      if (v2 >= 6)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1BC802570(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 6)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    if (a3 >= 7)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 7)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (-a2 >> 1) & 3 | (4 * (-a2 & 1));
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SortedMessageStoreQuery.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SortedMessageStoreQuery.UnsortedCodingKeys(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for SortedMessageStoreQuery.SortedCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BC802858()
{
  result = qword_1EBCF57B8;
  if (!qword_1EBCF57B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF57B8);
  }

  return result;
}

unint64_t sub_1BC8028B0()
{
  result = qword_1EBCF57C0;
  if (!qword_1EBCF57C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF57C0);
  }

  return result;
}

unint64_t sub_1BC802908()
{
  result = qword_1EBCF57C8;
  if (!qword_1EBCF57C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF57C8);
  }

  return result;
}

unint64_t sub_1BC802960()
{
  result = qword_1EDC20588;
  if (!qword_1EDC20588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20588);
  }

  return result;
}

unint64_t sub_1BC8029B8()
{
  result = qword_1EDC20590;
  if (!qword_1EDC20590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20590);
  }

  return result;
}

unint64_t sub_1BC802A10()
{
  result = qword_1EDC205B8;
  if (!qword_1EDC205B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC205B8);
  }

  return result;
}

unint64_t sub_1BC802A68()
{
  result = qword_1EDC205C0;
  if (!qword_1EDC205C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC205C0);
  }

  return result;
}

unint64_t sub_1BC802AC0()
{
  result = qword_1EDC205A0;
  if (!qword_1EDC205A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC205A0);
  }

  return result;
}

unint64_t sub_1BC802B18()
{
  result = qword_1EDC205A8;
  if (!qword_1EDC205A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC205A8);
  }

  return result;
}

uint64_t sub_1BC802B9C()
{
  v1 = [v0 userInfo];
  sub_1BC8F7AA4();

  OUTLINED_FUNCTION_0_10();
  v16[0] = v3;
  v16[1] = v2;
  sub_1BC8F8544();
  sub_1BC8E715C();

  sub_1BC8037DC(v15);
  if (v16[3])
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
    if (OUTLINED_FUNCTION_6_9(v4, v5, v6, v7, v8, v9, v10, v11, v13, v15[0], v15[1], v15[2], v15[3], v15[4], v16[0]))
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1BC803774(v16);
    return 0;
  }
}

id sub_1BC802CAC(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();

  if (v5)
  {
    sub_1BC8F7E34();
    OUTLINED_FUNCTION_10_2();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1BC802D1C()
{
  v1 = [v0 userInfo];
  sub_1BC8F7AA4();

  OUTLINED_FUNCTION_0_10();
  v16[0] = v3;
  v16[1] = v2;
  sub_1BC8F8544();
  sub_1BC8E715C();

  sub_1BC8037DC(v15);
  if (v16[3])
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
    if (OUTLINED_FUNCTION_6_9(v4, v5, v6, v7, v8, v9, v10, v11, v13, v15[0], v15[1], v15[2], v15[3], v15[4], v16[0]))
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1BC803774(v16);
    return 0;
  }
}

uint64_t sub_1BC802E2C()
{
  v1 = [v0 userInfo];
  sub_1BC8F7AA4();

  OUTLINED_FUNCTION_9_9();
  v7[0] = v3;
  v7[1] = v2;
  sub_1BC8F8544();
  sub_1BC8E715C();

  sub_1BC8037DC(v6);
  if (v7[3])
  {
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1BC803774(v7);
    return 0;
  }
}

id sub_1BC802F3C(void *a1)
{
  v2 = a1;
  v3 = OUTLINED_FUNCTION_10_2();
  v4 = sub_1BC80317C(v3);

  if (v4)
  {
    sub_1BC8F7E34();
    OUTLINED_FUNCTION_10_2();
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void sub_1BC802FC0(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_0_10();
  *&v29 = v5;
  *(&v29 + 1) = v4;
  sub_1BC8F8544();
  if (a1)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
  }

  else
  {
    v6 = 0;
    *(&v29 + 1) = 0;
    v30 = 0;
  }

  *&v29 = a1;
  v31 = v6;
  v7 = [v2 userInfo];
  sub_1BC8F7AA4();

  if (v6)
  {
    sub_1BC7F0E58(&v29, v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_10(isUniquelyReferenced_nonNull_native, v9, v10, v11);
    sub_1BC8037DC(v32);
  }

  else
  {
    sub_1BC803774(&v29);
    sub_1BC83C8E8();
    if (v12)
    {
      OUTLINED_FUNCTION_4_9();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_5_9();
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      v14 = OUTLINED_FUNCTION_2_9(v13);
      v22 = OUTLINED_FUNCTION_3_12(v14, v15, v16, v17, v18, v19, v20, v21, v26, v27);
      v24 = OUTLINED_FUNCTION_8_12(v22, v23);
      OUTLINED_FUNCTION_7_5(v24, v25, MEMORY[0x1E69E69B8]);
    }

    else
    {
      memset(v28, 0, sizeof(v28));
    }

    sub_1BC8037DC(v32);
    sub_1BC803774(v28);
  }

  sub_1BC8F7A94();
  OUTLINED_FUNCTION_4_9();

  [v2 setUserInfo_];
}

uint64_t sub_1BC80317C(SEL *a1)
{
  v5.super_class = MEMORY[0x1E6983220];
  v1 = objc_msgSendSuper2(&v5, *a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1BC8F7E54();

  return v3;
}

void sub_1BC803200(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (a3)
  {
    v6 = sub_1BC8F7E54();
  }

  else
  {
    v6 = 0;
  }

  v7 = a1;
  a4(v6);
}

void sub_1BC803284(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_0_10();
  *&v29 = v5;
  *(&v29 + 1) = v4;
  sub_1BC8F8544();
  if (a1)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
  }

  else
  {
    v6 = 0;
    *(&v29 + 1) = 0;
    v30 = 0;
  }

  *&v29 = a1;
  v31 = v6;
  v7 = [v2 userInfo];
  sub_1BC8F7AA4();

  if (v6)
  {
    sub_1BC7F0E58(&v29, v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_10(isUniquelyReferenced_nonNull_native, v9, v10, v11);
    sub_1BC8037DC(v32);
  }

  else
  {
    sub_1BC803774(&v29);
    sub_1BC83C8E8();
    if (v12)
    {
      OUTLINED_FUNCTION_4_9();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_5_9();
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      v14 = OUTLINED_FUNCTION_2_9(v13);
      v22 = OUTLINED_FUNCTION_3_12(v14, v15, v16, v17, v18, v19, v20, v21, v26, v27);
      v24 = OUTLINED_FUNCTION_8_12(v22, v23);
      OUTLINED_FUNCTION_7_5(v24, v25, MEMORY[0x1E69E69B8]);
    }

    else
    {
      memset(v28, 0, sizeof(v28));
    }

    sub_1BC8037DC(v32);
    sub_1BC803774(v28);
  }

  sub_1BC8F7A94();
  OUTLINED_FUNCTION_4_9();

  [v2 setUserInfo_];
}

id sub_1BC80344C(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  if (v7)
  {
    sub_1BC8F7BE4();
    OUTLINED_FUNCTION_10_2();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1BC8034C8()
{
  v4.super_class = MEMORY[0x1E6983220];
  v0 = objc_msgSendSuper2(&v4, sel_notificationProviderIdentifier);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_1BC8F7C24();

  return v2;
}

void sub_1BC803544(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_1BC8F7C24();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = a1;
  sub_1BC8035C4(v4, v6);
}

void sub_1BC8035C4(uint64_t a1, void *a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_9_9();
  *&v32 = v7;
  *(&v32 + 1) = v6;
  sub_1BC8F8544();
  if (a2)
  {
    v8 = MEMORY[0x1E69E6158];
    v9 = a2;
  }

  else
  {
    a1 = 0;
    v9 = 0;
    v8 = 0;
    v33 = 0;
  }

  *&v32 = a1;
  *(&v32 + 1) = v9;
  v34 = v8;
  v10 = [v3 userInfo];
  sub_1BC8F7AA4();

  if (a2)
  {
    sub_1BC7F0E58(&v32, v31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_10(isUniquelyReferenced_nonNull_native, v12, v13, v14);
    sub_1BC8037DC(v35);
  }

  else
  {
    sub_1BC803774(&v32);
    sub_1BC83C8E8();
    if (v15)
    {
      OUTLINED_FUNCTION_4_9();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_5_9();
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      v17 = OUTLINED_FUNCTION_2_9(v16);
      v25 = OUTLINED_FUNCTION_3_12(v17, v18, v19, v20, v21, v22, v23, v24, v29, v30);
      v27 = OUTLINED_FUNCTION_8_12(v25, v26);
      OUTLINED_FUNCTION_7_5(v27, v28, MEMORY[0x1E69E69B8]);
    }

    else
    {
      memset(v31, 0, sizeof(v31));
    }

    sub_1BC8037DC(v35);
    sub_1BC803774(v31);
  }

  sub_1BC8F7A94();
  OUTLINED_FUNCTION_4_9();

  [v3 setUserInfo_];
}

uint64_t sub_1BC803774(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5E50, &qword_1BC8FE850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1BC803830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = sub_1BC8F6C24();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &__src[-2] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1BFB284F0](a3, a4);
  v13 = __OFADD__(v12, 200);
  v14 = v12 + 200;
  if (v13)
  {
    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
  }

  v15 = malloc(v14);
  if (!v15)
  {
    __src[0] = 12;
    sub_1BC803B10(MEMORY[0x1E69E7CC0]);
    sub_1BC803C48();
    sub_1BC8F6E84();
    sub_1BC8F6C14();
    (*(v9 + 8))(v11, v8);
    swift_willThrow();
    return v15;
  }

  bzero(&__src[1], 0xC4uLL);
  __src[0] = 1;
  sub_1BC803A84(a1, a2, &__src[34], &v20);
  v16 = MEMORY[0x1BFB284F0](a3, a4);
  if ((v16 & 0x8000000000000000) != 0)
  {
    goto LABEL_9;
  }

  if (HIDWORD(v16))
  {
    goto LABEL_10;
  }

  __src[1] = v16;
  memcpy(v15, __src, 0xC8uLL);
  MEMORY[0x1BFB284F0](a3, a4);
  sub_1BC8F7104();
  return v15;
}

char *sub_1BC803A54(char *__src, char *__dst, uint64_t a3)
{
  if (__dst)
  {
    return strncpy(__dst, __src, a3 - __dst);
  }

  __break(1u);
  return __src;
}

char *sub_1BC803A84(uint64_t a1, uint64_t a2, char *__dst, uint64_t a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return sub_1BC8F8594();
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *__src = a1;
    v7 = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
    return sub_1BC803A54(v4, __dst, a4);
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
    return sub_1BC8F8594();
  }

  v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  return sub_1BC803A54(v4, __dst, a4);
}

unint64_t sub_1BC803B10(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CC8];
LABEL_9:

    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF57D8, &qword_1BC901BE0);
  v2 = sub_1BC8F87D4();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_1BC803D34(v6, &v15);
    v7 = v15;
    v8 = v16;
    result = sub_1BC803CBC(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_1BC7F0E58(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1BC803C48()
{
  result = qword_1EBCF57D0;
  if (!qword_1EBCF57D0)
  {
    sub_1BC8F6C24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF57D0);
  }

  return result;
}

unint64_t sub_1BC803CBC(uint64_t a1, uint64_t a2)
{
  sub_1BC8F8C04();
  sub_1BC8F7CD4();
  v4 = sub_1BC8F8C64();

  return sub_1BC803DA4(a1, a2, v4);
}

uint64_t sub_1BC803D34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF57E0, &qword_1BC901BE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BC803DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1BC8F8AA4() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t MessageAssetInfo.assetURL.getter()
{
  sub_1BC8F7014();
  OUTLINED_FUNCTION_4_1();
  v0 = OUTLINED_FUNCTION_29();

  return v1(v0);
}

uint64_t MessageAssetInfo.thumbnailURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MessageAssetInfo(0);
  v3 = OUTLINED_FUNCTION_15_7(v2);

  return sub_1BC7EB644(v3, a1);
}

uint64_t type metadata accessor for MessageAssetInfo(uint64_t a1)
{
  result = qword_1EDC1F980;
  if (!qword_1EDC1F980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MessageAssetInfo.transcriptURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MessageAssetInfo(0) + 24);

  return sub_1BC7EB644(v3, a1);
}

void sub_1BC803F84()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v6 = OUTLINED_FUNCTION_25(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_20_0();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v86 = &v81 - v11;
  sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v87 = v13;
  v88 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_20_0();
  v85 = v14 - v15;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v81 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v81 - v20;
  v22 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_20_0();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_11_10();
  v30 = [v2 recordUUID];
  if (!v30)
  {
    goto LABEL_9;
  }

  v31 = v30;
  sub_1BC8F7244();

  (*(v24 + 32))(v0, v28, v22);
  v32 = sub_1BC7C19F8(v2, &selRef_fileType);
  if (!v33)
  {
LABEL_8:
    v52 = OUTLINED_FUNCTION_5_10();
    v53(v52);
LABEL_9:
    v54 = type metadata accessor for MessageAssetInfo(0);
    v55 = v4;
    v56 = 1;
    v57 = 1;
    goto LABEL_10;
  }

  v34 = v32;
  v35 = v33;
  v84 = v9;
  v36 = MEMORY[0x1BFB2A220]();
  sub_1BC7C1A54(v34, v35, v21);

  objc_autoreleasePoolPop(v36);
  sub_1BC7C2474();
  if ((v37 & 1) == 0)
  {
    (*(v87 + 8))(v21, v88);
    goto LABEL_8;
  }

  v83 = v4;
  v38 = v88;
  __swift_storeEnumTagSinglePayload(v86, 1, 1, v88);
  v39 = v84;
  __swift_storeEnumTagSinglePayload(v84, 1, 1, v38);
  v40 = sub_1BC7C19F8(v2, &selRef_thumbnailType);
  if (v41)
  {
    v42 = v40;
    v43 = v41;
    v44 = MEMORY[0x1BFB2A220]();
    sub_1BC7C1A54(v42, v43, v19);

    objc_autoreleasePoolPop(v44);
    LOBYTE(v93[0]) = 4;
    sub_1BC7F0C48(v93, v2);
    v45 = v83;
    if (v46)
    {
      v47 = v86;
      sub_1BC7C1744(v86, &qword_1EBCF5A20, &qword_1BC901BF0);
      (*(v87 + 32))(v47, v19, v88);
      OUTLINED_FUNCTION_10_11();
      __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
    }

    else
    {
      (*(v87 + 8))(v19, v88);
    }

    v39 = v84;
  }

  else
  {
    v45 = v83;
  }

  v58 = sub_1BC7C19F8(v2, &selRef_transcriptType);
  if (v59)
  {
    v60 = v59;
    v83 = v58;
    v61 = sub_1BC8F7BE4();
    v62 = [v2 valueForKey_];

    if (v62)
    {
      sub_1BC8F8474();
      swift_unknownObjectRelease();
    }

    else
    {
      v91 = 0u;
      v92 = 0u;
    }

    v93[0] = v91;
    v93[1] = v92;
    v39 = v84;
    if (*(&v92 + 1))
    {
      if (swift_dynamicCast())
      {
        v65 = v89;
        v82 = v90;
        v81 = MEMORY[0x1BFB2A220]();
        v66 = v85;
        sub_1BC7C1A54(v83, v60, v85);

        objc_autoreleasePoolPop(v81);
        v67 = v82;
        sub_1BC7F0E68();
        v69 = v68;
        sub_1BC7D4C94(v65, v67);
        v70 = OUTLINED_FUNCTION_5_10();
        v71(v70);
        if (v69)
        {
          sub_1BC7C1744(v39, &qword_1EBCF5A20, &qword_1BC901BF0);
          (*(v87 + 32))(v39, v66, v88);
          OUTLINED_FUNCTION_10_11();
          __swift_storeEnumTagSinglePayload(v72, v73, v74, v75);
        }

        else
        {
          (*(v87 + 8))(v66, v88);
        }
      }

      else
      {
        v78 = OUTLINED_FUNCTION_5_10();
        v79(v78);
      }
    }

    else
    {
      v76 = OUTLINED_FUNCTION_5_10();
      v77(v76);

      sub_1BC7C1744(v93, &unk_1EBCF5E50, &qword_1BC8FE850);
    }
  }

  else
  {
    v63 = OUTLINED_FUNCTION_5_10();
    v64(v63);
  }

  (*(v87 + 32))(v45, v21, v88);
  v80 = type metadata accessor for MessageAssetInfo(0);
  sub_1BC805ABC(v86, v45 + *(v80 + 20));
  sub_1BC805ABC(v39, v45 + *(v80 + 24));
  OUTLINED_FUNCTION_10_11();
LABEL_10:
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v54);
  OUTLINED_FUNCTION_24();
}

uint64_t MessageAssetInfo.hasThumbnail.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_25(v2);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_7_6();
  v5 = type metadata accessor for MessageAssetInfo(v4);
  v6 = OUTLINED_FUNCTION_15_7(v5);
  sub_1BC7EB644(v6, v1);
  v7 = sub_1BC8F7014();
  OUTLINED_FUNCTION_12_7(v7);
  return v0;
}

uint64_t MessageAssetInfo.hasTranscript.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_25(v2);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_7_6();
  v5 = type metadata accessor for MessageAssetInfo(v4);
  sub_1BC7EB644(v0 + *(v5 + 24), v1);
  v6 = sub_1BC8F7014();
  OUTLINED_FUNCTION_12_7(v6);
  return v0;
}

void static MessageAssetInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  v4 = v3;
  v5 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v13 = OUTLINED_FUNCTION_25(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_20_0();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_11_10();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF57E8, &qword_1BC901BF8);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_20_0();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v45 - v24;
  if ((sub_1BC8F6FA4() & 1) == 0)
  {
    goto LABEL_22;
  }

  v46 = v16;
  v48 = v7;
  v47 = type metadata accessor for MessageAssetInfo(0);
  v26 = *(v47 + 20);
  v27 = *(v18 + 48);
  sub_1BC7EB644(v4 + v26, v25);
  sub_1BC7EB644(v2 + v26, &v25[v27]);
  OUTLINED_FUNCTION_3_0(v25);
  if (!v28)
  {
    sub_1BC7EB644(v25, v0);
    OUTLINED_FUNCTION_3_0(&v25[v27]);
    if (!v28)
    {
      v30 = v48;
      OUTLINED_FUNCTION_17_5();
      v31(v11, &v25[v27], v5);
      OUTLINED_FUNCTION_0_11();
      sub_1BC805C34(v32, v33, MEMORY[0x1E6968FC8]);
      HIDWORD(v45) = sub_1BC8F7BC4();
      v34 = *(v30 + 8);
      v35 = OUTLINED_FUNCTION_29();
      v34(v35);
      (v34)(v0, v5);
      sub_1BC7C1744(v25, &qword_1EBCF5A20, &qword_1BC901BF0);
      if ((v45 & 0x100000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_12;
    }

    (*(v48 + 8))(v0, v5);
LABEL_10:
    v29 = v25;
LABEL_21:
    sub_1BC7C1744(v29, &qword_1EBCF57E8, &qword_1BC901BF8);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_3_0(&v25[v27]);
  if (!v28)
  {
    goto LABEL_10;
  }

  sub_1BC7C1744(v25, &qword_1EBCF5A20, &qword_1BC901BF0);
LABEL_12:
  v36 = *(v47 + 24);
  v37 = *(v18 + 48);
  sub_1BC7EB644(v4 + v36, v22);
  sub_1BC7EB644(v2 + v36, v22 + v37);
  OUTLINED_FUNCTION_3_0(v22);
  if (!v28)
  {
    v38 = v46;
    sub_1BC7EB644(v22, v46);
    OUTLINED_FUNCTION_3_0(v22 + v37);
    if (!v39)
    {
      v40 = v48;
      (*(v48 + 32))(v11, v22 + v37, v5);
      OUTLINED_FUNCTION_0_11();
      sub_1BC805C34(v41, v42, MEMORY[0x1E6968FC8]);
      sub_1BC8F7BC4();
      v43 = *(v40 + 8);
      v44 = OUTLINED_FUNCTION_29();
      v43(v44);
      (v43)(v38, v5);
      sub_1BC7C1744(v22, &qword_1EBCF5A20, &qword_1BC901BF0);
      goto LABEL_22;
    }

    (*(v48 + 8))(v38, v5);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_3_0(v22 + v37);
  if (!v28)
  {
LABEL_20:
    v29 = v22;
    goto LABEL_21;
  }

  sub_1BC7C1744(v22, &qword_1EBCF5A20, &qword_1BC901BF0);
LABEL_22:
  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC804AF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C52557465737361 && a2 == 0xE800000000000000;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x69616E626D756874 && a2 == 0xEC0000004C52556CLL;
    if (v6 || (sub_1BC8F8AA4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x697263736E617274 && a2 == 0xED00004C52557470)
    {

      return 2;
    }

    else
    {
      v8 = sub_1BC8F8AA4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1BC804C10(char a1)
{
  if (!a1)
  {
    return 0x4C52557465737361;
  }

  if (a1 == 1)
  {
    return 0x69616E626D756874;
  }

  return 0x697263736E617274;
}

uint64_t sub_1BC804C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC804AF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC804CAC(uint64_t a1)
{
  v2 = sub_1BC804ED4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC804CE8(uint64_t a1)
{
  v2 = sub_1BC804ED4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MessageAssetInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF57F0, &qword_1BC901C00);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC804ED4();
  sub_1BC8F8CA4();
  v15 = 0;
  sub_1BC8F7014();
  OUTLINED_FUNCTION_0_11();
  sub_1BC805C34(v9, v10, MEMORY[0x1E6968FB8]);
  OUTLINED_FUNCTION_6_10();
  sub_1BC8F89F4();
  if (!v1)
  {
    type metadata accessor for MessageAssetInfo(0);
    v14 = 1;
    OUTLINED_FUNCTION_6_10();
    sub_1BC8F8974();
    v13 = 2;
    OUTLINED_FUNCTION_6_10();
    sub_1BC8F8974();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1BC804ED4()
{
  result = qword_1EDC1F9B0;
  if (!qword_1EDC1F9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F9B0);
  }

  return result;
}

void MessageAssetInfo.hash(into:)()
{
  OUTLINED_FUNCTION_29_0();
  v2 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v10 = OUTLINED_FUNCTION_25(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_20_0();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_11_10();
  OUTLINED_FUNCTION_0_11();
  sub_1BC805C34(v15, v16, MEMORY[0x1E6968FC0]);
  sub_1BC8F7B64();
  v17 = type metadata accessor for MessageAssetInfo(0);
  v18 = OUTLINED_FUNCTION_15_7(v17);
  sub_1BC7EB644(v18, v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_1BC8F8C24();
  }

  else
  {
    OUTLINED_FUNCTION_17_5();
    v19(v8, v1, v2);
    sub_1BC8F8C24();
    OUTLINED_FUNCTION_20_6();
    (*(v4 + 8))(v8, v2);
  }

  sub_1BC7EB644(v0 + *(v17 + 24), v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v2) == 1)
  {
    sub_1BC8F8C24();
  }

  else
  {
    OUTLINED_FUNCTION_17_5();
    v20(v8, v13, v2);
    sub_1BC8F8C24();
    OUTLINED_FUNCTION_20_6();
    (*(v4 + 8))(v8, v2);
  }

  OUTLINED_FUNCTION_24();
}

void MessageAssetInfo.hashValue.getter()
{
  OUTLINED_FUNCTION_29_0();
  v1 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v9 = OUTLINED_FUNCTION_25(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_20_0();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  sub_1BC8F8C04();
  OUTLINED_FUNCTION_0_11();
  sub_1BC805C34(v16, v17, MEMORY[0x1E6968FC0]);
  sub_1BC8F7B64();
  v18 = type metadata accessor for MessageAssetInfo(0);
  v19 = OUTLINED_FUNCTION_15_7(v18);
  sub_1BC7EB644(v19, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v1) == 1)
  {
    sub_1BC8F8C24();
  }

  else
  {
    (*(v3 + 32))(v7, v15, v1);
    sub_1BC8F8C24();
    OUTLINED_FUNCTION_19_8();
    (*(v3 + 8))(v7, v1);
  }

  sub_1BC7EB644(v0 + *(v18 + 24), v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v1) == 1)
  {
    sub_1BC8F8C24();
  }

  else
  {
    (*(v3 + 32))(v7, v12, v1);
    sub_1BC8F8C24();
    OUTLINED_FUNCTION_19_8();
    (*(v3 + 8))(v7, v1);
  }

  sub_1BC8F8C64();
  OUTLINED_FUNCTION_24();
}

uint64_t MessageAssetInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v5 = OUTLINED_FUNCTION_25(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_20_0();
  v39 = v6 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v35 - v9;
  v10 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v40 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_12();
  v42 = v14 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF57F8, &qword_1BC901C08);
  OUTLINED_FUNCTION_0();
  v43 = v16;
  v44 = v15;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_7_6();
  v19 = type metadata accessor for MessageAssetInfo(v18);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_12();
  v23 = v22 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC804ED4();
  sub_1BC8F8C84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = v41;
  v35 = v19;
  v36 = v23;
  v37 = a1;
  v47 = 0;
  OUTLINED_FUNCTION_0_11();
  sub_1BC805C34(v25, v26, MEMORY[0x1E6968FD0]);
  v27 = v42;
  sub_1BC8F88F4();
  OUTLINED_FUNCTION_17_5();
  v28(v36, v27, v10);
  v46 = 1;
  sub_1BC8F8864();
  sub_1BC805ABC(v24, v36 + *(v35 + 20));
  v45 = 2;
  v29 = v39;
  sub_1BC8F8864();
  v30 = v37;
  v31 = OUTLINED_FUNCTION_13_9();
  v32(v31);
  v33 = v36;
  sub_1BC805ABC(v29, v36 + *(v35 + 24));
  sub_1BC805B2C(v33, v38);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return sub_1BC805B90(v33);
}

uint64_t sub_1BC805800(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC8F7014();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v15 - v12;
  sub_1BC8F8C04();
  sub_1BC805C34(&qword_1EBCF5CE0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1BC8F7B64();
  sub_1BC7EB644(v2 + *(a2 + 20), v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v4) == 1)
  {
    sub_1BC8F8C24();
  }

  else
  {
    (*(v5 + 32))(v7, v13, v4);
    sub_1BC8F8C24();
    sub_1BC8F7B64();
    (*(v5 + 8))(v7, v4);
  }

  sub_1BC7EB644(v2 + *(a2 + 24), v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v4) == 1)
  {
    sub_1BC8F8C24();
  }

  else
  {
    (*(v5 + 32))(v7, v11, v4);
    sub_1BC8F8C24();
    sub_1BC8F7B64();
    (*(v5 + 8))(v7, v4);
  }

  return sub_1BC8F8C64();
}

uint64_t sub_1BC805ABC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC805B2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageAssetInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC805B90(uint64_t a1)
{
  v2 = type metadata accessor for MessageAssetInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC805C34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BC805CA8(uint64_t a1)
{
  sub_1BC8F7014();
  if (v1 <= 0x3F)
  {
    sub_1BC805D2C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BC805D2C(uint64_t a1)
{
  if (!qword_1EDC21220)
  {
    sub_1BC8F7014();
    v1 = sub_1BC8F83F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC21220);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for MessageAssetInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BC805E64()
{
  result = qword_1EBCF5808;
  if (!qword_1EBCF5808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5808);
  }

  return result;
}

unint64_t sub_1BC805EBC()
{
  result = qword_1EDC1F9A0;
  if (!qword_1EDC1F9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F9A0);
  }

  return result;
}

unint64_t sub_1BC805F14()
{
  result = qword_1EDC1F9A8;
  if (!qword_1EDC1F9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F9A8);
  }

  return result;
}

void sub_1BC805F7C(void *a1)
{
  v2 = sub_1BC8F70C4();
  v3 = sub_1BC8F7BE4();
  [a1 encodeObject:v2 forKey:v3];
}

id sub_1BC806068(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_1BC80620C();
  v5 = sub_1BC8F8364();
  if (v5)
  {
    v6 = v5;
    v7 = sub_1BC8F70D4();
    v9 = v8;

    v10 = &v2[OBJC_IVAR____TtC20FaceTimeMessageStore10XPCWrapper_data];
    *v10 = v7;
    v10[1] = v9;
    v13.receiver = v2;
    v13.super_class = ObjectType;
    v11 = objc_msgSendSuper2(&v13, sel_init);
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v11;
}

id sub_1BC80619C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BC80620C()
{
  result = qword_1EDC20650[0];
  if (!qword_1EDC20650[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EDC20650);
  }

  return result;
}

uint64_t Utterance.init(text:captions:utteranceNumber:utteranceStartTimestamp:utteranceDuration:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = a3;
  *(a9 + 8) = result;
  *(a9 + 52) = a4;
  *(a9 + 56) = BYTE4(a4) & 1;
  *(a9 + 16) = a2;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6 & 1;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8 & 1;
  return result;
}

uint64_t Utterance.text.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t static Utterance.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v21 = *(a1 + 52);
  v22 = *(a1 + 56);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);
  v14 = *(a2 + 52);
  v15 = *(a2 + 56);
  if ((sub_1BC7DACAC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v16 = v2 == v8 && v3 == v9;
  if (!v16 && (sub_1BC8F8AA4() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v10)
    {
      v17 = v11;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  if (v7)
  {
    if (!v13)
    {
      return 0;
    }
  }

  else
  {
    if (v6 == v12)
    {
      v18 = v13;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  if (v22)
  {
    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v21 == v14)
    {
      v20 = v15;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1BC806414(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E6F6974706163 && a2 == 0xE800000000000000;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1954047348 && a2 == 0xE400000000000000;
    if (v6 || (sub_1BC8F8AA4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000017 && 0x80000001BC90C130 == a2;
      if (v7 || (sub_1BC8F8AA4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x80000001BC90C150 == a2;
        if (v8 || (sub_1BC8F8AA4() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x636E617265747475 && a2 == 0xEF7265626D754E65)
        {

          return 4;
        }

        else
        {
          v10 = sub_1BC8F8AA4();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1BC8065D4(char a1)
{
  result = 0x736E6F6974706163;
  switch(a1)
  {
    case 1:
      result = 1954047348;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x636E617265747475;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BC806688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC806414(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC8066B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BC8065CC();
  *a1 = result;
  return result;
}

uint64_t sub_1BC8066D8(uint64_t a1)
{
  v2 = sub_1BC8069D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC806714(uint64_t a1)
{
  v2 = sub_1BC8069D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Utterance.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5818, &qword_1BC901E30);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v11 = *v1;
  v10 = v1[1];
  v12 = v1[3];
  v21 = v1[2];
  v22 = v10;
  v20 = v12;
  v19 = *(v1 + 32);
  v18 = v1[5];
  v17 = *(v1 + 48);
  v16 = *(v1 + 13);
  v15 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC8069D8();

  sub_1BC8F8CA4();
  v29 = v11;
  v28 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5820, &qword_1BC901E38);
  sub_1BC806F58(&qword_1EDC1DED8, sub_1BC806A2C, MEMORY[0x1E69E6300]);
  sub_1BC8F89F4();

  if (!v2)
  {
    v27 = 1;
    OUTLINED_FUNCTION_2_10();
    sub_1BC8F89A4();
    v26 = 2;
    OUTLINED_FUNCTION_2_10();
    sub_1BC8F8964();
    v25 = 3;
    OUTLINED_FUNCTION_2_10();
    sub_1BC8F8964();
    v24 = 4;
    v23 = v15;
    sub_1BC8F8994();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1BC8069D8()
{
  result = qword_1EDC206D8;
  if (!qword_1EDC206D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC206D8);
  }

  return result;
}

unint64_t sub_1BC806A2C()
{
  result = qword_1EDC1E188;
  if (!qword_1EDC1E188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1E188);
  }

  return result;
}

uint64_t Utterance.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  sub_1BC7DECBC();
  sub_1BC8F7CD4();
  if (v3 == 1)
  {
    sub_1BC8F8C24();
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1BC8F8C24();
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v2;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x1BFB2A060](v9);
    if (!v5)
    {
LABEL_3:
      sub_1BC8F8C24();
      if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v7 = v4;
      }

      else
      {
        v7 = 0;
      }

      MEMORY[0x1BFB2A060](v7);
      if (!v6)
      {
        goto LABEL_7;
      }

      return sub_1BC8F8C24();
    }
  }

  sub_1BC8F8C24();
  if (!v6)
  {
LABEL_7:
    sub_1BC8F8C24();
    return sub_1BC8F8C44();
  }

  return sub_1BC8F8C24();
}

uint64_t Utterance.hashValue.getter()
{
  sub_1BC8F8C04();
  Utterance.hash(into:)(v1);
  return sub_1BC8F8C64();
}

void Utterance.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5828, &qword_1BC901E40);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC8069D8();
  sub_1BC8F8C84();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5820, &qword_1BC901E38);
    LOBYTE(v20) = 0;
    sub_1BC806F58(&qword_1EDC1FF60, sub_1BC806FD0, MEMORY[0x1E69E6330]);
    sub_1BC8F88F4();
    v6 = v23[0];
    OUTLINED_FUNCTION_1_11(1);
    v18 = sub_1BC8F88A4();
    v19 = v7;
    OUTLINED_FUNCTION_1_11(2);
    v17 = sub_1BC8F8854();
    v31 = v8 & 1;
    OUTLINED_FUNCTION_1_11(3);
    v16 = sub_1BC8F8854();
    v30 = v9 & 1;
    v32 = 4;
    v10 = sub_1BC8F8894();
    v11 = OUTLINED_FUNCTION_35();
    v12(v11);
    v29 = BYTE4(v10) & 1;
    *&v20 = v6;
    *(&v20 + 1) = v18;
    *&v21 = v19;
    *(&v21 + 1) = v17;
    v15 = v31;
    v22[0] = v31;
    *&v22[8] = v16;
    v13 = v30;
    v22[16] = v30;
    *&v22[20] = v10;
    v22[24] = BYTE4(v10) & 1;
    v14 = v21;
    *a2 = v20;
    a2[1] = v14;
    a2[2] = *v22;
    *(a2 + 41) = *&v22[9];
    sub_1BC807024(&v20, v23);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v23[0] = v6;
    v23[1] = v18;
    v23[2] = v19;
    v23[3] = v17;
    v24 = v15;
    v25 = v16;
    v26 = v13;
    v27 = v10;
    v28 = BYTE4(v10) & 1;
    sub_1BC80705C(v23);
  }
}

uint64_t sub_1BC806F18(uint64_t a1)
{
  sub_1BC8F8C04();
  Utterance.hash(into:)(v2);
  return sub_1BC8F8C64();
}

uint64_t sub_1BC806F58(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5820, &qword_1BC901E38);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BC806FD0()
{
  result = qword_1EDC1FFA0;
  if (!qword_1EDC1FFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1FFA0);
  }

  return result;
}

unint64_t sub_1BC807090()
{
  result = qword_1EBCF5830;
  if (!qword_1EBCF5830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5830);
  }

  return result;
}

uint64_t sub_1BC8070E4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1BC807124(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Utterance.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for Utterance.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BC8072EC()
{
  result = qword_1EBCF5838;
  if (!qword_1EBCF5838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5838);
  }

  return result;
}

unint64_t sub_1BC807344()
{
  result = qword_1EDC206C8;
  if (!qword_1EDC206C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC206C8);
  }

  return result;
}

unint64_t sub_1BC80739C()
{
  result = qword_1EDC206D0;
  if (!qword_1EDC206D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC206D0);
  }

  return result;
}

uint64_t sub_1BC8073F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC8F83F4();
  OUTLINED_FUNCTION_0_5();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  OUTLINED_FUNCTION_0_5();
  v11 = v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v20 - v16;
  (*(v6 + 16))(v9, a1, v4);
  if (__swift_getEnumTagSinglePayload(v9, 1, a2) == 1)
  {
    (*(v6 + 8))(v9, v4);
    return 7104878;
  }

  else
  {
    (*(v11 + 32))(v17, v9, a2);
    (*(v11 + 16))(v15, v17, a2);
    v18 = sub_1BC8F7C94();
    (*(v11 + 8))(v17, a2);
  }

  return v18;
}

uint64_t sub_1BC80770C()
{
  v0 = sub_1BC8F7734();
  __swift_allocate_value_buffer(v0, qword_1EDC2B3C0);
  __swift_project_value_buffer(v0, qword_1EDC2B3C0);
  return sub_1BC8F7724();
}

uint64_t sub_1BC807854(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1BC8F7734();
  OUTLINED_FUNCTION_0_5();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BC8F76B4();
  __swift_allocate_value_buffer(v14, a2);
  __swift_project_value_buffer(v14, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v8, a4);
  (*(v10 + 16))(v13, v15, v8);
  return sub_1BC8F7694();
}

uint64_t sub_1BC807980()
{
  os_unfair_lock_lock((v0 + 16));
  v1 = *(v0 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v0 + 16));
  return v1;
}

uint64_t sub_1BC8079BC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 40) = a2;
  *(v2 + 48) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1BC8079E0, 0, 0);
}

uint64_t sub_1BC8079E0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8_13();
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_43_3();
    OUTLINED_FUNCTION_41_6();
    if (v0)
    {
      type metadata accessor for Message(0);
      v1 = sub_1BC8F7E34();
      [v0 messageStoreDidAddMessages_];
      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_11();

  return v2();
}

uint64_t sub_1BC807A88(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 40) = a2;
  *(v2 + 48) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1BC807AAC, 0, 0);
}

uint64_t sub_1BC807AAC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8_13();
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_43_3();
    OUTLINED_FUNCTION_41_6();
    if (v0)
    {
      type metadata accessor for Message(0);
      v1 = sub_1BC8F7E34();
      [v0 messageStoreDidUpdateMessages_];
      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_11();

  return v2();
}

uint64_t sub_1BC807B54(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 40) = a2;
  *(v2 + 48) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1BC807B78, 0, 0);
}

uint64_t sub_1BC807B78()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_8_13();
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_43_3();
    OUTLINED_FUNCTION_41_6();
    if (v0)
    {

      sub_1BC899AAC(v1);
      sub_1BC8F7264();
      v2 = sub_1BC8F7E34();

      [v0 messageStoreDidDeleteMessagesWithUUIDs_];
      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_11();

  return v3();
}

uint64_t sub_1BC807C3C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 40) = a2;
  *(v2 + 48) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1BC807C60, 0, 0);
}

uint64_t sub_1BC807C60()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8_13();
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_43_3();
    OUTLINED_FUNCTION_41_6();
    if (v0)
    {
      [v0 messageStoreAccountInfoDidChange_];
      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_11();

  return v2();
}

uint64_t sub_1BC807D08()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8_13();
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_43_3();
    OUTLINED_FUNCTION_41_6();
    if (v0)
    {
      [v0 messageStoreDidReconnect];
      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_11();

  return v1();
}

uint64_t sub_1BC807DAC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8_13();
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_43_3();
    OUTLINED_FUNCTION_41_6();
    if (v0)
    {
      [v0 messageStoreRequiresRefetch];
      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_11();

  return v1();
}

uint64_t sub_1BC807E30(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  if (qword_1EDC20720 != -1)
  {
    swift_once();
  }

  v5 = sub_1BC8F7734();
  __swift_project_value_buffer(v5, qword_1EDC2B390);
  v6 = sub_1BC8F7714();
  v7 = sub_1BC8F8204();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1BC7A3000, v6, v7, "Server disconnected", v8, 2u);
    MEMORY[0x1BFB2AA50](v8, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    atomic_store(0, (result + 40));
    v11 = sub_1BC8F7FC4();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v10;

    sub_1BC881904(0, 0, v4, &unk_1BC9021E0, v12);

    return sub_1BC7C1744(v4, &qword_1EBCF63D0, &qword_1BC902140);
  }

  return result;
}

uint64_t sub_1BC80802C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1BC8F86F4();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC8080EC, 0, 0);
}

uint64_t sub_1BC8080EC()
{
  OUTLINED_FUNCTION_5();
  sub_1BC8F8B74();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1BC8081B0;
  OUTLINED_FUNCTION_15();

  return sub_1BC82D814();
}

uint64_t sub_1BC8081B0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;
  v3[7] = v0;

  if (v0)
  {
    (*(v3[4] + 8))(v3[5], v3[3]);
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    (*(v3[4] + 8))(v3[5], v3[3]);
    v10 = swift_task_alloc();
    v3[8] = v10;
    *v10 = v5;
    v10[1] = sub_1BC808334;

    return sub_1BC7A928C();
  }
}

uint64_t sub_1BC808334()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  OUTLINED_FUNCTION_11();

  return v3();
}

uint64_t sub_1BC808430()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 40);
  v2 = v1;
  v3 = sub_1BC8F7714();
  v4 = sub_1BC8F81E4();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 40);
  if (v5)
  {
    OUTLINED_FUNCTION_9();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1BC7A3000, v3, v4, "Failed to ping server: %{public}@", v7, 0xCu);
    sub_1BC7C1744(v8, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  else
  {
  }

  atomic_store(1u, (*(v0 + 16) + 40));
  OUTLINED_FUNCTION_27();

  return v11();
}

uint64_t sub_1BC8085B0(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC8085C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_44_3();
  a15 = v18;
  a16 = v19;
  OUTLINED_FUNCTION_22_0();
  a14 = v17;
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v20 = sub_1BC8F7734();
  v21 = OUTLINED_FUNCTION_42_3(v20, qword_1EDC2B390);
  v22 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_21(v22))
  {
    OUTLINED_FUNCTION_9();
    swift_slowAlloc();
    OUTLINED_FUNCTION_22_6();
    OUTLINED_FUNCTION_30_5();
    *v16 = 136315138;
    *(v16 + 4) = sub_1BC7A9A4C(0x7373654D65766173, 0xEF293A5F28656761, &a10);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v23, v24, v25, v26, v27, 0xCu);
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v28 = v17[4];
  v17[3] = v28;
  v29 = v28;
  v30 = swift_task_alloc();
  v17[6] = v30;
  sub_1BC809E74();
  *v30 = v17;
  v30[1] = sub_1BC80874C;
  OUTLINED_FUNCTION_40_4();

  return MEMORY[0x1EEDF2DF0](v31, v32, v33, v34, v35, v36, v37, v38);
}

uint64_t sub_1BC80874C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 56) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BC80889C()
{
  OUTLINED_FUNCTION_5();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for SaveMessageToPhotoLibrary(0);
  v1[4] = v3;
  OUTLINED_FUNCTION_25(v3);
  v1[5] = OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BC80891C()
{
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_22_0();
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v2 = sub_1BC8F7734();
  v3 = OUTLINED_FUNCTION_42_3(v2, qword_1EDC2B390);
  v4 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_21(v4))
  {
    OUTLINED_FUNCTION_9();
    swift_slowAlloc();
    OUTLINED_FUNCTION_22_6();
    OUTLINED_FUNCTION_30_5();
    *v0 = 136315138;
    OUTLINED_FUNCTION_9_3();
    *(v0 + 4) = sub_1BC7A9A4C(0xD000000000000027, v5, v6);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v12 = v1[5];
  v13 = v1[2];
  sub_1BC8F7264();
  OUTLINED_FUNCTION_4_1();
  (*(v14 + 16))(v12, v13);
  v15 = swift_task_alloc();
  v1[6] = v15;
  OUTLINED_FUNCTION_26_4();
  sub_1BC7AC6B4(v16, v17, &unk_1BC8FD0A8);
  OUTLINED_FUNCTION_45_4();
  *v15 = v18;
  v15[1] = sub_1BC808ACC;
  OUTLINED_FUNCTION_40_4();

  return MEMORY[0x1EEDF2E08](v19, v20, v21, v22, v23, v24, v25, v26);
}

uint64_t sub_1BC808ACC()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_3();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  *(v3 + 56) = v0;

  OUTLINED_FUNCTION_26_4();
  sub_1BC7BD5CC(v6, v9);
  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {

    OUTLINED_FUNCTION_27();

    return v13();
  }
}

uint64_t sub_1BC808C18()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_1BC808C74()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_1BC808CD0(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC808CE4()
{
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_22_0();
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v2 = sub_1BC8F7734();
  v3 = OUTLINED_FUNCTION_42_3(v2, qword_1EDC2B390);
  v4 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_21(v4))
  {
    OUTLINED_FUNCTION_9();
    swift_slowAlloc();
    OUTLINED_FUNCTION_22_6();
    OUTLINED_FUNCTION_30_5();
    *v0 = 136315138;
    OUTLINED_FUNCTION_9_3();
    *(v0 + 4) = sub_1BC7A9A4C(0xD000000000000012, v5, v6);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v1[2] = v1[3];

  v12 = swift_task_alloc();
  v1[5] = v12;
  sub_1BC809E20();
  OUTLINED_FUNCTION_45_4();
  *v12 = v13;
  v12[1] = sub_1BC808E54;
  OUTLINED_FUNCTION_40_4();

  return MEMORY[0x1EEDF2E08](v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1BC808E54()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v6 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v10();
  }
}

uint64_t sub_1BC808F84(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 24) = v1;
  *(v2 + 32) = v3;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC808F9C()
{
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_22_0();
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v2 = sub_1BC8F7734();
  v3 = OUTLINED_FUNCTION_42_3(v2, qword_1EDC2B390);
  v4 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_21(v4))
  {
    OUTLINED_FUNCTION_9();
    swift_slowAlloc();
    OUTLINED_FUNCTION_22_6();
    OUTLINED_FUNCTION_30_5();
    *v0 = 136315138;
    OUTLINED_FUNCTION_9_3();
    *(v0 + 4) = sub_1BC7A9A4C(0xD000000000000016, v5, v6);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v12 = v1[4];
  v1[2] = v12;
  sub_1BC7A5AB4(v12);
  v13 = swift_task_alloc();
  v1[5] = v13;
  sub_1BC809DCC();
  OUTLINED_FUNCTION_45_4();
  *v13 = v14;
  v13[1] = sub_1BC809108;
  OUTLINED_FUNCTION_40_4();

  return MEMORY[0x1EEDF2E08](v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_1BC809108()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;
  *(v3 + 48) = v0;

  sub_1BC7B0EFC(*(v3 + 16));
  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v10();
  }
}

uint64_t sub_1BC809260()
{
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_22_0();
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v2 = sub_1BC8F7734();
  v3 = OUTLINED_FUNCTION_42_3(v2, qword_1EDC2B390);
  v4 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_21(v4))
  {
    OUTLINED_FUNCTION_9();
    swift_slowAlloc();
    OUTLINED_FUNCTION_22_6();
    OUTLINED_FUNCTION_30_5();
    *v0 = 136315138;
    OUTLINED_FUNCTION_9_3();
    *(v0 + 4) = sub_1BC7A9A4C(0xD000000000000018, v5, v6);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v12 = swift_task_alloc();
  *(v1 + 24) = v12;
  sub_1BC809D78();
  OUTLINED_FUNCTION_28_4();
  *v12 = v13;
  v12[1] = sub_1BC8093BC;
  OUTLINED_FUNCTION_40_4();

  return MEMORY[0x1EEDF2DF0](v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1BC8093BC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v6 + 32) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC809500()
{
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_22_0();
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v2 = sub_1BC8F7734();
  v3 = OUTLINED_FUNCTION_42_3(v2, qword_1EDC2B390);
  v4 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_21(v4))
  {
    OUTLINED_FUNCTION_9();
    swift_slowAlloc();
    OUTLINED_FUNCTION_22_6();
    OUTLINED_FUNCTION_30_5();
    *v0 = 136315138;
    OUTLINED_FUNCTION_9_3();
    *(v0 + 4) = sub_1BC7A9A4C(0xD000000000000010, v5, v6);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v12 = swift_task_alloc();
  *(v1 + 32) = v12;
  sub_1BC809D24();
  OUTLINED_FUNCTION_28_4();
  *v12 = v13;
  v12[1] = sub_1BC80965C;
  OUTLINED_FUNCTION_40_4();

  return MEMORY[0x1EEDF2DF0](v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1BC80965C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v6 + 40) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC809778()
{
  OUTLINED_FUNCTION_5();
  *(v1 + 64) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = type metadata accessor for ReportTranscriptAccuracy(0);
  *(v1 + 32) = v4;
  OUTLINED_FUNCTION_25(v4);
  *(v1 + 40) = OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BC8097FC()
{
  OUTLINED_FUNCTION_22_0();
  v29 = v1;
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v2 = sub_1BC8F7734();
  v3 = OUTLINED_FUNCTION_42_3(v2, qword_1EDC2B390);
  v4 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_21(v4))
  {
    OUTLINED_FUNCTION_9();
    swift_slowAlloc();
    v28 = OUTLINED_FUNCTION_22_6();
    *v0 = 136315138;
    *(v0 + 4) = sub_1BC7A9A4C(0xD00000000000002DLL, 0x80000001BC90C250, &v28);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v11 = *(v1 + 32);
  v10 = *(v1 + 40);
  v12 = *(v1 + 64);
  v13 = *(v1 + 16);
  sub_1BC8F7264();
  OUTLINED_FUNCTION_4_1();
  (*(v14 + 16))(v10, v13);
  *(v10 + *(v11 + 20)) = v12;
  v15 = swift_task_alloc();
  *(v1 + 48) = v15;
  OUTLINED_FUNCTION_25_6();
  sub_1BC7AC6B4(v16, v17, &unk_1BC8FCF08);
  OUTLINED_FUNCTION_45_4();
  *v15 = v24;
  v15[1] = sub_1BC8099CC;
  v26 = *(v1 + 32);
  v25 = *(v1 + 40);

  return MEMORY[0x1EEDF2E08](v25, v26, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_1BC8099CC()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_3();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  *(v3 + 56) = v0;

  OUTLINED_FUNCTION_25_6();
  sub_1BC7BD5CC(v6, v9);
  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {

    OUTLINED_FUNCTION_27();

    return v13();
  }
}

uint64_t sub_1BC809B18()
{
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v0 = sub_1BC8F7734();
  __swift_project_value_buffer(v0, qword_1EDC2B390);
  v1 = sub_1BC8F7714();
  v2 = sub_1BC8F8204();
  if (os_log_type_enabled(v1, v2))
  {
    OUTLINED_FUNCTION_9();
    v3 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v3 = 136315138;
    OUTLINED_FUNCTION_9_3();
    *(v3 + 4) = sub_1BC7A9A4C(0xD000000000000010, v4, v5);
    _os_log_impl(&dword_1BC7A3000, v1, v2, "%s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  sub_1BC809CD0();
  return sub_1BC8F7894();
}

uint64_t sub_1BC809C64()
{
  sub_1BC7C1744(v0 + 24, &qword_1EBCF5850, &qword_1BC9020F0);

  return v0;
}

uint64_t sub_1BC809C9C()
{
  sub_1BC809C64();

  return MEMORY[0x1EEE6BDC0](v0, 41, 7);
}

unint64_t sub_1BC809CD0()
{
  result = qword_1EDC1F118;
  if (!qword_1EDC1F118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F118);
  }

  return result;
}

unint64_t sub_1BC809D24()
{
  result = qword_1EDC1F120;
  if (!qword_1EDC1F120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F120);
  }

  return result;
}

unint64_t sub_1BC809D78()
{
  result = qword_1EDC1E448[0];
  if (!qword_1EDC1E448[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC1E448);
  }

  return result;
}

unint64_t sub_1BC809DCC()
{
  result = qword_1EDC1F128;
  if (!qword_1EDC1F128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F128);
  }

  return result;
}

unint64_t sub_1BC809E20()
{
  result = qword_1EDC202B8;
  if (!qword_1EDC202B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC202B8);
  }

  return result;
}

unint64_t sub_1BC809E74()
{
  result = qword_1EDC1FDC0[0];
  if (!qword_1EDC1FDC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC1FDC0);
  }

  return result;
}

uint64_t sub_1BC809EC8()
{
  OUTLINED_FUNCTION_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_11(v1);

  return sub_1BC8079BC(v3, v4);
}

uint64_t sub_1BC809F4C()
{
  OUTLINED_FUNCTION_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_11(v1);

  return sub_1BC807A88(v3, v4);
}

uint64_t sub_1BC809FD0()
{
  OUTLINED_FUNCTION_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_11(v1);

  return sub_1BC807B54(v3, v4);
}

uint64_t sub_1BC80A054()
{
  OUTLINED_FUNCTION_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_11(v1);

  return sub_1BC807C3C(v3, v4);
}

uint64_t sub_1BC80A0D8()
{
  OUTLINED_FUNCTION_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_11(v1);

  return sub_1BC807CE8(v3, v4);
}

uint64_t sub_1BC80A15C()
{
  OUTLINED_FUNCTION_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_11(v1);

  return sub_1BC807D8C(v3, v4);
}

uint64_t objectdestroy_55Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BC80A228()
{
  OUTLINED_FUNCTION_32();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_33_7(v1);

  return sub_1BC80802C(v3, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_39_3()
{
}

void sub_1BC80A2F8(uint64_t a1, id a2, uint64_t a3)
{
  if (!*MEMORY[0x1E69D54F8])
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v3 = a1;
  v4 = *MEMORY[0x1E69D54F8];
  v5 = sub_1BC8F7C24();
  v7 = v6;

  if (!*MEMORY[0x1E69D54E8])
  {
LABEL_32:
    __break(1u);
    return;
  }

  v8 = *MEMORY[0x1E69D54E8];
  v9 = sub_1BC8F7C24();
  v11 = v10;

  sub_1BC84A1F4(v3);
  sub_1BC8F7BE4();
  OUTLINED_FUNCTION_14_7();
  v12 = TCCAccessCopyInformationForBundleId();

  v13 = MEMORY[0x1E69E7CC0];
  v23 = v9;
  v24 = v11;
  if (v12)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v29[0] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5030, &unk_1BC8FC7D0);
      sub_1BC8F7E44();
    }
  }

  v14 = 0;
  v15 = *(v13 + 16);
  v16 = MEMORY[0x1E69E7CA0];
  while (1)
  {
    if (v15 == v14)
    {

      return;
    }

    if (v14 >= *(v13 + 16))
    {
      __break(1u);
      goto LABEL_31;
    }

    v17 = *(v13 + 8 * v14 + 32);
    if (*(v17 + 16))
    {
      break;
    }

LABEL_21:
    ++v14;
  }

  v18 = sub_1BC803CBC(v5, v7);
  if ((v19 & 1) == 0 || (sub_1BC7ABB48(*(v17 + 56) + 32 * v18, v29), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_21;
  }

  if (v27 == a2 && v28 == a3)
  {

    goto LABEL_25;
  }

  v21 = v16;
  v22 = sub_1BC8F8AA4();

  if ((v22 & 1) == 0)
  {

    v16 = v21;
    goto LABEL_21;
  }

LABEL_25:

  sub_1BC8E71B0(v23, v24, v17);

  if (v29[3])
  {
    sub_1BC7E613C();
    if (swift_dynamicCast())
    {
      [v27 BOOLValue];
    }
  }

  else
  {
    sub_1BC803774(v29);
  }
}

void sub_1BC80A5E4(char a1, char a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v19 = a2 & 1;
    v4 = (a3 + 40);
    v5 = qword_1EDC1E000;
    do
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v8 = v5[54];

      if (v8 != -1)
      {
        OUTLINED_FUNCTION_0_14();
        swift_once();
      }

      v9 = sub_1BC8F7734();
      __swift_project_value_buffer(v9, qword_1EDC2B220);

      v10 = sub_1BC8F7714();
      v11 = sub_1BC8F8204();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v12 = 67240706;
        *(v12 + 4) = v19;
        *(v12 + 8) = 2082;
        v13 = 0xD000000000000015;
        v14 = "com.apple.facetime";
        switch(a1)
        {
          case 1:
            v13 = OUTLINED_FUNCTION_8_14();
            v14 = "badge_count_data";
            break;
          case 2:
            v13 = OUTLINED_FUNCTION_8_14();
            v14 = "com.apple.facetime.debug";
            break;
          case 3:
            v13 = 0xD000000000000018;
            v14 = "com.apple.NanoPhone";
            break;
          case 4:
            v13 = 0xD000000000000013;
            v14 = "group.com.apple.FaceTime";
            break;
          case 5:
            v13 = 0xD00000000000001FLL;
            v14 = "memessagestored.service";
            break;
          case 6:
            v13 = 0xD000000000000018;
            v14 = "getMessages(fetchRequest:)";
            break;
          default:
            break;
        }

        v15 = sub_1BC7A9A4C(v13, v14 | 0x8000000000000000, &v20);

        *(v12 + 10) = v15;
        *(v12 + 18) = 2082;
        *(v12 + 20) = sub_1BC7A9A4C(v7, v6, &v20);
        _os_log_impl(&dword_1BC7A3000, v10, v11, "Setting TCC access to %{BOOL,public}d for %{public}s on %{public}s!", v12, 0x1Cu);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_6();

        v5 = qword_1EDC1E000;
      }

      else
      {
      }

      v16 = sub_1BC8F7BE4();

      switch(a1)
      {
        case 1:
        case 2:
          OUTLINED_FUNCTION_8_14();
          break;
        default:
          break;
      }

      v17 = sub_1BC8F7BE4();

      TCCAccessSetForBundleId();

      v4 += 2;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_1BC80A968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_11_11();
  OUTLINED_FUNCTION_9_10();
  if (qword_1EDC1E1B0 != -1)
  {
    OUTLINED_FUNCTION_0_14();
    swift_once();
  }

  v15 = sub_1BC8F7734();
  *(v12 + 248) = __swift_project_value_buffer(v15, qword_1EDC2B220);
  v16 = sub_1BC8F7714();
  v17 = sub_1BC8F8204();
  if (os_log_type_enabled(v16, v17))
  {
    v13 = *(v12 + 288);
    v18 = swift_slowAlloc();
    *v18 = 67240192;
    *(v18 + 4) = v13;
    _os_log_impl(&dword_1BC7A3000, v16, v17, "Setting data class to %{BOOL,public}d!", v18, 8u);
    OUTLINED_FUNCTION_6();
  }

  v19 = [objc_opt_self() defaultStore];
  *(v12 + 256) = v19;
  if (v19)
  {
    v20 = v19;
    *(v12 + 16) = v12;
    *(v12 + 56) = v12 + 240;
    *(v12 + 24) = sub_1BC80AC88;
    v21 = swift_continuation_init();
    *(v12 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5868, &qword_1BC902240);
    *(v12 + 144) = MEMORY[0x1E69E9820];
    *(v12 + 152) = 1107296256;
    *(v12 + 160) = sub_1BC80B390;
    *(v12 + 168) = &block_descriptor_0;
    *(v12 + 176) = v21;
    [v20 aa:v12 + 144 primaryAppleAccountWithCompletion:?];
    OUTLINED_FUNCTION_6_11();

    return MEMORY[0x1EEE6DEC8](v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
  }

  else
  {
    v30 = sub_1BC8F7714();
    v31 = sub_1BC8F81E4();
    if (os_log_type_enabled(v30, v31))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_10_1(&dword_1BC7A3000, v32, v33, "Failed to get ACAccountStore");
      OUTLINED_FUNCTION_6();
    }

    sub_1BC80B418();
    swift_allocError();
    *v34 = 0;
    swift_willThrow();
    OUTLINED_FUNCTION_18_6();
    v35 = sub_1BC8F7714();
    sub_1BC8F81E4();
    OUTLINED_FUNCTION_13_10();
    if (OUTLINED_FUNCTION_17_7())
    {
      OUTLINED_FUNCTION_21_1();
      a10 = OUTLINED_FUNCTION_5_12();
      OUTLINED_FUNCTION_3_14(4.8751e-34);
      v36 = OUTLINED_FUNCTION_15_8();
      OUTLINED_FUNCTION_12_8(v36, v37, v38, v39);
      OUTLINED_FUNCTION_14_7();
      *(v13 + 4) = v14;
      OUTLINED_FUNCTION_1_13(&dword_1BC7A3000, v40, v41, "Could not disable PhoneFacetime dataclass: %{public}s");
      __swift_destroy_boxed_opaque_existential_1(a10);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    swift_willThrow();
    OUTLINED_FUNCTION_2_12();
    OUTLINED_FUNCTION_6_11();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
  }
}

uint64_t sub_1BC80AC88()
{
  OUTLINED_FUNCTION_5();
  v1 = *(*v0 + 48);
  *(*v0 + 264) = v1;
  if (v1)
  {
    v2 = sub_1BC80B1B4;
  }

  else
  {
    v2 = sub_1BC80AD94;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BC80AD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_11_11();
  OUTLINED_FUNCTION_9_10();
  v14 = (v12 + 240);
  v13 = *(v12 + 240);
  *(v12 + 272) = v13;
  if (v13)
  {
    v15 = *(v12 + 256);
    [v13 setEnabled:*(v12 + 288) forDataclass:*MEMORY[0x1E69596C8]];
    *(v12 + 80) = v12;
    *(v12 + 120) = v14;
    *(v12 + 88) = sub_1BC80B03C;
    v16 = swift_continuation_init();
    *(v12 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5870, &qword_1BC902248);
    *(v12 + 144) = MEMORY[0x1E69E9820];
    *(v12 + 152) = 1107296256;
    *(v12 + 160) = sub_1BC8BEB74;
    *(v12 + 168) = &block_descriptor_5;
    *(v12 + 176) = v16;
    [v15 saveAccount:v13 withCompletionHandler:v12 + 144];
    OUTLINED_FUNCTION_6_11();

    return MEMORY[0x1EEE6DEC8](v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
  }

  else
  {
    v25 = sub_1BC8F7714();
    v26 = sub_1BC8F81E4();
    if (os_log_type_enabled(v25, v26))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_10_1(&dword_1BC7A3000, v27, v28, "Failed to get ACAccount");
      OUTLINED_FUNCTION_6();
    }

    v29 = *(v12 + 256);

    sub_1BC80B418();
    swift_allocError();
    *v30 = 1;
    swift_willThrow();

    OUTLINED_FUNCTION_18_6();
    v31 = sub_1BC8F7714();
    sub_1BC8F81E4();
    OUTLINED_FUNCTION_13_10();
    if (OUTLINED_FUNCTION_17_7())
    {
      OUTLINED_FUNCTION_21_1();
      a10 = OUTLINED_FUNCTION_5_12();
      *v14 = 136446210;
      swift_getErrorValue();
      v32 = OUTLINED_FUNCTION_15_8();
      v36 = OUTLINED_FUNCTION_12_8(v32, v33, v34, v35);

      *(v12 + 244) = v36;
      OUTLINED_FUNCTION_1_13(&dword_1BC7A3000, v37, v38, "Could not disable PhoneFacetime dataclass: %{public}s");
      __swift_destroy_boxed_opaque_existential_1(a10);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    swift_willThrow();
    OUTLINED_FUNCTION_2_12();
    OUTLINED_FUNCTION_6_11();

    return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
  }
}

uint64_t sub_1BC80B03C()
{
  OUTLINED_FUNCTION_5();
  v1 = *(*v0 + 112);
  *(*v0 + 280) = v1;
  if (v1)
  {
    v2 = sub_1BC80B29C;
  }

  else
  {
    v2 = sub_1BC80B148;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BC80B148()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 272);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BC80B1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_11_11();
  OUTLINED_FUNCTION_9_10();
  v15 = *(v12 + 256);
  swift_willThrow();

  OUTLINED_FUNCTION_18_6();
  v16 = sub_1BC8F7714();
  sub_1BC8F81E4();
  OUTLINED_FUNCTION_13_10();
  if (OUTLINED_FUNCTION_17_7())
  {
    OUTLINED_FUNCTION_21_1();
    a10 = OUTLINED_FUNCTION_5_12();
    OUTLINED_FUNCTION_3_14(4.8751e-34);
    v17 = OUTLINED_FUNCTION_15_8();
    OUTLINED_FUNCTION_12_8(v17, v18, v19, v20);
    OUTLINED_FUNCTION_14_7();
    *(v13 + 4) = v14;
    OUTLINED_FUNCTION_1_13(&dword_1BC7A3000, v21, v22, "Could not disable PhoneFacetime dataclass: %{public}s");
    __swift_destroy_boxed_opaque_existential_1(a10);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  swift_willThrow();
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_6_11();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_1BC80B29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_11_11();
  OUTLINED_FUNCTION_9_10();
  v15 = *(v12 + 272);
  v16 = *(v12 + 256);
  swift_willThrow();

  OUTLINED_FUNCTION_18_6();
  v17 = sub_1BC8F7714();
  sub_1BC8F81E4();
  OUTLINED_FUNCTION_13_10();
  if (OUTLINED_FUNCTION_17_7())
  {
    OUTLINED_FUNCTION_21_1();
    a10 = OUTLINED_FUNCTION_5_12();
    OUTLINED_FUNCTION_3_14(4.8751e-34);
    v18 = OUTLINED_FUNCTION_15_8();
    OUTLINED_FUNCTION_12_8(v18, v19, v20, v21);
    OUTLINED_FUNCTION_14_7();
    *(v13 + 4) = v14;
    OUTLINED_FUNCTION_1_13(&dword_1BC7A3000, v22, v23, "Could not disable PhoneFacetime dataclass: %{public}s");
    __swift_destroy_boxed_opaque_existential_1(a10);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  swift_willThrow();
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_6_11();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_1BC80B390(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_1BC899994();
  }

  else
  {
    v8 = a2;

    return sub_1BC891000(v5, a2);
  }
}

unint64_t sub_1BC80B418()
{
  result = qword_1EBCF5860;
  if (!qword_1EBCF5860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5860);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TCCAccessError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BC80B564()
{
  result = qword_1EBCF5878;
  if (!qword_1EBCF5878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5878);
  }

  return result;
}

uint64_t sub_1BC80B680(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x656D695465636166 && a2 == 0xED00006F69647541;
  if (v3 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D695465636166 && a2 == 0xED00006F65646956;
    if (v6 || (sub_1BC8F8AA4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x72656972726163 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1BC8F8AA4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1BC80B7A0(unsigned __int8 a1)
{
  result = 0x656D695465636166;
  if (a1 >= 2u)
  {
    return 0x72656972726163;
  }

  return result;
}

uint64_t sub_1BC80B80C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC80B680(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC80B834(uint64_t a1)
{
  v2 = sub_1BC80BA18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC80B870(uint64_t a1)
{
  v2 = sub_1BC80BA18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MessageCounts.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5880, &qword_1BC902310);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v11 = *v1;
  v10 = v1[1];
  v14 = v1[2];
  v15 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC80BA18();
  sub_1BC8F8CA4();
  v18 = 0;
  OUTLINED_FUNCTION_9_2(v11, &v18);
  if (!v2)
  {
    v12 = v14;
    v17 = 1;
    OUTLINED_FUNCTION_9_2(v15, &v17);
    v16 = 2;
    OUTLINED_FUNCTION_9_2(v12, &v16);
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1BC80BA18()
{
  result = qword_1EBCF5888;
  if (!qword_1EBCF5888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5888);
  }

  return result;
}

uint64_t MessageCounts.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x1BFB2A020](*v0);
  MEMORY[0x1BFB2A020](v1);
  return MEMORY[0x1BFB2A020](v2);
}

uint64_t MessageCounts.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1BC8F8C04();
  MEMORY[0x1BFB2A020](v1);
  MEMORY[0x1BFB2A020](v2);
  MEMORY[0x1BFB2A020](v3);
  return sub_1BC8F8C64();
}

uint64_t MessageCounts.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5890, &qword_1BC902318);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC80BA18();
  sub_1BC8F8C84();
  if (!v2)
  {
    v18 = 0;
    v11 = OUTLINED_FUNCTION_8_0(&v18);
    v17 = 1;
    v13 = OUTLINED_FUNCTION_8_0(&v17);
    v16 = 2;
    v14 = OUTLINED_FUNCTION_8_0(&v16);
    (*(v7 + 8))(v10, v5);
    *a2 = v11;
    a2[1] = v13;
    a2[2] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1BC80BCC8()
{
  result = qword_1EBCF5898;
  if (!qword_1EBCF5898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5898);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MessageCounts.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BC80BE40()
{
  result = qword_1EBCF58A0;
  if (!qword_1EBCF58A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF58A0);
  }

  return result;
}

unint64_t sub_1BC80BE98()
{
  result = qword_1EBCF58A8;
  if (!qword_1EBCF58A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF58A8);
  }

  return result;
}

unint64_t sub_1BC80BEF0()
{
  result = qword_1EBCF58B0;
  if (!qword_1EBCF58B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF58B0);
  }

  return result;
}

uint64_t sub_1BC80BF48(unsigned __int16 a1)
{
  if (a1 < 3u)
  {
    return OUTLINED_FUNCTION_0_15();
  }

  result = sub_1BC8F8B04();
  __break(1u);
  return result;
}

uint64_t sub_1BC80BF98(unsigned __int16 a1)
{
  if (a1 < 3u)
  {
    return OUTLINED_FUNCTION_0_15();
  }

  result = sub_1BC8F8B04();
  __break(1u);
  return result;
}

uint64_t sub_1BC80BFE8(__int16 a1)
{
  switch(a1)
  {
    case 0:
      return 0x63696F566576694CLL;
    case 2:
      return 0x69614D6F65646956;
    case 1:
      return 0x6F566C6175736956;
  }

  v2 = sub_1BC8F8A54();
  MEMORY[0x1BFB29120](v2);

  return 0x726568744FLL;
}

unint64_t sub_1BC80C0F0()
{
  result = qword_1EDC20550;
  if (!qword_1EDC20550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20550);
  }

  return result;
}

unint64_t sub_1BC80C160()
{
  result = qword_1EBCF58B8;
  if (!qword_1EBCF58B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5388, &qword_1BC902620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF58B8);
  }

  return result;
}

BOOL sub_1BC80C1EC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BC8F8804();

  return v2 != 0;
}

BOOL sub_1BC80C25C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BC80C1EC(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1BC80C290@<X0>(void *a1@<X8>)
{
  result = sub_1BC80C234();
  *a1 = 0xD00000000000001BLL;
  a1[1] = v3;
  return result;
}